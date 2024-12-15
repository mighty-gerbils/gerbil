(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1734280444)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args90371%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args90371%_))
          (newline))))
    (define display*
      (lambda _%args90368%_
        (let () (declare (not safe)) (##for-each display _%args90368%_))))
    (define file-newer?
      (lambda (_%file190343%_ _%file290344%_)
        (if (string? _%file190343%_)
            (let ((_%file190348%_ _%file190343%_))
              (if (string? _%file290344%_)
                  (let ((_%file290358%_ _%file290344%_))
                    (__file-newer? _%file190348%_ _%file290358%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@64.20-64.25"
                     'contract:
                     'string?
                     'value:
                     _%file290344%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@63.20-63.25"
               'contract:
               'string?
               'value:
               _%file190343%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file190291%_ _%file290292%_)
        (let* ((_%file190295%_ _%file190291%_) (_%file290303%_ _%file290292%_))
          (letrec ((_%modification-time90312%_
                    (lambda (_%file90331%_)
                      (let ((_%file90334%_ _%file90331%_))
                        (_%__modification-time90313%_ _%file90334%_))))
                   (_%__modification-time90313%_
                    (lambda (_%file90315%_)
                      (let* ((_%file90318%_ _%file90315%_)
                             (__tmp92101
                              (let ((__tmp92102
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file90318%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp92102))))
                        (declare (not safe))
                        (##time->seconds __tmp92101)))))
            (let ((__tmp92104 (_%__modification-time90313%_ _%file190295%_))
                  (__tmp92103 (_%__modification-time90313%_ _%file290303%_)))
              (declare (not safe))
              (##fl> __tmp92104 __tmp92103))))))
    (define create-directory*__%
      (lambda (_%dir90256%_ _%perms90257%_)
        (if (string? _%dir90256%_)
            (let ((_%dir90261%_ _%dir90256%_))
              (if (fixnum? _%perms90257%_)
                  (let ((_%perms90271%_ _%perms90257%_))
                    (__create-directory*__% _%dir90261%_ _%perms90271%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.26-75.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms90257%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.26-74.29"
               'contract:
               'string?
               'value:
               _%dir90256%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir90284%_)
        (let ((_%perms90286%_ '493))
          (create-directory*__% _%dir90284%_ _%perms90286%_))))
    (define create-directory*
      (lambda _g92106_
        (let ((_g92105_ (let () (declare (not safe)) (##length _g92106_))))
          (cond ((let () (declare (not safe)) (##fx= _g92105_ 1))
                 (apply create-directory*__0 _g92106_))
                ((let () (declare (not safe)) (##fx= _g92105_ 2))
                 (apply create-directory*__% _g92106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g92106_))))))
    (define __create-directory*__%
      (lambda (_%dir90180%_ _%perms90181%_)
        (let* ((_%dir90184%_ _%dir90180%_) (_%perms90192%_ _%perms90181%_))
          (letrec ((_%create190201%_
                    (lambda (_%path90233%_)
                      (let ((_%path90236%_ _%path90233%_))
                        (_%__create190202%_ _%path90236%_))))
                   (_%__create190202%_
                    (lambda (_%path90214%_)
                      (let ((_%path90217%_ _%path90214%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path90217%_))
                            (if (eq? (file-type _%path90217%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path90217%_))
                            (if _%perms90192%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path90217%_
                                             (cons 'permissions:
                                                   (cons _%perms90192%_
                                                         '())))))
                                (create-directory _%path90217%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir90184%_))
                '#!void
                (let _%lp90204%_ ((_%start90206%_ '0))
                  (let ((_%$e90208%_
                         (__string-index__% _%dir90184%_ '#\/ _%start90206%_)))
                    (if _%$e90208%_
                        ((lambda (_%x90211%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x90211%_ '0))
                               (_%__create190202%_
                                (substring _%dir90184%_ '0 _%x90211%_))
                               '#!void)
                           (_%lp90204%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x90211%_ '1))))
                         _%$e90208%_)
                        (_%__create190202%_ _%dir90184%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir90248%_)
        (let ((_%perms90250%_ '493))
          (__create-directory*__% _%dir90248%_ _%perms90250%_))))
    (define __create-directory*
      (lambda _g92108_
        (let ((_g92107_ (let () (declare (not safe)) (##length _g92108_))))
          (cond ((let () (declare (not safe)) (##fx= _g92107_ 1))
                 (apply __create-directory*__0 _g92108_))
                ((let () (declare (not safe)) (##fx= _g92107_ 2))
                 (apply __create-directory*__% _g92108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g92108_))))))
    (define move-file__%
      (lambda (_%src90131%_ _%dest90132%_ _%replace?90133%_)
        (if (string? _%src90131%_)
            (let ((_%src90137%_ _%src90131%_))
              (if (string? _%dest90132%_)
                  (let ((_%dest90147%_ _%dest90132%_))
                    (if (boolean? _%replace?90133%_)
                        (let ((_%replace?90157%_ _%replace?90133%_))
                          (__move-file__%
                           _%src90137%_
                           _%dest90147%_
                           _%replace?90157%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@99.51-99.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?90133%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@99.34-99.38"
                     'contract:
                     'string?
                     'value:
                     _%dest90132%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@99.18-99.21"
               'contract:
               'string?
               'value:
               _%src90131%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src90170%_ _%dest90171%_)
        (let ((_%replace?90173%_ '#t))
          (move-file__% _%src90170%_ _%dest90171%_ _%replace?90173%_))))
    (define move-file
      (lambda _g92110_
        (let ((_g92109_ (let () (declare (not safe)) (##length _g92110_))))
          (cond ((let () (declare (not safe)) (##fx= _g92109_ 2))
                 (apply move-file__0 _g92110_))
                ((let () (declare (not safe)) (##fx= _g92109_ 3))
                 (apply move-file__% _g92110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g92110_))))))
    (define __move-file__%
      (lambda (_%src90074%_ _%dest90075%_ _%replace?90076%_)
        (let* ((_%src90079%_ _%src90074%_)
               (_%dest90087%_ _%dest90075%_)
               (_%replace?90095%_ _%replace?90076%_))
          (letrec ((_%force-move-it90104%_
                    (lambda ()
                      (let ((_%tmp90110%_
                             (if _%replace?90095%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest90087%_))
                                     (let ((__tmp92111
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest90087%_
                                        '"."
                                        __tmp92111))
                                     '#f)
                                 '#f)))
                        (if _%tmp90110%_
                            (rename-file _%dest90087%_ _%tmp90110%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e90112%_)
                           (if _%tmp90110%_
                               (rename-file _%tmp90110%_ _%dest90087%_ '#t)
                               '#!void)
                           (raise _%e90112%_))
                         (lambda ()
                           (let ((_%fi90115%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src90079%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi90115%_))
                                      'symbolic-link)
                                 (let ((__tmp92112
                                        (path-normalize _%src90079%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp92112
                                    _%dest90087%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file _%src90079%_ _%dest90087%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src90079%_))
                           (if _%tmp90110%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp90110%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e90106%_)
               (if (let () (declare (not safe)) (##file-exists? _%src90079%_))
                   (_%force-move-it90104%_)
                   (raise _%e90106%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src90079%_
                  _%dest90087%_
                  _%replace?90095%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src90121%_ _%dest90122%_)
        (let ((_%replace?90124%_ '#t))
          (__move-file__% _%src90121%_ _%dest90122%_ _%replace?90124%_))))
    (define __move-file
      (lambda _g92114_
        (let ((_g92113_ (let () (declare (not safe)) (##length _g92114_))))
          (cond ((let () (declare (not safe)) (##fx= _g92113_ 2))
                 (apply __move-file__0 _g92114_))
                ((let () (declare (not safe)) (##fx= _g92113_ 3))
                 (apply __move-file__% _g92114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g92114_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore90070%_ '#t))
    (define true? (lambda (_%obj90067%_) (eq? _%obj90067%_ '#t)))
    (define false (lambda _%ignore90064%_ '#f))
    (define void (lambda _%ignore90061%_ '#!void))
    (define void? (lambda (_%obj90058%_) (eq? _%obj90058%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj90055%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj90055%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj90052%_) (eq? _%obj90052%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj90049%_) (eq? _%obj90049%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj90046%_) (eq? _%obj90046%_ '#!optional)))
    (define immediate?
      (lambda (_%obj90041%_)
        (let* ((_%t90044%_ (let () (declare (not safe)) (##type _%obj90041%_)))
               (__tmp92115
                (let () (declare (not safe)) (##fxand _%t90044%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp92115))))
    (define nonnegative-fixnum?
      (lambda (_%obj90038%_)
        (if (fixnum? _%obj90038%_)
            (let () (declare (not safe)) (##fx>= _%obj90038%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj90032%_)
        (let ((_%$e90035%_ (pair? _%obj90032%_)))
          (if _%$e90035%_ _%$e90035%_ (null? _%obj90032%_)))))
    (define values-count
      (lambda (_%obj90029%_)
        (if (let () (declare (not safe)) (##values? _%obj90029%_))
            (let () (declare (not safe)) (##vector-length _%obj90029%_))
            '1)))
    (define values-ref
      (lambda (_%obj90014%_ _%k90015%_)
        (if (fixnum? _%k90015%_)
            (let ((_%k90019%_ _%k90015%_))
              (__values-ref _%obj90014%_ _%k90019%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@234.23-234.24"
               'contract:
               'fixnum?
               'value:
               _%k90015%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj90001%_ _%k90002%_)
        (let ((_%k90005%_ _%k90002%_))
          (if (let () (declare (not safe)) (##values? _%obj90001%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj90001%_ _%k90005%_))
              _%obj90001%_))))
    (define values->list
      (lambda (_%obj89998%_)
        (if (let () (declare (not safe)) (##values? _%obj89998%_))
            (let () (declare (not safe)) (##vector->list _%obj89998%_))
            (list _%obj89998%_))))
    (define foldl1
      (lambda (_%f89982%_ _%iv89983%_ _%lst89984%_)
        (if (procedure? _%f89982%_)
            (let ((_%f89988%_ _%f89982%_))
              (__foldl1 _%f89988%_ _%iv89983%_ _%lst89984%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@257.15-257.16"
               'contract:
               'procedure?
               'value:
               _%f89982%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f89930%_ _%iv89931%_ _%lst89932%_)
        (let ((_%f89935%_ _%f89930%_))
          (let _%lp89944%_ ((_%rest89946%_ _%lst89932%_)
                            (_%r89947%_ _%iv89931%_))
            (let* ((_%rest8994889956%_ _%rest89946%_)
                   (_%else8995089964%_ (lambda () _%r89947%_))
                   (_%K8995289970%_
                    (lambda (_%rest89967%_ _%x89968%_)
                      (_%lp89944%_
                       _%rest89967%_
                       (let ()
                         (declare (not safe))
                         (_%f89935%_ _%x89968%_ _%r89947%_))))))
              (if (pair? _%rest8994889956%_)
                  (let ((_%hd8995389973%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8994889956%_)))
                        (_%tl8995489975%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8994889956%_))))
                    (let* ((_%x89978%_ _%hd8995389973%_)
                           (_%rest89980%_ _%tl8995489975%_))
                      (_%K8995289970%_ _%rest89980%_ _%x89978%_)))
                  (_%else8995089964%_)))))))
    (define foldl2
      (lambda (_%f89913%_ _%iv89914%_ _%lst189915%_ _%lst289916%_)
        (if (procedure? _%f89913%_)
            (let ((_%f89920%_ _%f89913%_))
              (__foldl2 _%f89920%_ _%iv89914%_ _%lst189915%_ _%lst289916%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@264.15-264.16"
               'contract:
               'procedure?
               'value:
               _%f89913%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f89826%_ _%iv89827%_ _%lst189828%_ _%lst289829%_)
        (let ((_%f89832%_ _%f89826%_))
          (let _%lp89841%_ ((_%rest189843%_ _%lst189828%_)
                            (_%rest289844%_ _%lst289829%_)
                            (_%r89845%_ _%iv89827%_))
            (let* ((_%rest18984689854%_ _%rest189843%_)
                   (_%else8984889862%_ (lambda () _%r89845%_))
                   (_%K8985089901%_
                    (lambda (_%rest189865%_ _%x189866%_)
                      (let* ((_%rest28986789875%_ _%rest289844%_)
                             (_%else8986989883%_ (lambda () _%r89845%_))
                             (_%K8987189889%_
                              (lambda (_%rest289886%_ _%x289887%_)
                                (_%lp89841%_
                                 _%rest189865%_
                                 _%rest289886%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f89832%_
                                    _%x189866%_
                                    _%x289887%_
                                    _%r89845%_))))))
                        (if (pair? _%rest28986789875%_)
                            (let ((_%hd8987289892%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28986789875%_)))
                                  (_%tl8987389894%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28986789875%_))))
                              (let* ((_%x289897%_ _%hd8987289892%_)
                                     (_%rest289899%_ _%tl8987389894%_))
                                (_%K8987189889%_ _%rest289899%_ _%x289897%_)))
                            (_%else8986989883%_))))))
              (if (pair? _%rest18984689854%_)
                  (let ((_%hd8985189904%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18984689854%_)))
                        (_%tl8985289906%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18984689854%_))))
                    (let* ((_%x189909%_ _%hd8985189904%_)
                           (_%rest189911%_ _%tl8985289906%_))
                      (_%K8985089901%_ _%rest189911%_ _%x189909%_)))
                  (_%else8984889862%_)))))))
    (define foldl
      (lambda _g92117_
        (let ((_g92116_ (let () (declare (not safe)) (##length _g92117_))))
          (cond ((let () (declare (not safe)) (##fx= _g92116_ 3))
                 (apply foldl1 _g92117_))
                ((let () (declare (not safe)) (##fx= _g92116_ 4))
                 (apply foldl2 _g92117_))
                ((let () (declare (not safe)) (##fx>= _g92116_ 4))
                 (apply foldl* _g92117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g92117_))))))
    (define foldl*
      (lambda (_%f89795%_ _%iv89796%_ . _%rest89797%_)
        (if (procedure? _%f89795%_)
            (let ((_%f89801%_ _%f89795%_))
              (declare (not safe))
              (##apply __foldl* _%f89801%_ _%iv89796%_ _%rest89797%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@282.15-282.16"
               'contract:
               'procedure?
               'value:
               _%f89795%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f89773%_ _%iv89774%_ . _%rest89775%_)
        (let ((_%f89778%_ _%f89773%_))
          (let _%recur89787%_ ((_%iv89789%_ _%iv89774%_)
                               (_%rest89790%_ _%rest89775%_))
            (if (__andmap1 pair? _%rest89790%_)
                (_%recur89787%_
                 (let ((__tmp92118
                        (__foldr1
                         (lambda (_%xs89792%_ _%r89793%_)
                           (cons (car _%xs89792%_) _%r89793%_))
                         (list _%iv89789%_)
                         _%rest89790%_)))
                   (declare (not safe))
                   (##apply _%f89778%_ __tmp92118))
                 (map cdr _%rest89790%_))
                _%iv89789%_)))))
    (define foldr1
      (lambda (_%f89757%_ _%iv89758%_ _%lst89759%_)
        (if (procedure? _%f89757%_)
            (let ((_%f89763%_ _%f89757%_))
              (__foldr1 _%f89763%_ _%iv89758%_ _%lst89759%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f89757%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f89706%_ _%iv89707%_ _%lst89708%_)
        (let ((_%f89711%_ _%f89706%_))
          (let _%recur89720%_ ((_%rest89722%_ _%lst89708%_))
            (let* ((_%rest8972389731%_ _%rest89722%_)
                   (_%else8972589739%_ (lambda () _%iv89707%_))
                   (_%K8972789745%_
                    (lambda (_%rest89742%_ _%x89743%_)
                      (let ((__tmp92119 (_%recur89720%_ _%rest89742%_)))
                        (declare (not safe))
                        (_%f89711%_ _%x89743%_ __tmp92119)))))
              (if (pair? _%rest8972389731%_)
                  (let ((_%hd8972889748%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8972389731%_)))
                        (_%tl8972989750%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8972389731%_))))
                    (let* ((_%x89753%_ _%hd8972889748%_)
                           (_%rest89755%_ _%tl8972989750%_))
                      (_%K8972789745%_ _%rest89755%_ _%x89753%_)))
                  (_%else8972589739%_)))))))
    (define foldr2
      (lambda (_%f89689%_ _%iv89690%_ _%lst189691%_ _%lst289692%_)
        (if (procedure? _%f89689%_)
            (let ((_%f89696%_ _%f89689%_))
              (__foldr2 _%f89696%_ _%iv89690%_ _%lst189691%_ _%lst289692%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@299.15-299.16"
               'contract:
               'procedure?
               'value:
               _%f89689%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f89603%_ _%iv89604%_ _%lst189605%_ _%lst289606%_)
        (let ((_%f89609%_ _%f89603%_))
          (let _%recur89618%_ ((_%rest189620%_ _%lst189605%_)
                               (_%rest289621%_ _%lst289606%_))
            (let* ((_%rest18962289630%_ _%rest189620%_)
                   (_%else8962489638%_ (lambda () _%iv89604%_))
                   (_%K8962689677%_
                    (lambda (_%rest189641%_ _%x189642%_)
                      (let* ((_%rest28964389651%_ _%rest289621%_)
                             (_%else8964589659%_ (lambda () _%iv89604%_))
                             (_%K8964789665%_
                              (lambda (_%rest289662%_ _%x289663%_)
                                (let ((__tmp92120
                                       (_%recur89618%_
                                        _%rest189641%_
                                        _%rest289662%_)))
                                  (declare (not safe))
                                  (_%f89609%_
                                   _%x189642%_
                                   _%x289663%_
                                   __tmp92120)))))
                        (if (pair? _%rest28964389651%_)
                            (let ((_%hd8964889668%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28964389651%_)))
                                  (_%tl8964989670%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28964389651%_))))
                              (let* ((_%x289673%_ _%hd8964889668%_)
                                     (_%rest289675%_ _%tl8964989670%_))
                                (_%K8964789665%_ _%rest289675%_ _%x289673%_)))
                            (_%else8964589659%_))))))
              (if (pair? _%rest18962289630%_)
                  (let ((_%hd8962789680%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18962289630%_)))
                        (_%tl8962889682%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18962289630%_))))
                    (let* ((_%x189685%_ _%hd8962789680%_)
                           (_%rest189687%_ _%tl8962889682%_))
                      (_%K8962689677%_ _%rest189687%_ _%x189685%_)))
                  (_%else8962489638%_)))))))
    (define foldr
      (lambda _g92122_
        (let ((_g92121_ (let () (declare (not safe)) (##length _g92122_))))
          (cond ((let () (declare (not safe)) (##fx= _g92121_ 3))
                 (apply foldr1 _g92122_))
                ((let () (declare (not safe)) (##fx= _g92121_ 4))
                 (apply foldr2 _g92122_))
                ((let () (declare (not safe)) (##fx>= _g92121_ 4))
                 (apply foldr* _g92122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g92122_))))))
    (define foldr*
      (lambda (_%f89572%_ _%iv89573%_ . _%rest89574%_)
        (if (procedure? _%f89572%_)
            (let ((_%f89578%_ _%f89572%_))
              (declare (not safe))
              (##apply __foldr* _%f89578%_ _%iv89573%_ _%rest89574%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@317.15-317.16"
               'contract:
               'procedure?
               'value:
               _%f89572%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f89551%_ _%iv89552%_ . _%rest89553%_)
        (let ((_%f89556%_ _%f89551%_))
          (let _%recur89565%_ ((_%rest89567%_ _%rest89553%_))
            (if (__andmap1 pair? _%rest89567%_)
                (let ((__tmp92123
                       (__foldr1
                        (lambda (_%xs89569%_ _%r89570%_)
                          (cons (car _%xs89569%_) _%r89570%_))
                        (list (_%recur89565%_ (map cdr _%rest89567%_)))
                        _%rest89567%_)))
                  (declare (not safe))
                  (##apply _%f89556%_ __tmp92123))
                _%iv89552%_)))))
    (define remove-nulls!
      (lambda (_%l89438%_)
        (let* ((_%l8943989452%_ _%l89438%_)
               (_%E8944389456%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8943989452%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8944889541%_
                 (lambda (_%r89539%_) (remove-nulls! _%r89539%_)))
                (_%K8944589528%_
                 (lambda (_%r89468%_)
                   (let _%loop89470%_ ((_%l89472%_ _%l89438%_)
                                       (_%r89473%_ _%r89468%_))
                     (let* ((_%r8947489487%_ _%r89473%_)
                            (_%E8947889491%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8947489487%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8948389518%_
                              (lambda (_%rr89516%_)
                                (let ((__tmp92125 _%l89472%_)
                                      (__tmp92124 (remove-nulls! _%rr89516%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp92125 __tmp92124))))
                             (_%K8948089505%_
                              (lambda (_%rr89503%_)
                                (_%loop89470%_ _%r89473%_ _%rr89503%_)))
                             (_%K8947989496%_ (lambda () '#!void)))
                         (if (pair? _%r8947489487%_)
                             (let ((_%tl8948589523%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8947489487%_)))
                                   (_%hd8948489521%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8947489487%_))))
                               (if (null? _%hd8948489521%_)
                                   (let ((_%rr89526%_ _%tl8948589523%_))
                                     (_%K8948389518%_ _%rr89526%_))
                                   (let ((_%rr89511%_ _%tl8948589523%_))
                                     (_%K8948089505%_ _%rr89511%_))))
                             '#!void))))
                   _%l89438%_))
                (_%K8944489461%_ (lambda () _%l89438%_)))
            (if (pair? _%l8943989452%_)
                (let ((_%tl8945089546%_
                       (let () (declare (not safe)) (##cdr _%l8943989452%_)))
                      (_%hd8944989544%_
                       (let () (declare (not safe)) (##car _%l8943989452%_))))
                  (if (null? _%hd8944989544%_)
                      (let ((_%r89549%_ _%tl8945089546%_))
                        (remove-nulls! _%r89549%_))
                      (let ((_%r89534%_ _%tl8945089546%_))
                        (_%K8944589528%_ _%r89534%_))))
                (_%K8944489461%_))))))
    (define append1!
      (lambda (_%l89423%_ _%x89424%_)
        (let ((_%l289427%_ (cons _%x89424%_ '())))
          (if (pair? _%l89423%_)
              (let ((_%l89429%_ _%l89423%_))
                (let ((__tmp92126
                       (let () (declare (not safe)) (##last-pair _%l89429%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp92126 _%l289427%_))
                _%l89429%_)
              _%l289427%_))))
    (define append-reverse-until
      (lambda (_%pred89407%_ _%rhead89408%_ _%tail89409%_)
        (if (procedure? _%pred89407%_)
            (let ((_%pred89413%_ _%pred89407%_))
              (__append-reverse-until
               _%pred89413%_
               _%rhead89408%_
               _%tail89409%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@357.29-357.33"
               'contract:
               'procedure?
               'value:
               _%pred89407%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred89349%_ _%rhead89350%_ _%tail89351%_)
        (let ((_%pred89354%_ _%pred89349%_))
          (let _%loop89363%_ ((_%rhead89365%_ _%rhead89350%_)
                              (_%tail89366%_ _%tail89351%_))
            (let* ((_%rhead8936889377%_ _%rhead89365%_)
                   (_%E8937189381%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8936889377%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8937589404%_ (lambda () (values '() _%tail89366%_)))
                    (_%K8937289388%_
                     (lambda (_%r89385%_ _%a89386%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred89354%_ _%a89386%_))
                           (values _%rhead89365%_ _%tail89366%_)
                           (_%loop89363%_
                            _%r89385%_
                            (cons _%a89386%_ _%tail89366%_))))))
                (let ((_%try-match8937089400%_
                       (lambda ()
                         (if (pair? _%rhead8936889377%_)
                             (let ((_%tl8937489393%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8936889377%_)))
                                   (_%hd8937389391%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8936889377%_))))
                               (let ((_%a89396%_ _%hd8937389391%_)
                                     (_%r89398%_ _%tl8937489393%_))
                                 (_%K8937289388%_ _%r89398%_ _%a89396%_)))
                             (_%E8937189381%_)))))
                  (if (null? _%rhead8936889377%_)
                      (_%K8937589404%_)
                      (_%try-match8937089400%_)))))))))
    (define andmap1
      (lambda (_%f89334%_ _%lst89335%_)
        (if (procedure? _%f89334%_)
            (let ((_%f89339%_ _%f89334%_)) (__andmap1 _%f89339%_ _%lst89335%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@368.16-368.17"
               'contract:
               'procedure?
               'value:
               _%f89334%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f89283%_ _%lst89284%_)
        (let ((_%f89287%_ _%f89283%_))
          (let _%lp89296%_ ((_%rest89298%_ _%lst89284%_))
            (let* ((_%rest8930089308%_ _%rest89298%_)
                   (_%else8930289316%_ (lambda () '#t))
                   (_%K8930489322%_
                    (lambda (_%rest89319%_ _%x89320%_)
                      (if (let () (declare (not safe)) (_%f89287%_ _%x89320%_))
                          (_%lp89296%_ _%rest89319%_)
                          '#f))))
              (if (pair? _%rest8930089308%_)
                  (let ((_%hd8930589325%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8930089308%_)))
                        (_%tl8930689327%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8930089308%_))))
                    (let* ((_%x89330%_ _%hd8930589325%_)
                           (_%rest89332%_ _%tl8930689327%_))
                      (_%K8930489322%_ _%rest89332%_ _%x89330%_)))
                  (_%else8930289316%_)))))))
    (define andmap2
      (lambda (_%f89267%_ _%lst189268%_ _%lst289269%_)
        (if (procedure? _%f89267%_)
            (let ((_%f89273%_ _%f89267%_))
              (__andmap2 _%f89273%_ _%lst189268%_ _%lst289269%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f89267%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f89181%_ _%lst189182%_ _%lst289183%_)
        (let ((_%f89186%_ _%f89181%_))
          (let _%lp89195%_ ((_%rest189197%_ _%lst189182%_)
                            (_%rest289198%_ _%lst289183%_))
            (let* ((_%rest18920089208%_ _%rest189197%_)
                   (_%else8920289216%_ (lambda () '#t))
                   (_%K8920489255%_
                    (lambda (_%rest189219%_ _%x189220%_)
                      (let* ((_%rest28922189229%_ _%rest289198%_)
                             (_%else8922389237%_ (lambda () '#t))
                             (_%K8922589243%_
                              (lambda (_%rest289240%_ _%x289241%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f89186%_ _%x189220%_ _%x289241%_))
                                    (_%lp89195%_ _%rest189219%_ _%rest289240%_)
                                    '#f))))
                        (if (pair? _%rest28922189229%_)
                            (let ((_%hd8922689246%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28922189229%_)))
                                  (_%tl8922789248%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28922189229%_))))
                              (let* ((_%x289251%_ _%hd8922689246%_)
                                     (_%rest289253%_ _%tl8922789248%_))
                                (_%K8922589243%_ _%rest289253%_ _%x289251%_)))
                            (_%else8922389237%_))))))
              (if (pair? _%rest18920089208%_)
                  (let ((_%hd8920589258%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18920089208%_)))
                        (_%tl8920689260%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18920089208%_))))
                    (let* ((_%x189263%_ _%hd8920589258%_)
                           (_%rest189265%_ _%tl8920689260%_))
                      (_%K8920489255%_ _%rest189265%_ _%x189263%_)))
                  (_%else8920289216%_)))))))
    (define andmap
      (lambda _g92128_
        (let ((_g92127_ (let () (declare (not safe)) (##length _g92128_))))
          (cond ((let () (declare (not safe)) (##fx= _g92127_ 2))
                 (apply andmap1 _g92128_))
                ((let () (declare (not safe)) (##fx= _g92127_ 3))
                 (apply andmap2 _g92128_))
                ((let () (declare (not safe)) (##fx>= _g92127_ 3))
                 (apply andmap* _g92128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g92128_))))))
    (define andmap*
      (lambda (_%f89154%_ . _%rest89155%_)
        (if (procedure? _%f89154%_)
            (let ((_%f89159%_ _%f89154%_))
              (declare (not safe))
              (##apply __andmap* _%f89159%_ _%rest89155%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@397.16-397.17"
               'contract:
               'procedure?
               'value:
               _%f89154%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f89136%_ . _%rest89137%_)
        (let ((_%f89140%_ _%f89136%_))
          (let _%recur89149%_ ((_%rest89151%_ _%rest89137%_))
            (if (__andmap1 pair? _%rest89151%_)
                (if (let ((__tmp92129 (map car _%rest89151%_)))
                      (declare (not safe))
                      (##apply _%f89140%_ __tmp92129))
                    (_%recur89149%_ (map cdr _%rest89151%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f89121%_ _%lst89122%_)
        (if (procedure? _%f89121%_)
            (let ((_%f89126%_ _%f89121%_)) (__ormap1 _%f89126%_ _%lst89122%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.15-406.16"
               'contract:
               'procedure?
               'value:
               _%f89121%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f89068%_ _%lst89069%_)
        (let ((_%f89072%_ _%f89068%_))
          (let _%lp89081%_ ((_%rest89083%_ _%lst89069%_))
            (let* ((_%rest8908489092%_ _%rest89083%_)
                   (_%else8908689100%_ (lambda () '#f))
                   (_%K8908889109%_
                    (lambda (_%rest89103%_ _%x89104%_)
                      (let ((_%$e89106%_
                             (let ()
                               (declare (not safe))
                               (_%f89072%_ _%x89104%_))))
                        (if _%$e89106%_
                            _%$e89106%_
                            (_%lp89081%_ _%rest89103%_))))))
              (if (pair? _%rest8908489092%_)
                  (let ((_%hd8908989112%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8908489092%_)))
                        (_%tl8909089114%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8908489092%_))))
                    (let* ((_%x89117%_ _%hd8908989112%_)
                           (_%rest89119%_ _%tl8909089114%_))
                      (_%K8908889109%_ _%rest89119%_ _%x89117%_)))
                  (_%else8908689100%_)))))))
    (define ormap2
      (lambda (_%f89052%_ _%lst189053%_ _%lst289054%_)
        (if (procedure? _%f89052%_)
            (let ((_%f89058%_ _%f89052%_))
              (__ormap2 _%f89058%_ _%lst189053%_ _%lst289054%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.15-413.16"
               'contract:
               'procedure?
               'value:
               _%f89052%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f88964%_ _%lst188965%_ _%lst288966%_)
        (let ((_%f88969%_ _%f88964%_))
          (let _%lp88978%_ ((_%rest188980%_ _%lst188965%_)
                            (_%rest288981%_ _%lst288966%_))
            (let* ((_%rest18898288990%_ _%rest188980%_)
                   (_%else8898488998%_ (lambda () '#f))
                   (_%K8898689040%_
                    (lambda (_%rest189001%_ _%x189002%_)
                      (let* ((_%rest28900389011%_ _%rest288981%_)
                             (_%else8900589019%_ (lambda () '#f))
                             (_%K8900789028%_
                              (lambda (_%rest289022%_ _%x289023%_)
                                (let ((_%$e89025%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f88969%_
                                          _%x189002%_
                                          _%x289023%_))))
                                  (if _%$e89025%_
                                      _%$e89025%_
                                      (_%lp88978%_
                                       _%rest189001%_
                                       _%rest289022%_))))))
                        (if (pair? _%rest28900389011%_)
                            (let ((_%hd8900889031%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28900389011%_)))
                                  (_%tl8900989033%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28900389011%_))))
                              (let* ((_%x289036%_ _%hd8900889031%_)
                                     (_%rest289038%_ _%tl8900989033%_))
                                (_%K8900789028%_ _%rest289038%_ _%x289036%_)))
                            (_%else8900589019%_))))))
              (if (pair? _%rest18898288990%_)
                  (let ((_%hd8898789043%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18898288990%_)))
                        (_%tl8898889045%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18898288990%_))))
                    (let* ((_%x189048%_ _%hd8898789043%_)
                           (_%rest189050%_ _%tl8898889045%_))
                      (_%K8898689040%_ _%rest189050%_ _%x189048%_)))
                  (_%else8898488998%_)))))))
    (define ormap
      (lambda _g92131_
        (let ((_g92130_ (let () (declare (not safe)) (##length _g92131_))))
          (cond ((let () (declare (not safe)) (##fx= _g92130_ 2))
                 (apply ormap1 _g92131_))
                ((let () (declare (not safe)) (##fx= _g92130_ 3))
                 (apply ormap2 _g92131_))
                ((let () (declare (not safe)) (##fx>= _g92130_ 3))
                 (apply ormap* _g92131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g92131_))))))
    (define ormap*
      (lambda (_%f88937%_ . _%rest88938%_)
        (if (procedure? _%f88937%_)
            (let ((_%f88942%_ _%f88937%_))
              (declare (not safe))
              (##apply __ormap* _%f88942%_ _%rest88938%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@431.15-431.16"
               'contract:
               'procedure?
               'value:
               _%f88937%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f88917%_ . _%rest88918%_)
        (let ((_%f88921%_ _%f88917%_))
          (let _%recur88930%_ ((_%rest88932%_ _%rest88918%_))
            (if (__andmap1 pair? _%rest88932%_)
                (let ((_%$e88934%_
                       (let ((__tmp92132 (map car _%rest88932%_)))
                         (declare (not safe))
                         (##apply _%f88921%_ __tmp92132))))
                  (if _%$e88934%_
                      _%$e88934%_
                      (_%recur88930%_ (map cdr _%rest88932%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f88902%_ _%lst88903%_)
        (if (procedure? _%f88902%_)
            (let ((_%f88907%_ _%f88902%_))
              (__filter-map1 _%f88907%_ _%lst88903%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.20-438.21"
               'contract:
               'procedure?
               'value:
               _%f88902%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f88845%_ _%lst88846%_)
        (let ((_%f88849%_ _%f88845%_))
          (let _%recur88858%_ ((_%rest88860%_ _%lst88846%_))
            (let* ((_%rest8886288870%_ _%rest88860%_)
                   (_%else8886488878%_ (lambda () '()))
                   (_%K8886688890%_
                    (lambda (_%rest88881%_ _%x88882%_)
                      (let ((_%$e88884%_
                             (let ()
                               (declare (not safe))
                               (_%f88849%_ _%x88882%_))))
                        (if _%$e88884%_
                            ((lambda (_%r88887%_)
                               (cons _%r88887%_
                                     (_%recur88858%_ _%rest88881%_)))
                             _%$e88884%_)
                            (_%recur88858%_ _%rest88881%_))))))
              (if (pair? _%rest8886288870%_)
                  (let ((_%hd8886788893%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8886288870%_)))
                        (_%tl8886888895%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8886288870%_))))
                    (let* ((_%x88898%_ _%hd8886788893%_)
                           (_%rest88900%_ _%tl8886888895%_))
                      (_%K8886688890%_ _%rest88900%_ _%x88898%_)))
                  (_%else8886488878%_)))))))
    (define filter-map2
      (lambda (_%f88829%_ _%lst188830%_ _%lst288831%_)
        (if (procedure? _%f88829%_)
            (let ((_%f88835%_ _%f88829%_))
              (__filter-map2 _%f88835%_ _%lst188830%_ _%lst288831%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@449.20-449.21"
               'contract:
               'procedure?
               'value:
               _%f88829%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f88737%_ _%lst188738%_ _%lst288739%_)
        (let ((_%f88742%_ _%f88737%_))
          (let _%recur88751%_ ((_%rest188753%_ _%lst188738%_)
                               (_%rest288754%_ _%lst288739%_))
            (let* ((_%rest18875688764%_ _%rest188753%_)
                   (_%else8875888772%_ (lambda () '()))
                   (_%K8876088817%_
                    (lambda (_%rest188775%_ _%x188776%_)
                      (let* ((_%rest28877788785%_ _%rest288754%_)
                             (_%else8877988793%_ (lambda () '()))
                             (_%K8878188805%_
                              (lambda (_%rest288796%_ _%x288797%_)
                                (let ((_%$e88799%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f88742%_
                                          _%x188776%_
                                          _%x288797%_))))
                                  (if _%$e88799%_
                                      ((lambda (_%r88802%_)
                                         (cons _%r88802%_
                                               (_%recur88751%_
                                                _%rest188775%_
                                                _%rest288796%_)))
                                       _%$e88799%_)
                                      (_%recur88751%_
                                       _%rest188775%_
                                       _%rest288796%_))))))
                        (if (pair? _%rest28877788785%_)
                            (let ((_%hd8878288808%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28877788785%_)))
                                  (_%tl8878388810%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28877788785%_))))
                              (let* ((_%x288813%_ _%hd8878288808%_)
                                     (_%rest288815%_ _%tl8878388810%_))
                                (_%K8878188805%_ _%rest288815%_ _%x288813%_)))
                            (_%else8877988793%_))))))
              (if (pair? _%rest18875688764%_)
                  (let ((_%hd8876188820%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18875688764%_)))
                        (_%tl8876288822%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18875688764%_))))
                    (let* ((_%x188825%_ _%hd8876188820%_)
                           (_%rest188827%_ _%tl8876288822%_))
                      (_%K8876088817%_ _%rest188827%_ _%x188825%_)))
                  (_%else8875888772%_)))))))
    (define filter-map
      (lambda _g92134_
        (let ((_g92133_ (let () (declare (not safe)) (##length _g92134_))))
          (cond ((let () (declare (not safe)) (##fx= _g92133_ 2))
                 (apply filter-map1 _g92134_))
                ((let () (declare (not safe)) (##fx= _g92133_ 3))
                 (apply filter-map2 _g92134_))
                ((let () (declare (not safe)) (##fx>= _g92133_ 3))
                 (apply filter-map* _g92134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g92134_))))))
    (define filter-map*
      (lambda (_%f88710%_ . _%rest88711%_)
        (if (procedure? _%f88710%_)
            (let ((_%f88715%_ _%f88710%_))
              (declare (not safe))
              (##apply __filter-map* _%f88715%_ _%rest88711%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f88710%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f88686%_ . _%rest88687%_)
        (let ((_%f88690%_ _%f88686%_))
          (let _%recur88699%_ ((_%rest88701%_ _%rest88687%_))
            (if (__andmap1 pair? _%rest88701%_)
                (let ((_%$e88704%_
                       (let ((__tmp92135 (map car _%rest88701%_)))
                         (declare (not safe))
                         (##apply _%f88690%_ __tmp92135))))
                  (if _%$e88704%_
                      ((lambda (_%r88707%_)
                         (cons _%r88707%_
                               (_%recur88699%_ (map cdr _%rest88701%_))))
                       _%$e88704%_)
                      (_%recur88699%_ (map cdr _%rest88701%_))))
                '())))))
    (define agetq__%
      (lambda (_%key88662%_ _%lst88664%_ _%default88666%_)
        (let ((_%$e88669%_
               (if (pair? _%lst88664%_) (assq _%key88662%_ _%lst88664%_) '#f)))
          (if _%$e88669%_
              (cdr _%$e88669%_)
              (if (procedure? _%default88666%_)
                  (_%default88666%_ _%key88662%_)
                  _%default88666%_)))))
    (define agetq__0
      (lambda (_%key88677%_ _%lst88678%_)
        (let ((_%default88680%_ '#f))
          (agetq__% _%key88677%_ _%lst88678%_ _%default88680%_))))
    (define agetq
      (lambda _g92137_
        (let ((_g92136_ (let () (declare (not safe)) (##length _g92137_))))
          (cond ((let () (declare (not safe)) (##fx= _g92136_ 2))
                 (apply agetq__0 _g92137_))
                ((let () (declare (not safe)) (##fx= _g92136_ 3))
                 (apply agetq__% _g92137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g92137_))))))
    (define agetv__%
      (lambda (_%key88637%_ _%lst88639%_ _%default88641%_)
        (let ((_%$e88644%_
               (if (pair? _%lst88639%_) (assv _%key88637%_ _%lst88639%_) '#f)))
          (if _%$e88644%_
              (cdr _%$e88644%_)
              (if (procedure? _%default88641%_)
                  (_%default88641%_ _%key88637%_)
                  _%default88641%_)))))
    (define agetv__0
      (lambda (_%key88652%_ _%lst88653%_)
        (let ((_%default88655%_ '#f))
          (agetv__% _%key88652%_ _%lst88653%_ _%default88655%_))))
    (define agetv
      (lambda _g92139_
        (let ((_g92138_ (let () (declare (not safe)) (##length _g92139_))))
          (cond ((let () (declare (not safe)) (##fx= _g92138_ 2))
                 (apply agetv__0 _g92139_))
                ((let () (declare (not safe)) (##fx= _g92138_ 3))
                 (apply agetv__% _g92139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g92139_))))))
    (define aget__%
      (lambda (_%key88612%_ _%lst88614%_ _%default88616%_)
        (let ((_%$e88619%_
               (if (pair? _%lst88614%_)
                   (assoc _%key88612%_ _%lst88614%_)
                   '#f)))
          (if _%$e88619%_
              (cdr _%$e88619%_)
              (if (procedure? _%default88616%_)
                  (_%default88616%_ _%key88612%_)
                  _%default88616%_)))))
    (define aget__0
      (lambda (_%key88627%_ _%lst88628%_)
        (let ((_%default88630%_ '#f))
          (aget__% _%key88627%_ _%lst88628%_ _%default88630%_))))
    (define aget
      (lambda _g92141_
        (let ((_g92140_ (let () (declare (not safe)) (##length _g92141_))))
          (cond ((let () (declare (not safe)) (##fx= _g92140_ 2))
                 (apply aget__0 _g92141_))
                ((let () (declare (not safe)) (##fx= _g92140_ 3))
                 (apply aget__% _g92141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g92141_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key88541%_ _%lst88543%_ _%default88545%_)
        (let _%lp88548%_ ((_%rest88551%_ _%lst88543%_))
          (let* ((_%rest8855388563%_ _%rest88551%_)
                 (_%else8855588571%_
                  (lambda ()
                    (if (procedure? _%default88545%_)
                        (_%default88545%_ _%key88541%_)
                        _%default88545%_)))
                 (_%K8855788580%_
                  (lambda (_%rest88574%_ _%v88575%_ _%k88577%_)
                    (if (eq? _%k88577%_ _%key88541%_)
                        _%v88575%_
                        (_%lp88548%_ _%rest88574%_)))))
            (if (pair? _%rest8855388563%_)
                (let ((_%hd8855888583%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8855388563%_)))
                      (_%tl8855988585%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8855388563%_))))
                  (let ((_%k88588%_ _%hd8855888583%_))
                    (if (pair? _%tl8855988585%_)
                        (let ((_%hd8856088590%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8855988585%_)))
                              (_%tl8856188592%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8855988585%_))))
                          (let* ((_%v88595%_ _%hd8856088590%_)
                                 (_%rest88597%_ _%tl8856188592%_))
                            (_%K8855788580%_
                             _%rest88597%_
                             _%v88595%_
                             _%k88588%_)))
                        (_%else8855588571%_))))
                (_%else8855588571%_))))))
    (define pgetq__0
      (lambda (_%key88602%_ _%lst88603%_)
        (let ((_%default88605%_ '#f))
          (pgetq__% _%key88602%_ _%lst88603%_ _%default88605%_))))
    (define pgetq
      (lambda _g92143_
        (let ((_g92142_ (let () (declare (not safe)) (##length _g92143_))))
          (cond ((let () (declare (not safe)) (##fx= _g92142_ 2))
                 (apply pgetq__0 _g92143_))
                ((let () (declare (not safe)) (##fx= _g92142_ 3))
                 (apply pgetq__% _g92143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g92143_))))))
    (define pgetv__%
      (lambda (_%key88470%_ _%lst88472%_ _%default88474%_)
        (let _%lp88477%_ ((_%rest88480%_ _%lst88472%_))
          (let* ((_%rest8848288492%_ _%rest88480%_)
                 (_%else8848488500%_
                  (lambda ()
                    (if (procedure? _%default88474%_)
                        (_%default88474%_ _%key88470%_)
                        _%default88474%_)))
                 (_%K8848688509%_
                  (lambda (_%rest88503%_ _%v88504%_ _%k88506%_)
                    (if (eqv? _%k88506%_ _%key88470%_)
                        _%v88504%_
                        (_%lp88477%_ _%rest88503%_)))))
            (if (pair? _%rest8848288492%_)
                (let ((_%hd8848788512%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8848288492%_)))
                      (_%tl8848888514%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8848288492%_))))
                  (let ((_%k88517%_ _%hd8848788512%_))
                    (if (pair? _%tl8848888514%_)
                        (let ((_%hd8848988519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8848888514%_)))
                              (_%tl8849088521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8848888514%_))))
                          (let* ((_%v88524%_ _%hd8848988519%_)
                                 (_%rest88526%_ _%tl8849088521%_))
                            (_%K8848688509%_
                             _%rest88526%_
                             _%v88524%_
                             _%k88517%_)))
                        (_%else8848488500%_))))
                (_%else8848488500%_))))))
    (define pgetv__0
      (lambda (_%key88531%_ _%lst88532%_)
        (let ((_%default88534%_ '#f))
          (pgetv__% _%key88531%_ _%lst88532%_ _%default88534%_))))
    (define pgetv
      (lambda _g92145_
        (let ((_g92144_ (let () (declare (not safe)) (##length _g92145_))))
          (cond ((let () (declare (not safe)) (##fx= _g92144_ 2))
                 (apply pgetv__0 _g92145_))
                ((let () (declare (not safe)) (##fx= _g92144_ 3))
                 (apply pgetv__% _g92145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g92145_))))))
    (define pget__%
      (lambda (_%key88399%_ _%lst88401%_ _%default88403%_)
        (let _%lp88406%_ ((_%rest88409%_ _%lst88401%_))
          (let* ((_%rest8841188421%_ _%rest88409%_)
                 (_%else8841388429%_
                  (lambda ()
                    (if (procedure? _%default88403%_)
                        (_%default88403%_ _%key88399%_)
                        _%default88403%_)))
                 (_%K8841588438%_
                  (lambda (_%rest88432%_ _%v88433%_ _%k88435%_)
                    (if (equal? _%k88435%_ _%key88399%_)
                        _%v88433%_
                        (_%lp88406%_ _%rest88432%_)))))
            (if (pair? _%rest8841188421%_)
                (let ((_%hd8841688441%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8841188421%_)))
                      (_%tl8841788443%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8841188421%_))))
                  (let ((_%k88446%_ _%hd8841688441%_))
                    (if (pair? _%tl8841788443%_)
                        (let ((_%hd8841888448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8841788443%_)))
                              (_%tl8841988450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8841788443%_))))
                          (let* ((_%v88453%_ _%hd8841888448%_)
                                 (_%rest88455%_ _%tl8841988450%_))
                            (_%K8841588438%_
                             _%rest88455%_
                             _%v88453%_
                             _%k88446%_)))
                        (_%else8841388429%_))))
                (_%else8841388429%_))))))
    (define pget__0
      (lambda (_%key88460%_ _%lst88461%_)
        (let ((_%default88463%_ '#f))
          (pget__% _%key88460%_ _%lst88461%_ _%default88463%_))))
    (define pget
      (lambda _g92147_
        (let ((_g92146_ (let () (declare (not safe)) (##length _g92147_))))
          (cond ((let () (declare (not safe)) (##fx= _g92146_ 2))
                 (apply pget__0 _g92147_))
                ((let () (declare (not safe)) (##fx= _g92146_ 3))
                 (apply pget__% _g92147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g92147_))))))
    (define find
      (lambda (_%pred88383%_ _%lst88384%_)
        (if (procedure? _%pred88383%_)
            (let ((_%pred88388%_ _%pred88383%_))
              (__find _%pred88388%_ _%lst88384%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.13-517.17"
               'contract:
               'procedure?
               'value:
               _%pred88383%_)
              '#!void))))
    (define __find
      (lambda (_%pred88366%_ _%lst88367%_)
        (let* ((_%pred88370%_ _%pred88366%_)
               (_%$e88379%_ (__memf _%pred88370%_ _%lst88367%_)))
          (if _%$e88379%_
              (let () (declare (not safe)) (##car _%$e88379%_))
              '#f))))
    (define memf
      (lambda (_%proc88351%_ _%lst88352%_)
        (if (procedure? _%proc88351%_)
            (let ((_%proc88356%_ _%proc88351%_))
              (__memf _%proc88356%_ _%lst88352%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@522.13-522.17"
               'contract:
               'procedure?
               'value:
               _%proc88351%_)
              '#!void))))
    (define __memf
      (lambda (_%proc88301%_ _%lst88302%_)
        (let ((_%proc88305%_ _%proc88301%_))
          (let _%lp88314%_ ((_%rest88316%_ _%lst88302%_))
            (let* ((_%rest8831788325%_ _%rest88316%_)
                   (_%else8831988333%_ (lambda () '#f))
                   (_%K8832188339%_
                    (lambda (_%tl88336%_ _%hd88337%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc88305%_ _%hd88337%_))
                          _%rest88316%_
                          (_%lp88314%_ _%tl88336%_)))))
              (if (pair? _%rest8831788325%_)
                  (let ((_%hd8832288342%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8831788325%_)))
                        (_%tl8832388344%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8831788325%_))))
                    (let* ((_%hd88347%_ _%hd8832288342%_)
                           (_%tl88349%_ _%tl8832388344%_))
                      (_%K8832188339%_ _%tl88349%_ _%hd88347%_)))
                  (_%else8831988333%_)))))))
    (define remove1
      (lambda (_%el88254%_ _%lst88256%_)
        (let _%lp88259%_ ((_%rest88262%_ _%lst88256%_) (_%r88264%_ '()))
          (let* ((_%rest8826688274%_ _%rest88262%_)
                 (_%else8826888282%_ (lambda () _%lst88256%_))
                 (_%K8827088289%_
                  (lambda (_%rest88285%_ _%hd88286%_)
                    (if (equal? _%el88254%_ _%hd88286%_)
                        (__foldl1 cons _%rest88285%_ _%r88264%_)
                        (_%lp88259%_
                         _%rest88285%_
                         (cons _%hd88286%_ _%r88264%_))))))
            (if (pair? _%rest8826688274%_)
                (let ((_%hd8827188292%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8826688274%_)))
                      (_%tl8827288294%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8826688274%_))))
                  (let* ((_%hd88297%_ _%hd8827188292%_)
                         (_%rest88299%_ _%tl8827288294%_))
                    (_%K8827088289%_ _%rest88299%_ _%hd88297%_)))
                (_%else8826888282%_))))))
    (define remv1
      (lambda (_%el88207%_ _%lst88209%_)
        (let _%lp88212%_ ((_%rest88215%_ _%lst88209%_) (_%r88217%_ '()))
          (let* ((_%rest8821988227%_ _%rest88215%_)
                 (_%else8822188235%_ (lambda () _%lst88209%_))
                 (_%K8822388242%_
                  (lambda (_%rest88238%_ _%hd88239%_)
                    (if (eqv? _%el88207%_ _%hd88239%_)
                        (__foldl1 cons _%rest88238%_ _%r88217%_)
                        (_%lp88212%_
                         _%rest88238%_
                         (cons _%hd88239%_ _%r88217%_))))))
            (if (pair? _%rest8821988227%_)
                (let ((_%hd8822488245%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8821988227%_)))
                      (_%tl8822588247%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8821988227%_))))
                  (let* ((_%hd88250%_ _%hd8822488245%_)
                         (_%rest88252%_ _%tl8822588247%_))
                    (_%K8822388242%_ _%rest88252%_ _%hd88250%_)))
                (_%else8822188235%_))))))
    (define remq1
      (lambda (_%el88160%_ _%lst88162%_)
        (let _%lp88165%_ ((_%rest88168%_ _%lst88162%_) (_%r88170%_ '()))
          (let* ((_%rest8817288180%_ _%rest88168%_)
                 (_%else8817488188%_ (lambda () _%lst88162%_))
                 (_%K8817688195%_
                  (lambda (_%rest88191%_ _%hd88192%_)
                    (if (eq? _%el88160%_ _%hd88192%_)
                        (__foldl1 cons _%rest88191%_ _%r88170%_)
                        (_%lp88165%_
                         _%rest88191%_
                         (cons _%hd88192%_ _%r88170%_))))))
            (if (pair? _%rest8817288180%_)
                (let ((_%hd8817788198%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8817288180%_)))
                      (_%tl8817888200%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8817288180%_))))
                  (let* ((_%hd88203%_ _%hd8817788198%_)
                         (_%rest88205%_ _%tl8817888200%_))
                    (_%K8817688195%_ _%rest88205%_ _%hd88203%_)))
                (_%else8817488188%_))))))
    (define remf
      (lambda (_%proc88145%_ _%lst88146%_)
        (if (procedure? _%proc88145%_)
            (let ((_%proc88150%_ _%proc88145%_))
              (__remf _%proc88150%_ _%lst88146%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@544.13-544.17"
               'contract:
               'procedure?
               'value:
               _%proc88145%_)
              '#!void))))
    (define __remf
      (lambda (_%proc88094%_ _%lst88095%_)
        (let ((_%proc88098%_ _%proc88094%_))
          (let _%lp88107%_ ((_%rest88109%_ _%lst88095%_) (_%r88110%_ '()))
            (let* ((_%rest8811188119%_ _%rest88109%_)
                   (_%else8811388127%_ (lambda () _%lst88095%_))
                   (_%K8811588133%_
                    (lambda (_%rest88130%_ _%hd88131%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc88098%_ _%hd88131%_))
                          (__foldl1 cons _%rest88130%_ _%r88110%_)
                          (_%lp88107%_
                           _%rest88130%_
                           (cons _%hd88131%_ _%r88110%_))))))
              (if (pair? _%rest8811188119%_)
                  (let ((_%hd8811688136%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8811188119%_)))
                        (_%tl8811788138%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8811188119%_))))
                    (let* ((_%hd88141%_ _%hd8811688136%_)
                           (_%rest88143%_ _%tl8811788138%_))
                      (_%K8811588133%_ _%rest88143%_ _%hd88141%_)))
                  (_%else8811388127%_)))))))
    (define 1+
      (lambda (_%x88080%_)
        (if (number? _%x88080%_)
            (let ((_%x88084%_ _%x88080%_)) (__1+ _%x88084%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.11-553.12"
               'contract:
               'number?
               'value:
               _%x88080%_)
              '#!void))))
    (define __1+
      (lambda (_%x88068%_) (let ((_%x88071%_ _%x88068%_)) (+ _%x88071%_ '1))))
    (define 1-
      (lambda (_%x88054%_)
        (if (number? _%x88054%_)
            (let ((_%x88058%_ _%x88054%_)) (__1- _%x88058%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@561.11-561.12"
               'contract:
               'number?
               'value:
               _%x88054%_)
              '#!void))))
    (define __1-
      (lambda (_%x88042%_) (let ((_%x88045%_ _%x88042%_)) (- _%x88045%_ '1))))
    (define fx1+
      (lambda (_%x88028%_)
        (if (fixnum? _%x88028%_)
            (let ((_%x88032%_ _%x88028%_)) (__fx1+ _%x88032%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.13-569.14"
               'contract:
               'fixnum?
               'value:
               _%x88028%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x88016%_)
        (let ((_%x88019%_ _%x88016%_))
          (declare (not safe))
          (##fx+ _%x88019%_ '1))))
    (define fx1-
      (lambda (_%x88002%_)
        (if (fixnum? _%x88002%_)
            (let ((_%x88006%_ _%x88002%_)) (__fx1- _%x88006%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.14"
               'contract:
               'fixnum?
               'value:
               _%x88002%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x87990%_)
        (let ((_%x87993%_ _%x87990%_))
          (declare (not safe))
          (##fx- _%x87993%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x87987%_)
        (if (fixnum? _%x87987%_)
            (let () (declare (not safe)) (##fx>= _%x87987%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x87984%_)
        (if (fixnum? _%x87984%_)
            (let () (declare (not safe)) (##fx> _%x87984%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x87981%_)
        (let () (declare (not safe)) (##fx= _%x87981%_ '0))))
    (define fx<0?
      (lambda (_%x87978%_)
        (if (fixnum? _%x87978%_)
            (let () (declare (not safe)) (##fx< _%x87978%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x87975%_)
        (if (fixnum? _%x87975%_)
            (let () (declare (not safe)) (##fx<= _%x87975%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x87972%_)
        (if (symbol? _%x87972%_) (not (uninterned-symbol? _%x87972%_)) '#f)))
    (define display-as-string
      (lambda (_%x87957%_ _%port87958%_)
        (if (output-port? _%port87958%_)
            (let ((_%port87962%_ _%port87958%_))
              (__display-as-string _%x87957%_ _%port87962%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@605.28-605.32"
               'contract:
               'output-port?
               'value:
               _%port87958%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x87914%_ _%port87915%_)
        (let ((_%port87918%_ _%port87915%_))
          (if (or (string? _%x87914%_)
                  (symbol? _%x87914%_)
                  (keyword? _%x87914%_)
                  (number? _%x87914%_)
                  (char? _%x87914%_))
              (display _%x87914%_ _%port87918%_)
              (if (pair? _%x87914%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x87914%_))
                     _%port87918%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x87914%_))
                     _%port87918%_))
                  (if (vector? _%x87914%_)
                      (vector-for-each
                       (lambda (_%g8794187943%_)
                         (__display-as-string _%g8794187943%_ _%port87918%_))
                       _%x87914%_)
                      (if (or (null? _%x87914%_)
                              (eq? _%x87914%_ '#!void)
                              (eof-object? _%x87914%_)
                              (boolean? _%x87914%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x87914%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x87897%_)
        (if (string? _%x87897%_)
            _%x87897%_
            (if (symbol? _%x87897%_)
                (let () (declare (not safe)) (##symbol->string _%x87897%_))
                (if (keyword? _%x87897%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x87897%_))
                    (if (number? _%x87897%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x87897%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g8790387905%_)
                           (__display-as-string
                            _%x87897%_
                            _%g8790387905%_)))))))))
    (define as-string__1
      (lambda _%args87908%_
        (call-with-output-string
         '()
         (lambda (_%g8790987911%_)
           (__display-as-string _%args87908%_ _%g8790987911%_)))))
    (define as-string
      (lambda _g92149_
        (let ((_g92148_ (let () (declare (not safe)) (##length _g92149_))))
          (cond ((let () (declare (not safe)) (##fx= _g92148_ 1))
                 (apply as-string__0 _g92149_))
                (#t
                 (apply (lambda _%args87908%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args87908%_)))
                        _g92149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g92149_))))))
    (define make-symbol__0
      (lambda (_%x87893%_)
        (if (interned-symbol? _%x87893%_)
            _%x87893%_
            (let ((__tmp92150 (as-string__0 _%x87893%_)))
              (declare (not safe))
              (##string->symbol __tmp92150)))))
    (define make-symbol__1
      (lambda _%args87895%_
        (let ((__tmp92151
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args87895%_))))
          (declare (not safe))
          (##string->symbol __tmp92151))))
    (define make-symbol
      (lambda _g92153_
        (let ((_g92152_ (let () (declare (not safe)) (##length _g92153_))))
          (cond ((let () (declare (not safe)) (##fx= _g92152_ 1))
                 (apply make-symbol__0 _g92153_))
                (#t
                 (apply (lambda _%args87895%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args87895%_)))
                        _g92153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g92153_))))))
    (define make-keyword__0
      (lambda (_%x87889%_)
        (if (interned-keyword? _%x87889%_)
            _%x87889%_
            (let ((__tmp92154 (as-string__0 _%x87889%_)))
              (declare (not safe))
              (##string->keyword __tmp92154)))))
    (define make-keyword__1
      (lambda _%args87891%_
        (let ((__tmp92155
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args87891%_))))
          (declare (not safe))
          (##string->keyword __tmp92155))))
    (define make-keyword
      (lambda _g92157_
        (let ((_g92156_ (let () (declare (not safe)) (##length _g92157_))))
          (cond ((let () (declare (not safe)) (##fx= _g92156_ 1))
                 (apply make-keyword__0 _g92157_))
                (#t
                 (apply (lambda _%args87891%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args87891%_)))
                        _g92157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g92157_))))))
    (define interned-keyword?
      (lambda (_%x87886%_)
        (if (keyword? _%x87886%_) (not (uninterned-keyword? _%x87886%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym87872%_)
        (if (symbol? _%sym87872%_)
            (let ((_%sym87876%_ _%sym87872%_))
              (__symbol->keyword _%sym87876%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@648.24-648.27"
               'contract:
               'symbol?
               'value:
               _%sym87872%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym87860%_)
        (let ((_%sym87863%_ _%sym87860%_))
          (if (uninterned-symbol? _%sym87863%_)
              (let ((__tmp92158
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym87863%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp92158))
              (let ((__tmp92159
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym87863%_))))
                (declare (not safe))
                (##string->keyword __tmp92159))))))
    (define keyword->symbol
      (lambda (_%sym87846%_)
        (if (keyword? _%sym87846%_)
            (let ((_%sym87850%_ _%sym87846%_))
              (__keyword->symbol _%sym87850%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.24-654.27"
               'contract:
               'keyword?
               'value:
               _%sym87846%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym87834%_)
        (let ((_%sym87837%_ _%sym87834%_))
          (if (uninterned-keyword? _%sym87837%_)
              (let ((__tmp92160
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym87837%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp92160))
              (let ((__tmp92161
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym87837%_))))
                (declare (not safe))
                (##string->symbol __tmp92161))))))
    (define bytes->string__%
      (lambda (_%bstr87799%_ _%enc87800%_)
        (if (u8vector? _%bstr87799%_)
            (let ((_%bstr87804%_ _%bstr87799%_))
              (if (symbol? _%enc87800%_)
                  (let ((_%enc87814%_ _%enc87800%_))
                    (__bytes->string__% _%bstr87804%_ _%enc87814%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@661.25-661.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc87800%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.22-660.26"
               'contract:
               'u8vector?
               'value:
               _%bstr87799%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr87827%_)
        (let ((_%enc87829%_ 'UTF-8))
          (bytes->string__% _%bstr87827%_ _%enc87829%_))))
    (define bytes->string
      (lambda _g92163_
        (let ((_g92162_ (let () (declare (not safe)) (##length _g92163_))))
          (cond ((let () (declare (not safe)) (##fx= _g92162_ 1))
                 (apply bytes->string__0 _g92163_))
                ((let () (declare (not safe)) (##fx= _g92162_ 2))
                 (apply bytes->string__% _g92163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g92163_))))))
    (define __bytes->string__%
      (lambda (_%bstr87758%_ _%enc87759%_)
        (let* ((_%bstr87762%_ _%bstr87758%_) (_%enc87770%_ _%enc87759%_))
          (if (eq? _%enc87770%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr87762%_))
              (let* ((_%in87779%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc87770%_
                                   (cons 'init: (cons _%bstr87762%_ '()))))))
                     (_%len87781%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr87762%_)))
                     (_%out87783%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len87781%_)))
                     (_%n87785%_
                      (read-substring
                       _%out87783%_
                       '0
                       _%len87781%_
                       _%in87779%_)))
                (string-shrink! _%out87783%_ _%n87785%_)
                _%out87783%_)))))
    (define __bytes->string__0
      (lambda (_%bstr87791%_)
        (let ((_%enc87793%_ 'UTF-8))
          (__bytes->string__% _%bstr87791%_ _%enc87793%_))))
    (define __bytes->string
      (lambda _g92165_
        (let ((_g92164_ (let () (declare (not safe)) (##length _g92165_))))
          (cond ((let () (declare (not safe)) (##fx= _g92164_ 1))
                 (apply __bytes->string__0 _g92165_))
                ((let () (declare (not safe)) (##fx= _g92164_ 2))
                 (apply __bytes->string__% _g92165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g92165_))))))
    (define string->bytes__%
      (lambda (_%str87722%_ _%enc87723%_)
        (if (string? _%str87722%_)
            (let ((_%str87727%_ _%str87722%_))
              (if (symbol? _%enc87723%_)
                  (let ((_%enc87737%_ _%enc87723%_))
                    (__string->bytes__% _%str87727%_ _%enc87737%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc87723%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.25"
               'contract:
               'string?
               'value:
               _%str87722%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str87750%_)
        (let ((_%enc87752%_ 'UTF-8))
          (string->bytes__% _%str87750%_ _%enc87752%_))))
    (define string->bytes
      (lambda _g92167_
        (let ((_g92166_ (let () (declare (not safe)) (##length _g92167_))))
          (cond ((let () (declare (not safe)) (##fx= _g92166_ 1))
                 (apply string->bytes__0 _g92167_))
                ((let () (declare (not safe)) (##fx= _g92166_ 2))
                 (apply string->bytes__% _g92167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g92167_))))))
    (define __string->bytes__%
      (lambda (_%str87690%_ _%enc87691%_)
        (let* ((_%str87694%_ _%str87690%_) (_%enc87702%_ _%enc87691%_))
          (if (eq? _%enc87702%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str87694%_))
              (__substring->bytes__%
               _%str87694%_
               '0
               (let () (declare (not safe)) (##string-length _%str87694%_))
               _%enc87702%_)))))
    (define __string->bytes__0
      (lambda (_%str87714%_)
        (let ((_%enc87716%_ 'UTF-8))
          (__string->bytes__% _%str87714%_ _%enc87716%_))))
    (define __string->bytes
      (lambda _g92169_
        (let ((_g92168_ (let () (declare (not safe)) (##length _g92169_))))
          (cond ((let () (declare (not safe)) (##fx= _g92168_ 1))
                 (apply __string->bytes__0 _g92169_))
                ((let () (declare (not safe)) (##fx= _g92168_ 2))
                 (apply __string->bytes__% _g92169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g92169_))))))
    (define substring->bytes__%
      (lambda (_%str87638%_ _%start87639%_ _%end87640%_ _%enc87641%_)
        (if (string? _%str87638%_)
            (let ((_%str87645%_ _%str87638%_))
              (if (nonnegative-fixnum? _%start87639%_)
                  (let ((_%start87655%_ _%start87639%_))
                    (if (nonnegative-fixnum? _%end87640%_)
                        (let ((_%end87665%_ _%end87640%_))
                          (__substring->bytes__%
                           _%str87645%_
                           _%start87655%_
                           _%end87665%_
                           _%enc87641%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@681.25-681.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end87640%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@680.25-680.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start87639%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@679.25-679.28"
               'contract:
               'string?
               'value:
               _%str87638%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str87678%_ _%start87679%_ _%end87680%_)
        (let ((_%enc87682%_ 'UTF-8))
          (substring->bytes__%
           _%str87678%_
           _%start87679%_
           _%end87680%_
           _%enc87682%_))))
    (define substring->bytes
      (lambda _g92171_
        (let ((_g92170_ (let () (declare (not safe)) (##length _g92171_))))
          (cond ((let () (declare (not safe)) (##fx= _g92170_ 3))
                 (apply substring->bytes__0 _g92171_))
                ((let () (declare (not safe)) (##fx= _g92170_ 4))
                 (apply substring->bytes__% _g92171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g92171_))))))
    (define __substring->bytes__%
      (lambda (_%str87590%_ _%start87591%_ _%end87592%_ _%enc87593%_)
        (let* ((_%str87596%_ _%str87590%_)
               (_%start87604%_ _%start87591%_)
               (_%end87612%_ _%end87592%_))
          (if (eq? _%enc87593%_ 'UTF-8)
              (string->utf8 _%str87596%_ _%start87604%_ _%end87612%_)
              (let ((_%out87621%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc87593%_ '())))))
                (write-substring
                 _%str87596%_
                 _%start87604%_
                 _%end87612%_
                 _%out87621%_)
                (get-output-u8vector _%out87621%_))))))
    (define __substring->bytes__0
      (lambda (_%str87626%_ _%start87627%_ _%end87628%_)
        (let ((_%enc87630%_ 'UTF-8))
          (__substring->bytes__%
           _%str87626%_
           _%start87627%_
           _%end87628%_
           _%enc87630%_))))
    (define __substring->bytes
      (lambda _g92173_
        (let ((_g92172_ (let () (declare (not safe)) (##length _g92173_))))
          (cond ((let () (declare (not safe)) (##fx= _g92172_ 3))
                 (apply __substring->bytes__0 _g92173_))
                ((let () (declare (not safe)) (##fx= _g92172_ 4))
                 (apply __substring->bytes__% _g92173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g92173_))))))
    (define string-empty?
      (lambda (_%str87575%_)
        (if (string? _%str87575%_)
            (let ((_%str87579%_ _%str87575%_)) (__string-empty? _%str87579%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@690.22-690.25"
               'contract:
               'string?
               'value:
               _%str87575%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str87563%_)
        (let* ((_%str87566%_ _%str87563%_)
               (__tmp92174
                (let () (declare (not safe)) (##string-length _%str87566%_))))
          (declare (not safe))
          (##fxzero? __tmp92174))))
    (define string-index__%
      (lambda (_%str87515%_ _%char87516%_ _%start87517%_)
        (if (string? _%str87515%_)
            (let ((_%str87521%_ _%str87515%_))
              (if (char? _%char87516%_)
                  (let ((_%char87531%_ _%char87516%_))
                    (if (nonnegative-fixnum? _%start87517%_)
                        (let ((_%start87541%_ _%start87517%_))
                          (__string-index__%
                           _%str87521%_
                           _%char87531%_
                           _%start87541%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@696.21-696.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start87517%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.21-695.25"
                     'contract:
                     'char?
                     'value:
                     _%char87516%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.21-694.24"
               'contract:
               'string?
               'value:
               _%str87515%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str87554%_ _%char87555%_)
        (let ((_%start87557%_ '0))
          (string-index__% _%str87554%_ _%char87555%_ _%start87557%_))))
    (define string-index
      (lambda _g92176_
        (let ((_g92175_ (let () (declare (not safe)) (##length _g92176_))))
          (cond ((let () (declare (not safe)) (##fx= _g92175_ 2))
                 (apply string-index__0 _g92176_))
                ((let () (declare (not safe)) (##fx= _g92175_ 3))
                 (apply string-index__% _g92176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g92176_))))))
    (define __string-index__%
      (lambda (_%str87454%_ _%char87455%_ _%start87456%_)
        (let* ((_%str87459%_ _%str87454%_)
               (_%char87467%_ _%char87455%_)
               (_%start87475%_ _%start87456%_)
               (_%len87484%_
                (let () (declare (not safe)) (##string-length _%str87459%_))))
          (let _%lp87486%_ ((_%k87488%_ _%start87475%_))
            (let ((_%k87490%_ _%k87488%_))
              (if (let () (declare (not safe)) (##fx< _%k87490%_ _%len87484%_))
                  (if (eq? _%char87467%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str87459%_ _%k87490%_)))
                      _%k87490%_
                      (_%lp87486%_
                       (let () (declare (not safe)) (##fx+ _%k87490%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str87505%_ _%char87506%_)
        (let ((_%start87508%_ '0))
          (__string-index__% _%str87505%_ _%char87506%_ _%start87508%_))))
    (define __string-index
      (lambda _g92178_
        (let ((_g92177_ (let () (declare (not safe)) (##length _g92178_))))
          (cond ((let () (declare (not safe)) (##fx= _g92177_ 2))
                 (apply __string-index__0 _g92178_))
                ((let () (declare (not safe)) (##fx= _g92177_ 3))
                 (apply __string-index__% _g92178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g92178_))))))
    (define string-rindex__%
      (lambda (_%str87415%_ _%char87416%_ _%start87417%_)
        (if (string? _%str87415%_)
            (let ((_%str87421%_ _%str87415%_))
              (if (char? _%char87416%_)
                  (let ((_%char87431%_ _%char87416%_))
                    (__string-rindex__%
                     _%str87421%_
                     _%char87431%_
                     _%start87417%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@706.25-706.29"
                     'contract:
                     'char?
                     'value:
                     _%char87416%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@705.22-705.25"
               'contract:
               'string?
               'value:
               _%str87415%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str87444%_ _%char87445%_)
        (let ((_%start87447%_ '#f))
          (string-rindex__% _%str87444%_ _%char87445%_ _%start87447%_))))
    (define string-rindex
      (lambda _g92180_
        (let ((_g92179_ (let () (declare (not safe)) (##length _g92180_))))
          (cond ((let () (declare (not safe)) (##fx= _g92179_ 2))
                 (apply string-rindex__0 _g92180_))
                ((let () (declare (not safe)) (##fx= _g92179_ 3))
                 (apply string-rindex__% _g92180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g92180_))))))
    (define __string-rindex__%
      (lambda (_%str87357%_ _%char87358%_ _%start87359%_)
        (let* ((_%str87362%_ _%str87357%_)
               (_%char87370%_ _%char87358%_)
               (_%len87379%_
                (let () (declare (not safe)) (##string-length _%str87362%_)))
               (_%start87381%_
                (if (fixnum? _%start87359%_)
                    _%start87359%_
                    (let () (declare (not safe)) (##fx- _%len87379%_ '1)))))
          (let _%lp87384%_ ((_%k87386%_ _%start87381%_))
            (let ((_%k87388%_ _%k87386%_))
              (if (let () (declare (not safe)) (##fx>= _%k87388%_ '0))
                  (if (eq? _%char87370%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str87362%_ _%k87388%_)))
                      _%k87388%_
                      (_%lp87384%_
                       (let () (declare (not safe)) (##fx- _%k87388%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str87405%_ _%char87406%_)
        (let ((_%start87408%_ '#f))
          (__string-rindex__% _%str87405%_ _%char87406%_ _%start87408%_))))
    (define __string-rindex
      (lambda _g92182_
        (let ((_g92181_ (let () (declare (not safe)) (##length _g92182_))))
          (cond ((let () (declare (not safe)) (##fx= _g92181_ 2))
                 (apply __string-rindex__0 _g92182_))
                ((let () (declare (not safe)) (##fx= _g92181_ 3))
                 (apply __string-rindex__% _g92182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g92182_))))))
    (define string-split
      (lambda (_%str87331%_ _%char87332%_)
        (if (string? _%str87331%_)
            (let ((_%str87336%_ _%str87331%_))
              (if (char? _%char87332%_)
                  (let ((_%char87346%_ _%char87332%_))
                    (__string-split _%str87336%_ _%char87346%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@717.37-717.41"
                     'contract:
                     'char?
                     'value:
                     _%char87332%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.21-717.24"
               'contract:
               'string?
               'value:
               _%str87331%_)
              '#!void))))
    (define __string-split
      (lambda (_%str87272%_ _%char87273%_)
        (let* ((_%str87276%_ _%str87272%_)
               (_%char87284%_ _%char87273%_)
               (_%len87293%_
                (let () (declare (not safe)) (##string-length _%str87276%_))))
          (let _%lp87295%_ ((_%start87297%_ '0) (_%r87298%_ '()))
            (let* ((_%start87301%_ _%start87297%_)
                   (_%$e87314%_
                    (__string-index__%
                     _%str87276%_
                     _%char87284%_
                     _%start87301%_)))
              (if _%$e87314%_
                  ((lambda (_%end87317%_)
                     (let ((_%end87319%_ _%end87317%_))
                       (_%lp87295%_
                        (let () (declare (not safe)) (##fx+ _%end87319%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str87276%_
                                 _%start87301%_
                                 _%end87319%_))
                              _%r87298%_))))
                   _%$e87314%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start87301%_ _%len87293%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str87276%_
                                _%start87301%_
                                _%len87293%_)))
                       _%r87298%_)
                      (reverse! _%r87298%_))))))))
    (define string-join
      (lambda (_%strs87122%_ _%join87123%_)
        (letrec ((_%join-length87126%_
                  (lambda (_%strs87210%_ _%jlen87211%_)
                    (let _%lp87213%_ ((_%rest87215%_ _%strs87210%_)
                                      (_%len87216%_ '0))
                      (let* ((_%len87218%_ _%len87216%_)
                             (_%rest8722687234%_ _%rest87215%_)
                             (_%else8722887242%_ (lambda () '0))
                             (_%K8723087260%_
                              (lambda (_%rest87245%_ _%hd87246%_)
                                (if (string? _%hd87246%_)
                                    (let ((_%hd87248%_ _%hd87246%_))
                                      (if (pair? _%rest87245%_)
                                          (_%lp87213%_
                                           _%rest87245%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd87248%_))
                                                _%jlen87211%_
                                                _%len87218%_))
                                          (let ((__tmp92183
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd87248%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp92183 _%len87218%_))))
                                    (error '"expected string" _%hd87246%_)))))
                        (if (pair? _%rest8722687234%_)
                            (let ((_%hd8723187263%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8722687234%_)))
                                  (_%tl8723287265%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8722687234%_))))
                              (let* ((_%hd87268%_ _%hd8723187263%_)
                                     (_%rest87270%_ _%tl8723287265%_))
                                (_%K8723087260%_ _%rest87270%_ _%hd87268%_)))
                            (_%else8722887242%_)))))))
          (let* ((_%join87131%_
                  (if (char? _%join87123%_)
                      (let () (declare (not safe)) (##string _%join87123%_))
                      (if (string? _%join87123%_)
                          _%join87123%_
                          (error '"expected string or char" _%join87123%_))))
                 (_%jlen87133%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join87131%_)))
                 (_%olen87135%_
                  (_%join-length87126%_ _%strs87122%_ _%jlen87133%_))
                 (_%ostr87137%_
                  (let () (declare (not safe)) (##make-string _%olen87135%_))))
            (let _%lp87140%_ ((_%rest87142%_ _%strs87122%_) (_%k87143%_ '0))
              (let* ((_%k87146%_ _%k87143%_)
                     (_%rest8716287170%_ _%rest87142%_)
                     (_%else8716487178%_ (lambda () '""))
                     (_%K8716687198%_
                      (lambda (_%rest87181%_ _%hd87182%_)
                        (let* ((_%hd87184%_ _%hd87182%_)
                               (_%hdlen87196%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd87184%_))))
                          (if (pair? _%rest87181%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd87184%_
                                   '0
                                   _%hdlen87196%_
                                   _%ostr87137%_
                                   _%k87146%_))
                                (let ((__tmp92184
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k87146%_ _%hdlen87196%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join87131%_
                                   '0
                                   _%jlen87133%_
                                   _%ostr87137%_
                                   __tmp92184))
                                (_%lp87140%_
                                 _%rest87181%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k87146%_
                                          _%hdlen87196%_
                                          _%jlen87133%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd87184%_
                                   '0
                                   _%hdlen87196%_
                                   _%ostr87137%_
                                   _%k87146%_))
                                _%ostr87137%_))))))
                (if (pair? _%rest8716287170%_)
                    (let ((_%hd8716787201%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8716287170%_)))
                          (_%tl8716887203%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8716287170%_))))
                      (let* ((_%hd87206%_ _%hd8716787201%_)
                             (_%rest87208%_ _%tl8716887203%_))
                        (_%K8716687198%_ _%rest87208%_ _%hd87206%_)))
                    (_%else8716487178%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes87048%_ _%port87049%_ _%start87050%_ _%end87051%_)
        (if (u8vector? _%bytes87048%_)
            (let ((_%bytes87055%_ _%bytes87048%_))
              (if (input-port? _%port87049%_)
                  (let ((_%port87065%_ _%port87049%_))
                    (if ((lambda (_%o87074%_)
                           (and (fixnum? _%o87074%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o87074%_ '0))
                                (let ((__tmp92185
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes87055%_))))
                                  (declare (not safe))
                                  (##fx< _%o87074%_ __tmp92185))))
                         _%start87050%_)
                        (let ((_%start87078%_ _%start87050%_))
                          (if ((lambda (_%o87087%_)
                                 (and (fixnum? _%o87087%_)
                                      (let ((__tmp92186
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes87055%_))))
                                        (declare (not safe))
                                        (##fx<= _%start87078%_
                                                _%o87087%_
                                                __tmp92186))))
                               _%end87051%_)
                              (let ((_%end87091%_ _%end87051%_))
                                (__read-u8vector__%
                                 _%bytes87055%_
                                 _%port87065%_
                                 _%start87078%_
                                 _%end87091%_))
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
                                 _%end87051%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@782.22-782.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start87050%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@781.22-781.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port87049%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@780.22-780.27"
               'contract:
               'u8vector?
               'value:
               _%bytes87048%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes87104%_ _%port87105%_)
        (let* ((_%start87107%_ '0)
               (_%end87109%_ (u8vector-length _%bytes87104%_)))
          (read-u8vector__%
           _%bytes87104%_
           _%port87105%_
           _%start87107%_
           _%end87109%_))))
    (define read-u8vector__1
      (lambda (_%bytes87111%_ _%port87112%_ _%start87113%_)
        (let ((_%end87115%_ (u8vector-length _%bytes87111%_)))
          (read-u8vector__%
           _%bytes87111%_
           _%port87112%_
           _%start87113%_
           _%end87115%_))))
    (define read-u8vector
      (lambda _g92188_
        (let ((_g92187_ (let () (declare (not safe)) (##length _g92188_))))
          (cond ((let () (declare (not safe)) (##fx= _g92187_ 2))
                 (apply read-u8vector__0 _g92188_))
                ((let () (declare (not safe)) (##fx= _g92187_ 3))
                 (apply read-u8vector__1 _g92188_))
                ((let () (declare (not safe)) (##fx= _g92187_ 4))
                 (apply read-u8vector__% _g92188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g92188_))))))
    (define __read-u8vector__%
      (lambda (_%bytes86987%_ _%port86988%_ _%start86989%_ _%end86990%_)
        (let* ((_%bytes86993%_ _%bytes86987%_)
               (_%port87001%_ _%port86988%_)
               (_%start87009%_ _%start86989%_)
               (_%end87017%_ _%end86990%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes86993%_
           _%start87009%_
           _%end87017%_
           _%port87001%_))))
    (define __read-u8vector__0
      (lambda (_%bytes87029%_ _%port87030%_)
        (let* ((_%start87032%_ '0)
               (_%end87034%_ (u8vector-length _%bytes87029%_)))
          (__read-u8vector__%
           _%bytes87029%_
           _%port87030%_
           _%start87032%_
           _%end87034%_))))
    (define __read-u8vector__1
      (lambda (_%bytes87036%_ _%port87037%_ _%start87038%_)
        (let ((_%end87040%_ (u8vector-length _%bytes87036%_)))
          (__read-u8vector__%
           _%bytes87036%_
           _%port87037%_
           _%start87038%_
           _%end87040%_))))
    (define __read-u8vector
      (lambda _g92190_
        (let ((_g92189_ (let () (declare (not safe)) (##length _g92190_))))
          (cond ((let () (declare (not safe)) (##fx= _g92189_ 2))
                 (apply __read-u8vector__0 _g92190_))
                ((let () (declare (not safe)) (##fx= _g92189_ 3))
                 (apply __read-u8vector__1 _g92190_))
                ((let () (declare (not safe)) (##fx= _g92189_ 4))
                 (apply __read-u8vector__% _g92190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g92190_))))))
    (define write-u8vector__%
      (lambda (_%bytes86917%_ _%port86918%_ _%start86919%_ _%end86920%_)
        (if (u8vector? _%bytes86917%_)
            (let ((_%bytes86924%_ _%bytes86917%_))
              (if (output-port? _%port86918%_)
                  (let* ((_%port86934%_ _%port86918%_)
                         (_%start86943%_ _%start86919%_))
                    (if ((lambda (_%o86951%_)
                           (and (fixnum? _%o86951%_)
                                (let ((__tmp92191
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes86924%_))))
                                  (declare (not safe))
                                  (##fx<= _%start86943%_
                                          _%o86951%_
                                          __tmp92191))))
                         _%end86920%_)
                        (let ((_%end86955%_ _%end86920%_))
                          (__write-u8vector__%
                           _%bytes86924%_
                           _%port86934%_
                           _%start86943%_
                           _%end86955%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@793.23-793.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end86920%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@791.23-791.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port86918%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@790.23-790.28"
               'contract:
               'u8vector?
               'value:
               _%bytes86917%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes86968%_ _%port86969%_)
        (let* ((_%start86971%_ '0)
               (_%end86973%_ (u8vector-length _%bytes86968%_)))
          (write-u8vector__%
           _%bytes86968%_
           _%port86969%_
           _%start86971%_
           _%end86973%_))))
    (define write-u8vector__1
      (lambda (_%bytes86975%_ _%port86976%_ _%start86977%_)
        (let ((_%end86979%_ (u8vector-length _%bytes86975%_)))
          (write-u8vector__%
           _%bytes86975%_
           _%port86976%_
           _%start86977%_
           _%end86979%_))))
    (define write-u8vector
      (lambda _g92193_
        (let ((_g92192_ (let () (declare (not safe)) (##length _g92193_))))
          (cond ((let () (declare (not safe)) (##fx= _g92192_ 2))
                 (apply write-u8vector__0 _g92193_))
                ((let () (declare (not safe)) (##fx= _g92192_ 3))
                 (apply write-u8vector__1 _g92193_))
                ((let () (declare (not safe)) (##fx= _g92192_ 4))
                 (apply write-u8vector__% _g92193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g92193_))))))
    (define __write-u8vector__%
      (lambda (_%bytes86856%_ _%port86857%_ _%start86858%_ _%end86859%_)
        (let* ((_%bytes86862%_ _%bytes86856%_)
               (_%port86870%_ _%port86857%_)
               (_%start86878%_ _%start86858%_)
               (_%end86886%_ _%end86859%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes86862%_
           _%start86878%_
           _%end86886%_
           _%port86870%_))))
    (define __write-u8vector__0
      (lambda (_%bytes86898%_ _%port86899%_)
        (let* ((_%start86901%_ '0)
               (_%end86903%_ (u8vector-length _%bytes86898%_)))
          (__write-u8vector__%
           _%bytes86898%_
           _%port86899%_
           _%start86901%_
           _%end86903%_))))
    (define __write-u8vector__1
      (lambda (_%bytes86905%_ _%port86906%_ _%start86907%_)
        (let ((_%end86909%_ (u8vector-length _%bytes86905%_)))
          (__write-u8vector__%
           _%bytes86905%_
           _%port86906%_
           _%start86907%_
           _%end86909%_))))
    (define __write-u8vector
      (lambda _g92195_
        (let ((_g92194_ (let () (declare (not safe)) (##length _g92195_))))
          (cond ((let () (declare (not safe)) (##fx= _g92194_ 2))
                 (apply __write-u8vector__0 _g92195_))
                ((let () (declare (not safe)) (##fx= _g92194_ 3))
                 (apply __write-u8vector__1 _g92195_))
                ((let () (declare (not safe)) (##fx= _g92194_ 4))
                 (apply __write-u8vector__% _g92195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g92195_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag86824%_
               _%dbg-exprs86825%_
               _%dbg-thunks86826%_
               _%expr86827%_
               _%thunk86828%_)
        (letrec ((_%o86830%_ (current-output-port))
                 (_%e86831%_ (current-error-port))
                 (_%p86832%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f86833%_
                  (lambda ()
                    (force-output _%o86830%_)
                    (force-output _%e86831%_)))
                 (_%d86834%_
                  (lambda (_%x86841%_) (display _%x86841%_ _%e86831%_)))
                 (_%w86835%_
                  (lambda (_%x86843%_) (_%p86832%_ _%x86843%_ _%e86831%_)))
                 (_%n86836%_ (lambda () (newline _%e86831%_)))
                 (_%v86837%_
                  (lambda (_%l86846%_)
                    (for-each
                     (lambda (_%x86848%_)
                       (_%d86834%_ '" ")
                       (_%w86835%_ _%x86848%_))
                     _%l86846%_)
                    (_%n86836%_)))
                 (_%x86838%_
                  (lambda (_%expr86850%_ _%thunk86851%_)
                    (_%f86833%_)
                    (_%d86834%_ '"  ")
                    (_%w86835%_ _%expr86850%_)
                    (_%d86834%_ '" =>")
                    (call-with-values
                     _%thunk86851%_
                     (lambda _%x86853%_
                       (_%v86837%_ _%x86853%_)
                       (_%f86833%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x86853%_)))))))
          (if _%tag86824%_
              (begin
                (if (eq? _%tag86824%_ '#!void)
                    '#!void
                    (begin
                      (_%f86833%_)
                      (_%d86834%_ _%tag86824%_)
                      (_%n86836%_)))
                (for-each _%x86838%_ _%dbg-exprs86825%_ _%dbg-thunks86826%_)
                (if _%thunk86828%_
                    (_%x86838%_ _%expr86827%_ _%thunk86828%_)
                    '#!void))
              (if _%thunk86828%_ (_%thunk86828%_) '#!void)))))))
