(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1712757953)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args86327%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args86327%_))
          (newline))))
    (define display*
      (lambda _%args86324%_
        (let () (declare (not safe)) (##for-each display _%args86324%_))))
    (define file-newer?
      (lambda (_%file186299%_ _%file286300%_)
        (if (string? _%file186299%_)
            (let ((_%file186304%_ _%file186299%_))
              (if (string? _%file286300%_)
                  (let ((_%file286314%_ _%file286300%_))
                    (__file-newer? _%file186304%_ _%file286314%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@62.20-62.25"
                     'contract:
                     'string?
                     'value:
                     _%file286300%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@61.20-61.25"
               'contract:
               'string?
               'value:
               _%file186299%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file186247%_ _%file286248%_)
        (let* ((_%file186251%_ _%file186247%_) (_%file286259%_ _%file286248%_))
          (letrec ((_%modification-time86268%_
                    (lambda (_%file86287%_)
                      (let ((_%file86290%_ _%file86287%_))
                        (_%__modification-time86269%_ _%file86290%_))))
                   (_%__modification-time86269%_
                    (lambda (_%file86271%_)
                      (let* ((_%file86274%_ _%file86271%_)
                             (__tmp88068
                              (let ((__tmp88069
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file86274%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp88069))))
                        (declare (not safe))
                        (##time->seconds __tmp88068)))))
            (let ((__tmp88071 (_%__modification-time86269%_ _%file186251%_))
                  (__tmp88070 (_%__modification-time86269%_ _%file286259%_)))
              (declare (not safe))
              (##fl> __tmp88071 __tmp88070))))))
    (define create-directory*__%
      (lambda (_%dir86212%_ _%perms86213%_)
        (if (string? _%dir86212%_)
            (let ((_%dir86217%_ _%dir86212%_))
              (if (fixnum? _%perms86213%_)
                  (let ((_%perms86227%_ _%perms86213%_))
                    (__create-directory*__% _%dir86217%_ _%perms86227%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@73.26-73.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms86213%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@72.26-72.29"
               'contract:
               'string?
               'value:
               _%dir86212%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir86240%_)
        (let ((_%perms86242%_ '493))
          (create-directory*__% _%dir86240%_ _%perms86242%_))))
    (define create-directory*
      (lambda _g88073_
        (let ((_g88072_ (let () (declare (not safe)) (##length _g88073_))))
          (cond ((let () (declare (not safe)) (##fx= _g88072_ 1))
                 (apply create-directory*__0 _g88073_))
                ((let () (declare (not safe)) (##fx= _g88072_ 2))
                 (apply create-directory*__% _g88073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g88073_))))))
    (define __create-directory*__%
      (lambda (_%dir86136%_ _%perms86137%_)
        (let* ((_%dir86140%_ _%dir86136%_) (_%perms86148%_ _%perms86137%_))
          (letrec ((_%create186157%_
                    (lambda (_%path86189%_)
                      (let ((_%path86192%_ _%path86189%_))
                        (_%__create186158%_ _%path86192%_))))
                   (_%__create186158%_
                    (lambda (_%path86170%_)
                      (let ((_%path86173%_ _%path86170%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path86173%_))
                            (if (eq? (file-type _%path86173%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path86173%_))
                            (if _%perms86148%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path86173%_
                                             (cons 'permissions:
                                                   (cons _%perms86148%_
                                                         '())))))
                                (create-directory _%path86173%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir86140%_))
                '#!void
                (let _%lp86160%_ ((_%start86162%_ '0))
                  (let ((_%$e86164%_
                         (let ()
                           (declare (not safe))
                           (__string-index _%dir86140%_ '#\/ _%start86162%_))))
                    (if _%$e86164%_
                        ((lambda (_%x86167%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x86167%_ '0))
                               (_%__create186158%_
                                (substring _%dir86140%_ '0 _%x86167%_))
                               '#!void)
                           (_%lp86160%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x86167%_ '1))))
                         _%$e86164%_)
                        (_%__create186158%_ _%dir86140%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir86204%_)
        (let ((_%perms86206%_ '493))
          (__create-directory*__% _%dir86204%_ _%perms86206%_))))
    (define __create-directory*
      (lambda _g88075_
        (let ((_g88074_ (let () (declare (not safe)) (##length _g88075_))))
          (cond ((let () (declare (not safe)) (##fx= _g88074_ 1))
                 (apply __create-directory*__0 _g88075_))
                ((let () (declare (not safe)) (##fx= _g88074_ 2))
                 (apply __create-directory*__% _g88075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g88075_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore86132%_ '#t))
    (define true? (lambda (_%obj86129%_) (eq? _%obj86129%_ '#t)))
    (define false (lambda _%ignore86126%_ '#f))
    (define void (lambda _%ignore86123%_ '#!void))
    (define void? (lambda (_%obj86120%_) (eq? _%obj86120%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj86117%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj86117%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj86114%_) (eq? _%obj86114%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj86111%_) (eq? _%obj86111%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj86108%_) (eq? _%obj86108%_ '#!optional)))
    (define immediate?
      (lambda (_%obj86103%_)
        (let* ((_%t86106%_ (let () (declare (not safe)) (##type _%obj86103%_)))
               (__tmp88076
                (let () (declare (not safe)) (##fxand _%t86106%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp88076))))
    (define nonnegative-fixnum?
      (lambda (_%obj86100%_)
        (if (fixnum? _%obj86100%_)
            (let () (declare (not safe)) (##fx>= _%obj86100%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj86094%_)
        (let ((_%$e86097%_ (pair? _%obj86094%_)))
          (if _%$e86097%_ _%$e86097%_ (null? _%obj86094%_)))))
    (define values-count
      (lambda (_%obj86091%_)
        (if (let () (declare (not safe)) (##values? _%obj86091%_))
            (let () (declare (not safe)) (##vector-length _%obj86091%_))
            '1)))
    (define values-ref
      (lambda (_%obj86076%_ _%k86077%_)
        (if (fixnum? _%k86077%_)
            (let ((_%k86081%_ _%k86077%_))
              (__values-ref _%obj86076%_ _%k86081%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@198.23-198.24"
               'contract:
               'fixnum?
               'value:
               _%k86077%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj86063%_ _%k86064%_)
        (let ((_%k86067%_ _%k86064%_))
          (if (let () (declare (not safe)) (##values? _%obj86063%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj86063%_ _%k86067%_))
              _%obj86063%_))))
    (define values->list
      (lambda (_%obj86060%_)
        (if (let () (declare (not safe)) (##values? _%obj86060%_))
            (let () (declare (not safe)) (##vector->list _%obj86060%_))
            (list _%obj86060%_))))
    (define foldl1
      (lambda (_%f86044%_ _%iv86045%_ _%lst86046%_)
        (if (procedure? _%f86044%_)
            (let ((_%f86050%_ _%f86044%_))
              (__foldl1 _%f86050%_ _%iv86045%_ _%lst86046%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@221.15-221.16"
               'contract:
               'procedure?
               'value:
               _%f86044%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f85992%_ _%iv85993%_ _%lst85994%_)
        (let ((_%f85997%_ _%f85992%_))
          (let _%lp86006%_ ((_%rest86008%_ _%lst85994%_)
                            (_%r86009%_ _%iv85993%_))
            (let* ((_%rest8601086018%_ _%rest86008%_)
                   (_%else8601286026%_ (lambda () _%r86009%_))
                   (_%K8601486032%_
                    (lambda (_%rest86029%_ _%x86030%_)
                      (_%lp86006%_
                       _%rest86029%_
                       (let ()
                         (declare (not safe))
                         (_%f85997%_ _%x86030%_ _%r86009%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8601086018%_))
                  (let ((_%hd8601586035%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8601086018%_)))
                        (_%tl8601686037%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8601086018%_))))
                    (let* ((_%x86040%_ _%hd8601586035%_)
                           (_%rest86042%_ _%tl8601686037%_))
                      (_%K8601486032%_ _%rest86042%_ _%x86040%_)))
                  (_%else8601286026%_)))))))
    (define foldl2
      (lambda (_%f85975%_ _%iv85976%_ _%lst185977%_ _%lst285978%_)
        (if (procedure? _%f85975%_)
            (let ((_%f85982%_ _%f85975%_))
              (__foldl2 _%f85982%_ _%iv85976%_ _%lst185977%_ _%lst285978%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@228.15-228.16"
               'contract:
               'procedure?
               'value:
               _%f85975%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f85888%_ _%iv85889%_ _%lst185890%_ _%lst285891%_)
        (let ((_%f85894%_ _%f85888%_))
          (let _%lp85903%_ ((_%rest185905%_ _%lst185890%_)
                            (_%rest285906%_ _%lst285891%_)
                            (_%r85907%_ _%iv85889%_))
            (let* ((_%rest18590885916%_ _%rest185905%_)
                   (_%else8591085924%_ (lambda () _%r85907%_))
                   (_%K8591285963%_
                    (lambda (_%rest185927%_ _%x185928%_)
                      (let* ((_%rest28592985937%_ _%rest285906%_)
                             (_%else8593185945%_ (lambda () _%r85907%_))
                             (_%K8593385951%_
                              (lambda (_%rest285948%_ _%x285949%_)
                                (_%lp85903%_
                                 _%rest185927%_
                                 _%rest285948%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f85894%_
                                    _%x185928%_
                                    _%x285949%_
                                    _%r85907%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28592985937%_))
                            (let ((_%hd8593485954%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28592985937%_)))
                                  (_%tl8593585956%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28592985937%_))))
                              (let* ((_%x285959%_ _%hd8593485954%_)
                                     (_%rest285961%_ _%tl8593585956%_))
                                (_%K8593385951%_ _%rest285961%_ _%x285959%_)))
                            (_%else8593185945%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18590885916%_))
                  (let ((_%hd8591385966%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18590885916%_)))
                        (_%tl8591485968%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18590885916%_))))
                    (let* ((_%x185971%_ _%hd8591385966%_)
                           (_%rest185973%_ _%tl8591485968%_))
                      (_%K8591285963%_ _%rest185973%_ _%x185971%_)))
                  (_%else8591085924%_)))))))
    (define foldl
      (lambda _g88078_
        (let ((_g88077_ (let () (declare (not safe)) (##length _g88078_))))
          (cond ((let () (declare (not safe)) (##fx= _g88077_ 3))
                 (apply foldl1 _g88078_))
                ((let () (declare (not safe)) (##fx= _g88077_ 4))
                 (apply foldl2 _g88078_))
                ((let () (declare (not safe)) (##fx>= _g88077_ 4))
                 (apply foldl* _g88078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g88078_))))))
    (define foldl*
      (lambda (_%f85857%_ _%iv85858%_ . _%rest85859%_)
        (if (procedure? _%f85857%_)
            (let ((_%f85863%_ _%f85857%_))
              (declare (not safe))
              (##apply __foldl* _%f85863%_ _%iv85858%_ _%rest85859%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@246.15-246.16"
               'contract:
               'procedure?
               'value:
               _%f85857%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f85835%_ _%iv85836%_ . _%rest85837%_)
        (let ((_%f85840%_ _%f85835%_))
          (let _%recur85849%_ ((_%iv85851%_ _%iv85836%_)
                               (_%rest85852%_ _%rest85837%_))
            (if (__andmap1 pair? _%rest85852%_)
                (_%recur85849%_
                 (let ((__tmp88079
                        (__foldr1
                         (lambda (_%xs85854%_ _%r85855%_)
                           (cons (car _%xs85854%_) _%r85855%_))
                         (list _%iv85851%_)
                         _%rest85852%_)))
                   (declare (not safe))
                   (##apply _%f85840%_ __tmp88079))
                 (map cdr _%rest85852%_))
                _%iv85851%_)))))
    (define foldr1
      (lambda (_%f85819%_ _%iv85820%_ _%lst85821%_)
        (if (procedure? _%f85819%_)
            (let ((_%f85825%_ _%f85819%_))
              (__foldr1 _%f85825%_ _%iv85820%_ _%lst85821%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@256.15-256.16"
               'contract:
               'procedure?
               'value:
               _%f85819%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f85768%_ _%iv85769%_ _%lst85770%_)
        (let ((_%f85773%_ _%f85768%_))
          (let _%recur85782%_ ((_%rest85784%_ _%lst85770%_))
            (let* ((_%rest8578585793%_ _%rest85784%_)
                   (_%else8578785801%_ (lambda () _%iv85769%_))
                   (_%K8578985807%_
                    (lambda (_%rest85804%_ _%x85805%_)
                      (let ((__tmp88080 (_%recur85782%_ _%rest85804%_)))
                        (declare (not safe))
                        (_%f85773%_ _%x85805%_ __tmp88080)))))
              (if (let () (declare (not safe)) (##pair? _%rest8578585793%_))
                  (let ((_%hd8579085810%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8578585793%_)))
                        (_%tl8579185812%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8578585793%_))))
                    (let* ((_%x85815%_ _%hd8579085810%_)
                           (_%rest85817%_ _%tl8579185812%_))
                      (_%K8578985807%_ _%rest85817%_ _%x85815%_)))
                  (_%else8578785801%_)))))))
    (define foldr2
      (lambda (_%f85751%_ _%iv85752%_ _%lst185753%_ _%lst285754%_)
        (if (procedure? _%f85751%_)
            (let ((_%f85758%_ _%f85751%_))
              (__foldr2 _%f85758%_ _%iv85752%_ _%lst185753%_ _%lst285754%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@263.15-263.16"
               'contract:
               'procedure?
               'value:
               _%f85751%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f85665%_ _%iv85666%_ _%lst185667%_ _%lst285668%_)
        (let ((_%f85671%_ _%f85665%_))
          (let _%recur85680%_ ((_%rest185682%_ _%lst185667%_)
                               (_%rest285683%_ _%lst285668%_))
            (let* ((_%rest18568485692%_ _%rest185682%_)
                   (_%else8568685700%_ (lambda () _%iv85666%_))
                   (_%K8568885739%_
                    (lambda (_%rest185703%_ _%x185704%_)
                      (let* ((_%rest28570585713%_ _%rest285683%_)
                             (_%else8570785721%_ (lambda () _%iv85666%_))
                             (_%K8570985727%_
                              (lambda (_%rest285724%_ _%x285725%_)
                                (let ((__tmp88081
                                       (_%recur85680%_
                                        _%rest185703%_
                                        _%rest285724%_)))
                                  (declare (not safe))
                                  (_%f85671%_
                                   _%x185704%_
                                   _%x285725%_
                                   __tmp88081)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28570585713%_))
                            (let ((_%hd8571085730%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28570585713%_)))
                                  (_%tl8571185732%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28570585713%_))))
                              (let* ((_%x285735%_ _%hd8571085730%_)
                                     (_%rest285737%_ _%tl8571185732%_))
                                (_%K8570985727%_ _%rest285737%_ _%x285735%_)))
                            (_%else8570785721%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18568485692%_))
                  (let ((_%hd8568985742%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18568485692%_)))
                        (_%tl8569085744%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18568485692%_))))
                    (let* ((_%x185747%_ _%hd8568985742%_)
                           (_%rest185749%_ _%tl8569085744%_))
                      (_%K8568885739%_ _%rest185749%_ _%x185747%_)))
                  (_%else8568685700%_)))))))
    (define foldr
      (lambda _g88083_
        (let ((_g88082_ (let () (declare (not safe)) (##length _g88083_))))
          (cond ((let () (declare (not safe)) (##fx= _g88082_ 3))
                 (apply foldr1 _g88083_))
                ((let () (declare (not safe)) (##fx= _g88082_ 4))
                 (apply foldr2 _g88083_))
                ((let () (declare (not safe)) (##fx>= _g88082_ 4))
                 (apply foldr* _g88083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g88083_))))))
    (define foldr*
      (lambda (_%f85634%_ _%iv85635%_ . _%rest85636%_)
        (if (procedure? _%f85634%_)
            (let ((_%f85640%_ _%f85634%_))
              (declare (not safe))
              (##apply __foldr* _%f85640%_ _%iv85635%_ _%rest85636%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@281.15-281.16"
               'contract:
               'procedure?
               'value:
               _%f85634%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f85613%_ _%iv85614%_ . _%rest85615%_)
        (let ((_%f85618%_ _%f85613%_))
          (let _%recur85627%_ ((_%rest85629%_ _%rest85615%_))
            (if (__andmap1 pair? _%rest85629%_)
                (let ((__tmp88084
                       (__foldr1
                        (lambda (_%xs85631%_ _%r85632%_)
                          (cons (car _%xs85631%_) _%r85632%_))
                        (list (_%recur85627%_ (map cdr _%rest85629%_)))
                        _%rest85629%_)))
                  (declare (not safe))
                  (##apply _%f85618%_ __tmp88084))
                _%iv85614%_)))))
    (define remove-nulls!
      (lambda (_%l85500%_)
        (let* ((_%l8550185514%_ _%l85500%_)
               (_%E8550585518%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8550185514%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8551085603%_
                 (lambda (_%r85601%_) (remove-nulls! _%r85601%_)))
                (_%K8550785590%_
                 (lambda (_%r85530%_)
                   (let _%loop85532%_ ((_%l85534%_ _%l85500%_)
                                       (_%r85535%_ _%r85530%_))
                     (let* ((_%r8553685549%_ _%r85535%_)
                            (_%E8554085553%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8553685549%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8554585580%_
                              (lambda (_%rr85578%_)
                                (let ((__tmp88086 _%l85534%_)
                                      (__tmp88085 (remove-nulls! _%rr85578%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp88086 __tmp88085))))
                             (_%K8554285567%_
                              (lambda (_%rr85565%_)
                                (_%loop85532%_ _%r85535%_ _%rr85565%_)))
                             (_%K8554185558%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8553685549%_))
                             (let ((_%tl8554785585%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8553685549%_)))
                                   (_%hd8554685583%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8553685549%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8554685583%_))
                                   (let ((_%rr85588%_ _%tl8554785585%_))
                                     (_%K8554585580%_ _%rr85588%_))
                                   (let ((_%rr85573%_ _%tl8554785585%_))
                                     (_%K8554285567%_ _%rr85573%_))))
                             '#!void))))
                   _%l85500%_))
                (_%K8550685523%_ (lambda () _%l85500%_)))
            (if (let () (declare (not safe)) (##pair? _%l8550185514%_))
                (let ((_%tl8551285608%_
                       (let () (declare (not safe)) (##cdr _%l8550185514%_)))
                      (_%hd8551185606%_
                       (let () (declare (not safe)) (##car _%l8550185514%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8551185606%_))
                      (let ((_%r85611%_ _%tl8551285608%_))
                        (remove-nulls! _%r85611%_))
                      (let ((_%r85596%_ _%tl8551285608%_))
                        (_%K8550785590%_ _%r85596%_))))
                (_%K8550685523%_))))))
    (define append1!
      (lambda (_%l85485%_ _%x85486%_)
        (let ((_%l285489%_ (cons _%x85486%_ '())))
          (if (pair? _%l85485%_)
              (let ((_%l85491%_ _%l85485%_))
                (let ((__tmp88087
                       (let () (declare (not safe)) (##last-pair _%l85491%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp88087 _%l285489%_))
                _%l85491%_)
              _%l285489%_))))
    (define append-reverse-until
      (lambda (_%pred85469%_ _%rhead85470%_ _%tail85471%_)
        (if (procedure? _%pred85469%_)
            (let ((_%pred85475%_ _%pred85469%_))
              (__append-reverse-until
               _%pred85475%_
               _%rhead85470%_
               _%tail85471%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@321.29-321.33"
               'contract:
               'procedure?
               'value:
               _%pred85469%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred85411%_ _%rhead85412%_ _%tail85413%_)
        (let ((_%pred85416%_ _%pred85411%_))
          (let _%loop85425%_ ((_%rhead85427%_ _%rhead85412%_)
                              (_%tail85428%_ _%tail85413%_))
            (let* ((_%rhead8543085439%_ _%rhead85427%_)
                   (_%E8543385443%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8543085439%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8543785466%_ (lambda () (values '() _%tail85428%_)))
                    (_%K8543485450%_
                     (lambda (_%r85447%_ _%a85448%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred85416%_ _%a85448%_))
                           (values _%rhead85427%_ _%tail85428%_)
                           (_%loop85425%_
                            _%r85447%_
                            (cons _%a85448%_ _%tail85428%_))))))
                (let ((_%try-match8543285462%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rhead8543085439%_))
                             (let ((_%tl8543685455%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8543085439%_)))
                                   (_%hd8543585453%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8543085439%_))))
                               (let ((_%a85458%_ _%hd8543585453%_)
                                     (_%r85460%_ _%tl8543685455%_))
                                 (_%K8543485450%_ _%r85460%_ _%a85458%_)))
                             (_%E8543385443%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%rhead8543085439%_))
                      (_%K8543785466%_)
                      (_%try-match8543285462%_)))))))))
    (define andmap1
      (lambda (_%f85396%_ _%lst85397%_)
        (if (procedure? _%f85396%_)
            (let ((_%f85401%_ _%f85396%_)) (__andmap1 _%f85401%_ _%lst85397%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@332.16-332.17"
               'contract:
               'procedure?
               'value:
               _%f85396%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f85345%_ _%lst85346%_)
        (let ((_%f85349%_ _%f85345%_))
          (let _%lp85358%_ ((_%rest85360%_ _%lst85346%_))
            (let* ((_%rest8536285370%_ _%rest85360%_)
                   (_%else8536485378%_ (lambda () '#t))
                   (_%K8536685384%_
                    (lambda (_%rest85381%_ _%x85382%_)
                      (if (let () (declare (not safe)) (_%f85349%_ _%x85382%_))
                          (_%lp85358%_ _%rest85381%_)
                          '#f))))
              (if (let () (declare (not safe)) (##pair? _%rest8536285370%_))
                  (let ((_%hd8536785387%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8536285370%_)))
                        (_%tl8536885389%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8536285370%_))))
                    (let* ((_%x85392%_ _%hd8536785387%_)
                           (_%rest85394%_ _%tl8536885389%_))
                      (_%K8536685384%_ _%rest85394%_ _%x85392%_)))
                  (_%else8536485378%_)))))))
    (define andmap2
      (lambda (_%f85329%_ _%lst185330%_ _%lst285331%_)
        (if (procedure? _%f85329%_)
            (let ((_%f85335%_ _%f85329%_))
              (__andmap2 _%f85335%_ _%lst185330%_ _%lst285331%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@341.16-341.17"
               'contract:
               'procedure?
               'value:
               _%f85329%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f85243%_ _%lst185244%_ _%lst285245%_)
        (let ((_%f85248%_ _%f85243%_))
          (let _%lp85257%_ ((_%rest185259%_ _%lst185244%_)
                            (_%rest285260%_ _%lst285245%_))
            (let* ((_%rest18526285270%_ _%rest185259%_)
                   (_%else8526485278%_ (lambda () '#t))
                   (_%K8526685317%_
                    (lambda (_%rest185281%_ _%x185282%_)
                      (let* ((_%rest28528385291%_ _%rest285260%_)
                             (_%else8528585299%_ (lambda () '#t))
                             (_%K8528785305%_
                              (lambda (_%rest285302%_ _%x285303%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f85248%_ _%x185282%_ _%x285303%_))
                                    (_%lp85257%_ _%rest185281%_ _%rest285302%_)
                                    '#f))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28528385291%_))
                            (let ((_%hd8528885308%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28528385291%_)))
                                  (_%tl8528985310%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28528385291%_))))
                              (let* ((_%x285313%_ _%hd8528885308%_)
                                     (_%rest285315%_ _%tl8528985310%_))
                                (_%K8528785305%_ _%rest285315%_ _%x285313%_)))
                            (_%else8528585299%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18526285270%_))
                  (let ((_%hd8526785320%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18526285270%_)))
                        (_%tl8526885322%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18526285270%_))))
                    (let* ((_%x185325%_ _%hd8526785320%_)
                           (_%rest185327%_ _%tl8526885322%_))
                      (_%K8526685317%_ _%rest185327%_ _%x185325%_)))
                  (_%else8526485278%_)))))))
    (define andmap
      (lambda _g88089_
        (let ((_g88088_ (let () (declare (not safe)) (##length _g88089_))))
          (cond ((let () (declare (not safe)) (##fx= _g88088_ 2))
                 (apply andmap1 _g88089_))
                ((let () (declare (not safe)) (##fx= _g88088_ 3))
                 (apply andmap2 _g88089_))
                ((let () (declare (not safe)) (##fx>= _g88088_ 3))
                 (apply andmap* _g88089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g88089_))))))
    (define andmap*
      (lambda (_%f85216%_ . _%rest85217%_)
        (if (procedure? _%f85216%_)
            (let ((_%f85221%_ _%f85216%_))
              (declare (not safe))
              (##apply __andmap* _%f85221%_ _%rest85217%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@361.16-361.17"
               'contract:
               'procedure?
               'value:
               _%f85216%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f85198%_ . _%rest85199%_)
        (let ((_%f85202%_ _%f85198%_))
          (let _%recur85211%_ ((_%rest85213%_ _%rest85199%_))
            (if (__andmap1 pair? _%rest85213%_)
                (if (let ((__tmp88090 (map car _%rest85213%_)))
                      (declare (not safe))
                      (##apply _%f85202%_ __tmp88090))
                    (_%recur85211%_ (map cdr _%rest85213%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f85183%_ _%lst85184%_)
        (if (procedure? _%f85183%_)
            (let ((_%f85188%_ _%f85183%_)) (__ormap1 _%f85188%_ _%lst85184%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@370.15-370.16"
               'contract:
               'procedure?
               'value:
               _%f85183%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f85130%_ _%lst85131%_)
        (let ((_%f85134%_ _%f85130%_))
          (let _%lp85143%_ ((_%rest85145%_ _%lst85131%_))
            (let* ((_%rest8514685154%_ _%rest85145%_)
                   (_%else8514885162%_ (lambda () '#f))
                   (_%K8515085171%_
                    (lambda (_%rest85165%_ _%x85166%_)
                      (let ((_%$e85168%_
                             (let ()
                               (declare (not safe))
                               (_%f85134%_ _%x85166%_))))
                        (if _%$e85168%_
                            _%$e85168%_
                            (_%lp85143%_ _%rest85165%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8514685154%_))
                  (let ((_%hd8515185174%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8514685154%_)))
                        (_%tl8515285176%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8514685154%_))))
                    (let* ((_%x85179%_ _%hd8515185174%_)
                           (_%rest85181%_ _%tl8515285176%_))
                      (_%K8515085171%_ _%rest85181%_ _%x85179%_)))
                  (_%else8514885162%_)))))))
    (define ormap2
      (lambda (_%f85114%_ _%lst185115%_ _%lst285116%_)
        (if (procedure? _%f85114%_)
            (let ((_%f85120%_ _%f85114%_))
              (__ormap2 _%f85120%_ _%lst185115%_ _%lst285116%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.15-377.16"
               'contract:
               'procedure?
               'value:
               _%f85114%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f85026%_ _%lst185027%_ _%lst285028%_)
        (let ((_%f85031%_ _%f85026%_))
          (let _%lp85040%_ ((_%rest185042%_ _%lst185027%_)
                            (_%rest285043%_ _%lst285028%_))
            (let* ((_%rest18504485052%_ _%rest185042%_)
                   (_%else8504685060%_ (lambda () '#f))
                   (_%K8504885102%_
                    (lambda (_%rest185063%_ _%x185064%_)
                      (let* ((_%rest28506585073%_ _%rest285043%_)
                             (_%else8506785081%_ (lambda () '#f))
                             (_%K8506985090%_
                              (lambda (_%rest285084%_ _%x285085%_)
                                (let ((_%$e85087%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f85031%_
                                          _%x185064%_
                                          _%x285085%_))))
                                  (if _%$e85087%_
                                      _%$e85087%_
                                      (_%lp85040%_
                                       _%rest185063%_
                                       _%rest285084%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28506585073%_))
                            (let ((_%hd8507085093%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28506585073%_)))
                                  (_%tl8507185095%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28506585073%_))))
                              (let* ((_%x285098%_ _%hd8507085093%_)
                                     (_%rest285100%_ _%tl8507185095%_))
                                (_%K8506985090%_ _%rest285100%_ _%x285098%_)))
                            (_%else8506785081%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18504485052%_))
                  (let ((_%hd8504985105%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18504485052%_)))
                        (_%tl8505085107%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18504485052%_))))
                    (let* ((_%x185110%_ _%hd8504985105%_)
                           (_%rest185112%_ _%tl8505085107%_))
                      (_%K8504885102%_ _%rest185112%_ _%x185110%_)))
                  (_%else8504685060%_)))))))
    (define ormap
      (lambda _g88092_
        (let ((_g88091_ (let () (declare (not safe)) (##length _g88092_))))
          (cond ((let () (declare (not safe)) (##fx= _g88091_ 2))
                 (apply ormap1 _g88092_))
                ((let () (declare (not safe)) (##fx= _g88091_ 3))
                 (apply ormap2 _g88092_))
                ((let () (declare (not safe)) (##fx>= _g88091_ 3))
                 (apply ormap* _g88092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g88092_))))))
    (define ormap*
      (lambda (_%f84999%_ . _%rest85000%_)
        (if (procedure? _%f84999%_)
            (let ((_%f85004%_ _%f84999%_))
              (declare (not safe))
              (##apply __ormap* _%f85004%_ _%rest85000%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@395.15-395.16"
               'contract:
               'procedure?
               'value:
               _%f84999%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f84979%_ . _%rest84980%_)
        (let ((_%f84983%_ _%f84979%_))
          (let _%recur84992%_ ((_%rest84994%_ _%rest84980%_))
            (if (__andmap1 pair? _%rest84994%_)
                (let ((_%$e84996%_
                       (let ((__tmp88093 (map car _%rest84994%_)))
                         (declare (not safe))
                         (##apply _%f84983%_ __tmp88093))))
                  (if _%$e84996%_
                      _%$e84996%_
                      (_%recur84992%_ (map cdr _%rest84994%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f84964%_ _%lst84965%_)
        (if (procedure? _%f84964%_)
            (let ((_%f84969%_ _%f84964%_))
              (__filter-map1 _%f84969%_ _%lst84965%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@402.20-402.21"
               'contract:
               'procedure?
               'value:
               _%f84964%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f84907%_ _%lst84908%_)
        (let ((_%f84911%_ _%f84907%_))
          (let _%recur84920%_ ((_%rest84922%_ _%lst84908%_))
            (let* ((_%rest8492484932%_ _%rest84922%_)
                   (_%else8492684940%_ (lambda () '()))
                   (_%K8492884952%_
                    (lambda (_%rest84943%_ _%x84944%_)
                      (let ((_%$e84946%_
                             (let ()
                               (declare (not safe))
                               (_%f84911%_ _%x84944%_))))
                        (if _%$e84946%_
                            ((lambda (_%r84949%_)
                               (cons _%r84949%_
                                     (_%recur84920%_ _%rest84943%_)))
                             _%$e84946%_)
                            (_%recur84920%_ _%rest84943%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8492484932%_))
                  (let ((_%hd8492984955%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8492484932%_)))
                        (_%tl8493084957%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8492484932%_))))
                    (let* ((_%x84960%_ _%hd8492984955%_)
                           (_%rest84962%_ _%tl8493084957%_))
                      (_%K8492884952%_ _%rest84962%_ _%x84960%_)))
                  (_%else8492684940%_)))))))
    (define filter-map2
      (lambda (_%f84891%_ _%lst184892%_ _%lst284893%_)
        (if (procedure? _%f84891%_)
            (let ((_%f84897%_ _%f84891%_))
              (__filter-map2 _%f84897%_ _%lst184892%_ _%lst284893%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.20-413.21"
               'contract:
               'procedure?
               'value:
               _%f84891%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f84799%_ _%lst184800%_ _%lst284801%_)
        (let ((_%f84804%_ _%f84799%_))
          (let _%recur84813%_ ((_%rest184815%_ _%lst184800%_)
                               (_%rest284816%_ _%lst284801%_))
            (let* ((_%rest18481884826%_ _%rest184815%_)
                   (_%else8482084834%_ (lambda () '()))
                   (_%K8482284879%_
                    (lambda (_%rest184837%_ _%x184838%_)
                      (let* ((_%rest28483984847%_ _%rest284816%_)
                             (_%else8484184855%_ (lambda () '()))
                             (_%K8484384867%_
                              (lambda (_%rest284858%_ _%x284859%_)
                                (let ((_%$e84861%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f84804%_
                                          _%x184838%_
                                          _%x284859%_))))
                                  (if _%$e84861%_
                                      ((lambda (_%r84864%_)
                                         (cons _%r84864%_
                                               (_%recur84813%_
                                                _%rest184837%_
                                                _%rest284858%_)))
                                       _%$e84861%_)
                                      (_%recur84813%_
                                       _%rest184837%_
                                       _%rest284858%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28483984847%_))
                            (let ((_%hd8484484870%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28483984847%_)))
                                  (_%tl8484584872%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28483984847%_))))
                              (let* ((_%x284875%_ _%hd8484484870%_)
                                     (_%rest284877%_ _%tl8484584872%_))
                                (_%K8484384867%_ _%rest284877%_ _%x284875%_)))
                            (_%else8484184855%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18481884826%_))
                  (let ((_%hd8482384882%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18481884826%_)))
                        (_%tl8482484884%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18481884826%_))))
                    (let* ((_%x184887%_ _%hd8482384882%_)
                           (_%rest184889%_ _%tl8482484884%_))
                      (_%K8482284879%_ _%rest184889%_ _%x184887%_)))
                  (_%else8482084834%_)))))))
    (define filter-map
      (lambda _g88095_
        (let ((_g88094_ (let () (declare (not safe)) (##length _g88095_))))
          (cond ((let () (declare (not safe)) (##fx= _g88094_ 2))
                 (apply filter-map1 _g88095_))
                ((let () (declare (not safe)) (##fx= _g88094_ 3))
                 (apply filter-map2 _g88095_))
                ((let () (declare (not safe)) (##fx>= _g88094_ 3))
                 (apply filter-map* _g88095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g88095_))))))
    (define filter-map*
      (lambda (_%f84772%_ . _%rest84773%_)
        (if (procedure? _%f84772%_)
            (let ((_%f84777%_ _%f84772%_))
              (declare (not safe))
              (##apply __filter-map* _%f84777%_ _%rest84773%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@435.20-435.21"
               'contract:
               'procedure?
               'value:
               _%f84772%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f84748%_ . _%rest84749%_)
        (let ((_%f84752%_ _%f84748%_))
          (let _%recur84761%_ ((_%rest84763%_ _%rest84749%_))
            (if (__andmap1 pair? _%rest84763%_)
                (let ((_%$e84766%_
                       (let ((__tmp88096 (map car _%rest84763%_)))
                         (declare (not safe))
                         (##apply _%f84752%_ __tmp88096))))
                  (if _%$e84766%_
                      ((lambda (_%r84769%_)
                         (cons _%r84769%_
                               (_%recur84761%_ (map cdr _%rest84763%_))))
                       _%$e84766%_)
                      (_%recur84761%_ (map cdr _%rest84763%_))))
                '())))))
    (define agetq__%
      (lambda (_%key84724%_ _%lst84726%_ _%default84728%_)
        (let ((_%$e84731%_
               (if (pair? _%lst84726%_) (assq _%key84724%_ _%lst84726%_) '#f)))
          (if _%$e84731%_
              (cdr _%$e84731%_)
              (if (procedure? _%default84728%_)
                  (_%default84728%_ _%key84724%_)
                  _%default84728%_)))))
    (define agetq__0
      (lambda (_%key84739%_ _%lst84740%_)
        (let ((_%default84742%_ '#f))
          (agetq__% _%key84739%_ _%lst84740%_ _%default84742%_))))
    (define agetq
      (lambda _g88098_
        (let ((_g88097_ (let () (declare (not safe)) (##length _g88098_))))
          (cond ((let () (declare (not safe)) (##fx= _g88097_ 2))
                 (apply agetq__0 _g88098_))
                ((let () (declare (not safe)) (##fx= _g88097_ 3))
                 (apply agetq__% _g88098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g88098_))))))
    (define agetv__%
      (lambda (_%key84699%_ _%lst84701%_ _%default84703%_)
        (let ((_%$e84706%_
               (if (pair? _%lst84701%_) (assv _%key84699%_ _%lst84701%_) '#f)))
          (if _%$e84706%_
              (cdr _%$e84706%_)
              (if (procedure? _%default84703%_)
                  (_%default84703%_ _%key84699%_)
                  _%default84703%_)))))
    (define agetv__0
      (lambda (_%key84714%_ _%lst84715%_)
        (let ((_%default84717%_ '#f))
          (agetv__% _%key84714%_ _%lst84715%_ _%default84717%_))))
    (define agetv
      (lambda _g88100_
        (let ((_g88099_ (let () (declare (not safe)) (##length _g88100_))))
          (cond ((let () (declare (not safe)) (##fx= _g88099_ 2))
                 (apply agetv__0 _g88100_))
                ((let () (declare (not safe)) (##fx= _g88099_ 3))
                 (apply agetv__% _g88100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g88100_))))))
    (define aget__%
      (lambda (_%key84674%_ _%lst84676%_ _%default84678%_)
        (let ((_%$e84681%_
               (if (pair? _%lst84676%_)
                   (assoc _%key84674%_ _%lst84676%_)
                   '#f)))
          (if _%$e84681%_
              (cdr _%$e84681%_)
              (if (procedure? _%default84678%_)
                  (_%default84678%_ _%key84674%_)
                  _%default84678%_)))))
    (define aget__0
      (lambda (_%key84689%_ _%lst84690%_)
        (let ((_%default84692%_ '#f))
          (aget__% _%key84689%_ _%lst84690%_ _%default84692%_))))
    (define aget
      (lambda _g88102_
        (let ((_g88101_ (let () (declare (not safe)) (##length _g88102_))))
          (cond ((let () (declare (not safe)) (##fx= _g88101_ 2))
                 (apply aget__0 _g88102_))
                ((let () (declare (not safe)) (##fx= _g88101_ 3))
                 (apply aget__% _g88102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g88102_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key84603%_ _%lst84605%_ _%default84607%_)
        (let _%lp84610%_ ((_%rest84613%_ _%lst84605%_))
          (let* ((_%rest8461584625%_ _%rest84613%_)
                 (_%else8461784633%_
                  (lambda ()
                    (if (procedure? _%default84607%_)
                        (_%default84607%_ _%key84603%_)
                        _%default84607%_)))
                 (_%K8461984642%_
                  (lambda (_%rest84636%_ _%v84637%_ _%k84639%_)
                    (if (eq? _%k84639%_ _%key84603%_)
                        _%v84637%_
                        (_%lp84610%_ _%rest84636%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8461584625%_))
                (let ((_%hd8462084645%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8461584625%_)))
                      (_%tl8462184647%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8461584625%_))))
                  (let ((_%k84650%_ _%hd8462084645%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8462184647%_))
                        (let ((_%hd8462284652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8462184647%_)))
                              (_%tl8462384654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8462184647%_))))
                          (let* ((_%v84657%_ _%hd8462284652%_)
                                 (_%rest84659%_ _%tl8462384654%_))
                            (_%K8461984642%_
                             _%rest84659%_
                             _%v84657%_
                             _%k84650%_)))
                        (_%else8461784633%_))))
                (_%else8461784633%_))))))
    (define pgetq__0
      (lambda (_%key84664%_ _%lst84665%_)
        (let ((_%default84667%_ '#f))
          (pgetq__% _%key84664%_ _%lst84665%_ _%default84667%_))))
    (define pgetq
      (lambda _g88104_
        (let ((_g88103_ (let () (declare (not safe)) (##length _g88104_))))
          (cond ((let () (declare (not safe)) (##fx= _g88103_ 2))
                 (apply pgetq__0 _g88104_))
                ((let () (declare (not safe)) (##fx= _g88103_ 3))
                 (apply pgetq__% _g88104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g88104_))))))
    (define pgetv__%
      (lambda (_%key84532%_ _%lst84534%_ _%default84536%_)
        (let _%lp84539%_ ((_%rest84542%_ _%lst84534%_))
          (let* ((_%rest8454484554%_ _%rest84542%_)
                 (_%else8454684562%_
                  (lambda ()
                    (if (procedure? _%default84536%_)
                        (_%default84536%_ _%key84532%_)
                        _%default84536%_)))
                 (_%K8454884571%_
                  (lambda (_%rest84565%_ _%v84566%_ _%k84568%_)
                    (if (eqv? _%k84568%_ _%key84532%_)
                        _%v84566%_
                        (_%lp84539%_ _%rest84565%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8454484554%_))
                (let ((_%hd8454984574%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8454484554%_)))
                      (_%tl8455084576%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8454484554%_))))
                  (let ((_%k84579%_ _%hd8454984574%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8455084576%_))
                        (let ((_%hd8455184581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8455084576%_)))
                              (_%tl8455284583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8455084576%_))))
                          (let* ((_%v84586%_ _%hd8455184581%_)
                                 (_%rest84588%_ _%tl8455284583%_))
                            (_%K8454884571%_
                             _%rest84588%_
                             _%v84586%_
                             _%k84579%_)))
                        (_%else8454684562%_))))
                (_%else8454684562%_))))))
    (define pgetv__0
      (lambda (_%key84593%_ _%lst84594%_)
        (let ((_%default84596%_ '#f))
          (pgetv__% _%key84593%_ _%lst84594%_ _%default84596%_))))
    (define pgetv
      (lambda _g88106_
        (let ((_g88105_ (let () (declare (not safe)) (##length _g88106_))))
          (cond ((let () (declare (not safe)) (##fx= _g88105_ 2))
                 (apply pgetv__0 _g88106_))
                ((let () (declare (not safe)) (##fx= _g88105_ 3))
                 (apply pgetv__% _g88106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g88106_))))))
    (define pget__%
      (lambda (_%key84461%_ _%lst84463%_ _%default84465%_)
        (let _%lp84468%_ ((_%rest84471%_ _%lst84463%_))
          (let* ((_%rest8447384483%_ _%rest84471%_)
                 (_%else8447584491%_
                  (lambda ()
                    (if (procedure? _%default84465%_)
                        (_%default84465%_ _%key84461%_)
                        _%default84465%_)))
                 (_%K8447784500%_
                  (lambda (_%rest84494%_ _%v84495%_ _%k84497%_)
                    (if (equal? _%k84497%_ _%key84461%_)
                        _%v84495%_
                        (_%lp84468%_ _%rest84494%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8447384483%_))
                (let ((_%hd8447884503%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8447384483%_)))
                      (_%tl8447984505%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8447384483%_))))
                  (let ((_%k84508%_ _%hd8447884503%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8447984505%_))
                        (let ((_%hd8448084510%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8447984505%_)))
                              (_%tl8448184512%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8447984505%_))))
                          (let* ((_%v84515%_ _%hd8448084510%_)
                                 (_%rest84517%_ _%tl8448184512%_))
                            (_%K8447784500%_
                             _%rest84517%_
                             _%v84515%_
                             _%k84508%_)))
                        (_%else8447584491%_))))
                (_%else8447584491%_))))))
    (define pget__0
      (lambda (_%key84522%_ _%lst84523%_)
        (let ((_%default84525%_ '#f))
          (pget__% _%key84522%_ _%lst84523%_ _%default84525%_))))
    (define pget
      (lambda _g88108_
        (let ((_g88107_ (let () (declare (not safe)) (##length _g88108_))))
          (cond ((let () (declare (not safe)) (##fx= _g88107_ 2))
                 (apply pget__0 _g88108_))
                ((let () (declare (not safe)) (##fx= _g88107_ 3))
                 (apply pget__% _g88108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g88108_))))))
    (define find
      (lambda (_%pred84445%_ _%lst84446%_)
        (if (procedure? _%pred84445%_)
            (let ((_%pred84450%_ _%pred84445%_))
              (__find _%pred84450%_ _%lst84446%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.13-481.17"
               'contract:
               'procedure?
               'value:
               _%pred84445%_)
              '#!void))))
    (define __find
      (lambda (_%pred84428%_ _%lst84429%_)
        (let* ((_%pred84432%_ _%pred84428%_)
               (_%$e84441%_ (__memf _%pred84432%_ _%lst84429%_)))
          (if _%$e84441%_
              (let () (declare (not safe)) (##car _%$e84441%_))
              '#f))))
    (define memf
      (lambda (_%proc84413%_ _%lst84414%_)
        (if (procedure? _%proc84413%_)
            (let ((_%proc84418%_ _%proc84413%_))
              (__memf _%proc84418%_ _%lst84414%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@486.13-486.17"
               'contract:
               'procedure?
               'value:
               _%proc84413%_)
              '#!void))))
    (define __memf
      (lambda (_%proc84363%_ _%lst84364%_)
        (let ((_%proc84367%_ _%proc84363%_))
          (let _%lp84376%_ ((_%rest84378%_ _%lst84364%_))
            (let* ((_%rest8437984387%_ _%rest84378%_)
                   (_%else8438184395%_ (lambda () '#f))
                   (_%K8438384401%_
                    (lambda (_%tl84398%_ _%hd84399%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc84367%_ _%hd84399%_))
                          _%rest84378%_
                          (_%lp84376%_ _%tl84398%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest8437984387%_))
                  (let ((_%hd8438484404%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8437984387%_)))
                        (_%tl8438584406%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8437984387%_))))
                    (let* ((_%hd84409%_ _%hd8438484404%_)
                           (_%tl84411%_ _%tl8438584406%_))
                      (_%K8438384401%_ _%tl84411%_ _%hd84409%_)))
                  (_%else8438184395%_)))))))
    (define remove1
      (lambda (_%el84316%_ _%lst84318%_)
        (let _%lp84321%_ ((_%rest84324%_ _%lst84318%_) (_%r84326%_ '()))
          (let* ((_%rest8432884336%_ _%rest84324%_)
                 (_%else8433084344%_ (lambda () _%lst84318%_))
                 (_%K8433284351%_
                  (lambda (_%rest84347%_ _%hd84348%_)
                    (if (equal? _%el84316%_ _%hd84348%_)
                        (__foldl1 cons _%rest84347%_ _%r84326%_)
                        (_%lp84321%_
                         _%rest84347%_
                         (cons _%hd84348%_ _%r84326%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8432884336%_))
                (let ((_%hd8433384354%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8432884336%_)))
                      (_%tl8433484356%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8432884336%_))))
                  (let* ((_%hd84359%_ _%hd8433384354%_)
                         (_%rest84361%_ _%tl8433484356%_))
                    (_%K8433284351%_ _%rest84361%_ _%hd84359%_)))
                (_%else8433084344%_))))))
    (define remv1
      (lambda (_%el84269%_ _%lst84271%_)
        (let _%lp84274%_ ((_%rest84277%_ _%lst84271%_) (_%r84279%_ '()))
          (let* ((_%rest8428184289%_ _%rest84277%_)
                 (_%else8428384297%_ (lambda () _%lst84271%_))
                 (_%K8428584304%_
                  (lambda (_%rest84300%_ _%hd84301%_)
                    (if (eqv? _%el84269%_ _%hd84301%_)
                        (__foldl1 cons _%rest84300%_ _%r84279%_)
                        (_%lp84274%_
                         _%rest84300%_
                         (cons _%hd84301%_ _%r84279%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8428184289%_))
                (let ((_%hd8428684307%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8428184289%_)))
                      (_%tl8428784309%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8428184289%_))))
                  (let* ((_%hd84312%_ _%hd8428684307%_)
                         (_%rest84314%_ _%tl8428784309%_))
                    (_%K8428584304%_ _%rest84314%_ _%hd84312%_)))
                (_%else8428384297%_))))))
    (define remq1
      (lambda (_%el84222%_ _%lst84224%_)
        (let _%lp84227%_ ((_%rest84230%_ _%lst84224%_) (_%r84232%_ '()))
          (let* ((_%rest8423484242%_ _%rest84230%_)
                 (_%else8423684250%_ (lambda () _%lst84224%_))
                 (_%K8423884257%_
                  (lambda (_%rest84253%_ _%hd84254%_)
                    (if (eq? _%el84222%_ _%hd84254%_)
                        (__foldl1 cons _%rest84253%_ _%r84232%_)
                        (_%lp84227%_
                         _%rest84253%_
                         (cons _%hd84254%_ _%r84232%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8423484242%_))
                (let ((_%hd8423984260%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8423484242%_)))
                      (_%tl8424084262%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8423484242%_))))
                  (let* ((_%hd84265%_ _%hd8423984260%_)
                         (_%rest84267%_ _%tl8424084262%_))
                    (_%K8423884257%_ _%rest84267%_ _%hd84265%_)))
                (_%else8423684250%_))))))
    (define remf
      (lambda (_%proc84207%_ _%lst84208%_)
        (if (procedure? _%proc84207%_)
            (let ((_%proc84212%_ _%proc84207%_))
              (__remf _%proc84212%_ _%lst84208%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@508.13-508.17"
               'contract:
               'procedure?
               'value:
               _%proc84207%_)
              '#!void))))
    (define __remf
      (lambda (_%proc84156%_ _%lst84157%_)
        (let ((_%proc84160%_ _%proc84156%_))
          (let _%lp84169%_ ((_%rest84171%_ _%lst84157%_) (_%r84172%_ '()))
            (let* ((_%rest8417384181%_ _%rest84171%_)
                   (_%else8417584189%_ (lambda () _%lst84157%_))
                   (_%K8417784195%_
                    (lambda (_%rest84192%_ _%hd84193%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc84160%_ _%hd84193%_))
                          (__foldl1 cons _%rest84192%_ _%r84172%_)
                          (_%lp84169%_
                           _%rest84192%_
                           (cons _%hd84193%_ _%r84172%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8417384181%_))
                  (let ((_%hd8417884198%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8417384181%_)))
                        (_%tl8417984200%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8417384181%_))))
                    (let* ((_%hd84203%_ _%hd8417884198%_)
                           (_%rest84205%_ _%tl8417984200%_))
                      (_%K8417784195%_ _%rest84205%_ _%hd84203%_)))
                  (_%else8417584189%_)))))))
    (define 1+
      (lambda (_%x84142%_)
        (if (number? _%x84142%_)
            (let ((_%x84146%_ _%x84142%_)) (__1+ _%x84146%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.11-517.12"
               'contract:
               'number?
               'value:
               _%x84142%_)
              '#!void))))
    (define __1+
      (lambda (_%x84130%_) (let ((_%x84133%_ _%x84130%_)) (+ _%x84133%_ '1))))
    (define 1-
      (lambda (_%x84116%_)
        (if (number? _%x84116%_)
            (let ((_%x84120%_ _%x84116%_)) (__1- _%x84120%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@525.11-525.12"
               'contract:
               'number?
               'value:
               _%x84116%_)
              '#!void))))
    (define __1-
      (lambda (_%x84104%_) (let ((_%x84107%_ _%x84104%_)) (- _%x84107%_ '1))))
    (define fx1+
      (lambda (_%x84090%_)
        (if (fixnum? _%x84090%_)
            (let ((_%x84094%_ _%x84090%_)) (__fx1+ _%x84094%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@533.13-533.14"
               'contract:
               'fixnum?
               'value:
               _%x84090%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x84078%_)
        (let ((_%x84081%_ _%x84078%_))
          (declare (not safe))
          (##fx+ _%x84081%_ '1))))
    (define fx1-
      (lambda (_%x84064%_)
        (if (fixnum? _%x84064%_)
            (let ((_%x84068%_ _%x84064%_)) (__fx1- _%x84068%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@541.13-541.14"
               'contract:
               'fixnum?
               'value:
               _%x84064%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x84052%_)
        (let ((_%x84055%_ _%x84052%_))
          (declare (not safe))
          (##fx- _%x84055%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x84049%_)
        (if (fixnum? _%x84049%_)
            (let () (declare (not safe)) (##fx>= _%x84049%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x84046%_)
        (if (fixnum? _%x84046%_)
            (let () (declare (not safe)) (##fx> _%x84046%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x84043%_)
        (let () (declare (not safe)) (##fx= _%x84043%_ '0))))
    (define fx<0?
      (lambda (_%x84040%_)
        (if (fixnum? _%x84040%_)
            (let () (declare (not safe)) (##fx< _%x84040%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x84037%_)
        (if (fixnum? _%x84037%_)
            (let () (declare (not safe)) (##fx<= _%x84037%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x84034%_)
        (if (symbol? _%x84034%_) (not (uninterned-symbol? _%x84034%_)) '#f)))
    (define display-as-string
      (lambda (_%x84019%_ _%port84020%_)
        (if (output-port? _%port84020%_)
            (let ((_%port84024%_ _%port84020%_))
              (__display-as-string _%x84019%_ _%port84024%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.28-569.32"
               'contract:
               'output-port?
               'value:
               _%port84020%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x83976%_ _%port83977%_)
        (let ((_%port83980%_ _%port83977%_))
          (if (or (string? _%x83976%_)
                  (symbol? _%x83976%_)
                  (keyword? _%x83976%_)
                  (number? _%x83976%_)
                  (char? _%x83976%_))
              (display _%x83976%_ _%port83980%_)
              (if (pair? _%x83976%_)
                  (let ()
                    (__display-as-string (car _%x83976%_) _%port83980%_)
                    (__display-as-string (cdr _%x83976%_) _%port83980%_))
                  (if (vector? _%x83976%_)
                      (vector-for-each
                       (lambda (_%g8400384005%_)
                         (__display-as-string _%g8400384005%_ _%port83980%_))
                       _%x83976%_)
                      (if (or (null? _%x83976%_)
                              (eq? _%x83976%_ '#!void)
                              (eof-object? _%x83976%_)
                              (boolean? _%x83976%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x83976%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x83959%_)
        (if (string? _%x83959%_)
            _%x83959%_
            (if (symbol? _%x83959%_)
                (symbol->string _%x83959%_)
                (if (keyword? _%x83959%_)
                    (keyword->string _%x83959%_)
                    (if (number? _%x83959%_)
                        (number->string _%x83959%_)
                        (call-with-output-string
                         '()
                         (lambda (_%g8396583967%_)
                           (__display-as-string
                            _%x83959%_
                            _%g8396583967%_)))))))))
    (define as-string__1
      (lambda _%args83970%_
        (call-with-output-string
         '()
         (lambda (_%g8397183973%_)
           (__display-as-string _%args83970%_ _%g8397183973%_)))))
    (define as-string
      (lambda _g88110_
        (let ((_g88109_ (let () (declare (not safe)) (##length _g88110_))))
          (cond ((let () (declare (not safe)) (##fx= _g88109_ 1))
                 (apply as-string__0 _g88110_))
                (#t
                 (apply (lambda _%args83970%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args83970%_)))
                        _g88110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g88110_))))))
    (define make-symbol__0
      (lambda (_%x83955%_)
        (if (interned-symbol? _%x83955%_)
            _%x83955%_
            (string->symbol (as-string__0 _%x83955%_)))))
    (define make-symbol__1
      (lambda _%args83957%_
        (string->symbol
         (let () (declare (not safe)) (##apply as-string _%args83957%_)))))
    (define make-symbol
      (lambda _g88112_
        (let ((_g88111_ (let () (declare (not safe)) (##length _g88112_))))
          (cond ((let () (declare (not safe)) (##fx= _g88111_ 1))
                 (apply make-symbol__0 _g88112_))
                (#t
                 (apply (lambda _%args83957%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args83957%_)))
                        _g88112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g88112_))))))
    (define make-keyword__0
      (lambda (_%x83951%_)
        (if (interned-keyword? _%x83951%_)
            _%x83951%_
            (string->keyword (as-string__0 _%x83951%_)))))
    (define make-keyword__1
      (lambda _%args83953%_
        (string->keyword
         (let () (declare (not safe)) (##apply as-string _%args83953%_)))))
    (define make-keyword
      (lambda _g88114_
        (let ((_g88113_ (let () (declare (not safe)) (##length _g88114_))))
          (cond ((let () (declare (not safe)) (##fx= _g88113_ 1))
                 (apply make-keyword__0 _g88114_))
                (#t
                 (apply (lambda _%args83953%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args83953%_)))
                        _g88114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g88114_))))))
    (define interned-keyword?
      (lambda (_%x83948%_)
        (if (keyword? _%x83948%_) (not (uninterned-keyword? _%x83948%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym83934%_)
        (if (symbol? _%sym83934%_)
            (let ((_%sym83938%_ _%sym83934%_))
              (__symbol->keyword _%sym83938%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@612.24-612.27"
               'contract:
               'symbol?
               'value:
               _%sym83934%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym83922%_)
        (let ((_%sym83925%_ _%sym83922%_))
          (if (uninterned-symbol? _%sym83925%_)
              (let ((__tmp88115
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym83925%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp88115))
              (let ((__tmp88116
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym83925%_))))
                (declare (not safe))
                (##string->keyword __tmp88116))))))
    (define keyword->symbol
      (lambda (_%sym83908%_)
        (if (keyword? _%sym83908%_)
            (let ((_%sym83912%_ _%sym83908%_))
              (__keyword->symbol _%sym83912%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@618.24-618.27"
               'contract:
               'keyword?
               'value:
               _%sym83908%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym83896%_)
        (let ((_%sym83899%_ _%sym83896%_))
          (if (uninterned-keyword? _%sym83899%_)
              (let ((__tmp88117
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym83899%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp88117))
              (let ((__tmp88118
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym83899%_))))
                (declare (not safe))
                (##string->symbol __tmp88118))))))
    (define bytes->string__%
      (lambda (_%bstr83861%_ _%enc83862%_)
        (if (u8vector? _%bstr83861%_)
            (let ((_%bstr83866%_ _%bstr83861%_))
              (if (symbol? _%enc83862%_)
                  (let ((_%enc83876%_ _%enc83862%_))
                    (__bytes->string__% _%bstr83866%_ _%enc83876%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@625.25-625.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc83862%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@624.22-624.26"
               'contract:
               'u8vector?
               'value:
               _%bstr83861%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr83889%_)
        (let ((_%enc83891%_ 'UTF-8))
          (bytes->string__% _%bstr83889%_ _%enc83891%_))))
    (define bytes->string
      (lambda _g88120_
        (let ((_g88119_ (let () (declare (not safe)) (##length _g88120_))))
          (cond ((let () (declare (not safe)) (##fx= _g88119_ 1))
                 (apply bytes->string__0 _g88120_))
                ((let () (declare (not safe)) (##fx= _g88119_ 2))
                 (apply bytes->string__% _g88120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g88120_))))))
    (define __bytes->string__%
      (lambda (_%bstr83820%_ _%enc83821%_)
        (let* ((_%bstr83824%_ _%bstr83820%_) (_%enc83832%_ _%enc83821%_))
          (if (eq? _%enc83832%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr83824%_))
              (let* ((_%in83841%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc83832%_
                                   (cons 'init: (cons _%bstr83824%_ '()))))))
                     (_%len83843%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr83824%_)))
                     (_%out83845%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len83843%_)))
                     (_%n83847%_
                      (read-substring
                       _%out83845%_
                       '0
                       _%len83843%_
                       _%in83841%_)))
                (string-shrink! _%out83845%_ _%n83847%_)
                _%out83845%_)))))
    (define __bytes->string__0
      (lambda (_%bstr83853%_)
        (let ((_%enc83855%_ 'UTF-8))
          (__bytes->string__% _%bstr83853%_ _%enc83855%_))))
    (define __bytes->string
      (lambda _g88122_
        (let ((_g88121_ (let () (declare (not safe)) (##length _g88122_))))
          (cond ((let () (declare (not safe)) (##fx= _g88121_ 1))
                 (apply __bytes->string__0 _g88122_))
                ((let () (declare (not safe)) (##fx= _g88121_ 2))
                 (apply __bytes->string__% _g88122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g88122_))))))
    (define string->bytes__%
      (lambda (_%str83784%_ _%enc83785%_)
        (if (string? _%str83784%_)
            (let ((_%str83789%_ _%str83784%_))
              (if (symbol? _%enc83785%_)
                  (let ((_%enc83799%_ _%enc83785%_))
                    (__string->bytes__% _%str83789%_ _%enc83799%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@637.25-637.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc83785%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@636.22-636.25"
               'contract:
               'string?
               'value:
               _%str83784%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str83812%_)
        (let ((_%enc83814%_ 'UTF-8))
          (string->bytes__% _%str83812%_ _%enc83814%_))))
    (define string->bytes
      (lambda _g88124_
        (let ((_g88123_ (let () (declare (not safe)) (##length _g88124_))))
          (cond ((let () (declare (not safe)) (##fx= _g88123_ 1))
                 (apply string->bytes__0 _g88124_))
                ((let () (declare (not safe)) (##fx= _g88123_ 2))
                 (apply string->bytes__% _g88124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g88124_))))))
    (define __string->bytes__%
      (lambda (_%str83752%_ _%enc83753%_)
        (let* ((_%str83756%_ _%str83752%_) (_%enc83764%_ _%enc83753%_))
          (if (eq? _%enc83764%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str83756%_))
              (let ((__tmp88125
                     (let ()
                       (declare (not safe))
                       (##string-length _%str83756%_))))
                (declare (not safe))
                (__substring->bytes
                 _%str83756%_
                 '0
                 __tmp88125
                 _%enc83764%_))))))
    (define __string->bytes__0
      (lambda (_%str83776%_)
        (let ((_%enc83778%_ 'UTF-8))
          (__string->bytes__% _%str83776%_ _%enc83778%_))))
    (define __string->bytes
      (lambda _g88127_
        (let ((_g88126_ (let () (declare (not safe)) (##length _g88127_))))
          (cond ((let () (declare (not safe)) (##fx= _g88126_ 1))
                 (apply __string->bytes__0 _g88127_))
                ((let () (declare (not safe)) (##fx= _g88126_ 2))
                 (apply __string->bytes__% _g88127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g88127_))))))
    (define substring->bytes__%
      (lambda (_%str83700%_ _%start83701%_ _%end83702%_ _%enc83703%_)
        (if (string? _%str83700%_)
            (let ((_%str83707%_ _%str83700%_))
              (if (nonnegative-fixnum? _%start83701%_)
                  (let ((_%start83717%_ _%start83701%_))
                    (if (nonnegative-fixnum? _%end83702%_)
                        (let ((_%end83727%_ _%end83702%_))
                          (__substring->bytes__%
                           _%str83707%_
                           _%start83717%_
                           _%end83727%_
                           _%enc83703%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end83702%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start83701%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@643.25-643.28"
               'contract:
               'string?
               'value:
               _%str83700%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str83740%_ _%start83741%_ _%end83742%_)
        (let ((_%enc83744%_ 'UTF-8))
          (substring->bytes__%
           _%str83740%_
           _%start83741%_
           _%end83742%_
           _%enc83744%_))))
    (define substring->bytes
      (lambda _g88129_
        (let ((_g88128_ (let () (declare (not safe)) (##length _g88129_))))
          (cond ((let () (declare (not safe)) (##fx= _g88128_ 3))
                 (apply substring->bytes__0 _g88129_))
                ((let () (declare (not safe)) (##fx= _g88128_ 4))
                 (apply substring->bytes__% _g88129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g88129_))))))
    (define __substring->bytes__%
      (lambda (_%str83652%_ _%start83653%_ _%end83654%_ _%enc83655%_)
        (let* ((_%str83658%_ _%str83652%_)
               (_%start83666%_ _%start83653%_)
               (_%end83674%_ _%end83654%_))
          (if (eq? _%enc83655%_ 'UTF-8)
              (string->utf8 _%str83658%_ _%start83666%_ _%end83674%_)
              (let ((_%out83683%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc83655%_ '())))))
                (write-substring
                 _%str83658%_
                 _%start83666%_
                 _%end83674%_
                 _%out83683%_)
                (get-output-u8vector _%out83683%_))))))
    (define __substring->bytes__0
      (lambda (_%str83688%_ _%start83689%_ _%end83690%_)
        (let ((_%enc83692%_ 'UTF-8))
          (__substring->bytes__%
           _%str83688%_
           _%start83689%_
           _%end83690%_
           _%enc83692%_))))
    (define __substring->bytes
      (lambda _g88131_
        (let ((_g88130_ (let () (declare (not safe)) (##length _g88131_))))
          (cond ((let () (declare (not safe)) (##fx= _g88130_ 3))
                 (apply __substring->bytes__0 _g88131_))
                ((let () (declare (not safe)) (##fx= _g88130_ 4))
                 (apply __substring->bytes__% _g88131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g88131_))))))
    (define string-empty?
      (lambda (_%str83637%_)
        (if (string? _%str83637%_)
            (let ((_%str83641%_ _%str83637%_)) (__string-empty? _%str83641%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.22-654.25"
               'contract:
               'string?
               'value:
               _%str83637%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str83625%_)
        (let* ((_%str83628%_ _%str83625%_)
               (__tmp88132
                (let () (declare (not safe)) (##string-length _%str83628%_))))
          (declare (not safe))
          (##fxzero? __tmp88132))))
    (define string-index__%
      (lambda (_%str83577%_ _%char83578%_ _%start83579%_)
        (if (string? _%str83577%_)
            (let ((_%str83583%_ _%str83577%_))
              (if (char? _%char83578%_)
                  (let ((_%char83593%_ _%char83578%_))
                    (if (nonnegative-fixnum? _%start83579%_)
                        (let ((_%start83603%_ _%start83579%_))
                          (__string-index__%
                           _%str83583%_
                           _%char83593%_
                           _%start83603%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start83579%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@659.21-659.25"
                     'contract:
                     'char?
                     'value:
                     _%char83578%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@658.21-658.24"
               'contract:
               'string?
               'value:
               _%str83577%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str83616%_ _%char83617%_)
        (let ((_%start83619%_ '0))
          (string-index__% _%str83616%_ _%char83617%_ _%start83619%_))))
    (define string-index
      (lambda _g88134_
        (let ((_g88133_ (let () (declare (not safe)) (##length _g88134_))))
          (cond ((let () (declare (not safe)) (##fx= _g88133_ 2))
                 (apply string-index__0 _g88134_))
                ((let () (declare (not safe)) (##fx= _g88133_ 3))
                 (apply string-index__% _g88134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g88134_))))))
    (define __string-index__%
      (lambda (_%str83516%_ _%char83517%_ _%start83518%_)
        (let* ((_%str83521%_ _%str83516%_)
               (_%char83529%_ _%char83517%_)
               (_%start83537%_ _%start83518%_)
               (_%len83546%_
                (let () (declare (not safe)) (##string-length _%str83521%_))))
          (let _%lp83548%_ ((_%k83550%_ _%start83537%_))
            (let ((_%k83552%_ _%k83550%_))
              (if (let () (declare (not safe)) (##fx< _%k83552%_ _%len83546%_))
                  (if (eq? _%char83529%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str83521%_ _%k83552%_)))
                      _%k83552%_
                      (_%lp83548%_
                       (let () (declare (not safe)) (##fx+ _%k83552%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str83567%_ _%char83568%_)
        (let ((_%start83570%_ '0))
          (__string-index__% _%str83567%_ _%char83568%_ _%start83570%_))))
    (define __string-index
      (lambda _g88136_
        (let ((_g88135_ (let () (declare (not safe)) (##length _g88136_))))
          (cond ((let () (declare (not safe)) (##fx= _g88135_ 2))
                 (apply __string-index__0 _g88136_))
                ((let () (declare (not safe)) (##fx= _g88135_ 3))
                 (apply __string-index__% _g88136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g88136_))))))
    (define string-rindex__%
      (lambda (_%str83477%_ _%char83478%_ _%start83479%_)
        (if (string? _%str83477%_)
            (let ((_%str83483%_ _%str83477%_))
              (if (char? _%char83478%_)
                  (let ((_%char83493%_ _%char83478%_))
                    (__string-rindex__%
                     _%str83483%_
                     _%char83493%_
                     _%start83479%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@670.25-670.29"
                     'contract:
                     'char?
                     'value:
                     _%char83478%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@669.22-669.25"
               'contract:
               'string?
               'value:
               _%str83477%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str83506%_ _%char83507%_)
        (let ((_%start83509%_ '#f))
          (string-rindex__% _%str83506%_ _%char83507%_ _%start83509%_))))
    (define string-rindex
      (lambda _g88138_
        (let ((_g88137_ (let () (declare (not safe)) (##length _g88138_))))
          (cond ((let () (declare (not safe)) (##fx= _g88137_ 2))
                 (apply string-rindex__0 _g88138_))
                ((let () (declare (not safe)) (##fx= _g88137_ 3))
                 (apply string-rindex__% _g88138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g88138_))))))
    (define __string-rindex__%
      (lambda (_%str83419%_ _%char83420%_ _%start83421%_)
        (let* ((_%str83424%_ _%str83419%_)
               (_%char83432%_ _%char83420%_)
               (_%len83441%_
                (let () (declare (not safe)) (##string-length _%str83424%_)))
               (_%start83443%_
                (if (fixnum? _%start83421%_)
                    _%start83421%_
                    (let () (declare (not safe)) (##fx- _%len83441%_ '1)))))
          (let _%lp83446%_ ((_%k83448%_ _%start83443%_))
            (let ((_%k83450%_ _%k83448%_))
              (if (let () (declare (not safe)) (##fx>= _%k83450%_ '0))
                  (if (eq? _%char83432%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str83424%_ _%k83450%_)))
                      _%k83450%_
                      (_%lp83446%_
                       (let () (declare (not safe)) (##fx- _%k83450%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str83467%_ _%char83468%_)
        (let ((_%start83470%_ '#f))
          (__string-rindex__% _%str83467%_ _%char83468%_ _%start83470%_))))
    (define __string-rindex
      (lambda _g88140_
        (let ((_g88139_ (let () (declare (not safe)) (##length _g88140_))))
          (cond ((let () (declare (not safe)) (##fx= _g88139_ 2))
                 (apply __string-rindex__0 _g88140_))
                ((let () (declare (not safe)) (##fx= _g88139_ 3))
                 (apply __string-rindex__% _g88140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g88140_))))))
    (define string-split
      (lambda (_%str83393%_ _%char83394%_)
        (if (string? _%str83393%_)
            (let ((_%str83398%_ _%str83393%_))
              (if (char? _%char83394%_)
                  (let ((_%char83408%_ _%char83394%_))
                    (__string-split _%str83398%_ _%char83408%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@681.37-681.41"
                     'contract:
                     'char?
                     'value:
                     _%char83394%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@681.21-681.24"
               'contract:
               'string?
               'value:
               _%str83393%_)
              '#!void))))
    (define __string-split
      (lambda (_%str83334%_ _%char83335%_)
        (let* ((_%str83338%_ _%str83334%_)
               (_%char83346%_ _%char83335%_)
               (_%len83355%_
                (let () (declare (not safe)) (##string-length _%str83338%_))))
          (let _%lp83357%_ ((_%start83359%_ '0) (_%r83360%_ '()))
            (let* ((_%start83363%_ _%start83359%_)
                   (_%$e83376%_
                    (let ()
                      (declare (not safe))
                      (__string-index
                       _%str83338%_
                       _%char83346%_
                       _%start83363%_))))
              (if _%$e83376%_
                  ((lambda (_%end83379%_)
                     (let ((_%end83381%_ _%end83379%_))
                       (_%lp83357%_
                        (let () (declare (not safe)) (##fx+ _%end83381%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str83338%_
                                 _%start83363%_
                                 _%end83381%_))
                              _%r83360%_))))
                   _%$e83376%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start83363%_ _%len83355%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str83338%_
                                _%start83363%_
                                _%len83355%_)))
                       _%r83360%_)
                      (reverse! _%r83360%_))))))))
    (define string-join
      (lambda (_%strs83184%_ _%join83185%_)
        (letrec ((_%join-length83188%_
                  (lambda (_%strs83272%_ _%jlen83273%_)
                    (let _%lp83275%_ ((_%rest83277%_ _%strs83272%_)
                                      (_%len83278%_ '0))
                      (let* ((_%len83280%_ _%len83278%_)
                             (_%rest8328883296%_ _%rest83277%_)
                             (_%else8329083304%_ (lambda () '0))
                             (_%K8329283322%_
                              (lambda (_%rest83307%_ _%hd83308%_)
                                (if (string? _%hd83308%_)
                                    (let ((_%hd83310%_ _%hd83308%_))
                                      (if (pair? _%rest83307%_)
                                          (_%lp83275%_
                                           _%rest83307%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd83310%_))
                                                _%jlen83273%_
                                                _%len83280%_))
                                          (let ((__tmp88141
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd83310%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp88141 _%len83280%_))))
                                    (error '"expected string" _%hd83308%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest8328883296%_))
                            (let ((_%hd8329383325%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8328883296%_)))
                                  (_%tl8329483327%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8328883296%_))))
                              (let* ((_%hd83330%_ _%hd8329383325%_)
                                     (_%rest83332%_ _%tl8329483327%_))
                                (_%K8329283322%_ _%rest83332%_ _%hd83330%_)))
                            (_%else8329083304%_)))))))
          (let* ((_%join83193%_
                  (if (char? _%join83185%_)
                      (let () (declare (not safe)) (##string _%join83185%_))
                      (if (string? _%join83185%_)
                          _%join83185%_
                          (error '"expected string or char" _%join83185%_))))
                 (_%jlen83195%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join83193%_)))
                 (_%olen83197%_
                  (_%join-length83188%_ _%strs83184%_ _%jlen83195%_))
                 (_%ostr83199%_
                  (let () (declare (not safe)) (##make-string _%olen83197%_))))
            (let _%lp83202%_ ((_%rest83204%_ _%strs83184%_) (_%k83205%_ '0))
              (let* ((_%k83208%_ _%k83205%_)
                     (_%rest8322483232%_ _%rest83204%_)
                     (_%else8322683240%_ (lambda () '""))
                     (_%K8322883260%_
                      (lambda (_%rest83243%_ _%hd83244%_)
                        (let* ((_%hd83246%_ _%hd83244%_)
                               (_%hdlen83258%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd83246%_))))
                          (if (pair? _%rest83243%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd83246%_
                                   '0
                                   _%hdlen83258%_
                                   _%ostr83199%_
                                   _%k83208%_))
                                (let ((__tmp88142
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k83208%_ _%hdlen83258%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join83193%_
                                   '0
                                   _%jlen83195%_
                                   _%ostr83199%_
                                   __tmp88142))
                                (_%lp83202%_
                                 _%rest83243%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k83208%_
                                          _%hdlen83258%_
                                          _%jlen83195%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd83246%_
                                   '0
                                   _%hdlen83258%_
                                   _%ostr83199%_
                                   _%k83208%_))
                                _%ostr83199%_))))))
                (if (let () (declare (not safe)) (##pair? _%rest8322483232%_))
                    (let ((_%hd8322983263%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8322483232%_)))
                          (_%tl8323083265%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8322483232%_))))
                      (let* ((_%hd83268%_ _%hd8322983263%_)
                             (_%rest83270%_ _%tl8323083265%_))
                        (_%K8322883260%_ _%rest83270%_ _%hd83268%_)))
                    (_%else8322683240%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes83110%_ _%port83111%_ _%start83112%_ _%end83113%_)
        (if (u8vector? _%bytes83110%_)
            (let ((_%bytes83117%_ _%bytes83110%_))
              (if (input-port? _%port83111%_)
                  (let ((_%port83127%_ _%port83111%_))
                    (if ((lambda (_%o83136%_)
                           (and (fixnum? _%o83136%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o83136%_ '0))
                                (let ((__tmp88143
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes83117%_))))
                                  (declare (not safe))
                                  (##fx< _%o83136%_ __tmp88143))))
                         _%start83112%_)
                        (let ((_%start83140%_ _%start83112%_))
                          (if ((lambda (_%o83149%_)
                                 (and (fixnum? _%o83149%_)
                                      (fx<= _%start83140%_
                                            _%o83149%_
                                            (let ()
                                              (declare (not safe))
                                              (##u8vector-length
                                               _%bytes83117%_)))))
                               _%end83113%_)
                              (let ((_%end83153%_ _%end83113%_))
                                (__read-u8vector__%
                                 _%bytes83117%_
                                 _%port83127%_
                                 _%start83140%_
                                 _%end83153%_))
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
                                 _%end83113%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start83112%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port83111%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@744.22-744.27"
               'contract:
               'u8vector?
               'value:
               _%bytes83110%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes83166%_ _%port83167%_)
        (let* ((_%start83169%_ '0)
               (_%end83171%_ (u8vector-length _%bytes83166%_)))
          (read-u8vector__%
           _%bytes83166%_
           _%port83167%_
           _%start83169%_
           _%end83171%_))))
    (define read-u8vector__1
      (lambda (_%bytes83173%_ _%port83174%_ _%start83175%_)
        (let ((_%end83177%_ (u8vector-length _%bytes83173%_)))
          (read-u8vector__%
           _%bytes83173%_
           _%port83174%_
           _%start83175%_
           _%end83177%_))))
    (define read-u8vector
      (lambda _g88145_
        (let ((_g88144_ (let () (declare (not safe)) (##length _g88145_))))
          (cond ((let () (declare (not safe)) (##fx= _g88144_ 2))
                 (apply read-u8vector__0 _g88145_))
                ((let () (declare (not safe)) (##fx= _g88144_ 3))
                 (apply read-u8vector__1 _g88145_))
                ((let () (declare (not safe)) (##fx= _g88144_ 4))
                 (apply read-u8vector__% _g88145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g88145_))))))
    (define __read-u8vector__%
      (lambda (_%bytes83049%_ _%port83050%_ _%start83051%_ _%end83052%_)
        (let* ((_%bytes83055%_ _%bytes83049%_)
               (_%port83063%_ _%port83050%_)
               (_%start83071%_ _%start83051%_)
               (_%end83079%_ _%end83052%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes83055%_
           _%start83071%_
           _%end83079%_
           _%port83063%_))))
    (define __read-u8vector__0
      (lambda (_%bytes83091%_ _%port83092%_)
        (let* ((_%start83094%_ '0)
               (_%end83096%_ (u8vector-length _%bytes83091%_)))
          (__read-u8vector__%
           _%bytes83091%_
           _%port83092%_
           _%start83094%_
           _%end83096%_))))
    (define __read-u8vector__1
      (lambda (_%bytes83098%_ _%port83099%_ _%start83100%_)
        (let ((_%end83102%_ (u8vector-length _%bytes83098%_)))
          (__read-u8vector__%
           _%bytes83098%_
           _%port83099%_
           _%start83100%_
           _%end83102%_))))
    (define __read-u8vector
      (lambda _g88147_
        (let ((_g88146_ (let () (declare (not safe)) (##length _g88147_))))
          (cond ((let () (declare (not safe)) (##fx= _g88146_ 2))
                 (apply __read-u8vector__0 _g88147_))
                ((let () (declare (not safe)) (##fx= _g88146_ 3))
                 (apply __read-u8vector__1 _g88147_))
                ((let () (declare (not safe)) (##fx= _g88146_ 4))
                 (apply __read-u8vector__% _g88147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g88147_))))))
    (define write-u8vector__%
      (lambda (_%bytes82974%_ _%port82975%_ _%start82976%_ _%end82977%_)
        (if (u8vector? _%bytes82974%_)
            (let ((_%bytes82981%_ _%bytes82974%_))
              (if (output-port? _%port82975%_)
                  (let ((_%port82991%_ _%port82975%_))
                    (if ((lambda (_%o83000%_)
                           (and (fixnum? _%o83000%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o83000%_ '0))
                                (let ((__tmp88148
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes82981%_))))
                                  (declare (not safe))
                                  (##fx< _%o83000%_ __tmp88148))))
                         _%start82976%_)
                        (let ((_%start83004%_ _%start82976%_))
                          (if ((lambda (_%o83013%_)
                                 (and (fixnum? _%o83013%_)
                                      (fx<= _%start83004%_
                                            _%o83013%_
                                            (let ()
                                              (declare (not safe))
                                              (##u8vector-length
                                               _%bytes82981%_)))))
                               _%end82977%_)
                              (let ((_%end83017%_ _%end82977%_))
                                (__write-u8vector__%
                                 _%bytes82981%_
                                 _%port82991%_
                                 _%start83004%_
                                 _%end83017%_))
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
                                 _%end82977%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start82976%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port82975%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@754.23-754.28"
               'contract:
               'u8vector?
               'value:
               _%bytes82974%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes83030%_ _%port83031%_)
        (let* ((_%start83033%_ '0)
               (_%end83035%_ (u8vector-length _%bytes83030%_)))
          (write-u8vector__%
           _%bytes83030%_
           _%port83031%_
           _%start83033%_
           _%end83035%_))))
    (define write-u8vector__1
      (lambda (_%bytes83037%_ _%port83038%_ _%start83039%_)
        (let ((_%end83041%_ (u8vector-length _%bytes83037%_)))
          (write-u8vector__%
           _%bytes83037%_
           _%port83038%_
           _%start83039%_
           _%end83041%_))))
    (define write-u8vector
      (lambda _g88150_
        (let ((_g88149_ (let () (declare (not safe)) (##length _g88150_))))
          (cond ((let () (declare (not safe)) (##fx= _g88149_ 2))
                 (apply write-u8vector__0 _g88150_))
                ((let () (declare (not safe)) (##fx= _g88149_ 3))
                 (apply write-u8vector__1 _g88150_))
                ((let () (declare (not safe)) (##fx= _g88149_ 4))
                 (apply write-u8vector__% _g88150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g88150_))))))
    (define __write-u8vector__%
      (lambda (_%bytes82913%_ _%port82914%_ _%start82915%_ _%end82916%_)
        (let* ((_%bytes82919%_ _%bytes82913%_)
               (_%port82927%_ _%port82914%_)
               (_%start82935%_ _%start82915%_)
               (_%end82943%_ _%end82916%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes82919%_
           _%start82935%_
           _%end82943%_
           _%port82927%_))))
    (define __write-u8vector__0
      (lambda (_%bytes82955%_ _%port82956%_)
        (let* ((_%start82958%_ '0)
               (_%end82960%_ (u8vector-length _%bytes82955%_)))
          (__write-u8vector__%
           _%bytes82955%_
           _%port82956%_
           _%start82958%_
           _%end82960%_))))
    (define __write-u8vector__1
      (lambda (_%bytes82962%_ _%port82963%_ _%start82964%_)
        (let ((_%end82966%_ (u8vector-length _%bytes82962%_)))
          (__write-u8vector__%
           _%bytes82962%_
           _%port82963%_
           _%start82964%_
           _%end82966%_))))
    (define __write-u8vector
      (lambda _g88152_
        (let ((_g88151_ (let () (declare (not safe)) (##length _g88152_))))
          (cond ((let () (declare (not safe)) (##fx= _g88151_ 2))
                 (apply __write-u8vector__0 _g88152_))
                ((let () (declare (not safe)) (##fx= _g88151_ 3))
                 (apply __write-u8vector__1 _g88152_))
                ((let () (declare (not safe)) (##fx= _g88151_ 4))
                 (apply __write-u8vector__% _g88152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g88152_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag82881%_
               _%dbg-exprs82882%_
               _%dbg-thunks82883%_
               _%expr82884%_
               _%thunk82885%_)
        (letrec ((_%o82887%_ (current-output-port))
                 (_%e82888%_ (current-error-port))
                 (_%p82889%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f82890%_
                  (lambda ()
                    (force-output _%o82887%_)
                    (force-output _%e82888%_)))
                 (_%d82891%_
                  (lambda (_%x82898%_) (display _%x82898%_ _%e82888%_)))
                 (_%w82892%_
                  (lambda (_%x82900%_) (_%p82889%_ _%x82900%_ _%e82888%_)))
                 (_%n82893%_ (lambda () (newline _%e82888%_)))
                 (_%v82894%_
                  (lambda (_%l82903%_)
                    (for-each
                     (lambda (_%x82905%_)
                       (_%d82891%_ '" ")
                       (_%w82892%_ _%x82905%_))
                     _%l82903%_)
                    (_%n82893%_)))
                 (_%x82895%_
                  (lambda (_%expr82907%_ _%thunk82908%_)
                    (_%f82890%_)
                    (_%d82891%_ '"  ")
                    (_%w82892%_ _%expr82907%_)
                    (_%d82891%_ '" =>")
                    (call-with-values
                     _%thunk82908%_
                     (lambda _%x82910%_
                       (_%v82894%_ _%x82910%_)
                       (_%f82890%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x82910%_)))))))
          (if _%tag82881%_
              (begin
                (if (eq? _%tag82881%_ '#!void)
                    '#!void
                    (begin
                      (_%f82890%_)
                      (_%d82891%_ _%tag82881%_)
                      (_%n82893%_)))
                (for-each _%x82895%_ _%dbg-exprs82882%_ _%dbg-thunks82883%_)
                (if _%thunk82885%_
                    (_%x82895%_ _%expr82884%_ _%thunk82885%_)
                    '#!void))
              (if _%thunk82885%_ (_%thunk82885%_) '#!void)))))))
