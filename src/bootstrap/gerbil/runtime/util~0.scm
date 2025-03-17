(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1742222160)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args90470%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args90470%_))
          (newline))))
    (define display*
      (lambda _%args90467%_
        (let () (declare (not safe)) (##for-each display _%args90467%_))))
    (define file-newer?
      (lambda (_%file190442%_ _%file290443%_)
        (if (string? _%file190442%_)
            (let ((_%file190447%_ _%file190442%_))
              (if (string? _%file290443%_)
                  (let ((_%file290457%_ _%file290443%_))
                    (__file-newer? _%file190447%_ _%file290457%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@64.20-64.25"
                     'contract:
                     'string?
                     'value:
                     _%file290443%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@63.20-63.25"
               'contract:
               'string?
               'value:
               _%file190442%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file190390%_ _%file290391%_)
        (let* ((_%file190394%_ _%file190390%_) (_%file290402%_ _%file290391%_))
          (letrec ((_%modification-time90411%_
                    (lambda (_%file90430%_)
                      (let ((_%file90433%_ _%file90430%_))
                        (_%__modification-time90412%_ _%file90433%_))))
                   (_%__modification-time90412%_
                    (lambda (_%file90414%_)
                      (let* ((_%file90417%_ _%file90414%_)
                             (__tmp92200
                              (let ((__tmp92201
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file90417%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp92201))))
                        (declare (not safe))
                        (##time->seconds __tmp92200)))))
            (let ((__tmp92203 (_%__modification-time90412%_ _%file190394%_))
                  (__tmp92202 (_%__modification-time90412%_ _%file290402%_)))
              (declare (not safe))
              (##fl> __tmp92203 __tmp92202))))))
    (define create-directory*__%
      (lambda (_%dir90355%_ _%perms90356%_)
        (if (string? _%dir90355%_)
            (let ((_%dir90360%_ _%dir90355%_))
              (if (fixnum? _%perms90356%_)
                  (let ((_%perms90370%_ _%perms90356%_))
                    (__create-directory*__% _%dir90360%_ _%perms90370%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.26-75.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms90356%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.26-74.29"
               'contract:
               'string?
               'value:
               _%dir90355%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir90383%_)
        (let ((_%perms90385%_ '493))
          (create-directory*__% _%dir90383%_ _%perms90385%_))))
    (define create-directory*
      (lambda _g92205_
        (let ((_g92204_ (let () (declare (not safe)) (##length _g92205_))))
          (cond ((let () (declare (not safe)) (##fx= _g92204_ 1))
                 (apply create-directory*__0 _g92205_))
                ((let () (declare (not safe)) (##fx= _g92204_ 2))
                 (apply create-directory*__% _g92205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g92205_))))))
    (define __create-directory*__%
      (lambda (_%dir90279%_ _%perms90280%_)
        (let* ((_%dir90283%_ _%dir90279%_) (_%perms90291%_ _%perms90280%_))
          (letrec ((_%create190300%_
                    (lambda (_%path90332%_)
                      (let ((_%path90335%_ _%path90332%_))
                        (_%__create190301%_ _%path90335%_))))
                   (_%__create190301%_
                    (lambda (_%path90313%_)
                      (let ((_%path90316%_ _%path90313%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path90316%_))
                            (if (eq? (file-type _%path90316%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path90316%_))
                            (if _%perms90291%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path90316%_
                                             (cons 'permissions:
                                                   (cons _%perms90291%_
                                                         '())))))
                                (create-directory _%path90316%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir90283%_))
                '#!void
                (let _%lp90303%_ ((_%start90305%_ '0))
                  (let ((_%$e90307%_
                         (__string-index__% _%dir90283%_ '#\/ _%start90305%_)))
                    (if _%$e90307%_
                        ((lambda (_%x90310%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x90310%_ '0))
                               (_%__create190301%_
                                (substring _%dir90283%_ '0 _%x90310%_))
                               '#!void)
                           (_%lp90303%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x90310%_ '1))))
                         _%$e90307%_)
                        (_%__create190301%_ _%dir90283%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir90347%_)
        (let ((_%perms90349%_ '493))
          (__create-directory*__% _%dir90347%_ _%perms90349%_))))
    (define __create-directory*
      (lambda _g92207_
        (let ((_g92206_ (let () (declare (not safe)) (##length _g92207_))))
          (cond ((let () (declare (not safe)) (##fx= _g92206_ 1))
                 (apply __create-directory*__0 _g92207_))
                ((let () (declare (not safe)) (##fx= _g92206_ 2))
                 (apply __create-directory*__% _g92207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g92207_))))))
    (define move-file__%
      (lambda (_%src90230%_ _%dest90231%_ _%replace?90232%_)
        (if (string? _%src90230%_)
            (let ((_%src90236%_ _%src90230%_))
              (if (string? _%dest90231%_)
                  (let ((_%dest90246%_ _%dest90231%_))
                    (if (boolean? _%replace?90232%_)
                        (let ((_%replace?90256%_ _%replace?90232%_))
                          (__move-file__%
                           _%src90236%_
                           _%dest90246%_
                           _%replace?90256%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@99.51-99.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?90232%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@99.34-99.38"
                     'contract:
                     'string?
                     'value:
                     _%dest90231%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@99.18-99.21"
               'contract:
               'string?
               'value:
               _%src90230%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src90269%_ _%dest90270%_)
        (let ((_%replace?90272%_ '#t))
          (move-file__% _%src90269%_ _%dest90270%_ _%replace?90272%_))))
    (define move-file
      (lambda _g92209_
        (let ((_g92208_ (let () (declare (not safe)) (##length _g92209_))))
          (cond ((let () (declare (not safe)) (##fx= _g92208_ 2))
                 (apply move-file__0 _g92209_))
                ((let () (declare (not safe)) (##fx= _g92208_ 3))
                 (apply move-file__% _g92209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g92209_))))))
    (define __move-file__%
      (lambda (_%src90173%_ _%dest90174%_ _%replace?90175%_)
        (let* ((_%src90178%_ _%src90173%_)
               (_%dest90186%_ _%dest90174%_)
               (_%replace?90194%_ _%replace?90175%_))
          (letrec ((_%force-move-it90203%_
                    (lambda ()
                      (let ((_%tmp90209%_
                             (if _%replace?90194%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest90186%_))
                                     (let ((__tmp92210
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest90186%_
                                        '"."
                                        __tmp92210))
                                     '#f)
                                 '#f)))
                        (if _%tmp90209%_
                            (rename-file _%dest90186%_ _%tmp90209%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e90211%_)
                           (if _%tmp90209%_
                               (rename-file _%tmp90209%_ _%dest90186%_ '#t)
                               '#!void)
                           (raise _%e90211%_))
                         (lambda ()
                           (let ((_%fi90214%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src90178%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi90214%_))
                                      'symbolic-link)
                                 (let ((__tmp92211
                                        (path-normalize _%src90178%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp92211
                                    _%dest90186%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file _%src90178%_ _%dest90186%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src90178%_))
                           (if _%tmp90209%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp90209%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e90205%_)
               (if (let () (declare (not safe)) (##file-exists? _%src90178%_))
                   (_%force-move-it90203%_)
                   (raise _%e90205%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src90178%_
                  _%dest90186%_
                  _%replace?90194%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src90220%_ _%dest90221%_)
        (let ((_%replace?90223%_ '#t))
          (__move-file__% _%src90220%_ _%dest90221%_ _%replace?90223%_))))
    (define __move-file
      (lambda _g92213_
        (let ((_g92212_ (let () (declare (not safe)) (##length _g92213_))))
          (cond ((let () (declare (not safe)) (##fx= _g92212_ 2))
                 (apply __move-file__0 _g92213_))
                ((let () (declare (not safe)) (##fx= _g92212_ 3))
                 (apply __move-file__% _g92213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g92213_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore90169%_ '#t))
    (define true? (lambda (_%obj90166%_) (eq? _%obj90166%_ '#t)))
    (define false (lambda _%ignore90163%_ '#f))
    (define void (lambda _%ignore90160%_ '#!void))
    (define void? (lambda (_%obj90157%_) (eq? _%obj90157%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj90154%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj90154%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj90151%_) (eq? _%obj90151%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj90148%_) (eq? _%obj90148%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj90145%_) (eq? _%obj90145%_ '#!optional)))
    (define immediate?
      (lambda (_%obj90140%_)
        (let* ((_%t90143%_ (let () (declare (not safe)) (##type _%obj90140%_)))
               (__tmp92214
                (let () (declare (not safe)) (##fxand _%t90143%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp92214))))
    (define nonnegative-fixnum?
      (lambda (_%obj90137%_)
        (if (fixnum? _%obj90137%_)
            (let () (declare (not safe)) (##fx>= _%obj90137%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj90131%_)
        (let ((_%$e90134%_ (pair? _%obj90131%_)))
          (if _%$e90134%_ _%$e90134%_ (null? _%obj90131%_)))))
    (define values-count
      (lambda (_%obj90128%_)
        (if (let () (declare (not safe)) (##values? _%obj90128%_))
            (let () (declare (not safe)) (##values-length _%obj90128%_))
            '1)))
    (define values-ref
      (lambda (_%obj90113%_ _%k90114%_)
        (if (fixnum? _%k90114%_)
            (let ((_%k90118%_ _%k90114%_))
              (__values-ref _%obj90113%_ _%k90118%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@234.23-234.24"
               'contract:
               'fixnum?
               'value:
               _%k90114%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj90100%_ _%k90101%_)
        (let ((_%k90104%_ _%k90101%_))
          (if (let () (declare (not safe)) (##values? _%obj90100%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj90100%_ _%k90104%_))
              _%obj90100%_))))
    (define values->list
      (lambda (_%obj90097%_)
        (if (let () (declare (not safe)) (##values? _%obj90097%_))
            (let () (declare (not safe)) (##values->list _%obj90097%_))
            (list _%obj90097%_))))
    (define foldl1
      (lambda (_%f90081%_ _%iv90082%_ _%lst90083%_)
        (if (procedure? _%f90081%_)
            (let ((_%f90087%_ _%f90081%_))
              (__foldl1 _%f90087%_ _%iv90082%_ _%lst90083%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@257.15-257.16"
               'contract:
               'procedure?
               'value:
               _%f90081%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f90029%_ _%iv90030%_ _%lst90031%_)
        (let ((_%f90034%_ _%f90029%_))
          (let _%lp90043%_ ((_%rest90045%_ _%lst90031%_)
                            (_%r90046%_ _%iv90030%_))
            (let* ((_%rest9004790055%_ _%rest90045%_)
                   (_%else9004990063%_ (lambda () _%r90046%_))
                   (_%K9005190069%_
                    (lambda (_%rest90066%_ _%x90067%_)
                      (_%lp90043%_
                       _%rest90066%_
                       (let ()
                         (declare (not safe))
                         (_%f90034%_ _%x90067%_ _%r90046%_))))))
              (if (pair? _%rest9004790055%_)
                  (let ((_%hd9005290072%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9004790055%_)))
                        (_%tl9005390074%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9004790055%_))))
                    (let* ((_%x90077%_ _%hd9005290072%_)
                           (_%rest90079%_ _%tl9005390074%_))
                      (_%K9005190069%_ _%rest90079%_ _%x90077%_)))
                  (_%else9004990063%_)))))))
    (define foldl2
      (lambda (_%f90012%_ _%iv90013%_ _%lst190014%_ _%lst290015%_)
        (if (procedure? _%f90012%_)
            (let ((_%f90019%_ _%f90012%_))
              (__foldl2 _%f90019%_ _%iv90013%_ _%lst190014%_ _%lst290015%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@264.15-264.16"
               'contract:
               'procedure?
               'value:
               _%f90012%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f89925%_ _%iv89926%_ _%lst189927%_ _%lst289928%_)
        (let ((_%f89931%_ _%f89925%_))
          (let _%lp89940%_ ((_%rest189942%_ _%lst189927%_)
                            (_%rest289943%_ _%lst289928%_)
                            (_%r89944%_ _%iv89926%_))
            (let* ((_%rest18994589953%_ _%rest189942%_)
                   (_%else8994789961%_ (lambda () _%r89944%_))
                   (_%K8994990000%_
                    (lambda (_%rest189964%_ _%x189965%_)
                      (let* ((_%rest28996689974%_ _%rest289943%_)
                             (_%else8996889982%_ (lambda () _%r89944%_))
                             (_%K8997089988%_
                              (lambda (_%rest289985%_ _%x289986%_)
                                (_%lp89940%_
                                 _%rest189964%_
                                 _%rest289985%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f89931%_
                                    _%x189965%_
                                    _%x289986%_
                                    _%r89944%_))))))
                        (if (pair? _%rest28996689974%_)
                            (let ((_%hd8997189991%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28996689974%_)))
                                  (_%tl8997289993%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28996689974%_))))
                              (let* ((_%x289996%_ _%hd8997189991%_)
                                     (_%rest289998%_ _%tl8997289993%_))
                                (_%K8997089988%_ _%rest289998%_ _%x289996%_)))
                            (_%else8996889982%_))))))
              (if (pair? _%rest18994589953%_)
                  (let ((_%hd8995090003%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18994589953%_)))
                        (_%tl8995190005%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18994589953%_))))
                    (let* ((_%x190008%_ _%hd8995090003%_)
                           (_%rest190010%_ _%tl8995190005%_))
                      (_%K8994990000%_ _%rest190010%_ _%x190008%_)))
                  (_%else8994789961%_)))))))
    (define foldl
      (lambda _g92216_
        (let ((_g92215_ (let () (declare (not safe)) (##length _g92216_))))
          (cond ((let () (declare (not safe)) (##fx= _g92215_ 3))
                 (apply foldl1 _g92216_))
                ((let () (declare (not safe)) (##fx= _g92215_ 4))
                 (apply foldl2 _g92216_))
                ((let () (declare (not safe)) (##fx>= _g92215_ 4))
                 (apply foldl* _g92216_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g92216_))))))
    (define foldl*
      (lambda (_%f89894%_ _%iv89895%_ . _%rest89896%_)
        (if (procedure? _%f89894%_)
            (let ((_%f89900%_ _%f89894%_))
              (declare (not safe))
              (##apply __foldl* _%f89900%_ _%iv89895%_ _%rest89896%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@282.15-282.16"
               'contract:
               'procedure?
               'value:
               _%f89894%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f89872%_ _%iv89873%_ . _%rest89874%_)
        (let ((_%f89877%_ _%f89872%_))
          (let _%recur89886%_ ((_%iv89888%_ _%iv89873%_)
                               (_%rest89889%_ _%rest89874%_))
            (if (__andmap1 pair? _%rest89889%_)
                (_%recur89886%_
                 (let ((__tmp92217
                        (__foldr1
                         (lambda (_%xs89891%_ _%r89892%_)
                           (cons (car _%xs89891%_) _%r89892%_))
                         (list _%iv89888%_)
                         _%rest89889%_)))
                   (declare (not safe))
                   (##apply _%f89877%_ __tmp92217))
                 (map cdr _%rest89889%_))
                _%iv89888%_)))))
    (define foldr1
      (lambda (_%f89856%_ _%iv89857%_ _%lst89858%_)
        (if (procedure? _%f89856%_)
            (let ((_%f89862%_ _%f89856%_))
              (__foldr1 _%f89862%_ _%iv89857%_ _%lst89858%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f89856%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f89805%_ _%iv89806%_ _%lst89807%_)
        (let ((_%f89810%_ _%f89805%_))
          (let _%recur89819%_ ((_%rest89821%_ _%lst89807%_))
            (let* ((_%rest8982289830%_ _%rest89821%_)
                   (_%else8982489838%_ (lambda () _%iv89806%_))
                   (_%K8982689844%_
                    (lambda (_%rest89841%_ _%x89842%_)
                      (let ((__tmp92218 (_%recur89819%_ _%rest89841%_)))
                        (declare (not safe))
                        (_%f89810%_ _%x89842%_ __tmp92218)))))
              (if (pair? _%rest8982289830%_)
                  (let ((_%hd8982789847%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8982289830%_)))
                        (_%tl8982889849%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8982289830%_))))
                    (let* ((_%x89852%_ _%hd8982789847%_)
                           (_%rest89854%_ _%tl8982889849%_))
                      (_%K8982689844%_ _%rest89854%_ _%x89852%_)))
                  (_%else8982489838%_)))))))
    (define foldr2
      (lambda (_%f89788%_ _%iv89789%_ _%lst189790%_ _%lst289791%_)
        (if (procedure? _%f89788%_)
            (let ((_%f89795%_ _%f89788%_))
              (__foldr2 _%f89795%_ _%iv89789%_ _%lst189790%_ _%lst289791%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@299.15-299.16"
               'contract:
               'procedure?
               'value:
               _%f89788%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f89702%_ _%iv89703%_ _%lst189704%_ _%lst289705%_)
        (let ((_%f89708%_ _%f89702%_))
          (let _%recur89717%_ ((_%rest189719%_ _%lst189704%_)
                               (_%rest289720%_ _%lst289705%_))
            (let* ((_%rest18972189729%_ _%rest189719%_)
                   (_%else8972389737%_ (lambda () _%iv89703%_))
                   (_%K8972589776%_
                    (lambda (_%rest189740%_ _%x189741%_)
                      (let* ((_%rest28974289750%_ _%rest289720%_)
                             (_%else8974489758%_ (lambda () _%iv89703%_))
                             (_%K8974689764%_
                              (lambda (_%rest289761%_ _%x289762%_)
                                (let ((__tmp92219
                                       (_%recur89717%_
                                        _%rest189740%_
                                        _%rest289761%_)))
                                  (declare (not safe))
                                  (_%f89708%_
                                   _%x189741%_
                                   _%x289762%_
                                   __tmp92219)))))
                        (if (pair? _%rest28974289750%_)
                            (let ((_%hd8974789767%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28974289750%_)))
                                  (_%tl8974889769%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28974289750%_))))
                              (let* ((_%x289772%_ _%hd8974789767%_)
                                     (_%rest289774%_ _%tl8974889769%_))
                                (_%K8974689764%_ _%rest289774%_ _%x289772%_)))
                            (_%else8974489758%_))))))
              (if (pair? _%rest18972189729%_)
                  (let ((_%hd8972689779%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18972189729%_)))
                        (_%tl8972789781%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18972189729%_))))
                    (let* ((_%x189784%_ _%hd8972689779%_)
                           (_%rest189786%_ _%tl8972789781%_))
                      (_%K8972589776%_ _%rest189786%_ _%x189784%_)))
                  (_%else8972389737%_)))))))
    (define foldr
      (lambda _g92221_
        (let ((_g92220_ (let () (declare (not safe)) (##length _g92221_))))
          (cond ((let () (declare (not safe)) (##fx= _g92220_ 3))
                 (apply foldr1 _g92221_))
                ((let () (declare (not safe)) (##fx= _g92220_ 4))
                 (apply foldr2 _g92221_))
                ((let () (declare (not safe)) (##fx>= _g92220_ 4))
                 (apply foldr* _g92221_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g92221_))))))
    (define foldr*
      (lambda (_%f89671%_ _%iv89672%_ . _%rest89673%_)
        (if (procedure? _%f89671%_)
            (let ((_%f89677%_ _%f89671%_))
              (declare (not safe))
              (##apply __foldr* _%f89677%_ _%iv89672%_ _%rest89673%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@317.15-317.16"
               'contract:
               'procedure?
               'value:
               _%f89671%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f89650%_ _%iv89651%_ . _%rest89652%_)
        (let ((_%f89655%_ _%f89650%_))
          (let _%recur89664%_ ((_%rest89666%_ _%rest89652%_))
            (if (__andmap1 pair? _%rest89666%_)
                (let ((__tmp92222
                       (__foldr1
                        (lambda (_%xs89668%_ _%r89669%_)
                          (cons (car _%xs89668%_) _%r89669%_))
                        (list (_%recur89664%_ (map cdr _%rest89666%_)))
                        _%rest89666%_)))
                  (declare (not safe))
                  (##apply _%f89655%_ __tmp92222))
                _%iv89651%_)))))
    (define remove-nulls!
      (lambda (_%l89537%_)
        (let* ((_%l8953889551%_ _%l89537%_)
               (_%E8954289555%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8953889551%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8954789640%_
                 (lambda (_%r89638%_) (remove-nulls! _%r89638%_)))
                (_%K8954489627%_
                 (lambda (_%r89567%_)
                   (let _%loop89569%_ ((_%l89571%_ _%l89537%_)
                                       (_%r89572%_ _%r89567%_))
                     (let* ((_%r8957389586%_ _%r89572%_)
                            (_%E8957789590%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8957389586%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8958289617%_
                              (lambda (_%rr89615%_)
                                (let ((__tmp92224 _%l89571%_)
                                      (__tmp92223 (remove-nulls! _%rr89615%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp92224 __tmp92223))))
                             (_%K8957989604%_
                              (lambda (_%rr89602%_)
                                (_%loop89569%_ _%r89572%_ _%rr89602%_)))
                             (_%K8957889595%_ (lambda () '#!void)))
                         (if (pair? _%r8957389586%_)
                             (let ((_%tl8958489622%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8957389586%_)))
                                   (_%hd8958389620%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8957389586%_))))
                               (if (null? _%hd8958389620%_)
                                   (let ((_%rr89625%_ _%tl8958489622%_))
                                     (_%K8958289617%_ _%rr89625%_))
                                   (let ((_%rr89610%_ _%tl8958489622%_))
                                     (_%K8957989604%_ _%rr89610%_))))
                             '#!void))))
                   _%l89537%_))
                (_%K8954389560%_ (lambda () _%l89537%_)))
            (if (pair? _%l8953889551%_)
                (let ((_%tl8954989645%_
                       (let () (declare (not safe)) (##cdr _%l8953889551%_)))
                      (_%hd8954889643%_
                       (let () (declare (not safe)) (##car _%l8953889551%_))))
                  (if (null? _%hd8954889643%_)
                      (let ((_%r89648%_ _%tl8954989645%_))
                        (remove-nulls! _%r89648%_))
                      (let ((_%r89633%_ _%tl8954989645%_))
                        (_%K8954489627%_ _%r89633%_))))
                (_%K8954389560%_))))))
    (define append1!
      (lambda (_%l89522%_ _%x89523%_)
        (let ((_%l289526%_ (cons _%x89523%_ '())))
          (if (pair? _%l89522%_)
              (let ((_%l89528%_ _%l89522%_))
                (let ((__tmp92225
                       (let () (declare (not safe)) (##last-pair _%l89528%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp92225 _%l289526%_))
                _%l89528%_)
              _%l289526%_))))
    (define append-reverse-until
      (lambda (_%pred89506%_ _%rhead89507%_ _%tail89508%_)
        (if (procedure? _%pred89506%_)
            (let ((_%pred89512%_ _%pred89506%_))
              (__append-reverse-until
               _%pred89512%_
               _%rhead89507%_
               _%tail89508%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@357.29-357.33"
               'contract:
               'procedure?
               'value:
               _%pred89506%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred89448%_ _%rhead89449%_ _%tail89450%_)
        (let ((_%pred89453%_ _%pred89448%_))
          (let _%loop89462%_ ((_%rhead89464%_ _%rhead89449%_)
                              (_%tail89465%_ _%tail89450%_))
            (let* ((_%rhead8946789476%_ _%rhead89464%_)
                   (_%E8947089480%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8946789476%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8947489503%_ (lambda () (values '() _%tail89465%_)))
                    (_%K8947189487%_
                     (lambda (_%r89484%_ _%a89485%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred89453%_ _%a89485%_))
                           (values _%rhead89464%_ _%tail89465%_)
                           (_%loop89462%_
                            _%r89484%_
                            (cons _%a89485%_ _%tail89465%_))))))
                (let ((_%try-match8946989499%_
                       (lambda ()
                         (if (pair? _%rhead8946789476%_)
                             (let ((_%tl8947389492%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8946789476%_)))
                                   (_%hd8947289490%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8946789476%_))))
                               (let ((_%a89495%_ _%hd8947289490%_)
                                     (_%r89497%_ _%tl8947389492%_))
                                 (_%K8947189487%_ _%r89497%_ _%a89495%_)))
                             (_%E8947089480%_)))))
                  (if (null? _%rhead8946789476%_)
                      (_%K8947489503%_)
                      (_%try-match8946989499%_)))))))))
    (define andmap1
      (lambda (_%f89433%_ _%lst89434%_)
        (if (procedure? _%f89433%_)
            (let ((_%f89438%_ _%f89433%_)) (__andmap1 _%f89438%_ _%lst89434%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@368.16-368.17"
               'contract:
               'procedure?
               'value:
               _%f89433%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f89382%_ _%lst89383%_)
        (let ((_%f89386%_ _%f89382%_))
          (let _%lp89395%_ ((_%rest89397%_ _%lst89383%_))
            (let* ((_%rest8939989407%_ _%rest89397%_)
                   (_%else8940189415%_ (lambda () '#t))
                   (_%K8940389421%_
                    (lambda (_%rest89418%_ _%x89419%_)
                      (if (let () (declare (not safe)) (_%f89386%_ _%x89419%_))
                          (_%lp89395%_ _%rest89418%_)
                          '#f))))
              (if (pair? _%rest8939989407%_)
                  (let ((_%hd8940489424%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8939989407%_)))
                        (_%tl8940589426%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8939989407%_))))
                    (let* ((_%x89429%_ _%hd8940489424%_)
                           (_%rest89431%_ _%tl8940589426%_))
                      (_%K8940389421%_ _%rest89431%_ _%x89429%_)))
                  (_%else8940189415%_)))))))
    (define andmap2
      (lambda (_%f89366%_ _%lst189367%_ _%lst289368%_)
        (if (procedure? _%f89366%_)
            (let ((_%f89372%_ _%f89366%_))
              (__andmap2 _%f89372%_ _%lst189367%_ _%lst289368%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f89366%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f89280%_ _%lst189281%_ _%lst289282%_)
        (let ((_%f89285%_ _%f89280%_))
          (let _%lp89294%_ ((_%rest189296%_ _%lst189281%_)
                            (_%rest289297%_ _%lst289282%_))
            (let* ((_%rest18929989307%_ _%rest189296%_)
                   (_%else8930189315%_ (lambda () '#t))
                   (_%K8930389354%_
                    (lambda (_%rest189318%_ _%x189319%_)
                      (let* ((_%rest28932089328%_ _%rest289297%_)
                             (_%else8932289336%_ (lambda () '#t))
                             (_%K8932489342%_
                              (lambda (_%rest289339%_ _%x289340%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f89285%_ _%x189319%_ _%x289340%_))
                                    (_%lp89294%_ _%rest189318%_ _%rest289339%_)
                                    '#f))))
                        (if (pair? _%rest28932089328%_)
                            (let ((_%hd8932589345%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28932089328%_)))
                                  (_%tl8932689347%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28932089328%_))))
                              (let* ((_%x289350%_ _%hd8932589345%_)
                                     (_%rest289352%_ _%tl8932689347%_))
                                (_%K8932489342%_ _%rest289352%_ _%x289350%_)))
                            (_%else8932289336%_))))))
              (if (pair? _%rest18929989307%_)
                  (let ((_%hd8930489357%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18929989307%_)))
                        (_%tl8930589359%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18929989307%_))))
                    (let* ((_%x189362%_ _%hd8930489357%_)
                           (_%rest189364%_ _%tl8930589359%_))
                      (_%K8930389354%_ _%rest189364%_ _%x189362%_)))
                  (_%else8930189315%_)))))))
    (define andmap
      (lambda _g92227_
        (let ((_g92226_ (let () (declare (not safe)) (##length _g92227_))))
          (cond ((let () (declare (not safe)) (##fx= _g92226_ 2))
                 (apply andmap1 _g92227_))
                ((let () (declare (not safe)) (##fx= _g92226_ 3))
                 (apply andmap2 _g92227_))
                ((let () (declare (not safe)) (##fx>= _g92226_ 3))
                 (apply andmap* _g92227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g92227_))))))
    (define andmap*
      (lambda (_%f89253%_ . _%rest89254%_)
        (if (procedure? _%f89253%_)
            (let ((_%f89258%_ _%f89253%_))
              (declare (not safe))
              (##apply __andmap* _%f89258%_ _%rest89254%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@397.16-397.17"
               'contract:
               'procedure?
               'value:
               _%f89253%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f89235%_ . _%rest89236%_)
        (let ((_%f89239%_ _%f89235%_))
          (let _%recur89248%_ ((_%rest89250%_ _%rest89236%_))
            (if (__andmap1 pair? _%rest89250%_)
                (if (let ((__tmp92228 (map car _%rest89250%_)))
                      (declare (not safe))
                      (##apply _%f89239%_ __tmp92228))
                    (_%recur89248%_ (map cdr _%rest89250%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f89220%_ _%lst89221%_)
        (if (procedure? _%f89220%_)
            (let ((_%f89225%_ _%f89220%_)) (__ormap1 _%f89225%_ _%lst89221%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.15-406.16"
               'contract:
               'procedure?
               'value:
               _%f89220%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f89167%_ _%lst89168%_)
        (let ((_%f89171%_ _%f89167%_))
          (let _%lp89180%_ ((_%rest89182%_ _%lst89168%_))
            (let* ((_%rest8918389191%_ _%rest89182%_)
                   (_%else8918589199%_ (lambda () '#f))
                   (_%K8918789208%_
                    (lambda (_%rest89202%_ _%x89203%_)
                      (let ((_%$e89205%_
                             (let ()
                               (declare (not safe))
                               (_%f89171%_ _%x89203%_))))
                        (if _%$e89205%_
                            _%$e89205%_
                            (_%lp89180%_ _%rest89202%_))))))
              (if (pair? _%rest8918389191%_)
                  (let ((_%hd8918889211%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8918389191%_)))
                        (_%tl8918989213%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8918389191%_))))
                    (let* ((_%x89216%_ _%hd8918889211%_)
                           (_%rest89218%_ _%tl8918989213%_))
                      (_%K8918789208%_ _%rest89218%_ _%x89216%_)))
                  (_%else8918589199%_)))))))
    (define ormap2
      (lambda (_%f89151%_ _%lst189152%_ _%lst289153%_)
        (if (procedure? _%f89151%_)
            (let ((_%f89157%_ _%f89151%_))
              (__ormap2 _%f89157%_ _%lst189152%_ _%lst289153%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.15-413.16"
               'contract:
               'procedure?
               'value:
               _%f89151%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f89063%_ _%lst189064%_ _%lst289065%_)
        (let ((_%f89068%_ _%f89063%_))
          (let _%lp89077%_ ((_%rest189079%_ _%lst189064%_)
                            (_%rest289080%_ _%lst289065%_))
            (let* ((_%rest18908189089%_ _%rest189079%_)
                   (_%else8908389097%_ (lambda () '#f))
                   (_%K8908589139%_
                    (lambda (_%rest189100%_ _%x189101%_)
                      (let* ((_%rest28910289110%_ _%rest289080%_)
                             (_%else8910489118%_ (lambda () '#f))
                             (_%K8910689127%_
                              (lambda (_%rest289121%_ _%x289122%_)
                                (let ((_%$e89124%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f89068%_
                                          _%x189101%_
                                          _%x289122%_))))
                                  (if _%$e89124%_
                                      _%$e89124%_
                                      (_%lp89077%_
                                       _%rest189100%_
                                       _%rest289121%_))))))
                        (if (pair? _%rest28910289110%_)
                            (let ((_%hd8910789130%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28910289110%_)))
                                  (_%tl8910889132%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28910289110%_))))
                              (let* ((_%x289135%_ _%hd8910789130%_)
                                     (_%rest289137%_ _%tl8910889132%_))
                                (_%K8910689127%_ _%rest289137%_ _%x289135%_)))
                            (_%else8910489118%_))))))
              (if (pair? _%rest18908189089%_)
                  (let ((_%hd8908689142%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18908189089%_)))
                        (_%tl8908789144%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18908189089%_))))
                    (let* ((_%x189147%_ _%hd8908689142%_)
                           (_%rest189149%_ _%tl8908789144%_))
                      (_%K8908589139%_ _%rest189149%_ _%x189147%_)))
                  (_%else8908389097%_)))))))
    (define ormap
      (lambda _g92230_
        (let ((_g92229_ (let () (declare (not safe)) (##length _g92230_))))
          (cond ((let () (declare (not safe)) (##fx= _g92229_ 2))
                 (apply ormap1 _g92230_))
                ((let () (declare (not safe)) (##fx= _g92229_ 3))
                 (apply ormap2 _g92230_))
                ((let () (declare (not safe)) (##fx>= _g92229_ 3))
                 (apply ormap* _g92230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g92230_))))))
    (define ormap*
      (lambda (_%f89036%_ . _%rest89037%_)
        (if (procedure? _%f89036%_)
            (let ((_%f89041%_ _%f89036%_))
              (declare (not safe))
              (##apply __ormap* _%f89041%_ _%rest89037%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@431.15-431.16"
               'contract:
               'procedure?
               'value:
               _%f89036%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f89016%_ . _%rest89017%_)
        (let ((_%f89020%_ _%f89016%_))
          (let _%recur89029%_ ((_%rest89031%_ _%rest89017%_))
            (if (__andmap1 pair? _%rest89031%_)
                (let ((_%$e89033%_
                       (let ((__tmp92231 (map car _%rest89031%_)))
                         (declare (not safe))
                         (##apply _%f89020%_ __tmp92231))))
                  (if _%$e89033%_
                      _%$e89033%_
                      (_%recur89029%_ (map cdr _%rest89031%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f89001%_ _%lst89002%_)
        (if (procedure? _%f89001%_)
            (let ((_%f89006%_ _%f89001%_))
              (__filter-map1 _%f89006%_ _%lst89002%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.20-438.21"
               'contract:
               'procedure?
               'value:
               _%f89001%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f88944%_ _%lst88945%_)
        (let ((_%f88948%_ _%f88944%_))
          (let _%recur88957%_ ((_%rest88959%_ _%lst88945%_))
            (let* ((_%rest8896188969%_ _%rest88959%_)
                   (_%else8896388977%_ (lambda () '()))
                   (_%K8896588989%_
                    (lambda (_%rest88980%_ _%x88981%_)
                      (let ((_%$e88983%_
                             (let ()
                               (declare (not safe))
                               (_%f88948%_ _%x88981%_))))
                        (if _%$e88983%_
                            ((lambda (_%r88986%_)
                               (cons _%r88986%_
                                     (_%recur88957%_ _%rest88980%_)))
                             _%$e88983%_)
                            (_%recur88957%_ _%rest88980%_))))))
              (if (pair? _%rest8896188969%_)
                  (let ((_%hd8896688992%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8896188969%_)))
                        (_%tl8896788994%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8896188969%_))))
                    (let* ((_%x88997%_ _%hd8896688992%_)
                           (_%rest88999%_ _%tl8896788994%_))
                      (_%K8896588989%_ _%rest88999%_ _%x88997%_)))
                  (_%else8896388977%_)))))))
    (define filter-map2
      (lambda (_%f88928%_ _%lst188929%_ _%lst288930%_)
        (if (procedure? _%f88928%_)
            (let ((_%f88934%_ _%f88928%_))
              (__filter-map2 _%f88934%_ _%lst188929%_ _%lst288930%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@449.20-449.21"
               'contract:
               'procedure?
               'value:
               _%f88928%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f88836%_ _%lst188837%_ _%lst288838%_)
        (let ((_%f88841%_ _%f88836%_))
          (let _%recur88850%_ ((_%rest188852%_ _%lst188837%_)
                               (_%rest288853%_ _%lst288838%_))
            (let* ((_%rest18885588863%_ _%rest188852%_)
                   (_%else8885788871%_ (lambda () '()))
                   (_%K8885988916%_
                    (lambda (_%rest188874%_ _%x188875%_)
                      (let* ((_%rest28887688884%_ _%rest288853%_)
                             (_%else8887888892%_ (lambda () '()))
                             (_%K8888088904%_
                              (lambda (_%rest288895%_ _%x288896%_)
                                (let ((_%$e88898%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f88841%_
                                          _%x188875%_
                                          _%x288896%_))))
                                  (if _%$e88898%_
                                      ((lambda (_%r88901%_)
                                         (cons _%r88901%_
                                               (_%recur88850%_
                                                _%rest188874%_
                                                _%rest288895%_)))
                                       _%$e88898%_)
                                      (_%recur88850%_
                                       _%rest188874%_
                                       _%rest288895%_))))))
                        (if (pair? _%rest28887688884%_)
                            (let ((_%hd8888188907%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28887688884%_)))
                                  (_%tl8888288909%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28887688884%_))))
                              (let* ((_%x288912%_ _%hd8888188907%_)
                                     (_%rest288914%_ _%tl8888288909%_))
                                (_%K8888088904%_ _%rest288914%_ _%x288912%_)))
                            (_%else8887888892%_))))))
              (if (pair? _%rest18885588863%_)
                  (let ((_%hd8886088919%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18885588863%_)))
                        (_%tl8886188921%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18885588863%_))))
                    (let* ((_%x188924%_ _%hd8886088919%_)
                           (_%rest188926%_ _%tl8886188921%_))
                      (_%K8885988916%_ _%rest188926%_ _%x188924%_)))
                  (_%else8885788871%_)))))))
    (define filter-map
      (lambda _g92233_
        (let ((_g92232_ (let () (declare (not safe)) (##length _g92233_))))
          (cond ((let () (declare (not safe)) (##fx= _g92232_ 2))
                 (apply filter-map1 _g92233_))
                ((let () (declare (not safe)) (##fx= _g92232_ 3))
                 (apply filter-map2 _g92233_))
                ((let () (declare (not safe)) (##fx>= _g92232_ 3))
                 (apply filter-map* _g92233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g92233_))))))
    (define filter-map*
      (lambda (_%f88809%_ . _%rest88810%_)
        (if (procedure? _%f88809%_)
            (let ((_%f88814%_ _%f88809%_))
              (declare (not safe))
              (##apply __filter-map* _%f88814%_ _%rest88810%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f88809%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f88785%_ . _%rest88786%_)
        (let ((_%f88789%_ _%f88785%_))
          (let _%recur88798%_ ((_%rest88800%_ _%rest88786%_))
            (if (__andmap1 pair? _%rest88800%_)
                (let ((_%$e88803%_
                       (let ((__tmp92234 (map car _%rest88800%_)))
                         (declare (not safe))
                         (##apply _%f88789%_ __tmp92234))))
                  (if _%$e88803%_
                      ((lambda (_%r88806%_)
                         (cons _%r88806%_
                               (_%recur88798%_ (map cdr _%rest88800%_))))
                       _%$e88803%_)
                      (_%recur88798%_ (map cdr _%rest88800%_))))
                '())))))
    (define agetq__%
      (lambda (_%key88761%_ _%lst88763%_ _%default88765%_)
        (let ((_%$e88768%_
               (if (pair? _%lst88763%_) (assq _%key88761%_ _%lst88763%_) '#f)))
          (if _%$e88768%_
              (cdr _%$e88768%_)
              (if (procedure? _%default88765%_)
                  (_%default88765%_ _%key88761%_)
                  _%default88765%_)))))
    (define agetq__0
      (lambda (_%key88776%_ _%lst88777%_)
        (let ((_%default88779%_ '#f))
          (agetq__% _%key88776%_ _%lst88777%_ _%default88779%_))))
    (define agetq
      (lambda _g92236_
        (let ((_g92235_ (let () (declare (not safe)) (##length _g92236_))))
          (cond ((let () (declare (not safe)) (##fx= _g92235_ 2))
                 (apply agetq__0 _g92236_))
                ((let () (declare (not safe)) (##fx= _g92235_ 3))
                 (apply agetq__% _g92236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g92236_))))))
    (define agetv__%
      (lambda (_%key88736%_ _%lst88738%_ _%default88740%_)
        (let ((_%$e88743%_
               (if (pair? _%lst88738%_) (assv _%key88736%_ _%lst88738%_) '#f)))
          (if _%$e88743%_
              (cdr _%$e88743%_)
              (if (procedure? _%default88740%_)
                  (_%default88740%_ _%key88736%_)
                  _%default88740%_)))))
    (define agetv__0
      (lambda (_%key88751%_ _%lst88752%_)
        (let ((_%default88754%_ '#f))
          (agetv__% _%key88751%_ _%lst88752%_ _%default88754%_))))
    (define agetv
      (lambda _g92238_
        (let ((_g92237_ (let () (declare (not safe)) (##length _g92238_))))
          (cond ((let () (declare (not safe)) (##fx= _g92237_ 2))
                 (apply agetv__0 _g92238_))
                ((let () (declare (not safe)) (##fx= _g92237_ 3))
                 (apply agetv__% _g92238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g92238_))))))
    (define aget__%
      (lambda (_%key88711%_ _%lst88713%_ _%default88715%_)
        (let ((_%$e88718%_
               (if (pair? _%lst88713%_)
                   (assoc _%key88711%_ _%lst88713%_)
                   '#f)))
          (if _%$e88718%_
              (cdr _%$e88718%_)
              (if (procedure? _%default88715%_)
                  (_%default88715%_ _%key88711%_)
                  _%default88715%_)))))
    (define aget__0
      (lambda (_%key88726%_ _%lst88727%_)
        (let ((_%default88729%_ '#f))
          (aget__% _%key88726%_ _%lst88727%_ _%default88729%_))))
    (define aget
      (lambda _g92240_
        (let ((_g92239_ (let () (declare (not safe)) (##length _g92240_))))
          (cond ((let () (declare (not safe)) (##fx= _g92239_ 2))
                 (apply aget__0 _g92240_))
                ((let () (declare (not safe)) (##fx= _g92239_ 3))
                 (apply aget__% _g92240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g92240_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key88640%_ _%lst88642%_ _%default88644%_)
        (let _%lp88647%_ ((_%rest88650%_ _%lst88642%_))
          (let* ((_%rest8865288662%_ _%rest88650%_)
                 (_%else8865488670%_
                  (lambda ()
                    (if (procedure? _%default88644%_)
                        (_%default88644%_ _%key88640%_)
                        _%default88644%_)))
                 (_%K8865688679%_
                  (lambda (_%rest88673%_ _%v88674%_ _%k88676%_)
                    (if (eq? _%k88676%_ _%key88640%_)
                        _%v88674%_
                        (_%lp88647%_ _%rest88673%_)))))
            (if (pair? _%rest8865288662%_)
                (let ((_%hd8865788682%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8865288662%_)))
                      (_%tl8865888684%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8865288662%_))))
                  (let ((_%k88687%_ _%hd8865788682%_))
                    (if (pair? _%tl8865888684%_)
                        (let ((_%hd8865988689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8865888684%_)))
                              (_%tl8866088691%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8865888684%_))))
                          (let* ((_%v88694%_ _%hd8865988689%_)
                                 (_%rest88696%_ _%tl8866088691%_))
                            (_%K8865688679%_
                             _%rest88696%_
                             _%v88694%_
                             _%k88687%_)))
                        (_%else8865488670%_))))
                (_%else8865488670%_))))))
    (define pgetq__0
      (lambda (_%key88701%_ _%lst88702%_)
        (let ((_%default88704%_ '#f))
          (pgetq__% _%key88701%_ _%lst88702%_ _%default88704%_))))
    (define pgetq
      (lambda _g92242_
        (let ((_g92241_ (let () (declare (not safe)) (##length _g92242_))))
          (cond ((let () (declare (not safe)) (##fx= _g92241_ 2))
                 (apply pgetq__0 _g92242_))
                ((let () (declare (not safe)) (##fx= _g92241_ 3))
                 (apply pgetq__% _g92242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g92242_))))))
    (define pgetv__%
      (lambda (_%key88569%_ _%lst88571%_ _%default88573%_)
        (let _%lp88576%_ ((_%rest88579%_ _%lst88571%_))
          (let* ((_%rest8858188591%_ _%rest88579%_)
                 (_%else8858388599%_
                  (lambda ()
                    (if (procedure? _%default88573%_)
                        (_%default88573%_ _%key88569%_)
                        _%default88573%_)))
                 (_%K8858588608%_
                  (lambda (_%rest88602%_ _%v88603%_ _%k88605%_)
                    (if (eqv? _%k88605%_ _%key88569%_)
                        _%v88603%_
                        (_%lp88576%_ _%rest88602%_)))))
            (if (pair? _%rest8858188591%_)
                (let ((_%hd8858688611%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8858188591%_)))
                      (_%tl8858788613%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8858188591%_))))
                  (let ((_%k88616%_ _%hd8858688611%_))
                    (if (pair? _%tl8858788613%_)
                        (let ((_%hd8858888618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8858788613%_)))
                              (_%tl8858988620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8858788613%_))))
                          (let* ((_%v88623%_ _%hd8858888618%_)
                                 (_%rest88625%_ _%tl8858988620%_))
                            (_%K8858588608%_
                             _%rest88625%_
                             _%v88623%_
                             _%k88616%_)))
                        (_%else8858388599%_))))
                (_%else8858388599%_))))))
    (define pgetv__0
      (lambda (_%key88630%_ _%lst88631%_)
        (let ((_%default88633%_ '#f))
          (pgetv__% _%key88630%_ _%lst88631%_ _%default88633%_))))
    (define pgetv
      (lambda _g92244_
        (let ((_g92243_ (let () (declare (not safe)) (##length _g92244_))))
          (cond ((let () (declare (not safe)) (##fx= _g92243_ 2))
                 (apply pgetv__0 _g92244_))
                ((let () (declare (not safe)) (##fx= _g92243_ 3))
                 (apply pgetv__% _g92244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g92244_))))))
    (define pget__%
      (lambda (_%key88498%_ _%lst88500%_ _%default88502%_)
        (let _%lp88505%_ ((_%rest88508%_ _%lst88500%_))
          (let* ((_%rest8851088520%_ _%rest88508%_)
                 (_%else8851288528%_
                  (lambda ()
                    (if (procedure? _%default88502%_)
                        (_%default88502%_ _%key88498%_)
                        _%default88502%_)))
                 (_%K8851488537%_
                  (lambda (_%rest88531%_ _%v88532%_ _%k88534%_)
                    (if (equal? _%k88534%_ _%key88498%_)
                        _%v88532%_
                        (_%lp88505%_ _%rest88531%_)))))
            (if (pair? _%rest8851088520%_)
                (let ((_%hd8851588540%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8851088520%_)))
                      (_%tl8851688542%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8851088520%_))))
                  (let ((_%k88545%_ _%hd8851588540%_))
                    (if (pair? _%tl8851688542%_)
                        (let ((_%hd8851788547%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8851688542%_)))
                              (_%tl8851888549%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8851688542%_))))
                          (let* ((_%v88552%_ _%hd8851788547%_)
                                 (_%rest88554%_ _%tl8851888549%_))
                            (_%K8851488537%_
                             _%rest88554%_
                             _%v88552%_
                             _%k88545%_)))
                        (_%else8851288528%_))))
                (_%else8851288528%_))))))
    (define pget__0
      (lambda (_%key88559%_ _%lst88560%_)
        (let ((_%default88562%_ '#f))
          (pget__% _%key88559%_ _%lst88560%_ _%default88562%_))))
    (define pget
      (lambda _g92246_
        (let ((_g92245_ (let () (declare (not safe)) (##length _g92246_))))
          (cond ((let () (declare (not safe)) (##fx= _g92245_ 2))
                 (apply pget__0 _g92246_))
                ((let () (declare (not safe)) (##fx= _g92245_ 3))
                 (apply pget__% _g92246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g92246_))))))
    (define find
      (lambda (_%pred88482%_ _%lst88483%_)
        (if (procedure? _%pred88482%_)
            (let ((_%pred88487%_ _%pred88482%_))
              (__find _%pred88487%_ _%lst88483%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.13-517.17"
               'contract:
               'procedure?
               'value:
               _%pred88482%_)
              '#!void))))
    (define __find
      (lambda (_%pred88465%_ _%lst88466%_)
        (let* ((_%pred88469%_ _%pred88465%_)
               (_%$e88478%_ (__memf _%pred88469%_ _%lst88466%_)))
          (if _%$e88478%_
              (let () (declare (not safe)) (##car _%$e88478%_))
              '#f))))
    (define memf
      (lambda (_%proc88450%_ _%lst88451%_)
        (if (procedure? _%proc88450%_)
            (let ((_%proc88455%_ _%proc88450%_))
              (__memf _%proc88455%_ _%lst88451%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@522.13-522.17"
               'contract:
               'procedure?
               'value:
               _%proc88450%_)
              '#!void))))
    (define __memf
      (lambda (_%proc88400%_ _%lst88401%_)
        (let ((_%proc88404%_ _%proc88400%_))
          (let _%lp88413%_ ((_%rest88415%_ _%lst88401%_))
            (let* ((_%rest8841688424%_ _%rest88415%_)
                   (_%else8841888432%_ (lambda () '#f))
                   (_%K8842088438%_
                    (lambda (_%tl88435%_ _%hd88436%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc88404%_ _%hd88436%_))
                          _%rest88415%_
                          (_%lp88413%_ _%tl88435%_)))))
              (if (pair? _%rest8841688424%_)
                  (let ((_%hd8842188441%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8841688424%_)))
                        (_%tl8842288443%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8841688424%_))))
                    (let* ((_%hd88446%_ _%hd8842188441%_)
                           (_%tl88448%_ _%tl8842288443%_))
                      (_%K8842088438%_ _%tl88448%_ _%hd88446%_)))
                  (_%else8841888432%_)))))))
    (define remove1
      (lambda (_%el88353%_ _%lst88355%_)
        (let _%lp88358%_ ((_%rest88361%_ _%lst88355%_) (_%r88363%_ '()))
          (let* ((_%rest8836588373%_ _%rest88361%_)
                 (_%else8836788381%_ (lambda () _%lst88355%_))
                 (_%K8836988388%_
                  (lambda (_%rest88384%_ _%hd88385%_)
                    (if (equal? _%el88353%_ _%hd88385%_)
                        (__foldl1 cons _%rest88384%_ _%r88363%_)
                        (_%lp88358%_
                         _%rest88384%_
                         (cons _%hd88385%_ _%r88363%_))))))
            (if (pair? _%rest8836588373%_)
                (let ((_%hd8837088391%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8836588373%_)))
                      (_%tl8837188393%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8836588373%_))))
                  (let* ((_%hd88396%_ _%hd8837088391%_)
                         (_%rest88398%_ _%tl8837188393%_))
                    (_%K8836988388%_ _%rest88398%_ _%hd88396%_)))
                (_%else8836788381%_))))))
    (define remv1
      (lambda (_%el88306%_ _%lst88308%_)
        (let _%lp88311%_ ((_%rest88314%_ _%lst88308%_) (_%r88316%_ '()))
          (let* ((_%rest8831888326%_ _%rest88314%_)
                 (_%else8832088334%_ (lambda () _%lst88308%_))
                 (_%K8832288341%_
                  (lambda (_%rest88337%_ _%hd88338%_)
                    (if (eqv? _%el88306%_ _%hd88338%_)
                        (__foldl1 cons _%rest88337%_ _%r88316%_)
                        (_%lp88311%_
                         _%rest88337%_
                         (cons _%hd88338%_ _%r88316%_))))))
            (if (pair? _%rest8831888326%_)
                (let ((_%hd8832388344%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8831888326%_)))
                      (_%tl8832488346%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8831888326%_))))
                  (let* ((_%hd88349%_ _%hd8832388344%_)
                         (_%rest88351%_ _%tl8832488346%_))
                    (_%K8832288341%_ _%rest88351%_ _%hd88349%_)))
                (_%else8832088334%_))))))
    (define remq1
      (lambda (_%el88259%_ _%lst88261%_)
        (let _%lp88264%_ ((_%rest88267%_ _%lst88261%_) (_%r88269%_ '()))
          (let* ((_%rest8827188279%_ _%rest88267%_)
                 (_%else8827388287%_ (lambda () _%lst88261%_))
                 (_%K8827588294%_
                  (lambda (_%rest88290%_ _%hd88291%_)
                    (if (eq? _%el88259%_ _%hd88291%_)
                        (__foldl1 cons _%rest88290%_ _%r88269%_)
                        (_%lp88264%_
                         _%rest88290%_
                         (cons _%hd88291%_ _%r88269%_))))))
            (if (pair? _%rest8827188279%_)
                (let ((_%hd8827688297%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8827188279%_)))
                      (_%tl8827788299%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8827188279%_))))
                  (let* ((_%hd88302%_ _%hd8827688297%_)
                         (_%rest88304%_ _%tl8827788299%_))
                    (_%K8827588294%_ _%rest88304%_ _%hd88302%_)))
                (_%else8827388287%_))))))
    (define remf
      (lambda (_%proc88244%_ _%lst88245%_)
        (if (procedure? _%proc88244%_)
            (let ((_%proc88249%_ _%proc88244%_))
              (__remf _%proc88249%_ _%lst88245%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@544.13-544.17"
               'contract:
               'procedure?
               'value:
               _%proc88244%_)
              '#!void))))
    (define __remf
      (lambda (_%proc88193%_ _%lst88194%_)
        (let ((_%proc88197%_ _%proc88193%_))
          (let _%lp88206%_ ((_%rest88208%_ _%lst88194%_) (_%r88209%_ '()))
            (let* ((_%rest8821088218%_ _%rest88208%_)
                   (_%else8821288226%_ (lambda () _%lst88194%_))
                   (_%K8821488232%_
                    (lambda (_%rest88229%_ _%hd88230%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc88197%_ _%hd88230%_))
                          (__foldl1 cons _%rest88229%_ _%r88209%_)
                          (_%lp88206%_
                           _%rest88229%_
                           (cons _%hd88230%_ _%r88209%_))))))
              (if (pair? _%rest8821088218%_)
                  (let ((_%hd8821588235%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8821088218%_)))
                        (_%tl8821688237%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8821088218%_))))
                    (let* ((_%hd88240%_ _%hd8821588235%_)
                           (_%rest88242%_ _%tl8821688237%_))
                      (_%K8821488232%_ _%rest88242%_ _%hd88240%_)))
                  (_%else8821288226%_)))))))
    (define 1+
      (lambda (_%x88179%_)
        (if (number? _%x88179%_)
            (let ((_%x88183%_ _%x88179%_)) (__1+ _%x88183%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.11-553.12"
               'contract:
               'number?
               'value:
               _%x88179%_)
              '#!void))))
    (define __1+
      (lambda (_%x88167%_) (let ((_%x88170%_ _%x88167%_)) (+ _%x88170%_ '1))))
    (define 1-
      (lambda (_%x88153%_)
        (if (number? _%x88153%_)
            (let ((_%x88157%_ _%x88153%_)) (__1- _%x88157%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@561.11-561.12"
               'contract:
               'number?
               'value:
               _%x88153%_)
              '#!void))))
    (define __1-
      (lambda (_%x88141%_) (let ((_%x88144%_ _%x88141%_)) (- _%x88144%_ '1))))
    (define fx1+
      (lambda (_%x88127%_)
        (if (fixnum? _%x88127%_)
            (let ((_%x88131%_ _%x88127%_)) (__fx1+ _%x88131%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.13-569.14"
               'contract:
               'fixnum?
               'value:
               _%x88127%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x88115%_)
        (let ((_%x88118%_ _%x88115%_))
          (declare (not safe))
          (##fx+ _%x88118%_ '1))))
    (define fx1-
      (lambda (_%x88101%_)
        (if (fixnum? _%x88101%_)
            (let ((_%x88105%_ _%x88101%_)) (__fx1- _%x88105%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.14"
               'contract:
               'fixnum?
               'value:
               _%x88101%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x88089%_)
        (let ((_%x88092%_ _%x88089%_))
          (declare (not safe))
          (##fx- _%x88092%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x88086%_)
        (if (fixnum? _%x88086%_)
            (let () (declare (not safe)) (##fx>= _%x88086%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x88083%_)
        (if (fixnum? _%x88083%_)
            (let () (declare (not safe)) (##fx> _%x88083%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x88080%_)
        (let () (declare (not safe)) (##fx= _%x88080%_ '0))))
    (define fx<0?
      (lambda (_%x88077%_)
        (if (fixnum? _%x88077%_)
            (let () (declare (not safe)) (##fx< _%x88077%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x88074%_)
        (if (fixnum? _%x88074%_)
            (let () (declare (not safe)) (##fx<= _%x88074%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x88071%_)
        (if (symbol? _%x88071%_) (not (uninterned-symbol? _%x88071%_)) '#f)))
    (define display-as-string
      (lambda (_%x88056%_ _%port88057%_)
        (if (output-port? _%port88057%_)
            (let ((_%port88061%_ _%port88057%_))
              (__display-as-string _%x88056%_ _%port88061%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@605.28-605.32"
               'contract:
               'output-port?
               'value:
               _%port88057%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x88013%_ _%port88014%_)
        (let ((_%port88017%_ _%port88014%_))
          (if (or (string? _%x88013%_)
                  (symbol? _%x88013%_)
                  (keyword? _%x88013%_)
                  (number? _%x88013%_)
                  (char? _%x88013%_))
              (display _%x88013%_ _%port88017%_)
              (if (pair? _%x88013%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x88013%_))
                     _%port88017%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x88013%_))
                     _%port88017%_))
                  (if (vector? _%x88013%_)
                      (vector-for-each
                       (lambda (_%g8804088042%_)
                         (__display-as-string _%g8804088042%_ _%port88017%_))
                       _%x88013%_)
                      (if (or (null? _%x88013%_)
                              (eq? _%x88013%_ '#!void)
                              (eof-object? _%x88013%_)
                              (boolean? _%x88013%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x88013%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x87996%_)
        (if (string? _%x87996%_)
            _%x87996%_
            (if (symbol? _%x87996%_)
                (let () (declare (not safe)) (##symbol->string _%x87996%_))
                (if (keyword? _%x87996%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x87996%_))
                    (if (number? _%x87996%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x87996%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g8800288004%_)
                           (__display-as-string
                            _%x87996%_
                            _%g8800288004%_)))))))))
    (define as-string__1
      (lambda _%args88007%_
        (call-with-output-string
         '()
         (lambda (_%g8800888010%_)
           (__display-as-string _%args88007%_ _%g8800888010%_)))))
    (define as-string
      (lambda _g92248_
        (let ((_g92247_ (let () (declare (not safe)) (##length _g92248_))))
          (cond ((let () (declare (not safe)) (##fx= _g92247_ 1))
                 (apply as-string__0 _g92248_))
                (#t
                 (apply (lambda _%args88007%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args88007%_)))
                        _g92248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g92248_))))))
    (define make-symbol__0
      (lambda (_%x87992%_)
        (if (interned-symbol? _%x87992%_)
            _%x87992%_
            (let ((__tmp92249 (as-string__0 _%x87992%_)))
              (declare (not safe))
              (##string->symbol __tmp92249)))))
    (define make-symbol__1
      (lambda _%args87994%_
        (let ((__tmp92250
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args87994%_))))
          (declare (not safe))
          (##string->symbol __tmp92250))))
    (define make-symbol
      (lambda _g92252_
        (let ((_g92251_ (let () (declare (not safe)) (##length _g92252_))))
          (cond ((let () (declare (not safe)) (##fx= _g92251_ 1))
                 (apply make-symbol__0 _g92252_))
                (#t
                 (apply (lambda _%args87994%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args87994%_)))
                        _g92252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g92252_))))))
    (define make-keyword__0
      (lambda (_%x87988%_)
        (if (interned-keyword? _%x87988%_)
            _%x87988%_
            (let ((__tmp92253 (as-string__0 _%x87988%_)))
              (declare (not safe))
              (##string->keyword __tmp92253)))))
    (define make-keyword__1
      (lambda _%args87990%_
        (let ((__tmp92254
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args87990%_))))
          (declare (not safe))
          (##string->keyword __tmp92254))))
    (define make-keyword
      (lambda _g92256_
        (let ((_g92255_ (let () (declare (not safe)) (##length _g92256_))))
          (cond ((let () (declare (not safe)) (##fx= _g92255_ 1))
                 (apply make-keyword__0 _g92256_))
                (#t
                 (apply (lambda _%args87990%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args87990%_)))
                        _g92256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g92256_))))))
    (define interned-keyword?
      (lambda (_%x87985%_)
        (if (keyword? _%x87985%_) (not (uninterned-keyword? _%x87985%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym87971%_)
        (if (symbol? _%sym87971%_)
            (let ((_%sym87975%_ _%sym87971%_))
              (__symbol->keyword _%sym87975%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@648.24-648.27"
               'contract:
               'symbol?
               'value:
               _%sym87971%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym87959%_)
        (let ((_%sym87962%_ _%sym87959%_))
          (if (uninterned-symbol? _%sym87962%_)
              (let ((__tmp92257
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym87962%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp92257))
              (let ((__tmp92258
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym87962%_))))
                (declare (not safe))
                (##string->keyword __tmp92258))))))
    (define keyword->symbol
      (lambda (_%sym87945%_)
        (if (keyword? _%sym87945%_)
            (let ((_%sym87949%_ _%sym87945%_))
              (__keyword->symbol _%sym87949%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.24-654.27"
               'contract:
               'keyword?
               'value:
               _%sym87945%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym87933%_)
        (let ((_%sym87936%_ _%sym87933%_))
          (if (uninterned-keyword? _%sym87936%_)
              (let ((__tmp92259
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym87936%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp92259))
              (let ((__tmp92260
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym87936%_))))
                (declare (not safe))
                (##string->symbol __tmp92260))))))
    (define bytes->string__%
      (lambda (_%bstr87898%_ _%enc87899%_)
        (if (u8vector? _%bstr87898%_)
            (let ((_%bstr87903%_ _%bstr87898%_))
              (if (symbol? _%enc87899%_)
                  (let ((_%enc87913%_ _%enc87899%_))
                    (__bytes->string__% _%bstr87903%_ _%enc87913%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@661.25-661.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc87899%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.22-660.26"
               'contract:
               'u8vector?
               'value:
               _%bstr87898%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr87926%_)
        (let ((_%enc87928%_ 'UTF-8))
          (bytes->string__% _%bstr87926%_ _%enc87928%_))))
    (define bytes->string
      (lambda _g92262_
        (let ((_g92261_ (let () (declare (not safe)) (##length _g92262_))))
          (cond ((let () (declare (not safe)) (##fx= _g92261_ 1))
                 (apply bytes->string__0 _g92262_))
                ((let () (declare (not safe)) (##fx= _g92261_ 2))
                 (apply bytes->string__% _g92262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g92262_))))))
    (define __bytes->string__%
      (lambda (_%bstr87857%_ _%enc87858%_)
        (let* ((_%bstr87861%_ _%bstr87857%_) (_%enc87869%_ _%enc87858%_))
          (if (eq? _%enc87869%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr87861%_))
              (let* ((_%in87878%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc87869%_
                                   (cons 'init: (cons _%bstr87861%_ '()))))))
                     (_%len87880%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr87861%_)))
                     (_%out87882%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len87880%_)))
                     (_%n87884%_
                      (read-substring
                       _%out87882%_
                       '0
                       _%len87880%_
                       _%in87878%_)))
                (string-shrink! _%out87882%_ _%n87884%_)
                _%out87882%_)))))
    (define __bytes->string__0
      (lambda (_%bstr87890%_)
        (let ((_%enc87892%_ 'UTF-8))
          (__bytes->string__% _%bstr87890%_ _%enc87892%_))))
    (define __bytes->string
      (lambda _g92264_
        (let ((_g92263_ (let () (declare (not safe)) (##length _g92264_))))
          (cond ((let () (declare (not safe)) (##fx= _g92263_ 1))
                 (apply __bytes->string__0 _g92264_))
                ((let () (declare (not safe)) (##fx= _g92263_ 2))
                 (apply __bytes->string__% _g92264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g92264_))))))
    (define string->bytes__%
      (lambda (_%str87821%_ _%enc87822%_)
        (if (string? _%str87821%_)
            (let ((_%str87826%_ _%str87821%_))
              (if (symbol? _%enc87822%_)
                  (let ((_%enc87836%_ _%enc87822%_))
                    (__string->bytes__% _%str87826%_ _%enc87836%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc87822%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.25"
               'contract:
               'string?
               'value:
               _%str87821%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str87849%_)
        (let ((_%enc87851%_ 'UTF-8))
          (string->bytes__% _%str87849%_ _%enc87851%_))))
    (define string->bytes
      (lambda _g92266_
        (let ((_g92265_ (let () (declare (not safe)) (##length _g92266_))))
          (cond ((let () (declare (not safe)) (##fx= _g92265_ 1))
                 (apply string->bytes__0 _g92266_))
                ((let () (declare (not safe)) (##fx= _g92265_ 2))
                 (apply string->bytes__% _g92266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g92266_))))))
    (define __string->bytes__%
      (lambda (_%str87789%_ _%enc87790%_)
        (let* ((_%str87793%_ _%str87789%_) (_%enc87801%_ _%enc87790%_))
          (if (eq? _%enc87801%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str87793%_))
              (__substring->bytes__%
               _%str87793%_
               '0
               (let () (declare (not safe)) (##string-length _%str87793%_))
               _%enc87801%_)))))
    (define __string->bytes__0
      (lambda (_%str87813%_)
        (let ((_%enc87815%_ 'UTF-8))
          (__string->bytes__% _%str87813%_ _%enc87815%_))))
    (define __string->bytes
      (lambda _g92268_
        (let ((_g92267_ (let () (declare (not safe)) (##length _g92268_))))
          (cond ((let () (declare (not safe)) (##fx= _g92267_ 1))
                 (apply __string->bytes__0 _g92268_))
                ((let () (declare (not safe)) (##fx= _g92267_ 2))
                 (apply __string->bytes__% _g92268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g92268_))))))
    (define substring->bytes__%
      (lambda (_%str87737%_ _%start87738%_ _%end87739%_ _%enc87740%_)
        (if (string? _%str87737%_)
            (let ((_%str87744%_ _%str87737%_))
              (if (nonnegative-fixnum? _%start87738%_)
                  (let ((_%start87754%_ _%start87738%_))
                    (if (nonnegative-fixnum? _%end87739%_)
                        (let ((_%end87764%_ _%end87739%_))
                          (__substring->bytes__%
                           _%str87744%_
                           _%start87754%_
                           _%end87764%_
                           _%enc87740%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@681.25-681.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end87739%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@680.25-680.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start87738%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@679.25-679.28"
               'contract:
               'string?
               'value:
               _%str87737%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str87777%_ _%start87778%_ _%end87779%_)
        (let ((_%enc87781%_ 'UTF-8))
          (substring->bytes__%
           _%str87777%_
           _%start87778%_
           _%end87779%_
           _%enc87781%_))))
    (define substring->bytes
      (lambda _g92270_
        (let ((_g92269_ (let () (declare (not safe)) (##length _g92270_))))
          (cond ((let () (declare (not safe)) (##fx= _g92269_ 3))
                 (apply substring->bytes__0 _g92270_))
                ((let () (declare (not safe)) (##fx= _g92269_ 4))
                 (apply substring->bytes__% _g92270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g92270_))))))
    (define __substring->bytes__%
      (lambda (_%str87689%_ _%start87690%_ _%end87691%_ _%enc87692%_)
        (let* ((_%str87695%_ _%str87689%_)
               (_%start87703%_ _%start87690%_)
               (_%end87711%_ _%end87691%_))
          (if (eq? _%enc87692%_ 'UTF-8)
              (string->utf8 _%str87695%_ _%start87703%_ _%end87711%_)
              (let ((_%out87720%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc87692%_ '())))))
                (write-substring
                 _%str87695%_
                 _%start87703%_
                 _%end87711%_
                 _%out87720%_)
                (get-output-u8vector _%out87720%_))))))
    (define __substring->bytes__0
      (lambda (_%str87725%_ _%start87726%_ _%end87727%_)
        (let ((_%enc87729%_ 'UTF-8))
          (__substring->bytes__%
           _%str87725%_
           _%start87726%_
           _%end87727%_
           _%enc87729%_))))
    (define __substring->bytes
      (lambda _g92272_
        (let ((_g92271_ (let () (declare (not safe)) (##length _g92272_))))
          (cond ((let () (declare (not safe)) (##fx= _g92271_ 3))
                 (apply __substring->bytes__0 _g92272_))
                ((let () (declare (not safe)) (##fx= _g92271_ 4))
                 (apply __substring->bytes__% _g92272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g92272_))))))
    (define string-empty?
      (lambda (_%str87674%_)
        (if (string? _%str87674%_)
            (let ((_%str87678%_ _%str87674%_)) (__string-empty? _%str87678%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@690.22-690.25"
               'contract:
               'string?
               'value:
               _%str87674%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str87662%_)
        (let* ((_%str87665%_ _%str87662%_)
               (__tmp92273
                (let () (declare (not safe)) (##string-length _%str87665%_))))
          (declare (not safe))
          (##fxzero? __tmp92273))))
    (define string-index__%
      (lambda (_%str87614%_ _%char87615%_ _%start87616%_)
        (if (string? _%str87614%_)
            (let ((_%str87620%_ _%str87614%_))
              (if (char? _%char87615%_)
                  (let ((_%char87630%_ _%char87615%_))
                    (if (nonnegative-fixnum? _%start87616%_)
                        (let ((_%start87640%_ _%start87616%_))
                          (__string-index__%
                           _%str87620%_
                           _%char87630%_
                           _%start87640%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@696.21-696.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start87616%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.21-695.25"
                     'contract:
                     'char?
                     'value:
                     _%char87615%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.21-694.24"
               'contract:
               'string?
               'value:
               _%str87614%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str87653%_ _%char87654%_)
        (let ((_%start87656%_ '0))
          (string-index__% _%str87653%_ _%char87654%_ _%start87656%_))))
    (define string-index
      (lambda _g92275_
        (let ((_g92274_ (let () (declare (not safe)) (##length _g92275_))))
          (cond ((let () (declare (not safe)) (##fx= _g92274_ 2))
                 (apply string-index__0 _g92275_))
                ((let () (declare (not safe)) (##fx= _g92274_ 3))
                 (apply string-index__% _g92275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g92275_))))))
    (define __string-index__%
      (lambda (_%str87553%_ _%char87554%_ _%start87555%_)
        (let* ((_%str87558%_ _%str87553%_)
               (_%char87566%_ _%char87554%_)
               (_%start87574%_ _%start87555%_)
               (_%len87583%_
                (let () (declare (not safe)) (##string-length _%str87558%_))))
          (let _%lp87585%_ ((_%k87587%_ _%start87574%_))
            (let ((_%k87589%_ _%k87587%_))
              (if (let () (declare (not safe)) (##fx< _%k87589%_ _%len87583%_))
                  (if (eq? _%char87566%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str87558%_ _%k87589%_)))
                      _%k87589%_
                      (_%lp87585%_
                       (let () (declare (not safe)) (##fx+ _%k87589%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str87604%_ _%char87605%_)
        (let ((_%start87607%_ '0))
          (__string-index__% _%str87604%_ _%char87605%_ _%start87607%_))))
    (define __string-index
      (lambda _g92277_
        (let ((_g92276_ (let () (declare (not safe)) (##length _g92277_))))
          (cond ((let () (declare (not safe)) (##fx= _g92276_ 2))
                 (apply __string-index__0 _g92277_))
                ((let () (declare (not safe)) (##fx= _g92276_ 3))
                 (apply __string-index__% _g92277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g92277_))))))
    (define string-rindex__%
      (lambda (_%str87514%_ _%char87515%_ _%start87516%_)
        (if (string? _%str87514%_)
            (let ((_%str87520%_ _%str87514%_))
              (if (char? _%char87515%_)
                  (let ((_%char87530%_ _%char87515%_))
                    (__string-rindex__%
                     _%str87520%_
                     _%char87530%_
                     _%start87516%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@706.25-706.29"
                     'contract:
                     'char?
                     'value:
                     _%char87515%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@705.22-705.25"
               'contract:
               'string?
               'value:
               _%str87514%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str87543%_ _%char87544%_)
        (let ((_%start87546%_ '#f))
          (string-rindex__% _%str87543%_ _%char87544%_ _%start87546%_))))
    (define string-rindex
      (lambda _g92279_
        (let ((_g92278_ (let () (declare (not safe)) (##length _g92279_))))
          (cond ((let () (declare (not safe)) (##fx= _g92278_ 2))
                 (apply string-rindex__0 _g92279_))
                ((let () (declare (not safe)) (##fx= _g92278_ 3))
                 (apply string-rindex__% _g92279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g92279_))))))
    (define __string-rindex__%
      (lambda (_%str87456%_ _%char87457%_ _%start87458%_)
        (let* ((_%str87461%_ _%str87456%_)
               (_%char87469%_ _%char87457%_)
               (_%len87478%_
                (let () (declare (not safe)) (##string-length _%str87461%_)))
               (_%start87480%_
                (if (fixnum? _%start87458%_)
                    _%start87458%_
                    (let () (declare (not safe)) (##fx- _%len87478%_ '1)))))
          (let _%lp87483%_ ((_%k87485%_ _%start87480%_))
            (let ((_%k87487%_ _%k87485%_))
              (if (let () (declare (not safe)) (##fx>= _%k87487%_ '0))
                  (if (eq? _%char87469%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str87461%_ _%k87487%_)))
                      _%k87487%_
                      (_%lp87483%_
                       (let () (declare (not safe)) (##fx- _%k87487%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str87504%_ _%char87505%_)
        (let ((_%start87507%_ '#f))
          (__string-rindex__% _%str87504%_ _%char87505%_ _%start87507%_))))
    (define __string-rindex
      (lambda _g92281_
        (let ((_g92280_ (let () (declare (not safe)) (##length _g92281_))))
          (cond ((let () (declare (not safe)) (##fx= _g92280_ 2))
                 (apply __string-rindex__0 _g92281_))
                ((let () (declare (not safe)) (##fx= _g92280_ 3))
                 (apply __string-rindex__% _g92281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g92281_))))))
    (define string-split
      (lambda (_%str87430%_ _%char87431%_)
        (if (string? _%str87430%_)
            (let ((_%str87435%_ _%str87430%_))
              (if (char? _%char87431%_)
                  (let ((_%char87445%_ _%char87431%_))
                    (__string-split _%str87435%_ _%char87445%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@717.37-717.41"
                     'contract:
                     'char?
                     'value:
                     _%char87431%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.21-717.24"
               'contract:
               'string?
               'value:
               _%str87430%_)
              '#!void))))
    (define __string-split
      (lambda (_%str87371%_ _%char87372%_)
        (let* ((_%str87375%_ _%str87371%_)
               (_%char87383%_ _%char87372%_)
               (_%len87392%_
                (let () (declare (not safe)) (##string-length _%str87375%_))))
          (let _%lp87394%_ ((_%start87396%_ '0) (_%r87397%_ '()))
            (let* ((_%start87400%_ _%start87396%_)
                   (_%$e87413%_
                    (__string-index__%
                     _%str87375%_
                     _%char87383%_
                     _%start87400%_)))
              (if _%$e87413%_
                  ((lambda (_%end87416%_)
                     (let ((_%end87418%_ _%end87416%_))
                       (_%lp87394%_
                        (let () (declare (not safe)) (##fx+ _%end87418%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str87375%_
                                 _%start87400%_
                                 _%end87418%_))
                              _%r87397%_))))
                   _%$e87413%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start87400%_ _%len87392%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str87375%_
                                _%start87400%_
                                _%len87392%_)))
                       _%r87397%_)
                      (reverse! _%r87397%_))))))))
    (define string-join
      (lambda (_%strs87221%_ _%join87222%_)
        (letrec ((_%join-length87225%_
                  (lambda (_%strs87309%_ _%jlen87310%_)
                    (let _%lp87312%_ ((_%rest87314%_ _%strs87309%_)
                                      (_%len87315%_ '0))
                      (let* ((_%len87317%_ _%len87315%_)
                             (_%rest8732587333%_ _%rest87314%_)
                             (_%else8732787341%_ (lambda () '0))
                             (_%K8732987359%_
                              (lambda (_%rest87344%_ _%hd87345%_)
                                (if (string? _%hd87345%_)
                                    (let ((_%hd87347%_ _%hd87345%_))
                                      (if (pair? _%rest87344%_)
                                          (_%lp87312%_
                                           _%rest87344%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd87347%_))
                                                _%jlen87310%_
                                                _%len87317%_))
                                          (let ((__tmp92282
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd87347%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp92282 _%len87317%_))))
                                    (error '"expected string" _%hd87345%_)))))
                        (if (pair? _%rest8732587333%_)
                            (let ((_%hd8733087362%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8732587333%_)))
                                  (_%tl8733187364%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8732587333%_))))
                              (let* ((_%hd87367%_ _%hd8733087362%_)
                                     (_%rest87369%_ _%tl8733187364%_))
                                (_%K8732987359%_ _%rest87369%_ _%hd87367%_)))
                            (_%else8732787341%_)))))))
          (let* ((_%join87230%_
                  (if (char? _%join87222%_)
                      (let () (declare (not safe)) (##string _%join87222%_))
                      (if (string? _%join87222%_)
                          _%join87222%_
                          (error '"expected string or char" _%join87222%_))))
                 (_%jlen87232%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join87230%_)))
                 (_%olen87234%_
                  (_%join-length87225%_ _%strs87221%_ _%jlen87232%_))
                 (_%ostr87236%_
                  (let () (declare (not safe)) (##make-string _%olen87234%_))))
            (let _%lp87239%_ ((_%rest87241%_ _%strs87221%_) (_%k87242%_ '0))
              (let* ((_%k87245%_ _%k87242%_)
                     (_%rest8726187269%_ _%rest87241%_)
                     (_%else8726387277%_ (lambda () '""))
                     (_%K8726587297%_
                      (lambda (_%rest87280%_ _%hd87281%_)
                        (let* ((_%hd87283%_ _%hd87281%_)
                               (_%hdlen87295%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd87283%_))))
                          (if (pair? _%rest87280%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd87283%_
                                   '0
                                   _%hdlen87295%_
                                   _%ostr87236%_
                                   _%k87245%_))
                                (let ((__tmp92283
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k87245%_ _%hdlen87295%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join87230%_
                                   '0
                                   _%jlen87232%_
                                   _%ostr87236%_
                                   __tmp92283))
                                (_%lp87239%_
                                 _%rest87280%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k87245%_
                                          _%hdlen87295%_
                                          _%jlen87232%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd87283%_
                                   '0
                                   _%hdlen87295%_
                                   _%ostr87236%_
                                   _%k87245%_))
                                _%ostr87236%_))))))
                (if (pair? _%rest8726187269%_)
                    (let ((_%hd8726687300%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8726187269%_)))
                          (_%tl8726787302%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8726187269%_))))
                      (let* ((_%hd87305%_ _%hd8726687300%_)
                             (_%rest87307%_ _%tl8726787302%_))
                        (_%K8726587297%_ _%rest87307%_ _%hd87305%_)))
                    (_%else8726387277%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes87147%_ _%port87148%_ _%start87149%_ _%end87150%_)
        (if (u8vector? _%bytes87147%_)
            (let ((_%bytes87154%_ _%bytes87147%_))
              (if (input-port? _%port87148%_)
                  (let ((_%port87164%_ _%port87148%_))
                    (if ((lambda (_%o87173%_)
                           (and (fixnum? _%o87173%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o87173%_ '0))
                                (let ((__tmp92284
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes87154%_))))
                                  (declare (not safe))
                                  (##fx< _%o87173%_ __tmp92284))))
                         _%start87149%_)
                        (let ((_%start87177%_ _%start87149%_))
                          (if ((lambda (_%o87186%_)
                                 (and (fixnum? _%o87186%_)
                                      (let ((__tmp92285
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes87154%_))))
                                        (declare (not safe))
                                        (##fx<= _%start87177%_
                                                _%o87186%_
                                                __tmp92285))))
                               _%end87150%_)
                              (let ((_%end87190%_ _%end87150%_))
                                (__read-u8vector__%
                                 _%bytes87154%_
                                 _%port87164%_
                                 _%start87177%_
                                 _%end87190%_))
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
                                 _%end87150%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@782.22-782.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start87149%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@781.22-781.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port87148%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@780.22-780.27"
               'contract:
               'u8vector?
               'value:
               _%bytes87147%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes87203%_ _%port87204%_)
        (let* ((_%start87206%_ '0)
               (_%end87208%_ (u8vector-length _%bytes87203%_)))
          (read-u8vector__%
           _%bytes87203%_
           _%port87204%_
           _%start87206%_
           _%end87208%_))))
    (define read-u8vector__1
      (lambda (_%bytes87210%_ _%port87211%_ _%start87212%_)
        (let ((_%end87214%_ (u8vector-length _%bytes87210%_)))
          (read-u8vector__%
           _%bytes87210%_
           _%port87211%_
           _%start87212%_
           _%end87214%_))))
    (define read-u8vector
      (lambda _g92287_
        (let ((_g92286_ (let () (declare (not safe)) (##length _g92287_))))
          (cond ((let () (declare (not safe)) (##fx= _g92286_ 2))
                 (apply read-u8vector__0 _g92287_))
                ((let () (declare (not safe)) (##fx= _g92286_ 3))
                 (apply read-u8vector__1 _g92287_))
                ((let () (declare (not safe)) (##fx= _g92286_ 4))
                 (apply read-u8vector__% _g92287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g92287_))))))
    (define __read-u8vector__%
      (lambda (_%bytes87086%_ _%port87087%_ _%start87088%_ _%end87089%_)
        (let* ((_%bytes87092%_ _%bytes87086%_)
               (_%port87100%_ _%port87087%_)
               (_%start87108%_ _%start87088%_)
               (_%end87116%_ _%end87089%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes87092%_
           _%start87108%_
           _%end87116%_
           _%port87100%_))))
    (define __read-u8vector__0
      (lambda (_%bytes87128%_ _%port87129%_)
        (let* ((_%start87131%_ '0)
               (_%end87133%_ (u8vector-length _%bytes87128%_)))
          (__read-u8vector__%
           _%bytes87128%_
           _%port87129%_
           _%start87131%_
           _%end87133%_))))
    (define __read-u8vector__1
      (lambda (_%bytes87135%_ _%port87136%_ _%start87137%_)
        (let ((_%end87139%_ (u8vector-length _%bytes87135%_)))
          (__read-u8vector__%
           _%bytes87135%_
           _%port87136%_
           _%start87137%_
           _%end87139%_))))
    (define __read-u8vector
      (lambda _g92289_
        (let ((_g92288_ (let () (declare (not safe)) (##length _g92289_))))
          (cond ((let () (declare (not safe)) (##fx= _g92288_ 2))
                 (apply __read-u8vector__0 _g92289_))
                ((let () (declare (not safe)) (##fx= _g92288_ 3))
                 (apply __read-u8vector__1 _g92289_))
                ((let () (declare (not safe)) (##fx= _g92288_ 4))
                 (apply __read-u8vector__% _g92289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g92289_))))))
    (define write-u8vector__%
      (lambda (_%bytes87016%_ _%port87017%_ _%start87018%_ _%end87019%_)
        (if (u8vector? _%bytes87016%_)
            (let ((_%bytes87023%_ _%bytes87016%_))
              (if (output-port? _%port87017%_)
                  (let* ((_%port87033%_ _%port87017%_)
                         (_%start87042%_ _%start87018%_))
                    (if ((lambda (_%o87050%_)
                           (and (fixnum? _%o87050%_)
                                (let ((__tmp92290
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes87023%_))))
                                  (declare (not safe))
                                  (##fx<= _%start87042%_
                                          _%o87050%_
                                          __tmp92290))))
                         _%end87019%_)
                        (let ((_%end87054%_ _%end87019%_))
                          (__write-u8vector__%
                           _%bytes87023%_
                           _%port87033%_
                           _%start87042%_
                           _%end87054%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@793.23-793.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end87019%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@791.23-791.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port87017%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@790.23-790.28"
               'contract:
               'u8vector?
               'value:
               _%bytes87016%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes87067%_ _%port87068%_)
        (let* ((_%start87070%_ '0)
               (_%end87072%_ (u8vector-length _%bytes87067%_)))
          (write-u8vector__%
           _%bytes87067%_
           _%port87068%_
           _%start87070%_
           _%end87072%_))))
    (define write-u8vector__1
      (lambda (_%bytes87074%_ _%port87075%_ _%start87076%_)
        (let ((_%end87078%_ (u8vector-length _%bytes87074%_)))
          (write-u8vector__%
           _%bytes87074%_
           _%port87075%_
           _%start87076%_
           _%end87078%_))))
    (define write-u8vector
      (lambda _g92292_
        (let ((_g92291_ (let () (declare (not safe)) (##length _g92292_))))
          (cond ((let () (declare (not safe)) (##fx= _g92291_ 2))
                 (apply write-u8vector__0 _g92292_))
                ((let () (declare (not safe)) (##fx= _g92291_ 3))
                 (apply write-u8vector__1 _g92292_))
                ((let () (declare (not safe)) (##fx= _g92291_ 4))
                 (apply write-u8vector__% _g92292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g92292_))))))
    (define __write-u8vector__%
      (lambda (_%bytes86955%_ _%port86956%_ _%start86957%_ _%end86958%_)
        (let* ((_%bytes86961%_ _%bytes86955%_)
               (_%port86969%_ _%port86956%_)
               (_%start86977%_ _%start86957%_)
               (_%end86985%_ _%end86958%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes86961%_
           _%start86977%_
           _%end86985%_
           _%port86969%_))))
    (define __write-u8vector__0
      (lambda (_%bytes86997%_ _%port86998%_)
        (let* ((_%start87000%_ '0)
               (_%end87002%_ (u8vector-length _%bytes86997%_)))
          (__write-u8vector__%
           _%bytes86997%_
           _%port86998%_
           _%start87000%_
           _%end87002%_))))
    (define __write-u8vector__1
      (lambda (_%bytes87004%_ _%port87005%_ _%start87006%_)
        (let ((_%end87008%_ (u8vector-length _%bytes87004%_)))
          (__write-u8vector__%
           _%bytes87004%_
           _%port87005%_
           _%start87006%_
           _%end87008%_))))
    (define __write-u8vector
      (lambda _g92294_
        (let ((_g92293_ (let () (declare (not safe)) (##length _g92294_))))
          (cond ((let () (declare (not safe)) (##fx= _g92293_ 2))
                 (apply __write-u8vector__0 _g92294_))
                ((let () (declare (not safe)) (##fx= _g92293_ 3))
                 (apply __write-u8vector__1 _g92294_))
                ((let () (declare (not safe)) (##fx= _g92293_ 4))
                 (apply __write-u8vector__% _g92294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g92294_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag86923%_
               _%dbg-exprs86924%_
               _%dbg-thunks86925%_
               _%expr86926%_
               _%thunk86927%_)
        (letrec ((_%o86929%_ (current-output-port))
                 (_%e86930%_ (current-error-port))
                 (_%p86931%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f86932%_
                  (lambda ()
                    (force-output _%o86929%_)
                    (force-output _%e86930%_)))
                 (_%d86933%_
                  (lambda (_%x86940%_) (display _%x86940%_ _%e86930%_)))
                 (_%w86934%_
                  (lambda (_%x86942%_) (_%p86931%_ _%x86942%_ _%e86930%_)))
                 (_%n86935%_ (lambda () (newline _%e86930%_)))
                 (_%v86936%_
                  (lambda (_%l86945%_)
                    (for-each
                     (lambda (_%x86947%_)
                       (_%d86933%_ '" ")
                       (_%w86934%_ _%x86947%_))
                     _%l86945%_)
                    (_%n86935%_)))
                 (_%x86937%_
                  (lambda (_%expr86949%_ _%thunk86950%_)
                    (_%f86932%_)
                    (_%d86933%_ '"  ")
                    (_%w86934%_ _%expr86949%_)
                    (_%d86933%_ '" =>")
                    (call-with-values
                     _%thunk86950%_
                     (lambda _%x86952%_
                       (_%v86936%_ _%x86952%_)
                       (_%f86932%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x86952%_)))))))
          (if _%tag86923%_
              (begin
                (if (eq? _%tag86923%_ '#!void)
                    '#!void
                    (begin
                      (_%f86932%_)
                      (_%d86933%_ _%tag86923%_)
                      (_%n86935%_)))
                (for-each _%x86937%_ _%dbg-exprs86924%_ _%dbg-thunks86925%_)
                (if _%thunk86927%_
                    (_%x86937%_ _%expr86926%_ _%thunk86927%_)
                    '#!void))
              (if _%thunk86927%_ (_%thunk86927%_) '#!void)))))))
