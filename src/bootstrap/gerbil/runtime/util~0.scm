(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1769382892)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args98298%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args98298%_))
          (newline))))
    (define display*
      (lambda _%args98295%_
        (let () (declare (not safe)) (##for-each display _%args98295%_))))
    (define file-newer?
      (lambda (_%file198270%_ _%file298271%_)
        (if (string? _%file198270%_)
            (let ((_%file198275%_ _%file198270%_))
              (if (string? _%file298271%_)
                  (let ((_%file298285%_ _%file298271%_))
                    (__file-newer? _%file198275%_ _%file298285%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@97.20-97.25"
                     'contract:
                     'string?
                     'value:
                     _%file298271%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@96.20-96.25"
               'contract:
               'string?
               'value:
               _%file198270%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file198218%_ _%file298219%_)
        (let* ((_%file198222%_ _%file198218%_) (_%file298230%_ _%file298219%_))
          (letrec ((_%modification-time98239%_
                    (lambda (_%file98258%_)
                      (let ((_%file98261%_ _%file98258%_))
                        (_%__modification-time98240%_ _%file98261%_))))
                   (_%__modification-time98240%_
                    (lambda (_%file98242%_)
                      (let* ((_%file98245%_ _%file98242%_)
                             (__tmp100060
                              (let ((__tmp100061
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file98245%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp100061))))
                        (declare (not safe))
                        (##time->seconds __tmp100060)))))
            (let ((__tmp100063 (_%__modification-time98240%_ _%file198222%_))
                  (__tmp100062 (_%__modification-time98240%_ _%file298230%_)))
              (declare (not safe))
              (##fl> __tmp100063 __tmp100062))))))
    (define create-directory*__%
      (lambda (_%dir98183%_ _%perms98184%_)
        (if (string? _%dir98183%_)
            (let ((_%dir98188%_ _%dir98183%_))
              (if (fixnum? _%perms98184%_)
                  (let ((_%perms98198%_ _%perms98184%_))
                    (__create-directory*__% _%dir98188%_ _%perms98198%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@108.26-108.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms98184%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@107.26-107.29"
               'contract:
               'string?
               'value:
               _%dir98183%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir98211%_)
        (let ((_%perms98213%_ '493))
          (create-directory*__% _%dir98211%_ _%perms98213%_))))
    (define create-directory*
      (lambda _g100064_
        (let ((_g100065_ (let () (declare (not safe)) (##length _g100064_))))
          (cond ((let () (declare (not safe)) (##fx= _g100065_ 1))
                 (apply create-directory*__0 _g100064_))
                ((let () (declare (not safe)) (##fx= _g100065_ 2))
                 (apply create-directory*__% _g100064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g100064_))))))
    (define __create-directory*__%
      (lambda (_%dir98107%_ _%perms98108%_)
        (let* ((_%dir98111%_ _%dir98107%_) (_%perms98119%_ _%perms98108%_))
          (letrec ((_%create198128%_
                    (lambda (_%path98160%_)
                      (let ((_%path98163%_ _%path98160%_))
                        (_%__create198129%_ _%path98163%_))))
                   (_%__create198129%_
                    (lambda (_%path98141%_)
                      (let ((_%path98144%_ _%path98141%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path98144%_))
                            (if (eq? (file-type _%path98144%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path98144%_))
                            (if _%perms98119%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path98144%_
                                             (cons 'permissions:
                                                   (cons _%perms98119%_
                                                         '())))))
                                (create-directory _%path98144%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir98111%_))
                '#!void
                (let _%lp98131%_ ((_%start98133%_ '0))
                  (let ((_%$e98135%_
                         (__string-index__% _%dir98111%_ '#\/ _%start98133%_)))
                    (if _%$e98135%_
                        ((lambda (_%x98138%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x98138%_ '0))
                               (_%__create198129%_
                                (substring _%dir98111%_ '0 _%x98138%_))
                               '#!void)
                           (_%lp98131%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x98138%_ '1))))
                         _%$e98135%_)
                        (_%__create198129%_ _%dir98111%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir98175%_)
        (let ((_%perms98177%_ '493))
          (__create-directory*__% _%dir98175%_ _%perms98177%_))))
    (define __create-directory*
      (lambda _g100066_
        (let ((_g100067_ (let () (declare (not safe)) (##length _g100066_))))
          (cond ((let () (declare (not safe)) (##fx= _g100067_ 1))
                 (apply __create-directory*__0 _g100066_))
                ((let () (declare (not safe)) (##fx= _g100067_ 2))
                 (apply __create-directory*__% _g100066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g100066_))))))
    (define move-file__%
      (lambda (_%src98058%_ _%dest98059%_ _%replace?98060%_)
        (if (string? _%src98058%_)
            (let ((_%src98064%_ _%src98058%_))
              (if (string? _%dest98059%_)
                  (let ((_%dest98074%_ _%dest98059%_))
                    (if (boolean? _%replace?98060%_)
                        (let ((_%replace?98084%_ _%replace?98060%_))
                          (__move-file__%
                           _%src98064%_
                           _%dest98074%_
                           _%replace?98084%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@132.51-132.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?98060%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@132.34-132.38"
                     'contract:
                     'string?
                     'value:
                     _%dest98059%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@132.18-132.21"
               'contract:
               'string?
               'value:
               _%src98058%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src98097%_ _%dest98098%_)
        (let ((_%replace?98100%_ '#t))
          (move-file__% _%src98097%_ _%dest98098%_ _%replace?98100%_))))
    (define move-file
      (lambda _g100068_
        (let ((_g100069_ (let () (declare (not safe)) (##length _g100068_))))
          (cond ((let () (declare (not safe)) (##fx= _g100069_ 2))
                 (apply move-file__0 _g100068_))
                ((let () (declare (not safe)) (##fx= _g100069_ 3))
                 (apply move-file__% _g100068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g100068_))))))
    (define __move-file__%
      (lambda (_%src98001%_ _%dest98002%_ _%replace?98003%_)
        (let* ((_%src98006%_ _%src98001%_)
               (_%dest98014%_ _%dest98002%_)
               (_%replace?98022%_ _%replace?98003%_))
          (letrec ((_%force-move-it98031%_
                    (lambda ()
                      (let ((_%tmp98037%_
                             (if _%replace?98022%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest98014%_))
                                     (let ((__tmp100070
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest98014%_
                                        '"."
                                        __tmp100070))
                                     '#f)
                                 '#f)))
                        (if _%tmp98037%_
                            (rename-file _%dest98014%_ _%tmp98037%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e98039%_)
                           (if _%tmp98037%_
                               (rename-file _%tmp98037%_ _%dest98014%_ '#t)
                               '#!void)
                           (raise _%e98039%_))
                         (lambda ()
                           (let ((_%fi98042%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src98006%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi98042%_))
                                      'symbolic-link)
                                 (let ((__tmp100071
                                        (path-normalize _%src98006%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp100071
                                    _%dest98014%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file _%src98006%_ _%dest98014%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src98006%_))
                           (if _%tmp98037%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp98037%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e98033%_)
               (if (let () (declare (not safe)) (##file-exists? _%src98006%_))
                   (_%force-move-it98031%_)
                   (raise _%e98033%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src98006%_
                  _%dest98014%_
                  _%replace?98022%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src98048%_ _%dest98049%_)
        (let ((_%replace?98051%_ '#t))
          (__move-file__% _%src98048%_ _%dest98049%_ _%replace?98051%_))))
    (define __move-file
      (lambda _g100072_
        (let ((_g100073_ (let () (declare (not safe)) (##length _g100072_))))
          (cond ((let () (declare (not safe)) (##fx= _g100073_ 2))
                 (apply __move-file__0 _g100072_))
                ((let () (declare (not safe)) (##fx= _g100073_ 3))
                 (apply __move-file__% _g100072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g100072_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore97997%_ '#t))
    (define true? (lambda (_%obj97994%_) (eq? _%obj97994%_ '#t)))
    (define false (lambda _%ignore97991%_ '#f))
    (define void (lambda _%ignore97988%_ '#!void))
    (define void? (lambda (_%obj97985%_) (eq? _%obj97985%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj97982%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj97982%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj97979%_) (eq? _%obj97979%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj97976%_) (eq? _%obj97976%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj97973%_) (eq? _%obj97973%_ '#!optional)))
    (define immediate?
      (lambda (_%obj97970%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj97970%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj97967%_)
        (if (fixnum? _%obj97967%_)
            (let () (declare (not safe)) (##fx>= _%obj97967%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj97961%_)
        (let ((_%$e97964%_ (pair? _%obj97961%_)))
          (if _%$e97964%_ _%$e97964%_ (null? _%obj97961%_)))))
    (define values-count
      (lambda (_%obj97958%_)
        (if (let () (declare (not safe)) (##values? _%obj97958%_))
            (let () (declare (not safe)) (##values-length _%obj97958%_))
            '1)))
    (define values-ref
      (lambda (_%obj97943%_ _%k97944%_)
        (if (fixnum? _%k97944%_)
            (let ((_%k97948%_ _%k97944%_))
              (__values-ref _%obj97943%_ _%k97948%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@266.23-266.24"
               'contract:
               'fixnum?
               'value:
               _%k97944%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj97930%_ _%k97931%_)
        (let ((_%k97934%_ _%k97931%_))
          (if (let () (declare (not safe)) (##values? _%obj97930%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj97930%_ _%k97934%_))
              _%obj97930%_))))
    (define values->list
      (lambda (_%obj97927%_)
        (if (let () (declare (not safe)) (##values? _%obj97927%_))
            (let () (declare (not safe)) (##values->list _%obj97927%_))
            (list _%obj97927%_))))
    (define foldl1
      (lambda (_%f97911%_ _%iv97912%_ _%lst97913%_)
        (if (procedure? _%f97911%_)
            (let ((_%f97917%_ _%f97911%_))
              (__foldl1 _%f97917%_ _%iv97912%_ _%lst97913%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@289.15-289.16"
               'contract:
               'procedure?
               'value:
               _%f97911%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f97859%_ _%iv97860%_ _%lst97861%_)
        (let ((_%f97864%_ _%f97859%_))
          (let _%lp97873%_ ((_%rest97875%_ _%lst97861%_)
                            (_%r97876%_ _%iv97860%_))
            (let* ((_%rest9787797885%_ _%rest97875%_)
                   (_%else9787997893%_ (lambda () _%r97876%_))
                   (_%K9788197899%_
                    (lambda (_%rest97896%_ _%x97897%_)
                      (_%lp97873%_
                       _%rest97896%_
                       (let ()
                         (declare (not safe))
                         (_%f97864%_ _%x97897%_ _%r97876%_))))))
              (if (pair? _%rest9787797885%_)
                  (let ((_%hd9788297902%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9787797885%_)))
                        (_%tl9788397904%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9787797885%_))))
                    (let* ((_%x97907%_ _%hd9788297902%_)
                           (_%rest97909%_ _%tl9788397904%_))
                      (_%K9788197899%_ _%rest97909%_ _%x97907%_)))
                  (_%else9787997893%_)))))))
    (define foldl2
      (lambda (_%f97842%_ _%iv97843%_ _%lst197844%_ _%lst297845%_)
        (if (procedure? _%f97842%_)
            (let ((_%f97849%_ _%f97842%_))
              (__foldl2 _%f97849%_ _%iv97843%_ _%lst197844%_ _%lst297845%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@296.15-296.16"
               'contract:
               'procedure?
               'value:
               _%f97842%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f97755%_ _%iv97756%_ _%lst197757%_ _%lst297758%_)
        (let ((_%f97761%_ _%f97755%_))
          (let _%lp97770%_ ((_%rest197772%_ _%lst197757%_)
                            (_%rest297773%_ _%lst297758%_)
                            (_%r97774%_ _%iv97756%_))
            (let* ((_%rest19777597783%_ _%rest197772%_)
                   (_%else9777797791%_ (lambda () _%r97774%_))
                   (_%K9777997830%_
                    (lambda (_%rest197794%_ _%x197795%_)
                      (let* ((_%rest29779697804%_ _%rest297773%_)
                             (_%else9779897812%_ (lambda () _%r97774%_))
                             (_%K9780097818%_
                              (lambda (_%rest297815%_ _%x297816%_)
                                (_%lp97770%_
                                 _%rest197794%_
                                 _%rest297815%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f97761%_
                                    _%x197795%_
                                    _%x297816%_
                                    _%r97774%_))))))
                        (if (pair? _%rest29779697804%_)
                            (let ((_%hd9780197821%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29779697804%_)))
                                  (_%tl9780297823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29779697804%_))))
                              (let* ((_%x297826%_ _%hd9780197821%_)
                                     (_%rest297828%_ _%tl9780297823%_))
                                (_%K9780097818%_ _%rest297828%_ _%x297826%_)))
                            (_%else9779897812%_))))))
              (if (pair? _%rest19777597783%_)
                  (let ((_%hd9778097833%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19777597783%_)))
                        (_%tl9778197835%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19777597783%_))))
                    (let* ((_%x197838%_ _%hd9778097833%_)
                           (_%rest197840%_ _%tl9778197835%_))
                      (_%K9777997830%_ _%rest197840%_ _%x197838%_)))
                  (_%else9777797791%_)))))))
    (define foldl
      (lambda _g100074_
        (let ((_g100075_ (let () (declare (not safe)) (##length _g100074_))))
          (cond ((let () (declare (not safe)) (##fx= _g100075_ 3))
                 (apply foldl1 _g100074_))
                ((let () (declare (not safe)) (##fx= _g100075_ 4))
                 (apply foldl2 _g100074_))
                ((let () (declare (not safe)) (##fx>= _g100075_ 4))
                 (apply foldl* _g100074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g100074_))))))
    (define foldl*
      (lambda (_%f97724%_ _%iv97725%_ . _%rest97726%_)
        (if (procedure? _%f97724%_)
            (let ((_%f97730%_ _%f97724%_))
              (declare (not safe))
              (##apply __foldl* _%f97730%_ _%iv97725%_ _%rest97726%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@314.15-314.16"
               'contract:
               'procedure?
               'value:
               _%f97724%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f97702%_ _%iv97703%_ . _%rest97704%_)
        (let ((_%f97707%_ _%f97702%_))
          (let _%recur97716%_ ((_%iv97718%_ _%iv97703%_)
                               (_%rest97719%_ _%rest97704%_))
            (if (__andmap1 pair? _%rest97719%_)
                (_%recur97716%_
                 (let ((__tmp100076
                        (__foldr1
                         (lambda (_%xs97721%_ _%r97722%_)
                           (cons (car _%xs97721%_) _%r97722%_))
                         (list _%iv97718%_)
                         _%rest97719%_)))
                   (declare (not safe))
                   (##apply _%f97707%_ __tmp100076))
                 (map cdr _%rest97719%_))
                _%iv97718%_)))))
    (define foldr1
      (lambda (_%f97686%_ _%iv97687%_ _%lst97688%_)
        (if (procedure? _%f97686%_)
            (let ((_%f97692%_ _%f97686%_))
              (__foldr1 _%f97692%_ _%iv97687%_ _%lst97688%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@324.15-324.16"
               'contract:
               'procedure?
               'value:
               _%f97686%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f97635%_ _%iv97636%_ _%lst97637%_)
        (let ((_%f97640%_ _%f97635%_))
          (let _%recur97649%_ ((_%rest97651%_ _%lst97637%_))
            (let* ((_%rest9765297660%_ _%rest97651%_)
                   (_%else9765497668%_ (lambda () _%iv97636%_))
                   (_%K9765697674%_
                    (lambda (_%rest97671%_ _%x97672%_)
                      (let ((__tmp100077 (_%recur97649%_ _%rest97671%_)))
                        (declare (not safe))
                        (_%f97640%_ _%x97672%_ __tmp100077)))))
              (if (pair? _%rest9765297660%_)
                  (let ((_%hd9765797677%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9765297660%_)))
                        (_%tl9765897679%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9765297660%_))))
                    (let* ((_%x97682%_ _%hd9765797677%_)
                           (_%rest97684%_ _%tl9765897679%_))
                      (_%K9765697674%_ _%rest97684%_ _%x97682%_)))
                  (_%else9765497668%_)))))))
    (define foldr2
      (lambda (_%f97618%_ _%iv97619%_ _%lst197620%_ _%lst297621%_)
        (if (procedure? _%f97618%_)
            (let ((_%f97625%_ _%f97618%_))
              (__foldr2 _%f97625%_ _%iv97619%_ _%lst197620%_ _%lst297621%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@331.15-331.16"
               'contract:
               'procedure?
               'value:
               _%f97618%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f97532%_ _%iv97533%_ _%lst197534%_ _%lst297535%_)
        (let ((_%f97538%_ _%f97532%_))
          (let _%recur97547%_ ((_%rest197549%_ _%lst197534%_)
                               (_%rest297550%_ _%lst297535%_))
            (let* ((_%rest19755197559%_ _%rest197549%_)
                   (_%else9755397567%_ (lambda () _%iv97533%_))
                   (_%K9755597606%_
                    (lambda (_%rest197570%_ _%x197571%_)
                      (let* ((_%rest29757297580%_ _%rest297550%_)
                             (_%else9757497588%_ (lambda () _%iv97533%_))
                             (_%K9757697594%_
                              (lambda (_%rest297591%_ _%x297592%_)
                                (let ((__tmp100078
                                       (_%recur97547%_
                                        _%rest197570%_
                                        _%rest297591%_)))
                                  (declare (not safe))
                                  (_%f97538%_
                                   _%x197571%_
                                   _%x297592%_
                                   __tmp100078)))))
                        (if (pair? _%rest29757297580%_)
                            (let ((_%hd9757797597%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29757297580%_)))
                                  (_%tl9757897599%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29757297580%_))))
                              (let* ((_%x297602%_ _%hd9757797597%_)
                                     (_%rest297604%_ _%tl9757897599%_))
                                (_%K9757697594%_ _%rest297604%_ _%x297602%_)))
                            (_%else9757497588%_))))))
              (if (pair? _%rest19755197559%_)
                  (let ((_%hd9755697609%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19755197559%_)))
                        (_%tl9755797611%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19755197559%_))))
                    (let* ((_%x197614%_ _%hd9755697609%_)
                           (_%rest197616%_ _%tl9755797611%_))
                      (_%K9755597606%_ _%rest197616%_ _%x197614%_)))
                  (_%else9755397567%_)))))))
    (define foldr
      (lambda _g100079_
        (let ((_g100080_ (let () (declare (not safe)) (##length _g100079_))))
          (cond ((let () (declare (not safe)) (##fx= _g100080_ 3))
                 (apply foldr1 _g100079_))
                ((let () (declare (not safe)) (##fx= _g100080_ 4))
                 (apply foldr2 _g100079_))
                ((let () (declare (not safe)) (##fx>= _g100080_ 4))
                 (apply foldr* _g100079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g100079_))))))
    (define foldr*
      (lambda (_%f97501%_ _%iv97502%_ . _%rest97503%_)
        (if (procedure? _%f97501%_)
            (let ((_%f97507%_ _%f97501%_))
              (declare (not safe))
              (##apply __foldr* _%f97507%_ _%iv97502%_ _%rest97503%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@349.15-349.16"
               'contract:
               'procedure?
               'value:
               _%f97501%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f97480%_ _%iv97481%_ . _%rest97482%_)
        (let ((_%f97485%_ _%f97480%_))
          (let _%recur97494%_ ((_%rest97496%_ _%rest97482%_))
            (if (__andmap1 pair? _%rest97496%_)
                (let ((__tmp100081
                       (__foldr1
                        (lambda (_%xs97498%_ _%r97499%_)
                          (cons (car _%xs97498%_) _%r97499%_))
                        (list (_%recur97494%_ (map cdr _%rest97496%_)))
                        _%rest97496%_)))
                  (declare (not safe))
                  (##apply _%f97485%_ __tmp100081))
                _%iv97481%_)))))
    (define remove-nulls!
      (lambda (_%l97367%_)
        (let* ((_%l9736897381%_ _%l97367%_)
               (_%E9737297385%_
                (lambda ()
                  (error '"No clause matching"
                         _%l9736897381%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K9737797470%_
                 (lambda (_%r97468%_) (remove-nulls! _%r97468%_)))
                (_%K9737497457%_
                 (lambda (_%r97397%_)
                   (let _%loop97399%_ ((_%l97401%_ _%l97367%_)
                                       (_%r97402%_ _%r97397%_))
                     (let* ((_%r9740397416%_ _%r97402%_)
                            (_%E9740797420%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r9740397416%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K9741297447%_
                              (lambda (_%rr97445%_)
                                (let ((__tmp100083 _%l97401%_)
                                      (__tmp100082
                                       (remove-nulls! _%rr97445%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp100083 __tmp100082))))
                             (_%K9740997434%_
                              (lambda (_%rr97432%_)
                                (_%loop97399%_ _%r97402%_ _%rr97432%_)))
                             (_%K9740897425%_ (lambda () '#!void)))
                         (if (pair? _%r9740397416%_)
                             (let ((_%tl9741497452%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r9740397416%_)))
                                   (_%hd9741397450%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r9740397416%_))))
                               (if (null? _%hd9741397450%_)
                                   (let ((_%rr97455%_ _%tl9741497452%_))
                                     (_%K9741297447%_ _%rr97455%_))
                                   (let ((_%rr97440%_ _%tl9741497452%_))
                                     (_%K9740997434%_ _%rr97440%_))))
                             '#!void))))
                   _%l97367%_))
                (_%K9737397390%_ (lambda () _%l97367%_)))
            (if (pair? _%l9736897381%_)
                (let ((_%tl9737997475%_
                       (let () (declare (not safe)) (##cdr _%l9736897381%_)))
                      (_%hd9737897473%_
                       (let () (declare (not safe)) (##car _%l9736897381%_))))
                  (if (null? _%hd9737897473%_)
                      (let ((_%r97478%_ _%tl9737997475%_))
                        (remove-nulls! _%r97478%_))
                      (let ((_%r97463%_ _%tl9737997475%_))
                        (_%K9737497457%_ _%r97463%_))))
                (_%K9737397390%_))))))
    (define append1!
      (lambda (_%l97352%_ _%x97353%_)
        (let ((_%l297356%_ (cons _%x97353%_ '())))
          (if (pair? _%l97352%_)
              (let ((_%l97358%_ _%l97352%_))
                (let ((__tmp100084
                       (let () (declare (not safe)) (##last-pair _%l97358%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp100084 _%l297356%_))
                _%l97358%_)
              _%l297356%_))))
    (define append-reverse-until
      (lambda (_%pred97336%_ _%rhead97337%_ _%tail97338%_)
        (if (procedure? _%pred97336%_)
            (let ((_%pred97342%_ _%pred97336%_))
              (__append-reverse-until
               _%pred97342%_
               _%rhead97337%_
               _%tail97338%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@389.29-389.33"
               'contract:
               'procedure?
               'value:
               _%pred97336%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred97278%_ _%rhead97279%_ _%tail97280%_)
        (let ((_%pred97283%_ _%pred97278%_))
          (let _%loop97292%_ ((_%rhead97294%_ _%rhead97279%_)
                              (_%tail97295%_ _%tail97280%_))
            (let* ((_%rhead9729797306%_ _%rhead97294%_)
                   (_%E9730097310%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead9729797306%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K9730497333%_ (lambda () (values '() _%tail97295%_)))
                    (_%K9730197317%_
                     (lambda (_%r97314%_ _%a97315%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred97283%_ _%a97315%_))
                           (values _%rhead97294%_ _%tail97295%_)
                           (_%loop97292%_
                            _%r97314%_
                            (cons _%a97315%_ _%tail97295%_))))))
                (let ((_%try-match9729997329%_
                       (lambda ()
                         (if (pair? _%rhead9729797306%_)
                             (let ((_%tl9730397322%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead9729797306%_)))
                                   (_%hd9730297320%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead9729797306%_))))
                               (let ((_%a97325%_ _%hd9730297320%_)
                                     (_%r97327%_ _%tl9730397322%_))
                                 (_%K9730197317%_ _%r97327%_ _%a97325%_)))
                             (_%E9730097310%_)))))
                  (if (null? _%rhead9729797306%_)
                      (_%K9730497333%_)
                      (_%try-match9729997329%_)))))))))
    (define andmap1
      (lambda (_%f97263%_ _%lst97264%_)
        (if (procedure? _%f97263%_)
            (let ((_%f97268%_ _%f97263%_)) (__andmap1 _%f97268%_ _%lst97264%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@400.16-400.17"
               'contract:
               'procedure?
               'value:
               _%f97263%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f97212%_ _%lst97213%_)
        (let ((_%f97216%_ _%f97212%_))
          (let _%lp97225%_ ((_%rest97227%_ _%lst97213%_))
            (let* ((_%rest9722997237%_ _%rest97227%_)
                   (_%else9723197245%_ (lambda () '#t))
                   (_%K9723397251%_
                    (lambda (_%rest97248%_ _%x97249%_)
                      (if (let () (declare (not safe)) (_%f97216%_ _%x97249%_))
                          (_%lp97225%_ _%rest97248%_)
                          '#f))))
              (if (pair? _%rest9722997237%_)
                  (let ((_%hd9723497254%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9722997237%_)))
                        (_%tl9723597256%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9722997237%_))))
                    (let* ((_%x97259%_ _%hd9723497254%_)
                           (_%rest97261%_ _%tl9723597256%_))
                      (_%K9723397251%_ _%rest97261%_ _%x97259%_)))
                  (_%else9723197245%_)))))))
    (define andmap2
      (lambda (_%f97196%_ _%lst197197%_ _%lst297198%_)
        (if (procedure? _%f97196%_)
            (let ((_%f97202%_ _%f97196%_))
              (__andmap2 _%f97202%_ _%lst197197%_ _%lst297198%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@409.16-409.17"
               'contract:
               'procedure?
               'value:
               _%f97196%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f97110%_ _%lst197111%_ _%lst297112%_)
        (let ((_%f97115%_ _%f97110%_))
          (let _%lp97124%_ ((_%rest197126%_ _%lst197111%_)
                            (_%rest297127%_ _%lst297112%_))
            (let* ((_%rest19712997137%_ _%rest197126%_)
                   (_%else9713197145%_ (lambda () '#t))
                   (_%K9713397184%_
                    (lambda (_%rest197148%_ _%x197149%_)
                      (let* ((_%rest29715097158%_ _%rest297127%_)
                             (_%else9715297166%_ (lambda () '#t))
                             (_%K9715497172%_
                              (lambda (_%rest297169%_ _%x297170%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f97115%_ _%x197149%_ _%x297170%_))
                                    (_%lp97124%_ _%rest197148%_ _%rest297169%_)
                                    '#f))))
                        (if (pair? _%rest29715097158%_)
                            (let ((_%hd9715597175%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29715097158%_)))
                                  (_%tl9715697177%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29715097158%_))))
                              (let* ((_%x297180%_ _%hd9715597175%_)
                                     (_%rest297182%_ _%tl9715697177%_))
                                (_%K9715497172%_ _%rest297182%_ _%x297180%_)))
                            (_%else9715297166%_))))))
              (if (pair? _%rest19712997137%_)
                  (let ((_%hd9713497187%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19712997137%_)))
                        (_%tl9713597189%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19712997137%_))))
                    (let* ((_%x197192%_ _%hd9713497187%_)
                           (_%rest197194%_ _%tl9713597189%_))
                      (_%K9713397184%_ _%rest197194%_ _%x197192%_)))
                  (_%else9713197145%_)))))))
    (define andmap
      (lambda _g100085_
        (let ((_g100086_ (let () (declare (not safe)) (##length _g100085_))))
          (cond ((let () (declare (not safe)) (##fx= _g100086_ 2))
                 (apply andmap1 _g100085_))
                ((let () (declare (not safe)) (##fx= _g100086_ 3))
                 (apply andmap2 _g100085_))
                ((let () (declare (not safe)) (##fx>= _g100086_ 3))
                 (apply andmap* _g100085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g100085_))))))
    (define andmap*
      (lambda (_%f97083%_ . _%rest97084%_)
        (if (procedure? _%f97083%_)
            (let ((_%f97088%_ _%f97083%_))
              (declare (not safe))
              (##apply __andmap* _%f97088%_ _%rest97084%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@429.16-429.17"
               'contract:
               'procedure?
               'value:
               _%f97083%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f97065%_ . _%rest97066%_)
        (let ((_%f97069%_ _%f97065%_))
          (let _%recur97078%_ ((_%rest97080%_ _%rest97066%_))
            (if (__andmap1 pair? _%rest97080%_)
                (if (let ((__tmp100087 (map car _%rest97080%_)))
                      (declare (not safe))
                      (##apply _%f97069%_ __tmp100087))
                    (_%recur97078%_ (map cdr _%rest97080%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f97050%_ _%lst97051%_)
        (if (procedure? _%f97050%_)
            (let ((_%f97055%_ _%f97050%_)) (__ormap1 _%f97055%_ _%lst97051%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.15-438.16"
               'contract:
               'procedure?
               'value:
               _%f97050%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f96997%_ _%lst96998%_)
        (let ((_%f97001%_ _%f96997%_))
          (let _%lp97010%_ ((_%rest97012%_ _%lst96998%_))
            (let* ((_%rest9701397021%_ _%rest97012%_)
                   (_%else9701597029%_ (lambda () '#f))
                   (_%K9701797038%_
                    (lambda (_%rest97032%_ _%x97033%_)
                      (let ((_%$e97035%_
                             (let ()
                               (declare (not safe))
                               (_%f97001%_ _%x97033%_))))
                        (if _%$e97035%_
                            _%$e97035%_
                            (_%lp97010%_ _%rest97032%_))))))
              (if (pair? _%rest9701397021%_)
                  (let ((_%hd9701897041%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9701397021%_)))
                        (_%tl9701997043%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9701397021%_))))
                    (let* ((_%x97046%_ _%hd9701897041%_)
                           (_%rest97048%_ _%tl9701997043%_))
                      (_%K9701797038%_ _%rest97048%_ _%x97046%_)))
                  (_%else9701597029%_)))))))
    (define ormap2
      (lambda (_%f96981%_ _%lst196982%_ _%lst296983%_)
        (if (procedure? _%f96981%_)
            (let ((_%f96987%_ _%f96981%_))
              (__ormap2 _%f96987%_ _%lst196982%_ _%lst296983%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@445.15-445.16"
               'contract:
               'procedure?
               'value:
               _%f96981%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f96893%_ _%lst196894%_ _%lst296895%_)
        (let ((_%f96898%_ _%f96893%_))
          (let _%lp96907%_ ((_%rest196909%_ _%lst196894%_)
                            (_%rest296910%_ _%lst296895%_))
            (let* ((_%rest19691196919%_ _%rest196909%_)
                   (_%else9691396927%_ (lambda () '#f))
                   (_%K9691596969%_
                    (lambda (_%rest196930%_ _%x196931%_)
                      (let* ((_%rest29693296940%_ _%rest296910%_)
                             (_%else9693496948%_ (lambda () '#f))
                             (_%K9693696957%_
                              (lambda (_%rest296951%_ _%x296952%_)
                                (let ((_%$e96954%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f96898%_
                                          _%x196931%_
                                          _%x296952%_))))
                                  (if _%$e96954%_
                                      _%$e96954%_
                                      (_%lp96907%_
                                       _%rest196930%_
                                       _%rest296951%_))))))
                        (if (pair? _%rest29693296940%_)
                            (let ((_%hd9693796960%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29693296940%_)))
                                  (_%tl9693896962%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29693296940%_))))
                              (let* ((_%x296965%_ _%hd9693796960%_)
                                     (_%rest296967%_ _%tl9693896962%_))
                                (_%K9693696957%_ _%rest296967%_ _%x296965%_)))
                            (_%else9693496948%_))))))
              (if (pair? _%rest19691196919%_)
                  (let ((_%hd9691696972%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19691196919%_)))
                        (_%tl9691796974%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19691196919%_))))
                    (let* ((_%x196977%_ _%hd9691696972%_)
                           (_%rest196979%_ _%tl9691796974%_))
                      (_%K9691596969%_ _%rest196979%_ _%x196977%_)))
                  (_%else9691396927%_)))))))
    (define ormap
      (lambda _g100088_
        (let ((_g100089_ (let () (declare (not safe)) (##length _g100088_))))
          (cond ((let () (declare (not safe)) (##fx= _g100089_ 2))
                 (apply ormap1 _g100088_))
                ((let () (declare (not safe)) (##fx= _g100089_ 3))
                 (apply ormap2 _g100088_))
                ((let () (declare (not safe)) (##fx>= _g100089_ 3))
                 (apply ormap* _g100088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g100088_))))))
    (define ormap*
      (lambda (_%f96866%_ . _%rest96867%_)
        (if (procedure? _%f96866%_)
            (let ((_%f96871%_ _%f96866%_))
              (declare (not safe))
              (##apply __ormap* _%f96871%_ _%rest96867%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@463.15-463.16"
               'contract:
               'procedure?
               'value:
               _%f96866%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f96846%_ . _%rest96847%_)
        (let ((_%f96850%_ _%f96846%_))
          (let _%recur96859%_ ((_%rest96861%_ _%rest96847%_))
            (if (__andmap1 pair? _%rest96861%_)
                (let ((_%$e96863%_
                       (let ((__tmp100090 (map car _%rest96861%_)))
                         (declare (not safe))
                         (##apply _%f96850%_ __tmp100090))))
                  (if _%$e96863%_
                      _%$e96863%_
                      (_%recur96859%_ (map cdr _%rest96861%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f96831%_ _%lst96832%_)
        (if (procedure? _%f96831%_)
            (let ((_%f96836%_ _%f96831%_))
              (__filter-map1 _%f96836%_ _%lst96832%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@470.20-470.21"
               'contract:
               'procedure?
               'value:
               _%f96831%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f96774%_ _%lst96775%_)
        (let ((_%f96778%_ _%f96774%_))
          (let _%recur96787%_ ((_%rest96789%_ _%lst96775%_))
            (let* ((_%rest9679196799%_ _%rest96789%_)
                   (_%else9679396807%_ (lambda () '()))
                   (_%K9679596819%_
                    (lambda (_%rest96810%_ _%x96811%_)
                      (let ((_%$e96813%_
                             (let ()
                               (declare (not safe))
                               (_%f96778%_ _%x96811%_))))
                        (if _%$e96813%_
                            ((lambda (_%r96816%_)
                               (cons _%r96816%_
                                     (_%recur96787%_ _%rest96810%_)))
                             _%$e96813%_)
                            (_%recur96787%_ _%rest96810%_))))))
              (if (pair? _%rest9679196799%_)
                  (let ((_%hd9679696822%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9679196799%_)))
                        (_%tl9679796824%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9679196799%_))))
                    (let* ((_%x96827%_ _%hd9679696822%_)
                           (_%rest96829%_ _%tl9679796824%_))
                      (_%K9679596819%_ _%rest96829%_ _%x96827%_)))
                  (_%else9679396807%_)))))))
    (define filter-map2
      (lambda (_%f96758%_ _%lst196759%_ _%lst296760%_)
        (if (procedure? _%f96758%_)
            (let ((_%f96764%_ _%f96758%_))
              (__filter-map2 _%f96764%_ _%lst196759%_ _%lst296760%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f96758%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f96666%_ _%lst196667%_ _%lst296668%_)
        (let ((_%f96671%_ _%f96666%_))
          (let _%recur96680%_ ((_%rest196682%_ _%lst196667%_)
                               (_%rest296683%_ _%lst296668%_))
            (let* ((_%rest19668596693%_ _%rest196682%_)
                   (_%else9668796701%_ (lambda () '()))
                   (_%K9668996746%_
                    (lambda (_%rest196704%_ _%x196705%_)
                      (let* ((_%rest29670696714%_ _%rest296683%_)
                             (_%else9670896722%_ (lambda () '()))
                             (_%K9671096734%_
                              (lambda (_%rest296725%_ _%x296726%_)
                                (let ((_%$e96728%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f96671%_
                                          _%x196705%_
                                          _%x296726%_))))
                                  (if _%$e96728%_
                                      ((lambda (_%r96731%_)
                                         (cons _%r96731%_
                                               (_%recur96680%_
                                                _%rest196704%_
                                                _%rest296725%_)))
                                       _%$e96728%_)
                                      (_%recur96680%_
                                       _%rest196704%_
                                       _%rest296725%_))))))
                        (if (pair? _%rest29670696714%_)
                            (let ((_%hd9671196737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29670696714%_)))
                                  (_%tl9671296739%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29670696714%_))))
                              (let* ((_%x296742%_ _%hd9671196737%_)
                                     (_%rest296744%_ _%tl9671296739%_))
                                (_%K9671096734%_ _%rest296744%_ _%x296742%_)))
                            (_%else9670896722%_))))))
              (if (pair? _%rest19668596693%_)
                  (let ((_%hd9669096749%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19668596693%_)))
                        (_%tl9669196751%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19668596693%_))))
                    (let* ((_%x196754%_ _%hd9669096749%_)
                           (_%rest196756%_ _%tl9669196751%_))
                      (_%K9668996746%_ _%rest196756%_ _%x196754%_)))
                  (_%else9668796701%_)))))))
    (define filter-map
      (lambda _g100091_
        (let ((_g100092_ (let () (declare (not safe)) (##length _g100091_))))
          (cond ((let () (declare (not safe)) (##fx= _g100092_ 2))
                 (apply filter-map1 _g100091_))
                ((let () (declare (not safe)) (##fx= _g100092_ 3))
                 (apply filter-map2 _g100091_))
                ((let () (declare (not safe)) (##fx>= _g100092_ 3))
                 (apply filter-map* _g100091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g100091_))))))
    (define filter-map*
      (lambda (_%f96639%_ . _%rest96640%_)
        (if (procedure? _%f96639%_)
            (let ((_%f96644%_ _%f96639%_))
              (declare (not safe))
              (##apply __filter-map* _%f96644%_ _%rest96640%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@503.20-503.21"
               'contract:
               'procedure?
               'value:
               _%f96639%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f96615%_ . _%rest96616%_)
        (let ((_%f96619%_ _%f96615%_))
          (let _%recur96628%_ ((_%rest96630%_ _%rest96616%_))
            (if (__andmap1 pair? _%rest96630%_)
                (let ((_%$e96633%_
                       (let ((__tmp100093 (map car _%rest96630%_)))
                         (declare (not safe))
                         (##apply _%f96619%_ __tmp100093))))
                  (if _%$e96633%_
                      ((lambda (_%r96636%_)
                         (cons _%r96636%_
                               (_%recur96628%_ (map cdr _%rest96630%_))))
                       _%$e96633%_)
                      (_%recur96628%_ (map cdr _%rest96630%_))))
                '())))))
    (define agetq__%
      (lambda (_%key96591%_ _%lst96593%_ _%default96595%_)
        (let ((_%$e96598%_
               (if (pair? _%lst96593%_) (assq _%key96591%_ _%lst96593%_) '#f)))
          (if _%$e96598%_
              (cdr _%$e96598%_)
              (if (procedure? _%default96595%_)
                  (_%default96595%_ _%key96591%_)
                  _%default96595%_)))))
    (define agetq__0
      (lambda (_%key96606%_ _%lst96607%_)
        (let ((_%default96609%_ '#f))
          (agetq__% _%key96606%_ _%lst96607%_ _%default96609%_))))
    (define agetq
      (lambda _g100094_
        (let ((_g100095_ (let () (declare (not safe)) (##length _g100094_))))
          (cond ((let () (declare (not safe)) (##fx= _g100095_ 2))
                 (apply agetq__0 _g100094_))
                ((let () (declare (not safe)) (##fx= _g100095_ 3))
                 (apply agetq__% _g100094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g100094_))))))
    (define agetv__%
      (lambda (_%key96566%_ _%lst96568%_ _%default96570%_)
        (let ((_%$e96573%_
               (if (pair? _%lst96568%_) (assv _%key96566%_ _%lst96568%_) '#f)))
          (if _%$e96573%_
              (cdr _%$e96573%_)
              (if (procedure? _%default96570%_)
                  (_%default96570%_ _%key96566%_)
                  _%default96570%_)))))
    (define agetv__0
      (lambda (_%key96581%_ _%lst96582%_)
        (let ((_%default96584%_ '#f))
          (agetv__% _%key96581%_ _%lst96582%_ _%default96584%_))))
    (define agetv
      (lambda _g100096_
        (let ((_g100097_ (let () (declare (not safe)) (##length _g100096_))))
          (cond ((let () (declare (not safe)) (##fx= _g100097_ 2))
                 (apply agetv__0 _g100096_))
                ((let () (declare (not safe)) (##fx= _g100097_ 3))
                 (apply agetv__% _g100096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g100096_))))))
    (define aget__%
      (lambda (_%key96541%_ _%lst96543%_ _%default96545%_)
        (let ((_%$e96548%_
               (if (pair? _%lst96543%_)
                   (assoc _%key96541%_ _%lst96543%_)
                   '#f)))
          (if _%$e96548%_
              (cdr _%$e96548%_)
              (if (procedure? _%default96545%_)
                  (_%default96545%_ _%key96541%_)
                  _%default96545%_)))))
    (define aget__0
      (lambda (_%key96556%_ _%lst96557%_)
        (let ((_%default96559%_ '#f))
          (aget__% _%key96556%_ _%lst96557%_ _%default96559%_))))
    (define aget
      (lambda _g100098_
        (let ((_g100099_ (let () (declare (not safe)) (##length _g100098_))))
          (cond ((let () (declare (not safe)) (##fx= _g100099_ 2))
                 (apply aget__0 _g100098_))
                ((let () (declare (not safe)) (##fx= _g100099_ 3))
                 (apply aget__% _g100098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g100098_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key96470%_ _%lst96472%_ _%default96474%_)
        (let _%lp96477%_ ((_%rest96480%_ _%lst96472%_))
          (let* ((_%rest9648296492%_ _%rest96480%_)
                 (_%else9648496500%_
                  (lambda ()
                    (if (procedure? _%default96474%_)
                        (_%default96474%_ _%key96470%_)
                        _%default96474%_)))
                 (_%K9648696509%_
                  (lambda (_%rest96503%_ _%v96504%_ _%k96506%_)
                    (if (eq? _%k96506%_ _%key96470%_)
                        _%v96504%_
                        (_%lp96477%_ _%rest96503%_)))))
            (if (pair? _%rest9648296492%_)
                (let ((_%hd9648796512%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9648296492%_)))
                      (_%tl9648896514%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9648296492%_))))
                  (let ((_%k96517%_ _%hd9648796512%_))
                    (if (pair? _%tl9648896514%_)
                        (let ((_%hd9648996519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9648896514%_)))
                              (_%tl9649096521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9648896514%_))))
                          (let* ((_%v96524%_ _%hd9648996519%_)
                                 (_%rest96526%_ _%tl9649096521%_))
                            (_%K9648696509%_
                             _%rest96526%_
                             _%v96524%_
                             _%k96517%_)))
                        (_%else9648496500%_))))
                (_%else9648496500%_))))))
    (define pgetq__0
      (lambda (_%key96531%_ _%lst96532%_)
        (let ((_%default96534%_ '#f))
          (pgetq__% _%key96531%_ _%lst96532%_ _%default96534%_))))
    (define pgetq
      (lambda _g100100_
        (let ((_g100101_ (let () (declare (not safe)) (##length _g100100_))))
          (cond ((let () (declare (not safe)) (##fx= _g100101_ 2))
                 (apply pgetq__0 _g100100_))
                ((let () (declare (not safe)) (##fx= _g100101_ 3))
                 (apply pgetq__% _g100100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g100100_))))))
    (define pgetv__%
      (lambda (_%key96399%_ _%lst96401%_ _%default96403%_)
        (let _%lp96406%_ ((_%rest96409%_ _%lst96401%_))
          (let* ((_%rest9641196421%_ _%rest96409%_)
                 (_%else9641396429%_
                  (lambda ()
                    (if (procedure? _%default96403%_)
                        (_%default96403%_ _%key96399%_)
                        _%default96403%_)))
                 (_%K9641596438%_
                  (lambda (_%rest96432%_ _%v96433%_ _%k96435%_)
                    (if (eqv? _%k96435%_ _%key96399%_)
                        _%v96433%_
                        (_%lp96406%_ _%rest96432%_)))))
            (if (pair? _%rest9641196421%_)
                (let ((_%hd9641696441%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9641196421%_)))
                      (_%tl9641796443%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9641196421%_))))
                  (let ((_%k96446%_ _%hd9641696441%_))
                    (if (pair? _%tl9641796443%_)
                        (let ((_%hd9641896448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9641796443%_)))
                              (_%tl9641996450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9641796443%_))))
                          (let* ((_%v96453%_ _%hd9641896448%_)
                                 (_%rest96455%_ _%tl9641996450%_))
                            (_%K9641596438%_
                             _%rest96455%_
                             _%v96453%_
                             _%k96446%_)))
                        (_%else9641396429%_))))
                (_%else9641396429%_))))))
    (define pgetv__0
      (lambda (_%key96460%_ _%lst96461%_)
        (let ((_%default96463%_ '#f))
          (pgetv__% _%key96460%_ _%lst96461%_ _%default96463%_))))
    (define pgetv
      (lambda _g100102_
        (let ((_g100103_ (let () (declare (not safe)) (##length _g100102_))))
          (cond ((let () (declare (not safe)) (##fx= _g100103_ 2))
                 (apply pgetv__0 _g100102_))
                ((let () (declare (not safe)) (##fx= _g100103_ 3))
                 (apply pgetv__% _g100102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g100102_))))))
    (define pget__%
      (lambda (_%key96328%_ _%lst96330%_ _%default96332%_)
        (let _%lp96335%_ ((_%rest96338%_ _%lst96330%_))
          (let* ((_%rest9634096350%_ _%rest96338%_)
                 (_%else9634296358%_
                  (lambda ()
                    (if (procedure? _%default96332%_)
                        (_%default96332%_ _%key96328%_)
                        _%default96332%_)))
                 (_%K9634496367%_
                  (lambda (_%rest96361%_ _%v96362%_ _%k96364%_)
                    (if (equal? _%k96364%_ _%key96328%_)
                        _%v96362%_
                        (_%lp96335%_ _%rest96361%_)))))
            (if (pair? _%rest9634096350%_)
                (let ((_%hd9634596370%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9634096350%_)))
                      (_%tl9634696372%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9634096350%_))))
                  (let ((_%k96375%_ _%hd9634596370%_))
                    (if (pair? _%tl9634696372%_)
                        (let ((_%hd9634796377%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9634696372%_)))
                              (_%tl9634896379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9634696372%_))))
                          (let* ((_%v96382%_ _%hd9634796377%_)
                                 (_%rest96384%_ _%tl9634896379%_))
                            (_%K9634496367%_
                             _%rest96384%_
                             _%v96382%_
                             _%k96375%_)))
                        (_%else9634296358%_))))
                (_%else9634296358%_))))))
    (define pget__0
      (lambda (_%key96389%_ _%lst96390%_)
        (let ((_%default96392%_ '#f))
          (pget__% _%key96389%_ _%lst96390%_ _%default96392%_))))
    (define pget
      (lambda _g100104_
        (let ((_g100105_ (let () (declare (not safe)) (##length _g100104_))))
          (cond ((let () (declare (not safe)) (##fx= _g100105_ 2))
                 (apply pget__0 _g100104_))
                ((let () (declare (not safe)) (##fx= _g100105_ 3))
                 (apply pget__% _g100104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g100104_))))))
    (define find
      (lambda (_%pred96312%_ _%lst96313%_)
        (if (procedure? _%pred96312%_)
            (let ((_%pred96317%_ _%pred96312%_))
              (__find _%pred96317%_ _%lst96313%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@549.13-549.17"
               'contract:
               'procedure?
               'value:
               _%pred96312%_)
              '#!void))))
    (define __find
      (lambda (_%pred96295%_ _%lst96296%_)
        (let* ((_%pred96299%_ _%pred96295%_)
               (_%$e96308%_ (__memf _%pred96299%_ _%lst96296%_)))
          (if _%$e96308%_
              (let () (declare (not safe)) (##car _%$e96308%_))
              '#f))))
    (define memf
      (lambda (_%proc96280%_ _%lst96281%_)
        (if (procedure? _%proc96280%_)
            (let ((_%proc96285%_ _%proc96280%_))
              (__memf _%proc96285%_ _%lst96281%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc96280%_)
              '#!void))))
    (define __memf
      (lambda (_%proc96230%_ _%lst96231%_)
        (let ((_%proc96234%_ _%proc96230%_))
          (let _%lp96243%_ ((_%rest96245%_ _%lst96231%_))
            (let* ((_%rest9624696254%_ _%rest96245%_)
                   (_%else9624896262%_ (lambda () '#f))
                   (_%K9625096268%_
                    (lambda (_%tl96265%_ _%hd96266%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc96234%_ _%hd96266%_))
                          _%rest96245%_
                          (_%lp96243%_ _%tl96265%_)))))
              (if (pair? _%rest9624696254%_)
                  (let ((_%hd9625196271%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9624696254%_)))
                        (_%tl9625296273%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9624696254%_))))
                    (let* ((_%hd96276%_ _%hd9625196271%_)
                           (_%tl96278%_ _%tl9625296273%_))
                      (_%K9625096268%_ _%tl96278%_ _%hd96276%_)))
                  (_%else9624896262%_)))))))
    (define remove1
      (lambda (_%el96183%_ _%lst96185%_)
        (let _%lp96188%_ ((_%rest96191%_ _%lst96185%_) (_%r96193%_ '()))
          (let* ((_%rest9619596203%_ _%rest96191%_)
                 (_%else9619796211%_ (lambda () _%lst96185%_))
                 (_%K9619996218%_
                  (lambda (_%rest96214%_ _%hd96215%_)
                    (if (equal? _%el96183%_ _%hd96215%_)
                        (__foldl1 cons _%rest96214%_ _%r96193%_)
                        (_%lp96188%_
                         _%rest96214%_
                         (cons _%hd96215%_ _%r96193%_))))))
            (if (pair? _%rest9619596203%_)
                (let ((_%hd9620096221%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9619596203%_)))
                      (_%tl9620196223%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9619596203%_))))
                  (let* ((_%hd96226%_ _%hd9620096221%_)
                         (_%rest96228%_ _%tl9620196223%_))
                    (_%K9619996218%_ _%rest96228%_ _%hd96226%_)))
                (_%else9619796211%_))))))
    (define remv1
      (lambda (_%el96136%_ _%lst96138%_)
        (let _%lp96141%_ ((_%rest96144%_ _%lst96138%_) (_%r96146%_ '()))
          (let* ((_%rest9614896156%_ _%rest96144%_)
                 (_%else9615096164%_ (lambda () _%lst96138%_))
                 (_%K9615296171%_
                  (lambda (_%rest96167%_ _%hd96168%_)
                    (if (eqv? _%el96136%_ _%hd96168%_)
                        (__foldl1 cons _%rest96167%_ _%r96146%_)
                        (_%lp96141%_
                         _%rest96167%_
                         (cons _%hd96168%_ _%r96146%_))))))
            (if (pair? _%rest9614896156%_)
                (let ((_%hd9615396174%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9614896156%_)))
                      (_%tl9615496176%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9614896156%_))))
                  (let* ((_%hd96179%_ _%hd9615396174%_)
                         (_%rest96181%_ _%tl9615496176%_))
                    (_%K9615296171%_ _%rest96181%_ _%hd96179%_)))
                (_%else9615096164%_))))))
    (define remq1
      (lambda (_%el96089%_ _%lst96091%_)
        (let _%lp96094%_ ((_%rest96097%_ _%lst96091%_) (_%r96099%_ '()))
          (let* ((_%rest9610196109%_ _%rest96097%_)
                 (_%else9610396117%_ (lambda () _%lst96091%_))
                 (_%K9610596124%_
                  (lambda (_%rest96120%_ _%hd96121%_)
                    (if (eq? _%el96089%_ _%hd96121%_)
                        (__foldl1 cons _%rest96120%_ _%r96099%_)
                        (_%lp96094%_
                         _%rest96120%_
                         (cons _%hd96121%_ _%r96099%_))))))
            (if (pair? _%rest9610196109%_)
                (let ((_%hd9610696127%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9610196109%_)))
                      (_%tl9610796129%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9610196109%_))))
                  (let* ((_%hd96132%_ _%hd9610696127%_)
                         (_%rest96134%_ _%tl9610796129%_))
                    (_%K9610596124%_ _%rest96134%_ _%hd96132%_)))
                (_%else9610396117%_))))))
    (define remf
      (lambda (_%proc96074%_ _%lst96075%_)
        (if (procedure? _%proc96074%_)
            (let ((_%proc96079%_ _%proc96074%_))
              (__remf _%proc96079%_ _%lst96075%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@576.13-576.17"
               'contract:
               'procedure?
               'value:
               _%proc96074%_)
              '#!void))))
    (define __remf
      (lambda (_%proc96023%_ _%lst96024%_)
        (let ((_%proc96027%_ _%proc96023%_))
          (let _%lp96036%_ ((_%rest96038%_ _%lst96024%_) (_%r96039%_ '()))
            (let* ((_%rest9604096048%_ _%rest96038%_)
                   (_%else9604296056%_ (lambda () _%lst96024%_))
                   (_%K9604496062%_
                    (lambda (_%rest96059%_ _%hd96060%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc96027%_ _%hd96060%_))
                          (__foldl1 cons _%rest96059%_ _%r96039%_)
                          (_%lp96036%_
                           _%rest96059%_
                           (cons _%hd96060%_ _%r96039%_))))))
              (if (pair? _%rest9604096048%_)
                  (let ((_%hd9604596065%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9604096048%_)))
                        (_%tl9604696067%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9604096048%_))))
                    (let* ((_%hd96070%_ _%hd9604596065%_)
                           (_%rest96072%_ _%tl9604696067%_))
                      (_%K9604496062%_ _%rest96072%_ _%hd96070%_)))
                  (_%else9604296056%_)))))))
    (define 1+
      (lambda (_%x96009%_)
        (if (number? _%x96009%_)
            (let ((_%x96013%_ _%x96009%_)) (__1+ _%x96013%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@585.11-585.12"
               'contract:
               'number?
               'value:
               _%x96009%_)
              '#!void))))
    (define __1+
      (lambda (_%x95997%_) (let ((_%x96000%_ _%x95997%_)) (+ _%x96000%_ '1))))
    (define 1-
      (lambda (_%x95983%_)
        (if (number? _%x95983%_)
            (let ((_%x95987%_ _%x95983%_)) (__1- _%x95987%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@593.11-593.12"
               'contract:
               'number?
               'value:
               _%x95983%_)
              '#!void))))
    (define __1-
      (lambda (_%x95971%_) (let ((_%x95974%_ _%x95971%_)) (- _%x95974%_ '1))))
    (define fx1+
      (lambda (_%x95957%_)
        (if (fixnum? _%x95957%_)
            (let ((_%x95961%_ _%x95957%_)) (__fx1+ _%x95961%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@601.13-601.14"
               'contract:
               'fixnum?
               'value:
               _%x95957%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x95945%_)
        (let ((_%x95948%_ _%x95945%_))
          (declare (not safe))
          (##fx+ _%x95948%_ '1))))
    (define fx1-
      (lambda (_%x95931%_)
        (if (fixnum? _%x95931%_)
            (let ((_%x95935%_ _%x95931%_)) (__fx1- _%x95935%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@609.13-609.14"
               'contract:
               'fixnum?
               'value:
               _%x95931%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x95919%_)
        (let ((_%x95922%_ _%x95919%_))
          (declare (not safe))
          (##fx- _%x95922%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x95916%_)
        (if (fixnum? _%x95916%_)
            (let () (declare (not safe)) (##fx>= _%x95916%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x95913%_)
        (if (fixnum? _%x95913%_)
            (let () (declare (not safe)) (##fx> _%x95913%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x95910%_)
        (let () (declare (not safe)) (##fx= _%x95910%_ '0))))
    (define fx<0?
      (lambda (_%x95907%_)
        (if (fixnum? _%x95907%_)
            (let () (declare (not safe)) (##fx< _%x95907%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x95904%_)
        (if (fixnum? _%x95904%_)
            (let () (declare (not safe)) (##fx<= _%x95904%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x95901%_)
        (if (symbol? _%x95901%_) (not (uninterned-symbol? _%x95901%_)) '#f)))
    (define display-as-string
      (lambda (_%x95886%_ _%port95887%_)
        (if (output-port? _%port95887%_)
            (let ((_%port95891%_ _%port95887%_))
              (__display-as-string _%x95886%_ _%port95891%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@639.28-639.32"
               'contract:
               'output-port?
               'value:
               _%port95887%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x95843%_ _%port95844%_)
        (let ((_%port95847%_ _%port95844%_))
          (if (or (string? _%x95843%_)
                  (symbol? _%x95843%_)
                  (keyword? _%x95843%_)
                  (number? _%x95843%_)
                  (char? _%x95843%_))
              (display _%x95843%_ _%port95847%_)
              (if (pair? _%x95843%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x95843%_))
                     _%port95847%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x95843%_))
                     _%port95847%_))
                  (if (vector? _%x95843%_)
                      (vector-for-each
                       (lambda (_%g9587095872%_)
                         (__display-as-string _%g9587095872%_ _%port95847%_))
                       _%x95843%_)
                      (if (or (null? _%x95843%_)
                              (eq? _%x95843%_ '#!void)
                              (eof-object? _%x95843%_)
                              (boolean? _%x95843%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x95843%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x95826%_)
        (if (string? _%x95826%_)
            _%x95826%_
            (if (symbol? _%x95826%_)
                (let () (declare (not safe)) (##symbol->string _%x95826%_))
                (if (keyword? _%x95826%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x95826%_))
                    (if (number? _%x95826%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x95826%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g9583295834%_)
                           (__display-as-string
                            _%x95826%_
                            _%g9583295834%_)))))))))
    (define as-string__1
      (lambda _%args95837%_
        (call-with-output-string
         '()
         (lambda (_%g9583895840%_)
           (__display-as-string _%args95837%_ _%g9583895840%_)))))
    (define as-string
      (lambda _g100106_
        (let ((_g100107_ (let () (declare (not safe)) (##length _g100106_))))
          (cond ((let () (declare (not safe)) (##fx= _g100107_ 1))
                 (apply as-string__0 _g100106_))
                (#t
                 (apply (lambda _%args95837%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args95837%_)))
                        _g100106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g100106_))))))
    (define make-symbol__0
      (lambda (_%x95822%_)
        (if (interned-symbol? _%x95822%_)
            _%x95822%_
            (let ((__tmp100108 (as-string__0 _%x95822%_)))
              (declare (not safe))
              (##string->symbol __tmp100108)))))
    (define make-symbol__1
      (lambda _%args95824%_
        (let ((__tmp100109
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args95824%_))))
          (declare (not safe))
          (##string->symbol __tmp100109))))
    (define make-symbol
      (lambda _g100110_
        (let ((_g100111_ (let () (declare (not safe)) (##length _g100110_))))
          (cond ((let () (declare (not safe)) (##fx= _g100111_ 1))
                 (apply make-symbol__0 _g100110_))
                (#t
                 (apply (lambda _%args95824%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args95824%_)))
                        _g100110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g100110_))))))
    (define make-keyword__0
      (lambda (_%x95818%_)
        (if (interned-keyword? _%x95818%_)
            _%x95818%_
            (let ((__tmp100112 (as-string__0 _%x95818%_)))
              (declare (not safe))
              (##string->keyword __tmp100112)))))
    (define make-keyword__1
      (lambda _%args95820%_
        (let ((__tmp100113
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args95820%_))))
          (declare (not safe))
          (##string->keyword __tmp100113))))
    (define make-keyword
      (lambda _g100114_
        (let ((_g100115_ (let () (declare (not safe)) (##length _g100114_))))
          (cond ((let () (declare (not safe)) (##fx= _g100115_ 1))
                 (apply make-keyword__0 _g100114_))
                (#t
                 (apply (lambda _%args95820%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args95820%_)))
                        _g100114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g100114_))))))
    (define interned-keyword?
      (lambda (_%x95815%_)
        (if (keyword? _%x95815%_) (not (uninterned-keyword? _%x95815%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym95801%_)
        (if (symbol? _%sym95801%_)
            (let ((_%sym95805%_ _%sym95801%_))
              (__symbol->keyword _%sym95805%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@682.24-682.27"
               'contract:
               'symbol?
               'value:
               _%sym95801%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym95789%_)
        (let ((_%sym95792%_ _%sym95789%_))
          (if (uninterned-symbol? _%sym95792%_)
              (let ((__tmp100116
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym95792%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp100116))
              (let ((__tmp100117
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym95792%_))))
                (declare (not safe))
                (##string->keyword __tmp100117))))))
    (define keyword->symbol
      (lambda (_%sym95775%_)
        (if (keyword? _%sym95775%_)
            (let ((_%sym95779%_ _%sym95775%_))
              (__keyword->symbol _%sym95779%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@688.24-688.27"
               'contract:
               'keyword?
               'value:
               _%sym95775%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym95763%_)
        (let ((_%sym95766%_ _%sym95763%_))
          (if (uninterned-keyword? _%sym95766%_)
              (let ((__tmp100118
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym95766%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp100118))
              (let ((__tmp100119
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym95766%_))))
                (declare (not safe))
                (##string->symbol __tmp100119))))))
    (define bytes->string__%
      (lambda (_%bstr95728%_ _%enc95729%_)
        (if (u8vector? _%bstr95728%_)
            (let ((_%bstr95733%_ _%bstr95728%_))
              (if (symbol? _%enc95729%_)
                  (let ((_%enc95743%_ _%enc95729%_))
                    (__bytes->string__% _%bstr95733%_ _%enc95743%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.25-695.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc95729%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.22-694.26"
               'contract:
               'u8vector?
               'value:
               _%bstr95728%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr95756%_)
        (let ((_%enc95758%_ 'UTF-8))
          (bytes->string__% _%bstr95756%_ _%enc95758%_))))
    (define bytes->string
      (lambda _g100120_
        (let ((_g100121_ (let () (declare (not safe)) (##length _g100120_))))
          (cond ((let () (declare (not safe)) (##fx= _g100121_ 1))
                 (apply bytes->string__0 _g100120_))
                ((let () (declare (not safe)) (##fx= _g100121_ 2))
                 (apply bytes->string__% _g100120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g100120_))))))
    (define __bytes->string__%
      (lambda (_%bstr95687%_ _%enc95688%_)
        (let* ((_%bstr95691%_ _%bstr95687%_) (_%enc95699%_ _%enc95688%_))
          (if (eq? _%enc95699%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr95691%_))
              (let* ((_%in95708%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc95699%_
                                   (cons 'init: (cons _%bstr95691%_ '()))))))
                     (_%len95710%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr95691%_)))
                     (_%out95712%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len95710%_)))
                     (_%n95714%_
                      (read-substring
                       _%out95712%_
                       '0
                       _%len95710%_
                       _%in95708%_)))
                (string-shrink! _%out95712%_ _%n95714%_)
                _%out95712%_)))))
    (define __bytes->string__0
      (lambda (_%bstr95720%_)
        (let ((_%enc95722%_ 'UTF-8))
          (__bytes->string__% _%bstr95720%_ _%enc95722%_))))
    (define __bytes->string
      (lambda _g100122_
        (let ((_g100123_ (let () (declare (not safe)) (##length _g100122_))))
          (cond ((let () (declare (not safe)) (##fx= _g100123_ 1))
                 (apply __bytes->string__0 _g100122_))
                ((let () (declare (not safe)) (##fx= _g100123_ 2))
                 (apply __bytes->string__% _g100122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g100122_))))))
    (define string->bytes__%
      (lambda (_%str95651%_ _%enc95652%_)
        (if (string? _%str95651%_)
            (let ((_%str95656%_ _%str95651%_))
              (if (symbol? _%enc95652%_)
                  (let ((_%enc95666%_ _%enc95652%_))
                    (__string->bytes__% _%str95656%_ _%enc95666%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@707.25-707.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc95652%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@706.22-706.25"
               'contract:
               'string?
               'value:
               _%str95651%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str95679%_)
        (let ((_%enc95681%_ 'UTF-8))
          (string->bytes__% _%str95679%_ _%enc95681%_))))
    (define string->bytes
      (lambda _g100124_
        (let ((_g100125_ (let () (declare (not safe)) (##length _g100124_))))
          (cond ((let () (declare (not safe)) (##fx= _g100125_ 1))
                 (apply string->bytes__0 _g100124_))
                ((let () (declare (not safe)) (##fx= _g100125_ 2))
                 (apply string->bytes__% _g100124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g100124_))))))
    (define __string->bytes__%
      (lambda (_%str95619%_ _%enc95620%_)
        (let* ((_%str95623%_ _%str95619%_) (_%enc95631%_ _%enc95620%_))
          (if (eq? _%enc95631%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str95623%_))
              (__substring->bytes__%
               _%str95623%_
               '0
               (let () (declare (not safe)) (##string-length _%str95623%_))
               _%enc95631%_)))))
    (define __string->bytes__0
      (lambda (_%str95643%_)
        (let ((_%enc95645%_ 'UTF-8))
          (__string->bytes__% _%str95643%_ _%enc95645%_))))
    (define __string->bytes
      (lambda _g100126_
        (let ((_g100127_ (let () (declare (not safe)) (##length _g100126_))))
          (cond ((let () (declare (not safe)) (##fx= _g100127_ 1))
                 (apply __string->bytes__0 _g100126_))
                ((let () (declare (not safe)) (##fx= _g100127_ 2))
                 (apply __string->bytes__% _g100126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g100126_))))))
    (define substring->bytes__%
      (lambda (_%str95567%_ _%start95568%_ _%end95569%_ _%enc95570%_)
        (if (string? _%str95567%_)
            (let ((_%str95574%_ _%str95567%_))
              (if (nonnegative-fixnum? _%start95568%_)
                  (let ((_%start95584%_ _%start95568%_))
                    (if (nonnegative-fixnum? _%end95569%_)
                        (let ((_%end95594%_ _%end95569%_))
                          (__substring->bytes__%
                           _%str95574%_
                           _%start95584%_
                           _%end95594%_
                           _%enc95570%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@715.25-715.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end95569%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@714.25-714.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start95568%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@713.25-713.28"
               'contract:
               'string?
               'value:
               _%str95567%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str95607%_ _%start95608%_ _%end95609%_)
        (let ((_%enc95611%_ 'UTF-8))
          (substring->bytes__%
           _%str95607%_
           _%start95608%_
           _%end95609%_
           _%enc95611%_))))
    (define substring->bytes
      (lambda _g100128_
        (let ((_g100129_ (let () (declare (not safe)) (##length _g100128_))))
          (cond ((let () (declare (not safe)) (##fx= _g100129_ 3))
                 (apply substring->bytes__0 _g100128_))
                ((let () (declare (not safe)) (##fx= _g100129_ 4))
                 (apply substring->bytes__% _g100128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g100128_))))))
    (define __substring->bytes__%
      (lambda (_%str95519%_ _%start95520%_ _%end95521%_ _%enc95522%_)
        (let* ((_%str95525%_ _%str95519%_)
               (_%start95533%_ _%start95520%_)
               (_%end95541%_ _%end95521%_))
          (if (eq? _%enc95522%_ 'UTF-8)
              (string->utf8 _%str95525%_ _%start95533%_ _%end95541%_)
              (let ((_%out95550%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc95522%_ '())))))
                (write-substring
                 _%str95525%_
                 _%start95533%_
                 _%end95541%_
                 _%out95550%_)
                (get-output-u8vector _%out95550%_))))))
    (define __substring->bytes__0
      (lambda (_%str95555%_ _%start95556%_ _%end95557%_)
        (let ((_%enc95559%_ 'UTF-8))
          (__substring->bytes__%
           _%str95555%_
           _%start95556%_
           _%end95557%_
           _%enc95559%_))))
    (define __substring->bytes
      (lambda _g100130_
        (let ((_g100131_ (let () (declare (not safe)) (##length _g100130_))))
          (cond ((let () (declare (not safe)) (##fx= _g100131_ 3))
                 (apply __substring->bytes__0 _g100130_))
                ((let () (declare (not safe)) (##fx= _g100131_ 4))
                 (apply __substring->bytes__% _g100130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g100130_))))))
    (define string-empty?
      (lambda (_%str95504%_)
        (if (string? _%str95504%_)
            (let ((_%str95508%_ _%str95504%_)) (__string-empty? _%str95508%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@724.22-724.25"
               'contract:
               'string?
               'value:
               _%str95504%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str95492%_)
        (let* ((_%str95495%_ _%str95492%_)
               (__tmp100132
                (let () (declare (not safe)) (##string-length _%str95495%_))))
          (declare (not safe))
          (##fxzero? __tmp100132))))
    (define string-index__%
      (lambda (_%str95444%_ _%char95445%_ _%start95446%_)
        (if (string? _%str95444%_)
            (let ((_%str95450%_ _%str95444%_))
              (if (char? _%char95445%_)
                  (let ((_%char95460%_ _%char95445%_))
                    (if (nonnegative-fixnum? _%start95446%_)
                        (let ((_%start95470%_ _%start95446%_))
                          (__string-index__%
                           _%str95450%_
                           _%char95460%_
                           _%start95470%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@730.21-730.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start95446%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.21-729.25"
                     'contract:
                     'char?
                     'value:
                     _%char95445%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@728.21-728.24"
               'contract:
               'string?
               'value:
               _%str95444%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str95483%_ _%char95484%_)
        (let ((_%start95486%_ '0))
          (string-index__% _%str95483%_ _%char95484%_ _%start95486%_))))
    (define string-index
      (lambda _g100133_
        (let ((_g100134_ (let () (declare (not safe)) (##length _g100133_))))
          (cond ((let () (declare (not safe)) (##fx= _g100134_ 2))
                 (apply string-index__0 _g100133_))
                ((let () (declare (not safe)) (##fx= _g100134_ 3))
                 (apply string-index__% _g100133_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g100133_))))))
    (define __string-index__%
      (lambda (_%str95383%_ _%char95384%_ _%start95385%_)
        (let* ((_%str95388%_ _%str95383%_)
               (_%char95396%_ _%char95384%_)
               (_%start95404%_ _%start95385%_)
               (_%len95413%_
                (let () (declare (not safe)) (##string-length _%str95388%_))))
          (let _%lp95415%_ ((_%k95417%_ _%start95404%_))
            (let ((_%k95419%_ _%k95417%_))
              (if (let () (declare (not safe)) (##fx< _%k95419%_ _%len95413%_))
                  (if (eq? _%char95396%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str95388%_ _%k95419%_)))
                      _%k95419%_
                      (_%lp95415%_
                       (let () (declare (not safe)) (##fx+ _%k95419%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str95434%_ _%char95435%_)
        (let ((_%start95437%_ '0))
          (__string-index__% _%str95434%_ _%char95435%_ _%start95437%_))))
    (define __string-index
      (lambda _g100135_
        (let ((_g100136_ (let () (declare (not safe)) (##length _g100135_))))
          (cond ((let () (declare (not safe)) (##fx= _g100136_ 2))
                 (apply __string-index__0 _g100135_))
                ((let () (declare (not safe)) (##fx= _g100136_ 3))
                 (apply __string-index__% _g100135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g100135_))))))
    (define string-rindex__%
      (lambda (_%str95344%_ _%char95345%_ _%start95346%_)
        (if (string? _%str95344%_)
            (let ((_%str95350%_ _%str95344%_))
              (if (char? _%char95345%_)
                  (let ((_%char95360%_ _%char95345%_))
                    (__string-rindex__%
                     _%str95350%_
                     _%char95360%_
                     _%start95346%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@740.25-740.29"
                     'contract:
                     'char?
                     'value:
                     _%char95345%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@739.22-739.25"
               'contract:
               'string?
               'value:
               _%str95344%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str95373%_ _%char95374%_)
        (let ((_%start95376%_ '#f))
          (string-rindex__% _%str95373%_ _%char95374%_ _%start95376%_))))
    (define string-rindex
      (lambda _g100137_
        (let ((_g100138_ (let () (declare (not safe)) (##length _g100137_))))
          (cond ((let () (declare (not safe)) (##fx= _g100138_ 2))
                 (apply string-rindex__0 _g100137_))
                ((let () (declare (not safe)) (##fx= _g100138_ 3))
                 (apply string-rindex__% _g100137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g100137_))))))
    (define __string-rindex__%
      (lambda (_%str95286%_ _%char95287%_ _%start95288%_)
        (let* ((_%str95291%_ _%str95286%_)
               (_%char95299%_ _%char95287%_)
               (_%len95308%_
                (let () (declare (not safe)) (##string-length _%str95291%_)))
               (_%start95310%_
                (if (fixnum? _%start95288%_)
                    _%start95288%_
                    (let () (declare (not safe)) (##fx- _%len95308%_ '1)))))
          (let _%lp95313%_ ((_%k95315%_ _%start95310%_))
            (let ((_%k95317%_ _%k95315%_))
              (if (let () (declare (not safe)) (##fx>= _%k95317%_ '0))
                  (if (eq? _%char95299%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str95291%_ _%k95317%_)))
                      _%k95317%_
                      (_%lp95313%_
                       (let () (declare (not safe)) (##fx- _%k95317%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str95334%_ _%char95335%_)
        (let ((_%start95337%_ '#f))
          (__string-rindex__% _%str95334%_ _%char95335%_ _%start95337%_))))
    (define __string-rindex
      (lambda _g100139_
        (let ((_g100140_ (let () (declare (not safe)) (##length _g100139_))))
          (cond ((let () (declare (not safe)) (##fx= _g100140_ 2))
                 (apply __string-rindex__0 _g100139_))
                ((let () (declare (not safe)) (##fx= _g100140_ 3))
                 (apply __string-rindex__% _g100139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g100139_))))))
    (define string-split
      (lambda (_%str95260%_ _%char95261%_)
        (if (string? _%str95260%_)
            (let ((_%str95265%_ _%str95260%_))
              (if (char? _%char95261%_)
                  (let ((_%char95275%_ _%char95261%_))
                    (__string-split _%str95265%_ _%char95275%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@751.37-751.41"
                     'contract:
                     'char?
                     'value:
                     _%char95261%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@751.21-751.24"
               'contract:
               'string?
               'value:
               _%str95260%_)
              '#!void))))
    (define __string-split
      (lambda (_%str95201%_ _%char95202%_)
        (let* ((_%str95205%_ _%str95201%_)
               (_%char95213%_ _%char95202%_)
               (_%len95222%_
                (let () (declare (not safe)) (##string-length _%str95205%_))))
          (let _%lp95224%_ ((_%start95226%_ '0) (_%r95227%_ '()))
            (let* ((_%start95230%_ _%start95226%_)
                   (_%$e95243%_
                    (__string-index__%
                     _%str95205%_
                     _%char95213%_
                     _%start95230%_)))
              (if _%$e95243%_
                  ((lambda (_%end95246%_)
                     (let ((_%end95248%_ _%end95246%_))
                       (_%lp95224%_
                        (let () (declare (not safe)) (##fx+ _%end95248%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str95205%_
                                 _%start95230%_
                                 _%end95248%_))
                              _%r95227%_))))
                   _%$e95243%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start95230%_ _%len95222%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str95205%_
                                _%start95230%_
                                _%len95222%_)))
                       _%r95227%_)
                      (reverse! _%r95227%_))))))))
    (define string-join
      (lambda (_%strs95051%_ _%join95052%_)
        (letrec ((_%join-length95055%_
                  (lambda (_%strs95139%_ _%jlen95140%_)
                    (let _%lp95142%_ ((_%rest95144%_ _%strs95139%_)
                                      (_%len95145%_ '0))
                      (let* ((_%len95147%_ _%len95145%_)
                             (_%rest9515595163%_ _%rest95144%_)
                             (_%else9515795171%_ (lambda () '0))
                             (_%K9515995189%_
                              (lambda (_%rest95174%_ _%hd95175%_)
                                (if (string? _%hd95175%_)
                                    (let ((_%hd95177%_ _%hd95175%_))
                                      (if (pair? _%rest95174%_)
                                          (_%lp95142%_
                                           _%rest95174%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd95177%_))
                                                _%jlen95140%_
                                                _%len95147%_))
                                          (let ((__tmp100141
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd95177%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp100141 _%len95147%_))))
                                    (error '"expected string" _%hd95175%_)))))
                        (if (pair? _%rest9515595163%_)
                            (let ((_%hd9516095192%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest9515595163%_)))
                                  (_%tl9516195194%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest9515595163%_))))
                              (let* ((_%hd95197%_ _%hd9516095192%_)
                                     (_%rest95199%_ _%tl9516195194%_))
                                (_%K9515995189%_ _%rest95199%_ _%hd95197%_)))
                            (_%else9515795171%_)))))))
          (let* ((_%join95060%_
                  (if (char? _%join95052%_)
                      (let () (declare (not safe)) (##string _%join95052%_))
                      (if (string? _%join95052%_)
                          _%join95052%_
                          (error '"expected string or char" _%join95052%_))))
                 (_%jlen95062%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join95060%_)))
                 (_%olen95064%_
                  (_%join-length95055%_ _%strs95051%_ _%jlen95062%_))
                 (_%ostr95066%_
                  (let () (declare (not safe)) (##make-string _%olen95064%_))))
            (let _%lp95069%_ ((_%rest95071%_ _%strs95051%_) (_%k95072%_ '0))
              (let* ((_%k95075%_ _%k95072%_)
                     (_%rest9509195099%_ _%rest95071%_)
                     (_%else9509395107%_ (lambda () '""))
                     (_%K9509595127%_
                      (lambda (_%rest95110%_ _%hd95111%_)
                        (let* ((_%hd95113%_ _%hd95111%_)
                               (_%hdlen95125%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd95113%_))))
                          (if (pair? _%rest95110%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd95113%_
                                   '0
                                   _%hdlen95125%_
                                   _%ostr95066%_
                                   _%k95075%_))
                                (let ((__tmp100142
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k95075%_ _%hdlen95125%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join95060%_
                                   '0
                                   _%jlen95062%_
                                   _%ostr95066%_
                                   __tmp100142))
                                (_%lp95069%_
                                 _%rest95110%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k95075%_
                                          _%hdlen95125%_
                                          _%jlen95062%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd95113%_
                                   '0
                                   _%hdlen95125%_
                                   _%ostr95066%_
                                   _%k95075%_))
                                _%ostr95066%_))))))
                (if (pair? _%rest9509195099%_)
                    (let ((_%hd9509695130%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest9509195099%_)))
                          (_%tl9509795132%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest9509195099%_))))
                      (let* ((_%hd95135%_ _%hd9509695130%_)
                             (_%rest95137%_ _%tl9509795132%_))
                        (_%K9509595127%_ _%rest95137%_ _%hd95135%_)))
                    (_%else9509395107%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes94977%_ _%port94978%_ _%start94979%_ _%end94980%_)
        (if (u8vector? _%bytes94977%_)
            (let ((_%bytes94984%_ _%bytes94977%_))
              (if (input-port? _%port94978%_)
                  (let ((_%port94994%_ _%port94978%_))
                    (if ((lambda (_%o95003%_)
                           (and (fixnum? _%o95003%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o95003%_ '0))
                                (let ((__tmp100143
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes94984%_))))
                                  (declare (not safe))
                                  (##fx< _%o95003%_ __tmp100143))))
                         _%start94979%_)
                        (let ((_%start95007%_ _%start94979%_))
                          (if ((lambda (_%o95016%_)
                                 (and (fixnum? _%o95016%_)
                                      (let ((__tmp100144
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes94984%_))))
                                        (declare (not safe))
                                        (##fx<= _%start95007%_
                                                _%o95016%_
                                                __tmp100144))))
                               _%end94980%_)
                              (let ((_%end95020%_ _%end94980%_))
                                (__read-u8vector__%
                                 _%bytes94984%_
                                 _%port94994%_
                                 _%start95007%_
                                 _%end95020%_))
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
                                 _%end94980%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@816.22-816.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start94979%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@815.22-815.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port94978%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@814.22-814.27"
               'contract:
               'u8vector?
               'value:
               _%bytes94977%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes95033%_ _%port95034%_)
        (let* ((_%start95036%_ '0)
               (_%end95038%_ (u8vector-length _%bytes95033%_)))
          (read-u8vector__%
           _%bytes95033%_
           _%port95034%_
           _%start95036%_
           _%end95038%_))))
    (define read-u8vector__1
      (lambda (_%bytes95040%_ _%port95041%_ _%start95042%_)
        (let ((_%end95044%_ (u8vector-length _%bytes95040%_)))
          (read-u8vector__%
           _%bytes95040%_
           _%port95041%_
           _%start95042%_
           _%end95044%_))))
    (define read-u8vector
      (lambda _g100145_
        (let ((_g100146_ (let () (declare (not safe)) (##length _g100145_))))
          (cond ((let () (declare (not safe)) (##fx= _g100146_ 2))
                 (apply read-u8vector__0 _g100145_))
                ((let () (declare (not safe)) (##fx= _g100146_ 3))
                 (apply read-u8vector__1 _g100145_))
                ((let () (declare (not safe)) (##fx= _g100146_ 4))
                 (apply read-u8vector__% _g100145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g100145_))))))
    (define __read-u8vector__%
      (lambda (_%bytes94916%_ _%port94917%_ _%start94918%_ _%end94919%_)
        (let* ((_%bytes94922%_ _%bytes94916%_)
               (_%port94930%_ _%port94917%_)
               (_%start94938%_ _%start94918%_)
               (_%end94946%_ _%end94919%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes94922%_
           _%start94938%_
           _%end94946%_
           _%port94930%_))))
    (define __read-u8vector__0
      (lambda (_%bytes94958%_ _%port94959%_)
        (let* ((_%start94961%_ '0)
               (_%end94963%_ (u8vector-length _%bytes94958%_)))
          (__read-u8vector__%
           _%bytes94958%_
           _%port94959%_
           _%start94961%_
           _%end94963%_))))
    (define __read-u8vector__1
      (lambda (_%bytes94965%_ _%port94966%_ _%start94967%_)
        (let ((_%end94969%_ (u8vector-length _%bytes94965%_)))
          (__read-u8vector__%
           _%bytes94965%_
           _%port94966%_
           _%start94967%_
           _%end94969%_))))
    (define __read-u8vector
      (lambda _g100147_
        (let ((_g100148_ (let () (declare (not safe)) (##length _g100147_))))
          (cond ((let () (declare (not safe)) (##fx= _g100148_ 2))
                 (apply __read-u8vector__0 _g100147_))
                ((let () (declare (not safe)) (##fx= _g100148_ 3))
                 (apply __read-u8vector__1 _g100147_))
                ((let () (declare (not safe)) (##fx= _g100148_ 4))
                 (apply __read-u8vector__% _g100147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g100147_))))))
    (define write-u8vector__%
      (lambda (_%bytes94846%_ _%port94847%_ _%start94848%_ _%end94849%_)
        (if (u8vector? _%bytes94846%_)
            (let ((_%bytes94853%_ _%bytes94846%_))
              (if (output-port? _%port94847%_)
                  (let* ((_%port94863%_ _%port94847%_)
                         (_%start94872%_ _%start94848%_))
                    (if ((lambda (_%o94880%_)
                           (and (fixnum? _%o94880%_)
                                (let ((__tmp100149
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes94853%_))))
                                  (declare (not safe))
                                  (##fx<= _%start94872%_
                                          _%o94880%_
                                          __tmp100149))))
                         _%end94849%_)
                        (let ((_%end94884%_ _%end94849%_))
                          (__write-u8vector__%
                           _%bytes94853%_
                           _%port94863%_
                           _%start94872%_
                           _%end94884%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@827.23-827.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end94849%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@825.23-825.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port94847%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@824.23-824.28"
               'contract:
               'u8vector?
               'value:
               _%bytes94846%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes94897%_ _%port94898%_)
        (let* ((_%start94900%_ '0)
               (_%end94902%_ (u8vector-length _%bytes94897%_)))
          (write-u8vector__%
           _%bytes94897%_
           _%port94898%_
           _%start94900%_
           _%end94902%_))))
    (define write-u8vector__1
      (lambda (_%bytes94904%_ _%port94905%_ _%start94906%_)
        (let ((_%end94908%_ (u8vector-length _%bytes94904%_)))
          (write-u8vector__%
           _%bytes94904%_
           _%port94905%_
           _%start94906%_
           _%end94908%_))))
    (define write-u8vector
      (lambda _g100150_
        (let ((_g100151_ (let () (declare (not safe)) (##length _g100150_))))
          (cond ((let () (declare (not safe)) (##fx= _g100151_ 2))
                 (apply write-u8vector__0 _g100150_))
                ((let () (declare (not safe)) (##fx= _g100151_ 3))
                 (apply write-u8vector__1 _g100150_))
                ((let () (declare (not safe)) (##fx= _g100151_ 4))
                 (apply write-u8vector__% _g100150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g100150_))))))
    (define __write-u8vector__%
      (lambda (_%bytes94785%_ _%port94786%_ _%start94787%_ _%end94788%_)
        (let* ((_%bytes94791%_ _%bytes94785%_)
               (_%port94799%_ _%port94786%_)
               (_%start94807%_ _%start94787%_)
               (_%end94815%_ _%end94788%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes94791%_
           _%start94807%_
           _%end94815%_
           _%port94799%_))))
    (define __write-u8vector__0
      (lambda (_%bytes94827%_ _%port94828%_)
        (let* ((_%start94830%_ '0)
               (_%end94832%_ (u8vector-length _%bytes94827%_)))
          (__write-u8vector__%
           _%bytes94827%_
           _%port94828%_
           _%start94830%_
           _%end94832%_))))
    (define __write-u8vector__1
      (lambda (_%bytes94834%_ _%port94835%_ _%start94836%_)
        (let ((_%end94838%_ (u8vector-length _%bytes94834%_)))
          (__write-u8vector__%
           _%bytes94834%_
           _%port94835%_
           _%start94836%_
           _%end94838%_))))
    (define __write-u8vector
      (lambda _g100152_
        (let ((_g100153_ (let () (declare (not safe)) (##length _g100152_))))
          (cond ((let () (declare (not safe)) (##fx= _g100153_ 2))
                 (apply __write-u8vector__0 _g100152_))
                ((let () (declare (not safe)) (##fx= _g100153_ 3))
                 (apply __write-u8vector__1 _g100152_))
                ((let () (declare (not safe)) (##fx= _g100153_ 4))
                 (apply __write-u8vector__% _g100152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g100152_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag94753%_
               _%dbg-exprs94754%_
               _%dbg-thunks94755%_
               _%expr94756%_
               _%thunk94757%_)
        (letrec ((_%o94759%_ (current-output-port))
                 (_%e94760%_ (current-error-port))
                 (_%p94761%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f94762%_
                  (lambda ()
                    (force-output _%o94759%_)
                    (force-output _%e94760%_)))
                 (_%d94763%_
                  (lambda (_%x94770%_) (display _%x94770%_ _%e94760%_)))
                 (_%w94764%_
                  (lambda (_%x94772%_) (_%p94761%_ _%x94772%_ _%e94760%_)))
                 (_%n94765%_ (lambda () (newline _%e94760%_)))
                 (_%v94766%_
                  (lambda (_%l94775%_)
                    (for-each
                     (lambda (_%x94777%_)
                       (_%d94763%_ '" ")
                       (_%w94764%_ _%x94777%_))
                     _%l94775%_)
                    (_%n94765%_)))
                 (_%x94767%_
                  (lambda (_%expr94779%_ _%thunk94780%_)
                    (_%f94762%_)
                    (_%d94763%_ '"  ")
                    (_%w94764%_ _%expr94779%_)
                    (_%d94763%_ '" =>")
                    (call-with-values
                     _%thunk94780%_
                     (lambda _%x94782%_
                       (_%v94766%_ _%x94782%_)
                       (_%f94762%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x94782%_)))))))
          (if _%tag94753%_
              (begin
                (if (eq? _%tag94753%_ '#!void)
                    '#!void
                    (begin
                      (_%f94762%_)
                      (_%d94763%_ _%tag94753%_)
                      (_%n94765%_)))
                (for-each _%x94767%_ _%dbg-exprs94754%_ _%dbg-thunks94755%_)
                (if _%thunk94757%_
                    (_%x94767%_ _%expr94756%_ _%thunk94757%_)
                    '#!void))
              (if _%thunk94757%_ (_%thunk94757%_) '#!void)))))))
