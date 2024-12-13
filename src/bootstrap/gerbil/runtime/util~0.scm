(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1734131744)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args89587%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args89587%_))
          (newline))))
    (define display*
      (lambda _%args89584%_
        (let () (declare (not safe)) (##for-each display _%args89584%_))))
    (define file-newer?
      (lambda (_%file189559%_ _%file289560%_)
        (if (string? _%file189559%_)
            (let ((_%file189564%_ _%file189559%_))
              (if (string? _%file289560%_)
                  (let ((_%file289574%_ _%file289560%_))
                    (__file-newer? _%file189564%_ _%file289574%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@64.20-64.25"
                     'contract:
                     'string?
                     'value:
                     _%file289560%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@63.20-63.25"
               'contract:
               'string?
               'value:
               _%file189559%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file189507%_ _%file289508%_)
        (let* ((_%file189511%_ _%file189507%_) (_%file289519%_ _%file289508%_))
          (letrec ((_%modification-time89528%_
                    (lambda (_%file89547%_)
                      (let ((_%file89550%_ _%file89547%_))
                        (_%__modification-time89529%_ _%file89550%_))))
                   (_%__modification-time89529%_
                    (lambda (_%file89531%_)
                      (let* ((_%file89534%_ _%file89531%_)
                             (__tmp91317
                              (let ((__tmp91318
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file89534%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp91318))))
                        (declare (not safe))
                        (##time->seconds __tmp91317)))))
            (let ((__tmp91320 (_%__modification-time89529%_ _%file189511%_))
                  (__tmp91319 (_%__modification-time89529%_ _%file289519%_)))
              (declare (not safe))
              (##fl> __tmp91320 __tmp91319))))))
    (define create-directory*__%
      (lambda (_%dir89472%_ _%perms89473%_)
        (if (string? _%dir89472%_)
            (let ((_%dir89477%_ _%dir89472%_))
              (if (fixnum? _%perms89473%_)
                  (let ((_%perms89487%_ _%perms89473%_))
                    (__create-directory*__% _%dir89477%_ _%perms89487%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.26-75.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms89473%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.26-74.29"
               'contract:
               'string?
               'value:
               _%dir89472%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir89500%_)
        (let ((_%perms89502%_ '493))
          (create-directory*__% _%dir89500%_ _%perms89502%_))))
    (define create-directory*
      (lambda _g91322_
        (let ((_g91321_ (let () (declare (not safe)) (##length _g91322_))))
          (cond ((let () (declare (not safe)) (##fx= _g91321_ 1))
                 (apply create-directory*__0 _g91322_))
                ((let () (declare (not safe)) (##fx= _g91321_ 2))
                 (apply create-directory*__% _g91322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g91322_))))))
    (define __create-directory*__%
      (lambda (_%dir89396%_ _%perms89397%_)
        (let* ((_%dir89400%_ _%dir89396%_) (_%perms89408%_ _%perms89397%_))
          (letrec ((_%create189417%_
                    (lambda (_%path89449%_)
                      (let ((_%path89452%_ _%path89449%_))
                        (_%__create189418%_ _%path89452%_))))
                   (_%__create189418%_
                    (lambda (_%path89430%_)
                      (let ((_%path89433%_ _%path89430%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path89433%_))
                            (if (eq? (file-type _%path89433%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path89433%_))
                            (if _%perms89408%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path89433%_
                                             (cons 'permissions:
                                                   (cons _%perms89408%_
                                                         '())))))
                                (create-directory _%path89433%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir89400%_))
                '#!void
                (let _%lp89420%_ ((_%start89422%_ '0))
                  (let ((_%$e89424%_
                         (__string-index__% _%dir89400%_ '#\/ _%start89422%_)))
                    (if _%$e89424%_
                        ((lambda (_%x89427%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x89427%_ '0))
                               (_%__create189418%_
                                (substring _%dir89400%_ '0 _%x89427%_))
                               '#!void)
                           (_%lp89420%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x89427%_ '1))))
                         _%$e89424%_)
                        (_%__create189418%_ _%dir89400%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir89464%_)
        (let ((_%perms89466%_ '493))
          (__create-directory*__% _%dir89464%_ _%perms89466%_))))
    (define __create-directory*
      (lambda _g91324_
        (let ((_g91323_ (let () (declare (not safe)) (##length _g91324_))))
          (cond ((let () (declare (not safe)) (##fx= _g91323_ 1))
                 (apply __create-directory*__0 _g91324_))
                ((let () (declare (not safe)) (##fx= _g91323_ 2))
                 (apply __create-directory*__% _g91324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g91324_))))))
    (define move-file__%
      (lambda (_%src89347%_ _%dest89348%_ _%replace?89349%_)
        (if (string? _%src89347%_)
            (let ((_%src89353%_ _%src89347%_))
              (if (string? _%dest89348%_)
                  (let ((_%dest89363%_ _%dest89348%_))
                    (if (boolean? _%replace?89349%_)
                        (let ((_%replace?89373%_ _%replace?89349%_))
                          (__move-file__%
                           _%src89353%_
                           _%dest89363%_
                           _%replace?89373%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@99.51-99.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?89349%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@99.34-99.38"
                     'contract:
                     'string?
                     'value:
                     _%dest89348%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@99.18-99.21"
               'contract:
               'string?
               'value:
               _%src89347%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src89386%_ _%dest89387%_)
        (let ((_%replace?89389%_ '#t))
          (move-file__% _%src89386%_ _%dest89387%_ _%replace?89389%_))))
    (define move-file
      (lambda _g91326_
        (let ((_g91325_ (let () (declare (not safe)) (##length _g91326_))))
          (cond ((let () (declare (not safe)) (##fx= _g91325_ 2))
                 (apply move-file__0 _g91326_))
                ((let () (declare (not safe)) (##fx= _g91325_ 3))
                 (apply move-file__% _g91326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g91326_))))))
    (define __move-file__%
      (lambda (_%src89290%_ _%dest89291%_ _%replace?89292%_)
        (let* ((_%src89295%_ _%src89290%_)
               (_%dest89303%_ _%dest89291%_)
               (_%replace?89311%_ _%replace?89292%_))
          (letrec ((_%force-move-it89320%_
                    (lambda ()
                      (let ((_%tmp89326%_
                             (if _%replace?89311%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest89303%_))
                                     (let ((__tmp91327
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest89303%_
                                        '"."
                                        __tmp91327))
                                     '#f)
                                 '#f)))
                        (if _%tmp89326%_
                            (rename-file _%dest89303%_ _%tmp89326%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e89328%_)
                           (if _%tmp89326%_
                               (rename-file _%tmp89326%_ _%dest89303%_ '#t)
                               '#!void)
                           (raise _%e89328%_))
                         (lambda ()
                           (let ((_%fi89331%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src89295%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi89331%_))
                                      'symbolic-link)
                                 (let ((__tmp91328
                                        (path-normalize _%src89295%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp91328
                                    _%dest89303%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file _%src89295%_ _%dest89303%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src89295%_))
                           (if _%tmp89326%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp89326%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e89322%_)
               (if (let () (declare (not safe)) (##file-exists? _%src89295%_))
                   (_%force-move-it89320%_)
                   (raise _%e89322%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src89295%_
                  _%dest89303%_
                  _%replace?89311%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src89337%_ _%dest89338%_)
        (let ((_%replace?89340%_ '#t))
          (__move-file__% _%src89337%_ _%dest89338%_ _%replace?89340%_))))
    (define __move-file
      (lambda _g91330_
        (let ((_g91329_ (let () (declare (not safe)) (##length _g91330_))))
          (cond ((let () (declare (not safe)) (##fx= _g91329_ 2))
                 (apply __move-file__0 _g91330_))
                ((let () (declare (not safe)) (##fx= _g91329_ 3))
                 (apply __move-file__% _g91330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g91330_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore89286%_ '#t))
    (define true? (lambda (_%obj89283%_) (eq? _%obj89283%_ '#t)))
    (define false (lambda _%ignore89280%_ '#f))
    (define void (lambda _%ignore89277%_ '#!void))
    (define void? (lambda (_%obj89274%_) (eq? _%obj89274%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj89271%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj89271%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj89268%_) (eq? _%obj89268%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj89265%_) (eq? _%obj89265%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj89262%_) (eq? _%obj89262%_ '#!optional)))
    (define immediate?
      (lambda (_%obj89257%_)
        (let* ((_%t89260%_ (let () (declare (not safe)) (##type _%obj89257%_)))
               (__tmp91331
                (let () (declare (not safe)) (##fxand _%t89260%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp91331))))
    (define nonnegative-fixnum?
      (lambda (_%obj89254%_)
        (if (fixnum? _%obj89254%_)
            (let () (declare (not safe)) (##fx>= _%obj89254%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj89248%_)
        (let ((_%$e89251%_ (pair? _%obj89248%_)))
          (if _%$e89251%_ _%$e89251%_ (null? _%obj89248%_)))))
    (define values-count
      (lambda (_%obj89245%_)
        (if (let () (declare (not safe)) (##values? _%obj89245%_))
            (let () (declare (not safe)) (##vector-length _%obj89245%_))
            '1)))
    (define values-ref
      (lambda (_%obj89230%_ _%k89231%_)
        (if (fixnum? _%k89231%_)
            (let ((_%k89235%_ _%k89231%_))
              (__values-ref _%obj89230%_ _%k89235%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@234.23-234.24"
               'contract:
               'fixnum?
               'value:
               _%k89231%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj89217%_ _%k89218%_)
        (let ((_%k89221%_ _%k89218%_))
          (if (let () (declare (not safe)) (##values? _%obj89217%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj89217%_ _%k89221%_))
              _%obj89217%_))))
    (define values->list
      (lambda (_%obj89214%_)
        (if (let () (declare (not safe)) (##values? _%obj89214%_))
            (let () (declare (not safe)) (##vector->list _%obj89214%_))
            (list _%obj89214%_))))
    (define foldl1
      (lambda (_%f89198%_ _%iv89199%_ _%lst89200%_)
        (if (procedure? _%f89198%_)
            (let ((_%f89204%_ _%f89198%_))
              (__foldl1 _%f89204%_ _%iv89199%_ _%lst89200%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@257.15-257.16"
               'contract:
               'procedure?
               'value:
               _%f89198%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f89146%_ _%iv89147%_ _%lst89148%_)
        (let ((_%f89151%_ _%f89146%_))
          (let _%lp89160%_ ((_%rest89162%_ _%lst89148%_)
                            (_%r89163%_ _%iv89147%_))
            (let* ((_%rest8916489172%_ _%rest89162%_)
                   (_%else8916689180%_ (lambda () _%r89163%_))
                   (_%K8916889186%_
                    (lambda (_%rest89183%_ _%x89184%_)
                      (_%lp89160%_
                       _%rest89183%_
                       (let ()
                         (declare (not safe))
                         (_%f89151%_ _%x89184%_ _%r89163%_))))))
              (if (pair? _%rest8916489172%_)
                  (let ((_%hd8916989189%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8916489172%_)))
                        (_%tl8917089191%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8916489172%_))))
                    (let* ((_%x89194%_ _%hd8916989189%_)
                           (_%rest89196%_ _%tl8917089191%_))
                      (_%K8916889186%_ _%rest89196%_ _%x89194%_)))
                  (_%else8916689180%_)))))))
    (define foldl2
      (lambda (_%f89129%_ _%iv89130%_ _%lst189131%_ _%lst289132%_)
        (if (procedure? _%f89129%_)
            (let ((_%f89136%_ _%f89129%_))
              (__foldl2 _%f89136%_ _%iv89130%_ _%lst189131%_ _%lst289132%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@264.15-264.16"
               'contract:
               'procedure?
               'value:
               _%f89129%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f89042%_ _%iv89043%_ _%lst189044%_ _%lst289045%_)
        (let ((_%f89048%_ _%f89042%_))
          (let _%lp89057%_ ((_%rest189059%_ _%lst189044%_)
                            (_%rest289060%_ _%lst289045%_)
                            (_%r89061%_ _%iv89043%_))
            (let* ((_%rest18906289070%_ _%rest189059%_)
                   (_%else8906489078%_ (lambda () _%r89061%_))
                   (_%K8906689117%_
                    (lambda (_%rest189081%_ _%x189082%_)
                      (let* ((_%rest28908389091%_ _%rest289060%_)
                             (_%else8908589099%_ (lambda () _%r89061%_))
                             (_%K8908789105%_
                              (lambda (_%rest289102%_ _%x289103%_)
                                (_%lp89057%_
                                 _%rest189081%_
                                 _%rest289102%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f89048%_
                                    _%x189082%_
                                    _%x289103%_
                                    _%r89061%_))))))
                        (if (pair? _%rest28908389091%_)
                            (let ((_%hd8908889108%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28908389091%_)))
                                  (_%tl8908989110%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28908389091%_))))
                              (let* ((_%x289113%_ _%hd8908889108%_)
                                     (_%rest289115%_ _%tl8908989110%_))
                                (_%K8908789105%_ _%rest289115%_ _%x289113%_)))
                            (_%else8908589099%_))))))
              (if (pair? _%rest18906289070%_)
                  (let ((_%hd8906789120%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18906289070%_)))
                        (_%tl8906889122%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18906289070%_))))
                    (let* ((_%x189125%_ _%hd8906789120%_)
                           (_%rest189127%_ _%tl8906889122%_))
                      (_%K8906689117%_ _%rest189127%_ _%x189125%_)))
                  (_%else8906489078%_)))))))
    (define foldl
      (lambda _g91333_
        (let ((_g91332_ (let () (declare (not safe)) (##length _g91333_))))
          (cond ((let () (declare (not safe)) (##fx= _g91332_ 3))
                 (apply foldl1 _g91333_))
                ((let () (declare (not safe)) (##fx= _g91332_ 4))
                 (apply foldl2 _g91333_))
                ((let () (declare (not safe)) (##fx>= _g91332_ 4))
                 (apply foldl* _g91333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g91333_))))))
    (define foldl*
      (lambda (_%f89011%_ _%iv89012%_ . _%rest89013%_)
        (if (procedure? _%f89011%_)
            (let ((_%f89017%_ _%f89011%_))
              (declare (not safe))
              (##apply __foldl* _%f89017%_ _%iv89012%_ _%rest89013%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@282.15-282.16"
               'contract:
               'procedure?
               'value:
               _%f89011%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f88989%_ _%iv88990%_ . _%rest88991%_)
        (let ((_%f88994%_ _%f88989%_))
          (let _%recur89003%_ ((_%iv89005%_ _%iv88990%_)
                               (_%rest89006%_ _%rest88991%_))
            (if (__andmap1 pair? _%rest89006%_)
                (_%recur89003%_
                 (let ((__tmp91334
                        (__foldr1
                         (lambda (_%xs89008%_ _%r89009%_)
                           (cons (car _%xs89008%_) _%r89009%_))
                         (list _%iv89005%_)
                         _%rest89006%_)))
                   (declare (not safe))
                   (##apply _%f88994%_ __tmp91334))
                 (map cdr _%rest89006%_))
                _%iv89005%_)))))
    (define foldr1
      (lambda (_%f88973%_ _%iv88974%_ _%lst88975%_)
        (if (procedure? _%f88973%_)
            (let ((_%f88979%_ _%f88973%_))
              (__foldr1 _%f88979%_ _%iv88974%_ _%lst88975%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f88973%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f88922%_ _%iv88923%_ _%lst88924%_)
        (let ((_%f88927%_ _%f88922%_))
          (let _%recur88936%_ ((_%rest88938%_ _%lst88924%_))
            (let* ((_%rest8893988947%_ _%rest88938%_)
                   (_%else8894188955%_ (lambda () _%iv88923%_))
                   (_%K8894388961%_
                    (lambda (_%rest88958%_ _%x88959%_)
                      (let ((__tmp91335 (_%recur88936%_ _%rest88958%_)))
                        (declare (not safe))
                        (_%f88927%_ _%x88959%_ __tmp91335)))))
              (if (pair? _%rest8893988947%_)
                  (let ((_%hd8894488964%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8893988947%_)))
                        (_%tl8894588966%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8893988947%_))))
                    (let* ((_%x88969%_ _%hd8894488964%_)
                           (_%rest88971%_ _%tl8894588966%_))
                      (_%K8894388961%_ _%rest88971%_ _%x88969%_)))
                  (_%else8894188955%_)))))))
    (define foldr2
      (lambda (_%f88905%_ _%iv88906%_ _%lst188907%_ _%lst288908%_)
        (if (procedure? _%f88905%_)
            (let ((_%f88912%_ _%f88905%_))
              (__foldr2 _%f88912%_ _%iv88906%_ _%lst188907%_ _%lst288908%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@299.15-299.16"
               'contract:
               'procedure?
               'value:
               _%f88905%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f88819%_ _%iv88820%_ _%lst188821%_ _%lst288822%_)
        (let ((_%f88825%_ _%f88819%_))
          (let _%recur88834%_ ((_%rest188836%_ _%lst188821%_)
                               (_%rest288837%_ _%lst288822%_))
            (let* ((_%rest18883888846%_ _%rest188836%_)
                   (_%else8884088854%_ (lambda () _%iv88820%_))
                   (_%K8884288893%_
                    (lambda (_%rest188857%_ _%x188858%_)
                      (let* ((_%rest28885988867%_ _%rest288837%_)
                             (_%else8886188875%_ (lambda () _%iv88820%_))
                             (_%K8886388881%_
                              (lambda (_%rest288878%_ _%x288879%_)
                                (let ((__tmp91336
                                       (_%recur88834%_
                                        _%rest188857%_
                                        _%rest288878%_)))
                                  (declare (not safe))
                                  (_%f88825%_
                                   _%x188858%_
                                   _%x288879%_
                                   __tmp91336)))))
                        (if (pair? _%rest28885988867%_)
                            (let ((_%hd8886488884%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28885988867%_)))
                                  (_%tl8886588886%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28885988867%_))))
                              (let* ((_%x288889%_ _%hd8886488884%_)
                                     (_%rest288891%_ _%tl8886588886%_))
                                (_%K8886388881%_ _%rest288891%_ _%x288889%_)))
                            (_%else8886188875%_))))))
              (if (pair? _%rest18883888846%_)
                  (let ((_%hd8884388896%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18883888846%_)))
                        (_%tl8884488898%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18883888846%_))))
                    (let* ((_%x188901%_ _%hd8884388896%_)
                           (_%rest188903%_ _%tl8884488898%_))
                      (_%K8884288893%_ _%rest188903%_ _%x188901%_)))
                  (_%else8884088854%_)))))))
    (define foldr
      (lambda _g91338_
        (let ((_g91337_ (let () (declare (not safe)) (##length _g91338_))))
          (cond ((let () (declare (not safe)) (##fx= _g91337_ 3))
                 (apply foldr1 _g91338_))
                ((let () (declare (not safe)) (##fx= _g91337_ 4))
                 (apply foldr2 _g91338_))
                ((let () (declare (not safe)) (##fx>= _g91337_ 4))
                 (apply foldr* _g91338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g91338_))))))
    (define foldr*
      (lambda (_%f88788%_ _%iv88789%_ . _%rest88790%_)
        (if (procedure? _%f88788%_)
            (let ((_%f88794%_ _%f88788%_))
              (declare (not safe))
              (##apply __foldr* _%f88794%_ _%iv88789%_ _%rest88790%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@317.15-317.16"
               'contract:
               'procedure?
               'value:
               _%f88788%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f88767%_ _%iv88768%_ . _%rest88769%_)
        (let ((_%f88772%_ _%f88767%_))
          (let _%recur88781%_ ((_%rest88783%_ _%rest88769%_))
            (if (__andmap1 pair? _%rest88783%_)
                (let ((__tmp91339
                       (__foldr1
                        (lambda (_%xs88785%_ _%r88786%_)
                          (cons (car _%xs88785%_) _%r88786%_))
                        (list (_%recur88781%_ (map cdr _%rest88783%_)))
                        _%rest88783%_)))
                  (declare (not safe))
                  (##apply _%f88772%_ __tmp91339))
                _%iv88768%_)))))
    (define remove-nulls!
      (lambda (_%l88654%_)
        (let* ((_%l8865588668%_ _%l88654%_)
               (_%E8865988672%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8865588668%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8866488757%_
                 (lambda (_%r88755%_) (remove-nulls! _%r88755%_)))
                (_%K8866188744%_
                 (lambda (_%r88684%_)
                   (let _%loop88686%_ ((_%l88688%_ _%l88654%_)
                                       (_%r88689%_ _%r88684%_))
                     (let* ((_%r8869088703%_ _%r88689%_)
                            (_%E8869488707%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8869088703%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8869988734%_
                              (lambda (_%rr88732%_)
                                (let ((__tmp91341 _%l88688%_)
                                      (__tmp91340 (remove-nulls! _%rr88732%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp91341 __tmp91340))))
                             (_%K8869688721%_
                              (lambda (_%rr88719%_)
                                (_%loop88686%_ _%r88689%_ _%rr88719%_)))
                             (_%K8869588712%_ (lambda () '#!void)))
                         (if (pair? _%r8869088703%_)
                             (let ((_%tl8870188739%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8869088703%_)))
                                   (_%hd8870088737%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8869088703%_))))
                               (if (null? _%hd8870088737%_)
                                   (let ((_%rr88742%_ _%tl8870188739%_))
                                     (_%K8869988734%_ _%rr88742%_))
                                   (let ((_%rr88727%_ _%tl8870188739%_))
                                     (_%K8869688721%_ _%rr88727%_))))
                             '#!void))))
                   _%l88654%_))
                (_%K8866088677%_ (lambda () _%l88654%_)))
            (if (pair? _%l8865588668%_)
                (let ((_%tl8866688762%_
                       (let () (declare (not safe)) (##cdr _%l8865588668%_)))
                      (_%hd8866588760%_
                       (let () (declare (not safe)) (##car _%l8865588668%_))))
                  (if (null? _%hd8866588760%_)
                      (let ((_%r88765%_ _%tl8866688762%_))
                        (remove-nulls! _%r88765%_))
                      (let ((_%r88750%_ _%tl8866688762%_))
                        (_%K8866188744%_ _%r88750%_))))
                (_%K8866088677%_))))))
    (define append1!
      (lambda (_%l88639%_ _%x88640%_)
        (let ((_%l288643%_ (cons _%x88640%_ '())))
          (if (pair? _%l88639%_)
              (let ((_%l88645%_ _%l88639%_))
                (let ((__tmp91342
                       (let () (declare (not safe)) (##last-pair _%l88645%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp91342 _%l288643%_))
                _%l88645%_)
              _%l288643%_))))
    (define append-reverse-until
      (lambda (_%pred88623%_ _%rhead88624%_ _%tail88625%_)
        (if (procedure? _%pred88623%_)
            (let ((_%pred88629%_ _%pred88623%_))
              (__append-reverse-until
               _%pred88629%_
               _%rhead88624%_
               _%tail88625%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@357.29-357.33"
               'contract:
               'procedure?
               'value:
               _%pred88623%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred88565%_ _%rhead88566%_ _%tail88567%_)
        (let ((_%pred88570%_ _%pred88565%_))
          (let _%loop88579%_ ((_%rhead88581%_ _%rhead88566%_)
                              (_%tail88582%_ _%tail88567%_))
            (let* ((_%rhead8858488593%_ _%rhead88581%_)
                   (_%E8858788597%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8858488593%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8859188620%_ (lambda () (values '() _%tail88582%_)))
                    (_%K8858888604%_
                     (lambda (_%r88601%_ _%a88602%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred88570%_ _%a88602%_))
                           (values _%rhead88581%_ _%tail88582%_)
                           (_%loop88579%_
                            _%r88601%_
                            (cons _%a88602%_ _%tail88582%_))))))
                (let ((_%try-match8858688616%_
                       (lambda ()
                         (if (pair? _%rhead8858488593%_)
                             (let ((_%tl8859088609%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8858488593%_)))
                                   (_%hd8858988607%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8858488593%_))))
                               (let ((_%a88612%_ _%hd8858988607%_)
                                     (_%r88614%_ _%tl8859088609%_))
                                 (_%K8858888604%_ _%r88614%_ _%a88612%_)))
                             (_%E8858788597%_)))))
                  (if (null? _%rhead8858488593%_)
                      (_%K8859188620%_)
                      (_%try-match8858688616%_)))))))))
    (define andmap1
      (lambda (_%f88550%_ _%lst88551%_)
        (if (procedure? _%f88550%_)
            (let ((_%f88555%_ _%f88550%_)) (__andmap1 _%f88555%_ _%lst88551%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@368.16-368.17"
               'contract:
               'procedure?
               'value:
               _%f88550%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f88499%_ _%lst88500%_)
        (let ((_%f88503%_ _%f88499%_))
          (let _%lp88512%_ ((_%rest88514%_ _%lst88500%_))
            (let* ((_%rest8851688524%_ _%rest88514%_)
                   (_%else8851888532%_ (lambda () '#t))
                   (_%K8852088538%_
                    (lambda (_%rest88535%_ _%x88536%_)
                      (if (let () (declare (not safe)) (_%f88503%_ _%x88536%_))
                          (_%lp88512%_ _%rest88535%_)
                          '#f))))
              (if (pair? _%rest8851688524%_)
                  (let ((_%hd8852188541%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8851688524%_)))
                        (_%tl8852288543%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8851688524%_))))
                    (let* ((_%x88546%_ _%hd8852188541%_)
                           (_%rest88548%_ _%tl8852288543%_))
                      (_%K8852088538%_ _%rest88548%_ _%x88546%_)))
                  (_%else8851888532%_)))))))
    (define andmap2
      (lambda (_%f88483%_ _%lst188484%_ _%lst288485%_)
        (if (procedure? _%f88483%_)
            (let ((_%f88489%_ _%f88483%_))
              (__andmap2 _%f88489%_ _%lst188484%_ _%lst288485%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f88483%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f88397%_ _%lst188398%_ _%lst288399%_)
        (let ((_%f88402%_ _%f88397%_))
          (let _%lp88411%_ ((_%rest188413%_ _%lst188398%_)
                            (_%rest288414%_ _%lst288399%_))
            (let* ((_%rest18841688424%_ _%rest188413%_)
                   (_%else8841888432%_ (lambda () '#t))
                   (_%K8842088471%_
                    (lambda (_%rest188435%_ _%x188436%_)
                      (let* ((_%rest28843788445%_ _%rest288414%_)
                             (_%else8843988453%_ (lambda () '#t))
                             (_%K8844188459%_
                              (lambda (_%rest288456%_ _%x288457%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f88402%_ _%x188436%_ _%x288457%_))
                                    (_%lp88411%_ _%rest188435%_ _%rest288456%_)
                                    '#f))))
                        (if (pair? _%rest28843788445%_)
                            (let ((_%hd8844288462%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28843788445%_)))
                                  (_%tl8844388464%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28843788445%_))))
                              (let* ((_%x288467%_ _%hd8844288462%_)
                                     (_%rest288469%_ _%tl8844388464%_))
                                (_%K8844188459%_ _%rest288469%_ _%x288467%_)))
                            (_%else8843988453%_))))))
              (if (pair? _%rest18841688424%_)
                  (let ((_%hd8842188474%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18841688424%_)))
                        (_%tl8842288476%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18841688424%_))))
                    (let* ((_%x188479%_ _%hd8842188474%_)
                           (_%rest188481%_ _%tl8842288476%_))
                      (_%K8842088471%_ _%rest188481%_ _%x188479%_)))
                  (_%else8841888432%_)))))))
    (define andmap
      (lambda _g91344_
        (let ((_g91343_ (let () (declare (not safe)) (##length _g91344_))))
          (cond ((let () (declare (not safe)) (##fx= _g91343_ 2))
                 (apply andmap1 _g91344_))
                ((let () (declare (not safe)) (##fx= _g91343_ 3))
                 (apply andmap2 _g91344_))
                ((let () (declare (not safe)) (##fx>= _g91343_ 3))
                 (apply andmap* _g91344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g91344_))))))
    (define andmap*
      (lambda (_%f88370%_ . _%rest88371%_)
        (if (procedure? _%f88370%_)
            (let ((_%f88375%_ _%f88370%_))
              (declare (not safe))
              (##apply __andmap* _%f88375%_ _%rest88371%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@397.16-397.17"
               'contract:
               'procedure?
               'value:
               _%f88370%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f88352%_ . _%rest88353%_)
        (let ((_%f88356%_ _%f88352%_))
          (let _%recur88365%_ ((_%rest88367%_ _%rest88353%_))
            (if (__andmap1 pair? _%rest88367%_)
                (if (let ((__tmp91345 (map car _%rest88367%_)))
                      (declare (not safe))
                      (##apply _%f88356%_ __tmp91345))
                    (_%recur88365%_ (map cdr _%rest88367%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f88337%_ _%lst88338%_)
        (if (procedure? _%f88337%_)
            (let ((_%f88342%_ _%f88337%_)) (__ormap1 _%f88342%_ _%lst88338%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.15-406.16"
               'contract:
               'procedure?
               'value:
               _%f88337%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f88284%_ _%lst88285%_)
        (let ((_%f88288%_ _%f88284%_))
          (let _%lp88297%_ ((_%rest88299%_ _%lst88285%_))
            (let* ((_%rest8830088308%_ _%rest88299%_)
                   (_%else8830288316%_ (lambda () '#f))
                   (_%K8830488325%_
                    (lambda (_%rest88319%_ _%x88320%_)
                      (let ((_%$e88322%_
                             (let ()
                               (declare (not safe))
                               (_%f88288%_ _%x88320%_))))
                        (if _%$e88322%_
                            _%$e88322%_
                            (_%lp88297%_ _%rest88319%_))))))
              (if (pair? _%rest8830088308%_)
                  (let ((_%hd8830588328%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8830088308%_)))
                        (_%tl8830688330%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8830088308%_))))
                    (let* ((_%x88333%_ _%hd8830588328%_)
                           (_%rest88335%_ _%tl8830688330%_))
                      (_%K8830488325%_ _%rest88335%_ _%x88333%_)))
                  (_%else8830288316%_)))))))
    (define ormap2
      (lambda (_%f88268%_ _%lst188269%_ _%lst288270%_)
        (if (procedure? _%f88268%_)
            (let ((_%f88274%_ _%f88268%_))
              (__ormap2 _%f88274%_ _%lst188269%_ _%lst288270%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.15-413.16"
               'contract:
               'procedure?
               'value:
               _%f88268%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f88180%_ _%lst188181%_ _%lst288182%_)
        (let ((_%f88185%_ _%f88180%_))
          (let _%lp88194%_ ((_%rest188196%_ _%lst188181%_)
                            (_%rest288197%_ _%lst288182%_))
            (let* ((_%rest18819888206%_ _%rest188196%_)
                   (_%else8820088214%_ (lambda () '#f))
                   (_%K8820288256%_
                    (lambda (_%rest188217%_ _%x188218%_)
                      (let* ((_%rest28821988227%_ _%rest288197%_)
                             (_%else8822188235%_ (lambda () '#f))
                             (_%K8822388244%_
                              (lambda (_%rest288238%_ _%x288239%_)
                                (let ((_%$e88241%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f88185%_
                                          _%x188218%_
                                          _%x288239%_))))
                                  (if _%$e88241%_
                                      _%$e88241%_
                                      (_%lp88194%_
                                       _%rest188217%_
                                       _%rest288238%_))))))
                        (if (pair? _%rest28821988227%_)
                            (let ((_%hd8822488247%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28821988227%_)))
                                  (_%tl8822588249%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28821988227%_))))
                              (let* ((_%x288252%_ _%hd8822488247%_)
                                     (_%rest288254%_ _%tl8822588249%_))
                                (_%K8822388244%_ _%rest288254%_ _%x288252%_)))
                            (_%else8822188235%_))))))
              (if (pair? _%rest18819888206%_)
                  (let ((_%hd8820388259%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18819888206%_)))
                        (_%tl8820488261%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18819888206%_))))
                    (let* ((_%x188264%_ _%hd8820388259%_)
                           (_%rest188266%_ _%tl8820488261%_))
                      (_%K8820288256%_ _%rest188266%_ _%x188264%_)))
                  (_%else8820088214%_)))))))
    (define ormap
      (lambda _g91347_
        (let ((_g91346_ (let () (declare (not safe)) (##length _g91347_))))
          (cond ((let () (declare (not safe)) (##fx= _g91346_ 2))
                 (apply ormap1 _g91347_))
                ((let () (declare (not safe)) (##fx= _g91346_ 3))
                 (apply ormap2 _g91347_))
                ((let () (declare (not safe)) (##fx>= _g91346_ 3))
                 (apply ormap* _g91347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g91347_))))))
    (define ormap*
      (lambda (_%f88153%_ . _%rest88154%_)
        (if (procedure? _%f88153%_)
            (let ((_%f88158%_ _%f88153%_))
              (declare (not safe))
              (##apply __ormap* _%f88158%_ _%rest88154%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@431.15-431.16"
               'contract:
               'procedure?
               'value:
               _%f88153%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f88133%_ . _%rest88134%_)
        (let ((_%f88137%_ _%f88133%_))
          (let _%recur88146%_ ((_%rest88148%_ _%rest88134%_))
            (if (__andmap1 pair? _%rest88148%_)
                (let ((_%$e88150%_
                       (let ((__tmp91348 (map car _%rest88148%_)))
                         (declare (not safe))
                         (##apply _%f88137%_ __tmp91348))))
                  (if _%$e88150%_
                      _%$e88150%_
                      (_%recur88146%_ (map cdr _%rest88148%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f88118%_ _%lst88119%_)
        (if (procedure? _%f88118%_)
            (let ((_%f88123%_ _%f88118%_))
              (__filter-map1 _%f88123%_ _%lst88119%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.20-438.21"
               'contract:
               'procedure?
               'value:
               _%f88118%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f88061%_ _%lst88062%_)
        (let ((_%f88065%_ _%f88061%_))
          (let _%recur88074%_ ((_%rest88076%_ _%lst88062%_))
            (let* ((_%rest8807888086%_ _%rest88076%_)
                   (_%else8808088094%_ (lambda () '()))
                   (_%K8808288106%_
                    (lambda (_%rest88097%_ _%x88098%_)
                      (let ((_%$e88100%_
                             (let ()
                               (declare (not safe))
                               (_%f88065%_ _%x88098%_))))
                        (if _%$e88100%_
                            ((lambda (_%r88103%_)
                               (cons _%r88103%_
                                     (_%recur88074%_ _%rest88097%_)))
                             _%$e88100%_)
                            (_%recur88074%_ _%rest88097%_))))))
              (if (pair? _%rest8807888086%_)
                  (let ((_%hd8808388109%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8807888086%_)))
                        (_%tl8808488111%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8807888086%_))))
                    (let* ((_%x88114%_ _%hd8808388109%_)
                           (_%rest88116%_ _%tl8808488111%_))
                      (_%K8808288106%_ _%rest88116%_ _%x88114%_)))
                  (_%else8808088094%_)))))))
    (define filter-map2
      (lambda (_%f88045%_ _%lst188046%_ _%lst288047%_)
        (if (procedure? _%f88045%_)
            (let ((_%f88051%_ _%f88045%_))
              (__filter-map2 _%f88051%_ _%lst188046%_ _%lst288047%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@449.20-449.21"
               'contract:
               'procedure?
               'value:
               _%f88045%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f87953%_ _%lst187954%_ _%lst287955%_)
        (let ((_%f87958%_ _%f87953%_))
          (let _%recur87967%_ ((_%rest187969%_ _%lst187954%_)
                               (_%rest287970%_ _%lst287955%_))
            (let* ((_%rest18797287980%_ _%rest187969%_)
                   (_%else8797487988%_ (lambda () '()))
                   (_%K8797688033%_
                    (lambda (_%rest187991%_ _%x187992%_)
                      (let* ((_%rest28799388001%_ _%rest287970%_)
                             (_%else8799588009%_ (lambda () '()))
                             (_%K8799788021%_
                              (lambda (_%rest288012%_ _%x288013%_)
                                (let ((_%$e88015%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f87958%_
                                          _%x187992%_
                                          _%x288013%_))))
                                  (if _%$e88015%_
                                      ((lambda (_%r88018%_)
                                         (cons _%r88018%_
                                               (_%recur87967%_
                                                _%rest187991%_
                                                _%rest288012%_)))
                                       _%$e88015%_)
                                      (_%recur87967%_
                                       _%rest187991%_
                                       _%rest288012%_))))))
                        (if (pair? _%rest28799388001%_)
                            (let ((_%hd8799888024%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28799388001%_)))
                                  (_%tl8799988026%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28799388001%_))))
                              (let* ((_%x288029%_ _%hd8799888024%_)
                                     (_%rest288031%_ _%tl8799988026%_))
                                (_%K8799788021%_ _%rest288031%_ _%x288029%_)))
                            (_%else8799588009%_))))))
              (if (pair? _%rest18797287980%_)
                  (let ((_%hd8797788036%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18797287980%_)))
                        (_%tl8797888038%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18797287980%_))))
                    (let* ((_%x188041%_ _%hd8797788036%_)
                           (_%rest188043%_ _%tl8797888038%_))
                      (_%K8797688033%_ _%rest188043%_ _%x188041%_)))
                  (_%else8797487988%_)))))))
    (define filter-map
      (lambda _g91350_
        (let ((_g91349_ (let () (declare (not safe)) (##length _g91350_))))
          (cond ((let () (declare (not safe)) (##fx= _g91349_ 2))
                 (apply filter-map1 _g91350_))
                ((let () (declare (not safe)) (##fx= _g91349_ 3))
                 (apply filter-map2 _g91350_))
                ((let () (declare (not safe)) (##fx>= _g91349_ 3))
                 (apply filter-map* _g91350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g91350_))))))
    (define filter-map*
      (lambda (_%f87926%_ . _%rest87927%_)
        (if (procedure? _%f87926%_)
            (let ((_%f87931%_ _%f87926%_))
              (declare (not safe))
              (##apply __filter-map* _%f87931%_ _%rest87927%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f87926%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f87902%_ . _%rest87903%_)
        (let ((_%f87906%_ _%f87902%_))
          (let _%recur87915%_ ((_%rest87917%_ _%rest87903%_))
            (if (__andmap1 pair? _%rest87917%_)
                (let ((_%$e87920%_
                       (let ((__tmp91351 (map car _%rest87917%_)))
                         (declare (not safe))
                         (##apply _%f87906%_ __tmp91351))))
                  (if _%$e87920%_
                      ((lambda (_%r87923%_)
                         (cons _%r87923%_
                               (_%recur87915%_ (map cdr _%rest87917%_))))
                       _%$e87920%_)
                      (_%recur87915%_ (map cdr _%rest87917%_))))
                '())))))
    (define agetq__%
      (lambda (_%key87878%_ _%lst87880%_ _%default87882%_)
        (let ((_%$e87885%_
               (if (pair? _%lst87880%_) (assq _%key87878%_ _%lst87880%_) '#f)))
          (if _%$e87885%_
              (cdr _%$e87885%_)
              (if (procedure? _%default87882%_)
                  (_%default87882%_ _%key87878%_)
                  _%default87882%_)))))
    (define agetq__0
      (lambda (_%key87893%_ _%lst87894%_)
        (let ((_%default87896%_ '#f))
          (agetq__% _%key87893%_ _%lst87894%_ _%default87896%_))))
    (define agetq
      (lambda _g91353_
        (let ((_g91352_ (let () (declare (not safe)) (##length _g91353_))))
          (cond ((let () (declare (not safe)) (##fx= _g91352_ 2))
                 (apply agetq__0 _g91353_))
                ((let () (declare (not safe)) (##fx= _g91352_ 3))
                 (apply agetq__% _g91353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g91353_))))))
    (define agetv__%
      (lambda (_%key87853%_ _%lst87855%_ _%default87857%_)
        (let ((_%$e87860%_
               (if (pair? _%lst87855%_) (assv _%key87853%_ _%lst87855%_) '#f)))
          (if _%$e87860%_
              (cdr _%$e87860%_)
              (if (procedure? _%default87857%_)
                  (_%default87857%_ _%key87853%_)
                  _%default87857%_)))))
    (define agetv__0
      (lambda (_%key87868%_ _%lst87869%_)
        (let ((_%default87871%_ '#f))
          (agetv__% _%key87868%_ _%lst87869%_ _%default87871%_))))
    (define agetv
      (lambda _g91355_
        (let ((_g91354_ (let () (declare (not safe)) (##length _g91355_))))
          (cond ((let () (declare (not safe)) (##fx= _g91354_ 2))
                 (apply agetv__0 _g91355_))
                ((let () (declare (not safe)) (##fx= _g91354_ 3))
                 (apply agetv__% _g91355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g91355_))))))
    (define aget__%
      (lambda (_%key87828%_ _%lst87830%_ _%default87832%_)
        (let ((_%$e87835%_
               (if (pair? _%lst87830%_)
                   (assoc _%key87828%_ _%lst87830%_)
                   '#f)))
          (if _%$e87835%_
              (cdr _%$e87835%_)
              (if (procedure? _%default87832%_)
                  (_%default87832%_ _%key87828%_)
                  _%default87832%_)))))
    (define aget__0
      (lambda (_%key87843%_ _%lst87844%_)
        (let ((_%default87846%_ '#f))
          (aget__% _%key87843%_ _%lst87844%_ _%default87846%_))))
    (define aget
      (lambda _g91357_
        (let ((_g91356_ (let () (declare (not safe)) (##length _g91357_))))
          (cond ((let () (declare (not safe)) (##fx= _g91356_ 2))
                 (apply aget__0 _g91357_))
                ((let () (declare (not safe)) (##fx= _g91356_ 3))
                 (apply aget__% _g91357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g91357_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key87757%_ _%lst87759%_ _%default87761%_)
        (let _%lp87764%_ ((_%rest87767%_ _%lst87759%_))
          (let* ((_%rest8776987779%_ _%rest87767%_)
                 (_%else8777187787%_
                  (lambda ()
                    (if (procedure? _%default87761%_)
                        (_%default87761%_ _%key87757%_)
                        _%default87761%_)))
                 (_%K8777387796%_
                  (lambda (_%rest87790%_ _%v87791%_ _%k87793%_)
                    (if (eq? _%k87793%_ _%key87757%_)
                        _%v87791%_
                        (_%lp87764%_ _%rest87790%_)))))
            (if (pair? _%rest8776987779%_)
                (let ((_%hd8777487799%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8776987779%_)))
                      (_%tl8777587801%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8776987779%_))))
                  (let ((_%k87804%_ _%hd8777487799%_))
                    (if (pair? _%tl8777587801%_)
                        (let ((_%hd8777687806%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8777587801%_)))
                              (_%tl8777787808%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8777587801%_))))
                          (let* ((_%v87811%_ _%hd8777687806%_)
                                 (_%rest87813%_ _%tl8777787808%_))
                            (_%K8777387796%_
                             _%rest87813%_
                             _%v87811%_
                             _%k87804%_)))
                        (_%else8777187787%_))))
                (_%else8777187787%_))))))
    (define pgetq__0
      (lambda (_%key87818%_ _%lst87819%_)
        (let ((_%default87821%_ '#f))
          (pgetq__% _%key87818%_ _%lst87819%_ _%default87821%_))))
    (define pgetq
      (lambda _g91359_
        (let ((_g91358_ (let () (declare (not safe)) (##length _g91359_))))
          (cond ((let () (declare (not safe)) (##fx= _g91358_ 2))
                 (apply pgetq__0 _g91359_))
                ((let () (declare (not safe)) (##fx= _g91358_ 3))
                 (apply pgetq__% _g91359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g91359_))))))
    (define pgetv__%
      (lambda (_%key87686%_ _%lst87688%_ _%default87690%_)
        (let _%lp87693%_ ((_%rest87696%_ _%lst87688%_))
          (let* ((_%rest8769887708%_ _%rest87696%_)
                 (_%else8770087716%_
                  (lambda ()
                    (if (procedure? _%default87690%_)
                        (_%default87690%_ _%key87686%_)
                        _%default87690%_)))
                 (_%K8770287725%_
                  (lambda (_%rest87719%_ _%v87720%_ _%k87722%_)
                    (if (eqv? _%k87722%_ _%key87686%_)
                        _%v87720%_
                        (_%lp87693%_ _%rest87719%_)))))
            (if (pair? _%rest8769887708%_)
                (let ((_%hd8770387728%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8769887708%_)))
                      (_%tl8770487730%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8769887708%_))))
                  (let ((_%k87733%_ _%hd8770387728%_))
                    (if (pair? _%tl8770487730%_)
                        (let ((_%hd8770587735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8770487730%_)))
                              (_%tl8770687737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8770487730%_))))
                          (let* ((_%v87740%_ _%hd8770587735%_)
                                 (_%rest87742%_ _%tl8770687737%_))
                            (_%K8770287725%_
                             _%rest87742%_
                             _%v87740%_
                             _%k87733%_)))
                        (_%else8770087716%_))))
                (_%else8770087716%_))))))
    (define pgetv__0
      (lambda (_%key87747%_ _%lst87748%_)
        (let ((_%default87750%_ '#f))
          (pgetv__% _%key87747%_ _%lst87748%_ _%default87750%_))))
    (define pgetv
      (lambda _g91361_
        (let ((_g91360_ (let () (declare (not safe)) (##length _g91361_))))
          (cond ((let () (declare (not safe)) (##fx= _g91360_ 2))
                 (apply pgetv__0 _g91361_))
                ((let () (declare (not safe)) (##fx= _g91360_ 3))
                 (apply pgetv__% _g91361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g91361_))))))
    (define pget__%
      (lambda (_%key87615%_ _%lst87617%_ _%default87619%_)
        (let _%lp87622%_ ((_%rest87625%_ _%lst87617%_))
          (let* ((_%rest8762787637%_ _%rest87625%_)
                 (_%else8762987645%_
                  (lambda ()
                    (if (procedure? _%default87619%_)
                        (_%default87619%_ _%key87615%_)
                        _%default87619%_)))
                 (_%K8763187654%_
                  (lambda (_%rest87648%_ _%v87649%_ _%k87651%_)
                    (if (equal? _%k87651%_ _%key87615%_)
                        _%v87649%_
                        (_%lp87622%_ _%rest87648%_)))))
            (if (pair? _%rest8762787637%_)
                (let ((_%hd8763287657%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8762787637%_)))
                      (_%tl8763387659%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8762787637%_))))
                  (let ((_%k87662%_ _%hd8763287657%_))
                    (if (pair? _%tl8763387659%_)
                        (let ((_%hd8763487664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8763387659%_)))
                              (_%tl8763587666%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8763387659%_))))
                          (let* ((_%v87669%_ _%hd8763487664%_)
                                 (_%rest87671%_ _%tl8763587666%_))
                            (_%K8763187654%_
                             _%rest87671%_
                             _%v87669%_
                             _%k87662%_)))
                        (_%else8762987645%_))))
                (_%else8762987645%_))))))
    (define pget__0
      (lambda (_%key87676%_ _%lst87677%_)
        (let ((_%default87679%_ '#f))
          (pget__% _%key87676%_ _%lst87677%_ _%default87679%_))))
    (define pget
      (lambda _g91363_
        (let ((_g91362_ (let () (declare (not safe)) (##length _g91363_))))
          (cond ((let () (declare (not safe)) (##fx= _g91362_ 2))
                 (apply pget__0 _g91363_))
                ((let () (declare (not safe)) (##fx= _g91362_ 3))
                 (apply pget__% _g91363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g91363_))))))
    (define find
      (lambda (_%pred87599%_ _%lst87600%_)
        (if (procedure? _%pred87599%_)
            (let ((_%pred87604%_ _%pred87599%_))
              (__find _%pred87604%_ _%lst87600%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.13-517.17"
               'contract:
               'procedure?
               'value:
               _%pred87599%_)
              '#!void))))
    (define __find
      (lambda (_%pred87582%_ _%lst87583%_)
        (let* ((_%pred87586%_ _%pred87582%_)
               (_%$e87595%_ (__memf _%pred87586%_ _%lst87583%_)))
          (if _%$e87595%_
              (let () (declare (not safe)) (##car _%$e87595%_))
              '#f))))
    (define memf
      (lambda (_%proc87567%_ _%lst87568%_)
        (if (procedure? _%proc87567%_)
            (let ((_%proc87572%_ _%proc87567%_))
              (__memf _%proc87572%_ _%lst87568%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@522.13-522.17"
               'contract:
               'procedure?
               'value:
               _%proc87567%_)
              '#!void))))
    (define __memf
      (lambda (_%proc87517%_ _%lst87518%_)
        (let ((_%proc87521%_ _%proc87517%_))
          (let _%lp87530%_ ((_%rest87532%_ _%lst87518%_))
            (let* ((_%rest8753387541%_ _%rest87532%_)
                   (_%else8753587549%_ (lambda () '#f))
                   (_%K8753787555%_
                    (lambda (_%tl87552%_ _%hd87553%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc87521%_ _%hd87553%_))
                          _%rest87532%_
                          (_%lp87530%_ _%tl87552%_)))))
              (if (pair? _%rest8753387541%_)
                  (let ((_%hd8753887558%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8753387541%_)))
                        (_%tl8753987560%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8753387541%_))))
                    (let* ((_%hd87563%_ _%hd8753887558%_)
                           (_%tl87565%_ _%tl8753987560%_))
                      (_%K8753787555%_ _%tl87565%_ _%hd87563%_)))
                  (_%else8753587549%_)))))))
    (define remove1
      (lambda (_%el87470%_ _%lst87472%_)
        (let _%lp87475%_ ((_%rest87478%_ _%lst87472%_) (_%r87480%_ '()))
          (let* ((_%rest8748287490%_ _%rest87478%_)
                 (_%else8748487498%_ (lambda () _%lst87472%_))
                 (_%K8748687505%_
                  (lambda (_%rest87501%_ _%hd87502%_)
                    (if (equal? _%el87470%_ _%hd87502%_)
                        (__foldl1 cons _%rest87501%_ _%r87480%_)
                        (_%lp87475%_
                         _%rest87501%_
                         (cons _%hd87502%_ _%r87480%_))))))
            (if (pair? _%rest8748287490%_)
                (let ((_%hd8748787508%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8748287490%_)))
                      (_%tl8748887510%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8748287490%_))))
                  (let* ((_%hd87513%_ _%hd8748787508%_)
                         (_%rest87515%_ _%tl8748887510%_))
                    (_%K8748687505%_ _%rest87515%_ _%hd87513%_)))
                (_%else8748487498%_))))))
    (define remv1
      (lambda (_%el87423%_ _%lst87425%_)
        (let _%lp87428%_ ((_%rest87431%_ _%lst87425%_) (_%r87433%_ '()))
          (let* ((_%rest8743587443%_ _%rest87431%_)
                 (_%else8743787451%_ (lambda () _%lst87425%_))
                 (_%K8743987458%_
                  (lambda (_%rest87454%_ _%hd87455%_)
                    (if (eqv? _%el87423%_ _%hd87455%_)
                        (__foldl1 cons _%rest87454%_ _%r87433%_)
                        (_%lp87428%_
                         _%rest87454%_
                         (cons _%hd87455%_ _%r87433%_))))))
            (if (pair? _%rest8743587443%_)
                (let ((_%hd8744087461%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8743587443%_)))
                      (_%tl8744187463%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8743587443%_))))
                  (let* ((_%hd87466%_ _%hd8744087461%_)
                         (_%rest87468%_ _%tl8744187463%_))
                    (_%K8743987458%_ _%rest87468%_ _%hd87466%_)))
                (_%else8743787451%_))))))
    (define remq1
      (lambda (_%el87376%_ _%lst87378%_)
        (let _%lp87381%_ ((_%rest87384%_ _%lst87378%_) (_%r87386%_ '()))
          (let* ((_%rest8738887396%_ _%rest87384%_)
                 (_%else8739087404%_ (lambda () _%lst87378%_))
                 (_%K8739287411%_
                  (lambda (_%rest87407%_ _%hd87408%_)
                    (if (eq? _%el87376%_ _%hd87408%_)
                        (__foldl1 cons _%rest87407%_ _%r87386%_)
                        (_%lp87381%_
                         _%rest87407%_
                         (cons _%hd87408%_ _%r87386%_))))))
            (if (pair? _%rest8738887396%_)
                (let ((_%hd8739387414%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8738887396%_)))
                      (_%tl8739487416%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8738887396%_))))
                  (let* ((_%hd87419%_ _%hd8739387414%_)
                         (_%rest87421%_ _%tl8739487416%_))
                    (_%K8739287411%_ _%rest87421%_ _%hd87419%_)))
                (_%else8739087404%_))))))
    (define remf
      (lambda (_%proc87361%_ _%lst87362%_)
        (if (procedure? _%proc87361%_)
            (let ((_%proc87366%_ _%proc87361%_))
              (__remf _%proc87366%_ _%lst87362%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@544.13-544.17"
               'contract:
               'procedure?
               'value:
               _%proc87361%_)
              '#!void))))
    (define __remf
      (lambda (_%proc87310%_ _%lst87311%_)
        (let ((_%proc87314%_ _%proc87310%_))
          (let _%lp87323%_ ((_%rest87325%_ _%lst87311%_) (_%r87326%_ '()))
            (let* ((_%rest8732787335%_ _%rest87325%_)
                   (_%else8732987343%_ (lambda () _%lst87311%_))
                   (_%K8733187349%_
                    (lambda (_%rest87346%_ _%hd87347%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc87314%_ _%hd87347%_))
                          (__foldl1 cons _%rest87346%_ _%r87326%_)
                          (_%lp87323%_
                           _%rest87346%_
                           (cons _%hd87347%_ _%r87326%_))))))
              (if (pair? _%rest8732787335%_)
                  (let ((_%hd8733287352%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8732787335%_)))
                        (_%tl8733387354%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8732787335%_))))
                    (let* ((_%hd87357%_ _%hd8733287352%_)
                           (_%rest87359%_ _%tl8733387354%_))
                      (_%K8733187349%_ _%rest87359%_ _%hd87357%_)))
                  (_%else8732987343%_)))))))
    (define 1+
      (lambda (_%x87296%_)
        (if (number? _%x87296%_)
            (let ((_%x87300%_ _%x87296%_)) (__1+ _%x87300%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.11-553.12"
               'contract:
               'number?
               'value:
               _%x87296%_)
              '#!void))))
    (define __1+
      (lambda (_%x87284%_) (let ((_%x87287%_ _%x87284%_)) (+ _%x87287%_ '1))))
    (define 1-
      (lambda (_%x87270%_)
        (if (number? _%x87270%_)
            (let ((_%x87274%_ _%x87270%_)) (__1- _%x87274%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@561.11-561.12"
               'contract:
               'number?
               'value:
               _%x87270%_)
              '#!void))))
    (define __1-
      (lambda (_%x87258%_) (let ((_%x87261%_ _%x87258%_)) (- _%x87261%_ '1))))
    (define fx1+
      (lambda (_%x87244%_)
        (if (fixnum? _%x87244%_)
            (let ((_%x87248%_ _%x87244%_)) (__fx1+ _%x87248%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.13-569.14"
               'contract:
               'fixnum?
               'value:
               _%x87244%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x87232%_)
        (let ((_%x87235%_ _%x87232%_))
          (declare (not safe))
          (##fx+ _%x87235%_ '1))))
    (define fx1-
      (lambda (_%x87218%_)
        (if (fixnum? _%x87218%_)
            (let ((_%x87222%_ _%x87218%_)) (__fx1- _%x87222%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.14"
               'contract:
               'fixnum?
               'value:
               _%x87218%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x87206%_)
        (let ((_%x87209%_ _%x87206%_))
          (declare (not safe))
          (##fx- _%x87209%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x87203%_)
        (if (fixnum? _%x87203%_)
            (let () (declare (not safe)) (##fx>= _%x87203%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x87200%_)
        (if (fixnum? _%x87200%_)
            (let () (declare (not safe)) (##fx> _%x87200%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x87197%_)
        (let () (declare (not safe)) (##fx= _%x87197%_ '0))))
    (define fx<0?
      (lambda (_%x87194%_)
        (if (fixnum? _%x87194%_)
            (let () (declare (not safe)) (##fx< _%x87194%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x87191%_)
        (if (fixnum? _%x87191%_)
            (let () (declare (not safe)) (##fx<= _%x87191%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x87188%_)
        (if (symbol? _%x87188%_) (not (uninterned-symbol? _%x87188%_)) '#f)))
    (define display-as-string
      (lambda (_%x87173%_ _%port87174%_)
        (if (output-port? _%port87174%_)
            (let ((_%port87178%_ _%port87174%_))
              (__display-as-string _%x87173%_ _%port87178%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@605.28-605.32"
               'contract:
               'output-port?
               'value:
               _%port87174%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x87130%_ _%port87131%_)
        (let ((_%port87134%_ _%port87131%_))
          (if (or (string? _%x87130%_)
                  (symbol? _%x87130%_)
                  (keyword? _%x87130%_)
                  (number? _%x87130%_)
                  (char? _%x87130%_))
              (display _%x87130%_ _%port87134%_)
              (if (pair? _%x87130%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x87130%_))
                     _%port87134%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x87130%_))
                     _%port87134%_))
                  (if (vector? _%x87130%_)
                      (vector-for-each
                       (lambda (_%g8715787159%_)
                         (__display-as-string _%g8715787159%_ _%port87134%_))
                       _%x87130%_)
                      (if (or (null? _%x87130%_)
                              (eq? _%x87130%_ '#!void)
                              (eof-object? _%x87130%_)
                              (boolean? _%x87130%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x87130%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x87113%_)
        (if (string? _%x87113%_)
            _%x87113%_
            (if (symbol? _%x87113%_)
                (let () (declare (not safe)) (##symbol->string _%x87113%_))
                (if (keyword? _%x87113%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x87113%_))
                    (if (number? _%x87113%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x87113%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g8711987121%_)
                           (__display-as-string
                            _%x87113%_
                            _%g8711987121%_)))))))))
    (define as-string__1
      (lambda _%args87124%_
        (call-with-output-string
         '()
         (lambda (_%g8712587127%_)
           (__display-as-string _%args87124%_ _%g8712587127%_)))))
    (define as-string
      (lambda _g91365_
        (let ((_g91364_ (let () (declare (not safe)) (##length _g91365_))))
          (cond ((let () (declare (not safe)) (##fx= _g91364_ 1))
                 (apply as-string__0 _g91365_))
                (#t
                 (apply (lambda _%args87124%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args87124%_)))
                        _g91365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g91365_))))))
    (define make-symbol__0
      (lambda (_%x87109%_)
        (if (interned-symbol? _%x87109%_)
            _%x87109%_
            (let ((__tmp91366 (as-string__0 _%x87109%_)))
              (declare (not safe))
              (##string->symbol __tmp91366)))))
    (define make-symbol__1
      (lambda _%args87111%_
        (let ((__tmp91367
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args87111%_))))
          (declare (not safe))
          (##string->symbol __tmp91367))))
    (define make-symbol
      (lambda _g91369_
        (let ((_g91368_ (let () (declare (not safe)) (##length _g91369_))))
          (cond ((let () (declare (not safe)) (##fx= _g91368_ 1))
                 (apply make-symbol__0 _g91369_))
                (#t
                 (apply (lambda _%args87111%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args87111%_)))
                        _g91369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g91369_))))))
    (define make-keyword__0
      (lambda (_%x87105%_)
        (if (interned-keyword? _%x87105%_)
            _%x87105%_
            (let ((__tmp91370 (as-string__0 _%x87105%_)))
              (declare (not safe))
              (##string->keyword __tmp91370)))))
    (define make-keyword__1
      (lambda _%args87107%_
        (let ((__tmp91371
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args87107%_))))
          (declare (not safe))
          (##string->keyword __tmp91371))))
    (define make-keyword
      (lambda _g91373_
        (let ((_g91372_ (let () (declare (not safe)) (##length _g91373_))))
          (cond ((let () (declare (not safe)) (##fx= _g91372_ 1))
                 (apply make-keyword__0 _g91373_))
                (#t
                 (apply (lambda _%args87107%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args87107%_)))
                        _g91373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g91373_))))))
    (define interned-keyword?
      (lambda (_%x87102%_)
        (if (keyword? _%x87102%_) (not (uninterned-keyword? _%x87102%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym87088%_)
        (if (symbol? _%sym87088%_)
            (let ((_%sym87092%_ _%sym87088%_))
              (__symbol->keyword _%sym87092%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@648.24-648.27"
               'contract:
               'symbol?
               'value:
               _%sym87088%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym87076%_)
        (let ((_%sym87079%_ _%sym87076%_))
          (if (uninterned-symbol? _%sym87079%_)
              (let ((__tmp91374
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym87079%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp91374))
              (let ((__tmp91375
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym87079%_))))
                (declare (not safe))
                (##string->keyword __tmp91375))))))
    (define keyword->symbol
      (lambda (_%sym87062%_)
        (if (keyword? _%sym87062%_)
            (let ((_%sym87066%_ _%sym87062%_))
              (__keyword->symbol _%sym87066%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.24-654.27"
               'contract:
               'keyword?
               'value:
               _%sym87062%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym87050%_)
        (let ((_%sym87053%_ _%sym87050%_))
          (if (uninterned-keyword? _%sym87053%_)
              (let ((__tmp91376
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym87053%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp91376))
              (let ((__tmp91377
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym87053%_))))
                (declare (not safe))
                (##string->symbol __tmp91377))))))
    (define bytes->string__%
      (lambda (_%bstr87015%_ _%enc87016%_)
        (if (u8vector? _%bstr87015%_)
            (let ((_%bstr87020%_ _%bstr87015%_))
              (if (symbol? _%enc87016%_)
                  (let ((_%enc87030%_ _%enc87016%_))
                    (__bytes->string__% _%bstr87020%_ _%enc87030%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@661.25-661.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc87016%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.22-660.26"
               'contract:
               'u8vector?
               'value:
               _%bstr87015%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr87043%_)
        (let ((_%enc87045%_ 'UTF-8))
          (bytes->string__% _%bstr87043%_ _%enc87045%_))))
    (define bytes->string
      (lambda _g91379_
        (let ((_g91378_ (let () (declare (not safe)) (##length _g91379_))))
          (cond ((let () (declare (not safe)) (##fx= _g91378_ 1))
                 (apply bytes->string__0 _g91379_))
                ((let () (declare (not safe)) (##fx= _g91378_ 2))
                 (apply bytes->string__% _g91379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g91379_))))))
    (define __bytes->string__%
      (lambda (_%bstr86974%_ _%enc86975%_)
        (let* ((_%bstr86978%_ _%bstr86974%_) (_%enc86986%_ _%enc86975%_))
          (if (eq? _%enc86986%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr86978%_))
              (let* ((_%in86995%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc86986%_
                                   (cons 'init: (cons _%bstr86978%_ '()))))))
                     (_%len86997%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr86978%_)))
                     (_%out86999%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len86997%_)))
                     (_%n87001%_
                      (read-substring
                       _%out86999%_
                       '0
                       _%len86997%_
                       _%in86995%_)))
                (string-shrink! _%out86999%_ _%n87001%_)
                _%out86999%_)))))
    (define __bytes->string__0
      (lambda (_%bstr87007%_)
        (let ((_%enc87009%_ 'UTF-8))
          (__bytes->string__% _%bstr87007%_ _%enc87009%_))))
    (define __bytes->string
      (lambda _g91381_
        (let ((_g91380_ (let () (declare (not safe)) (##length _g91381_))))
          (cond ((let () (declare (not safe)) (##fx= _g91380_ 1))
                 (apply __bytes->string__0 _g91381_))
                ((let () (declare (not safe)) (##fx= _g91380_ 2))
                 (apply __bytes->string__% _g91381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g91381_))))))
    (define string->bytes__%
      (lambda (_%str86938%_ _%enc86939%_)
        (if (string? _%str86938%_)
            (let ((_%str86943%_ _%str86938%_))
              (if (symbol? _%enc86939%_)
                  (let ((_%enc86953%_ _%enc86939%_))
                    (__string->bytes__% _%str86943%_ _%enc86953%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc86939%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.25"
               'contract:
               'string?
               'value:
               _%str86938%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str86966%_)
        (let ((_%enc86968%_ 'UTF-8))
          (string->bytes__% _%str86966%_ _%enc86968%_))))
    (define string->bytes
      (lambda _g91383_
        (let ((_g91382_ (let () (declare (not safe)) (##length _g91383_))))
          (cond ((let () (declare (not safe)) (##fx= _g91382_ 1))
                 (apply string->bytes__0 _g91383_))
                ((let () (declare (not safe)) (##fx= _g91382_ 2))
                 (apply string->bytes__% _g91383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g91383_))))))
    (define __string->bytes__%
      (lambda (_%str86906%_ _%enc86907%_)
        (let* ((_%str86910%_ _%str86906%_) (_%enc86918%_ _%enc86907%_))
          (if (eq? _%enc86918%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str86910%_))
              (__substring->bytes__%
               _%str86910%_
               '0
               (let () (declare (not safe)) (##string-length _%str86910%_))
               _%enc86918%_)))))
    (define __string->bytes__0
      (lambda (_%str86930%_)
        (let ((_%enc86932%_ 'UTF-8))
          (__string->bytes__% _%str86930%_ _%enc86932%_))))
    (define __string->bytes
      (lambda _g91385_
        (let ((_g91384_ (let () (declare (not safe)) (##length _g91385_))))
          (cond ((let () (declare (not safe)) (##fx= _g91384_ 1))
                 (apply __string->bytes__0 _g91385_))
                ((let () (declare (not safe)) (##fx= _g91384_ 2))
                 (apply __string->bytes__% _g91385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g91385_))))))
    (define substring->bytes__%
      (lambda (_%str86854%_ _%start86855%_ _%end86856%_ _%enc86857%_)
        (if (string? _%str86854%_)
            (let ((_%str86861%_ _%str86854%_))
              (if (nonnegative-fixnum? _%start86855%_)
                  (let ((_%start86871%_ _%start86855%_))
                    (if (nonnegative-fixnum? _%end86856%_)
                        (let ((_%end86881%_ _%end86856%_))
                          (__substring->bytes__%
                           _%str86861%_
                           _%start86871%_
                           _%end86881%_
                           _%enc86857%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@681.25-681.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end86856%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@680.25-680.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start86855%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@679.25-679.28"
               'contract:
               'string?
               'value:
               _%str86854%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str86894%_ _%start86895%_ _%end86896%_)
        (let ((_%enc86898%_ 'UTF-8))
          (substring->bytes__%
           _%str86894%_
           _%start86895%_
           _%end86896%_
           _%enc86898%_))))
    (define substring->bytes
      (lambda _g91387_
        (let ((_g91386_ (let () (declare (not safe)) (##length _g91387_))))
          (cond ((let () (declare (not safe)) (##fx= _g91386_ 3))
                 (apply substring->bytes__0 _g91387_))
                ((let () (declare (not safe)) (##fx= _g91386_ 4))
                 (apply substring->bytes__% _g91387_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g91387_))))))
    (define __substring->bytes__%
      (lambda (_%str86806%_ _%start86807%_ _%end86808%_ _%enc86809%_)
        (let* ((_%str86812%_ _%str86806%_)
               (_%start86820%_ _%start86807%_)
               (_%end86828%_ _%end86808%_))
          (if (eq? _%enc86809%_ 'UTF-8)
              (string->utf8 _%str86812%_ _%start86820%_ _%end86828%_)
              (let ((_%out86837%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc86809%_ '())))))
                (write-substring
                 _%str86812%_
                 _%start86820%_
                 _%end86828%_
                 _%out86837%_)
                (get-output-u8vector _%out86837%_))))))
    (define __substring->bytes__0
      (lambda (_%str86842%_ _%start86843%_ _%end86844%_)
        (let ((_%enc86846%_ 'UTF-8))
          (__substring->bytes__%
           _%str86842%_
           _%start86843%_
           _%end86844%_
           _%enc86846%_))))
    (define __substring->bytes
      (lambda _g91389_
        (let ((_g91388_ (let () (declare (not safe)) (##length _g91389_))))
          (cond ((let () (declare (not safe)) (##fx= _g91388_ 3))
                 (apply __substring->bytes__0 _g91389_))
                ((let () (declare (not safe)) (##fx= _g91388_ 4))
                 (apply __substring->bytes__% _g91389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g91389_))))))
    (define string-empty?
      (lambda (_%str86791%_)
        (if (string? _%str86791%_)
            (let ((_%str86795%_ _%str86791%_)) (__string-empty? _%str86795%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@690.22-690.25"
               'contract:
               'string?
               'value:
               _%str86791%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str86779%_)
        (let* ((_%str86782%_ _%str86779%_)
               (__tmp91390
                (let () (declare (not safe)) (##string-length _%str86782%_))))
          (declare (not safe))
          (##fxzero? __tmp91390))))
    (define string-index__%
      (lambda (_%str86731%_ _%char86732%_ _%start86733%_)
        (if (string? _%str86731%_)
            (let ((_%str86737%_ _%str86731%_))
              (if (char? _%char86732%_)
                  (let ((_%char86747%_ _%char86732%_))
                    (if (nonnegative-fixnum? _%start86733%_)
                        (let ((_%start86757%_ _%start86733%_))
                          (__string-index__%
                           _%str86737%_
                           _%char86747%_
                           _%start86757%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@696.21-696.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start86733%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.21-695.25"
                     'contract:
                     'char?
                     'value:
                     _%char86732%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.21-694.24"
               'contract:
               'string?
               'value:
               _%str86731%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str86770%_ _%char86771%_)
        (let ((_%start86773%_ '0))
          (string-index__% _%str86770%_ _%char86771%_ _%start86773%_))))
    (define string-index
      (lambda _g91392_
        (let ((_g91391_ (let () (declare (not safe)) (##length _g91392_))))
          (cond ((let () (declare (not safe)) (##fx= _g91391_ 2))
                 (apply string-index__0 _g91392_))
                ((let () (declare (not safe)) (##fx= _g91391_ 3))
                 (apply string-index__% _g91392_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g91392_))))))
    (define __string-index__%
      (lambda (_%str86670%_ _%char86671%_ _%start86672%_)
        (let* ((_%str86675%_ _%str86670%_)
               (_%char86683%_ _%char86671%_)
               (_%start86691%_ _%start86672%_)
               (_%len86700%_
                (let () (declare (not safe)) (##string-length _%str86675%_))))
          (let _%lp86702%_ ((_%k86704%_ _%start86691%_))
            (let ((_%k86706%_ _%k86704%_))
              (if (let () (declare (not safe)) (##fx< _%k86706%_ _%len86700%_))
                  (if (eq? _%char86683%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str86675%_ _%k86706%_)))
                      _%k86706%_
                      (_%lp86702%_
                       (let () (declare (not safe)) (##fx+ _%k86706%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str86721%_ _%char86722%_)
        (let ((_%start86724%_ '0))
          (__string-index__% _%str86721%_ _%char86722%_ _%start86724%_))))
    (define __string-index
      (lambda _g91394_
        (let ((_g91393_ (let () (declare (not safe)) (##length _g91394_))))
          (cond ((let () (declare (not safe)) (##fx= _g91393_ 2))
                 (apply __string-index__0 _g91394_))
                ((let () (declare (not safe)) (##fx= _g91393_ 3))
                 (apply __string-index__% _g91394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g91394_))))))
    (define string-rindex__%
      (lambda (_%str86631%_ _%char86632%_ _%start86633%_)
        (if (string? _%str86631%_)
            (let ((_%str86637%_ _%str86631%_))
              (if (char? _%char86632%_)
                  (let ((_%char86647%_ _%char86632%_))
                    (__string-rindex__%
                     _%str86637%_
                     _%char86647%_
                     _%start86633%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@706.25-706.29"
                     'contract:
                     'char?
                     'value:
                     _%char86632%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@705.22-705.25"
               'contract:
               'string?
               'value:
               _%str86631%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str86660%_ _%char86661%_)
        (let ((_%start86663%_ '#f))
          (string-rindex__% _%str86660%_ _%char86661%_ _%start86663%_))))
    (define string-rindex
      (lambda _g91396_
        (let ((_g91395_ (let () (declare (not safe)) (##length _g91396_))))
          (cond ((let () (declare (not safe)) (##fx= _g91395_ 2))
                 (apply string-rindex__0 _g91396_))
                ((let () (declare (not safe)) (##fx= _g91395_ 3))
                 (apply string-rindex__% _g91396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g91396_))))))
    (define __string-rindex__%
      (lambda (_%str86573%_ _%char86574%_ _%start86575%_)
        (let* ((_%str86578%_ _%str86573%_)
               (_%char86586%_ _%char86574%_)
               (_%len86595%_
                (let () (declare (not safe)) (##string-length _%str86578%_)))
               (_%start86597%_
                (if (fixnum? _%start86575%_)
                    _%start86575%_
                    (let () (declare (not safe)) (##fx- _%len86595%_ '1)))))
          (let _%lp86600%_ ((_%k86602%_ _%start86597%_))
            (let ((_%k86604%_ _%k86602%_))
              (if (let () (declare (not safe)) (##fx>= _%k86604%_ '0))
                  (if (eq? _%char86586%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str86578%_ _%k86604%_)))
                      _%k86604%_
                      (_%lp86600%_
                       (let () (declare (not safe)) (##fx- _%k86604%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str86621%_ _%char86622%_)
        (let ((_%start86624%_ '#f))
          (__string-rindex__% _%str86621%_ _%char86622%_ _%start86624%_))))
    (define __string-rindex
      (lambda _g91398_
        (let ((_g91397_ (let () (declare (not safe)) (##length _g91398_))))
          (cond ((let () (declare (not safe)) (##fx= _g91397_ 2))
                 (apply __string-rindex__0 _g91398_))
                ((let () (declare (not safe)) (##fx= _g91397_ 3))
                 (apply __string-rindex__% _g91398_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g91398_))))))
    (define string-split
      (lambda (_%str86547%_ _%char86548%_)
        (if (string? _%str86547%_)
            (let ((_%str86552%_ _%str86547%_))
              (if (char? _%char86548%_)
                  (let ((_%char86562%_ _%char86548%_))
                    (__string-split _%str86552%_ _%char86562%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@717.37-717.41"
                     'contract:
                     'char?
                     'value:
                     _%char86548%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.21-717.24"
               'contract:
               'string?
               'value:
               _%str86547%_)
              '#!void))))
    (define __string-split
      (lambda (_%str86488%_ _%char86489%_)
        (let* ((_%str86492%_ _%str86488%_)
               (_%char86500%_ _%char86489%_)
               (_%len86509%_
                (let () (declare (not safe)) (##string-length _%str86492%_))))
          (let _%lp86511%_ ((_%start86513%_ '0) (_%r86514%_ '()))
            (let* ((_%start86517%_ _%start86513%_)
                   (_%$e86530%_
                    (__string-index__%
                     _%str86492%_
                     _%char86500%_
                     _%start86517%_)))
              (if _%$e86530%_
                  ((lambda (_%end86533%_)
                     (let ((_%end86535%_ _%end86533%_))
                       (_%lp86511%_
                        (let () (declare (not safe)) (##fx+ _%end86535%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str86492%_
                                 _%start86517%_
                                 _%end86535%_))
                              _%r86514%_))))
                   _%$e86530%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start86517%_ _%len86509%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str86492%_
                                _%start86517%_
                                _%len86509%_)))
                       _%r86514%_)
                      (reverse! _%r86514%_))))))))
    (define string-join
      (lambda (_%strs86338%_ _%join86339%_)
        (letrec ((_%join-length86342%_
                  (lambda (_%strs86426%_ _%jlen86427%_)
                    (let _%lp86429%_ ((_%rest86431%_ _%strs86426%_)
                                      (_%len86432%_ '0))
                      (let* ((_%len86434%_ _%len86432%_)
                             (_%rest8644286450%_ _%rest86431%_)
                             (_%else8644486458%_ (lambda () '0))
                             (_%K8644686476%_
                              (lambda (_%rest86461%_ _%hd86462%_)
                                (if (string? _%hd86462%_)
                                    (let ((_%hd86464%_ _%hd86462%_))
                                      (if (pair? _%rest86461%_)
                                          (_%lp86429%_
                                           _%rest86461%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd86464%_))
                                                _%jlen86427%_
                                                _%len86434%_))
                                          (let ((__tmp91399
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd86464%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp91399 _%len86434%_))))
                                    (error '"expected string" _%hd86462%_)))))
                        (if (pair? _%rest8644286450%_)
                            (let ((_%hd8644786479%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8644286450%_)))
                                  (_%tl8644886481%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8644286450%_))))
                              (let* ((_%hd86484%_ _%hd8644786479%_)
                                     (_%rest86486%_ _%tl8644886481%_))
                                (_%K8644686476%_ _%rest86486%_ _%hd86484%_)))
                            (_%else8644486458%_)))))))
          (let* ((_%join86347%_
                  (if (char? _%join86339%_)
                      (let () (declare (not safe)) (##string _%join86339%_))
                      (if (string? _%join86339%_)
                          _%join86339%_
                          (error '"expected string or char" _%join86339%_))))
                 (_%jlen86349%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join86347%_)))
                 (_%olen86351%_
                  (_%join-length86342%_ _%strs86338%_ _%jlen86349%_))
                 (_%ostr86353%_
                  (let () (declare (not safe)) (##make-string _%olen86351%_))))
            (let _%lp86356%_ ((_%rest86358%_ _%strs86338%_) (_%k86359%_ '0))
              (let* ((_%k86362%_ _%k86359%_)
                     (_%rest8637886386%_ _%rest86358%_)
                     (_%else8638086394%_ (lambda () '""))
                     (_%K8638286414%_
                      (lambda (_%rest86397%_ _%hd86398%_)
                        (let* ((_%hd86400%_ _%hd86398%_)
                               (_%hdlen86412%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd86400%_))))
                          (if (pair? _%rest86397%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd86400%_
                                   '0
                                   _%hdlen86412%_
                                   _%ostr86353%_
                                   _%k86362%_))
                                (let ((__tmp91400
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k86362%_ _%hdlen86412%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join86347%_
                                   '0
                                   _%jlen86349%_
                                   _%ostr86353%_
                                   __tmp91400))
                                (_%lp86356%_
                                 _%rest86397%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k86362%_
                                          _%hdlen86412%_
                                          _%jlen86349%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd86400%_
                                   '0
                                   _%hdlen86412%_
                                   _%ostr86353%_
                                   _%k86362%_))
                                _%ostr86353%_))))))
                (if (pair? _%rest8637886386%_)
                    (let ((_%hd8638386417%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8637886386%_)))
                          (_%tl8638486419%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8637886386%_))))
                      (let* ((_%hd86422%_ _%hd8638386417%_)
                             (_%rest86424%_ _%tl8638486419%_))
                        (_%K8638286414%_ _%rest86424%_ _%hd86422%_)))
                    (_%else8638086394%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes86264%_ _%port86265%_ _%start86266%_ _%end86267%_)
        (if (u8vector? _%bytes86264%_)
            (let ((_%bytes86271%_ _%bytes86264%_))
              (if (input-port? _%port86265%_)
                  (let ((_%port86281%_ _%port86265%_))
                    (if ((lambda (_%o86290%_)
                           (and (fixnum? _%o86290%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o86290%_ '0))
                                (let ((__tmp91401
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes86271%_))))
                                  (declare (not safe))
                                  (##fx< _%o86290%_ __tmp91401))))
                         _%start86266%_)
                        (let ((_%start86294%_ _%start86266%_))
                          (if ((lambda (_%o86303%_)
                                 (and (fixnum? _%o86303%_)
                                      (let ((__tmp91402
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes86271%_))))
                                        (declare (not safe))
                                        (##fx<= _%start86294%_
                                                _%o86303%_
                                                __tmp91402))))
                               _%end86267%_)
                              (let ((_%end86307%_ _%end86267%_))
                                (__read-u8vector__%
                                 _%bytes86271%_
                                 _%port86281%_
                                 _%start86294%_
                                 _%end86307%_))
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
                                 _%end86267%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@782.22-782.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start86266%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@781.22-781.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port86265%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@780.22-780.27"
               'contract:
               'u8vector?
               'value:
               _%bytes86264%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes86320%_ _%port86321%_)
        (let* ((_%start86323%_ '0)
               (_%end86325%_ (u8vector-length _%bytes86320%_)))
          (read-u8vector__%
           _%bytes86320%_
           _%port86321%_
           _%start86323%_
           _%end86325%_))))
    (define read-u8vector__1
      (lambda (_%bytes86327%_ _%port86328%_ _%start86329%_)
        (let ((_%end86331%_ (u8vector-length _%bytes86327%_)))
          (read-u8vector__%
           _%bytes86327%_
           _%port86328%_
           _%start86329%_
           _%end86331%_))))
    (define read-u8vector
      (lambda _g91404_
        (let ((_g91403_ (let () (declare (not safe)) (##length _g91404_))))
          (cond ((let () (declare (not safe)) (##fx= _g91403_ 2))
                 (apply read-u8vector__0 _g91404_))
                ((let () (declare (not safe)) (##fx= _g91403_ 3))
                 (apply read-u8vector__1 _g91404_))
                ((let () (declare (not safe)) (##fx= _g91403_ 4))
                 (apply read-u8vector__% _g91404_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g91404_))))))
    (define __read-u8vector__%
      (lambda (_%bytes86203%_ _%port86204%_ _%start86205%_ _%end86206%_)
        (let* ((_%bytes86209%_ _%bytes86203%_)
               (_%port86217%_ _%port86204%_)
               (_%start86225%_ _%start86205%_)
               (_%end86233%_ _%end86206%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes86209%_
           _%start86225%_
           _%end86233%_
           _%port86217%_))))
    (define __read-u8vector__0
      (lambda (_%bytes86245%_ _%port86246%_)
        (let* ((_%start86248%_ '0)
               (_%end86250%_ (u8vector-length _%bytes86245%_)))
          (__read-u8vector__%
           _%bytes86245%_
           _%port86246%_
           _%start86248%_
           _%end86250%_))))
    (define __read-u8vector__1
      (lambda (_%bytes86252%_ _%port86253%_ _%start86254%_)
        (let ((_%end86256%_ (u8vector-length _%bytes86252%_)))
          (__read-u8vector__%
           _%bytes86252%_
           _%port86253%_
           _%start86254%_
           _%end86256%_))))
    (define __read-u8vector
      (lambda _g91406_
        (let ((_g91405_ (let () (declare (not safe)) (##length _g91406_))))
          (cond ((let () (declare (not safe)) (##fx= _g91405_ 2))
                 (apply __read-u8vector__0 _g91406_))
                ((let () (declare (not safe)) (##fx= _g91405_ 3))
                 (apply __read-u8vector__1 _g91406_))
                ((let () (declare (not safe)) (##fx= _g91405_ 4))
                 (apply __read-u8vector__% _g91406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g91406_))))))
    (define write-u8vector__%
      (lambda (_%bytes86133%_ _%port86134%_ _%start86135%_ _%end86136%_)
        (if (u8vector? _%bytes86133%_)
            (let ((_%bytes86140%_ _%bytes86133%_))
              (if (output-port? _%port86134%_)
                  (let* ((_%port86150%_ _%port86134%_)
                         (_%start86159%_ _%start86135%_))
                    (if ((lambda (_%o86167%_)
                           (and (fixnum? _%o86167%_)
                                (let ((__tmp91407
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes86140%_))))
                                  (declare (not safe))
                                  (##fx<= _%start86159%_
                                          _%o86167%_
                                          __tmp91407))))
                         _%end86136%_)
                        (let ((_%end86171%_ _%end86136%_))
                          (__write-u8vector__%
                           _%bytes86140%_
                           _%port86150%_
                           _%start86159%_
                           _%end86171%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@793.23-793.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end86136%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@791.23-791.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port86134%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@790.23-790.28"
               'contract:
               'u8vector?
               'value:
               _%bytes86133%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes86184%_ _%port86185%_)
        (let* ((_%start86187%_ '0)
               (_%end86189%_ (u8vector-length _%bytes86184%_)))
          (write-u8vector__%
           _%bytes86184%_
           _%port86185%_
           _%start86187%_
           _%end86189%_))))
    (define write-u8vector__1
      (lambda (_%bytes86191%_ _%port86192%_ _%start86193%_)
        (let ((_%end86195%_ (u8vector-length _%bytes86191%_)))
          (write-u8vector__%
           _%bytes86191%_
           _%port86192%_
           _%start86193%_
           _%end86195%_))))
    (define write-u8vector
      (lambda _g91409_
        (let ((_g91408_ (let () (declare (not safe)) (##length _g91409_))))
          (cond ((let () (declare (not safe)) (##fx= _g91408_ 2))
                 (apply write-u8vector__0 _g91409_))
                ((let () (declare (not safe)) (##fx= _g91408_ 3))
                 (apply write-u8vector__1 _g91409_))
                ((let () (declare (not safe)) (##fx= _g91408_ 4))
                 (apply write-u8vector__% _g91409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g91409_))))))
    (define __write-u8vector__%
      (lambda (_%bytes86072%_ _%port86073%_ _%start86074%_ _%end86075%_)
        (let* ((_%bytes86078%_ _%bytes86072%_)
               (_%port86086%_ _%port86073%_)
               (_%start86094%_ _%start86074%_)
               (_%end86102%_ _%end86075%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes86078%_
           _%start86094%_
           _%end86102%_
           _%port86086%_))))
    (define __write-u8vector__0
      (lambda (_%bytes86114%_ _%port86115%_)
        (let* ((_%start86117%_ '0)
               (_%end86119%_ (u8vector-length _%bytes86114%_)))
          (__write-u8vector__%
           _%bytes86114%_
           _%port86115%_
           _%start86117%_
           _%end86119%_))))
    (define __write-u8vector__1
      (lambda (_%bytes86121%_ _%port86122%_ _%start86123%_)
        (let ((_%end86125%_ (u8vector-length _%bytes86121%_)))
          (__write-u8vector__%
           _%bytes86121%_
           _%port86122%_
           _%start86123%_
           _%end86125%_))))
    (define __write-u8vector
      (lambda _g91411_
        (let ((_g91410_ (let () (declare (not safe)) (##length _g91411_))))
          (cond ((let () (declare (not safe)) (##fx= _g91410_ 2))
                 (apply __write-u8vector__0 _g91411_))
                ((let () (declare (not safe)) (##fx= _g91410_ 3))
                 (apply __write-u8vector__1 _g91411_))
                ((let () (declare (not safe)) (##fx= _g91410_ 4))
                 (apply __write-u8vector__% _g91411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g91411_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag86040%_
               _%dbg-exprs86041%_
               _%dbg-thunks86042%_
               _%expr86043%_
               _%thunk86044%_)
        (letrec ((_%o86046%_ (current-output-port))
                 (_%e86047%_ (current-error-port))
                 (_%p86048%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f86049%_
                  (lambda ()
                    (force-output _%o86046%_)
                    (force-output _%e86047%_)))
                 (_%d86050%_
                  (lambda (_%x86057%_) (display _%x86057%_ _%e86047%_)))
                 (_%w86051%_
                  (lambda (_%x86059%_) (_%p86048%_ _%x86059%_ _%e86047%_)))
                 (_%n86052%_ (lambda () (newline _%e86047%_)))
                 (_%v86053%_
                  (lambda (_%l86062%_)
                    (for-each
                     (lambda (_%x86064%_)
                       (_%d86050%_ '" ")
                       (_%w86051%_ _%x86064%_))
                     _%l86062%_)
                    (_%n86052%_)))
                 (_%x86054%_
                  (lambda (_%expr86066%_ _%thunk86067%_)
                    (_%f86049%_)
                    (_%d86050%_ '"  ")
                    (_%w86051%_ _%expr86066%_)
                    (_%d86050%_ '" =>")
                    (call-with-values
                     _%thunk86067%_
                     (lambda _%x86069%_
                       (_%v86053%_ _%x86069%_)
                       (_%f86049%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x86069%_)))))))
          (if _%tag86040%_
              (begin
                (if (eq? _%tag86040%_ '#!void)
                    '#!void
                    (begin
                      (_%f86049%_)
                      (_%d86050%_ _%tag86040%_)
                      (_%n86052%_)))
                (for-each _%x86054%_ _%dbg-exprs86041%_ _%dbg-thunks86042%_)
                (if _%thunk86044%_
                    (_%x86054%_ _%expr86043%_ _%thunk86044%_)
                    '#!void))
              (if _%thunk86044%_ (_%thunk86044%_) '#!void)))))))
