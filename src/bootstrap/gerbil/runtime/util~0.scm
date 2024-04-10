(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1712773523)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args86569%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args86569%_))
          (newline))))
    (define display*
      (lambda _%args86566%_
        (let () (declare (not safe)) (##for-each display _%args86566%_))))
    (define file-newer?
      (lambda (_%file186541%_ _%file286542%_)
        (if (string? _%file186541%_)
            (let ((_%file186546%_ _%file186541%_))
              (if (string? _%file286542%_)
                  (let ((_%file286556%_ _%file286542%_))
                    (__file-newer? _%file186546%_ _%file286556%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@62.20-62.25"
                     'contract:
                     'string?
                     'value:
                     _%file286542%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@61.20-61.25"
               'contract:
               'string?
               'value:
               _%file186541%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file186489%_ _%file286490%_)
        (let* ((_%file186493%_ _%file186489%_) (_%file286501%_ _%file286490%_))
          (letrec ((_%modification-time86510%_
                    (lambda (_%file86529%_)
                      (let ((_%file86532%_ _%file86529%_))
                        (_%__modification-time86511%_ _%file86532%_))))
                   (_%__modification-time86511%_
                    (lambda (_%file86513%_)
                      (let* ((_%file86516%_ _%file86513%_)
                             (__tmp88310
                              (let ((__tmp88311
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file86516%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp88311))))
                        (declare (not safe))
                        (##time->seconds __tmp88310)))))
            (let ((__tmp88313 (_%__modification-time86511%_ _%file186493%_))
                  (__tmp88312 (_%__modification-time86511%_ _%file286501%_)))
              (declare (not safe))
              (##fl> __tmp88313 __tmp88312))))))
    (define create-directory*__%
      (lambda (_%dir86454%_ _%perms86455%_)
        (if (string? _%dir86454%_)
            (let ((_%dir86459%_ _%dir86454%_))
              (if (fixnum? _%perms86455%_)
                  (let ((_%perms86469%_ _%perms86455%_))
                    (__create-directory*__% _%dir86459%_ _%perms86469%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@73.26-73.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms86455%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@72.26-72.29"
               'contract:
               'string?
               'value:
               _%dir86454%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir86482%_)
        (let ((_%perms86484%_ '493))
          (create-directory*__% _%dir86482%_ _%perms86484%_))))
    (define create-directory*
      (lambda _g88315_
        (let ((_g88314_ (let () (declare (not safe)) (##length _g88315_))))
          (cond ((let () (declare (not safe)) (##fx= _g88314_ 1))
                 (apply create-directory*__0 _g88315_))
                ((let () (declare (not safe)) (##fx= _g88314_ 2))
                 (apply create-directory*__% _g88315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g88315_))))))
    (define __create-directory*__%
      (lambda (_%dir86378%_ _%perms86379%_)
        (let* ((_%dir86382%_ _%dir86378%_) (_%perms86390%_ _%perms86379%_))
          (letrec ((_%create186399%_
                    (lambda (_%path86431%_)
                      (let ((_%path86434%_ _%path86431%_))
                        (_%__create186400%_ _%path86434%_))))
                   (_%__create186400%_
                    (lambda (_%path86412%_)
                      (let ((_%path86415%_ _%path86412%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path86415%_))
                            (if (eq? (file-type _%path86415%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path86415%_))
                            (if _%perms86390%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path86415%_
                                             (cons 'permissions:
                                                   (cons _%perms86390%_
                                                         '())))))
                                (create-directory _%path86415%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir86382%_))
                '#!void
                (let _%lp86402%_ ((_%start86404%_ '0))
                  (let ((_%$e86406%_
                         (let ()
                           (declare (not safe))
                           (__string-index _%dir86382%_ '#\/ _%start86404%_))))
                    (if _%$e86406%_
                        ((lambda (_%x86409%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x86409%_ '0))
                               (_%__create186400%_
                                (substring _%dir86382%_ '0 _%x86409%_))
                               '#!void)
                           (_%lp86402%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x86409%_ '1))))
                         _%$e86406%_)
                        (_%__create186400%_ _%dir86382%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir86446%_)
        (let ((_%perms86448%_ '493))
          (__create-directory*__% _%dir86446%_ _%perms86448%_))))
    (define __create-directory*
      (lambda _g88317_
        (let ((_g88316_ (let () (declare (not safe)) (##length _g88317_))))
          (cond ((let () (declare (not safe)) (##fx= _g88316_ 1))
                 (apply __create-directory*__0 _g88317_))
                ((let () (declare (not safe)) (##fx= _g88316_ 2))
                 (apply __create-directory*__% _g88317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g88317_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore86374%_ '#t))
    (define true? (lambda (_%obj86371%_) (eq? _%obj86371%_ '#t)))
    (define false (lambda _%ignore86368%_ '#f))
    (define void (lambda _%ignore86365%_ '#!void))
    (define void? (lambda (_%obj86362%_) (eq? _%obj86362%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj86359%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj86359%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj86356%_) (eq? _%obj86356%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj86353%_) (eq? _%obj86353%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj86350%_) (eq? _%obj86350%_ '#!optional)))
    (define immediate?
      (lambda (_%obj86345%_)
        (let* ((_%t86348%_ (let () (declare (not safe)) (##type _%obj86345%_)))
               (__tmp88318
                (let () (declare (not safe)) (##fxand _%t86348%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp88318))))
    (define nonnegative-fixnum?
      (lambda (_%obj86342%_)
        (if (fixnum? _%obj86342%_)
            (let () (declare (not safe)) (##fx>= _%obj86342%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj86336%_)
        (let ((_%$e86339%_ (pair? _%obj86336%_)))
          (if _%$e86339%_ _%$e86339%_ (null? _%obj86336%_)))))
    (define values-count
      (lambda (_%obj86333%_)
        (if (let () (declare (not safe)) (##values? _%obj86333%_))
            (let () (declare (not safe)) (##vector-length _%obj86333%_))
            '1)))
    (define values-ref
      (lambda (_%obj86318%_ _%k86319%_)
        (if (fixnum? _%k86319%_)
            (let ((_%k86323%_ _%k86319%_))
              (__values-ref _%obj86318%_ _%k86323%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@198.23-198.24"
               'contract:
               'fixnum?
               'value:
               _%k86319%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj86305%_ _%k86306%_)
        (let ((_%k86309%_ _%k86306%_))
          (if (let () (declare (not safe)) (##values? _%obj86305%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj86305%_ _%k86309%_))
              _%obj86305%_))))
    (define values->list
      (lambda (_%obj86302%_)
        (if (let () (declare (not safe)) (##values? _%obj86302%_))
            (let () (declare (not safe)) (##vector->list _%obj86302%_))
            (list _%obj86302%_))))
    (define foldl1
      (lambda (_%f86286%_ _%iv86287%_ _%lst86288%_)
        (if (procedure? _%f86286%_)
            (let ((_%f86292%_ _%f86286%_))
              (__foldl1 _%f86292%_ _%iv86287%_ _%lst86288%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@221.15-221.16"
               'contract:
               'procedure?
               'value:
               _%f86286%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f86234%_ _%iv86235%_ _%lst86236%_)
        (let ((_%f86239%_ _%f86234%_))
          (let _%lp86248%_ ((_%rest86250%_ _%lst86236%_)
                            (_%r86251%_ _%iv86235%_))
            (let* ((_%rest8625286260%_ _%rest86250%_)
                   (_%else8625486268%_ (lambda () _%r86251%_))
                   (_%K8625686274%_
                    (lambda (_%rest86271%_ _%x86272%_)
                      (_%lp86248%_
                       _%rest86271%_
                       (let ()
                         (declare (not safe))
                         (_%f86239%_ _%x86272%_ _%r86251%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8625286260%_))
                  (let ((_%hd8625786277%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8625286260%_)))
                        (_%tl8625886279%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8625286260%_))))
                    (let* ((_%x86282%_ _%hd8625786277%_)
                           (_%rest86284%_ _%tl8625886279%_))
                      (_%K8625686274%_ _%rest86284%_ _%x86282%_)))
                  (_%else8625486268%_)))))))
    (define foldl2
      (lambda (_%f86217%_ _%iv86218%_ _%lst186219%_ _%lst286220%_)
        (if (procedure? _%f86217%_)
            (let ((_%f86224%_ _%f86217%_))
              (__foldl2 _%f86224%_ _%iv86218%_ _%lst186219%_ _%lst286220%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@228.15-228.16"
               'contract:
               'procedure?
               'value:
               _%f86217%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f86130%_ _%iv86131%_ _%lst186132%_ _%lst286133%_)
        (let ((_%f86136%_ _%f86130%_))
          (let _%lp86145%_ ((_%rest186147%_ _%lst186132%_)
                            (_%rest286148%_ _%lst286133%_)
                            (_%r86149%_ _%iv86131%_))
            (let* ((_%rest18615086158%_ _%rest186147%_)
                   (_%else8615286166%_ (lambda () _%r86149%_))
                   (_%K8615486205%_
                    (lambda (_%rest186169%_ _%x186170%_)
                      (let* ((_%rest28617186179%_ _%rest286148%_)
                             (_%else8617386187%_ (lambda () _%r86149%_))
                             (_%K8617586193%_
                              (lambda (_%rest286190%_ _%x286191%_)
                                (_%lp86145%_
                                 _%rest186169%_
                                 _%rest286190%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f86136%_
                                    _%x186170%_
                                    _%x286191%_
                                    _%r86149%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28617186179%_))
                            (let ((_%hd8617686196%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28617186179%_)))
                                  (_%tl8617786198%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28617186179%_))))
                              (let* ((_%x286201%_ _%hd8617686196%_)
                                     (_%rest286203%_ _%tl8617786198%_))
                                (_%K8617586193%_ _%rest286203%_ _%x286201%_)))
                            (_%else8617386187%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18615086158%_))
                  (let ((_%hd8615586208%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18615086158%_)))
                        (_%tl8615686210%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18615086158%_))))
                    (let* ((_%x186213%_ _%hd8615586208%_)
                           (_%rest186215%_ _%tl8615686210%_))
                      (_%K8615486205%_ _%rest186215%_ _%x186213%_)))
                  (_%else8615286166%_)))))))
    (define foldl
      (lambda _g88320_
        (let ((_g88319_ (let () (declare (not safe)) (##length _g88320_))))
          (cond ((let () (declare (not safe)) (##fx= _g88319_ 3))
                 (apply foldl1 _g88320_))
                ((let () (declare (not safe)) (##fx= _g88319_ 4))
                 (apply foldl2 _g88320_))
                ((let () (declare (not safe)) (##fx>= _g88319_ 4))
                 (apply foldl* _g88320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g88320_))))))
    (define foldl*
      (lambda (_%f86099%_ _%iv86100%_ . _%rest86101%_)
        (if (procedure? _%f86099%_)
            (let ((_%f86105%_ _%f86099%_))
              (declare (not safe))
              (##apply __foldl* _%f86105%_ _%iv86100%_ _%rest86101%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@246.15-246.16"
               'contract:
               'procedure?
               'value:
               _%f86099%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f86077%_ _%iv86078%_ . _%rest86079%_)
        (let ((_%f86082%_ _%f86077%_))
          (let _%recur86091%_ ((_%iv86093%_ _%iv86078%_)
                               (_%rest86094%_ _%rest86079%_))
            (if (__andmap1 pair? _%rest86094%_)
                (_%recur86091%_
                 (let ((__tmp88321
                        (__foldr1
                         (lambda (_%xs86096%_ _%r86097%_)
                           (cons (car _%xs86096%_) _%r86097%_))
                         (list _%iv86093%_)
                         _%rest86094%_)))
                   (declare (not safe))
                   (##apply _%f86082%_ __tmp88321))
                 (map cdr _%rest86094%_))
                _%iv86093%_)))))
    (define foldr1
      (lambda (_%f86061%_ _%iv86062%_ _%lst86063%_)
        (if (procedure? _%f86061%_)
            (let ((_%f86067%_ _%f86061%_))
              (__foldr1 _%f86067%_ _%iv86062%_ _%lst86063%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@256.15-256.16"
               'contract:
               'procedure?
               'value:
               _%f86061%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f86010%_ _%iv86011%_ _%lst86012%_)
        (let ((_%f86015%_ _%f86010%_))
          (let _%recur86024%_ ((_%rest86026%_ _%lst86012%_))
            (let* ((_%rest8602786035%_ _%rest86026%_)
                   (_%else8602986043%_ (lambda () _%iv86011%_))
                   (_%K8603186049%_
                    (lambda (_%rest86046%_ _%x86047%_)
                      (let ((__tmp88322 (_%recur86024%_ _%rest86046%_)))
                        (declare (not safe))
                        (_%f86015%_ _%x86047%_ __tmp88322)))))
              (if (let () (declare (not safe)) (##pair? _%rest8602786035%_))
                  (let ((_%hd8603286052%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8602786035%_)))
                        (_%tl8603386054%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8602786035%_))))
                    (let* ((_%x86057%_ _%hd8603286052%_)
                           (_%rest86059%_ _%tl8603386054%_))
                      (_%K8603186049%_ _%rest86059%_ _%x86057%_)))
                  (_%else8602986043%_)))))))
    (define foldr2
      (lambda (_%f85993%_ _%iv85994%_ _%lst185995%_ _%lst285996%_)
        (if (procedure? _%f85993%_)
            (let ((_%f86000%_ _%f85993%_))
              (__foldr2 _%f86000%_ _%iv85994%_ _%lst185995%_ _%lst285996%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@263.15-263.16"
               'contract:
               'procedure?
               'value:
               _%f85993%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f85907%_ _%iv85908%_ _%lst185909%_ _%lst285910%_)
        (let ((_%f85913%_ _%f85907%_))
          (let _%recur85922%_ ((_%rest185924%_ _%lst185909%_)
                               (_%rest285925%_ _%lst285910%_))
            (let* ((_%rest18592685934%_ _%rest185924%_)
                   (_%else8592885942%_ (lambda () _%iv85908%_))
                   (_%K8593085981%_
                    (lambda (_%rest185945%_ _%x185946%_)
                      (let* ((_%rest28594785955%_ _%rest285925%_)
                             (_%else8594985963%_ (lambda () _%iv85908%_))
                             (_%K8595185969%_
                              (lambda (_%rest285966%_ _%x285967%_)
                                (let ((__tmp88323
                                       (_%recur85922%_
                                        _%rest185945%_
                                        _%rest285966%_)))
                                  (declare (not safe))
                                  (_%f85913%_
                                   _%x185946%_
                                   _%x285967%_
                                   __tmp88323)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28594785955%_))
                            (let ((_%hd8595285972%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28594785955%_)))
                                  (_%tl8595385974%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28594785955%_))))
                              (let* ((_%x285977%_ _%hd8595285972%_)
                                     (_%rest285979%_ _%tl8595385974%_))
                                (_%K8595185969%_ _%rest285979%_ _%x285977%_)))
                            (_%else8594985963%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18592685934%_))
                  (let ((_%hd8593185984%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18592685934%_)))
                        (_%tl8593285986%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18592685934%_))))
                    (let* ((_%x185989%_ _%hd8593185984%_)
                           (_%rest185991%_ _%tl8593285986%_))
                      (_%K8593085981%_ _%rest185991%_ _%x185989%_)))
                  (_%else8592885942%_)))))))
    (define foldr
      (lambda _g88325_
        (let ((_g88324_ (let () (declare (not safe)) (##length _g88325_))))
          (cond ((let () (declare (not safe)) (##fx= _g88324_ 3))
                 (apply foldr1 _g88325_))
                ((let () (declare (not safe)) (##fx= _g88324_ 4))
                 (apply foldr2 _g88325_))
                ((let () (declare (not safe)) (##fx>= _g88324_ 4))
                 (apply foldr* _g88325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g88325_))))))
    (define foldr*
      (lambda (_%f85876%_ _%iv85877%_ . _%rest85878%_)
        (if (procedure? _%f85876%_)
            (let ((_%f85882%_ _%f85876%_))
              (declare (not safe))
              (##apply __foldr* _%f85882%_ _%iv85877%_ _%rest85878%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@281.15-281.16"
               'contract:
               'procedure?
               'value:
               _%f85876%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f85855%_ _%iv85856%_ . _%rest85857%_)
        (let ((_%f85860%_ _%f85855%_))
          (let _%recur85869%_ ((_%rest85871%_ _%rest85857%_))
            (if (__andmap1 pair? _%rest85871%_)
                (let ((__tmp88326
                       (__foldr1
                        (lambda (_%xs85873%_ _%r85874%_)
                          (cons (car _%xs85873%_) _%r85874%_))
                        (list (_%recur85869%_ (map cdr _%rest85871%_)))
                        _%rest85871%_)))
                  (declare (not safe))
                  (##apply _%f85860%_ __tmp88326))
                _%iv85856%_)))))
    (define remove-nulls!
      (lambda (_%l85742%_)
        (let* ((_%l8574385756%_ _%l85742%_)
               (_%E8574785760%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8574385756%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8575285845%_
                 (lambda (_%r85843%_) (remove-nulls! _%r85843%_)))
                (_%K8574985832%_
                 (lambda (_%r85772%_)
                   (let _%loop85774%_ ((_%l85776%_ _%l85742%_)
                                       (_%r85777%_ _%r85772%_))
                     (let* ((_%r8577885791%_ _%r85777%_)
                            (_%E8578285795%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8577885791%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8578785822%_
                              (lambda (_%rr85820%_)
                                (let ((__tmp88328 _%l85776%_)
                                      (__tmp88327 (remove-nulls! _%rr85820%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp88328 __tmp88327))))
                             (_%K8578485809%_
                              (lambda (_%rr85807%_)
                                (_%loop85774%_ _%r85777%_ _%rr85807%_)))
                             (_%K8578385800%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8577885791%_))
                             (let ((_%tl8578985827%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8577885791%_)))
                                   (_%hd8578885825%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8577885791%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8578885825%_))
                                   (let ((_%rr85830%_ _%tl8578985827%_))
                                     (_%K8578785822%_ _%rr85830%_))
                                   (let ((_%rr85815%_ _%tl8578985827%_))
                                     (_%K8578485809%_ _%rr85815%_))))
                             '#!void))))
                   _%l85742%_))
                (_%K8574885765%_ (lambda () _%l85742%_)))
            (if (let () (declare (not safe)) (##pair? _%l8574385756%_))
                (let ((_%tl8575485850%_
                       (let () (declare (not safe)) (##cdr _%l8574385756%_)))
                      (_%hd8575385848%_
                       (let () (declare (not safe)) (##car _%l8574385756%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8575385848%_))
                      (let ((_%r85853%_ _%tl8575485850%_))
                        (remove-nulls! _%r85853%_))
                      (let ((_%r85838%_ _%tl8575485850%_))
                        (_%K8574985832%_ _%r85838%_))))
                (_%K8574885765%_))))))
    (define append1!
      (lambda (_%l85727%_ _%x85728%_)
        (let ((_%l285731%_ (cons _%x85728%_ '())))
          (if (pair? _%l85727%_)
              (let ((_%l85733%_ _%l85727%_))
                (let ((__tmp88329
                       (let () (declare (not safe)) (##last-pair _%l85733%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp88329 _%l285731%_))
                _%l85733%_)
              _%l285731%_))))
    (define append-reverse-until
      (lambda (_%pred85711%_ _%rhead85712%_ _%tail85713%_)
        (if (procedure? _%pred85711%_)
            (let ((_%pred85717%_ _%pred85711%_))
              (__append-reverse-until
               _%pred85717%_
               _%rhead85712%_
               _%tail85713%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@321.29-321.33"
               'contract:
               'procedure?
               'value:
               _%pred85711%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred85653%_ _%rhead85654%_ _%tail85655%_)
        (let ((_%pred85658%_ _%pred85653%_))
          (let _%loop85667%_ ((_%rhead85669%_ _%rhead85654%_)
                              (_%tail85670%_ _%tail85655%_))
            (let* ((_%rhead8567285681%_ _%rhead85669%_)
                   (_%E8567585685%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8567285681%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8567985708%_ (lambda () (values '() _%tail85670%_)))
                    (_%K8567685692%_
                     (lambda (_%r85689%_ _%a85690%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred85658%_ _%a85690%_))
                           (values _%rhead85669%_ _%tail85670%_)
                           (_%loop85667%_
                            _%r85689%_
                            (cons _%a85690%_ _%tail85670%_))))))
                (let ((_%try-match8567485704%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rhead8567285681%_))
                             (let ((_%tl8567885697%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8567285681%_)))
                                   (_%hd8567785695%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8567285681%_))))
                               (let ((_%a85700%_ _%hd8567785695%_)
                                     (_%r85702%_ _%tl8567885697%_))
                                 (_%K8567685692%_ _%r85702%_ _%a85700%_)))
                             (_%E8567585685%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%rhead8567285681%_))
                      (_%K8567985708%_)
                      (_%try-match8567485704%_)))))))))
    (define andmap1
      (lambda (_%f85638%_ _%lst85639%_)
        (if (procedure? _%f85638%_)
            (let ((_%f85643%_ _%f85638%_)) (__andmap1 _%f85643%_ _%lst85639%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@332.16-332.17"
               'contract:
               'procedure?
               'value:
               _%f85638%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f85587%_ _%lst85588%_)
        (let ((_%f85591%_ _%f85587%_))
          (let _%lp85600%_ ((_%rest85602%_ _%lst85588%_))
            (let* ((_%rest8560485612%_ _%rest85602%_)
                   (_%else8560685620%_ (lambda () '#t))
                   (_%K8560885626%_
                    (lambda (_%rest85623%_ _%x85624%_)
                      (if (let () (declare (not safe)) (_%f85591%_ _%x85624%_))
                          (_%lp85600%_ _%rest85623%_)
                          '#f))))
              (if (let () (declare (not safe)) (##pair? _%rest8560485612%_))
                  (let ((_%hd8560985629%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8560485612%_)))
                        (_%tl8561085631%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8560485612%_))))
                    (let* ((_%x85634%_ _%hd8560985629%_)
                           (_%rest85636%_ _%tl8561085631%_))
                      (_%K8560885626%_ _%rest85636%_ _%x85634%_)))
                  (_%else8560685620%_)))))))
    (define andmap2
      (lambda (_%f85571%_ _%lst185572%_ _%lst285573%_)
        (if (procedure? _%f85571%_)
            (let ((_%f85577%_ _%f85571%_))
              (__andmap2 _%f85577%_ _%lst185572%_ _%lst285573%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@341.16-341.17"
               'contract:
               'procedure?
               'value:
               _%f85571%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f85485%_ _%lst185486%_ _%lst285487%_)
        (let ((_%f85490%_ _%f85485%_))
          (let _%lp85499%_ ((_%rest185501%_ _%lst185486%_)
                            (_%rest285502%_ _%lst285487%_))
            (let* ((_%rest18550485512%_ _%rest185501%_)
                   (_%else8550685520%_ (lambda () '#t))
                   (_%K8550885559%_
                    (lambda (_%rest185523%_ _%x185524%_)
                      (let* ((_%rest28552585533%_ _%rest285502%_)
                             (_%else8552785541%_ (lambda () '#t))
                             (_%K8552985547%_
                              (lambda (_%rest285544%_ _%x285545%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f85490%_ _%x185524%_ _%x285545%_))
                                    (_%lp85499%_ _%rest185523%_ _%rest285544%_)
                                    '#f))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28552585533%_))
                            (let ((_%hd8553085550%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28552585533%_)))
                                  (_%tl8553185552%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28552585533%_))))
                              (let* ((_%x285555%_ _%hd8553085550%_)
                                     (_%rest285557%_ _%tl8553185552%_))
                                (_%K8552985547%_ _%rest285557%_ _%x285555%_)))
                            (_%else8552785541%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18550485512%_))
                  (let ((_%hd8550985562%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18550485512%_)))
                        (_%tl8551085564%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18550485512%_))))
                    (let* ((_%x185567%_ _%hd8550985562%_)
                           (_%rest185569%_ _%tl8551085564%_))
                      (_%K8550885559%_ _%rest185569%_ _%x185567%_)))
                  (_%else8550685520%_)))))))
    (define andmap
      (lambda _g88331_
        (let ((_g88330_ (let () (declare (not safe)) (##length _g88331_))))
          (cond ((let () (declare (not safe)) (##fx= _g88330_ 2))
                 (apply andmap1 _g88331_))
                ((let () (declare (not safe)) (##fx= _g88330_ 3))
                 (apply andmap2 _g88331_))
                ((let () (declare (not safe)) (##fx>= _g88330_ 3))
                 (apply andmap* _g88331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g88331_))))))
    (define andmap*
      (lambda (_%f85458%_ . _%rest85459%_)
        (if (procedure? _%f85458%_)
            (let ((_%f85463%_ _%f85458%_))
              (declare (not safe))
              (##apply __andmap* _%f85463%_ _%rest85459%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@361.16-361.17"
               'contract:
               'procedure?
               'value:
               _%f85458%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f85440%_ . _%rest85441%_)
        (let ((_%f85444%_ _%f85440%_))
          (let _%recur85453%_ ((_%rest85455%_ _%rest85441%_))
            (if (__andmap1 pair? _%rest85455%_)
                (if (let ((__tmp88332 (map car _%rest85455%_)))
                      (declare (not safe))
                      (##apply _%f85444%_ __tmp88332))
                    (_%recur85453%_ (map cdr _%rest85455%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f85425%_ _%lst85426%_)
        (if (procedure? _%f85425%_)
            (let ((_%f85430%_ _%f85425%_)) (__ormap1 _%f85430%_ _%lst85426%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@370.15-370.16"
               'contract:
               'procedure?
               'value:
               _%f85425%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f85372%_ _%lst85373%_)
        (let ((_%f85376%_ _%f85372%_))
          (let _%lp85385%_ ((_%rest85387%_ _%lst85373%_))
            (let* ((_%rest8538885396%_ _%rest85387%_)
                   (_%else8539085404%_ (lambda () '#f))
                   (_%K8539285413%_
                    (lambda (_%rest85407%_ _%x85408%_)
                      (let ((_%$e85410%_
                             (let ()
                               (declare (not safe))
                               (_%f85376%_ _%x85408%_))))
                        (if _%$e85410%_
                            _%$e85410%_
                            (_%lp85385%_ _%rest85407%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8538885396%_))
                  (let ((_%hd8539385416%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8538885396%_)))
                        (_%tl8539485418%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8538885396%_))))
                    (let* ((_%x85421%_ _%hd8539385416%_)
                           (_%rest85423%_ _%tl8539485418%_))
                      (_%K8539285413%_ _%rest85423%_ _%x85421%_)))
                  (_%else8539085404%_)))))))
    (define ormap2
      (lambda (_%f85356%_ _%lst185357%_ _%lst285358%_)
        (if (procedure? _%f85356%_)
            (let ((_%f85362%_ _%f85356%_))
              (__ormap2 _%f85362%_ _%lst185357%_ _%lst285358%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.15-377.16"
               'contract:
               'procedure?
               'value:
               _%f85356%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f85268%_ _%lst185269%_ _%lst285270%_)
        (let ((_%f85273%_ _%f85268%_))
          (let _%lp85282%_ ((_%rest185284%_ _%lst185269%_)
                            (_%rest285285%_ _%lst285270%_))
            (let* ((_%rest18528685294%_ _%rest185284%_)
                   (_%else8528885302%_ (lambda () '#f))
                   (_%K8529085344%_
                    (lambda (_%rest185305%_ _%x185306%_)
                      (let* ((_%rest28530785315%_ _%rest285285%_)
                             (_%else8530985323%_ (lambda () '#f))
                             (_%K8531185332%_
                              (lambda (_%rest285326%_ _%x285327%_)
                                (let ((_%$e85329%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f85273%_
                                          _%x185306%_
                                          _%x285327%_))))
                                  (if _%$e85329%_
                                      _%$e85329%_
                                      (_%lp85282%_
                                       _%rest185305%_
                                       _%rest285326%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28530785315%_))
                            (let ((_%hd8531285335%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28530785315%_)))
                                  (_%tl8531385337%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28530785315%_))))
                              (let* ((_%x285340%_ _%hd8531285335%_)
                                     (_%rest285342%_ _%tl8531385337%_))
                                (_%K8531185332%_ _%rest285342%_ _%x285340%_)))
                            (_%else8530985323%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18528685294%_))
                  (let ((_%hd8529185347%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18528685294%_)))
                        (_%tl8529285349%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18528685294%_))))
                    (let* ((_%x185352%_ _%hd8529185347%_)
                           (_%rest185354%_ _%tl8529285349%_))
                      (_%K8529085344%_ _%rest185354%_ _%x185352%_)))
                  (_%else8528885302%_)))))))
    (define ormap
      (lambda _g88334_
        (let ((_g88333_ (let () (declare (not safe)) (##length _g88334_))))
          (cond ((let () (declare (not safe)) (##fx= _g88333_ 2))
                 (apply ormap1 _g88334_))
                ((let () (declare (not safe)) (##fx= _g88333_ 3))
                 (apply ormap2 _g88334_))
                ((let () (declare (not safe)) (##fx>= _g88333_ 3))
                 (apply ormap* _g88334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g88334_))))))
    (define ormap*
      (lambda (_%f85241%_ . _%rest85242%_)
        (if (procedure? _%f85241%_)
            (let ((_%f85246%_ _%f85241%_))
              (declare (not safe))
              (##apply __ormap* _%f85246%_ _%rest85242%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@395.15-395.16"
               'contract:
               'procedure?
               'value:
               _%f85241%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f85221%_ . _%rest85222%_)
        (let ((_%f85225%_ _%f85221%_))
          (let _%recur85234%_ ((_%rest85236%_ _%rest85222%_))
            (if (__andmap1 pair? _%rest85236%_)
                (let ((_%$e85238%_
                       (let ((__tmp88335 (map car _%rest85236%_)))
                         (declare (not safe))
                         (##apply _%f85225%_ __tmp88335))))
                  (if _%$e85238%_
                      _%$e85238%_
                      (_%recur85234%_ (map cdr _%rest85236%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f85206%_ _%lst85207%_)
        (if (procedure? _%f85206%_)
            (let ((_%f85211%_ _%f85206%_))
              (__filter-map1 _%f85211%_ _%lst85207%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@402.20-402.21"
               'contract:
               'procedure?
               'value:
               _%f85206%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f85149%_ _%lst85150%_)
        (let ((_%f85153%_ _%f85149%_))
          (let _%recur85162%_ ((_%rest85164%_ _%lst85150%_))
            (let* ((_%rest8516685174%_ _%rest85164%_)
                   (_%else8516885182%_ (lambda () '()))
                   (_%K8517085194%_
                    (lambda (_%rest85185%_ _%x85186%_)
                      (let ((_%$e85188%_
                             (let ()
                               (declare (not safe))
                               (_%f85153%_ _%x85186%_))))
                        (if _%$e85188%_
                            ((lambda (_%r85191%_)
                               (cons _%r85191%_
                                     (_%recur85162%_ _%rest85185%_)))
                             _%$e85188%_)
                            (_%recur85162%_ _%rest85185%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8516685174%_))
                  (let ((_%hd8517185197%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8516685174%_)))
                        (_%tl8517285199%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8516685174%_))))
                    (let* ((_%x85202%_ _%hd8517185197%_)
                           (_%rest85204%_ _%tl8517285199%_))
                      (_%K8517085194%_ _%rest85204%_ _%x85202%_)))
                  (_%else8516885182%_)))))))
    (define filter-map2
      (lambda (_%f85133%_ _%lst185134%_ _%lst285135%_)
        (if (procedure? _%f85133%_)
            (let ((_%f85139%_ _%f85133%_))
              (__filter-map2 _%f85139%_ _%lst185134%_ _%lst285135%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.20-413.21"
               'contract:
               'procedure?
               'value:
               _%f85133%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f85041%_ _%lst185042%_ _%lst285043%_)
        (let ((_%f85046%_ _%f85041%_))
          (let _%recur85055%_ ((_%rest185057%_ _%lst185042%_)
                               (_%rest285058%_ _%lst285043%_))
            (let* ((_%rest18506085068%_ _%rest185057%_)
                   (_%else8506285076%_ (lambda () '()))
                   (_%K8506485121%_
                    (lambda (_%rest185079%_ _%x185080%_)
                      (let* ((_%rest28508185089%_ _%rest285058%_)
                             (_%else8508385097%_ (lambda () '()))
                             (_%K8508585109%_
                              (lambda (_%rest285100%_ _%x285101%_)
                                (let ((_%$e85103%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f85046%_
                                          _%x185080%_
                                          _%x285101%_))))
                                  (if _%$e85103%_
                                      ((lambda (_%r85106%_)
                                         (cons _%r85106%_
                                               (_%recur85055%_
                                                _%rest185079%_
                                                _%rest285100%_)))
                                       _%$e85103%_)
                                      (_%recur85055%_
                                       _%rest185079%_
                                       _%rest285100%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28508185089%_))
                            (let ((_%hd8508685112%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28508185089%_)))
                                  (_%tl8508785114%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28508185089%_))))
                              (let* ((_%x285117%_ _%hd8508685112%_)
                                     (_%rest285119%_ _%tl8508785114%_))
                                (_%K8508585109%_ _%rest285119%_ _%x285117%_)))
                            (_%else8508385097%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18506085068%_))
                  (let ((_%hd8506585124%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18506085068%_)))
                        (_%tl8506685126%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18506085068%_))))
                    (let* ((_%x185129%_ _%hd8506585124%_)
                           (_%rest185131%_ _%tl8506685126%_))
                      (_%K8506485121%_ _%rest185131%_ _%x185129%_)))
                  (_%else8506285076%_)))))))
    (define filter-map
      (lambda _g88337_
        (let ((_g88336_ (let () (declare (not safe)) (##length _g88337_))))
          (cond ((let () (declare (not safe)) (##fx= _g88336_ 2))
                 (apply filter-map1 _g88337_))
                ((let () (declare (not safe)) (##fx= _g88336_ 3))
                 (apply filter-map2 _g88337_))
                ((let () (declare (not safe)) (##fx>= _g88336_ 3))
                 (apply filter-map* _g88337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g88337_))))))
    (define filter-map*
      (lambda (_%f85014%_ . _%rest85015%_)
        (if (procedure? _%f85014%_)
            (let ((_%f85019%_ _%f85014%_))
              (declare (not safe))
              (##apply __filter-map* _%f85019%_ _%rest85015%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@435.20-435.21"
               'contract:
               'procedure?
               'value:
               _%f85014%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f84990%_ . _%rest84991%_)
        (let ((_%f84994%_ _%f84990%_))
          (let _%recur85003%_ ((_%rest85005%_ _%rest84991%_))
            (if (__andmap1 pair? _%rest85005%_)
                (let ((_%$e85008%_
                       (let ((__tmp88338 (map car _%rest85005%_)))
                         (declare (not safe))
                         (##apply _%f84994%_ __tmp88338))))
                  (if _%$e85008%_
                      ((lambda (_%r85011%_)
                         (cons _%r85011%_
                               (_%recur85003%_ (map cdr _%rest85005%_))))
                       _%$e85008%_)
                      (_%recur85003%_ (map cdr _%rest85005%_))))
                '())))))
    (define agetq__%
      (lambda (_%key84966%_ _%lst84968%_ _%default84970%_)
        (let ((_%$e84973%_
               (if (pair? _%lst84968%_) (assq _%key84966%_ _%lst84968%_) '#f)))
          (if _%$e84973%_
              (cdr _%$e84973%_)
              (if (procedure? _%default84970%_)
                  (_%default84970%_ _%key84966%_)
                  _%default84970%_)))))
    (define agetq__0
      (lambda (_%key84981%_ _%lst84982%_)
        (let ((_%default84984%_ '#f))
          (agetq__% _%key84981%_ _%lst84982%_ _%default84984%_))))
    (define agetq
      (lambda _g88340_
        (let ((_g88339_ (let () (declare (not safe)) (##length _g88340_))))
          (cond ((let () (declare (not safe)) (##fx= _g88339_ 2))
                 (apply agetq__0 _g88340_))
                ((let () (declare (not safe)) (##fx= _g88339_ 3))
                 (apply agetq__% _g88340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g88340_))))))
    (define agetv__%
      (lambda (_%key84941%_ _%lst84943%_ _%default84945%_)
        (let ((_%$e84948%_
               (if (pair? _%lst84943%_) (assv _%key84941%_ _%lst84943%_) '#f)))
          (if _%$e84948%_
              (cdr _%$e84948%_)
              (if (procedure? _%default84945%_)
                  (_%default84945%_ _%key84941%_)
                  _%default84945%_)))))
    (define agetv__0
      (lambda (_%key84956%_ _%lst84957%_)
        (let ((_%default84959%_ '#f))
          (agetv__% _%key84956%_ _%lst84957%_ _%default84959%_))))
    (define agetv
      (lambda _g88342_
        (let ((_g88341_ (let () (declare (not safe)) (##length _g88342_))))
          (cond ((let () (declare (not safe)) (##fx= _g88341_ 2))
                 (apply agetv__0 _g88342_))
                ((let () (declare (not safe)) (##fx= _g88341_ 3))
                 (apply agetv__% _g88342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g88342_))))))
    (define aget__%
      (lambda (_%key84916%_ _%lst84918%_ _%default84920%_)
        (let ((_%$e84923%_
               (if (pair? _%lst84918%_)
                   (assoc _%key84916%_ _%lst84918%_)
                   '#f)))
          (if _%$e84923%_
              (cdr _%$e84923%_)
              (if (procedure? _%default84920%_)
                  (_%default84920%_ _%key84916%_)
                  _%default84920%_)))))
    (define aget__0
      (lambda (_%key84931%_ _%lst84932%_)
        (let ((_%default84934%_ '#f))
          (aget__% _%key84931%_ _%lst84932%_ _%default84934%_))))
    (define aget
      (lambda _g88344_
        (let ((_g88343_ (let () (declare (not safe)) (##length _g88344_))))
          (cond ((let () (declare (not safe)) (##fx= _g88343_ 2))
                 (apply aget__0 _g88344_))
                ((let () (declare (not safe)) (##fx= _g88343_ 3))
                 (apply aget__% _g88344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g88344_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key84845%_ _%lst84847%_ _%default84849%_)
        (let _%lp84852%_ ((_%rest84855%_ _%lst84847%_))
          (let* ((_%rest8485784867%_ _%rest84855%_)
                 (_%else8485984875%_
                  (lambda ()
                    (if (procedure? _%default84849%_)
                        (_%default84849%_ _%key84845%_)
                        _%default84849%_)))
                 (_%K8486184884%_
                  (lambda (_%rest84878%_ _%v84879%_ _%k84881%_)
                    (if (eq? _%k84881%_ _%key84845%_)
                        _%v84879%_
                        (_%lp84852%_ _%rest84878%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8485784867%_))
                (let ((_%hd8486284887%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8485784867%_)))
                      (_%tl8486384889%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8485784867%_))))
                  (let ((_%k84892%_ _%hd8486284887%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8486384889%_))
                        (let ((_%hd8486484894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8486384889%_)))
                              (_%tl8486584896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8486384889%_))))
                          (let* ((_%v84899%_ _%hd8486484894%_)
                                 (_%rest84901%_ _%tl8486584896%_))
                            (_%K8486184884%_
                             _%rest84901%_
                             _%v84899%_
                             _%k84892%_)))
                        (_%else8485984875%_))))
                (_%else8485984875%_))))))
    (define pgetq__0
      (lambda (_%key84906%_ _%lst84907%_)
        (let ((_%default84909%_ '#f))
          (pgetq__% _%key84906%_ _%lst84907%_ _%default84909%_))))
    (define pgetq
      (lambda _g88346_
        (let ((_g88345_ (let () (declare (not safe)) (##length _g88346_))))
          (cond ((let () (declare (not safe)) (##fx= _g88345_ 2))
                 (apply pgetq__0 _g88346_))
                ((let () (declare (not safe)) (##fx= _g88345_ 3))
                 (apply pgetq__% _g88346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g88346_))))))
    (define pgetv__%
      (lambda (_%key84774%_ _%lst84776%_ _%default84778%_)
        (let _%lp84781%_ ((_%rest84784%_ _%lst84776%_))
          (let* ((_%rest8478684796%_ _%rest84784%_)
                 (_%else8478884804%_
                  (lambda ()
                    (if (procedure? _%default84778%_)
                        (_%default84778%_ _%key84774%_)
                        _%default84778%_)))
                 (_%K8479084813%_
                  (lambda (_%rest84807%_ _%v84808%_ _%k84810%_)
                    (if (eqv? _%k84810%_ _%key84774%_)
                        _%v84808%_
                        (_%lp84781%_ _%rest84807%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8478684796%_))
                (let ((_%hd8479184816%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8478684796%_)))
                      (_%tl8479284818%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8478684796%_))))
                  (let ((_%k84821%_ _%hd8479184816%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8479284818%_))
                        (let ((_%hd8479384823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8479284818%_)))
                              (_%tl8479484825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8479284818%_))))
                          (let* ((_%v84828%_ _%hd8479384823%_)
                                 (_%rest84830%_ _%tl8479484825%_))
                            (_%K8479084813%_
                             _%rest84830%_
                             _%v84828%_
                             _%k84821%_)))
                        (_%else8478884804%_))))
                (_%else8478884804%_))))))
    (define pgetv__0
      (lambda (_%key84835%_ _%lst84836%_)
        (let ((_%default84838%_ '#f))
          (pgetv__% _%key84835%_ _%lst84836%_ _%default84838%_))))
    (define pgetv
      (lambda _g88348_
        (let ((_g88347_ (let () (declare (not safe)) (##length _g88348_))))
          (cond ((let () (declare (not safe)) (##fx= _g88347_ 2))
                 (apply pgetv__0 _g88348_))
                ((let () (declare (not safe)) (##fx= _g88347_ 3))
                 (apply pgetv__% _g88348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g88348_))))))
    (define pget__%
      (lambda (_%key84703%_ _%lst84705%_ _%default84707%_)
        (let _%lp84710%_ ((_%rest84713%_ _%lst84705%_))
          (let* ((_%rest8471584725%_ _%rest84713%_)
                 (_%else8471784733%_
                  (lambda ()
                    (if (procedure? _%default84707%_)
                        (_%default84707%_ _%key84703%_)
                        _%default84707%_)))
                 (_%K8471984742%_
                  (lambda (_%rest84736%_ _%v84737%_ _%k84739%_)
                    (if (equal? _%k84739%_ _%key84703%_)
                        _%v84737%_
                        (_%lp84710%_ _%rest84736%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8471584725%_))
                (let ((_%hd8472084745%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8471584725%_)))
                      (_%tl8472184747%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8471584725%_))))
                  (let ((_%k84750%_ _%hd8472084745%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8472184747%_))
                        (let ((_%hd8472284752%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8472184747%_)))
                              (_%tl8472384754%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8472184747%_))))
                          (let* ((_%v84757%_ _%hd8472284752%_)
                                 (_%rest84759%_ _%tl8472384754%_))
                            (_%K8471984742%_
                             _%rest84759%_
                             _%v84757%_
                             _%k84750%_)))
                        (_%else8471784733%_))))
                (_%else8471784733%_))))))
    (define pget__0
      (lambda (_%key84764%_ _%lst84765%_)
        (let ((_%default84767%_ '#f))
          (pget__% _%key84764%_ _%lst84765%_ _%default84767%_))))
    (define pget
      (lambda _g88350_
        (let ((_g88349_ (let () (declare (not safe)) (##length _g88350_))))
          (cond ((let () (declare (not safe)) (##fx= _g88349_ 2))
                 (apply pget__0 _g88350_))
                ((let () (declare (not safe)) (##fx= _g88349_ 3))
                 (apply pget__% _g88350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g88350_))))))
    (define find
      (lambda (_%pred84687%_ _%lst84688%_)
        (if (procedure? _%pred84687%_)
            (let ((_%pred84692%_ _%pred84687%_))
              (__find _%pred84692%_ _%lst84688%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.13-481.17"
               'contract:
               'procedure?
               'value:
               _%pred84687%_)
              '#!void))))
    (define __find
      (lambda (_%pred84670%_ _%lst84671%_)
        (let* ((_%pred84674%_ _%pred84670%_)
               (_%$e84683%_ (__memf _%pred84674%_ _%lst84671%_)))
          (if _%$e84683%_
              (let () (declare (not safe)) (##car _%$e84683%_))
              '#f))))
    (define memf
      (lambda (_%proc84655%_ _%lst84656%_)
        (if (procedure? _%proc84655%_)
            (let ((_%proc84660%_ _%proc84655%_))
              (__memf _%proc84660%_ _%lst84656%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@486.13-486.17"
               'contract:
               'procedure?
               'value:
               _%proc84655%_)
              '#!void))))
    (define __memf
      (lambda (_%proc84605%_ _%lst84606%_)
        (let ((_%proc84609%_ _%proc84605%_))
          (let _%lp84618%_ ((_%rest84620%_ _%lst84606%_))
            (let* ((_%rest8462184629%_ _%rest84620%_)
                   (_%else8462384637%_ (lambda () '#f))
                   (_%K8462584643%_
                    (lambda (_%tl84640%_ _%hd84641%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc84609%_ _%hd84641%_))
                          _%rest84620%_
                          (_%lp84618%_ _%tl84640%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest8462184629%_))
                  (let ((_%hd8462684646%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8462184629%_)))
                        (_%tl8462784648%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8462184629%_))))
                    (let* ((_%hd84651%_ _%hd8462684646%_)
                           (_%tl84653%_ _%tl8462784648%_))
                      (_%K8462584643%_ _%tl84653%_ _%hd84651%_)))
                  (_%else8462384637%_)))))))
    (define remove1
      (lambda (_%el84558%_ _%lst84560%_)
        (let _%lp84563%_ ((_%rest84566%_ _%lst84560%_) (_%r84568%_ '()))
          (let* ((_%rest8457084578%_ _%rest84566%_)
                 (_%else8457284586%_ (lambda () _%lst84560%_))
                 (_%K8457484593%_
                  (lambda (_%rest84589%_ _%hd84590%_)
                    (if (equal? _%el84558%_ _%hd84590%_)
                        (__foldl1 cons _%rest84589%_ _%r84568%_)
                        (_%lp84563%_
                         _%rest84589%_
                         (cons _%hd84590%_ _%r84568%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8457084578%_))
                (let ((_%hd8457584596%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8457084578%_)))
                      (_%tl8457684598%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8457084578%_))))
                  (let* ((_%hd84601%_ _%hd8457584596%_)
                         (_%rest84603%_ _%tl8457684598%_))
                    (_%K8457484593%_ _%rest84603%_ _%hd84601%_)))
                (_%else8457284586%_))))))
    (define remv1
      (lambda (_%el84511%_ _%lst84513%_)
        (let _%lp84516%_ ((_%rest84519%_ _%lst84513%_) (_%r84521%_ '()))
          (let* ((_%rest8452384531%_ _%rest84519%_)
                 (_%else8452584539%_ (lambda () _%lst84513%_))
                 (_%K8452784546%_
                  (lambda (_%rest84542%_ _%hd84543%_)
                    (if (eqv? _%el84511%_ _%hd84543%_)
                        (__foldl1 cons _%rest84542%_ _%r84521%_)
                        (_%lp84516%_
                         _%rest84542%_
                         (cons _%hd84543%_ _%r84521%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8452384531%_))
                (let ((_%hd8452884549%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8452384531%_)))
                      (_%tl8452984551%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8452384531%_))))
                  (let* ((_%hd84554%_ _%hd8452884549%_)
                         (_%rest84556%_ _%tl8452984551%_))
                    (_%K8452784546%_ _%rest84556%_ _%hd84554%_)))
                (_%else8452584539%_))))))
    (define remq1
      (lambda (_%el84464%_ _%lst84466%_)
        (let _%lp84469%_ ((_%rest84472%_ _%lst84466%_) (_%r84474%_ '()))
          (let* ((_%rest8447684484%_ _%rest84472%_)
                 (_%else8447884492%_ (lambda () _%lst84466%_))
                 (_%K8448084499%_
                  (lambda (_%rest84495%_ _%hd84496%_)
                    (if (eq? _%el84464%_ _%hd84496%_)
                        (__foldl1 cons _%rest84495%_ _%r84474%_)
                        (_%lp84469%_
                         _%rest84495%_
                         (cons _%hd84496%_ _%r84474%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8447684484%_))
                (let ((_%hd8448184502%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8447684484%_)))
                      (_%tl8448284504%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8447684484%_))))
                  (let* ((_%hd84507%_ _%hd8448184502%_)
                         (_%rest84509%_ _%tl8448284504%_))
                    (_%K8448084499%_ _%rest84509%_ _%hd84507%_)))
                (_%else8447884492%_))))))
    (define remf
      (lambda (_%proc84449%_ _%lst84450%_)
        (if (procedure? _%proc84449%_)
            (let ((_%proc84454%_ _%proc84449%_))
              (__remf _%proc84454%_ _%lst84450%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@508.13-508.17"
               'contract:
               'procedure?
               'value:
               _%proc84449%_)
              '#!void))))
    (define __remf
      (lambda (_%proc84398%_ _%lst84399%_)
        (let ((_%proc84402%_ _%proc84398%_))
          (let _%lp84411%_ ((_%rest84413%_ _%lst84399%_) (_%r84414%_ '()))
            (let* ((_%rest8441584423%_ _%rest84413%_)
                   (_%else8441784431%_ (lambda () _%lst84399%_))
                   (_%K8441984437%_
                    (lambda (_%rest84434%_ _%hd84435%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc84402%_ _%hd84435%_))
                          (__foldl1 cons _%rest84434%_ _%r84414%_)
                          (_%lp84411%_
                           _%rest84434%_
                           (cons _%hd84435%_ _%r84414%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8441584423%_))
                  (let ((_%hd8442084440%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8441584423%_)))
                        (_%tl8442184442%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8441584423%_))))
                    (let* ((_%hd84445%_ _%hd8442084440%_)
                           (_%rest84447%_ _%tl8442184442%_))
                      (_%K8441984437%_ _%rest84447%_ _%hd84445%_)))
                  (_%else8441784431%_)))))))
    (define 1+
      (lambda (_%x84384%_)
        (if (number? _%x84384%_)
            (let ((_%x84388%_ _%x84384%_)) (__1+ _%x84388%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.11-517.12"
               'contract:
               'number?
               'value:
               _%x84384%_)
              '#!void))))
    (define __1+
      (lambda (_%x84372%_) (let ((_%x84375%_ _%x84372%_)) (+ _%x84375%_ '1))))
    (define 1-
      (lambda (_%x84358%_)
        (if (number? _%x84358%_)
            (let ((_%x84362%_ _%x84358%_)) (__1- _%x84362%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@525.11-525.12"
               'contract:
               'number?
               'value:
               _%x84358%_)
              '#!void))))
    (define __1-
      (lambda (_%x84346%_) (let ((_%x84349%_ _%x84346%_)) (- _%x84349%_ '1))))
    (define fx1+
      (lambda (_%x84332%_)
        (if (fixnum? _%x84332%_)
            (let ((_%x84336%_ _%x84332%_)) (__fx1+ _%x84336%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@533.13-533.14"
               'contract:
               'fixnum?
               'value:
               _%x84332%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x84320%_)
        (let ((_%x84323%_ _%x84320%_))
          (declare (not safe))
          (##fx+ _%x84323%_ '1))))
    (define fx1-
      (lambda (_%x84306%_)
        (if (fixnum? _%x84306%_)
            (let ((_%x84310%_ _%x84306%_)) (__fx1- _%x84310%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@541.13-541.14"
               'contract:
               'fixnum?
               'value:
               _%x84306%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x84294%_)
        (let ((_%x84297%_ _%x84294%_))
          (declare (not safe))
          (##fx- _%x84297%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x84291%_)
        (if (fixnum? _%x84291%_)
            (let () (declare (not safe)) (##fx>= _%x84291%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x84288%_)
        (if (fixnum? _%x84288%_)
            (let () (declare (not safe)) (##fx> _%x84288%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x84285%_)
        (let () (declare (not safe)) (##fx= _%x84285%_ '0))))
    (define fx<0?
      (lambda (_%x84282%_)
        (if (fixnum? _%x84282%_)
            (let () (declare (not safe)) (##fx< _%x84282%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x84279%_)
        (if (fixnum? _%x84279%_)
            (let () (declare (not safe)) (##fx<= _%x84279%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x84276%_)
        (if (symbol? _%x84276%_) (not (uninterned-symbol? _%x84276%_)) '#f)))
    (define display-as-string
      (lambda (_%x84261%_ _%port84262%_)
        (if (output-port? _%port84262%_)
            (let ((_%port84266%_ _%port84262%_))
              (__display-as-string _%x84261%_ _%port84266%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.28-569.32"
               'contract:
               'output-port?
               'value:
               _%port84262%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x84218%_ _%port84219%_)
        (let ((_%port84222%_ _%port84219%_))
          (if (or (string? _%x84218%_)
                  (symbol? _%x84218%_)
                  (keyword? _%x84218%_)
                  (number? _%x84218%_)
                  (char? _%x84218%_))
              (display _%x84218%_ _%port84222%_)
              (if (pair? _%x84218%_)
                  (let ()
                    (__display-as-string (car _%x84218%_) _%port84222%_)
                    (__display-as-string (cdr _%x84218%_) _%port84222%_))
                  (if (vector? _%x84218%_)
                      (vector-for-each
                       (lambda (_%g8424584247%_)
                         (__display-as-string _%g8424584247%_ _%port84222%_))
                       _%x84218%_)
                      (if (or (null? _%x84218%_)
                              (eq? _%x84218%_ '#!void)
                              (eof-object? _%x84218%_)
                              (boolean? _%x84218%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x84218%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x84201%_)
        (if (string? _%x84201%_)
            _%x84201%_
            (if (symbol? _%x84201%_)
                (symbol->string _%x84201%_)
                (if (keyword? _%x84201%_)
                    (keyword->string _%x84201%_)
                    (if (number? _%x84201%_)
                        (number->string _%x84201%_)
                        (call-with-output-string
                         '()
                         (lambda (_%g8420784209%_)
                           (__display-as-string
                            _%x84201%_
                            _%g8420784209%_)))))))))
    (define as-string__1
      (lambda _%args84212%_
        (call-with-output-string
         '()
         (lambda (_%g8421384215%_)
           (__display-as-string _%args84212%_ _%g8421384215%_)))))
    (define as-string
      (lambda _g88352_
        (let ((_g88351_ (let () (declare (not safe)) (##length _g88352_))))
          (cond ((let () (declare (not safe)) (##fx= _g88351_ 1))
                 (apply as-string__0 _g88352_))
                (#t
                 (apply (lambda _%args84212%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args84212%_)))
                        _g88352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g88352_))))))
    (define make-symbol__0
      (lambda (_%x84197%_)
        (if (interned-symbol? _%x84197%_)
            _%x84197%_
            (string->symbol (as-string__0 _%x84197%_)))))
    (define make-symbol__1
      (lambda _%args84199%_
        (string->symbol
         (let () (declare (not safe)) (##apply as-string _%args84199%_)))))
    (define make-symbol
      (lambda _g88354_
        (let ((_g88353_ (let () (declare (not safe)) (##length _g88354_))))
          (cond ((let () (declare (not safe)) (##fx= _g88353_ 1))
                 (apply make-symbol__0 _g88354_))
                (#t
                 (apply (lambda _%args84199%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args84199%_)))
                        _g88354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g88354_))))))
    (define make-keyword__0
      (lambda (_%x84193%_)
        (if (interned-keyword? _%x84193%_)
            _%x84193%_
            (string->keyword (as-string__0 _%x84193%_)))))
    (define make-keyword__1
      (lambda _%args84195%_
        (string->keyword
         (let () (declare (not safe)) (##apply as-string _%args84195%_)))))
    (define make-keyword
      (lambda _g88356_
        (let ((_g88355_ (let () (declare (not safe)) (##length _g88356_))))
          (cond ((let () (declare (not safe)) (##fx= _g88355_ 1))
                 (apply make-keyword__0 _g88356_))
                (#t
                 (apply (lambda _%args84195%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args84195%_)))
                        _g88356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g88356_))))))
    (define interned-keyword?
      (lambda (_%x84190%_)
        (if (keyword? _%x84190%_) (not (uninterned-keyword? _%x84190%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym84176%_)
        (if (symbol? _%sym84176%_)
            (let ((_%sym84180%_ _%sym84176%_))
              (__symbol->keyword _%sym84180%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@612.24-612.27"
               'contract:
               'symbol?
               'value:
               _%sym84176%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym84164%_)
        (let ((_%sym84167%_ _%sym84164%_))
          (if (uninterned-symbol? _%sym84167%_)
              (let ((__tmp88357
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym84167%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp88357))
              (let ((__tmp88358
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym84167%_))))
                (declare (not safe))
                (##string->keyword __tmp88358))))))
    (define keyword->symbol
      (lambda (_%sym84150%_)
        (if (keyword? _%sym84150%_)
            (let ((_%sym84154%_ _%sym84150%_))
              (__keyword->symbol _%sym84154%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@618.24-618.27"
               'contract:
               'keyword?
               'value:
               _%sym84150%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym84138%_)
        (let ((_%sym84141%_ _%sym84138%_))
          (if (uninterned-keyword? _%sym84141%_)
              (let ((__tmp88359
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym84141%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp88359))
              (let ((__tmp88360
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym84141%_))))
                (declare (not safe))
                (##string->symbol __tmp88360))))))
    (define bytes->string__%
      (lambda (_%bstr84103%_ _%enc84104%_)
        (if (u8vector? _%bstr84103%_)
            (let ((_%bstr84108%_ _%bstr84103%_))
              (if (symbol? _%enc84104%_)
                  (let ((_%enc84118%_ _%enc84104%_))
                    (__bytes->string__% _%bstr84108%_ _%enc84118%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@625.25-625.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc84104%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@624.22-624.26"
               'contract:
               'u8vector?
               'value:
               _%bstr84103%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr84131%_)
        (let ((_%enc84133%_ 'UTF-8))
          (bytes->string__% _%bstr84131%_ _%enc84133%_))))
    (define bytes->string
      (lambda _g88362_
        (let ((_g88361_ (let () (declare (not safe)) (##length _g88362_))))
          (cond ((let () (declare (not safe)) (##fx= _g88361_ 1))
                 (apply bytes->string__0 _g88362_))
                ((let () (declare (not safe)) (##fx= _g88361_ 2))
                 (apply bytes->string__% _g88362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g88362_))))))
    (define __bytes->string__%
      (lambda (_%bstr84062%_ _%enc84063%_)
        (let* ((_%bstr84066%_ _%bstr84062%_) (_%enc84074%_ _%enc84063%_))
          (if (eq? _%enc84074%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr84066%_))
              (let* ((_%in84083%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc84074%_
                                   (cons 'init: (cons _%bstr84066%_ '()))))))
                     (_%len84085%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr84066%_)))
                     (_%out84087%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len84085%_)))
                     (_%n84089%_
                      (read-substring
                       _%out84087%_
                       '0
                       _%len84085%_
                       _%in84083%_)))
                (string-shrink! _%out84087%_ _%n84089%_)
                _%out84087%_)))))
    (define __bytes->string__0
      (lambda (_%bstr84095%_)
        (let ((_%enc84097%_ 'UTF-8))
          (__bytes->string__% _%bstr84095%_ _%enc84097%_))))
    (define __bytes->string
      (lambda _g88364_
        (let ((_g88363_ (let () (declare (not safe)) (##length _g88364_))))
          (cond ((let () (declare (not safe)) (##fx= _g88363_ 1))
                 (apply __bytes->string__0 _g88364_))
                ((let () (declare (not safe)) (##fx= _g88363_ 2))
                 (apply __bytes->string__% _g88364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g88364_))))))
    (define string->bytes__%
      (lambda (_%str84026%_ _%enc84027%_)
        (if (string? _%str84026%_)
            (let ((_%str84031%_ _%str84026%_))
              (if (symbol? _%enc84027%_)
                  (let ((_%enc84041%_ _%enc84027%_))
                    (__string->bytes__% _%str84031%_ _%enc84041%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@637.25-637.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc84027%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@636.22-636.25"
               'contract:
               'string?
               'value:
               _%str84026%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str84054%_)
        (let ((_%enc84056%_ 'UTF-8))
          (string->bytes__% _%str84054%_ _%enc84056%_))))
    (define string->bytes
      (lambda _g88366_
        (let ((_g88365_ (let () (declare (not safe)) (##length _g88366_))))
          (cond ((let () (declare (not safe)) (##fx= _g88365_ 1))
                 (apply string->bytes__0 _g88366_))
                ((let () (declare (not safe)) (##fx= _g88365_ 2))
                 (apply string->bytes__% _g88366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g88366_))))))
    (define __string->bytes__%
      (lambda (_%str83994%_ _%enc83995%_)
        (let* ((_%str83998%_ _%str83994%_) (_%enc84006%_ _%enc83995%_))
          (if (eq? _%enc84006%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str83998%_))
              (let ((__tmp88367
                     (let ()
                       (declare (not safe))
                       (##string-length _%str83998%_))))
                (declare (not safe))
                (__substring->bytes
                 _%str83998%_
                 '0
                 __tmp88367
                 _%enc84006%_))))))
    (define __string->bytes__0
      (lambda (_%str84018%_)
        (let ((_%enc84020%_ 'UTF-8))
          (__string->bytes__% _%str84018%_ _%enc84020%_))))
    (define __string->bytes
      (lambda _g88369_
        (let ((_g88368_ (let () (declare (not safe)) (##length _g88369_))))
          (cond ((let () (declare (not safe)) (##fx= _g88368_ 1))
                 (apply __string->bytes__0 _g88369_))
                ((let () (declare (not safe)) (##fx= _g88368_ 2))
                 (apply __string->bytes__% _g88369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g88369_))))))
    (define substring->bytes__%
      (lambda (_%str83942%_ _%start83943%_ _%end83944%_ _%enc83945%_)
        (if (string? _%str83942%_)
            (let ((_%str83949%_ _%str83942%_))
              (if (nonnegative-fixnum? _%start83943%_)
                  (let ((_%start83959%_ _%start83943%_))
                    (if (nonnegative-fixnum? _%end83944%_)
                        (let ((_%end83969%_ _%end83944%_))
                          (__substring->bytes__%
                           _%str83949%_
                           _%start83959%_
                           _%end83969%_
                           _%enc83945%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end83944%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start83943%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@643.25-643.28"
               'contract:
               'string?
               'value:
               _%str83942%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str83982%_ _%start83983%_ _%end83984%_)
        (let ((_%enc83986%_ 'UTF-8))
          (substring->bytes__%
           _%str83982%_
           _%start83983%_
           _%end83984%_
           _%enc83986%_))))
    (define substring->bytes
      (lambda _g88371_
        (let ((_g88370_ (let () (declare (not safe)) (##length _g88371_))))
          (cond ((let () (declare (not safe)) (##fx= _g88370_ 3))
                 (apply substring->bytes__0 _g88371_))
                ((let () (declare (not safe)) (##fx= _g88370_ 4))
                 (apply substring->bytes__% _g88371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g88371_))))))
    (define __substring->bytes__%
      (lambda (_%str83894%_ _%start83895%_ _%end83896%_ _%enc83897%_)
        (let* ((_%str83900%_ _%str83894%_)
               (_%start83908%_ _%start83895%_)
               (_%end83916%_ _%end83896%_))
          (if (eq? _%enc83897%_ 'UTF-8)
              (string->utf8 _%str83900%_ _%start83908%_ _%end83916%_)
              (let ((_%out83925%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc83897%_ '())))))
                (write-substring
                 _%str83900%_
                 _%start83908%_
                 _%end83916%_
                 _%out83925%_)
                (get-output-u8vector _%out83925%_))))))
    (define __substring->bytes__0
      (lambda (_%str83930%_ _%start83931%_ _%end83932%_)
        (let ((_%enc83934%_ 'UTF-8))
          (__substring->bytes__%
           _%str83930%_
           _%start83931%_
           _%end83932%_
           _%enc83934%_))))
    (define __substring->bytes
      (lambda _g88373_
        (let ((_g88372_ (let () (declare (not safe)) (##length _g88373_))))
          (cond ((let () (declare (not safe)) (##fx= _g88372_ 3))
                 (apply __substring->bytes__0 _g88373_))
                ((let () (declare (not safe)) (##fx= _g88372_ 4))
                 (apply __substring->bytes__% _g88373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g88373_))))))
    (define string-empty?
      (lambda (_%str83879%_)
        (if (string? _%str83879%_)
            (let ((_%str83883%_ _%str83879%_)) (__string-empty? _%str83883%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.22-654.25"
               'contract:
               'string?
               'value:
               _%str83879%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str83867%_)
        (let* ((_%str83870%_ _%str83867%_)
               (__tmp88374
                (let () (declare (not safe)) (##string-length _%str83870%_))))
          (declare (not safe))
          (##fxzero? __tmp88374))))
    (define string-index__%
      (lambda (_%str83819%_ _%char83820%_ _%start83821%_)
        (if (string? _%str83819%_)
            (let ((_%str83825%_ _%str83819%_))
              (if (char? _%char83820%_)
                  (let ((_%char83835%_ _%char83820%_))
                    (if (nonnegative-fixnum? _%start83821%_)
                        (let ((_%start83845%_ _%start83821%_))
                          (__string-index__%
                           _%str83825%_
                           _%char83835%_
                           _%start83845%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start83821%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@659.21-659.25"
                     'contract:
                     'char?
                     'value:
                     _%char83820%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@658.21-658.24"
               'contract:
               'string?
               'value:
               _%str83819%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str83858%_ _%char83859%_)
        (let ((_%start83861%_ '0))
          (string-index__% _%str83858%_ _%char83859%_ _%start83861%_))))
    (define string-index
      (lambda _g88376_
        (let ((_g88375_ (let () (declare (not safe)) (##length _g88376_))))
          (cond ((let () (declare (not safe)) (##fx= _g88375_ 2))
                 (apply string-index__0 _g88376_))
                ((let () (declare (not safe)) (##fx= _g88375_ 3))
                 (apply string-index__% _g88376_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g88376_))))))
    (define __string-index__%
      (lambda (_%str83758%_ _%char83759%_ _%start83760%_)
        (let* ((_%str83763%_ _%str83758%_)
               (_%char83771%_ _%char83759%_)
               (_%start83779%_ _%start83760%_)
               (_%len83788%_
                (let () (declare (not safe)) (##string-length _%str83763%_))))
          (let _%lp83790%_ ((_%k83792%_ _%start83779%_))
            (let ((_%k83794%_ _%k83792%_))
              (if (let () (declare (not safe)) (##fx< _%k83794%_ _%len83788%_))
                  (if (eq? _%char83771%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str83763%_ _%k83794%_)))
                      _%k83794%_
                      (_%lp83790%_
                       (let () (declare (not safe)) (##fx+ _%k83794%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str83809%_ _%char83810%_)
        (let ((_%start83812%_ '0))
          (__string-index__% _%str83809%_ _%char83810%_ _%start83812%_))))
    (define __string-index
      (lambda _g88378_
        (let ((_g88377_ (let () (declare (not safe)) (##length _g88378_))))
          (cond ((let () (declare (not safe)) (##fx= _g88377_ 2))
                 (apply __string-index__0 _g88378_))
                ((let () (declare (not safe)) (##fx= _g88377_ 3))
                 (apply __string-index__% _g88378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g88378_))))))
    (define string-rindex__%
      (lambda (_%str83719%_ _%char83720%_ _%start83721%_)
        (if (string? _%str83719%_)
            (let ((_%str83725%_ _%str83719%_))
              (if (char? _%char83720%_)
                  (let ((_%char83735%_ _%char83720%_))
                    (__string-rindex__%
                     _%str83725%_
                     _%char83735%_
                     _%start83721%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@670.25-670.29"
                     'contract:
                     'char?
                     'value:
                     _%char83720%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@669.22-669.25"
               'contract:
               'string?
               'value:
               _%str83719%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str83748%_ _%char83749%_)
        (let ((_%start83751%_ '#f))
          (string-rindex__% _%str83748%_ _%char83749%_ _%start83751%_))))
    (define string-rindex
      (lambda _g88380_
        (let ((_g88379_ (let () (declare (not safe)) (##length _g88380_))))
          (cond ((let () (declare (not safe)) (##fx= _g88379_ 2))
                 (apply string-rindex__0 _g88380_))
                ((let () (declare (not safe)) (##fx= _g88379_ 3))
                 (apply string-rindex__% _g88380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g88380_))))))
    (define __string-rindex__%
      (lambda (_%str83661%_ _%char83662%_ _%start83663%_)
        (let* ((_%str83666%_ _%str83661%_)
               (_%char83674%_ _%char83662%_)
               (_%len83683%_
                (let () (declare (not safe)) (##string-length _%str83666%_)))
               (_%start83685%_
                (if (fixnum? _%start83663%_)
                    _%start83663%_
                    (let () (declare (not safe)) (##fx- _%len83683%_ '1)))))
          (let _%lp83688%_ ((_%k83690%_ _%start83685%_))
            (let ((_%k83692%_ _%k83690%_))
              (if (let () (declare (not safe)) (##fx>= _%k83692%_ '0))
                  (if (eq? _%char83674%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str83666%_ _%k83692%_)))
                      _%k83692%_
                      (_%lp83688%_
                       (let () (declare (not safe)) (##fx- _%k83692%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str83709%_ _%char83710%_)
        (let ((_%start83712%_ '#f))
          (__string-rindex__% _%str83709%_ _%char83710%_ _%start83712%_))))
    (define __string-rindex
      (lambda _g88382_
        (let ((_g88381_ (let () (declare (not safe)) (##length _g88382_))))
          (cond ((let () (declare (not safe)) (##fx= _g88381_ 2))
                 (apply __string-rindex__0 _g88382_))
                ((let () (declare (not safe)) (##fx= _g88381_ 3))
                 (apply __string-rindex__% _g88382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g88382_))))))
    (define string-split
      (lambda (_%str83635%_ _%char83636%_)
        (if (string? _%str83635%_)
            (let ((_%str83640%_ _%str83635%_))
              (if (char? _%char83636%_)
                  (let ((_%char83650%_ _%char83636%_))
                    (__string-split _%str83640%_ _%char83650%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@681.37-681.41"
                     'contract:
                     'char?
                     'value:
                     _%char83636%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@681.21-681.24"
               'contract:
               'string?
               'value:
               _%str83635%_)
              '#!void))))
    (define __string-split
      (lambda (_%str83576%_ _%char83577%_)
        (let* ((_%str83580%_ _%str83576%_)
               (_%char83588%_ _%char83577%_)
               (_%len83597%_
                (let () (declare (not safe)) (##string-length _%str83580%_))))
          (let _%lp83599%_ ((_%start83601%_ '0) (_%r83602%_ '()))
            (let* ((_%start83605%_ _%start83601%_)
                   (_%$e83618%_
                    (let ()
                      (declare (not safe))
                      (__string-index
                       _%str83580%_
                       _%char83588%_
                       _%start83605%_))))
              (if _%$e83618%_
                  ((lambda (_%end83621%_)
                     (let ((_%end83623%_ _%end83621%_))
                       (_%lp83599%_
                        (let () (declare (not safe)) (##fx+ _%end83623%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str83580%_
                                 _%start83605%_
                                 _%end83623%_))
                              _%r83602%_))))
                   _%$e83618%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start83605%_ _%len83597%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str83580%_
                                _%start83605%_
                                _%len83597%_)))
                       _%r83602%_)
                      (reverse! _%r83602%_))))))))
    (define string-join
      (lambda (_%strs83426%_ _%join83427%_)
        (letrec ((_%join-length83430%_
                  (lambda (_%strs83514%_ _%jlen83515%_)
                    (let _%lp83517%_ ((_%rest83519%_ _%strs83514%_)
                                      (_%len83520%_ '0))
                      (let* ((_%len83522%_ _%len83520%_)
                             (_%rest8353083538%_ _%rest83519%_)
                             (_%else8353283546%_ (lambda () '0))
                             (_%K8353483564%_
                              (lambda (_%rest83549%_ _%hd83550%_)
                                (if (string? _%hd83550%_)
                                    (let ((_%hd83552%_ _%hd83550%_))
                                      (if (pair? _%rest83549%_)
                                          (_%lp83517%_
                                           _%rest83549%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd83552%_))
                                                _%jlen83515%_
                                                _%len83522%_))
                                          (let ((__tmp88383
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd83552%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp88383 _%len83522%_))))
                                    (error '"expected string" _%hd83550%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest8353083538%_))
                            (let ((_%hd8353583567%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8353083538%_)))
                                  (_%tl8353683569%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8353083538%_))))
                              (let* ((_%hd83572%_ _%hd8353583567%_)
                                     (_%rest83574%_ _%tl8353683569%_))
                                (_%K8353483564%_ _%rest83574%_ _%hd83572%_)))
                            (_%else8353283546%_)))))))
          (let* ((_%join83435%_
                  (if (char? _%join83427%_)
                      (let () (declare (not safe)) (##string _%join83427%_))
                      (if (string? _%join83427%_)
                          _%join83427%_
                          (error '"expected string or char" _%join83427%_))))
                 (_%jlen83437%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join83435%_)))
                 (_%olen83439%_
                  (_%join-length83430%_ _%strs83426%_ _%jlen83437%_))
                 (_%ostr83441%_
                  (let () (declare (not safe)) (##make-string _%olen83439%_))))
            (let _%lp83444%_ ((_%rest83446%_ _%strs83426%_) (_%k83447%_ '0))
              (let* ((_%k83450%_ _%k83447%_)
                     (_%rest8346683474%_ _%rest83446%_)
                     (_%else8346883482%_ (lambda () '""))
                     (_%K8347083502%_
                      (lambda (_%rest83485%_ _%hd83486%_)
                        (let* ((_%hd83488%_ _%hd83486%_)
                               (_%hdlen83500%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd83488%_))))
                          (if (pair? _%rest83485%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd83488%_
                                   '0
                                   _%hdlen83500%_
                                   _%ostr83441%_
                                   _%k83450%_))
                                (let ((__tmp88384
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k83450%_ _%hdlen83500%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join83435%_
                                   '0
                                   _%jlen83437%_
                                   _%ostr83441%_
                                   __tmp88384))
                                (_%lp83444%_
                                 _%rest83485%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k83450%_
                                          _%hdlen83500%_
                                          _%jlen83437%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd83488%_
                                   '0
                                   _%hdlen83500%_
                                   _%ostr83441%_
                                   _%k83450%_))
                                _%ostr83441%_))))))
                (if (let () (declare (not safe)) (##pair? _%rest8346683474%_))
                    (let ((_%hd8347183505%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8346683474%_)))
                          (_%tl8347283507%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8346683474%_))))
                      (let* ((_%hd83510%_ _%hd8347183505%_)
                             (_%rest83512%_ _%tl8347283507%_))
                        (_%K8347083502%_ _%rest83512%_ _%hd83510%_)))
                    (_%else8346883482%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes83352%_ _%port83353%_ _%start83354%_ _%end83355%_)
        (if (u8vector? _%bytes83352%_)
            (let ((_%bytes83359%_ _%bytes83352%_))
              (if (input-port? _%port83353%_)
                  (let ((_%port83369%_ _%port83353%_))
                    (if ((lambda (_%o83378%_)
                           (and (fixnum? _%o83378%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o83378%_ '0))
                                (let ((__tmp88385
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes83359%_))))
                                  (declare (not safe))
                                  (##fx< _%o83378%_ __tmp88385))))
                         _%start83354%_)
                        (let ((_%start83382%_ _%start83354%_))
                          (if ((lambda (_%o83391%_)
                                 (and (fixnum? _%o83391%_)
                                      (fx<= _%start83382%_
                                            _%o83391%_
                                            (let ()
                                              (declare (not safe))
                                              (##u8vector-length
                                               _%bytes83359%_)))))
                               _%end83355%_)
                              (let ((_%end83395%_ _%end83355%_))
                                (__read-u8vector__%
                                 _%bytes83359%_
                                 _%port83369%_
                                 _%start83382%_
                                 _%end83395%_))
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
                                 _%end83355%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start83354%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port83353%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@744.22-744.27"
               'contract:
               'u8vector?
               'value:
               _%bytes83352%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes83408%_ _%port83409%_)
        (let* ((_%start83411%_ '0)
               (_%end83413%_ (u8vector-length _%bytes83408%_)))
          (read-u8vector__%
           _%bytes83408%_
           _%port83409%_
           _%start83411%_
           _%end83413%_))))
    (define read-u8vector__1
      (lambda (_%bytes83415%_ _%port83416%_ _%start83417%_)
        (let ((_%end83419%_ (u8vector-length _%bytes83415%_)))
          (read-u8vector__%
           _%bytes83415%_
           _%port83416%_
           _%start83417%_
           _%end83419%_))))
    (define read-u8vector
      (lambda _g88387_
        (let ((_g88386_ (let () (declare (not safe)) (##length _g88387_))))
          (cond ((let () (declare (not safe)) (##fx= _g88386_ 2))
                 (apply read-u8vector__0 _g88387_))
                ((let () (declare (not safe)) (##fx= _g88386_ 3))
                 (apply read-u8vector__1 _g88387_))
                ((let () (declare (not safe)) (##fx= _g88386_ 4))
                 (apply read-u8vector__% _g88387_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g88387_))))))
    (define __read-u8vector__%
      (lambda (_%bytes83291%_ _%port83292%_ _%start83293%_ _%end83294%_)
        (let* ((_%bytes83297%_ _%bytes83291%_)
               (_%port83305%_ _%port83292%_)
               (_%start83313%_ _%start83293%_)
               (_%end83321%_ _%end83294%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes83297%_
           _%start83313%_
           _%end83321%_
           _%port83305%_))))
    (define __read-u8vector__0
      (lambda (_%bytes83333%_ _%port83334%_)
        (let* ((_%start83336%_ '0)
               (_%end83338%_ (u8vector-length _%bytes83333%_)))
          (__read-u8vector__%
           _%bytes83333%_
           _%port83334%_
           _%start83336%_
           _%end83338%_))))
    (define __read-u8vector__1
      (lambda (_%bytes83340%_ _%port83341%_ _%start83342%_)
        (let ((_%end83344%_ (u8vector-length _%bytes83340%_)))
          (__read-u8vector__%
           _%bytes83340%_
           _%port83341%_
           _%start83342%_
           _%end83344%_))))
    (define __read-u8vector
      (lambda _g88389_
        (let ((_g88388_ (let () (declare (not safe)) (##length _g88389_))))
          (cond ((let () (declare (not safe)) (##fx= _g88388_ 2))
                 (apply __read-u8vector__0 _g88389_))
                ((let () (declare (not safe)) (##fx= _g88388_ 3))
                 (apply __read-u8vector__1 _g88389_))
                ((let () (declare (not safe)) (##fx= _g88388_ 4))
                 (apply __read-u8vector__% _g88389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g88389_))))))
    (define write-u8vector__%
      (lambda (_%bytes83216%_ _%port83217%_ _%start83218%_ _%end83219%_)
        (if (u8vector? _%bytes83216%_)
            (let ((_%bytes83223%_ _%bytes83216%_))
              (if (output-port? _%port83217%_)
                  (let ((_%port83233%_ _%port83217%_))
                    (if ((lambda (_%o83242%_)
                           (and (fixnum? _%o83242%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o83242%_ '0))
                                (let ((__tmp88390
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes83223%_))))
                                  (declare (not safe))
                                  (##fx< _%o83242%_ __tmp88390))))
                         _%start83218%_)
                        (let ((_%start83246%_ _%start83218%_))
                          (if ((lambda (_%o83255%_)
                                 (and (fixnum? _%o83255%_)
                                      (fx<= _%start83246%_
                                            _%o83255%_
                                            (let ()
                                              (declare (not safe))
                                              (##u8vector-length
                                               _%bytes83223%_)))))
                               _%end83219%_)
                              (let ((_%end83259%_ _%end83219%_))
                                (__write-u8vector__%
                                 _%bytes83223%_
                                 _%port83233%_
                                 _%start83246%_
                                 _%end83259%_))
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
                                 _%end83219%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start83218%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port83217%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@754.23-754.28"
               'contract:
               'u8vector?
               'value:
               _%bytes83216%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes83272%_ _%port83273%_)
        (let* ((_%start83275%_ '0)
               (_%end83277%_ (u8vector-length _%bytes83272%_)))
          (write-u8vector__%
           _%bytes83272%_
           _%port83273%_
           _%start83275%_
           _%end83277%_))))
    (define write-u8vector__1
      (lambda (_%bytes83279%_ _%port83280%_ _%start83281%_)
        (let ((_%end83283%_ (u8vector-length _%bytes83279%_)))
          (write-u8vector__%
           _%bytes83279%_
           _%port83280%_
           _%start83281%_
           _%end83283%_))))
    (define write-u8vector
      (lambda _g88392_
        (let ((_g88391_ (let () (declare (not safe)) (##length _g88392_))))
          (cond ((let () (declare (not safe)) (##fx= _g88391_ 2))
                 (apply write-u8vector__0 _g88392_))
                ((let () (declare (not safe)) (##fx= _g88391_ 3))
                 (apply write-u8vector__1 _g88392_))
                ((let () (declare (not safe)) (##fx= _g88391_ 4))
                 (apply write-u8vector__% _g88392_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g88392_))))))
    (define __write-u8vector__%
      (lambda (_%bytes83155%_ _%port83156%_ _%start83157%_ _%end83158%_)
        (let* ((_%bytes83161%_ _%bytes83155%_)
               (_%port83169%_ _%port83156%_)
               (_%start83177%_ _%start83157%_)
               (_%end83185%_ _%end83158%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes83161%_
           _%start83177%_
           _%end83185%_
           _%port83169%_))))
    (define __write-u8vector__0
      (lambda (_%bytes83197%_ _%port83198%_)
        (let* ((_%start83200%_ '0)
               (_%end83202%_ (u8vector-length _%bytes83197%_)))
          (__write-u8vector__%
           _%bytes83197%_
           _%port83198%_
           _%start83200%_
           _%end83202%_))))
    (define __write-u8vector__1
      (lambda (_%bytes83204%_ _%port83205%_ _%start83206%_)
        (let ((_%end83208%_ (u8vector-length _%bytes83204%_)))
          (__write-u8vector__%
           _%bytes83204%_
           _%port83205%_
           _%start83206%_
           _%end83208%_))))
    (define __write-u8vector
      (lambda _g88394_
        (let ((_g88393_ (let () (declare (not safe)) (##length _g88394_))))
          (cond ((let () (declare (not safe)) (##fx= _g88393_ 2))
                 (apply __write-u8vector__0 _g88394_))
                ((let () (declare (not safe)) (##fx= _g88393_ 3))
                 (apply __write-u8vector__1 _g88394_))
                ((let () (declare (not safe)) (##fx= _g88393_ 4))
                 (apply __write-u8vector__% _g88394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g88394_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag83123%_
               _%dbg-exprs83124%_
               _%dbg-thunks83125%_
               _%expr83126%_
               _%thunk83127%_)
        (letrec ((_%o83129%_ (current-output-port))
                 (_%e83130%_ (current-error-port))
                 (_%p83131%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f83132%_
                  (lambda ()
                    (force-output _%o83129%_)
                    (force-output _%e83130%_)))
                 (_%d83133%_
                  (lambda (_%x83140%_) (display _%x83140%_ _%e83130%_)))
                 (_%w83134%_
                  (lambda (_%x83142%_) (_%p83131%_ _%x83142%_ _%e83130%_)))
                 (_%n83135%_ (lambda () (newline _%e83130%_)))
                 (_%v83136%_
                  (lambda (_%l83145%_)
                    (for-each
                     (lambda (_%x83147%_)
                       (_%d83133%_ '" ")
                       (_%w83134%_ _%x83147%_))
                     _%l83145%_)
                    (_%n83135%_)))
                 (_%x83137%_
                  (lambda (_%expr83149%_ _%thunk83150%_)
                    (_%f83132%_)
                    (_%d83133%_ '"  ")
                    (_%w83134%_ _%expr83149%_)
                    (_%d83133%_ '" =>")
                    (call-with-values
                     _%thunk83150%_
                     (lambda _%x83152%_
                       (_%v83136%_ _%x83152%_)
                       (_%f83132%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x83152%_)))))))
          (if _%tag83123%_
              (begin
                (if (eq? _%tag83123%_ '#!void)
                    '#!void
                    (begin
                      (_%f83132%_)
                      (_%d83133%_ _%tag83123%_)
                      (_%n83135%_)))
                (for-each _%x83137%_ _%dbg-exprs83124%_ _%dbg-thunks83125%_)
                (if _%thunk83127%_
                    (_%x83137%_ _%expr83126%_ _%thunk83127%_)
                    '#!void))
              (if _%thunk83127%_ (_%thunk83127%_) '#!void)))))))
