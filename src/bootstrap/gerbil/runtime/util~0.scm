(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1734278442)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args90377%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args90377%_))
          (newline))))
    (define display*
      (lambda _%args90374%_
        (let () (declare (not safe)) (##for-each display _%args90374%_))))
    (define file-newer?
      (lambda (_%file190349%_ _%file290350%_)
        (if (string? _%file190349%_)
            (let ((_%file190354%_ _%file190349%_))
              (if (string? _%file290350%_)
                  (let ((_%file290364%_ _%file290350%_))
                    (__file-newer? _%file190354%_ _%file290364%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@64.20-64.25"
                     'contract:
                     'string?
                     'value:
                     _%file290350%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@63.20-63.25"
               'contract:
               'string?
               'value:
               _%file190349%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file190297%_ _%file290298%_)
        (let* ((_%file190301%_ _%file190297%_) (_%file290309%_ _%file290298%_))
          (letrec ((_%modification-time90318%_
                    (lambda (_%file90337%_)
                      (let ((_%file90340%_ _%file90337%_))
                        (_%__modification-time90319%_ _%file90340%_))))
                   (_%__modification-time90319%_
                    (lambda (_%file90321%_)
                      (let* ((_%file90324%_ _%file90321%_)
                             (__tmp92107
                              (let ((__tmp92108
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file90324%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp92108))))
                        (declare (not safe))
                        (##time->seconds __tmp92107)))))
            (let ((__tmp92110 (_%__modification-time90319%_ _%file190301%_))
                  (__tmp92109 (_%__modification-time90319%_ _%file290309%_)))
              (declare (not safe))
              (##fl> __tmp92110 __tmp92109))))))
    (define create-directory*__%
      (lambda (_%dir90262%_ _%perms90263%_)
        (if (string? _%dir90262%_)
            (let ((_%dir90267%_ _%dir90262%_))
              (if (fixnum? _%perms90263%_)
                  (let ((_%perms90277%_ _%perms90263%_))
                    (__create-directory*__% _%dir90267%_ _%perms90277%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.26-75.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms90263%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.26-74.29"
               'contract:
               'string?
               'value:
               _%dir90262%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir90290%_)
        (let ((_%perms90292%_ '493))
          (create-directory*__% _%dir90290%_ _%perms90292%_))))
    (define create-directory*
      (lambda _g92112_
        (let ((_g92111_ (let () (declare (not safe)) (##length _g92112_))))
          (cond ((let () (declare (not safe)) (##fx= _g92111_ 1))
                 (apply create-directory*__0 _g92112_))
                ((let () (declare (not safe)) (##fx= _g92111_ 2))
                 (apply create-directory*__% _g92112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g92112_))))))
    (define __create-directory*__%
      (lambda (_%dir90186%_ _%perms90187%_)
        (let* ((_%dir90190%_ _%dir90186%_) (_%perms90198%_ _%perms90187%_))
          (letrec ((_%create190207%_
                    (lambda (_%path90239%_)
                      (let ((_%path90242%_ _%path90239%_))
                        (_%__create190208%_ _%path90242%_))))
                   (_%__create190208%_
                    (lambda (_%path90220%_)
                      (let ((_%path90223%_ _%path90220%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path90223%_))
                            (if (eq? (file-type _%path90223%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path90223%_))
                            (if _%perms90198%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path90223%_
                                             (cons 'permissions:
                                                   (cons _%perms90198%_
                                                         '())))))
                                (create-directory _%path90223%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir90190%_))
                '#!void
                (let _%lp90210%_ ((_%start90212%_ '0))
                  (let ((_%$e90214%_
                         (__string-index__% _%dir90190%_ '#\/ _%start90212%_)))
                    (if _%$e90214%_
                        ((lambda (_%x90217%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x90217%_ '0))
                               (_%__create190208%_
                                (substring _%dir90190%_ '0 _%x90217%_))
                               '#!void)
                           (_%lp90210%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x90217%_ '1))))
                         _%$e90214%_)
                        (_%__create190208%_ _%dir90190%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir90254%_)
        (let ((_%perms90256%_ '493))
          (__create-directory*__% _%dir90254%_ _%perms90256%_))))
    (define __create-directory*
      (lambda _g92114_
        (let ((_g92113_ (let () (declare (not safe)) (##length _g92114_))))
          (cond ((let () (declare (not safe)) (##fx= _g92113_ 1))
                 (apply __create-directory*__0 _g92114_))
                ((let () (declare (not safe)) (##fx= _g92113_ 2))
                 (apply __create-directory*__% _g92114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g92114_))))))
    (define move-file__%
      (lambda (_%src90137%_ _%dest90138%_ _%replace?90139%_)
        (if (string? _%src90137%_)
            (let ((_%src90143%_ _%src90137%_))
              (if (string? _%dest90138%_)
                  (let ((_%dest90153%_ _%dest90138%_))
                    (if (boolean? _%replace?90139%_)
                        (let ((_%replace?90163%_ _%replace?90139%_))
                          (__move-file__%
                           _%src90143%_
                           _%dest90153%_
                           _%replace?90163%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@99.51-99.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?90139%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@99.34-99.38"
                     'contract:
                     'string?
                     'value:
                     _%dest90138%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@99.18-99.21"
               'contract:
               'string?
               'value:
               _%src90137%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src90176%_ _%dest90177%_)
        (let ((_%replace?90179%_ '#t))
          (move-file__% _%src90176%_ _%dest90177%_ _%replace?90179%_))))
    (define move-file
      (lambda _g92116_
        (let ((_g92115_ (let () (declare (not safe)) (##length _g92116_))))
          (cond ((let () (declare (not safe)) (##fx= _g92115_ 2))
                 (apply move-file__0 _g92116_))
                ((let () (declare (not safe)) (##fx= _g92115_ 3))
                 (apply move-file__% _g92116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g92116_))))))
    (define __move-file__%
      (lambda (_%src90080%_ _%dest90081%_ _%replace?90082%_)
        (let* ((_%src90085%_ _%src90080%_)
               (_%dest90093%_ _%dest90081%_)
               (_%replace?90101%_ _%replace?90082%_))
          (letrec ((_%force-move-it90110%_
                    (lambda ()
                      (let ((_%tmp90116%_
                             (if _%replace?90101%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest90093%_))
                                     (let ((__tmp92117
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest90093%_
                                        '"."
                                        __tmp92117))
                                     '#f)
                                 '#f)))
                        (if _%tmp90116%_
                            (rename-file _%dest90093%_ _%tmp90116%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e90118%_)
                           (if _%tmp90116%_
                               (rename-file _%tmp90116%_ _%dest90093%_ '#t)
                               '#!void)
                           (raise _%e90118%_))
                         (lambda ()
                           (let ((_%fi90121%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src90085%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi90121%_))
                                      'symbolic-link)
                                 (let ((__tmp92118
                                        (path-normalize _%src90085%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp92118
                                    _%dest90093%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file _%src90085%_ _%dest90093%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src90085%_))
                           (if _%tmp90116%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp90116%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e90112%_)
               (if (let () (declare (not safe)) (##file-exists? _%src90085%_))
                   (_%force-move-it90110%_)
                   (raise _%e90112%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src90085%_
                  _%dest90093%_
                  _%replace?90101%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src90127%_ _%dest90128%_)
        (let ((_%replace?90130%_ '#t))
          (__move-file__% _%src90127%_ _%dest90128%_ _%replace?90130%_))))
    (define __move-file
      (lambda _g92120_
        (let ((_g92119_ (let () (declare (not safe)) (##length _g92120_))))
          (cond ((let () (declare (not safe)) (##fx= _g92119_ 2))
                 (apply __move-file__0 _g92120_))
                ((let () (declare (not safe)) (##fx= _g92119_ 3))
                 (apply __move-file__% _g92120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g92120_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore90076%_ '#t))
    (define true? (lambda (_%obj90073%_) (eq? _%obj90073%_ '#t)))
    (define false (lambda _%ignore90070%_ '#f))
    (define void (lambda _%ignore90067%_ '#!void))
    (define void? (lambda (_%obj90064%_) (eq? _%obj90064%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj90061%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj90061%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj90058%_) (eq? _%obj90058%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj90055%_) (eq? _%obj90055%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj90052%_) (eq? _%obj90052%_ '#!optional)))
    (define immediate?
      (lambda (_%obj90047%_)
        (let* ((_%t90050%_ (let () (declare (not safe)) (##type _%obj90047%_)))
               (__tmp92121
                (let () (declare (not safe)) (##fxand _%t90050%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp92121))))
    (define nonnegative-fixnum?
      (lambda (_%obj90044%_)
        (if (fixnum? _%obj90044%_)
            (let () (declare (not safe)) (##fx>= _%obj90044%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj90038%_)
        (let ((_%$e90041%_ (pair? _%obj90038%_)))
          (if _%$e90041%_ _%$e90041%_ (null? _%obj90038%_)))))
    (define values-count
      (lambda (_%obj90035%_)
        (if (let () (declare (not safe)) (##values? _%obj90035%_))
            (let () (declare (not safe)) (##vector-length _%obj90035%_))
            '1)))
    (define values-ref
      (lambda (_%obj90020%_ _%k90021%_)
        (if (fixnum? _%k90021%_)
            (let ((_%k90025%_ _%k90021%_))
              (__values-ref _%obj90020%_ _%k90025%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@234.23-234.24"
               'contract:
               'fixnum?
               'value:
               _%k90021%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj90007%_ _%k90008%_)
        (let ((_%k90011%_ _%k90008%_))
          (if (let () (declare (not safe)) (##values? _%obj90007%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj90007%_ _%k90011%_))
              _%obj90007%_))))
    (define values->list
      (lambda (_%obj90004%_)
        (if (let () (declare (not safe)) (##values? _%obj90004%_))
            (let () (declare (not safe)) (##vector->list _%obj90004%_))
            (list _%obj90004%_))))
    (define foldl1
      (lambda (_%f89988%_ _%iv89989%_ _%lst89990%_)
        (if (procedure? _%f89988%_)
            (let ((_%f89994%_ _%f89988%_))
              (__foldl1 _%f89994%_ _%iv89989%_ _%lst89990%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@257.15-257.16"
               'contract:
               'procedure?
               'value:
               _%f89988%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f89936%_ _%iv89937%_ _%lst89938%_)
        (let ((_%f89941%_ _%f89936%_))
          (let _%lp89950%_ ((_%rest89952%_ _%lst89938%_)
                            (_%r89953%_ _%iv89937%_))
            (let* ((_%rest8995489962%_ _%rest89952%_)
                   (_%else8995689970%_ (lambda () _%r89953%_))
                   (_%K8995889976%_
                    (lambda (_%rest89973%_ _%x89974%_)
                      (_%lp89950%_
                       _%rest89973%_
                       (let ()
                         (declare (not safe))
                         (_%f89941%_ _%x89974%_ _%r89953%_))))))
              (if (pair? _%rest8995489962%_)
                  (let ((_%hd8995989979%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8995489962%_)))
                        (_%tl8996089981%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8995489962%_))))
                    (let* ((_%x89984%_ _%hd8995989979%_)
                           (_%rest89986%_ _%tl8996089981%_))
                      (_%K8995889976%_ _%rest89986%_ _%x89984%_)))
                  (_%else8995689970%_)))))))
    (define foldl2
      (lambda (_%f89919%_ _%iv89920%_ _%lst189921%_ _%lst289922%_)
        (if (procedure? _%f89919%_)
            (let ((_%f89926%_ _%f89919%_))
              (__foldl2 _%f89926%_ _%iv89920%_ _%lst189921%_ _%lst289922%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@264.15-264.16"
               'contract:
               'procedure?
               'value:
               _%f89919%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f89832%_ _%iv89833%_ _%lst189834%_ _%lst289835%_)
        (let ((_%f89838%_ _%f89832%_))
          (let _%lp89847%_ ((_%rest189849%_ _%lst189834%_)
                            (_%rest289850%_ _%lst289835%_)
                            (_%r89851%_ _%iv89833%_))
            (let* ((_%rest18985289860%_ _%rest189849%_)
                   (_%else8985489868%_ (lambda () _%r89851%_))
                   (_%K8985689907%_
                    (lambda (_%rest189871%_ _%x189872%_)
                      (let* ((_%rest28987389881%_ _%rest289850%_)
                             (_%else8987589889%_ (lambda () _%r89851%_))
                             (_%K8987789895%_
                              (lambda (_%rest289892%_ _%x289893%_)
                                (_%lp89847%_
                                 _%rest189871%_
                                 _%rest289892%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f89838%_
                                    _%x189872%_
                                    _%x289893%_
                                    _%r89851%_))))))
                        (if (pair? _%rest28987389881%_)
                            (let ((_%hd8987889898%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28987389881%_)))
                                  (_%tl8987989900%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28987389881%_))))
                              (let* ((_%x289903%_ _%hd8987889898%_)
                                     (_%rest289905%_ _%tl8987989900%_))
                                (_%K8987789895%_ _%rest289905%_ _%x289903%_)))
                            (_%else8987589889%_))))))
              (if (pair? _%rest18985289860%_)
                  (let ((_%hd8985789910%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18985289860%_)))
                        (_%tl8985889912%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18985289860%_))))
                    (let* ((_%x189915%_ _%hd8985789910%_)
                           (_%rest189917%_ _%tl8985889912%_))
                      (_%K8985689907%_ _%rest189917%_ _%x189915%_)))
                  (_%else8985489868%_)))))))
    (define foldl
      (lambda _g92123_
        (let ((_g92122_ (let () (declare (not safe)) (##length _g92123_))))
          (cond ((let () (declare (not safe)) (##fx= _g92122_ 3))
                 (apply foldl1 _g92123_))
                ((let () (declare (not safe)) (##fx= _g92122_ 4))
                 (apply foldl2 _g92123_))
                ((let () (declare (not safe)) (##fx>= _g92122_ 4))
                 (apply foldl* _g92123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g92123_))))))
    (define foldl*
      (lambda (_%f89801%_ _%iv89802%_ . _%rest89803%_)
        (if (procedure? _%f89801%_)
            (let ((_%f89807%_ _%f89801%_))
              (declare (not safe))
              (##apply __foldl* _%f89807%_ _%iv89802%_ _%rest89803%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@282.15-282.16"
               'contract:
               'procedure?
               'value:
               _%f89801%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f89779%_ _%iv89780%_ . _%rest89781%_)
        (let ((_%f89784%_ _%f89779%_))
          (let _%recur89793%_ ((_%iv89795%_ _%iv89780%_)
                               (_%rest89796%_ _%rest89781%_))
            (if (__andmap1 pair? _%rest89796%_)
                (_%recur89793%_
                 (let ((__tmp92124
                        (__foldr1
                         (lambda (_%xs89798%_ _%r89799%_)
                           (cons (car _%xs89798%_) _%r89799%_))
                         (list _%iv89795%_)
                         _%rest89796%_)))
                   (declare (not safe))
                   (##apply _%f89784%_ __tmp92124))
                 (map cdr _%rest89796%_))
                _%iv89795%_)))))
    (define foldr1
      (lambda (_%f89763%_ _%iv89764%_ _%lst89765%_)
        (if (procedure? _%f89763%_)
            (let ((_%f89769%_ _%f89763%_))
              (__foldr1 _%f89769%_ _%iv89764%_ _%lst89765%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f89763%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f89712%_ _%iv89713%_ _%lst89714%_)
        (let ((_%f89717%_ _%f89712%_))
          (let _%recur89726%_ ((_%rest89728%_ _%lst89714%_))
            (let* ((_%rest8972989737%_ _%rest89728%_)
                   (_%else8973189745%_ (lambda () _%iv89713%_))
                   (_%K8973389751%_
                    (lambda (_%rest89748%_ _%x89749%_)
                      (let ((__tmp92125 (_%recur89726%_ _%rest89748%_)))
                        (declare (not safe))
                        (_%f89717%_ _%x89749%_ __tmp92125)))))
              (if (pair? _%rest8972989737%_)
                  (let ((_%hd8973489754%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8972989737%_)))
                        (_%tl8973589756%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8972989737%_))))
                    (let* ((_%x89759%_ _%hd8973489754%_)
                           (_%rest89761%_ _%tl8973589756%_))
                      (_%K8973389751%_ _%rest89761%_ _%x89759%_)))
                  (_%else8973189745%_)))))))
    (define foldr2
      (lambda (_%f89695%_ _%iv89696%_ _%lst189697%_ _%lst289698%_)
        (if (procedure? _%f89695%_)
            (let ((_%f89702%_ _%f89695%_))
              (__foldr2 _%f89702%_ _%iv89696%_ _%lst189697%_ _%lst289698%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@299.15-299.16"
               'contract:
               'procedure?
               'value:
               _%f89695%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f89609%_ _%iv89610%_ _%lst189611%_ _%lst289612%_)
        (let ((_%f89615%_ _%f89609%_))
          (let _%recur89624%_ ((_%rest189626%_ _%lst189611%_)
                               (_%rest289627%_ _%lst289612%_))
            (let* ((_%rest18962889636%_ _%rest189626%_)
                   (_%else8963089644%_ (lambda () _%iv89610%_))
                   (_%K8963289683%_
                    (lambda (_%rest189647%_ _%x189648%_)
                      (let* ((_%rest28964989657%_ _%rest289627%_)
                             (_%else8965189665%_ (lambda () _%iv89610%_))
                             (_%K8965389671%_
                              (lambda (_%rest289668%_ _%x289669%_)
                                (let ((__tmp92126
                                       (_%recur89624%_
                                        _%rest189647%_
                                        _%rest289668%_)))
                                  (declare (not safe))
                                  (_%f89615%_
                                   _%x189648%_
                                   _%x289669%_
                                   __tmp92126)))))
                        (if (pair? _%rest28964989657%_)
                            (let ((_%hd8965489674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28964989657%_)))
                                  (_%tl8965589676%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28964989657%_))))
                              (let* ((_%x289679%_ _%hd8965489674%_)
                                     (_%rest289681%_ _%tl8965589676%_))
                                (_%K8965389671%_ _%rest289681%_ _%x289679%_)))
                            (_%else8965189665%_))))))
              (if (pair? _%rest18962889636%_)
                  (let ((_%hd8963389686%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18962889636%_)))
                        (_%tl8963489688%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18962889636%_))))
                    (let* ((_%x189691%_ _%hd8963389686%_)
                           (_%rest189693%_ _%tl8963489688%_))
                      (_%K8963289683%_ _%rest189693%_ _%x189691%_)))
                  (_%else8963089644%_)))))))
    (define foldr
      (lambda _g92128_
        (let ((_g92127_ (let () (declare (not safe)) (##length _g92128_))))
          (cond ((let () (declare (not safe)) (##fx= _g92127_ 3))
                 (apply foldr1 _g92128_))
                ((let () (declare (not safe)) (##fx= _g92127_ 4))
                 (apply foldr2 _g92128_))
                ((let () (declare (not safe)) (##fx>= _g92127_ 4))
                 (apply foldr* _g92128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g92128_))))))
    (define foldr*
      (lambda (_%f89578%_ _%iv89579%_ . _%rest89580%_)
        (if (procedure? _%f89578%_)
            (let ((_%f89584%_ _%f89578%_))
              (declare (not safe))
              (##apply __foldr* _%f89584%_ _%iv89579%_ _%rest89580%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@317.15-317.16"
               'contract:
               'procedure?
               'value:
               _%f89578%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f89557%_ _%iv89558%_ . _%rest89559%_)
        (let ((_%f89562%_ _%f89557%_))
          (let _%recur89571%_ ((_%rest89573%_ _%rest89559%_))
            (if (__andmap1 pair? _%rest89573%_)
                (let ((__tmp92129
                       (__foldr1
                        (lambda (_%xs89575%_ _%r89576%_)
                          (cons (car _%xs89575%_) _%r89576%_))
                        (list (_%recur89571%_ (map cdr _%rest89573%_)))
                        _%rest89573%_)))
                  (declare (not safe))
                  (##apply _%f89562%_ __tmp92129))
                _%iv89558%_)))))
    (define remove-nulls!
      (lambda (_%l89444%_)
        (let* ((_%l8944589458%_ _%l89444%_)
               (_%E8944989462%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8944589458%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8945489547%_
                 (lambda (_%r89545%_) (remove-nulls! _%r89545%_)))
                (_%K8945189534%_
                 (lambda (_%r89474%_)
                   (let _%loop89476%_ ((_%l89478%_ _%l89444%_)
                                       (_%r89479%_ _%r89474%_))
                     (let* ((_%r8948089493%_ _%r89479%_)
                            (_%E8948489497%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8948089493%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8948989524%_
                              (lambda (_%rr89522%_)
                                (let ((__tmp92131 _%l89478%_)
                                      (__tmp92130 (remove-nulls! _%rr89522%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp92131 __tmp92130))))
                             (_%K8948689511%_
                              (lambda (_%rr89509%_)
                                (_%loop89476%_ _%r89479%_ _%rr89509%_)))
                             (_%K8948589502%_ (lambda () '#!void)))
                         (if (pair? _%r8948089493%_)
                             (let ((_%tl8949189529%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8948089493%_)))
                                   (_%hd8949089527%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8948089493%_))))
                               (if (null? _%hd8949089527%_)
                                   (let ((_%rr89532%_ _%tl8949189529%_))
                                     (_%K8948989524%_ _%rr89532%_))
                                   (let ((_%rr89517%_ _%tl8949189529%_))
                                     (_%K8948689511%_ _%rr89517%_))))
                             '#!void))))
                   _%l89444%_))
                (_%K8945089467%_ (lambda () _%l89444%_)))
            (if (pair? _%l8944589458%_)
                (let ((_%tl8945689552%_
                       (let () (declare (not safe)) (##cdr _%l8944589458%_)))
                      (_%hd8945589550%_
                       (let () (declare (not safe)) (##car _%l8944589458%_))))
                  (if (null? _%hd8945589550%_)
                      (let ((_%r89555%_ _%tl8945689552%_))
                        (remove-nulls! _%r89555%_))
                      (let ((_%r89540%_ _%tl8945689552%_))
                        (_%K8945189534%_ _%r89540%_))))
                (_%K8945089467%_))))))
    (define append1!
      (lambda (_%l89429%_ _%x89430%_)
        (let ((_%l289433%_ (cons _%x89430%_ '())))
          (if (pair? _%l89429%_)
              (let ((_%l89435%_ _%l89429%_))
                (let ((__tmp92132
                       (let () (declare (not safe)) (##last-pair _%l89435%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp92132 _%l289433%_))
                _%l89435%_)
              _%l289433%_))))
    (define append-reverse-until
      (lambda (_%pred89413%_ _%rhead89414%_ _%tail89415%_)
        (if (procedure? _%pred89413%_)
            (let ((_%pred89419%_ _%pred89413%_))
              (__append-reverse-until
               _%pred89419%_
               _%rhead89414%_
               _%tail89415%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@357.29-357.33"
               'contract:
               'procedure?
               'value:
               _%pred89413%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred89355%_ _%rhead89356%_ _%tail89357%_)
        (let ((_%pred89360%_ _%pred89355%_))
          (let _%loop89369%_ ((_%rhead89371%_ _%rhead89356%_)
                              (_%tail89372%_ _%tail89357%_))
            (let* ((_%rhead8937489383%_ _%rhead89371%_)
                   (_%E8937789387%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8937489383%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8938189410%_ (lambda () (values '() _%tail89372%_)))
                    (_%K8937889394%_
                     (lambda (_%r89391%_ _%a89392%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred89360%_ _%a89392%_))
                           (values _%rhead89371%_ _%tail89372%_)
                           (_%loop89369%_
                            _%r89391%_
                            (cons _%a89392%_ _%tail89372%_))))))
                (let ((_%try-match8937689406%_
                       (lambda ()
                         (if (pair? _%rhead8937489383%_)
                             (let ((_%tl8938089399%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8937489383%_)))
                                   (_%hd8937989397%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8937489383%_))))
                               (let ((_%a89402%_ _%hd8937989397%_)
                                     (_%r89404%_ _%tl8938089399%_))
                                 (_%K8937889394%_ _%r89404%_ _%a89402%_)))
                             (_%E8937789387%_)))))
                  (if (null? _%rhead8937489383%_)
                      (_%K8938189410%_)
                      (_%try-match8937689406%_)))))))))
    (define andmap1
      (lambda (_%f89340%_ _%lst89341%_)
        (if (procedure? _%f89340%_)
            (let ((_%f89345%_ _%f89340%_)) (__andmap1 _%f89345%_ _%lst89341%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@368.16-368.17"
               'contract:
               'procedure?
               'value:
               _%f89340%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f89289%_ _%lst89290%_)
        (let ((_%f89293%_ _%f89289%_))
          (let _%lp89302%_ ((_%rest89304%_ _%lst89290%_))
            (let* ((_%rest8930689314%_ _%rest89304%_)
                   (_%else8930889322%_ (lambda () '#t))
                   (_%K8931089328%_
                    (lambda (_%rest89325%_ _%x89326%_)
                      (if (let () (declare (not safe)) (_%f89293%_ _%x89326%_))
                          (_%lp89302%_ _%rest89325%_)
                          '#f))))
              (if (pair? _%rest8930689314%_)
                  (let ((_%hd8931189331%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8930689314%_)))
                        (_%tl8931289333%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8930689314%_))))
                    (let* ((_%x89336%_ _%hd8931189331%_)
                           (_%rest89338%_ _%tl8931289333%_))
                      (_%K8931089328%_ _%rest89338%_ _%x89336%_)))
                  (_%else8930889322%_)))))))
    (define andmap2
      (lambda (_%f89273%_ _%lst189274%_ _%lst289275%_)
        (if (procedure? _%f89273%_)
            (let ((_%f89279%_ _%f89273%_))
              (__andmap2 _%f89279%_ _%lst189274%_ _%lst289275%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f89273%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f89187%_ _%lst189188%_ _%lst289189%_)
        (let ((_%f89192%_ _%f89187%_))
          (let _%lp89201%_ ((_%rest189203%_ _%lst189188%_)
                            (_%rest289204%_ _%lst289189%_))
            (let* ((_%rest18920689214%_ _%rest189203%_)
                   (_%else8920889222%_ (lambda () '#t))
                   (_%K8921089261%_
                    (lambda (_%rest189225%_ _%x189226%_)
                      (let* ((_%rest28922789235%_ _%rest289204%_)
                             (_%else8922989243%_ (lambda () '#t))
                             (_%K8923189249%_
                              (lambda (_%rest289246%_ _%x289247%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f89192%_ _%x189226%_ _%x289247%_))
                                    (_%lp89201%_ _%rest189225%_ _%rest289246%_)
                                    '#f))))
                        (if (pair? _%rest28922789235%_)
                            (let ((_%hd8923289252%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28922789235%_)))
                                  (_%tl8923389254%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28922789235%_))))
                              (let* ((_%x289257%_ _%hd8923289252%_)
                                     (_%rest289259%_ _%tl8923389254%_))
                                (_%K8923189249%_ _%rest289259%_ _%x289257%_)))
                            (_%else8922989243%_))))))
              (if (pair? _%rest18920689214%_)
                  (let ((_%hd8921189264%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18920689214%_)))
                        (_%tl8921289266%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18920689214%_))))
                    (let* ((_%x189269%_ _%hd8921189264%_)
                           (_%rest189271%_ _%tl8921289266%_))
                      (_%K8921089261%_ _%rest189271%_ _%x189269%_)))
                  (_%else8920889222%_)))))))
    (define andmap
      (lambda _g92134_
        (let ((_g92133_ (let () (declare (not safe)) (##length _g92134_))))
          (cond ((let () (declare (not safe)) (##fx= _g92133_ 2))
                 (apply andmap1 _g92134_))
                ((let () (declare (not safe)) (##fx= _g92133_ 3))
                 (apply andmap2 _g92134_))
                ((let () (declare (not safe)) (##fx>= _g92133_ 3))
                 (apply andmap* _g92134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g92134_))))))
    (define andmap*
      (lambda (_%f89160%_ . _%rest89161%_)
        (if (procedure? _%f89160%_)
            (let ((_%f89165%_ _%f89160%_))
              (declare (not safe))
              (##apply __andmap* _%f89165%_ _%rest89161%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@397.16-397.17"
               'contract:
               'procedure?
               'value:
               _%f89160%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f89142%_ . _%rest89143%_)
        (let ((_%f89146%_ _%f89142%_))
          (let _%recur89155%_ ((_%rest89157%_ _%rest89143%_))
            (if (__andmap1 pair? _%rest89157%_)
                (if (let ((__tmp92135 (map car _%rest89157%_)))
                      (declare (not safe))
                      (##apply _%f89146%_ __tmp92135))
                    (_%recur89155%_ (map cdr _%rest89157%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f89127%_ _%lst89128%_)
        (if (procedure? _%f89127%_)
            (let ((_%f89132%_ _%f89127%_)) (__ormap1 _%f89132%_ _%lst89128%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.15-406.16"
               'contract:
               'procedure?
               'value:
               _%f89127%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f89074%_ _%lst89075%_)
        (let ((_%f89078%_ _%f89074%_))
          (let _%lp89087%_ ((_%rest89089%_ _%lst89075%_))
            (let* ((_%rest8909089098%_ _%rest89089%_)
                   (_%else8909289106%_ (lambda () '#f))
                   (_%K8909489115%_
                    (lambda (_%rest89109%_ _%x89110%_)
                      (let ((_%$e89112%_
                             (let ()
                               (declare (not safe))
                               (_%f89078%_ _%x89110%_))))
                        (if _%$e89112%_
                            _%$e89112%_
                            (_%lp89087%_ _%rest89109%_))))))
              (if (pair? _%rest8909089098%_)
                  (let ((_%hd8909589118%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8909089098%_)))
                        (_%tl8909689120%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8909089098%_))))
                    (let* ((_%x89123%_ _%hd8909589118%_)
                           (_%rest89125%_ _%tl8909689120%_))
                      (_%K8909489115%_ _%rest89125%_ _%x89123%_)))
                  (_%else8909289106%_)))))))
    (define ormap2
      (lambda (_%f89058%_ _%lst189059%_ _%lst289060%_)
        (if (procedure? _%f89058%_)
            (let ((_%f89064%_ _%f89058%_))
              (__ormap2 _%f89064%_ _%lst189059%_ _%lst289060%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.15-413.16"
               'contract:
               'procedure?
               'value:
               _%f89058%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f88970%_ _%lst188971%_ _%lst288972%_)
        (let ((_%f88975%_ _%f88970%_))
          (let _%lp88984%_ ((_%rest188986%_ _%lst188971%_)
                            (_%rest288987%_ _%lst288972%_))
            (let* ((_%rest18898888996%_ _%rest188986%_)
                   (_%else8899089004%_ (lambda () '#f))
                   (_%K8899289046%_
                    (lambda (_%rest189007%_ _%x189008%_)
                      (let* ((_%rest28900989017%_ _%rest288987%_)
                             (_%else8901189025%_ (lambda () '#f))
                             (_%K8901389034%_
                              (lambda (_%rest289028%_ _%x289029%_)
                                (let ((_%$e89031%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f88975%_
                                          _%x189008%_
                                          _%x289029%_))))
                                  (if _%$e89031%_
                                      _%$e89031%_
                                      (_%lp88984%_
                                       _%rest189007%_
                                       _%rest289028%_))))))
                        (if (pair? _%rest28900989017%_)
                            (let ((_%hd8901489037%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28900989017%_)))
                                  (_%tl8901589039%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28900989017%_))))
                              (let* ((_%x289042%_ _%hd8901489037%_)
                                     (_%rest289044%_ _%tl8901589039%_))
                                (_%K8901389034%_ _%rest289044%_ _%x289042%_)))
                            (_%else8901189025%_))))))
              (if (pair? _%rest18898888996%_)
                  (let ((_%hd8899389049%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18898888996%_)))
                        (_%tl8899489051%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18898888996%_))))
                    (let* ((_%x189054%_ _%hd8899389049%_)
                           (_%rest189056%_ _%tl8899489051%_))
                      (_%K8899289046%_ _%rest189056%_ _%x189054%_)))
                  (_%else8899089004%_)))))))
    (define ormap
      (lambda _g92137_
        (let ((_g92136_ (let () (declare (not safe)) (##length _g92137_))))
          (cond ((let () (declare (not safe)) (##fx= _g92136_ 2))
                 (apply ormap1 _g92137_))
                ((let () (declare (not safe)) (##fx= _g92136_ 3))
                 (apply ormap2 _g92137_))
                ((let () (declare (not safe)) (##fx>= _g92136_ 3))
                 (apply ormap* _g92137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g92137_))))))
    (define ormap*
      (lambda (_%f88943%_ . _%rest88944%_)
        (if (procedure? _%f88943%_)
            (let ((_%f88948%_ _%f88943%_))
              (declare (not safe))
              (##apply __ormap* _%f88948%_ _%rest88944%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@431.15-431.16"
               'contract:
               'procedure?
               'value:
               _%f88943%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f88923%_ . _%rest88924%_)
        (let ((_%f88927%_ _%f88923%_))
          (let _%recur88936%_ ((_%rest88938%_ _%rest88924%_))
            (if (__andmap1 pair? _%rest88938%_)
                (let ((_%$e88940%_
                       (let ((__tmp92138 (map car _%rest88938%_)))
                         (declare (not safe))
                         (##apply _%f88927%_ __tmp92138))))
                  (if _%$e88940%_
                      _%$e88940%_
                      (_%recur88936%_ (map cdr _%rest88938%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f88908%_ _%lst88909%_)
        (if (procedure? _%f88908%_)
            (let ((_%f88913%_ _%f88908%_))
              (__filter-map1 _%f88913%_ _%lst88909%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.20-438.21"
               'contract:
               'procedure?
               'value:
               _%f88908%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f88851%_ _%lst88852%_)
        (let ((_%f88855%_ _%f88851%_))
          (let _%recur88864%_ ((_%rest88866%_ _%lst88852%_))
            (let* ((_%rest8886888876%_ _%rest88866%_)
                   (_%else8887088884%_ (lambda () '()))
                   (_%K8887288896%_
                    (lambda (_%rest88887%_ _%x88888%_)
                      (let ((_%$e88890%_
                             (let ()
                               (declare (not safe))
                               (_%f88855%_ _%x88888%_))))
                        (if _%$e88890%_
                            ((lambda (_%r88893%_)
                               (cons _%r88893%_
                                     (_%recur88864%_ _%rest88887%_)))
                             _%$e88890%_)
                            (_%recur88864%_ _%rest88887%_))))))
              (if (pair? _%rest8886888876%_)
                  (let ((_%hd8887388899%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8886888876%_)))
                        (_%tl8887488901%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8886888876%_))))
                    (let* ((_%x88904%_ _%hd8887388899%_)
                           (_%rest88906%_ _%tl8887488901%_))
                      (_%K8887288896%_ _%rest88906%_ _%x88904%_)))
                  (_%else8887088884%_)))))))
    (define filter-map2
      (lambda (_%f88835%_ _%lst188836%_ _%lst288837%_)
        (if (procedure? _%f88835%_)
            (let ((_%f88841%_ _%f88835%_))
              (__filter-map2 _%f88841%_ _%lst188836%_ _%lst288837%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@449.20-449.21"
               'contract:
               'procedure?
               'value:
               _%f88835%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f88743%_ _%lst188744%_ _%lst288745%_)
        (let ((_%f88748%_ _%f88743%_))
          (let _%recur88757%_ ((_%rest188759%_ _%lst188744%_)
                               (_%rest288760%_ _%lst288745%_))
            (let* ((_%rest18876288770%_ _%rest188759%_)
                   (_%else8876488778%_ (lambda () '()))
                   (_%K8876688823%_
                    (lambda (_%rest188781%_ _%x188782%_)
                      (let* ((_%rest28878388791%_ _%rest288760%_)
                             (_%else8878588799%_ (lambda () '()))
                             (_%K8878788811%_
                              (lambda (_%rest288802%_ _%x288803%_)
                                (let ((_%$e88805%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f88748%_
                                          _%x188782%_
                                          _%x288803%_))))
                                  (if _%$e88805%_
                                      ((lambda (_%r88808%_)
                                         (cons _%r88808%_
                                               (_%recur88757%_
                                                _%rest188781%_
                                                _%rest288802%_)))
                                       _%$e88805%_)
                                      (_%recur88757%_
                                       _%rest188781%_
                                       _%rest288802%_))))))
                        (if (pair? _%rest28878388791%_)
                            (let ((_%hd8878888814%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28878388791%_)))
                                  (_%tl8878988816%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28878388791%_))))
                              (let* ((_%x288819%_ _%hd8878888814%_)
                                     (_%rest288821%_ _%tl8878988816%_))
                                (_%K8878788811%_ _%rest288821%_ _%x288819%_)))
                            (_%else8878588799%_))))))
              (if (pair? _%rest18876288770%_)
                  (let ((_%hd8876788826%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18876288770%_)))
                        (_%tl8876888828%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18876288770%_))))
                    (let* ((_%x188831%_ _%hd8876788826%_)
                           (_%rest188833%_ _%tl8876888828%_))
                      (_%K8876688823%_ _%rest188833%_ _%x188831%_)))
                  (_%else8876488778%_)))))))
    (define filter-map
      (lambda _g92140_
        (let ((_g92139_ (let () (declare (not safe)) (##length _g92140_))))
          (cond ((let () (declare (not safe)) (##fx= _g92139_ 2))
                 (apply filter-map1 _g92140_))
                ((let () (declare (not safe)) (##fx= _g92139_ 3))
                 (apply filter-map2 _g92140_))
                ((let () (declare (not safe)) (##fx>= _g92139_ 3))
                 (apply filter-map* _g92140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g92140_))))))
    (define filter-map*
      (lambda (_%f88716%_ . _%rest88717%_)
        (if (procedure? _%f88716%_)
            (let ((_%f88721%_ _%f88716%_))
              (declare (not safe))
              (##apply __filter-map* _%f88721%_ _%rest88717%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f88716%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f88692%_ . _%rest88693%_)
        (let ((_%f88696%_ _%f88692%_))
          (let _%recur88705%_ ((_%rest88707%_ _%rest88693%_))
            (if (__andmap1 pair? _%rest88707%_)
                (let ((_%$e88710%_
                       (let ((__tmp92141 (map car _%rest88707%_)))
                         (declare (not safe))
                         (##apply _%f88696%_ __tmp92141))))
                  (if _%$e88710%_
                      ((lambda (_%r88713%_)
                         (cons _%r88713%_
                               (_%recur88705%_ (map cdr _%rest88707%_))))
                       _%$e88710%_)
                      (_%recur88705%_ (map cdr _%rest88707%_))))
                '())))))
    (define agetq__%
      (lambda (_%key88668%_ _%lst88670%_ _%default88672%_)
        (let ((_%$e88675%_
               (if (pair? _%lst88670%_) (assq _%key88668%_ _%lst88670%_) '#f)))
          (if _%$e88675%_
              (cdr _%$e88675%_)
              (if (procedure? _%default88672%_)
                  (_%default88672%_ _%key88668%_)
                  _%default88672%_)))))
    (define agetq__0
      (lambda (_%key88683%_ _%lst88684%_)
        (let ((_%default88686%_ '#f))
          (agetq__% _%key88683%_ _%lst88684%_ _%default88686%_))))
    (define agetq
      (lambda _g92143_
        (let ((_g92142_ (let () (declare (not safe)) (##length _g92143_))))
          (cond ((let () (declare (not safe)) (##fx= _g92142_ 2))
                 (apply agetq__0 _g92143_))
                ((let () (declare (not safe)) (##fx= _g92142_ 3))
                 (apply agetq__% _g92143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g92143_))))))
    (define agetv__%
      (lambda (_%key88643%_ _%lst88645%_ _%default88647%_)
        (let ((_%$e88650%_
               (if (pair? _%lst88645%_) (assv _%key88643%_ _%lst88645%_) '#f)))
          (if _%$e88650%_
              (cdr _%$e88650%_)
              (if (procedure? _%default88647%_)
                  (_%default88647%_ _%key88643%_)
                  _%default88647%_)))))
    (define agetv__0
      (lambda (_%key88658%_ _%lst88659%_)
        (let ((_%default88661%_ '#f))
          (agetv__% _%key88658%_ _%lst88659%_ _%default88661%_))))
    (define agetv
      (lambda _g92145_
        (let ((_g92144_ (let () (declare (not safe)) (##length _g92145_))))
          (cond ((let () (declare (not safe)) (##fx= _g92144_ 2))
                 (apply agetv__0 _g92145_))
                ((let () (declare (not safe)) (##fx= _g92144_ 3))
                 (apply agetv__% _g92145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g92145_))))))
    (define aget__%
      (lambda (_%key88618%_ _%lst88620%_ _%default88622%_)
        (let ((_%$e88625%_
               (if (pair? _%lst88620%_)
                   (assoc _%key88618%_ _%lst88620%_)
                   '#f)))
          (if _%$e88625%_
              (cdr _%$e88625%_)
              (if (procedure? _%default88622%_)
                  (_%default88622%_ _%key88618%_)
                  _%default88622%_)))))
    (define aget__0
      (lambda (_%key88633%_ _%lst88634%_)
        (let ((_%default88636%_ '#f))
          (aget__% _%key88633%_ _%lst88634%_ _%default88636%_))))
    (define aget
      (lambda _g92147_
        (let ((_g92146_ (let () (declare (not safe)) (##length _g92147_))))
          (cond ((let () (declare (not safe)) (##fx= _g92146_ 2))
                 (apply aget__0 _g92147_))
                ((let () (declare (not safe)) (##fx= _g92146_ 3))
                 (apply aget__% _g92147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g92147_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key88547%_ _%lst88549%_ _%default88551%_)
        (let _%lp88554%_ ((_%rest88557%_ _%lst88549%_))
          (let* ((_%rest8855988569%_ _%rest88557%_)
                 (_%else8856188577%_
                  (lambda ()
                    (if (procedure? _%default88551%_)
                        (_%default88551%_ _%key88547%_)
                        _%default88551%_)))
                 (_%K8856388586%_
                  (lambda (_%rest88580%_ _%v88581%_ _%k88583%_)
                    (if (eq? _%k88583%_ _%key88547%_)
                        _%v88581%_
                        (_%lp88554%_ _%rest88580%_)))))
            (if (pair? _%rest8855988569%_)
                (let ((_%hd8856488589%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8855988569%_)))
                      (_%tl8856588591%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8855988569%_))))
                  (let ((_%k88594%_ _%hd8856488589%_))
                    (if (pair? _%tl8856588591%_)
                        (let ((_%hd8856688596%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8856588591%_)))
                              (_%tl8856788598%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8856588591%_))))
                          (let* ((_%v88601%_ _%hd8856688596%_)
                                 (_%rest88603%_ _%tl8856788598%_))
                            (_%K8856388586%_
                             _%rest88603%_
                             _%v88601%_
                             _%k88594%_)))
                        (_%else8856188577%_))))
                (_%else8856188577%_))))))
    (define pgetq__0
      (lambda (_%key88608%_ _%lst88609%_)
        (let ((_%default88611%_ '#f))
          (pgetq__% _%key88608%_ _%lst88609%_ _%default88611%_))))
    (define pgetq
      (lambda _g92149_
        (let ((_g92148_ (let () (declare (not safe)) (##length _g92149_))))
          (cond ((let () (declare (not safe)) (##fx= _g92148_ 2))
                 (apply pgetq__0 _g92149_))
                ((let () (declare (not safe)) (##fx= _g92148_ 3))
                 (apply pgetq__% _g92149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g92149_))))))
    (define pgetv__%
      (lambda (_%key88476%_ _%lst88478%_ _%default88480%_)
        (let _%lp88483%_ ((_%rest88486%_ _%lst88478%_))
          (let* ((_%rest8848888498%_ _%rest88486%_)
                 (_%else8849088506%_
                  (lambda ()
                    (if (procedure? _%default88480%_)
                        (_%default88480%_ _%key88476%_)
                        _%default88480%_)))
                 (_%K8849288515%_
                  (lambda (_%rest88509%_ _%v88510%_ _%k88512%_)
                    (if (eqv? _%k88512%_ _%key88476%_)
                        _%v88510%_
                        (_%lp88483%_ _%rest88509%_)))))
            (if (pair? _%rest8848888498%_)
                (let ((_%hd8849388518%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8848888498%_)))
                      (_%tl8849488520%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8848888498%_))))
                  (let ((_%k88523%_ _%hd8849388518%_))
                    (if (pair? _%tl8849488520%_)
                        (let ((_%hd8849588525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8849488520%_)))
                              (_%tl8849688527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8849488520%_))))
                          (let* ((_%v88530%_ _%hd8849588525%_)
                                 (_%rest88532%_ _%tl8849688527%_))
                            (_%K8849288515%_
                             _%rest88532%_
                             _%v88530%_
                             _%k88523%_)))
                        (_%else8849088506%_))))
                (_%else8849088506%_))))))
    (define pgetv__0
      (lambda (_%key88537%_ _%lst88538%_)
        (let ((_%default88540%_ '#f))
          (pgetv__% _%key88537%_ _%lst88538%_ _%default88540%_))))
    (define pgetv
      (lambda _g92151_
        (let ((_g92150_ (let () (declare (not safe)) (##length _g92151_))))
          (cond ((let () (declare (not safe)) (##fx= _g92150_ 2))
                 (apply pgetv__0 _g92151_))
                ((let () (declare (not safe)) (##fx= _g92150_ 3))
                 (apply pgetv__% _g92151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g92151_))))))
    (define pget__%
      (lambda (_%key88405%_ _%lst88407%_ _%default88409%_)
        (let _%lp88412%_ ((_%rest88415%_ _%lst88407%_))
          (let* ((_%rest8841788427%_ _%rest88415%_)
                 (_%else8841988435%_
                  (lambda ()
                    (if (procedure? _%default88409%_)
                        (_%default88409%_ _%key88405%_)
                        _%default88409%_)))
                 (_%K8842188444%_
                  (lambda (_%rest88438%_ _%v88439%_ _%k88441%_)
                    (if (equal? _%k88441%_ _%key88405%_)
                        _%v88439%_
                        (_%lp88412%_ _%rest88438%_)))))
            (if (pair? _%rest8841788427%_)
                (let ((_%hd8842288447%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8841788427%_)))
                      (_%tl8842388449%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8841788427%_))))
                  (let ((_%k88452%_ _%hd8842288447%_))
                    (if (pair? _%tl8842388449%_)
                        (let ((_%hd8842488454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8842388449%_)))
                              (_%tl8842588456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8842388449%_))))
                          (let* ((_%v88459%_ _%hd8842488454%_)
                                 (_%rest88461%_ _%tl8842588456%_))
                            (_%K8842188444%_
                             _%rest88461%_
                             _%v88459%_
                             _%k88452%_)))
                        (_%else8841988435%_))))
                (_%else8841988435%_))))))
    (define pget__0
      (lambda (_%key88466%_ _%lst88467%_)
        (let ((_%default88469%_ '#f))
          (pget__% _%key88466%_ _%lst88467%_ _%default88469%_))))
    (define pget
      (lambda _g92153_
        (let ((_g92152_ (let () (declare (not safe)) (##length _g92153_))))
          (cond ((let () (declare (not safe)) (##fx= _g92152_ 2))
                 (apply pget__0 _g92153_))
                ((let () (declare (not safe)) (##fx= _g92152_ 3))
                 (apply pget__% _g92153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g92153_))))))
    (define find
      (lambda (_%pred88389%_ _%lst88390%_)
        (if (procedure? _%pred88389%_)
            (let ((_%pred88394%_ _%pred88389%_))
              (__find _%pred88394%_ _%lst88390%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.13-517.17"
               'contract:
               'procedure?
               'value:
               _%pred88389%_)
              '#!void))))
    (define __find
      (lambda (_%pred88372%_ _%lst88373%_)
        (let* ((_%pred88376%_ _%pred88372%_)
               (_%$e88385%_ (__memf _%pred88376%_ _%lst88373%_)))
          (if _%$e88385%_
              (let () (declare (not safe)) (##car _%$e88385%_))
              '#f))))
    (define memf
      (lambda (_%proc88357%_ _%lst88358%_)
        (if (procedure? _%proc88357%_)
            (let ((_%proc88362%_ _%proc88357%_))
              (__memf _%proc88362%_ _%lst88358%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@522.13-522.17"
               'contract:
               'procedure?
               'value:
               _%proc88357%_)
              '#!void))))
    (define __memf
      (lambda (_%proc88307%_ _%lst88308%_)
        (let ((_%proc88311%_ _%proc88307%_))
          (let _%lp88320%_ ((_%rest88322%_ _%lst88308%_))
            (let* ((_%rest8832388331%_ _%rest88322%_)
                   (_%else8832588339%_ (lambda () '#f))
                   (_%K8832788345%_
                    (lambda (_%tl88342%_ _%hd88343%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc88311%_ _%hd88343%_))
                          _%rest88322%_
                          (_%lp88320%_ _%tl88342%_)))))
              (if (pair? _%rest8832388331%_)
                  (let ((_%hd8832888348%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8832388331%_)))
                        (_%tl8832988350%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8832388331%_))))
                    (let* ((_%hd88353%_ _%hd8832888348%_)
                           (_%tl88355%_ _%tl8832988350%_))
                      (_%K8832788345%_ _%tl88355%_ _%hd88353%_)))
                  (_%else8832588339%_)))))))
    (define remove1
      (lambda (_%el88260%_ _%lst88262%_)
        (let _%lp88265%_ ((_%rest88268%_ _%lst88262%_) (_%r88270%_ '()))
          (let* ((_%rest8827288280%_ _%rest88268%_)
                 (_%else8827488288%_ (lambda () _%lst88262%_))
                 (_%K8827688295%_
                  (lambda (_%rest88291%_ _%hd88292%_)
                    (if (equal? _%el88260%_ _%hd88292%_)
                        (__foldl1 cons _%rest88291%_ _%r88270%_)
                        (_%lp88265%_
                         _%rest88291%_
                         (cons _%hd88292%_ _%r88270%_))))))
            (if (pair? _%rest8827288280%_)
                (let ((_%hd8827788298%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8827288280%_)))
                      (_%tl8827888300%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8827288280%_))))
                  (let* ((_%hd88303%_ _%hd8827788298%_)
                         (_%rest88305%_ _%tl8827888300%_))
                    (_%K8827688295%_ _%rest88305%_ _%hd88303%_)))
                (_%else8827488288%_))))))
    (define remv1
      (lambda (_%el88213%_ _%lst88215%_)
        (let _%lp88218%_ ((_%rest88221%_ _%lst88215%_) (_%r88223%_ '()))
          (let* ((_%rest8822588233%_ _%rest88221%_)
                 (_%else8822788241%_ (lambda () _%lst88215%_))
                 (_%K8822988248%_
                  (lambda (_%rest88244%_ _%hd88245%_)
                    (if (eqv? _%el88213%_ _%hd88245%_)
                        (__foldl1 cons _%rest88244%_ _%r88223%_)
                        (_%lp88218%_
                         _%rest88244%_
                         (cons _%hd88245%_ _%r88223%_))))))
            (if (pair? _%rest8822588233%_)
                (let ((_%hd8823088251%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8822588233%_)))
                      (_%tl8823188253%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8822588233%_))))
                  (let* ((_%hd88256%_ _%hd8823088251%_)
                         (_%rest88258%_ _%tl8823188253%_))
                    (_%K8822988248%_ _%rest88258%_ _%hd88256%_)))
                (_%else8822788241%_))))))
    (define remq1
      (lambda (_%el88166%_ _%lst88168%_)
        (let _%lp88171%_ ((_%rest88174%_ _%lst88168%_) (_%r88176%_ '()))
          (let* ((_%rest8817888186%_ _%rest88174%_)
                 (_%else8818088194%_ (lambda () _%lst88168%_))
                 (_%K8818288201%_
                  (lambda (_%rest88197%_ _%hd88198%_)
                    (if (eq? _%el88166%_ _%hd88198%_)
                        (__foldl1 cons _%rest88197%_ _%r88176%_)
                        (_%lp88171%_
                         _%rest88197%_
                         (cons _%hd88198%_ _%r88176%_))))))
            (if (pair? _%rest8817888186%_)
                (let ((_%hd8818388204%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8817888186%_)))
                      (_%tl8818488206%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8817888186%_))))
                  (let* ((_%hd88209%_ _%hd8818388204%_)
                         (_%rest88211%_ _%tl8818488206%_))
                    (_%K8818288201%_ _%rest88211%_ _%hd88209%_)))
                (_%else8818088194%_))))))
    (define remf
      (lambda (_%proc88151%_ _%lst88152%_)
        (if (procedure? _%proc88151%_)
            (let ((_%proc88156%_ _%proc88151%_))
              (__remf _%proc88156%_ _%lst88152%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@544.13-544.17"
               'contract:
               'procedure?
               'value:
               _%proc88151%_)
              '#!void))))
    (define __remf
      (lambda (_%proc88100%_ _%lst88101%_)
        (let ((_%proc88104%_ _%proc88100%_))
          (let _%lp88113%_ ((_%rest88115%_ _%lst88101%_) (_%r88116%_ '()))
            (let* ((_%rest8811788125%_ _%rest88115%_)
                   (_%else8811988133%_ (lambda () _%lst88101%_))
                   (_%K8812188139%_
                    (lambda (_%rest88136%_ _%hd88137%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc88104%_ _%hd88137%_))
                          (__foldl1 cons _%rest88136%_ _%r88116%_)
                          (_%lp88113%_
                           _%rest88136%_
                           (cons _%hd88137%_ _%r88116%_))))))
              (if (pair? _%rest8811788125%_)
                  (let ((_%hd8812288142%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8811788125%_)))
                        (_%tl8812388144%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8811788125%_))))
                    (let* ((_%hd88147%_ _%hd8812288142%_)
                           (_%rest88149%_ _%tl8812388144%_))
                      (_%K8812188139%_ _%rest88149%_ _%hd88147%_)))
                  (_%else8811988133%_)))))))
    (define 1+
      (lambda (_%x88086%_)
        (if (number? _%x88086%_)
            (let ((_%x88090%_ _%x88086%_)) (__1+ _%x88090%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.11-553.12"
               'contract:
               'number?
               'value:
               _%x88086%_)
              '#!void))))
    (define __1+
      (lambda (_%x88074%_) (let ((_%x88077%_ _%x88074%_)) (+ _%x88077%_ '1))))
    (define 1-
      (lambda (_%x88060%_)
        (if (number? _%x88060%_)
            (let ((_%x88064%_ _%x88060%_)) (__1- _%x88064%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@561.11-561.12"
               'contract:
               'number?
               'value:
               _%x88060%_)
              '#!void))))
    (define __1-
      (lambda (_%x88048%_) (let ((_%x88051%_ _%x88048%_)) (- _%x88051%_ '1))))
    (define fx1+
      (lambda (_%x88034%_)
        (if (fixnum? _%x88034%_)
            (let ((_%x88038%_ _%x88034%_)) (__fx1+ _%x88038%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.13-569.14"
               'contract:
               'fixnum?
               'value:
               _%x88034%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x88022%_)
        (let ((_%x88025%_ _%x88022%_))
          (declare (not safe))
          (##fx+ _%x88025%_ '1))))
    (define fx1-
      (lambda (_%x88008%_)
        (if (fixnum? _%x88008%_)
            (let ((_%x88012%_ _%x88008%_)) (__fx1- _%x88012%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.14"
               'contract:
               'fixnum?
               'value:
               _%x88008%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x87996%_)
        (let ((_%x87999%_ _%x87996%_))
          (declare (not safe))
          (##fx- _%x87999%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x87993%_)
        (if (fixnum? _%x87993%_)
            (let () (declare (not safe)) (##fx>= _%x87993%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x87990%_)
        (if (fixnum? _%x87990%_)
            (let () (declare (not safe)) (##fx> _%x87990%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x87987%_)
        (let () (declare (not safe)) (##fx= _%x87987%_ '0))))
    (define fx<0?
      (lambda (_%x87984%_)
        (if (fixnum? _%x87984%_)
            (let () (declare (not safe)) (##fx< _%x87984%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x87981%_)
        (if (fixnum? _%x87981%_)
            (let () (declare (not safe)) (##fx<= _%x87981%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x87978%_)
        (if (symbol? _%x87978%_) (not (uninterned-symbol? _%x87978%_)) '#f)))
    (define display-as-string
      (lambda (_%x87963%_ _%port87964%_)
        (if (output-port? _%port87964%_)
            (let ((_%port87968%_ _%port87964%_))
              (__display-as-string _%x87963%_ _%port87968%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@605.28-605.32"
               'contract:
               'output-port?
               'value:
               _%port87964%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x87920%_ _%port87921%_)
        (let ((_%port87924%_ _%port87921%_))
          (if (or (string? _%x87920%_)
                  (symbol? _%x87920%_)
                  (keyword? _%x87920%_)
                  (number? _%x87920%_)
                  (char? _%x87920%_))
              (display _%x87920%_ _%port87924%_)
              (if (pair? _%x87920%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x87920%_))
                     _%port87924%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x87920%_))
                     _%port87924%_))
                  (if (vector? _%x87920%_)
                      (vector-for-each
                       (lambda (_%g8794787949%_)
                         (__display-as-string _%g8794787949%_ _%port87924%_))
                       _%x87920%_)
                      (if (or (null? _%x87920%_)
                              (eq? _%x87920%_ '#!void)
                              (eof-object? _%x87920%_)
                              (boolean? _%x87920%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x87920%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x87903%_)
        (if (string? _%x87903%_)
            _%x87903%_
            (if (symbol? _%x87903%_)
                (let () (declare (not safe)) (##symbol->string _%x87903%_))
                (if (keyword? _%x87903%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x87903%_))
                    (if (number? _%x87903%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x87903%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g8790987911%_)
                           (__display-as-string
                            _%x87903%_
                            _%g8790987911%_)))))))))
    (define as-string__1
      (lambda _%args87914%_
        (call-with-output-string
         '()
         (lambda (_%g8791587917%_)
           (__display-as-string _%args87914%_ _%g8791587917%_)))))
    (define as-string
      (lambda _g92155_
        (let ((_g92154_ (let () (declare (not safe)) (##length _g92155_))))
          (cond ((let () (declare (not safe)) (##fx= _g92154_ 1))
                 (apply as-string__0 _g92155_))
                (#t
                 (apply (lambda _%args87914%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args87914%_)))
                        _g92155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g92155_))))))
    (define make-symbol__0
      (lambda (_%x87899%_)
        (if (interned-symbol? _%x87899%_)
            _%x87899%_
            (let ((__tmp92156 (as-string__0 _%x87899%_)))
              (declare (not safe))
              (##string->symbol __tmp92156)))))
    (define make-symbol__1
      (lambda _%args87901%_
        (let ((__tmp92157
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args87901%_))))
          (declare (not safe))
          (##string->symbol __tmp92157))))
    (define make-symbol
      (lambda _g92159_
        (let ((_g92158_ (let () (declare (not safe)) (##length _g92159_))))
          (cond ((let () (declare (not safe)) (##fx= _g92158_ 1))
                 (apply make-symbol__0 _g92159_))
                (#t
                 (apply (lambda _%args87901%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args87901%_)))
                        _g92159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g92159_))))))
    (define make-keyword__0
      (lambda (_%x87895%_)
        (if (interned-keyword? _%x87895%_)
            _%x87895%_
            (let ((__tmp92160 (as-string__0 _%x87895%_)))
              (declare (not safe))
              (##string->keyword __tmp92160)))))
    (define make-keyword__1
      (lambda _%args87897%_
        (let ((__tmp92161
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args87897%_))))
          (declare (not safe))
          (##string->keyword __tmp92161))))
    (define make-keyword
      (lambda _g92163_
        (let ((_g92162_ (let () (declare (not safe)) (##length _g92163_))))
          (cond ((let () (declare (not safe)) (##fx= _g92162_ 1))
                 (apply make-keyword__0 _g92163_))
                (#t
                 (apply (lambda _%args87897%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args87897%_)))
                        _g92163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g92163_))))))
    (define interned-keyword?
      (lambda (_%x87892%_)
        (if (keyword? _%x87892%_) (not (uninterned-keyword? _%x87892%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym87878%_)
        (if (symbol? _%sym87878%_)
            (let ((_%sym87882%_ _%sym87878%_))
              (__symbol->keyword _%sym87882%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@648.24-648.27"
               'contract:
               'symbol?
               'value:
               _%sym87878%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym87866%_)
        (let ((_%sym87869%_ _%sym87866%_))
          (if (uninterned-symbol? _%sym87869%_)
              (let ((__tmp92164
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym87869%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp92164))
              (let ((__tmp92165
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym87869%_))))
                (declare (not safe))
                (##string->keyword __tmp92165))))))
    (define keyword->symbol
      (lambda (_%sym87852%_)
        (if (keyword? _%sym87852%_)
            (let ((_%sym87856%_ _%sym87852%_))
              (__keyword->symbol _%sym87856%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.24-654.27"
               'contract:
               'keyword?
               'value:
               _%sym87852%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym87840%_)
        (let ((_%sym87843%_ _%sym87840%_))
          (if (uninterned-keyword? _%sym87843%_)
              (let ((__tmp92166
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym87843%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp92166))
              (let ((__tmp92167
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym87843%_))))
                (declare (not safe))
                (##string->symbol __tmp92167))))))
    (define bytes->string__%
      (lambda (_%bstr87805%_ _%enc87806%_)
        (if (u8vector? _%bstr87805%_)
            (let ((_%bstr87810%_ _%bstr87805%_))
              (if (symbol? _%enc87806%_)
                  (let ((_%enc87820%_ _%enc87806%_))
                    (__bytes->string__% _%bstr87810%_ _%enc87820%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@661.25-661.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc87806%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.22-660.26"
               'contract:
               'u8vector?
               'value:
               _%bstr87805%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr87833%_)
        (let ((_%enc87835%_ 'UTF-8))
          (bytes->string__% _%bstr87833%_ _%enc87835%_))))
    (define bytes->string
      (lambda _g92169_
        (let ((_g92168_ (let () (declare (not safe)) (##length _g92169_))))
          (cond ((let () (declare (not safe)) (##fx= _g92168_ 1))
                 (apply bytes->string__0 _g92169_))
                ((let () (declare (not safe)) (##fx= _g92168_ 2))
                 (apply bytes->string__% _g92169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g92169_))))))
    (define __bytes->string__%
      (lambda (_%bstr87764%_ _%enc87765%_)
        (let* ((_%bstr87768%_ _%bstr87764%_) (_%enc87776%_ _%enc87765%_))
          (if (eq? _%enc87776%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr87768%_))
              (let* ((_%in87785%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc87776%_
                                   (cons 'init: (cons _%bstr87768%_ '()))))))
                     (_%len87787%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr87768%_)))
                     (_%out87789%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len87787%_)))
                     (_%n87791%_
                      (read-substring
                       _%out87789%_
                       '0
                       _%len87787%_
                       _%in87785%_)))
                (string-shrink! _%out87789%_ _%n87791%_)
                _%out87789%_)))))
    (define __bytes->string__0
      (lambda (_%bstr87797%_)
        (let ((_%enc87799%_ 'UTF-8))
          (__bytes->string__% _%bstr87797%_ _%enc87799%_))))
    (define __bytes->string
      (lambda _g92171_
        (let ((_g92170_ (let () (declare (not safe)) (##length _g92171_))))
          (cond ((let () (declare (not safe)) (##fx= _g92170_ 1))
                 (apply __bytes->string__0 _g92171_))
                ((let () (declare (not safe)) (##fx= _g92170_ 2))
                 (apply __bytes->string__% _g92171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g92171_))))))
    (define string->bytes__%
      (lambda (_%str87728%_ _%enc87729%_)
        (if (string? _%str87728%_)
            (let ((_%str87733%_ _%str87728%_))
              (if (symbol? _%enc87729%_)
                  (let ((_%enc87743%_ _%enc87729%_))
                    (__string->bytes__% _%str87733%_ _%enc87743%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc87729%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.25"
               'contract:
               'string?
               'value:
               _%str87728%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str87756%_)
        (let ((_%enc87758%_ 'UTF-8))
          (string->bytes__% _%str87756%_ _%enc87758%_))))
    (define string->bytes
      (lambda _g92173_
        (let ((_g92172_ (let () (declare (not safe)) (##length _g92173_))))
          (cond ((let () (declare (not safe)) (##fx= _g92172_ 1))
                 (apply string->bytes__0 _g92173_))
                ((let () (declare (not safe)) (##fx= _g92172_ 2))
                 (apply string->bytes__% _g92173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g92173_))))))
    (define __string->bytes__%
      (lambda (_%str87696%_ _%enc87697%_)
        (let* ((_%str87700%_ _%str87696%_) (_%enc87708%_ _%enc87697%_))
          (if (eq? _%enc87708%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str87700%_))
              (__substring->bytes__%
               _%str87700%_
               '0
               (let () (declare (not safe)) (##string-length _%str87700%_))
               _%enc87708%_)))))
    (define __string->bytes__0
      (lambda (_%str87720%_)
        (let ((_%enc87722%_ 'UTF-8))
          (__string->bytes__% _%str87720%_ _%enc87722%_))))
    (define __string->bytes
      (lambda _g92175_
        (let ((_g92174_ (let () (declare (not safe)) (##length _g92175_))))
          (cond ((let () (declare (not safe)) (##fx= _g92174_ 1))
                 (apply __string->bytes__0 _g92175_))
                ((let () (declare (not safe)) (##fx= _g92174_ 2))
                 (apply __string->bytes__% _g92175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g92175_))))))
    (define substring->bytes__%
      (lambda (_%str87644%_ _%start87645%_ _%end87646%_ _%enc87647%_)
        (if (string? _%str87644%_)
            (let ((_%str87651%_ _%str87644%_))
              (if (nonnegative-fixnum? _%start87645%_)
                  (let ((_%start87661%_ _%start87645%_))
                    (if (nonnegative-fixnum? _%end87646%_)
                        (let ((_%end87671%_ _%end87646%_))
                          (__substring->bytes__%
                           _%str87651%_
                           _%start87661%_
                           _%end87671%_
                           _%enc87647%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@681.25-681.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end87646%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@680.25-680.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start87645%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@679.25-679.28"
               'contract:
               'string?
               'value:
               _%str87644%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str87684%_ _%start87685%_ _%end87686%_)
        (let ((_%enc87688%_ 'UTF-8))
          (substring->bytes__%
           _%str87684%_
           _%start87685%_
           _%end87686%_
           _%enc87688%_))))
    (define substring->bytes
      (lambda _g92177_
        (let ((_g92176_ (let () (declare (not safe)) (##length _g92177_))))
          (cond ((let () (declare (not safe)) (##fx= _g92176_ 3))
                 (apply substring->bytes__0 _g92177_))
                ((let () (declare (not safe)) (##fx= _g92176_ 4))
                 (apply substring->bytes__% _g92177_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g92177_))))))
    (define __substring->bytes__%
      (lambda (_%str87596%_ _%start87597%_ _%end87598%_ _%enc87599%_)
        (let* ((_%str87602%_ _%str87596%_)
               (_%start87610%_ _%start87597%_)
               (_%end87618%_ _%end87598%_))
          (if (eq? _%enc87599%_ 'UTF-8)
              (string->utf8 _%str87602%_ _%start87610%_ _%end87618%_)
              (let ((_%out87627%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc87599%_ '())))))
                (write-substring
                 _%str87602%_
                 _%start87610%_
                 _%end87618%_
                 _%out87627%_)
                (get-output-u8vector _%out87627%_))))))
    (define __substring->bytes__0
      (lambda (_%str87632%_ _%start87633%_ _%end87634%_)
        (let ((_%enc87636%_ 'UTF-8))
          (__substring->bytes__%
           _%str87632%_
           _%start87633%_
           _%end87634%_
           _%enc87636%_))))
    (define __substring->bytes
      (lambda _g92179_
        (let ((_g92178_ (let () (declare (not safe)) (##length _g92179_))))
          (cond ((let () (declare (not safe)) (##fx= _g92178_ 3))
                 (apply __substring->bytes__0 _g92179_))
                ((let () (declare (not safe)) (##fx= _g92178_ 4))
                 (apply __substring->bytes__% _g92179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g92179_))))))
    (define string-empty?
      (lambda (_%str87581%_)
        (if (string? _%str87581%_)
            (let ((_%str87585%_ _%str87581%_)) (__string-empty? _%str87585%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@690.22-690.25"
               'contract:
               'string?
               'value:
               _%str87581%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str87569%_)
        (let* ((_%str87572%_ _%str87569%_)
               (__tmp92180
                (let () (declare (not safe)) (##string-length _%str87572%_))))
          (declare (not safe))
          (##fxzero? __tmp92180))))
    (define string-index__%
      (lambda (_%str87521%_ _%char87522%_ _%start87523%_)
        (if (string? _%str87521%_)
            (let ((_%str87527%_ _%str87521%_))
              (if (char? _%char87522%_)
                  (let ((_%char87537%_ _%char87522%_))
                    (if (nonnegative-fixnum? _%start87523%_)
                        (let ((_%start87547%_ _%start87523%_))
                          (__string-index__%
                           _%str87527%_
                           _%char87537%_
                           _%start87547%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@696.21-696.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start87523%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.21-695.25"
                     'contract:
                     'char?
                     'value:
                     _%char87522%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.21-694.24"
               'contract:
               'string?
               'value:
               _%str87521%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str87560%_ _%char87561%_)
        (let ((_%start87563%_ '0))
          (string-index__% _%str87560%_ _%char87561%_ _%start87563%_))))
    (define string-index
      (lambda _g92182_
        (let ((_g92181_ (let () (declare (not safe)) (##length _g92182_))))
          (cond ((let () (declare (not safe)) (##fx= _g92181_ 2))
                 (apply string-index__0 _g92182_))
                ((let () (declare (not safe)) (##fx= _g92181_ 3))
                 (apply string-index__% _g92182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g92182_))))))
    (define __string-index__%
      (lambda (_%str87460%_ _%char87461%_ _%start87462%_)
        (let* ((_%str87465%_ _%str87460%_)
               (_%char87473%_ _%char87461%_)
               (_%start87481%_ _%start87462%_)
               (_%len87490%_
                (let () (declare (not safe)) (##string-length _%str87465%_))))
          (let _%lp87492%_ ((_%k87494%_ _%start87481%_))
            (let ((_%k87496%_ _%k87494%_))
              (if (let () (declare (not safe)) (##fx< _%k87496%_ _%len87490%_))
                  (if (eq? _%char87473%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str87465%_ _%k87496%_)))
                      _%k87496%_
                      (_%lp87492%_
                       (let () (declare (not safe)) (##fx+ _%k87496%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str87511%_ _%char87512%_)
        (let ((_%start87514%_ '0))
          (__string-index__% _%str87511%_ _%char87512%_ _%start87514%_))))
    (define __string-index
      (lambda _g92184_
        (let ((_g92183_ (let () (declare (not safe)) (##length _g92184_))))
          (cond ((let () (declare (not safe)) (##fx= _g92183_ 2))
                 (apply __string-index__0 _g92184_))
                ((let () (declare (not safe)) (##fx= _g92183_ 3))
                 (apply __string-index__% _g92184_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g92184_))))))
    (define string-rindex__%
      (lambda (_%str87421%_ _%char87422%_ _%start87423%_)
        (if (string? _%str87421%_)
            (let ((_%str87427%_ _%str87421%_))
              (if (char? _%char87422%_)
                  (let ((_%char87437%_ _%char87422%_))
                    (__string-rindex__%
                     _%str87427%_
                     _%char87437%_
                     _%start87423%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@706.25-706.29"
                     'contract:
                     'char?
                     'value:
                     _%char87422%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@705.22-705.25"
               'contract:
               'string?
               'value:
               _%str87421%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str87450%_ _%char87451%_)
        (let ((_%start87453%_ '#f))
          (string-rindex__% _%str87450%_ _%char87451%_ _%start87453%_))))
    (define string-rindex
      (lambda _g92186_
        (let ((_g92185_ (let () (declare (not safe)) (##length _g92186_))))
          (cond ((let () (declare (not safe)) (##fx= _g92185_ 2))
                 (apply string-rindex__0 _g92186_))
                ((let () (declare (not safe)) (##fx= _g92185_ 3))
                 (apply string-rindex__% _g92186_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g92186_))))))
    (define __string-rindex__%
      (lambda (_%str87363%_ _%char87364%_ _%start87365%_)
        (let* ((_%str87368%_ _%str87363%_)
               (_%char87376%_ _%char87364%_)
               (_%len87385%_
                (let () (declare (not safe)) (##string-length _%str87368%_)))
               (_%start87387%_
                (if (fixnum? _%start87365%_)
                    _%start87365%_
                    (let () (declare (not safe)) (##fx- _%len87385%_ '1)))))
          (let _%lp87390%_ ((_%k87392%_ _%start87387%_))
            (let ((_%k87394%_ _%k87392%_))
              (if (let () (declare (not safe)) (##fx>= _%k87394%_ '0))
                  (if (eq? _%char87376%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str87368%_ _%k87394%_)))
                      _%k87394%_
                      (_%lp87390%_
                       (let () (declare (not safe)) (##fx- _%k87394%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str87411%_ _%char87412%_)
        (let ((_%start87414%_ '#f))
          (__string-rindex__% _%str87411%_ _%char87412%_ _%start87414%_))))
    (define __string-rindex
      (lambda _g92188_
        (let ((_g92187_ (let () (declare (not safe)) (##length _g92188_))))
          (cond ((let () (declare (not safe)) (##fx= _g92187_ 2))
                 (apply __string-rindex__0 _g92188_))
                ((let () (declare (not safe)) (##fx= _g92187_ 3))
                 (apply __string-rindex__% _g92188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g92188_))))))
    (define string-split
      (lambda (_%str87337%_ _%char87338%_)
        (if (string? _%str87337%_)
            (let ((_%str87342%_ _%str87337%_))
              (if (char? _%char87338%_)
                  (let ((_%char87352%_ _%char87338%_))
                    (__string-split _%str87342%_ _%char87352%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@717.37-717.41"
                     'contract:
                     'char?
                     'value:
                     _%char87338%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.21-717.24"
               'contract:
               'string?
               'value:
               _%str87337%_)
              '#!void))))
    (define __string-split
      (lambda (_%str87278%_ _%char87279%_)
        (let* ((_%str87282%_ _%str87278%_)
               (_%char87290%_ _%char87279%_)
               (_%len87299%_
                (let () (declare (not safe)) (##string-length _%str87282%_))))
          (let _%lp87301%_ ((_%start87303%_ '0) (_%r87304%_ '()))
            (let* ((_%start87307%_ _%start87303%_)
                   (_%$e87320%_
                    (__string-index__%
                     _%str87282%_
                     _%char87290%_
                     _%start87307%_)))
              (if _%$e87320%_
                  ((lambda (_%end87323%_)
                     (let ((_%end87325%_ _%end87323%_))
                       (_%lp87301%_
                        (let () (declare (not safe)) (##fx+ _%end87325%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str87282%_
                                 _%start87307%_
                                 _%end87325%_))
                              _%r87304%_))))
                   _%$e87320%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start87307%_ _%len87299%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str87282%_
                                _%start87307%_
                                _%len87299%_)))
                       _%r87304%_)
                      (reverse! _%r87304%_))))))))
    (define string-join
      (lambda (_%strs87128%_ _%join87129%_)
        (letrec ((_%join-length87132%_
                  (lambda (_%strs87216%_ _%jlen87217%_)
                    (let _%lp87219%_ ((_%rest87221%_ _%strs87216%_)
                                      (_%len87222%_ '0))
                      (let* ((_%len87224%_ _%len87222%_)
                             (_%rest8723287240%_ _%rest87221%_)
                             (_%else8723487248%_ (lambda () '0))
                             (_%K8723687266%_
                              (lambda (_%rest87251%_ _%hd87252%_)
                                (if (string? _%hd87252%_)
                                    (let ((_%hd87254%_ _%hd87252%_))
                                      (if (pair? _%rest87251%_)
                                          (_%lp87219%_
                                           _%rest87251%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd87254%_))
                                                _%jlen87217%_
                                                _%len87224%_))
                                          (let ((__tmp92189
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd87254%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp92189 _%len87224%_))))
                                    (error '"expected string" _%hd87252%_)))))
                        (if (pair? _%rest8723287240%_)
                            (let ((_%hd8723787269%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8723287240%_)))
                                  (_%tl8723887271%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8723287240%_))))
                              (let* ((_%hd87274%_ _%hd8723787269%_)
                                     (_%rest87276%_ _%tl8723887271%_))
                                (_%K8723687266%_ _%rest87276%_ _%hd87274%_)))
                            (_%else8723487248%_)))))))
          (let* ((_%join87137%_
                  (if (char? _%join87129%_)
                      (let () (declare (not safe)) (##string _%join87129%_))
                      (if (string? _%join87129%_)
                          _%join87129%_
                          (error '"expected string or char" _%join87129%_))))
                 (_%jlen87139%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join87137%_)))
                 (_%olen87141%_
                  (_%join-length87132%_ _%strs87128%_ _%jlen87139%_))
                 (_%ostr87143%_
                  (let () (declare (not safe)) (##make-string _%olen87141%_))))
            (let _%lp87146%_ ((_%rest87148%_ _%strs87128%_) (_%k87149%_ '0))
              (let* ((_%k87152%_ _%k87149%_)
                     (_%rest8716887176%_ _%rest87148%_)
                     (_%else8717087184%_ (lambda () '""))
                     (_%K8717287204%_
                      (lambda (_%rest87187%_ _%hd87188%_)
                        (let* ((_%hd87190%_ _%hd87188%_)
                               (_%hdlen87202%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd87190%_))))
                          (if (pair? _%rest87187%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd87190%_
                                   '0
                                   _%hdlen87202%_
                                   _%ostr87143%_
                                   _%k87152%_))
                                (let ((__tmp92190
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k87152%_ _%hdlen87202%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join87137%_
                                   '0
                                   _%jlen87139%_
                                   _%ostr87143%_
                                   __tmp92190))
                                (_%lp87146%_
                                 _%rest87187%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k87152%_
                                          _%hdlen87202%_
                                          _%jlen87139%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd87190%_
                                   '0
                                   _%hdlen87202%_
                                   _%ostr87143%_
                                   _%k87152%_))
                                _%ostr87143%_))))))
                (if (pair? _%rest8716887176%_)
                    (let ((_%hd8717387207%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8716887176%_)))
                          (_%tl8717487209%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8716887176%_))))
                      (let* ((_%hd87212%_ _%hd8717387207%_)
                             (_%rest87214%_ _%tl8717487209%_))
                        (_%K8717287204%_ _%rest87214%_ _%hd87212%_)))
                    (_%else8717087184%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes87054%_ _%port87055%_ _%start87056%_ _%end87057%_)
        (if (u8vector? _%bytes87054%_)
            (let ((_%bytes87061%_ _%bytes87054%_))
              (if (input-port? _%port87055%_)
                  (let ((_%port87071%_ _%port87055%_))
                    (if ((lambda (_%o87080%_)
                           (and (fixnum? _%o87080%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o87080%_ '0))
                                (let ((__tmp92191
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes87061%_))))
                                  (declare (not safe))
                                  (##fx< _%o87080%_ __tmp92191))))
                         _%start87056%_)
                        (let ((_%start87084%_ _%start87056%_))
                          (if ((lambda (_%o87093%_)
                                 (and (fixnum? _%o87093%_)
                                      (let ((__tmp92192
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes87061%_))))
                                        (declare (not safe))
                                        (##fx<= _%start87084%_
                                                _%o87093%_
                                                __tmp92192))))
                               _%end87057%_)
                              (let ((_%end87097%_ _%end87057%_))
                                (__read-u8vector__%
                                 _%bytes87061%_
                                 _%port87071%_
                                 _%start87084%_
                                 _%end87097%_))
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
                                 _%end87057%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@782.22-782.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start87056%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@781.22-781.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port87055%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@780.22-780.27"
               'contract:
               'u8vector?
               'value:
               _%bytes87054%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes87110%_ _%port87111%_)
        (let* ((_%start87113%_ '0)
               (_%end87115%_ (u8vector-length _%bytes87110%_)))
          (read-u8vector__%
           _%bytes87110%_
           _%port87111%_
           _%start87113%_
           _%end87115%_))))
    (define read-u8vector__1
      (lambda (_%bytes87117%_ _%port87118%_ _%start87119%_)
        (let ((_%end87121%_ (u8vector-length _%bytes87117%_)))
          (read-u8vector__%
           _%bytes87117%_
           _%port87118%_
           _%start87119%_
           _%end87121%_))))
    (define read-u8vector
      (lambda _g92194_
        (let ((_g92193_ (let () (declare (not safe)) (##length _g92194_))))
          (cond ((let () (declare (not safe)) (##fx= _g92193_ 2))
                 (apply read-u8vector__0 _g92194_))
                ((let () (declare (not safe)) (##fx= _g92193_ 3))
                 (apply read-u8vector__1 _g92194_))
                ((let () (declare (not safe)) (##fx= _g92193_ 4))
                 (apply read-u8vector__% _g92194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g92194_))))))
    (define __read-u8vector__%
      (lambda (_%bytes86993%_ _%port86994%_ _%start86995%_ _%end86996%_)
        (let* ((_%bytes86999%_ _%bytes86993%_)
               (_%port87007%_ _%port86994%_)
               (_%start87015%_ _%start86995%_)
               (_%end87023%_ _%end86996%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes86999%_
           _%start87015%_
           _%end87023%_
           _%port87007%_))))
    (define __read-u8vector__0
      (lambda (_%bytes87035%_ _%port87036%_)
        (let* ((_%start87038%_ '0)
               (_%end87040%_ (u8vector-length _%bytes87035%_)))
          (__read-u8vector__%
           _%bytes87035%_
           _%port87036%_
           _%start87038%_
           _%end87040%_))))
    (define __read-u8vector__1
      (lambda (_%bytes87042%_ _%port87043%_ _%start87044%_)
        (let ((_%end87046%_ (u8vector-length _%bytes87042%_)))
          (__read-u8vector__%
           _%bytes87042%_
           _%port87043%_
           _%start87044%_
           _%end87046%_))))
    (define __read-u8vector
      (lambda _g92196_
        (let ((_g92195_ (let () (declare (not safe)) (##length _g92196_))))
          (cond ((let () (declare (not safe)) (##fx= _g92195_ 2))
                 (apply __read-u8vector__0 _g92196_))
                ((let () (declare (not safe)) (##fx= _g92195_ 3))
                 (apply __read-u8vector__1 _g92196_))
                ((let () (declare (not safe)) (##fx= _g92195_ 4))
                 (apply __read-u8vector__% _g92196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g92196_))))))
    (define write-u8vector__%
      (lambda (_%bytes86923%_ _%port86924%_ _%start86925%_ _%end86926%_)
        (if (u8vector? _%bytes86923%_)
            (let ((_%bytes86930%_ _%bytes86923%_))
              (if (output-port? _%port86924%_)
                  (let* ((_%port86940%_ _%port86924%_)
                         (_%start86949%_ _%start86925%_))
                    (if ((lambda (_%o86957%_)
                           (and (fixnum? _%o86957%_)
                                (let ((__tmp92197
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes86930%_))))
                                  (declare (not safe))
                                  (##fx<= _%start86949%_
                                          _%o86957%_
                                          __tmp92197))))
                         _%end86926%_)
                        (let ((_%end86961%_ _%end86926%_))
                          (__write-u8vector__%
                           _%bytes86930%_
                           _%port86940%_
                           _%start86949%_
                           _%end86961%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@793.23-793.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end86926%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@791.23-791.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port86924%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@790.23-790.28"
               'contract:
               'u8vector?
               'value:
               _%bytes86923%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes86974%_ _%port86975%_)
        (let* ((_%start86977%_ '0)
               (_%end86979%_ (u8vector-length _%bytes86974%_)))
          (write-u8vector__%
           _%bytes86974%_
           _%port86975%_
           _%start86977%_
           _%end86979%_))))
    (define write-u8vector__1
      (lambda (_%bytes86981%_ _%port86982%_ _%start86983%_)
        (let ((_%end86985%_ (u8vector-length _%bytes86981%_)))
          (write-u8vector__%
           _%bytes86981%_
           _%port86982%_
           _%start86983%_
           _%end86985%_))))
    (define write-u8vector
      (lambda _g92199_
        (let ((_g92198_ (let () (declare (not safe)) (##length _g92199_))))
          (cond ((let () (declare (not safe)) (##fx= _g92198_ 2))
                 (apply write-u8vector__0 _g92199_))
                ((let () (declare (not safe)) (##fx= _g92198_ 3))
                 (apply write-u8vector__1 _g92199_))
                ((let () (declare (not safe)) (##fx= _g92198_ 4))
                 (apply write-u8vector__% _g92199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g92199_))))))
    (define __write-u8vector__%
      (lambda (_%bytes86862%_ _%port86863%_ _%start86864%_ _%end86865%_)
        (let* ((_%bytes86868%_ _%bytes86862%_)
               (_%port86876%_ _%port86863%_)
               (_%start86884%_ _%start86864%_)
               (_%end86892%_ _%end86865%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes86868%_
           _%start86884%_
           _%end86892%_
           _%port86876%_))))
    (define __write-u8vector__0
      (lambda (_%bytes86904%_ _%port86905%_)
        (let* ((_%start86907%_ '0)
               (_%end86909%_ (u8vector-length _%bytes86904%_)))
          (__write-u8vector__%
           _%bytes86904%_
           _%port86905%_
           _%start86907%_
           _%end86909%_))))
    (define __write-u8vector__1
      (lambda (_%bytes86911%_ _%port86912%_ _%start86913%_)
        (let ((_%end86915%_ (u8vector-length _%bytes86911%_)))
          (__write-u8vector__%
           _%bytes86911%_
           _%port86912%_
           _%start86913%_
           _%end86915%_))))
    (define __write-u8vector
      (lambda _g92201_
        (let ((_g92200_ (let () (declare (not safe)) (##length _g92201_))))
          (cond ((let () (declare (not safe)) (##fx= _g92200_ 2))
                 (apply __write-u8vector__0 _g92201_))
                ((let () (declare (not safe)) (##fx= _g92200_ 3))
                 (apply __write-u8vector__1 _g92201_))
                ((let () (declare (not safe)) (##fx= _g92200_ 4))
                 (apply __write-u8vector__% _g92201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g92201_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag86830%_
               _%dbg-exprs86831%_
               _%dbg-thunks86832%_
               _%expr86833%_
               _%thunk86834%_)
        (letrec ((_%o86836%_ (current-output-port))
                 (_%e86837%_ (current-error-port))
                 (_%p86838%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f86839%_
                  (lambda ()
                    (force-output _%o86836%_)
                    (force-output _%e86837%_)))
                 (_%d86840%_
                  (lambda (_%x86847%_) (display _%x86847%_ _%e86837%_)))
                 (_%w86841%_
                  (lambda (_%x86849%_) (_%p86838%_ _%x86849%_ _%e86837%_)))
                 (_%n86842%_ (lambda () (newline _%e86837%_)))
                 (_%v86843%_
                  (lambda (_%l86852%_)
                    (for-each
                     (lambda (_%x86854%_)
                       (_%d86840%_ '" ")
                       (_%w86841%_ _%x86854%_))
                     _%l86852%_)
                    (_%n86842%_)))
                 (_%x86844%_
                  (lambda (_%expr86856%_ _%thunk86857%_)
                    (_%f86839%_)
                    (_%d86840%_ '"  ")
                    (_%w86841%_ _%expr86856%_)
                    (_%d86840%_ '" =>")
                    (call-with-values
                     _%thunk86857%_
                     (lambda _%x86859%_
                       (_%v86843%_ _%x86859%_)
                       (_%f86839%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x86859%_)))))))
          (if _%tag86830%_
              (begin
                (if (eq? _%tag86830%_ '#!void)
                    '#!void
                    (begin
                      (_%f86839%_)
                      (_%d86840%_ _%tag86830%_)
                      (_%n86842%_)))
                (for-each _%x86844%_ _%dbg-exprs86831%_ _%dbg-thunks86832%_)
                (if _%thunk86834%_
                    (_%x86844%_ _%expr86833%_ _%thunk86834%_)
                    '#!void))
              (if _%thunk86834%_ (_%thunk86834%_) '#!void)))))))
