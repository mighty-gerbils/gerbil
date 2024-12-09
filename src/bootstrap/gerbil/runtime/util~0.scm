(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1733687557)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args89524%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args89524%_))
          (newline))))
    (define display*
      (lambda _%args89521%_
        (let () (declare (not safe)) (##for-each display _%args89521%_))))
    (define file-newer?
      (lambda (_%file189496%_ _%file289497%_)
        (if (string? _%file189496%_)
            (let ((_%file189501%_ _%file189496%_))
              (if (string? _%file289497%_)
                  (let ((_%file289511%_ _%file289497%_))
                    (__file-newer? _%file189501%_ _%file289511%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@64.20-64.25"
                     'contract:
                     'string?
                     'value:
                     _%file289497%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@63.20-63.25"
               'contract:
               'string?
               'value:
               _%file189496%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file189444%_ _%file289445%_)
        (let* ((_%file189448%_ _%file189444%_) (_%file289456%_ _%file289445%_))
          (letrec ((_%modification-time89465%_
                    (lambda (_%file89484%_)
                      (let ((_%file89487%_ _%file89484%_))
                        (_%__modification-time89466%_ _%file89487%_))))
                   (_%__modification-time89466%_
                    (lambda (_%file89468%_)
                      (let* ((_%file89471%_ _%file89468%_)
                             (__tmp91254
                              (let ((__tmp91255
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file89471%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp91255))))
                        (declare (not safe))
                        (##time->seconds __tmp91254)))))
            (let ((__tmp91257 (_%__modification-time89466%_ _%file189448%_))
                  (__tmp91256 (_%__modification-time89466%_ _%file289456%_)))
              (declare (not safe))
              (##fl> __tmp91257 __tmp91256))))))
    (define create-directory*__%
      (lambda (_%dir89409%_ _%perms89410%_)
        (if (string? _%dir89409%_)
            (let ((_%dir89414%_ _%dir89409%_))
              (if (fixnum? _%perms89410%_)
                  (let ((_%perms89424%_ _%perms89410%_))
                    (__create-directory*__% _%dir89414%_ _%perms89424%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.26-75.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms89410%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.26-74.29"
               'contract:
               'string?
               'value:
               _%dir89409%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir89437%_)
        (let ((_%perms89439%_ '493))
          (create-directory*__% _%dir89437%_ _%perms89439%_))))
    (define create-directory*
      (lambda _g91259_
        (let ((_g91258_ (let () (declare (not safe)) (##length _g91259_))))
          (cond ((let () (declare (not safe)) (##fx= _g91258_ 1))
                 (apply create-directory*__0 _g91259_))
                ((let () (declare (not safe)) (##fx= _g91258_ 2))
                 (apply create-directory*__% _g91259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g91259_))))))
    (define __create-directory*__%
      (lambda (_%dir89333%_ _%perms89334%_)
        (let* ((_%dir89337%_ _%dir89333%_) (_%perms89345%_ _%perms89334%_))
          (letrec ((_%create189354%_
                    (lambda (_%path89386%_)
                      (let ((_%path89389%_ _%path89386%_))
                        (_%__create189355%_ _%path89389%_))))
                   (_%__create189355%_
                    (lambda (_%path89367%_)
                      (let ((_%path89370%_ _%path89367%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path89370%_))
                            (if (eq? (file-type _%path89370%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path89370%_))
                            (if _%perms89345%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path89370%_
                                             (cons 'permissions:
                                                   (cons _%perms89345%_
                                                         '())))))
                                (create-directory _%path89370%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir89337%_))
                '#!void
                (let _%lp89357%_ ((_%start89359%_ '0))
                  (let ((_%$e89361%_
                         (__string-index__% _%dir89337%_ '#\/ _%start89359%_)))
                    (if _%$e89361%_
                        ((lambda (_%x89364%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x89364%_ '0))
                               (_%__create189355%_
                                (substring _%dir89337%_ '0 _%x89364%_))
                               '#!void)
                           (_%lp89357%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x89364%_ '1))))
                         _%$e89361%_)
                        (_%__create189355%_ _%dir89337%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir89401%_)
        (let ((_%perms89403%_ '493))
          (__create-directory*__% _%dir89401%_ _%perms89403%_))))
    (define __create-directory*
      (lambda _g91261_
        (let ((_g91260_ (let () (declare (not safe)) (##length _g91261_))))
          (cond ((let () (declare (not safe)) (##fx= _g91260_ 1))
                 (apply __create-directory*__0 _g91261_))
                ((let () (declare (not safe)) (##fx= _g91260_ 2))
                 (apply __create-directory*__% _g91261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g91261_))))))
    (define move-file__%
      (lambda (_%src89284%_ _%dest89285%_ _%replace?89286%_)
        (if (string? _%src89284%_)
            (let ((_%src89290%_ _%src89284%_))
              (if (string? _%dest89285%_)
                  (let ((_%dest89300%_ _%dest89285%_))
                    (if (boolean? _%replace?89286%_)
                        (let ((_%replace?89310%_ _%replace?89286%_))
                          (__move-file__%
                           _%src89290%_
                           _%dest89300%_
                           _%replace?89310%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@99.51-99.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?89286%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@99.34-99.38"
                     'contract:
                     'string?
                     'value:
                     _%dest89285%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@99.18-99.21"
               'contract:
               'string?
               'value:
               _%src89284%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src89323%_ _%dest89324%_)
        (let ((_%replace?89326%_ '#t))
          (move-file__% _%src89323%_ _%dest89324%_ _%replace?89326%_))))
    (define move-file
      (lambda _g91263_
        (let ((_g91262_ (let () (declare (not safe)) (##length _g91263_))))
          (cond ((let () (declare (not safe)) (##fx= _g91262_ 2))
                 (apply move-file__0 _g91263_))
                ((let () (declare (not safe)) (##fx= _g91262_ 3))
                 (apply move-file__% _g91263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g91263_))))))
    (define __move-file__%
      (lambda (_%src89227%_ _%dest89228%_ _%replace?89229%_)
        (let* ((_%src89232%_ _%src89227%_)
               (_%dest89240%_ _%dest89228%_)
               (_%replace?89248%_ _%replace?89229%_))
          (letrec ((_%force-move-it89257%_
                    (lambda ()
                      (let ((_%tmp89263%_
                             (if _%replace?89248%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest89240%_))
                                     (let ((__tmp91264
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest89240%_
                                        '"."
                                        __tmp91264))
                                     '#f)
                                 '#f)))
                        (if _%tmp89263%_
                            (rename-file _%dest89240%_ _%tmp89263%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e89265%_)
                           (if _%tmp89263%_
                               (rename-file _%tmp89263%_ _%dest89240%_ '#t)
                               '#!void)
                           (raise _%e89265%_))
                         (lambda ()
                           (let ((_%fi89268%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src89232%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi89268%_))
                                      'symbolic-link)
                                 (let ((__tmp91265
                                        (path-normalize _%src89232%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp91265
                                    _%dest89240%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file _%src89232%_ _%dest89240%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src89232%_))
                           (if _%tmp89263%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp89263%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e89259%_)
               (if (let () (declare (not safe)) (##file-exists? _%src89232%_))
                   (_%force-move-it89257%_)
                   (raise _%e89259%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src89232%_
                  _%dest89240%_
                  _%replace?89248%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src89274%_ _%dest89275%_)
        (let ((_%replace?89277%_ '#t))
          (__move-file__% _%src89274%_ _%dest89275%_ _%replace?89277%_))))
    (define __move-file
      (lambda _g91267_
        (let ((_g91266_ (let () (declare (not safe)) (##length _g91267_))))
          (cond ((let () (declare (not safe)) (##fx= _g91266_ 2))
                 (apply __move-file__0 _g91267_))
                ((let () (declare (not safe)) (##fx= _g91266_ 3))
                 (apply __move-file__% _g91267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g91267_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore89223%_ '#t))
    (define true? (lambda (_%obj89220%_) (eq? _%obj89220%_ '#t)))
    (define false (lambda _%ignore89217%_ '#f))
    (define void (lambda _%ignore89214%_ '#!void))
    (define void? (lambda (_%obj89211%_) (eq? _%obj89211%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj89208%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj89208%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj89205%_) (eq? _%obj89205%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj89202%_) (eq? _%obj89202%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj89199%_) (eq? _%obj89199%_ '#!optional)))
    (define immediate?
      (lambda (_%obj89194%_)
        (let* ((_%t89197%_ (let () (declare (not safe)) (##type _%obj89194%_)))
               (__tmp91268
                (let () (declare (not safe)) (##fxand _%t89197%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp91268))))
    (define nonnegative-fixnum?
      (lambda (_%obj89191%_)
        (if (fixnum? _%obj89191%_)
            (let () (declare (not safe)) (##fx>= _%obj89191%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj89185%_)
        (let ((_%$e89188%_ (pair? _%obj89185%_)))
          (if _%$e89188%_ _%$e89188%_ (null? _%obj89185%_)))))
    (define values-count
      (lambda (_%obj89182%_)
        (if (let () (declare (not safe)) (##values? _%obj89182%_))
            (let () (declare (not safe)) (##vector-length _%obj89182%_))
            '1)))
    (define values-ref
      (lambda (_%obj89167%_ _%k89168%_)
        (if (fixnum? _%k89168%_)
            (let ((_%k89172%_ _%k89168%_))
              (__values-ref _%obj89167%_ _%k89172%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@234.23-234.24"
               'contract:
               'fixnum?
               'value:
               _%k89168%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj89154%_ _%k89155%_)
        (let ((_%k89158%_ _%k89155%_))
          (if (let () (declare (not safe)) (##values? _%obj89154%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj89154%_ _%k89158%_))
              _%obj89154%_))))
    (define values->list
      (lambda (_%obj89151%_)
        (if (let () (declare (not safe)) (##values? _%obj89151%_))
            (let () (declare (not safe)) (##vector->list _%obj89151%_))
            (list _%obj89151%_))))
    (define foldl1
      (lambda (_%f89135%_ _%iv89136%_ _%lst89137%_)
        (if (procedure? _%f89135%_)
            (let ((_%f89141%_ _%f89135%_))
              (__foldl1 _%f89141%_ _%iv89136%_ _%lst89137%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@257.15-257.16"
               'contract:
               'procedure?
               'value:
               _%f89135%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f89083%_ _%iv89084%_ _%lst89085%_)
        (let ((_%f89088%_ _%f89083%_))
          (let _%lp89097%_ ((_%rest89099%_ _%lst89085%_)
                            (_%r89100%_ _%iv89084%_))
            (let* ((_%rest8910189109%_ _%rest89099%_)
                   (_%else8910389117%_ (lambda () _%r89100%_))
                   (_%K8910589123%_
                    (lambda (_%rest89120%_ _%x89121%_)
                      (_%lp89097%_
                       _%rest89120%_
                       (let ()
                         (declare (not safe))
                         (_%f89088%_ _%x89121%_ _%r89100%_))))))
              (if (pair? _%rest8910189109%_)
                  (let ((_%hd8910689126%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8910189109%_)))
                        (_%tl8910789128%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8910189109%_))))
                    (let* ((_%x89131%_ _%hd8910689126%_)
                           (_%rest89133%_ _%tl8910789128%_))
                      (_%K8910589123%_ _%rest89133%_ _%x89131%_)))
                  (_%else8910389117%_)))))))
    (define foldl2
      (lambda (_%f89066%_ _%iv89067%_ _%lst189068%_ _%lst289069%_)
        (if (procedure? _%f89066%_)
            (let ((_%f89073%_ _%f89066%_))
              (__foldl2 _%f89073%_ _%iv89067%_ _%lst189068%_ _%lst289069%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@264.15-264.16"
               'contract:
               'procedure?
               'value:
               _%f89066%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f88979%_ _%iv88980%_ _%lst188981%_ _%lst288982%_)
        (let ((_%f88985%_ _%f88979%_))
          (let _%lp88994%_ ((_%rest188996%_ _%lst188981%_)
                            (_%rest288997%_ _%lst288982%_)
                            (_%r88998%_ _%iv88980%_))
            (let* ((_%rest18899989007%_ _%rest188996%_)
                   (_%else8900189015%_ (lambda () _%r88998%_))
                   (_%K8900389054%_
                    (lambda (_%rest189018%_ _%x189019%_)
                      (let* ((_%rest28902089028%_ _%rest288997%_)
                             (_%else8902289036%_ (lambda () _%r88998%_))
                             (_%K8902489042%_
                              (lambda (_%rest289039%_ _%x289040%_)
                                (_%lp88994%_
                                 _%rest189018%_
                                 _%rest289039%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f88985%_
                                    _%x189019%_
                                    _%x289040%_
                                    _%r88998%_))))))
                        (if (pair? _%rest28902089028%_)
                            (let ((_%hd8902589045%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28902089028%_)))
                                  (_%tl8902689047%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28902089028%_))))
                              (let* ((_%x289050%_ _%hd8902589045%_)
                                     (_%rest289052%_ _%tl8902689047%_))
                                (_%K8902489042%_ _%rest289052%_ _%x289050%_)))
                            (_%else8902289036%_))))))
              (if (pair? _%rest18899989007%_)
                  (let ((_%hd8900489057%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18899989007%_)))
                        (_%tl8900589059%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18899989007%_))))
                    (let* ((_%x189062%_ _%hd8900489057%_)
                           (_%rest189064%_ _%tl8900589059%_))
                      (_%K8900389054%_ _%rest189064%_ _%x189062%_)))
                  (_%else8900189015%_)))))))
    (define foldl
      (lambda _g91270_
        (let ((_g91269_ (let () (declare (not safe)) (##length _g91270_))))
          (cond ((let () (declare (not safe)) (##fx= _g91269_ 3))
                 (apply foldl1 _g91270_))
                ((let () (declare (not safe)) (##fx= _g91269_ 4))
                 (apply foldl2 _g91270_))
                ((let () (declare (not safe)) (##fx>= _g91269_ 4))
                 (apply foldl* _g91270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g91270_))))))
    (define foldl*
      (lambda (_%f88948%_ _%iv88949%_ . _%rest88950%_)
        (if (procedure? _%f88948%_)
            (let ((_%f88954%_ _%f88948%_))
              (declare (not safe))
              (##apply __foldl* _%f88954%_ _%iv88949%_ _%rest88950%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@282.15-282.16"
               'contract:
               'procedure?
               'value:
               _%f88948%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f88926%_ _%iv88927%_ . _%rest88928%_)
        (let ((_%f88931%_ _%f88926%_))
          (let _%recur88940%_ ((_%iv88942%_ _%iv88927%_)
                               (_%rest88943%_ _%rest88928%_))
            (if (__andmap1 pair? _%rest88943%_)
                (_%recur88940%_
                 (let ((__tmp91271
                        (__foldr1
                         (lambda (_%xs88945%_ _%r88946%_)
                           (cons (car _%xs88945%_) _%r88946%_))
                         (list _%iv88942%_)
                         _%rest88943%_)))
                   (declare (not safe))
                   (##apply _%f88931%_ __tmp91271))
                 (map cdr _%rest88943%_))
                _%iv88942%_)))))
    (define foldr1
      (lambda (_%f88910%_ _%iv88911%_ _%lst88912%_)
        (if (procedure? _%f88910%_)
            (let ((_%f88916%_ _%f88910%_))
              (__foldr1 _%f88916%_ _%iv88911%_ _%lst88912%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f88910%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f88859%_ _%iv88860%_ _%lst88861%_)
        (let ((_%f88864%_ _%f88859%_))
          (let _%recur88873%_ ((_%rest88875%_ _%lst88861%_))
            (let* ((_%rest8887688884%_ _%rest88875%_)
                   (_%else8887888892%_ (lambda () _%iv88860%_))
                   (_%K8888088898%_
                    (lambda (_%rest88895%_ _%x88896%_)
                      (let ((__tmp91272 (_%recur88873%_ _%rest88895%_)))
                        (declare (not safe))
                        (_%f88864%_ _%x88896%_ __tmp91272)))))
              (if (pair? _%rest8887688884%_)
                  (let ((_%hd8888188901%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8887688884%_)))
                        (_%tl8888288903%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8887688884%_))))
                    (let* ((_%x88906%_ _%hd8888188901%_)
                           (_%rest88908%_ _%tl8888288903%_))
                      (_%K8888088898%_ _%rest88908%_ _%x88906%_)))
                  (_%else8887888892%_)))))))
    (define foldr2
      (lambda (_%f88842%_ _%iv88843%_ _%lst188844%_ _%lst288845%_)
        (if (procedure? _%f88842%_)
            (let ((_%f88849%_ _%f88842%_))
              (__foldr2 _%f88849%_ _%iv88843%_ _%lst188844%_ _%lst288845%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@299.15-299.16"
               'contract:
               'procedure?
               'value:
               _%f88842%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f88756%_ _%iv88757%_ _%lst188758%_ _%lst288759%_)
        (let ((_%f88762%_ _%f88756%_))
          (let _%recur88771%_ ((_%rest188773%_ _%lst188758%_)
                               (_%rest288774%_ _%lst288759%_))
            (let* ((_%rest18877588783%_ _%rest188773%_)
                   (_%else8877788791%_ (lambda () _%iv88757%_))
                   (_%K8877988830%_
                    (lambda (_%rest188794%_ _%x188795%_)
                      (let* ((_%rest28879688804%_ _%rest288774%_)
                             (_%else8879888812%_ (lambda () _%iv88757%_))
                             (_%K8880088818%_
                              (lambda (_%rest288815%_ _%x288816%_)
                                (let ((__tmp91273
                                       (_%recur88771%_
                                        _%rest188794%_
                                        _%rest288815%_)))
                                  (declare (not safe))
                                  (_%f88762%_
                                   _%x188795%_
                                   _%x288816%_
                                   __tmp91273)))))
                        (if (pair? _%rest28879688804%_)
                            (let ((_%hd8880188821%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28879688804%_)))
                                  (_%tl8880288823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28879688804%_))))
                              (let* ((_%x288826%_ _%hd8880188821%_)
                                     (_%rest288828%_ _%tl8880288823%_))
                                (_%K8880088818%_ _%rest288828%_ _%x288826%_)))
                            (_%else8879888812%_))))))
              (if (pair? _%rest18877588783%_)
                  (let ((_%hd8878088833%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18877588783%_)))
                        (_%tl8878188835%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18877588783%_))))
                    (let* ((_%x188838%_ _%hd8878088833%_)
                           (_%rest188840%_ _%tl8878188835%_))
                      (_%K8877988830%_ _%rest188840%_ _%x188838%_)))
                  (_%else8877788791%_)))))))
    (define foldr
      (lambda _g91275_
        (let ((_g91274_ (let () (declare (not safe)) (##length _g91275_))))
          (cond ((let () (declare (not safe)) (##fx= _g91274_ 3))
                 (apply foldr1 _g91275_))
                ((let () (declare (not safe)) (##fx= _g91274_ 4))
                 (apply foldr2 _g91275_))
                ((let () (declare (not safe)) (##fx>= _g91274_ 4))
                 (apply foldr* _g91275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g91275_))))))
    (define foldr*
      (lambda (_%f88725%_ _%iv88726%_ . _%rest88727%_)
        (if (procedure? _%f88725%_)
            (let ((_%f88731%_ _%f88725%_))
              (declare (not safe))
              (##apply __foldr* _%f88731%_ _%iv88726%_ _%rest88727%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@317.15-317.16"
               'contract:
               'procedure?
               'value:
               _%f88725%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f88704%_ _%iv88705%_ . _%rest88706%_)
        (let ((_%f88709%_ _%f88704%_))
          (let _%recur88718%_ ((_%rest88720%_ _%rest88706%_))
            (if (__andmap1 pair? _%rest88720%_)
                (let ((__tmp91276
                       (__foldr1
                        (lambda (_%xs88722%_ _%r88723%_)
                          (cons (car _%xs88722%_) _%r88723%_))
                        (list (_%recur88718%_ (map cdr _%rest88720%_)))
                        _%rest88720%_)))
                  (declare (not safe))
                  (##apply _%f88709%_ __tmp91276))
                _%iv88705%_)))))
    (define remove-nulls!
      (lambda (_%l88591%_)
        (let* ((_%l8859288605%_ _%l88591%_)
               (_%E8859688609%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8859288605%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8860188694%_
                 (lambda (_%r88692%_) (remove-nulls! _%r88692%_)))
                (_%K8859888681%_
                 (lambda (_%r88621%_)
                   (let _%loop88623%_ ((_%l88625%_ _%l88591%_)
                                       (_%r88626%_ _%r88621%_))
                     (let* ((_%r8862788640%_ _%r88626%_)
                            (_%E8863188644%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8862788640%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8863688671%_
                              (lambda (_%rr88669%_)
                                (let ((__tmp91278 _%l88625%_)
                                      (__tmp91277 (remove-nulls! _%rr88669%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp91278 __tmp91277))))
                             (_%K8863388658%_
                              (lambda (_%rr88656%_)
                                (_%loop88623%_ _%r88626%_ _%rr88656%_)))
                             (_%K8863288649%_ (lambda () '#!void)))
                         (if (pair? _%r8862788640%_)
                             (let ((_%tl8863888676%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8862788640%_)))
                                   (_%hd8863788674%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8862788640%_))))
                               (if (null? _%hd8863788674%_)
                                   (let ((_%rr88679%_ _%tl8863888676%_))
                                     (_%K8863688671%_ _%rr88679%_))
                                   (let ((_%rr88664%_ _%tl8863888676%_))
                                     (_%K8863388658%_ _%rr88664%_))))
                             '#!void))))
                   _%l88591%_))
                (_%K8859788614%_ (lambda () _%l88591%_)))
            (if (pair? _%l8859288605%_)
                (let ((_%tl8860388699%_
                       (let () (declare (not safe)) (##cdr _%l8859288605%_)))
                      (_%hd8860288697%_
                       (let () (declare (not safe)) (##car _%l8859288605%_))))
                  (if (null? _%hd8860288697%_)
                      (let ((_%r88702%_ _%tl8860388699%_))
                        (remove-nulls! _%r88702%_))
                      (let ((_%r88687%_ _%tl8860388699%_))
                        (_%K8859888681%_ _%r88687%_))))
                (_%K8859788614%_))))))
    (define append1!
      (lambda (_%l88576%_ _%x88577%_)
        (let ((_%l288580%_ (cons _%x88577%_ '())))
          (if (pair? _%l88576%_)
              (let ((_%l88582%_ _%l88576%_))
                (let ((__tmp91279
                       (let () (declare (not safe)) (##last-pair _%l88582%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp91279 _%l288580%_))
                _%l88582%_)
              _%l288580%_))))
    (define append-reverse-until
      (lambda (_%pred88560%_ _%rhead88561%_ _%tail88562%_)
        (if (procedure? _%pred88560%_)
            (let ((_%pred88566%_ _%pred88560%_))
              (__append-reverse-until
               _%pred88566%_
               _%rhead88561%_
               _%tail88562%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@357.29-357.33"
               'contract:
               'procedure?
               'value:
               _%pred88560%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred88502%_ _%rhead88503%_ _%tail88504%_)
        (let ((_%pred88507%_ _%pred88502%_))
          (let _%loop88516%_ ((_%rhead88518%_ _%rhead88503%_)
                              (_%tail88519%_ _%tail88504%_))
            (let* ((_%rhead8852188530%_ _%rhead88518%_)
                   (_%E8852488534%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8852188530%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8852888557%_ (lambda () (values '() _%tail88519%_)))
                    (_%K8852588541%_
                     (lambda (_%r88538%_ _%a88539%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred88507%_ _%a88539%_))
                           (values _%rhead88518%_ _%tail88519%_)
                           (_%loop88516%_
                            _%r88538%_
                            (cons _%a88539%_ _%tail88519%_))))))
                (let ((_%try-match8852388553%_
                       (lambda ()
                         (if (pair? _%rhead8852188530%_)
                             (let ((_%tl8852788546%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8852188530%_)))
                                   (_%hd8852688544%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8852188530%_))))
                               (let ((_%a88549%_ _%hd8852688544%_)
                                     (_%r88551%_ _%tl8852788546%_))
                                 (_%K8852588541%_ _%r88551%_ _%a88549%_)))
                             (_%E8852488534%_)))))
                  (if (null? _%rhead8852188530%_)
                      (_%K8852888557%_)
                      (_%try-match8852388553%_)))))))))
    (define andmap1
      (lambda (_%f88487%_ _%lst88488%_)
        (if (procedure? _%f88487%_)
            (let ((_%f88492%_ _%f88487%_)) (__andmap1 _%f88492%_ _%lst88488%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@368.16-368.17"
               'contract:
               'procedure?
               'value:
               _%f88487%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f88436%_ _%lst88437%_)
        (let ((_%f88440%_ _%f88436%_))
          (let _%lp88449%_ ((_%rest88451%_ _%lst88437%_))
            (let* ((_%rest8845388461%_ _%rest88451%_)
                   (_%else8845588469%_ (lambda () '#t))
                   (_%K8845788475%_
                    (lambda (_%rest88472%_ _%x88473%_)
                      (if (let () (declare (not safe)) (_%f88440%_ _%x88473%_))
                          (_%lp88449%_ _%rest88472%_)
                          '#f))))
              (if (pair? _%rest8845388461%_)
                  (let ((_%hd8845888478%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8845388461%_)))
                        (_%tl8845988480%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8845388461%_))))
                    (let* ((_%x88483%_ _%hd8845888478%_)
                           (_%rest88485%_ _%tl8845988480%_))
                      (_%K8845788475%_ _%rest88485%_ _%x88483%_)))
                  (_%else8845588469%_)))))))
    (define andmap2
      (lambda (_%f88420%_ _%lst188421%_ _%lst288422%_)
        (if (procedure? _%f88420%_)
            (let ((_%f88426%_ _%f88420%_))
              (__andmap2 _%f88426%_ _%lst188421%_ _%lst288422%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f88420%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f88334%_ _%lst188335%_ _%lst288336%_)
        (let ((_%f88339%_ _%f88334%_))
          (let _%lp88348%_ ((_%rest188350%_ _%lst188335%_)
                            (_%rest288351%_ _%lst288336%_))
            (let* ((_%rest18835388361%_ _%rest188350%_)
                   (_%else8835588369%_ (lambda () '#t))
                   (_%K8835788408%_
                    (lambda (_%rest188372%_ _%x188373%_)
                      (let* ((_%rest28837488382%_ _%rest288351%_)
                             (_%else8837688390%_ (lambda () '#t))
                             (_%K8837888396%_
                              (lambda (_%rest288393%_ _%x288394%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f88339%_ _%x188373%_ _%x288394%_))
                                    (_%lp88348%_ _%rest188372%_ _%rest288393%_)
                                    '#f))))
                        (if (pair? _%rest28837488382%_)
                            (let ((_%hd8837988399%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28837488382%_)))
                                  (_%tl8838088401%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28837488382%_))))
                              (let* ((_%x288404%_ _%hd8837988399%_)
                                     (_%rest288406%_ _%tl8838088401%_))
                                (_%K8837888396%_ _%rest288406%_ _%x288404%_)))
                            (_%else8837688390%_))))))
              (if (pair? _%rest18835388361%_)
                  (let ((_%hd8835888411%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18835388361%_)))
                        (_%tl8835988413%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18835388361%_))))
                    (let* ((_%x188416%_ _%hd8835888411%_)
                           (_%rest188418%_ _%tl8835988413%_))
                      (_%K8835788408%_ _%rest188418%_ _%x188416%_)))
                  (_%else8835588369%_)))))))
    (define andmap
      (lambda _g91281_
        (let ((_g91280_ (let () (declare (not safe)) (##length _g91281_))))
          (cond ((let () (declare (not safe)) (##fx= _g91280_ 2))
                 (apply andmap1 _g91281_))
                ((let () (declare (not safe)) (##fx= _g91280_ 3))
                 (apply andmap2 _g91281_))
                ((let () (declare (not safe)) (##fx>= _g91280_ 3))
                 (apply andmap* _g91281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g91281_))))))
    (define andmap*
      (lambda (_%f88307%_ . _%rest88308%_)
        (if (procedure? _%f88307%_)
            (let ((_%f88312%_ _%f88307%_))
              (declare (not safe))
              (##apply __andmap* _%f88312%_ _%rest88308%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@397.16-397.17"
               'contract:
               'procedure?
               'value:
               _%f88307%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f88289%_ . _%rest88290%_)
        (let ((_%f88293%_ _%f88289%_))
          (let _%recur88302%_ ((_%rest88304%_ _%rest88290%_))
            (if (__andmap1 pair? _%rest88304%_)
                (if (let ((__tmp91282 (map car _%rest88304%_)))
                      (declare (not safe))
                      (##apply _%f88293%_ __tmp91282))
                    (_%recur88302%_ (map cdr _%rest88304%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f88274%_ _%lst88275%_)
        (if (procedure? _%f88274%_)
            (let ((_%f88279%_ _%f88274%_)) (__ormap1 _%f88279%_ _%lst88275%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.15-406.16"
               'contract:
               'procedure?
               'value:
               _%f88274%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f88221%_ _%lst88222%_)
        (let ((_%f88225%_ _%f88221%_))
          (let _%lp88234%_ ((_%rest88236%_ _%lst88222%_))
            (let* ((_%rest8823788245%_ _%rest88236%_)
                   (_%else8823988253%_ (lambda () '#f))
                   (_%K8824188262%_
                    (lambda (_%rest88256%_ _%x88257%_)
                      (let ((_%$e88259%_
                             (let ()
                               (declare (not safe))
                               (_%f88225%_ _%x88257%_))))
                        (if _%$e88259%_
                            _%$e88259%_
                            (_%lp88234%_ _%rest88256%_))))))
              (if (pair? _%rest8823788245%_)
                  (let ((_%hd8824288265%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8823788245%_)))
                        (_%tl8824388267%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8823788245%_))))
                    (let* ((_%x88270%_ _%hd8824288265%_)
                           (_%rest88272%_ _%tl8824388267%_))
                      (_%K8824188262%_ _%rest88272%_ _%x88270%_)))
                  (_%else8823988253%_)))))))
    (define ormap2
      (lambda (_%f88205%_ _%lst188206%_ _%lst288207%_)
        (if (procedure? _%f88205%_)
            (let ((_%f88211%_ _%f88205%_))
              (__ormap2 _%f88211%_ _%lst188206%_ _%lst288207%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.15-413.16"
               'contract:
               'procedure?
               'value:
               _%f88205%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f88117%_ _%lst188118%_ _%lst288119%_)
        (let ((_%f88122%_ _%f88117%_))
          (let _%lp88131%_ ((_%rest188133%_ _%lst188118%_)
                            (_%rest288134%_ _%lst288119%_))
            (let* ((_%rest18813588143%_ _%rest188133%_)
                   (_%else8813788151%_ (lambda () '#f))
                   (_%K8813988193%_
                    (lambda (_%rest188154%_ _%x188155%_)
                      (let* ((_%rest28815688164%_ _%rest288134%_)
                             (_%else8815888172%_ (lambda () '#f))
                             (_%K8816088181%_
                              (lambda (_%rest288175%_ _%x288176%_)
                                (let ((_%$e88178%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f88122%_
                                          _%x188155%_
                                          _%x288176%_))))
                                  (if _%$e88178%_
                                      _%$e88178%_
                                      (_%lp88131%_
                                       _%rest188154%_
                                       _%rest288175%_))))))
                        (if (pair? _%rest28815688164%_)
                            (let ((_%hd8816188184%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28815688164%_)))
                                  (_%tl8816288186%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28815688164%_))))
                              (let* ((_%x288189%_ _%hd8816188184%_)
                                     (_%rest288191%_ _%tl8816288186%_))
                                (_%K8816088181%_ _%rest288191%_ _%x288189%_)))
                            (_%else8815888172%_))))))
              (if (pair? _%rest18813588143%_)
                  (let ((_%hd8814088196%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18813588143%_)))
                        (_%tl8814188198%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18813588143%_))))
                    (let* ((_%x188201%_ _%hd8814088196%_)
                           (_%rest188203%_ _%tl8814188198%_))
                      (_%K8813988193%_ _%rest188203%_ _%x188201%_)))
                  (_%else8813788151%_)))))))
    (define ormap
      (lambda _g91284_
        (let ((_g91283_ (let () (declare (not safe)) (##length _g91284_))))
          (cond ((let () (declare (not safe)) (##fx= _g91283_ 2))
                 (apply ormap1 _g91284_))
                ((let () (declare (not safe)) (##fx= _g91283_ 3))
                 (apply ormap2 _g91284_))
                ((let () (declare (not safe)) (##fx>= _g91283_ 3))
                 (apply ormap* _g91284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g91284_))))))
    (define ormap*
      (lambda (_%f88090%_ . _%rest88091%_)
        (if (procedure? _%f88090%_)
            (let ((_%f88095%_ _%f88090%_))
              (declare (not safe))
              (##apply __ormap* _%f88095%_ _%rest88091%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@431.15-431.16"
               'contract:
               'procedure?
               'value:
               _%f88090%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f88070%_ . _%rest88071%_)
        (let ((_%f88074%_ _%f88070%_))
          (let _%recur88083%_ ((_%rest88085%_ _%rest88071%_))
            (if (__andmap1 pair? _%rest88085%_)
                (let ((_%$e88087%_
                       (let ((__tmp91285 (map car _%rest88085%_)))
                         (declare (not safe))
                         (##apply _%f88074%_ __tmp91285))))
                  (if _%$e88087%_
                      _%$e88087%_
                      (_%recur88083%_ (map cdr _%rest88085%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f88055%_ _%lst88056%_)
        (if (procedure? _%f88055%_)
            (let ((_%f88060%_ _%f88055%_))
              (__filter-map1 _%f88060%_ _%lst88056%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.20-438.21"
               'contract:
               'procedure?
               'value:
               _%f88055%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f87998%_ _%lst87999%_)
        (let ((_%f88002%_ _%f87998%_))
          (let _%recur88011%_ ((_%rest88013%_ _%lst87999%_))
            (let* ((_%rest8801588023%_ _%rest88013%_)
                   (_%else8801788031%_ (lambda () '()))
                   (_%K8801988043%_
                    (lambda (_%rest88034%_ _%x88035%_)
                      (let ((_%$e88037%_
                             (let ()
                               (declare (not safe))
                               (_%f88002%_ _%x88035%_))))
                        (if _%$e88037%_
                            ((lambda (_%r88040%_)
                               (cons _%r88040%_
                                     (_%recur88011%_ _%rest88034%_)))
                             _%$e88037%_)
                            (_%recur88011%_ _%rest88034%_))))))
              (if (pair? _%rest8801588023%_)
                  (let ((_%hd8802088046%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8801588023%_)))
                        (_%tl8802188048%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8801588023%_))))
                    (let* ((_%x88051%_ _%hd8802088046%_)
                           (_%rest88053%_ _%tl8802188048%_))
                      (_%K8801988043%_ _%rest88053%_ _%x88051%_)))
                  (_%else8801788031%_)))))))
    (define filter-map2
      (lambda (_%f87982%_ _%lst187983%_ _%lst287984%_)
        (if (procedure? _%f87982%_)
            (let ((_%f87988%_ _%f87982%_))
              (__filter-map2 _%f87988%_ _%lst187983%_ _%lst287984%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@449.20-449.21"
               'contract:
               'procedure?
               'value:
               _%f87982%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f87890%_ _%lst187891%_ _%lst287892%_)
        (let ((_%f87895%_ _%f87890%_))
          (let _%recur87904%_ ((_%rest187906%_ _%lst187891%_)
                               (_%rest287907%_ _%lst287892%_))
            (let* ((_%rest18790987917%_ _%rest187906%_)
                   (_%else8791187925%_ (lambda () '()))
                   (_%K8791387970%_
                    (lambda (_%rest187928%_ _%x187929%_)
                      (let* ((_%rest28793087938%_ _%rest287907%_)
                             (_%else8793287946%_ (lambda () '()))
                             (_%K8793487958%_
                              (lambda (_%rest287949%_ _%x287950%_)
                                (let ((_%$e87952%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f87895%_
                                          _%x187929%_
                                          _%x287950%_))))
                                  (if _%$e87952%_
                                      ((lambda (_%r87955%_)
                                         (cons _%r87955%_
                                               (_%recur87904%_
                                                _%rest187928%_
                                                _%rest287949%_)))
                                       _%$e87952%_)
                                      (_%recur87904%_
                                       _%rest187928%_
                                       _%rest287949%_))))))
                        (if (pair? _%rest28793087938%_)
                            (let ((_%hd8793587961%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28793087938%_)))
                                  (_%tl8793687963%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28793087938%_))))
                              (let* ((_%x287966%_ _%hd8793587961%_)
                                     (_%rest287968%_ _%tl8793687963%_))
                                (_%K8793487958%_ _%rest287968%_ _%x287966%_)))
                            (_%else8793287946%_))))))
              (if (pair? _%rest18790987917%_)
                  (let ((_%hd8791487973%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18790987917%_)))
                        (_%tl8791587975%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18790987917%_))))
                    (let* ((_%x187978%_ _%hd8791487973%_)
                           (_%rest187980%_ _%tl8791587975%_))
                      (_%K8791387970%_ _%rest187980%_ _%x187978%_)))
                  (_%else8791187925%_)))))))
    (define filter-map
      (lambda _g91287_
        (let ((_g91286_ (let () (declare (not safe)) (##length _g91287_))))
          (cond ((let () (declare (not safe)) (##fx= _g91286_ 2))
                 (apply filter-map1 _g91287_))
                ((let () (declare (not safe)) (##fx= _g91286_ 3))
                 (apply filter-map2 _g91287_))
                ((let () (declare (not safe)) (##fx>= _g91286_ 3))
                 (apply filter-map* _g91287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g91287_))))))
    (define filter-map*
      (lambda (_%f87863%_ . _%rest87864%_)
        (if (procedure? _%f87863%_)
            (let ((_%f87868%_ _%f87863%_))
              (declare (not safe))
              (##apply __filter-map* _%f87868%_ _%rest87864%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f87863%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f87839%_ . _%rest87840%_)
        (let ((_%f87843%_ _%f87839%_))
          (let _%recur87852%_ ((_%rest87854%_ _%rest87840%_))
            (if (__andmap1 pair? _%rest87854%_)
                (let ((_%$e87857%_
                       (let ((__tmp91288 (map car _%rest87854%_)))
                         (declare (not safe))
                         (##apply _%f87843%_ __tmp91288))))
                  (if _%$e87857%_
                      ((lambda (_%r87860%_)
                         (cons _%r87860%_
                               (_%recur87852%_ (map cdr _%rest87854%_))))
                       _%$e87857%_)
                      (_%recur87852%_ (map cdr _%rest87854%_))))
                '())))))
    (define agetq__%
      (lambda (_%key87815%_ _%lst87817%_ _%default87819%_)
        (let ((_%$e87822%_
               (if (pair? _%lst87817%_) (assq _%key87815%_ _%lst87817%_) '#f)))
          (if _%$e87822%_
              (cdr _%$e87822%_)
              (if (procedure? _%default87819%_)
                  (_%default87819%_ _%key87815%_)
                  _%default87819%_)))))
    (define agetq__0
      (lambda (_%key87830%_ _%lst87831%_)
        (let ((_%default87833%_ '#f))
          (agetq__% _%key87830%_ _%lst87831%_ _%default87833%_))))
    (define agetq
      (lambda _g91290_
        (let ((_g91289_ (let () (declare (not safe)) (##length _g91290_))))
          (cond ((let () (declare (not safe)) (##fx= _g91289_ 2))
                 (apply agetq__0 _g91290_))
                ((let () (declare (not safe)) (##fx= _g91289_ 3))
                 (apply agetq__% _g91290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g91290_))))))
    (define agetv__%
      (lambda (_%key87790%_ _%lst87792%_ _%default87794%_)
        (let ((_%$e87797%_
               (if (pair? _%lst87792%_) (assv _%key87790%_ _%lst87792%_) '#f)))
          (if _%$e87797%_
              (cdr _%$e87797%_)
              (if (procedure? _%default87794%_)
                  (_%default87794%_ _%key87790%_)
                  _%default87794%_)))))
    (define agetv__0
      (lambda (_%key87805%_ _%lst87806%_)
        (let ((_%default87808%_ '#f))
          (agetv__% _%key87805%_ _%lst87806%_ _%default87808%_))))
    (define agetv
      (lambda _g91292_
        (let ((_g91291_ (let () (declare (not safe)) (##length _g91292_))))
          (cond ((let () (declare (not safe)) (##fx= _g91291_ 2))
                 (apply agetv__0 _g91292_))
                ((let () (declare (not safe)) (##fx= _g91291_ 3))
                 (apply agetv__% _g91292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g91292_))))))
    (define aget__%
      (lambda (_%key87765%_ _%lst87767%_ _%default87769%_)
        (let ((_%$e87772%_
               (if (pair? _%lst87767%_)
                   (assoc _%key87765%_ _%lst87767%_)
                   '#f)))
          (if _%$e87772%_
              (cdr _%$e87772%_)
              (if (procedure? _%default87769%_)
                  (_%default87769%_ _%key87765%_)
                  _%default87769%_)))))
    (define aget__0
      (lambda (_%key87780%_ _%lst87781%_)
        (let ((_%default87783%_ '#f))
          (aget__% _%key87780%_ _%lst87781%_ _%default87783%_))))
    (define aget
      (lambda _g91294_
        (let ((_g91293_ (let () (declare (not safe)) (##length _g91294_))))
          (cond ((let () (declare (not safe)) (##fx= _g91293_ 2))
                 (apply aget__0 _g91294_))
                ((let () (declare (not safe)) (##fx= _g91293_ 3))
                 (apply aget__% _g91294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g91294_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key87694%_ _%lst87696%_ _%default87698%_)
        (let _%lp87701%_ ((_%rest87704%_ _%lst87696%_))
          (let* ((_%rest8770687716%_ _%rest87704%_)
                 (_%else8770887724%_
                  (lambda ()
                    (if (procedure? _%default87698%_)
                        (_%default87698%_ _%key87694%_)
                        _%default87698%_)))
                 (_%K8771087733%_
                  (lambda (_%rest87727%_ _%v87728%_ _%k87730%_)
                    (if (eq? _%k87730%_ _%key87694%_)
                        _%v87728%_
                        (_%lp87701%_ _%rest87727%_)))))
            (if (pair? _%rest8770687716%_)
                (let ((_%hd8771187736%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8770687716%_)))
                      (_%tl8771287738%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8770687716%_))))
                  (let ((_%k87741%_ _%hd8771187736%_))
                    (if (pair? _%tl8771287738%_)
                        (let ((_%hd8771387743%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8771287738%_)))
                              (_%tl8771487745%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8771287738%_))))
                          (let* ((_%v87748%_ _%hd8771387743%_)
                                 (_%rest87750%_ _%tl8771487745%_))
                            (_%K8771087733%_
                             _%rest87750%_
                             _%v87748%_
                             _%k87741%_)))
                        (_%else8770887724%_))))
                (_%else8770887724%_))))))
    (define pgetq__0
      (lambda (_%key87755%_ _%lst87756%_)
        (let ((_%default87758%_ '#f))
          (pgetq__% _%key87755%_ _%lst87756%_ _%default87758%_))))
    (define pgetq
      (lambda _g91296_
        (let ((_g91295_ (let () (declare (not safe)) (##length _g91296_))))
          (cond ((let () (declare (not safe)) (##fx= _g91295_ 2))
                 (apply pgetq__0 _g91296_))
                ((let () (declare (not safe)) (##fx= _g91295_ 3))
                 (apply pgetq__% _g91296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g91296_))))))
    (define pgetv__%
      (lambda (_%key87623%_ _%lst87625%_ _%default87627%_)
        (let _%lp87630%_ ((_%rest87633%_ _%lst87625%_))
          (let* ((_%rest8763587645%_ _%rest87633%_)
                 (_%else8763787653%_
                  (lambda ()
                    (if (procedure? _%default87627%_)
                        (_%default87627%_ _%key87623%_)
                        _%default87627%_)))
                 (_%K8763987662%_
                  (lambda (_%rest87656%_ _%v87657%_ _%k87659%_)
                    (if (eqv? _%k87659%_ _%key87623%_)
                        _%v87657%_
                        (_%lp87630%_ _%rest87656%_)))))
            (if (pair? _%rest8763587645%_)
                (let ((_%hd8764087665%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8763587645%_)))
                      (_%tl8764187667%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8763587645%_))))
                  (let ((_%k87670%_ _%hd8764087665%_))
                    (if (pair? _%tl8764187667%_)
                        (let ((_%hd8764287672%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8764187667%_)))
                              (_%tl8764387674%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8764187667%_))))
                          (let* ((_%v87677%_ _%hd8764287672%_)
                                 (_%rest87679%_ _%tl8764387674%_))
                            (_%K8763987662%_
                             _%rest87679%_
                             _%v87677%_
                             _%k87670%_)))
                        (_%else8763787653%_))))
                (_%else8763787653%_))))))
    (define pgetv__0
      (lambda (_%key87684%_ _%lst87685%_)
        (let ((_%default87687%_ '#f))
          (pgetv__% _%key87684%_ _%lst87685%_ _%default87687%_))))
    (define pgetv
      (lambda _g91298_
        (let ((_g91297_ (let () (declare (not safe)) (##length _g91298_))))
          (cond ((let () (declare (not safe)) (##fx= _g91297_ 2))
                 (apply pgetv__0 _g91298_))
                ((let () (declare (not safe)) (##fx= _g91297_ 3))
                 (apply pgetv__% _g91298_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g91298_))))))
    (define pget__%
      (lambda (_%key87552%_ _%lst87554%_ _%default87556%_)
        (let _%lp87559%_ ((_%rest87562%_ _%lst87554%_))
          (let* ((_%rest8756487574%_ _%rest87562%_)
                 (_%else8756687582%_
                  (lambda ()
                    (if (procedure? _%default87556%_)
                        (_%default87556%_ _%key87552%_)
                        _%default87556%_)))
                 (_%K8756887591%_
                  (lambda (_%rest87585%_ _%v87586%_ _%k87588%_)
                    (if (equal? _%k87588%_ _%key87552%_)
                        _%v87586%_
                        (_%lp87559%_ _%rest87585%_)))))
            (if (pair? _%rest8756487574%_)
                (let ((_%hd8756987594%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8756487574%_)))
                      (_%tl8757087596%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8756487574%_))))
                  (let ((_%k87599%_ _%hd8756987594%_))
                    (if (pair? _%tl8757087596%_)
                        (let ((_%hd8757187601%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8757087596%_)))
                              (_%tl8757287603%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8757087596%_))))
                          (let* ((_%v87606%_ _%hd8757187601%_)
                                 (_%rest87608%_ _%tl8757287603%_))
                            (_%K8756887591%_
                             _%rest87608%_
                             _%v87606%_
                             _%k87599%_)))
                        (_%else8756687582%_))))
                (_%else8756687582%_))))))
    (define pget__0
      (lambda (_%key87613%_ _%lst87614%_)
        (let ((_%default87616%_ '#f))
          (pget__% _%key87613%_ _%lst87614%_ _%default87616%_))))
    (define pget
      (lambda _g91300_
        (let ((_g91299_ (let () (declare (not safe)) (##length _g91300_))))
          (cond ((let () (declare (not safe)) (##fx= _g91299_ 2))
                 (apply pget__0 _g91300_))
                ((let () (declare (not safe)) (##fx= _g91299_ 3))
                 (apply pget__% _g91300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g91300_))))))
    (define find
      (lambda (_%pred87536%_ _%lst87537%_)
        (if (procedure? _%pred87536%_)
            (let ((_%pred87541%_ _%pred87536%_))
              (__find _%pred87541%_ _%lst87537%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.13-517.17"
               'contract:
               'procedure?
               'value:
               _%pred87536%_)
              '#!void))))
    (define __find
      (lambda (_%pred87519%_ _%lst87520%_)
        (let* ((_%pred87523%_ _%pred87519%_)
               (_%$e87532%_ (__memf _%pred87523%_ _%lst87520%_)))
          (if _%$e87532%_
              (let () (declare (not safe)) (##car _%$e87532%_))
              '#f))))
    (define memf
      (lambda (_%proc87504%_ _%lst87505%_)
        (if (procedure? _%proc87504%_)
            (let ((_%proc87509%_ _%proc87504%_))
              (__memf _%proc87509%_ _%lst87505%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@522.13-522.17"
               'contract:
               'procedure?
               'value:
               _%proc87504%_)
              '#!void))))
    (define __memf
      (lambda (_%proc87454%_ _%lst87455%_)
        (let ((_%proc87458%_ _%proc87454%_))
          (let _%lp87467%_ ((_%rest87469%_ _%lst87455%_))
            (let* ((_%rest8747087478%_ _%rest87469%_)
                   (_%else8747287486%_ (lambda () '#f))
                   (_%K8747487492%_
                    (lambda (_%tl87489%_ _%hd87490%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc87458%_ _%hd87490%_))
                          _%rest87469%_
                          (_%lp87467%_ _%tl87489%_)))))
              (if (pair? _%rest8747087478%_)
                  (let ((_%hd8747587495%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8747087478%_)))
                        (_%tl8747687497%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8747087478%_))))
                    (let* ((_%hd87500%_ _%hd8747587495%_)
                           (_%tl87502%_ _%tl8747687497%_))
                      (_%K8747487492%_ _%tl87502%_ _%hd87500%_)))
                  (_%else8747287486%_)))))))
    (define remove1
      (lambda (_%el87407%_ _%lst87409%_)
        (let _%lp87412%_ ((_%rest87415%_ _%lst87409%_) (_%r87417%_ '()))
          (let* ((_%rest8741987427%_ _%rest87415%_)
                 (_%else8742187435%_ (lambda () _%lst87409%_))
                 (_%K8742387442%_
                  (lambda (_%rest87438%_ _%hd87439%_)
                    (if (equal? _%el87407%_ _%hd87439%_)
                        (__foldl1 cons _%rest87438%_ _%r87417%_)
                        (_%lp87412%_
                         _%rest87438%_
                         (cons _%hd87439%_ _%r87417%_))))))
            (if (pair? _%rest8741987427%_)
                (let ((_%hd8742487445%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8741987427%_)))
                      (_%tl8742587447%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8741987427%_))))
                  (let* ((_%hd87450%_ _%hd8742487445%_)
                         (_%rest87452%_ _%tl8742587447%_))
                    (_%K8742387442%_ _%rest87452%_ _%hd87450%_)))
                (_%else8742187435%_))))))
    (define remv1
      (lambda (_%el87360%_ _%lst87362%_)
        (let _%lp87365%_ ((_%rest87368%_ _%lst87362%_) (_%r87370%_ '()))
          (let* ((_%rest8737287380%_ _%rest87368%_)
                 (_%else8737487388%_ (lambda () _%lst87362%_))
                 (_%K8737687395%_
                  (lambda (_%rest87391%_ _%hd87392%_)
                    (if (eqv? _%el87360%_ _%hd87392%_)
                        (__foldl1 cons _%rest87391%_ _%r87370%_)
                        (_%lp87365%_
                         _%rest87391%_
                         (cons _%hd87392%_ _%r87370%_))))))
            (if (pair? _%rest8737287380%_)
                (let ((_%hd8737787398%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8737287380%_)))
                      (_%tl8737887400%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8737287380%_))))
                  (let* ((_%hd87403%_ _%hd8737787398%_)
                         (_%rest87405%_ _%tl8737887400%_))
                    (_%K8737687395%_ _%rest87405%_ _%hd87403%_)))
                (_%else8737487388%_))))))
    (define remq1
      (lambda (_%el87313%_ _%lst87315%_)
        (let _%lp87318%_ ((_%rest87321%_ _%lst87315%_) (_%r87323%_ '()))
          (let* ((_%rest8732587333%_ _%rest87321%_)
                 (_%else8732787341%_ (lambda () _%lst87315%_))
                 (_%K8732987348%_
                  (lambda (_%rest87344%_ _%hd87345%_)
                    (if (eq? _%el87313%_ _%hd87345%_)
                        (__foldl1 cons _%rest87344%_ _%r87323%_)
                        (_%lp87318%_
                         _%rest87344%_
                         (cons _%hd87345%_ _%r87323%_))))))
            (if (pair? _%rest8732587333%_)
                (let ((_%hd8733087351%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8732587333%_)))
                      (_%tl8733187353%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8732587333%_))))
                  (let* ((_%hd87356%_ _%hd8733087351%_)
                         (_%rest87358%_ _%tl8733187353%_))
                    (_%K8732987348%_ _%rest87358%_ _%hd87356%_)))
                (_%else8732787341%_))))))
    (define remf
      (lambda (_%proc87298%_ _%lst87299%_)
        (if (procedure? _%proc87298%_)
            (let ((_%proc87303%_ _%proc87298%_))
              (__remf _%proc87303%_ _%lst87299%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@544.13-544.17"
               'contract:
               'procedure?
               'value:
               _%proc87298%_)
              '#!void))))
    (define __remf
      (lambda (_%proc87247%_ _%lst87248%_)
        (let ((_%proc87251%_ _%proc87247%_))
          (let _%lp87260%_ ((_%rest87262%_ _%lst87248%_) (_%r87263%_ '()))
            (let* ((_%rest8726487272%_ _%rest87262%_)
                   (_%else8726687280%_ (lambda () _%lst87248%_))
                   (_%K8726887286%_
                    (lambda (_%rest87283%_ _%hd87284%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc87251%_ _%hd87284%_))
                          (__foldl1 cons _%rest87283%_ _%r87263%_)
                          (_%lp87260%_
                           _%rest87283%_
                           (cons _%hd87284%_ _%r87263%_))))))
              (if (pair? _%rest8726487272%_)
                  (let ((_%hd8726987289%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8726487272%_)))
                        (_%tl8727087291%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8726487272%_))))
                    (let* ((_%hd87294%_ _%hd8726987289%_)
                           (_%rest87296%_ _%tl8727087291%_))
                      (_%K8726887286%_ _%rest87296%_ _%hd87294%_)))
                  (_%else8726687280%_)))))))
    (define 1+
      (lambda (_%x87233%_)
        (if (number? _%x87233%_)
            (let ((_%x87237%_ _%x87233%_)) (__1+ _%x87237%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.11-553.12"
               'contract:
               'number?
               'value:
               _%x87233%_)
              '#!void))))
    (define __1+
      (lambda (_%x87221%_) (let ((_%x87224%_ _%x87221%_)) (+ _%x87224%_ '1))))
    (define 1-
      (lambda (_%x87207%_)
        (if (number? _%x87207%_)
            (let ((_%x87211%_ _%x87207%_)) (__1- _%x87211%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@561.11-561.12"
               'contract:
               'number?
               'value:
               _%x87207%_)
              '#!void))))
    (define __1-
      (lambda (_%x87195%_) (let ((_%x87198%_ _%x87195%_)) (- _%x87198%_ '1))))
    (define fx1+
      (lambda (_%x87181%_)
        (if (fixnum? _%x87181%_)
            (let ((_%x87185%_ _%x87181%_)) (__fx1+ _%x87185%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.13-569.14"
               'contract:
               'fixnum?
               'value:
               _%x87181%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x87169%_)
        (let ((_%x87172%_ _%x87169%_))
          (declare (not safe))
          (##fx+ _%x87172%_ '1))))
    (define fx1-
      (lambda (_%x87155%_)
        (if (fixnum? _%x87155%_)
            (let ((_%x87159%_ _%x87155%_)) (__fx1- _%x87159%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.14"
               'contract:
               'fixnum?
               'value:
               _%x87155%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x87143%_)
        (let ((_%x87146%_ _%x87143%_))
          (declare (not safe))
          (##fx- _%x87146%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x87140%_)
        (if (fixnum? _%x87140%_)
            (let () (declare (not safe)) (##fx>= _%x87140%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x87137%_)
        (if (fixnum? _%x87137%_)
            (let () (declare (not safe)) (##fx> _%x87137%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x87134%_)
        (let () (declare (not safe)) (##fx= _%x87134%_ '0))))
    (define fx<0?
      (lambda (_%x87131%_)
        (if (fixnum? _%x87131%_)
            (let () (declare (not safe)) (##fx< _%x87131%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x87128%_)
        (if (fixnum? _%x87128%_)
            (let () (declare (not safe)) (##fx<= _%x87128%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x87125%_)
        (if (symbol? _%x87125%_) (not (uninterned-symbol? _%x87125%_)) '#f)))
    (define display-as-string
      (lambda (_%x87110%_ _%port87111%_)
        (if (output-port? _%port87111%_)
            (let ((_%port87115%_ _%port87111%_))
              (__display-as-string _%x87110%_ _%port87115%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@605.28-605.32"
               'contract:
               'output-port?
               'value:
               _%port87111%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x87067%_ _%port87068%_)
        (let ((_%port87071%_ _%port87068%_))
          (if (or (string? _%x87067%_)
                  (symbol? _%x87067%_)
                  (keyword? _%x87067%_)
                  (number? _%x87067%_)
                  (char? _%x87067%_))
              (display _%x87067%_ _%port87071%_)
              (if (pair? _%x87067%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x87067%_))
                     _%port87071%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x87067%_))
                     _%port87071%_))
                  (if (vector? _%x87067%_)
                      (vector-for-each
                       (lambda (_%g8709487096%_)
                         (__display-as-string _%g8709487096%_ _%port87071%_))
                       _%x87067%_)
                      (if (or (null? _%x87067%_)
                              (eq? _%x87067%_ '#!void)
                              (eof-object? _%x87067%_)
                              (boolean? _%x87067%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x87067%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x87050%_)
        (if (string? _%x87050%_)
            _%x87050%_
            (if (symbol? _%x87050%_)
                (let () (declare (not safe)) (##symbol->string _%x87050%_))
                (if (keyword? _%x87050%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x87050%_))
                    (if (number? _%x87050%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x87050%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g8705687058%_)
                           (__display-as-string
                            _%x87050%_
                            _%g8705687058%_)))))))))
    (define as-string__1
      (lambda _%args87061%_
        (call-with-output-string
         '()
         (lambda (_%g8706287064%_)
           (__display-as-string _%args87061%_ _%g8706287064%_)))))
    (define as-string
      (lambda _g91302_
        (let ((_g91301_ (let () (declare (not safe)) (##length _g91302_))))
          (cond ((let () (declare (not safe)) (##fx= _g91301_ 1))
                 (apply as-string__0 _g91302_))
                (#t
                 (apply (lambda _%args87061%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args87061%_)))
                        _g91302_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g91302_))))))
    (define make-symbol__0
      (lambda (_%x87046%_)
        (if (interned-symbol? _%x87046%_)
            _%x87046%_
            (let ((__tmp91303 (as-string__0 _%x87046%_)))
              (declare (not safe))
              (##string->symbol __tmp91303)))))
    (define make-symbol__1
      (lambda _%args87048%_
        (let ((__tmp91304
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args87048%_))))
          (declare (not safe))
          (##string->symbol __tmp91304))))
    (define make-symbol
      (lambda _g91306_
        (let ((_g91305_ (let () (declare (not safe)) (##length _g91306_))))
          (cond ((let () (declare (not safe)) (##fx= _g91305_ 1))
                 (apply make-symbol__0 _g91306_))
                (#t
                 (apply (lambda _%args87048%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args87048%_)))
                        _g91306_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g91306_))))))
    (define make-keyword__0
      (lambda (_%x87042%_)
        (if (interned-keyword? _%x87042%_)
            _%x87042%_
            (let ((__tmp91307 (as-string__0 _%x87042%_)))
              (declare (not safe))
              (##string->keyword __tmp91307)))))
    (define make-keyword__1
      (lambda _%args87044%_
        (let ((__tmp91308
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args87044%_))))
          (declare (not safe))
          (##string->keyword __tmp91308))))
    (define make-keyword
      (lambda _g91310_
        (let ((_g91309_ (let () (declare (not safe)) (##length _g91310_))))
          (cond ((let () (declare (not safe)) (##fx= _g91309_ 1))
                 (apply make-keyword__0 _g91310_))
                (#t
                 (apply (lambda _%args87044%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args87044%_)))
                        _g91310_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g91310_))))))
    (define interned-keyword?
      (lambda (_%x87039%_)
        (if (keyword? _%x87039%_) (not (uninterned-keyword? _%x87039%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym87025%_)
        (if (symbol? _%sym87025%_)
            (let ((_%sym87029%_ _%sym87025%_))
              (__symbol->keyword _%sym87029%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@648.24-648.27"
               'contract:
               'symbol?
               'value:
               _%sym87025%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym87013%_)
        (let ((_%sym87016%_ _%sym87013%_))
          (if (uninterned-symbol? _%sym87016%_)
              (let ((__tmp91311
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym87016%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp91311))
              (let ((__tmp91312
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym87016%_))))
                (declare (not safe))
                (##string->keyword __tmp91312))))))
    (define keyword->symbol
      (lambda (_%sym86999%_)
        (if (keyword? _%sym86999%_)
            (let ((_%sym87003%_ _%sym86999%_))
              (__keyword->symbol _%sym87003%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.24-654.27"
               'contract:
               'keyword?
               'value:
               _%sym86999%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym86987%_)
        (let ((_%sym86990%_ _%sym86987%_))
          (if (uninterned-keyword? _%sym86990%_)
              (let ((__tmp91313
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym86990%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp91313))
              (let ((__tmp91314
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym86990%_))))
                (declare (not safe))
                (##string->symbol __tmp91314))))))
    (define bytes->string__%
      (lambda (_%bstr86952%_ _%enc86953%_)
        (if (u8vector? _%bstr86952%_)
            (let ((_%bstr86957%_ _%bstr86952%_))
              (if (symbol? _%enc86953%_)
                  (let ((_%enc86967%_ _%enc86953%_))
                    (__bytes->string__% _%bstr86957%_ _%enc86967%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@661.25-661.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc86953%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.22-660.26"
               'contract:
               'u8vector?
               'value:
               _%bstr86952%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr86980%_)
        (let ((_%enc86982%_ 'UTF-8))
          (bytes->string__% _%bstr86980%_ _%enc86982%_))))
    (define bytes->string
      (lambda _g91316_
        (let ((_g91315_ (let () (declare (not safe)) (##length _g91316_))))
          (cond ((let () (declare (not safe)) (##fx= _g91315_ 1))
                 (apply bytes->string__0 _g91316_))
                ((let () (declare (not safe)) (##fx= _g91315_ 2))
                 (apply bytes->string__% _g91316_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g91316_))))))
    (define __bytes->string__%
      (lambda (_%bstr86911%_ _%enc86912%_)
        (let* ((_%bstr86915%_ _%bstr86911%_) (_%enc86923%_ _%enc86912%_))
          (if (eq? _%enc86923%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr86915%_))
              (let* ((_%in86932%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc86923%_
                                   (cons 'init: (cons _%bstr86915%_ '()))))))
                     (_%len86934%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr86915%_)))
                     (_%out86936%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len86934%_)))
                     (_%n86938%_
                      (read-substring
                       _%out86936%_
                       '0
                       _%len86934%_
                       _%in86932%_)))
                (string-shrink! _%out86936%_ _%n86938%_)
                _%out86936%_)))))
    (define __bytes->string__0
      (lambda (_%bstr86944%_)
        (let ((_%enc86946%_ 'UTF-8))
          (__bytes->string__% _%bstr86944%_ _%enc86946%_))))
    (define __bytes->string
      (lambda _g91318_
        (let ((_g91317_ (let () (declare (not safe)) (##length _g91318_))))
          (cond ((let () (declare (not safe)) (##fx= _g91317_ 1))
                 (apply __bytes->string__0 _g91318_))
                ((let () (declare (not safe)) (##fx= _g91317_ 2))
                 (apply __bytes->string__% _g91318_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g91318_))))))
    (define string->bytes__%
      (lambda (_%str86875%_ _%enc86876%_)
        (if (string? _%str86875%_)
            (let ((_%str86880%_ _%str86875%_))
              (if (symbol? _%enc86876%_)
                  (let ((_%enc86890%_ _%enc86876%_))
                    (__string->bytes__% _%str86880%_ _%enc86890%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc86876%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.25"
               'contract:
               'string?
               'value:
               _%str86875%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str86903%_)
        (let ((_%enc86905%_ 'UTF-8))
          (string->bytes__% _%str86903%_ _%enc86905%_))))
    (define string->bytes
      (lambda _g91320_
        (let ((_g91319_ (let () (declare (not safe)) (##length _g91320_))))
          (cond ((let () (declare (not safe)) (##fx= _g91319_ 1))
                 (apply string->bytes__0 _g91320_))
                ((let () (declare (not safe)) (##fx= _g91319_ 2))
                 (apply string->bytes__% _g91320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g91320_))))))
    (define __string->bytes__%
      (lambda (_%str86843%_ _%enc86844%_)
        (let* ((_%str86847%_ _%str86843%_) (_%enc86855%_ _%enc86844%_))
          (if (eq? _%enc86855%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str86847%_))
              (__substring->bytes__%
               _%str86847%_
               '0
               (let () (declare (not safe)) (##string-length _%str86847%_))
               _%enc86855%_)))))
    (define __string->bytes__0
      (lambda (_%str86867%_)
        (let ((_%enc86869%_ 'UTF-8))
          (__string->bytes__% _%str86867%_ _%enc86869%_))))
    (define __string->bytes
      (lambda _g91322_
        (let ((_g91321_ (let () (declare (not safe)) (##length _g91322_))))
          (cond ((let () (declare (not safe)) (##fx= _g91321_ 1))
                 (apply __string->bytes__0 _g91322_))
                ((let () (declare (not safe)) (##fx= _g91321_ 2))
                 (apply __string->bytes__% _g91322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g91322_))))))
    (define substring->bytes__%
      (lambda (_%str86791%_ _%start86792%_ _%end86793%_ _%enc86794%_)
        (if (string? _%str86791%_)
            (let ((_%str86798%_ _%str86791%_))
              (if (nonnegative-fixnum? _%start86792%_)
                  (let ((_%start86808%_ _%start86792%_))
                    (if (nonnegative-fixnum? _%end86793%_)
                        (let ((_%end86818%_ _%end86793%_))
                          (__substring->bytes__%
                           _%str86798%_
                           _%start86808%_
                           _%end86818%_
                           _%enc86794%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@681.25-681.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end86793%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@680.25-680.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start86792%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@679.25-679.28"
               'contract:
               'string?
               'value:
               _%str86791%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str86831%_ _%start86832%_ _%end86833%_)
        (let ((_%enc86835%_ 'UTF-8))
          (substring->bytes__%
           _%str86831%_
           _%start86832%_
           _%end86833%_
           _%enc86835%_))))
    (define substring->bytes
      (lambda _g91324_
        (let ((_g91323_ (let () (declare (not safe)) (##length _g91324_))))
          (cond ((let () (declare (not safe)) (##fx= _g91323_ 3))
                 (apply substring->bytes__0 _g91324_))
                ((let () (declare (not safe)) (##fx= _g91323_ 4))
                 (apply substring->bytes__% _g91324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g91324_))))))
    (define __substring->bytes__%
      (lambda (_%str86743%_ _%start86744%_ _%end86745%_ _%enc86746%_)
        (let* ((_%str86749%_ _%str86743%_)
               (_%start86757%_ _%start86744%_)
               (_%end86765%_ _%end86745%_))
          (if (eq? _%enc86746%_ 'UTF-8)
              (string->utf8 _%str86749%_ _%start86757%_ _%end86765%_)
              (let ((_%out86774%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc86746%_ '())))))
                (write-substring
                 _%str86749%_
                 _%start86757%_
                 _%end86765%_
                 _%out86774%_)
                (get-output-u8vector _%out86774%_))))))
    (define __substring->bytes__0
      (lambda (_%str86779%_ _%start86780%_ _%end86781%_)
        (let ((_%enc86783%_ 'UTF-8))
          (__substring->bytes__%
           _%str86779%_
           _%start86780%_
           _%end86781%_
           _%enc86783%_))))
    (define __substring->bytes
      (lambda _g91326_
        (let ((_g91325_ (let () (declare (not safe)) (##length _g91326_))))
          (cond ((let () (declare (not safe)) (##fx= _g91325_ 3))
                 (apply __substring->bytes__0 _g91326_))
                ((let () (declare (not safe)) (##fx= _g91325_ 4))
                 (apply __substring->bytes__% _g91326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g91326_))))))
    (define string-empty?
      (lambda (_%str86728%_)
        (if (string? _%str86728%_)
            (let ((_%str86732%_ _%str86728%_)) (__string-empty? _%str86732%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@690.22-690.25"
               'contract:
               'string?
               'value:
               _%str86728%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str86716%_)
        (let* ((_%str86719%_ _%str86716%_)
               (__tmp91327
                (let () (declare (not safe)) (##string-length _%str86719%_))))
          (declare (not safe))
          (##fxzero? __tmp91327))))
    (define string-index__%
      (lambda (_%str86668%_ _%char86669%_ _%start86670%_)
        (if (string? _%str86668%_)
            (let ((_%str86674%_ _%str86668%_))
              (if (char? _%char86669%_)
                  (let ((_%char86684%_ _%char86669%_))
                    (if (nonnegative-fixnum? _%start86670%_)
                        (let ((_%start86694%_ _%start86670%_))
                          (__string-index__%
                           _%str86674%_
                           _%char86684%_
                           _%start86694%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@696.21-696.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start86670%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.21-695.25"
                     'contract:
                     'char?
                     'value:
                     _%char86669%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.21-694.24"
               'contract:
               'string?
               'value:
               _%str86668%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str86707%_ _%char86708%_)
        (let ((_%start86710%_ '0))
          (string-index__% _%str86707%_ _%char86708%_ _%start86710%_))))
    (define string-index
      (lambda _g91329_
        (let ((_g91328_ (let () (declare (not safe)) (##length _g91329_))))
          (cond ((let () (declare (not safe)) (##fx= _g91328_ 2))
                 (apply string-index__0 _g91329_))
                ((let () (declare (not safe)) (##fx= _g91328_ 3))
                 (apply string-index__% _g91329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g91329_))))))
    (define __string-index__%
      (lambda (_%str86607%_ _%char86608%_ _%start86609%_)
        (let* ((_%str86612%_ _%str86607%_)
               (_%char86620%_ _%char86608%_)
               (_%start86628%_ _%start86609%_)
               (_%len86637%_
                (let () (declare (not safe)) (##string-length _%str86612%_))))
          (let _%lp86639%_ ((_%k86641%_ _%start86628%_))
            (let ((_%k86643%_ _%k86641%_))
              (if (let () (declare (not safe)) (##fx< _%k86643%_ _%len86637%_))
                  (if (eq? _%char86620%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str86612%_ _%k86643%_)))
                      _%k86643%_
                      (_%lp86639%_
                       (let () (declare (not safe)) (##fx+ _%k86643%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str86658%_ _%char86659%_)
        (let ((_%start86661%_ '0))
          (__string-index__% _%str86658%_ _%char86659%_ _%start86661%_))))
    (define __string-index
      (lambda _g91331_
        (let ((_g91330_ (let () (declare (not safe)) (##length _g91331_))))
          (cond ((let () (declare (not safe)) (##fx= _g91330_ 2))
                 (apply __string-index__0 _g91331_))
                ((let () (declare (not safe)) (##fx= _g91330_ 3))
                 (apply __string-index__% _g91331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g91331_))))))
    (define string-rindex__%
      (lambda (_%str86568%_ _%char86569%_ _%start86570%_)
        (if (string? _%str86568%_)
            (let ((_%str86574%_ _%str86568%_))
              (if (char? _%char86569%_)
                  (let ((_%char86584%_ _%char86569%_))
                    (__string-rindex__%
                     _%str86574%_
                     _%char86584%_
                     _%start86570%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@706.25-706.29"
                     'contract:
                     'char?
                     'value:
                     _%char86569%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@705.22-705.25"
               'contract:
               'string?
               'value:
               _%str86568%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str86597%_ _%char86598%_)
        (let ((_%start86600%_ '#f))
          (string-rindex__% _%str86597%_ _%char86598%_ _%start86600%_))))
    (define string-rindex
      (lambda _g91333_
        (let ((_g91332_ (let () (declare (not safe)) (##length _g91333_))))
          (cond ((let () (declare (not safe)) (##fx= _g91332_ 2))
                 (apply string-rindex__0 _g91333_))
                ((let () (declare (not safe)) (##fx= _g91332_ 3))
                 (apply string-rindex__% _g91333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g91333_))))))
    (define __string-rindex__%
      (lambda (_%str86510%_ _%char86511%_ _%start86512%_)
        (let* ((_%str86515%_ _%str86510%_)
               (_%char86523%_ _%char86511%_)
               (_%len86532%_
                (let () (declare (not safe)) (##string-length _%str86515%_)))
               (_%start86534%_
                (if (fixnum? _%start86512%_)
                    _%start86512%_
                    (let () (declare (not safe)) (##fx- _%len86532%_ '1)))))
          (let _%lp86537%_ ((_%k86539%_ _%start86534%_))
            (let ((_%k86541%_ _%k86539%_))
              (if (let () (declare (not safe)) (##fx>= _%k86541%_ '0))
                  (if (eq? _%char86523%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str86515%_ _%k86541%_)))
                      _%k86541%_
                      (_%lp86537%_
                       (let () (declare (not safe)) (##fx- _%k86541%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str86558%_ _%char86559%_)
        (let ((_%start86561%_ '#f))
          (__string-rindex__% _%str86558%_ _%char86559%_ _%start86561%_))))
    (define __string-rindex
      (lambda _g91335_
        (let ((_g91334_ (let () (declare (not safe)) (##length _g91335_))))
          (cond ((let () (declare (not safe)) (##fx= _g91334_ 2))
                 (apply __string-rindex__0 _g91335_))
                ((let () (declare (not safe)) (##fx= _g91334_ 3))
                 (apply __string-rindex__% _g91335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g91335_))))))
    (define string-split
      (lambda (_%str86484%_ _%char86485%_)
        (if (string? _%str86484%_)
            (let ((_%str86489%_ _%str86484%_))
              (if (char? _%char86485%_)
                  (let ((_%char86499%_ _%char86485%_))
                    (__string-split _%str86489%_ _%char86499%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@717.37-717.41"
                     'contract:
                     'char?
                     'value:
                     _%char86485%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.21-717.24"
               'contract:
               'string?
               'value:
               _%str86484%_)
              '#!void))))
    (define __string-split
      (lambda (_%str86425%_ _%char86426%_)
        (let* ((_%str86429%_ _%str86425%_)
               (_%char86437%_ _%char86426%_)
               (_%len86446%_
                (let () (declare (not safe)) (##string-length _%str86429%_))))
          (let _%lp86448%_ ((_%start86450%_ '0) (_%r86451%_ '()))
            (let* ((_%start86454%_ _%start86450%_)
                   (_%$e86467%_
                    (__string-index__%
                     _%str86429%_
                     _%char86437%_
                     _%start86454%_)))
              (if _%$e86467%_
                  ((lambda (_%end86470%_)
                     (let ((_%end86472%_ _%end86470%_))
                       (_%lp86448%_
                        (let () (declare (not safe)) (##fx+ _%end86472%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str86429%_
                                 _%start86454%_
                                 _%end86472%_))
                              _%r86451%_))))
                   _%$e86467%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start86454%_ _%len86446%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str86429%_
                                _%start86454%_
                                _%len86446%_)))
                       _%r86451%_)
                      (reverse! _%r86451%_))))))))
    (define string-join
      (lambda (_%strs86275%_ _%join86276%_)
        (letrec ((_%join-length86279%_
                  (lambda (_%strs86363%_ _%jlen86364%_)
                    (let _%lp86366%_ ((_%rest86368%_ _%strs86363%_)
                                      (_%len86369%_ '0))
                      (let* ((_%len86371%_ _%len86369%_)
                             (_%rest8637986387%_ _%rest86368%_)
                             (_%else8638186395%_ (lambda () '0))
                             (_%K8638386413%_
                              (lambda (_%rest86398%_ _%hd86399%_)
                                (if (string? _%hd86399%_)
                                    (let ((_%hd86401%_ _%hd86399%_))
                                      (if (pair? _%rest86398%_)
                                          (_%lp86366%_
                                           _%rest86398%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd86401%_))
                                                _%jlen86364%_
                                                _%len86371%_))
                                          (let ((__tmp91336
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd86401%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp91336 _%len86371%_))))
                                    (error '"expected string" _%hd86399%_)))))
                        (if (pair? _%rest8637986387%_)
                            (let ((_%hd8638486416%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8637986387%_)))
                                  (_%tl8638586418%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8637986387%_))))
                              (let* ((_%hd86421%_ _%hd8638486416%_)
                                     (_%rest86423%_ _%tl8638586418%_))
                                (_%K8638386413%_ _%rest86423%_ _%hd86421%_)))
                            (_%else8638186395%_)))))))
          (let* ((_%join86284%_
                  (if (char? _%join86276%_)
                      (let () (declare (not safe)) (##string _%join86276%_))
                      (if (string? _%join86276%_)
                          _%join86276%_
                          (error '"expected string or char" _%join86276%_))))
                 (_%jlen86286%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join86284%_)))
                 (_%olen86288%_
                  (_%join-length86279%_ _%strs86275%_ _%jlen86286%_))
                 (_%ostr86290%_
                  (let () (declare (not safe)) (##make-string _%olen86288%_))))
            (let _%lp86293%_ ((_%rest86295%_ _%strs86275%_) (_%k86296%_ '0))
              (let* ((_%k86299%_ _%k86296%_)
                     (_%rest8631586323%_ _%rest86295%_)
                     (_%else8631786331%_ (lambda () '""))
                     (_%K8631986351%_
                      (lambda (_%rest86334%_ _%hd86335%_)
                        (let* ((_%hd86337%_ _%hd86335%_)
                               (_%hdlen86349%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd86337%_))))
                          (if (pair? _%rest86334%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd86337%_
                                   '0
                                   _%hdlen86349%_
                                   _%ostr86290%_
                                   _%k86299%_))
                                (let ((__tmp91337
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k86299%_ _%hdlen86349%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join86284%_
                                   '0
                                   _%jlen86286%_
                                   _%ostr86290%_
                                   __tmp91337))
                                (_%lp86293%_
                                 _%rest86334%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k86299%_
                                          _%hdlen86349%_
                                          _%jlen86286%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd86337%_
                                   '0
                                   _%hdlen86349%_
                                   _%ostr86290%_
                                   _%k86299%_))
                                _%ostr86290%_))))))
                (if (pair? _%rest8631586323%_)
                    (let ((_%hd8632086354%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8631586323%_)))
                          (_%tl8632186356%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8631586323%_))))
                      (let* ((_%hd86359%_ _%hd8632086354%_)
                             (_%rest86361%_ _%tl8632186356%_))
                        (_%K8631986351%_ _%rest86361%_ _%hd86359%_)))
                    (_%else8631786331%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes86201%_ _%port86202%_ _%start86203%_ _%end86204%_)
        (if (u8vector? _%bytes86201%_)
            (let ((_%bytes86208%_ _%bytes86201%_))
              (if (input-port? _%port86202%_)
                  (let ((_%port86218%_ _%port86202%_))
                    (if ((lambda (_%o86227%_)
                           (and (fixnum? _%o86227%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o86227%_ '0))
                                (let ((__tmp91338
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes86208%_))))
                                  (declare (not safe))
                                  (##fx< _%o86227%_ __tmp91338))))
                         _%start86203%_)
                        (let ((_%start86231%_ _%start86203%_))
                          (if ((lambda (_%o86240%_)
                                 (and (fixnum? _%o86240%_)
                                      (let ((__tmp91339
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes86208%_))))
                                        (declare (not safe))
                                        (##fx<= _%start86231%_
                                                _%o86240%_
                                                __tmp91339))))
                               _%end86204%_)
                              (let ((_%end86244%_ _%end86204%_))
                                (__read-u8vector__%
                                 _%bytes86208%_
                                 _%port86218%_
                                 _%start86231%_
                                 _%end86244%_))
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
                                 _%end86204%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@782.22-782.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start86203%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@781.22-781.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port86202%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@780.22-780.27"
               'contract:
               'u8vector?
               'value:
               _%bytes86201%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes86257%_ _%port86258%_)
        (let* ((_%start86260%_ '0)
               (_%end86262%_ (u8vector-length _%bytes86257%_)))
          (read-u8vector__%
           _%bytes86257%_
           _%port86258%_
           _%start86260%_
           _%end86262%_))))
    (define read-u8vector__1
      (lambda (_%bytes86264%_ _%port86265%_ _%start86266%_)
        (let ((_%end86268%_ (u8vector-length _%bytes86264%_)))
          (read-u8vector__%
           _%bytes86264%_
           _%port86265%_
           _%start86266%_
           _%end86268%_))))
    (define read-u8vector
      (lambda _g91341_
        (let ((_g91340_ (let () (declare (not safe)) (##length _g91341_))))
          (cond ((let () (declare (not safe)) (##fx= _g91340_ 2))
                 (apply read-u8vector__0 _g91341_))
                ((let () (declare (not safe)) (##fx= _g91340_ 3))
                 (apply read-u8vector__1 _g91341_))
                ((let () (declare (not safe)) (##fx= _g91340_ 4))
                 (apply read-u8vector__% _g91341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g91341_))))))
    (define __read-u8vector__%
      (lambda (_%bytes86140%_ _%port86141%_ _%start86142%_ _%end86143%_)
        (let* ((_%bytes86146%_ _%bytes86140%_)
               (_%port86154%_ _%port86141%_)
               (_%start86162%_ _%start86142%_)
               (_%end86170%_ _%end86143%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes86146%_
           _%start86162%_
           _%end86170%_
           _%port86154%_))))
    (define __read-u8vector__0
      (lambda (_%bytes86182%_ _%port86183%_)
        (let* ((_%start86185%_ '0)
               (_%end86187%_ (u8vector-length _%bytes86182%_)))
          (__read-u8vector__%
           _%bytes86182%_
           _%port86183%_
           _%start86185%_
           _%end86187%_))))
    (define __read-u8vector__1
      (lambda (_%bytes86189%_ _%port86190%_ _%start86191%_)
        (let ((_%end86193%_ (u8vector-length _%bytes86189%_)))
          (__read-u8vector__%
           _%bytes86189%_
           _%port86190%_
           _%start86191%_
           _%end86193%_))))
    (define __read-u8vector
      (lambda _g91343_
        (let ((_g91342_ (let () (declare (not safe)) (##length _g91343_))))
          (cond ((let () (declare (not safe)) (##fx= _g91342_ 2))
                 (apply __read-u8vector__0 _g91343_))
                ((let () (declare (not safe)) (##fx= _g91342_ 3))
                 (apply __read-u8vector__1 _g91343_))
                ((let () (declare (not safe)) (##fx= _g91342_ 4))
                 (apply __read-u8vector__% _g91343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g91343_))))))
    (define write-u8vector__%
      (lambda (_%bytes86070%_ _%port86071%_ _%start86072%_ _%end86073%_)
        (if (u8vector? _%bytes86070%_)
            (let ((_%bytes86077%_ _%bytes86070%_))
              (if (output-port? _%port86071%_)
                  (let* ((_%port86087%_ _%port86071%_)
                         (_%start86096%_ _%start86072%_))
                    (if ((lambda (_%o86104%_)
                           (and (fixnum? _%o86104%_)
                                (let ((__tmp91344
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes86077%_))))
                                  (declare (not safe))
                                  (##fx<= _%start86096%_
                                          _%o86104%_
                                          __tmp91344))))
                         _%end86073%_)
                        (let ((_%end86108%_ _%end86073%_))
                          (__write-u8vector__%
                           _%bytes86077%_
                           _%port86087%_
                           _%start86096%_
                           _%end86108%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@793.23-793.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end86073%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@791.23-791.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port86071%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@790.23-790.28"
               'contract:
               'u8vector?
               'value:
               _%bytes86070%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes86121%_ _%port86122%_)
        (let* ((_%start86124%_ '0)
               (_%end86126%_ (u8vector-length _%bytes86121%_)))
          (write-u8vector__%
           _%bytes86121%_
           _%port86122%_
           _%start86124%_
           _%end86126%_))))
    (define write-u8vector__1
      (lambda (_%bytes86128%_ _%port86129%_ _%start86130%_)
        (let ((_%end86132%_ (u8vector-length _%bytes86128%_)))
          (write-u8vector__%
           _%bytes86128%_
           _%port86129%_
           _%start86130%_
           _%end86132%_))))
    (define write-u8vector
      (lambda _g91346_
        (let ((_g91345_ (let () (declare (not safe)) (##length _g91346_))))
          (cond ((let () (declare (not safe)) (##fx= _g91345_ 2))
                 (apply write-u8vector__0 _g91346_))
                ((let () (declare (not safe)) (##fx= _g91345_ 3))
                 (apply write-u8vector__1 _g91346_))
                ((let () (declare (not safe)) (##fx= _g91345_ 4))
                 (apply write-u8vector__% _g91346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g91346_))))))
    (define __write-u8vector__%
      (lambda (_%bytes86009%_ _%port86010%_ _%start86011%_ _%end86012%_)
        (let* ((_%bytes86015%_ _%bytes86009%_)
               (_%port86023%_ _%port86010%_)
               (_%start86031%_ _%start86011%_)
               (_%end86039%_ _%end86012%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes86015%_
           _%start86031%_
           _%end86039%_
           _%port86023%_))))
    (define __write-u8vector__0
      (lambda (_%bytes86051%_ _%port86052%_)
        (let* ((_%start86054%_ '0)
               (_%end86056%_ (u8vector-length _%bytes86051%_)))
          (__write-u8vector__%
           _%bytes86051%_
           _%port86052%_
           _%start86054%_
           _%end86056%_))))
    (define __write-u8vector__1
      (lambda (_%bytes86058%_ _%port86059%_ _%start86060%_)
        (let ((_%end86062%_ (u8vector-length _%bytes86058%_)))
          (__write-u8vector__%
           _%bytes86058%_
           _%port86059%_
           _%start86060%_
           _%end86062%_))))
    (define __write-u8vector
      (lambda _g91348_
        (let ((_g91347_ (let () (declare (not safe)) (##length _g91348_))))
          (cond ((let () (declare (not safe)) (##fx= _g91347_ 2))
                 (apply __write-u8vector__0 _g91348_))
                ((let () (declare (not safe)) (##fx= _g91347_ 3))
                 (apply __write-u8vector__1 _g91348_))
                ((let () (declare (not safe)) (##fx= _g91347_ 4))
                 (apply __write-u8vector__% _g91348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g91348_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag85977%_
               _%dbg-exprs85978%_
               _%dbg-thunks85979%_
               _%expr85980%_
               _%thunk85981%_)
        (letrec ((_%o85983%_ (current-output-port))
                 (_%e85984%_ (current-error-port))
                 (_%p85985%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f85986%_
                  (lambda ()
                    (force-output _%o85983%_)
                    (force-output _%e85984%_)))
                 (_%d85987%_
                  (lambda (_%x85994%_) (display _%x85994%_ _%e85984%_)))
                 (_%w85988%_
                  (lambda (_%x85996%_) (_%p85985%_ _%x85996%_ _%e85984%_)))
                 (_%n85989%_ (lambda () (newline _%e85984%_)))
                 (_%v85990%_
                  (lambda (_%l85999%_)
                    (for-each
                     (lambda (_%x86001%_)
                       (_%d85987%_ '" ")
                       (_%w85988%_ _%x86001%_))
                     _%l85999%_)
                    (_%n85989%_)))
                 (_%x85991%_
                  (lambda (_%expr86003%_ _%thunk86004%_)
                    (_%f85986%_)
                    (_%d85987%_ '"  ")
                    (_%w85988%_ _%expr86003%_)
                    (_%d85987%_ '" =>")
                    (call-with-values
                     _%thunk86004%_
                     (lambda _%x86006%_
                       (_%v85990%_ _%x86006%_)
                       (_%f85986%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x86006%_)))))))
          (if _%tag85977%_
              (begin
                (if (eq? _%tag85977%_ '#!void)
                    '#!void
                    (begin
                      (_%f85986%_)
                      (_%d85987%_ _%tag85977%_)
                      (_%n85989%_)))
                (for-each _%x85991%_ _%dbg-exprs85978%_ _%dbg-thunks85979%_)
                (if _%thunk85981%_
                    (_%x85991%_ _%expr85980%_ _%thunk85981%_)
                    '#!void))
              (if _%thunk85981%_ (_%thunk85981%_) '#!void)))))))
