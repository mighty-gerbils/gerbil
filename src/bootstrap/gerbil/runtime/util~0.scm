(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1768864946)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args97961%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args97961%_))
          (newline))))
    (define display*
      (lambda _%args97958%_
        (let () (declare (not safe)) (##for-each display _%args97958%_))))
    (define file-newer?
      (lambda (_%file197933%_ _%file297934%_)
        (if (string? _%file197933%_)
            (let ((_%file197938%_ _%file197933%_))
              (if (string? _%file297934%_)
                  (let ((_%file297948%_ _%file297934%_))
                    (__file-newer? _%file197938%_ _%file297948%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@97.20-97.25"
                     'contract:
                     'string?
                     'value:
                     _%file297934%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@96.20-96.25"
               'contract:
               'string?
               'value:
               _%file197933%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file197881%_ _%file297882%_)
        (let* ((_%file197885%_ _%file197881%_) (_%file297893%_ _%file297882%_))
          (letrec ((_%modification-time97902%_
                    (lambda (_%file97921%_)
                      (let ((_%file97924%_ _%file97921%_))
                        (_%__modification-time97903%_ _%file97924%_))))
                   (_%__modification-time97903%_
                    (lambda (_%file97905%_)
                      (let* ((_%file97908%_ _%file97905%_)
                             (__tmp99735
                              (let ((__tmp99736
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file97908%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp99736))))
                        (declare (not safe))
                        (##time->seconds __tmp99735)))))
            (let ((__tmp99738 (_%__modification-time97903%_ _%file197885%_))
                  (__tmp99737 (_%__modification-time97903%_ _%file297893%_)))
              (declare (not safe))
              (##fl> __tmp99738 __tmp99737))))))
    (define create-directory*__%
      (lambda (_%dir97846%_ _%perms97847%_)
        (if (string? _%dir97846%_)
            (let ((_%dir97851%_ _%dir97846%_))
              (if (fixnum? _%perms97847%_)
                  (let ((_%perms97861%_ _%perms97847%_))
                    (__create-directory*__% _%dir97851%_ _%perms97861%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@108.26-108.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms97847%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@107.26-107.29"
               'contract:
               'string?
               'value:
               _%dir97846%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir97874%_)
        (let ((_%perms97876%_ '493))
          (create-directory*__% _%dir97874%_ _%perms97876%_))))
    (define create-directory*
      (lambda _g99739_
        (let ((_g99740_ (let () (declare (not safe)) (##length _g99739_))))
          (cond ((let () (declare (not safe)) (##fx= _g99740_ 1))
                 (apply create-directory*__0 _g99739_))
                ((let () (declare (not safe)) (##fx= _g99740_ 2))
                 (apply create-directory*__% _g99739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g99739_))))))
    (define __create-directory*__%
      (lambda (_%dir97770%_ _%perms97771%_)
        (let* ((_%dir97774%_ _%dir97770%_) (_%perms97782%_ _%perms97771%_))
          (letrec ((_%create197791%_
                    (lambda (_%path97823%_)
                      (let ((_%path97826%_ _%path97823%_))
                        (_%__create197792%_ _%path97826%_))))
                   (_%__create197792%_
                    (lambda (_%path97804%_)
                      (let ((_%path97807%_ _%path97804%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path97807%_))
                            (if (eq? (file-type _%path97807%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path97807%_))
                            (if _%perms97782%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path97807%_
                                             (cons 'permissions:
                                                   (cons _%perms97782%_
                                                         '())))))
                                (create-directory _%path97807%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir97774%_))
                '#!void
                (let _%lp97794%_ ((_%start97796%_ '0))
                  (let ((_%$e97798%_
                         (__string-index__% _%dir97774%_ '#\/ _%start97796%_)))
                    (if _%$e97798%_
                        ((lambda (_%x97801%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x97801%_ '0))
                               (_%__create197792%_
                                (substring _%dir97774%_ '0 _%x97801%_))
                               '#!void)
                           (_%lp97794%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x97801%_ '1))))
                         _%$e97798%_)
                        (_%__create197792%_ _%dir97774%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir97838%_)
        (let ((_%perms97840%_ '493))
          (__create-directory*__% _%dir97838%_ _%perms97840%_))))
    (define __create-directory*
      (lambda _g99741_
        (let ((_g99742_ (let () (declare (not safe)) (##length _g99741_))))
          (cond ((let () (declare (not safe)) (##fx= _g99742_ 1))
                 (apply __create-directory*__0 _g99741_))
                ((let () (declare (not safe)) (##fx= _g99742_ 2))
                 (apply __create-directory*__% _g99741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g99741_))))))
    (define move-file__%
      (lambda (_%src97721%_ _%dest97722%_ _%replace?97723%_)
        (if (string? _%src97721%_)
            (let ((_%src97727%_ _%src97721%_))
              (if (string? _%dest97722%_)
                  (let ((_%dest97737%_ _%dest97722%_))
                    (if (boolean? _%replace?97723%_)
                        (let ((_%replace?97747%_ _%replace?97723%_))
                          (__move-file__%
                           _%src97727%_
                           _%dest97737%_
                           _%replace?97747%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@132.51-132.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?97723%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@132.34-132.38"
                     'contract:
                     'string?
                     'value:
                     _%dest97722%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@132.18-132.21"
               'contract:
               'string?
               'value:
               _%src97721%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src97760%_ _%dest97761%_)
        (let ((_%replace?97763%_ '#t))
          (move-file__% _%src97760%_ _%dest97761%_ _%replace?97763%_))))
    (define move-file
      (lambda _g99743_
        (let ((_g99744_ (let () (declare (not safe)) (##length _g99743_))))
          (cond ((let () (declare (not safe)) (##fx= _g99744_ 2))
                 (apply move-file__0 _g99743_))
                ((let () (declare (not safe)) (##fx= _g99744_ 3))
                 (apply move-file__% _g99743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g99743_))))))
    (define __move-file__%
      (lambda (_%src97664%_ _%dest97665%_ _%replace?97666%_)
        (let* ((_%src97669%_ _%src97664%_)
               (_%dest97677%_ _%dest97665%_)
               (_%replace?97685%_ _%replace?97666%_))
          (letrec ((_%force-move-it97694%_
                    (lambda ()
                      (let ((_%tmp97700%_
                             (if _%replace?97685%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest97677%_))
                                     (let ((__tmp99745
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest97677%_
                                        '"."
                                        __tmp99745))
                                     '#f)
                                 '#f)))
                        (if _%tmp97700%_
                            (rename-file _%dest97677%_ _%tmp97700%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e97702%_)
                           (if _%tmp97700%_
                               (rename-file _%tmp97700%_ _%dest97677%_ '#t)
                               '#!void)
                           (raise _%e97702%_))
                         (lambda ()
                           (let ((_%fi97705%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src97669%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi97705%_))
                                      'symbolic-link)
                                 (let ((__tmp99746
                                        (path-normalize _%src97669%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp99746
                                    _%dest97677%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file _%src97669%_ _%dest97677%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src97669%_))
                           (if _%tmp97700%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp97700%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e97696%_)
               (if (let () (declare (not safe)) (##file-exists? _%src97669%_))
                   (_%force-move-it97694%_)
                   (raise _%e97696%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src97669%_
                  _%dest97677%_
                  _%replace?97685%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src97711%_ _%dest97712%_)
        (let ((_%replace?97714%_ '#t))
          (__move-file__% _%src97711%_ _%dest97712%_ _%replace?97714%_))))
    (define __move-file
      (lambda _g99747_
        (let ((_g99748_ (let () (declare (not safe)) (##length _g99747_))))
          (cond ((let () (declare (not safe)) (##fx= _g99748_ 2))
                 (apply __move-file__0 _g99747_))
                ((let () (declare (not safe)) (##fx= _g99748_ 3))
                 (apply __move-file__% _g99747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g99747_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore97660%_ '#t))
    (define true? (lambda (_%obj97657%_) (eq? _%obj97657%_ '#t)))
    (define false (lambda _%ignore97654%_ '#f))
    (define void (lambda _%ignore97651%_ '#!void))
    (define void? (lambda (_%obj97648%_) (eq? _%obj97648%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj97645%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj97645%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj97642%_) (eq? _%obj97642%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj97639%_) (eq? _%obj97639%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj97636%_) (eq? _%obj97636%_ '#!optional)))
    (define immediate?
      (lambda (_%obj97633%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj97633%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj97630%_)
        (if (fixnum? _%obj97630%_)
            (let () (declare (not safe)) (##fx>= _%obj97630%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj97624%_)
        (let ((_%$e97627%_ (pair? _%obj97624%_)))
          (if _%$e97627%_ _%$e97627%_ (null? _%obj97624%_)))))
    (define values-count
      (lambda (_%obj97621%_)
        (if (let () (declare (not safe)) (##values? _%obj97621%_))
            (let () (declare (not safe)) (##values-length _%obj97621%_))
            '1)))
    (define values-ref
      (lambda (_%obj97606%_ _%k97607%_)
        (if (fixnum? _%k97607%_)
            (let ((_%k97611%_ _%k97607%_))
              (__values-ref _%obj97606%_ _%k97611%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@266.23-266.24"
               'contract:
               'fixnum?
               'value:
               _%k97607%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj97593%_ _%k97594%_)
        (let ((_%k97597%_ _%k97594%_))
          (if (let () (declare (not safe)) (##values? _%obj97593%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj97593%_ _%k97597%_))
              _%obj97593%_))))
    (define values->list
      (lambda (_%obj97590%_)
        (if (let () (declare (not safe)) (##values? _%obj97590%_))
            (let () (declare (not safe)) (##values->list _%obj97590%_))
            (list _%obj97590%_))))
    (define foldl1
      (lambda (_%f97574%_ _%iv97575%_ _%lst97576%_)
        (if (procedure? _%f97574%_)
            (let ((_%f97580%_ _%f97574%_))
              (__foldl1 _%f97580%_ _%iv97575%_ _%lst97576%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@289.15-289.16"
               'contract:
               'procedure?
               'value:
               _%f97574%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f97522%_ _%iv97523%_ _%lst97524%_)
        (let ((_%f97527%_ _%f97522%_))
          (let _%lp97536%_ ((_%rest97538%_ _%lst97524%_)
                            (_%r97539%_ _%iv97523%_))
            (let* ((_%rest9754097548%_ _%rest97538%_)
                   (_%else9754297556%_ (lambda () _%r97539%_))
                   (_%K9754497562%_
                    (lambda (_%rest97559%_ _%x97560%_)
                      (_%lp97536%_
                       _%rest97559%_
                       (let ()
                         (declare (not safe))
                         (_%f97527%_ _%x97560%_ _%r97539%_))))))
              (if (pair? _%rest9754097548%_)
                  (let ((_%hd9754597565%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9754097548%_)))
                        (_%tl9754697567%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9754097548%_))))
                    (let* ((_%x97570%_ _%hd9754597565%_)
                           (_%rest97572%_ _%tl9754697567%_))
                      (_%K9754497562%_ _%rest97572%_ _%x97570%_)))
                  (_%else9754297556%_)))))))
    (define foldl2
      (lambda (_%f97505%_ _%iv97506%_ _%lst197507%_ _%lst297508%_)
        (if (procedure? _%f97505%_)
            (let ((_%f97512%_ _%f97505%_))
              (__foldl2 _%f97512%_ _%iv97506%_ _%lst197507%_ _%lst297508%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@296.15-296.16"
               'contract:
               'procedure?
               'value:
               _%f97505%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f97418%_ _%iv97419%_ _%lst197420%_ _%lst297421%_)
        (let ((_%f97424%_ _%f97418%_))
          (let _%lp97433%_ ((_%rest197435%_ _%lst197420%_)
                            (_%rest297436%_ _%lst297421%_)
                            (_%r97437%_ _%iv97419%_))
            (let* ((_%rest19743897446%_ _%rest197435%_)
                   (_%else9744097454%_ (lambda () _%r97437%_))
                   (_%K9744297493%_
                    (lambda (_%rest197457%_ _%x197458%_)
                      (let* ((_%rest29745997467%_ _%rest297436%_)
                             (_%else9746197475%_ (lambda () _%r97437%_))
                             (_%K9746397481%_
                              (lambda (_%rest297478%_ _%x297479%_)
                                (_%lp97433%_
                                 _%rest197457%_
                                 _%rest297478%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f97424%_
                                    _%x197458%_
                                    _%x297479%_
                                    _%r97437%_))))))
                        (if (pair? _%rest29745997467%_)
                            (let ((_%hd9746497484%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29745997467%_)))
                                  (_%tl9746597486%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29745997467%_))))
                              (let* ((_%x297489%_ _%hd9746497484%_)
                                     (_%rest297491%_ _%tl9746597486%_))
                                (_%K9746397481%_ _%rest297491%_ _%x297489%_)))
                            (_%else9746197475%_))))))
              (if (pair? _%rest19743897446%_)
                  (let ((_%hd9744397496%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19743897446%_)))
                        (_%tl9744497498%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19743897446%_))))
                    (let* ((_%x197501%_ _%hd9744397496%_)
                           (_%rest197503%_ _%tl9744497498%_))
                      (_%K9744297493%_ _%rest197503%_ _%x197501%_)))
                  (_%else9744097454%_)))))))
    (define foldl
      (lambda _g99749_
        (let ((_g99750_ (let () (declare (not safe)) (##length _g99749_))))
          (cond ((let () (declare (not safe)) (##fx= _g99750_ 3))
                 (apply foldl1 _g99749_))
                ((let () (declare (not safe)) (##fx= _g99750_ 4))
                 (apply foldl2 _g99749_))
                ((let () (declare (not safe)) (##fx>= _g99750_ 4))
                 (apply foldl* _g99749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g99749_))))))
    (define foldl*
      (lambda (_%f97387%_ _%iv97388%_ . _%rest97389%_)
        (if (procedure? _%f97387%_)
            (let ((_%f97393%_ _%f97387%_))
              (declare (not safe))
              (##apply __foldl* _%f97393%_ _%iv97388%_ _%rest97389%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@314.15-314.16"
               'contract:
               'procedure?
               'value:
               _%f97387%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f97365%_ _%iv97366%_ . _%rest97367%_)
        (let ((_%f97370%_ _%f97365%_))
          (let _%recur97379%_ ((_%iv97381%_ _%iv97366%_)
                               (_%rest97382%_ _%rest97367%_))
            (if (__andmap1 pair? _%rest97382%_)
                (_%recur97379%_
                 (let ((__tmp99751
                        (__foldr1
                         (lambda (_%xs97384%_ _%r97385%_)
                           (cons (car _%xs97384%_) _%r97385%_))
                         (list _%iv97381%_)
                         _%rest97382%_)))
                   (declare (not safe))
                   (##apply _%f97370%_ __tmp99751))
                 (map cdr _%rest97382%_))
                _%iv97381%_)))))
    (define foldr1
      (lambda (_%f97349%_ _%iv97350%_ _%lst97351%_)
        (if (procedure? _%f97349%_)
            (let ((_%f97355%_ _%f97349%_))
              (__foldr1 _%f97355%_ _%iv97350%_ _%lst97351%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@324.15-324.16"
               'contract:
               'procedure?
               'value:
               _%f97349%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f97298%_ _%iv97299%_ _%lst97300%_)
        (let ((_%f97303%_ _%f97298%_))
          (let _%recur97312%_ ((_%rest97314%_ _%lst97300%_))
            (let* ((_%rest9731597323%_ _%rest97314%_)
                   (_%else9731797331%_ (lambda () _%iv97299%_))
                   (_%K9731997337%_
                    (lambda (_%rest97334%_ _%x97335%_)
                      (let ((__tmp99752 (_%recur97312%_ _%rest97334%_)))
                        (declare (not safe))
                        (_%f97303%_ _%x97335%_ __tmp99752)))))
              (if (pair? _%rest9731597323%_)
                  (let ((_%hd9732097340%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9731597323%_)))
                        (_%tl9732197342%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9731597323%_))))
                    (let* ((_%x97345%_ _%hd9732097340%_)
                           (_%rest97347%_ _%tl9732197342%_))
                      (_%K9731997337%_ _%rest97347%_ _%x97345%_)))
                  (_%else9731797331%_)))))))
    (define foldr2
      (lambda (_%f97281%_ _%iv97282%_ _%lst197283%_ _%lst297284%_)
        (if (procedure? _%f97281%_)
            (let ((_%f97288%_ _%f97281%_))
              (__foldr2 _%f97288%_ _%iv97282%_ _%lst197283%_ _%lst297284%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@331.15-331.16"
               'contract:
               'procedure?
               'value:
               _%f97281%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f97195%_ _%iv97196%_ _%lst197197%_ _%lst297198%_)
        (let ((_%f97201%_ _%f97195%_))
          (let _%recur97210%_ ((_%rest197212%_ _%lst197197%_)
                               (_%rest297213%_ _%lst297198%_))
            (let* ((_%rest19721497222%_ _%rest197212%_)
                   (_%else9721697230%_ (lambda () _%iv97196%_))
                   (_%K9721897269%_
                    (lambda (_%rest197233%_ _%x197234%_)
                      (let* ((_%rest29723597243%_ _%rest297213%_)
                             (_%else9723797251%_ (lambda () _%iv97196%_))
                             (_%K9723997257%_
                              (lambda (_%rest297254%_ _%x297255%_)
                                (let ((__tmp99753
                                       (_%recur97210%_
                                        _%rest197233%_
                                        _%rest297254%_)))
                                  (declare (not safe))
                                  (_%f97201%_
                                   _%x197234%_
                                   _%x297255%_
                                   __tmp99753)))))
                        (if (pair? _%rest29723597243%_)
                            (let ((_%hd9724097260%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29723597243%_)))
                                  (_%tl9724197262%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29723597243%_))))
                              (let* ((_%x297265%_ _%hd9724097260%_)
                                     (_%rest297267%_ _%tl9724197262%_))
                                (_%K9723997257%_ _%rest297267%_ _%x297265%_)))
                            (_%else9723797251%_))))))
              (if (pair? _%rest19721497222%_)
                  (let ((_%hd9721997272%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19721497222%_)))
                        (_%tl9722097274%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19721497222%_))))
                    (let* ((_%x197277%_ _%hd9721997272%_)
                           (_%rest197279%_ _%tl9722097274%_))
                      (_%K9721897269%_ _%rest197279%_ _%x197277%_)))
                  (_%else9721697230%_)))))))
    (define foldr
      (lambda _g99754_
        (let ((_g99755_ (let () (declare (not safe)) (##length _g99754_))))
          (cond ((let () (declare (not safe)) (##fx= _g99755_ 3))
                 (apply foldr1 _g99754_))
                ((let () (declare (not safe)) (##fx= _g99755_ 4))
                 (apply foldr2 _g99754_))
                ((let () (declare (not safe)) (##fx>= _g99755_ 4))
                 (apply foldr* _g99754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g99754_))))))
    (define foldr*
      (lambda (_%f97164%_ _%iv97165%_ . _%rest97166%_)
        (if (procedure? _%f97164%_)
            (let ((_%f97170%_ _%f97164%_))
              (declare (not safe))
              (##apply __foldr* _%f97170%_ _%iv97165%_ _%rest97166%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@349.15-349.16"
               'contract:
               'procedure?
               'value:
               _%f97164%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f97143%_ _%iv97144%_ . _%rest97145%_)
        (let ((_%f97148%_ _%f97143%_))
          (let _%recur97157%_ ((_%rest97159%_ _%rest97145%_))
            (if (__andmap1 pair? _%rest97159%_)
                (let ((__tmp99756
                       (__foldr1
                        (lambda (_%xs97161%_ _%r97162%_)
                          (cons (car _%xs97161%_) _%r97162%_))
                        (list (_%recur97157%_ (map cdr _%rest97159%_)))
                        _%rest97159%_)))
                  (declare (not safe))
                  (##apply _%f97148%_ __tmp99756))
                _%iv97144%_)))))
    (define remove-nulls!
      (lambda (_%l97030%_)
        (let* ((_%l9703197044%_ _%l97030%_)
               (_%E9703597048%_
                (lambda ()
                  (error '"No clause matching"
                         _%l9703197044%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K9704097133%_
                 (lambda (_%r97131%_) (remove-nulls! _%r97131%_)))
                (_%K9703797120%_
                 (lambda (_%r97060%_)
                   (let _%loop97062%_ ((_%l97064%_ _%l97030%_)
                                       (_%r97065%_ _%r97060%_))
                     (let* ((_%r9706697079%_ _%r97065%_)
                            (_%E9707097083%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r9706697079%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K9707597110%_
                              (lambda (_%rr97108%_)
                                (let ((__tmp99758 _%l97064%_)
                                      (__tmp99757 (remove-nulls! _%rr97108%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp99758 __tmp99757))))
                             (_%K9707297097%_
                              (lambda (_%rr97095%_)
                                (_%loop97062%_ _%r97065%_ _%rr97095%_)))
                             (_%K9707197088%_ (lambda () '#!void)))
                         (if (pair? _%r9706697079%_)
                             (let ((_%tl9707797115%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r9706697079%_)))
                                   (_%hd9707697113%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r9706697079%_))))
                               (if (null? _%hd9707697113%_)
                                   (let ((_%rr97118%_ _%tl9707797115%_))
                                     (_%K9707597110%_ _%rr97118%_))
                                   (let ((_%rr97103%_ _%tl9707797115%_))
                                     (_%K9707297097%_ _%rr97103%_))))
                             '#!void))))
                   _%l97030%_))
                (_%K9703697053%_ (lambda () _%l97030%_)))
            (if (pair? _%l9703197044%_)
                (let ((_%tl9704297138%_
                       (let () (declare (not safe)) (##cdr _%l9703197044%_)))
                      (_%hd9704197136%_
                       (let () (declare (not safe)) (##car _%l9703197044%_))))
                  (if (null? _%hd9704197136%_)
                      (let ((_%r97141%_ _%tl9704297138%_))
                        (remove-nulls! _%r97141%_))
                      (let ((_%r97126%_ _%tl9704297138%_))
                        (_%K9703797120%_ _%r97126%_))))
                (_%K9703697053%_))))))
    (define append1!
      (lambda (_%l97015%_ _%x97016%_)
        (let ((_%l297019%_ (cons _%x97016%_ '())))
          (if (pair? _%l97015%_)
              (let ((_%l97021%_ _%l97015%_))
                (let ((__tmp99759
                       (let () (declare (not safe)) (##last-pair _%l97021%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp99759 _%l297019%_))
                _%l97021%_)
              _%l297019%_))))
    (define append-reverse-until
      (lambda (_%pred96999%_ _%rhead97000%_ _%tail97001%_)
        (if (procedure? _%pred96999%_)
            (let ((_%pred97005%_ _%pred96999%_))
              (__append-reverse-until
               _%pred97005%_
               _%rhead97000%_
               _%tail97001%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@389.29-389.33"
               'contract:
               'procedure?
               'value:
               _%pred96999%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred96941%_ _%rhead96942%_ _%tail96943%_)
        (let ((_%pred96946%_ _%pred96941%_))
          (let _%loop96955%_ ((_%rhead96957%_ _%rhead96942%_)
                              (_%tail96958%_ _%tail96943%_))
            (let* ((_%rhead9696096969%_ _%rhead96957%_)
                   (_%E9696396973%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead9696096969%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K9696796996%_ (lambda () (values '() _%tail96958%_)))
                    (_%K9696496980%_
                     (lambda (_%r96977%_ _%a96978%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred96946%_ _%a96978%_))
                           (values _%rhead96957%_ _%tail96958%_)
                           (_%loop96955%_
                            _%r96977%_
                            (cons _%a96978%_ _%tail96958%_))))))
                (let ((_%try-match9696296992%_
                       (lambda ()
                         (if (pair? _%rhead9696096969%_)
                             (let ((_%tl9696696985%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead9696096969%_)))
                                   (_%hd9696596983%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead9696096969%_))))
                               (let ((_%a96988%_ _%hd9696596983%_)
                                     (_%r96990%_ _%tl9696696985%_))
                                 (_%K9696496980%_ _%r96990%_ _%a96988%_)))
                             (_%E9696396973%_)))))
                  (if (null? _%rhead9696096969%_)
                      (_%K9696796996%_)
                      (_%try-match9696296992%_)))))))))
    (define andmap1
      (lambda (_%f96926%_ _%lst96927%_)
        (if (procedure? _%f96926%_)
            (let ((_%f96931%_ _%f96926%_)) (__andmap1 _%f96931%_ _%lst96927%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@400.16-400.17"
               'contract:
               'procedure?
               'value:
               _%f96926%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f96875%_ _%lst96876%_)
        (let ((_%f96879%_ _%f96875%_))
          (let _%lp96888%_ ((_%rest96890%_ _%lst96876%_))
            (let* ((_%rest9689296900%_ _%rest96890%_)
                   (_%else9689496908%_ (lambda () '#t))
                   (_%K9689696914%_
                    (lambda (_%rest96911%_ _%x96912%_)
                      (if (let () (declare (not safe)) (_%f96879%_ _%x96912%_))
                          (_%lp96888%_ _%rest96911%_)
                          '#f))))
              (if (pair? _%rest9689296900%_)
                  (let ((_%hd9689796917%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9689296900%_)))
                        (_%tl9689896919%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9689296900%_))))
                    (let* ((_%x96922%_ _%hd9689796917%_)
                           (_%rest96924%_ _%tl9689896919%_))
                      (_%K9689696914%_ _%rest96924%_ _%x96922%_)))
                  (_%else9689496908%_)))))))
    (define andmap2
      (lambda (_%f96859%_ _%lst196860%_ _%lst296861%_)
        (if (procedure? _%f96859%_)
            (let ((_%f96865%_ _%f96859%_))
              (__andmap2 _%f96865%_ _%lst196860%_ _%lst296861%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@409.16-409.17"
               'contract:
               'procedure?
               'value:
               _%f96859%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f96773%_ _%lst196774%_ _%lst296775%_)
        (let ((_%f96778%_ _%f96773%_))
          (let _%lp96787%_ ((_%rest196789%_ _%lst196774%_)
                            (_%rest296790%_ _%lst296775%_))
            (let* ((_%rest19679296800%_ _%rest196789%_)
                   (_%else9679496808%_ (lambda () '#t))
                   (_%K9679696847%_
                    (lambda (_%rest196811%_ _%x196812%_)
                      (let* ((_%rest29681396821%_ _%rest296790%_)
                             (_%else9681596829%_ (lambda () '#t))
                             (_%K9681796835%_
                              (lambda (_%rest296832%_ _%x296833%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f96778%_ _%x196812%_ _%x296833%_))
                                    (_%lp96787%_ _%rest196811%_ _%rest296832%_)
                                    '#f))))
                        (if (pair? _%rest29681396821%_)
                            (let ((_%hd9681896838%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29681396821%_)))
                                  (_%tl9681996840%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29681396821%_))))
                              (let* ((_%x296843%_ _%hd9681896838%_)
                                     (_%rest296845%_ _%tl9681996840%_))
                                (_%K9681796835%_ _%rest296845%_ _%x296843%_)))
                            (_%else9681596829%_))))))
              (if (pair? _%rest19679296800%_)
                  (let ((_%hd9679796850%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19679296800%_)))
                        (_%tl9679896852%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19679296800%_))))
                    (let* ((_%x196855%_ _%hd9679796850%_)
                           (_%rest196857%_ _%tl9679896852%_))
                      (_%K9679696847%_ _%rest196857%_ _%x196855%_)))
                  (_%else9679496808%_)))))))
    (define andmap
      (lambda _g99760_
        (let ((_g99761_ (let () (declare (not safe)) (##length _g99760_))))
          (cond ((let () (declare (not safe)) (##fx= _g99761_ 2))
                 (apply andmap1 _g99760_))
                ((let () (declare (not safe)) (##fx= _g99761_ 3))
                 (apply andmap2 _g99760_))
                ((let () (declare (not safe)) (##fx>= _g99761_ 3))
                 (apply andmap* _g99760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g99760_))))))
    (define andmap*
      (lambda (_%f96746%_ . _%rest96747%_)
        (if (procedure? _%f96746%_)
            (let ((_%f96751%_ _%f96746%_))
              (declare (not safe))
              (##apply __andmap* _%f96751%_ _%rest96747%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@429.16-429.17"
               'contract:
               'procedure?
               'value:
               _%f96746%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f96728%_ . _%rest96729%_)
        (let ((_%f96732%_ _%f96728%_))
          (let _%recur96741%_ ((_%rest96743%_ _%rest96729%_))
            (if (__andmap1 pair? _%rest96743%_)
                (if (let ((__tmp99762 (map car _%rest96743%_)))
                      (declare (not safe))
                      (##apply _%f96732%_ __tmp99762))
                    (_%recur96741%_ (map cdr _%rest96743%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f96713%_ _%lst96714%_)
        (if (procedure? _%f96713%_)
            (let ((_%f96718%_ _%f96713%_)) (__ormap1 _%f96718%_ _%lst96714%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.15-438.16"
               'contract:
               'procedure?
               'value:
               _%f96713%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f96660%_ _%lst96661%_)
        (let ((_%f96664%_ _%f96660%_))
          (let _%lp96673%_ ((_%rest96675%_ _%lst96661%_))
            (let* ((_%rest9667696684%_ _%rest96675%_)
                   (_%else9667896692%_ (lambda () '#f))
                   (_%K9668096701%_
                    (lambda (_%rest96695%_ _%x96696%_)
                      (let ((_%$e96698%_
                             (let ()
                               (declare (not safe))
                               (_%f96664%_ _%x96696%_))))
                        (if _%$e96698%_
                            _%$e96698%_
                            (_%lp96673%_ _%rest96695%_))))))
              (if (pair? _%rest9667696684%_)
                  (let ((_%hd9668196704%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9667696684%_)))
                        (_%tl9668296706%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9667696684%_))))
                    (let* ((_%x96709%_ _%hd9668196704%_)
                           (_%rest96711%_ _%tl9668296706%_))
                      (_%K9668096701%_ _%rest96711%_ _%x96709%_)))
                  (_%else9667896692%_)))))))
    (define ormap2
      (lambda (_%f96644%_ _%lst196645%_ _%lst296646%_)
        (if (procedure? _%f96644%_)
            (let ((_%f96650%_ _%f96644%_))
              (__ormap2 _%f96650%_ _%lst196645%_ _%lst296646%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@445.15-445.16"
               'contract:
               'procedure?
               'value:
               _%f96644%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f96556%_ _%lst196557%_ _%lst296558%_)
        (let ((_%f96561%_ _%f96556%_))
          (let _%lp96570%_ ((_%rest196572%_ _%lst196557%_)
                            (_%rest296573%_ _%lst296558%_))
            (let* ((_%rest19657496582%_ _%rest196572%_)
                   (_%else9657696590%_ (lambda () '#f))
                   (_%K9657896632%_
                    (lambda (_%rest196593%_ _%x196594%_)
                      (let* ((_%rest29659596603%_ _%rest296573%_)
                             (_%else9659796611%_ (lambda () '#f))
                             (_%K9659996620%_
                              (lambda (_%rest296614%_ _%x296615%_)
                                (let ((_%$e96617%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f96561%_
                                          _%x196594%_
                                          _%x296615%_))))
                                  (if _%$e96617%_
                                      _%$e96617%_
                                      (_%lp96570%_
                                       _%rest196593%_
                                       _%rest296614%_))))))
                        (if (pair? _%rest29659596603%_)
                            (let ((_%hd9660096623%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29659596603%_)))
                                  (_%tl9660196625%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29659596603%_))))
                              (let* ((_%x296628%_ _%hd9660096623%_)
                                     (_%rest296630%_ _%tl9660196625%_))
                                (_%K9659996620%_ _%rest296630%_ _%x296628%_)))
                            (_%else9659796611%_))))))
              (if (pair? _%rest19657496582%_)
                  (let ((_%hd9657996635%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19657496582%_)))
                        (_%tl9658096637%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19657496582%_))))
                    (let* ((_%x196640%_ _%hd9657996635%_)
                           (_%rest196642%_ _%tl9658096637%_))
                      (_%K9657896632%_ _%rest196642%_ _%x196640%_)))
                  (_%else9657696590%_)))))))
    (define ormap
      (lambda _g99763_
        (let ((_g99764_ (let () (declare (not safe)) (##length _g99763_))))
          (cond ((let () (declare (not safe)) (##fx= _g99764_ 2))
                 (apply ormap1 _g99763_))
                ((let () (declare (not safe)) (##fx= _g99764_ 3))
                 (apply ormap2 _g99763_))
                ((let () (declare (not safe)) (##fx>= _g99764_ 3))
                 (apply ormap* _g99763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g99763_))))))
    (define ormap*
      (lambda (_%f96529%_ . _%rest96530%_)
        (if (procedure? _%f96529%_)
            (let ((_%f96534%_ _%f96529%_))
              (declare (not safe))
              (##apply __ormap* _%f96534%_ _%rest96530%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@463.15-463.16"
               'contract:
               'procedure?
               'value:
               _%f96529%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f96509%_ . _%rest96510%_)
        (let ((_%f96513%_ _%f96509%_))
          (let _%recur96522%_ ((_%rest96524%_ _%rest96510%_))
            (if (__andmap1 pair? _%rest96524%_)
                (let ((_%$e96526%_
                       (let ((__tmp99765 (map car _%rest96524%_)))
                         (declare (not safe))
                         (##apply _%f96513%_ __tmp99765))))
                  (if _%$e96526%_
                      _%$e96526%_
                      (_%recur96522%_ (map cdr _%rest96524%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f96494%_ _%lst96495%_)
        (if (procedure? _%f96494%_)
            (let ((_%f96499%_ _%f96494%_))
              (__filter-map1 _%f96499%_ _%lst96495%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@470.20-470.21"
               'contract:
               'procedure?
               'value:
               _%f96494%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f96437%_ _%lst96438%_)
        (let ((_%f96441%_ _%f96437%_))
          (let _%recur96450%_ ((_%rest96452%_ _%lst96438%_))
            (let* ((_%rest9645496462%_ _%rest96452%_)
                   (_%else9645696470%_ (lambda () '()))
                   (_%K9645896482%_
                    (lambda (_%rest96473%_ _%x96474%_)
                      (let ((_%$e96476%_
                             (let ()
                               (declare (not safe))
                               (_%f96441%_ _%x96474%_))))
                        (if _%$e96476%_
                            ((lambda (_%r96479%_)
                               (cons _%r96479%_
                                     (_%recur96450%_ _%rest96473%_)))
                             _%$e96476%_)
                            (_%recur96450%_ _%rest96473%_))))))
              (if (pair? _%rest9645496462%_)
                  (let ((_%hd9645996485%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9645496462%_)))
                        (_%tl9646096487%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9645496462%_))))
                    (let* ((_%x96490%_ _%hd9645996485%_)
                           (_%rest96492%_ _%tl9646096487%_))
                      (_%K9645896482%_ _%rest96492%_ _%x96490%_)))
                  (_%else9645696470%_)))))))
    (define filter-map2
      (lambda (_%f96421%_ _%lst196422%_ _%lst296423%_)
        (if (procedure? _%f96421%_)
            (let ((_%f96427%_ _%f96421%_))
              (__filter-map2 _%f96427%_ _%lst196422%_ _%lst296423%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f96421%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f96329%_ _%lst196330%_ _%lst296331%_)
        (let ((_%f96334%_ _%f96329%_))
          (let _%recur96343%_ ((_%rest196345%_ _%lst196330%_)
                               (_%rest296346%_ _%lst296331%_))
            (let* ((_%rest19634896356%_ _%rest196345%_)
                   (_%else9635096364%_ (lambda () '()))
                   (_%K9635296409%_
                    (lambda (_%rest196367%_ _%x196368%_)
                      (let* ((_%rest29636996377%_ _%rest296346%_)
                             (_%else9637196385%_ (lambda () '()))
                             (_%K9637396397%_
                              (lambda (_%rest296388%_ _%x296389%_)
                                (let ((_%$e96391%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f96334%_
                                          _%x196368%_
                                          _%x296389%_))))
                                  (if _%$e96391%_
                                      ((lambda (_%r96394%_)
                                         (cons _%r96394%_
                                               (_%recur96343%_
                                                _%rest196367%_
                                                _%rest296388%_)))
                                       _%$e96391%_)
                                      (_%recur96343%_
                                       _%rest196367%_
                                       _%rest296388%_))))))
                        (if (pair? _%rest29636996377%_)
                            (let ((_%hd9637496400%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29636996377%_)))
                                  (_%tl9637596402%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29636996377%_))))
                              (let* ((_%x296405%_ _%hd9637496400%_)
                                     (_%rest296407%_ _%tl9637596402%_))
                                (_%K9637396397%_ _%rest296407%_ _%x296405%_)))
                            (_%else9637196385%_))))))
              (if (pair? _%rest19634896356%_)
                  (let ((_%hd9635396412%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19634896356%_)))
                        (_%tl9635496414%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19634896356%_))))
                    (let* ((_%x196417%_ _%hd9635396412%_)
                           (_%rest196419%_ _%tl9635496414%_))
                      (_%K9635296409%_ _%rest196419%_ _%x196417%_)))
                  (_%else9635096364%_)))))))
    (define filter-map
      (lambda _g99766_
        (let ((_g99767_ (let () (declare (not safe)) (##length _g99766_))))
          (cond ((let () (declare (not safe)) (##fx= _g99767_ 2))
                 (apply filter-map1 _g99766_))
                ((let () (declare (not safe)) (##fx= _g99767_ 3))
                 (apply filter-map2 _g99766_))
                ((let () (declare (not safe)) (##fx>= _g99767_ 3))
                 (apply filter-map* _g99766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g99766_))))))
    (define filter-map*
      (lambda (_%f96302%_ . _%rest96303%_)
        (if (procedure? _%f96302%_)
            (let ((_%f96307%_ _%f96302%_))
              (declare (not safe))
              (##apply __filter-map* _%f96307%_ _%rest96303%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@503.20-503.21"
               'contract:
               'procedure?
               'value:
               _%f96302%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f96278%_ . _%rest96279%_)
        (let ((_%f96282%_ _%f96278%_))
          (let _%recur96291%_ ((_%rest96293%_ _%rest96279%_))
            (if (__andmap1 pair? _%rest96293%_)
                (let ((_%$e96296%_
                       (let ((__tmp99768 (map car _%rest96293%_)))
                         (declare (not safe))
                         (##apply _%f96282%_ __tmp99768))))
                  (if _%$e96296%_
                      ((lambda (_%r96299%_)
                         (cons _%r96299%_
                               (_%recur96291%_ (map cdr _%rest96293%_))))
                       _%$e96296%_)
                      (_%recur96291%_ (map cdr _%rest96293%_))))
                '())))))
    (define agetq__%
      (lambda (_%key96254%_ _%lst96256%_ _%default96258%_)
        (let ((_%$e96261%_
               (if (pair? _%lst96256%_) (assq _%key96254%_ _%lst96256%_) '#f)))
          (if _%$e96261%_
              (cdr _%$e96261%_)
              (if (procedure? _%default96258%_)
                  (_%default96258%_ _%key96254%_)
                  _%default96258%_)))))
    (define agetq__0
      (lambda (_%key96269%_ _%lst96270%_)
        (let ((_%default96272%_ '#f))
          (agetq__% _%key96269%_ _%lst96270%_ _%default96272%_))))
    (define agetq
      (lambda _g99769_
        (let ((_g99770_ (let () (declare (not safe)) (##length _g99769_))))
          (cond ((let () (declare (not safe)) (##fx= _g99770_ 2))
                 (apply agetq__0 _g99769_))
                ((let () (declare (not safe)) (##fx= _g99770_ 3))
                 (apply agetq__% _g99769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g99769_))))))
    (define agetv__%
      (lambda (_%key96229%_ _%lst96231%_ _%default96233%_)
        (let ((_%$e96236%_
               (if (pair? _%lst96231%_) (assv _%key96229%_ _%lst96231%_) '#f)))
          (if _%$e96236%_
              (cdr _%$e96236%_)
              (if (procedure? _%default96233%_)
                  (_%default96233%_ _%key96229%_)
                  _%default96233%_)))))
    (define agetv__0
      (lambda (_%key96244%_ _%lst96245%_)
        (let ((_%default96247%_ '#f))
          (agetv__% _%key96244%_ _%lst96245%_ _%default96247%_))))
    (define agetv
      (lambda _g99771_
        (let ((_g99772_ (let () (declare (not safe)) (##length _g99771_))))
          (cond ((let () (declare (not safe)) (##fx= _g99772_ 2))
                 (apply agetv__0 _g99771_))
                ((let () (declare (not safe)) (##fx= _g99772_ 3))
                 (apply agetv__% _g99771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g99771_))))))
    (define aget__%
      (lambda (_%key96204%_ _%lst96206%_ _%default96208%_)
        (let ((_%$e96211%_
               (if (pair? _%lst96206%_)
                   (assoc _%key96204%_ _%lst96206%_)
                   '#f)))
          (if _%$e96211%_
              (cdr _%$e96211%_)
              (if (procedure? _%default96208%_)
                  (_%default96208%_ _%key96204%_)
                  _%default96208%_)))))
    (define aget__0
      (lambda (_%key96219%_ _%lst96220%_)
        (let ((_%default96222%_ '#f))
          (aget__% _%key96219%_ _%lst96220%_ _%default96222%_))))
    (define aget
      (lambda _g99773_
        (let ((_g99774_ (let () (declare (not safe)) (##length _g99773_))))
          (cond ((let () (declare (not safe)) (##fx= _g99774_ 2))
                 (apply aget__0 _g99773_))
                ((let () (declare (not safe)) (##fx= _g99774_ 3))
                 (apply aget__% _g99773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g99773_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key96133%_ _%lst96135%_ _%default96137%_)
        (let _%lp96140%_ ((_%rest96143%_ _%lst96135%_))
          (let* ((_%rest9614596155%_ _%rest96143%_)
                 (_%else9614796163%_
                  (lambda ()
                    (if (procedure? _%default96137%_)
                        (_%default96137%_ _%key96133%_)
                        _%default96137%_)))
                 (_%K9614996172%_
                  (lambda (_%rest96166%_ _%v96167%_ _%k96169%_)
                    (if (eq? _%k96169%_ _%key96133%_)
                        _%v96167%_
                        (_%lp96140%_ _%rest96166%_)))))
            (if (pair? _%rest9614596155%_)
                (let ((_%hd9615096175%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9614596155%_)))
                      (_%tl9615196177%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9614596155%_))))
                  (let ((_%k96180%_ _%hd9615096175%_))
                    (if (pair? _%tl9615196177%_)
                        (let ((_%hd9615296182%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9615196177%_)))
                              (_%tl9615396184%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9615196177%_))))
                          (let* ((_%v96187%_ _%hd9615296182%_)
                                 (_%rest96189%_ _%tl9615396184%_))
                            (_%K9614996172%_
                             _%rest96189%_
                             _%v96187%_
                             _%k96180%_)))
                        (_%else9614796163%_))))
                (_%else9614796163%_))))))
    (define pgetq__0
      (lambda (_%key96194%_ _%lst96195%_)
        (let ((_%default96197%_ '#f))
          (pgetq__% _%key96194%_ _%lst96195%_ _%default96197%_))))
    (define pgetq
      (lambda _g99775_
        (let ((_g99776_ (let () (declare (not safe)) (##length _g99775_))))
          (cond ((let () (declare (not safe)) (##fx= _g99776_ 2))
                 (apply pgetq__0 _g99775_))
                ((let () (declare (not safe)) (##fx= _g99776_ 3))
                 (apply pgetq__% _g99775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g99775_))))))
    (define pgetv__%
      (lambda (_%key96062%_ _%lst96064%_ _%default96066%_)
        (let _%lp96069%_ ((_%rest96072%_ _%lst96064%_))
          (let* ((_%rest9607496084%_ _%rest96072%_)
                 (_%else9607696092%_
                  (lambda ()
                    (if (procedure? _%default96066%_)
                        (_%default96066%_ _%key96062%_)
                        _%default96066%_)))
                 (_%K9607896101%_
                  (lambda (_%rest96095%_ _%v96096%_ _%k96098%_)
                    (if (eqv? _%k96098%_ _%key96062%_)
                        _%v96096%_
                        (_%lp96069%_ _%rest96095%_)))))
            (if (pair? _%rest9607496084%_)
                (let ((_%hd9607996104%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9607496084%_)))
                      (_%tl9608096106%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9607496084%_))))
                  (let ((_%k96109%_ _%hd9607996104%_))
                    (if (pair? _%tl9608096106%_)
                        (let ((_%hd9608196111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9608096106%_)))
                              (_%tl9608296113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9608096106%_))))
                          (let* ((_%v96116%_ _%hd9608196111%_)
                                 (_%rest96118%_ _%tl9608296113%_))
                            (_%K9607896101%_
                             _%rest96118%_
                             _%v96116%_
                             _%k96109%_)))
                        (_%else9607696092%_))))
                (_%else9607696092%_))))))
    (define pgetv__0
      (lambda (_%key96123%_ _%lst96124%_)
        (let ((_%default96126%_ '#f))
          (pgetv__% _%key96123%_ _%lst96124%_ _%default96126%_))))
    (define pgetv
      (lambda _g99777_
        (let ((_g99778_ (let () (declare (not safe)) (##length _g99777_))))
          (cond ((let () (declare (not safe)) (##fx= _g99778_ 2))
                 (apply pgetv__0 _g99777_))
                ((let () (declare (not safe)) (##fx= _g99778_ 3))
                 (apply pgetv__% _g99777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g99777_))))))
    (define pget__%
      (lambda (_%key95991%_ _%lst95993%_ _%default95995%_)
        (let _%lp95998%_ ((_%rest96001%_ _%lst95993%_))
          (let* ((_%rest9600396013%_ _%rest96001%_)
                 (_%else9600596021%_
                  (lambda ()
                    (if (procedure? _%default95995%_)
                        (_%default95995%_ _%key95991%_)
                        _%default95995%_)))
                 (_%K9600796030%_
                  (lambda (_%rest96024%_ _%v96025%_ _%k96027%_)
                    (if (equal? _%k96027%_ _%key95991%_)
                        _%v96025%_
                        (_%lp95998%_ _%rest96024%_)))))
            (if (pair? _%rest9600396013%_)
                (let ((_%hd9600896033%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9600396013%_)))
                      (_%tl9600996035%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9600396013%_))))
                  (let ((_%k96038%_ _%hd9600896033%_))
                    (if (pair? _%tl9600996035%_)
                        (let ((_%hd9601096040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9600996035%_)))
                              (_%tl9601196042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9600996035%_))))
                          (let* ((_%v96045%_ _%hd9601096040%_)
                                 (_%rest96047%_ _%tl9601196042%_))
                            (_%K9600796030%_
                             _%rest96047%_
                             _%v96045%_
                             _%k96038%_)))
                        (_%else9600596021%_))))
                (_%else9600596021%_))))))
    (define pget__0
      (lambda (_%key96052%_ _%lst96053%_)
        (let ((_%default96055%_ '#f))
          (pget__% _%key96052%_ _%lst96053%_ _%default96055%_))))
    (define pget
      (lambda _g99779_
        (let ((_g99780_ (let () (declare (not safe)) (##length _g99779_))))
          (cond ((let () (declare (not safe)) (##fx= _g99780_ 2))
                 (apply pget__0 _g99779_))
                ((let () (declare (not safe)) (##fx= _g99780_ 3))
                 (apply pget__% _g99779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g99779_))))))
    (define find
      (lambda (_%pred95975%_ _%lst95976%_)
        (if (procedure? _%pred95975%_)
            (let ((_%pred95980%_ _%pred95975%_))
              (__find _%pred95980%_ _%lst95976%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@549.13-549.17"
               'contract:
               'procedure?
               'value:
               _%pred95975%_)
              '#!void))))
    (define __find
      (lambda (_%pred95958%_ _%lst95959%_)
        (let* ((_%pred95962%_ _%pred95958%_)
               (_%$e95971%_ (__memf _%pred95962%_ _%lst95959%_)))
          (if _%$e95971%_
              (let () (declare (not safe)) (##car _%$e95971%_))
              '#f))))
    (define memf
      (lambda (_%proc95943%_ _%lst95944%_)
        (if (procedure? _%proc95943%_)
            (let ((_%proc95948%_ _%proc95943%_))
              (__memf _%proc95948%_ _%lst95944%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc95943%_)
              '#!void))))
    (define __memf
      (lambda (_%proc95893%_ _%lst95894%_)
        (let ((_%proc95897%_ _%proc95893%_))
          (let _%lp95906%_ ((_%rest95908%_ _%lst95894%_))
            (let* ((_%rest9590995917%_ _%rest95908%_)
                   (_%else9591195925%_ (lambda () '#f))
                   (_%K9591395931%_
                    (lambda (_%tl95928%_ _%hd95929%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc95897%_ _%hd95929%_))
                          _%rest95908%_
                          (_%lp95906%_ _%tl95928%_)))))
              (if (pair? _%rest9590995917%_)
                  (let ((_%hd9591495934%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9590995917%_)))
                        (_%tl9591595936%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9590995917%_))))
                    (let* ((_%hd95939%_ _%hd9591495934%_)
                           (_%tl95941%_ _%tl9591595936%_))
                      (_%K9591395931%_ _%tl95941%_ _%hd95939%_)))
                  (_%else9591195925%_)))))))
    (define remove1
      (lambda (_%el95846%_ _%lst95848%_)
        (let _%lp95851%_ ((_%rest95854%_ _%lst95848%_) (_%r95856%_ '()))
          (let* ((_%rest9585895866%_ _%rest95854%_)
                 (_%else9586095874%_ (lambda () _%lst95848%_))
                 (_%K9586295881%_
                  (lambda (_%rest95877%_ _%hd95878%_)
                    (if (equal? _%el95846%_ _%hd95878%_)
                        (__foldl1 cons _%rest95877%_ _%r95856%_)
                        (_%lp95851%_
                         _%rest95877%_
                         (cons _%hd95878%_ _%r95856%_))))))
            (if (pair? _%rest9585895866%_)
                (let ((_%hd9586395884%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9585895866%_)))
                      (_%tl9586495886%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9585895866%_))))
                  (let* ((_%hd95889%_ _%hd9586395884%_)
                         (_%rest95891%_ _%tl9586495886%_))
                    (_%K9586295881%_ _%rest95891%_ _%hd95889%_)))
                (_%else9586095874%_))))))
    (define remv1
      (lambda (_%el95799%_ _%lst95801%_)
        (let _%lp95804%_ ((_%rest95807%_ _%lst95801%_) (_%r95809%_ '()))
          (let* ((_%rest9581195819%_ _%rest95807%_)
                 (_%else9581395827%_ (lambda () _%lst95801%_))
                 (_%K9581595834%_
                  (lambda (_%rest95830%_ _%hd95831%_)
                    (if (eqv? _%el95799%_ _%hd95831%_)
                        (__foldl1 cons _%rest95830%_ _%r95809%_)
                        (_%lp95804%_
                         _%rest95830%_
                         (cons _%hd95831%_ _%r95809%_))))))
            (if (pair? _%rest9581195819%_)
                (let ((_%hd9581695837%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9581195819%_)))
                      (_%tl9581795839%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9581195819%_))))
                  (let* ((_%hd95842%_ _%hd9581695837%_)
                         (_%rest95844%_ _%tl9581795839%_))
                    (_%K9581595834%_ _%rest95844%_ _%hd95842%_)))
                (_%else9581395827%_))))))
    (define remq1
      (lambda (_%el95752%_ _%lst95754%_)
        (let _%lp95757%_ ((_%rest95760%_ _%lst95754%_) (_%r95762%_ '()))
          (let* ((_%rest9576495772%_ _%rest95760%_)
                 (_%else9576695780%_ (lambda () _%lst95754%_))
                 (_%K9576895787%_
                  (lambda (_%rest95783%_ _%hd95784%_)
                    (if (eq? _%el95752%_ _%hd95784%_)
                        (__foldl1 cons _%rest95783%_ _%r95762%_)
                        (_%lp95757%_
                         _%rest95783%_
                         (cons _%hd95784%_ _%r95762%_))))))
            (if (pair? _%rest9576495772%_)
                (let ((_%hd9576995790%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9576495772%_)))
                      (_%tl9577095792%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9576495772%_))))
                  (let* ((_%hd95795%_ _%hd9576995790%_)
                         (_%rest95797%_ _%tl9577095792%_))
                    (_%K9576895787%_ _%rest95797%_ _%hd95795%_)))
                (_%else9576695780%_))))))
    (define remf
      (lambda (_%proc95737%_ _%lst95738%_)
        (if (procedure? _%proc95737%_)
            (let ((_%proc95742%_ _%proc95737%_))
              (__remf _%proc95742%_ _%lst95738%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@576.13-576.17"
               'contract:
               'procedure?
               'value:
               _%proc95737%_)
              '#!void))))
    (define __remf
      (lambda (_%proc95686%_ _%lst95687%_)
        (let ((_%proc95690%_ _%proc95686%_))
          (let _%lp95699%_ ((_%rest95701%_ _%lst95687%_) (_%r95702%_ '()))
            (let* ((_%rest9570395711%_ _%rest95701%_)
                   (_%else9570595719%_ (lambda () _%lst95687%_))
                   (_%K9570795725%_
                    (lambda (_%rest95722%_ _%hd95723%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc95690%_ _%hd95723%_))
                          (__foldl1 cons _%rest95722%_ _%r95702%_)
                          (_%lp95699%_
                           _%rest95722%_
                           (cons _%hd95723%_ _%r95702%_))))))
              (if (pair? _%rest9570395711%_)
                  (let ((_%hd9570895728%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9570395711%_)))
                        (_%tl9570995730%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9570395711%_))))
                    (let* ((_%hd95733%_ _%hd9570895728%_)
                           (_%rest95735%_ _%tl9570995730%_))
                      (_%K9570795725%_ _%rest95735%_ _%hd95733%_)))
                  (_%else9570595719%_)))))))
    (define 1+
      (lambda (_%x95672%_)
        (if (number? _%x95672%_)
            (let ((_%x95676%_ _%x95672%_)) (__1+ _%x95676%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@585.11-585.12"
               'contract:
               'number?
               'value:
               _%x95672%_)
              '#!void))))
    (define __1+
      (lambda (_%x95660%_) (let ((_%x95663%_ _%x95660%_)) (+ _%x95663%_ '1))))
    (define 1-
      (lambda (_%x95646%_)
        (if (number? _%x95646%_)
            (let ((_%x95650%_ _%x95646%_)) (__1- _%x95650%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@593.11-593.12"
               'contract:
               'number?
               'value:
               _%x95646%_)
              '#!void))))
    (define __1-
      (lambda (_%x95634%_) (let ((_%x95637%_ _%x95634%_)) (- _%x95637%_ '1))))
    (define fx1+
      (lambda (_%x95620%_)
        (if (fixnum? _%x95620%_)
            (let ((_%x95624%_ _%x95620%_)) (__fx1+ _%x95624%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@601.13-601.14"
               'contract:
               'fixnum?
               'value:
               _%x95620%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x95608%_)
        (let ((_%x95611%_ _%x95608%_))
          (declare (not safe))
          (##fx+ _%x95611%_ '1))))
    (define fx1-
      (lambda (_%x95594%_)
        (if (fixnum? _%x95594%_)
            (let ((_%x95598%_ _%x95594%_)) (__fx1- _%x95598%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@609.13-609.14"
               'contract:
               'fixnum?
               'value:
               _%x95594%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x95582%_)
        (let ((_%x95585%_ _%x95582%_))
          (declare (not safe))
          (##fx- _%x95585%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x95579%_)
        (if (fixnum? _%x95579%_)
            (let () (declare (not safe)) (##fx>= _%x95579%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x95576%_)
        (if (fixnum? _%x95576%_)
            (let () (declare (not safe)) (##fx> _%x95576%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x95573%_)
        (let () (declare (not safe)) (##fx= _%x95573%_ '0))))
    (define fx<0?
      (lambda (_%x95570%_)
        (if (fixnum? _%x95570%_)
            (let () (declare (not safe)) (##fx< _%x95570%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x95567%_)
        (if (fixnum? _%x95567%_)
            (let () (declare (not safe)) (##fx<= _%x95567%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x95564%_)
        (if (symbol? _%x95564%_) (not (uninterned-symbol? _%x95564%_)) '#f)))
    (define display-as-string
      (lambda (_%x95549%_ _%port95550%_)
        (if (output-port? _%port95550%_)
            (let ((_%port95554%_ _%port95550%_))
              (__display-as-string _%x95549%_ _%port95554%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@639.28-639.32"
               'contract:
               'output-port?
               'value:
               _%port95550%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x95506%_ _%port95507%_)
        (let ((_%port95510%_ _%port95507%_))
          (if (or (string? _%x95506%_)
                  (symbol? _%x95506%_)
                  (keyword? _%x95506%_)
                  (number? _%x95506%_)
                  (char? _%x95506%_))
              (display _%x95506%_ _%port95510%_)
              (if (pair? _%x95506%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x95506%_))
                     _%port95510%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x95506%_))
                     _%port95510%_))
                  (if (vector? _%x95506%_)
                      (vector-for-each
                       (lambda (_%g9553395535%_)
                         (__display-as-string _%g9553395535%_ _%port95510%_))
                       _%x95506%_)
                      (if (or (null? _%x95506%_)
                              (eq? _%x95506%_ '#!void)
                              (eof-object? _%x95506%_)
                              (boolean? _%x95506%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x95506%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x95489%_)
        (if (string? _%x95489%_)
            _%x95489%_
            (if (symbol? _%x95489%_)
                (let () (declare (not safe)) (##symbol->string _%x95489%_))
                (if (keyword? _%x95489%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x95489%_))
                    (if (number? _%x95489%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x95489%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g9549595497%_)
                           (__display-as-string
                            _%x95489%_
                            _%g9549595497%_)))))))))
    (define as-string__1
      (lambda _%args95500%_
        (call-with-output-string
         '()
         (lambda (_%g9550195503%_)
           (__display-as-string _%args95500%_ _%g9550195503%_)))))
    (define as-string
      (lambda _g99781_
        (let ((_g99782_ (let () (declare (not safe)) (##length _g99781_))))
          (cond ((let () (declare (not safe)) (##fx= _g99782_ 1))
                 (apply as-string__0 _g99781_))
                (#t
                 (apply (lambda _%args95500%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args95500%_)))
                        _g99781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g99781_))))))
    (define make-symbol__0
      (lambda (_%x95485%_)
        (if (interned-symbol? _%x95485%_)
            _%x95485%_
            (let ((__tmp99783 (as-string__0 _%x95485%_)))
              (declare (not safe))
              (##string->symbol __tmp99783)))))
    (define make-symbol__1
      (lambda _%args95487%_
        (let ((__tmp99784
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args95487%_))))
          (declare (not safe))
          (##string->symbol __tmp99784))))
    (define make-symbol
      (lambda _g99785_
        (let ((_g99786_ (let () (declare (not safe)) (##length _g99785_))))
          (cond ((let () (declare (not safe)) (##fx= _g99786_ 1))
                 (apply make-symbol__0 _g99785_))
                (#t
                 (apply (lambda _%args95487%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args95487%_)))
                        _g99785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g99785_))))))
    (define make-keyword__0
      (lambda (_%x95481%_)
        (if (interned-keyword? _%x95481%_)
            _%x95481%_
            (let ((__tmp99787 (as-string__0 _%x95481%_)))
              (declare (not safe))
              (##string->keyword __tmp99787)))))
    (define make-keyword__1
      (lambda _%args95483%_
        (let ((__tmp99788
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args95483%_))))
          (declare (not safe))
          (##string->keyword __tmp99788))))
    (define make-keyword
      (lambda _g99789_
        (let ((_g99790_ (let () (declare (not safe)) (##length _g99789_))))
          (cond ((let () (declare (not safe)) (##fx= _g99790_ 1))
                 (apply make-keyword__0 _g99789_))
                (#t
                 (apply (lambda _%args95483%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args95483%_)))
                        _g99789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g99789_))))))
    (define interned-keyword?
      (lambda (_%x95478%_)
        (if (keyword? _%x95478%_) (not (uninterned-keyword? _%x95478%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym95464%_)
        (if (symbol? _%sym95464%_)
            (let ((_%sym95468%_ _%sym95464%_))
              (__symbol->keyword _%sym95468%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@682.24-682.27"
               'contract:
               'symbol?
               'value:
               _%sym95464%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym95452%_)
        (let ((_%sym95455%_ _%sym95452%_))
          (if (uninterned-symbol? _%sym95455%_)
              (let ((__tmp99791
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym95455%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp99791))
              (let ((__tmp99792
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym95455%_))))
                (declare (not safe))
                (##string->keyword __tmp99792))))))
    (define keyword->symbol
      (lambda (_%sym95438%_)
        (if (keyword? _%sym95438%_)
            (let ((_%sym95442%_ _%sym95438%_))
              (__keyword->symbol _%sym95442%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@688.24-688.27"
               'contract:
               'keyword?
               'value:
               _%sym95438%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym95426%_)
        (let ((_%sym95429%_ _%sym95426%_))
          (if (uninterned-keyword? _%sym95429%_)
              (let ((__tmp99793
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym95429%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp99793))
              (let ((__tmp99794
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym95429%_))))
                (declare (not safe))
                (##string->symbol __tmp99794))))))
    (define bytes->string__%
      (lambda (_%bstr95391%_ _%enc95392%_)
        (if (u8vector? _%bstr95391%_)
            (let ((_%bstr95396%_ _%bstr95391%_))
              (if (symbol? _%enc95392%_)
                  (let ((_%enc95406%_ _%enc95392%_))
                    (__bytes->string__% _%bstr95396%_ _%enc95406%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.25-695.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc95392%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.22-694.26"
               'contract:
               'u8vector?
               'value:
               _%bstr95391%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr95419%_)
        (let ((_%enc95421%_ 'UTF-8))
          (bytes->string__% _%bstr95419%_ _%enc95421%_))))
    (define bytes->string
      (lambda _g99795_
        (let ((_g99796_ (let () (declare (not safe)) (##length _g99795_))))
          (cond ((let () (declare (not safe)) (##fx= _g99796_ 1))
                 (apply bytes->string__0 _g99795_))
                ((let () (declare (not safe)) (##fx= _g99796_ 2))
                 (apply bytes->string__% _g99795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g99795_))))))
    (define __bytes->string__%
      (lambda (_%bstr95350%_ _%enc95351%_)
        (let* ((_%bstr95354%_ _%bstr95350%_) (_%enc95362%_ _%enc95351%_))
          (if (eq? _%enc95362%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr95354%_))
              (let* ((_%in95371%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc95362%_
                                   (cons 'init: (cons _%bstr95354%_ '()))))))
                     (_%len95373%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr95354%_)))
                     (_%out95375%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len95373%_)))
                     (_%n95377%_
                      (read-substring
                       _%out95375%_
                       '0
                       _%len95373%_
                       _%in95371%_)))
                (string-shrink! _%out95375%_ _%n95377%_)
                _%out95375%_)))))
    (define __bytes->string__0
      (lambda (_%bstr95383%_)
        (let ((_%enc95385%_ 'UTF-8))
          (__bytes->string__% _%bstr95383%_ _%enc95385%_))))
    (define __bytes->string
      (lambda _g99797_
        (let ((_g99798_ (let () (declare (not safe)) (##length _g99797_))))
          (cond ((let () (declare (not safe)) (##fx= _g99798_ 1))
                 (apply __bytes->string__0 _g99797_))
                ((let () (declare (not safe)) (##fx= _g99798_ 2))
                 (apply __bytes->string__% _g99797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g99797_))))))
    (define string->bytes__%
      (lambda (_%str95314%_ _%enc95315%_)
        (if (string? _%str95314%_)
            (let ((_%str95319%_ _%str95314%_))
              (if (symbol? _%enc95315%_)
                  (let ((_%enc95329%_ _%enc95315%_))
                    (__string->bytes__% _%str95319%_ _%enc95329%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@707.25-707.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc95315%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@706.22-706.25"
               'contract:
               'string?
               'value:
               _%str95314%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str95342%_)
        (let ((_%enc95344%_ 'UTF-8))
          (string->bytes__% _%str95342%_ _%enc95344%_))))
    (define string->bytes
      (lambda _g99799_
        (let ((_g99800_ (let () (declare (not safe)) (##length _g99799_))))
          (cond ((let () (declare (not safe)) (##fx= _g99800_ 1))
                 (apply string->bytes__0 _g99799_))
                ((let () (declare (not safe)) (##fx= _g99800_ 2))
                 (apply string->bytes__% _g99799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g99799_))))))
    (define __string->bytes__%
      (lambda (_%str95282%_ _%enc95283%_)
        (let* ((_%str95286%_ _%str95282%_) (_%enc95294%_ _%enc95283%_))
          (if (eq? _%enc95294%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str95286%_))
              (__substring->bytes__%
               _%str95286%_
               '0
               (let () (declare (not safe)) (##string-length _%str95286%_))
               _%enc95294%_)))))
    (define __string->bytes__0
      (lambda (_%str95306%_)
        (let ((_%enc95308%_ 'UTF-8))
          (__string->bytes__% _%str95306%_ _%enc95308%_))))
    (define __string->bytes
      (lambda _g99801_
        (let ((_g99802_ (let () (declare (not safe)) (##length _g99801_))))
          (cond ((let () (declare (not safe)) (##fx= _g99802_ 1))
                 (apply __string->bytes__0 _g99801_))
                ((let () (declare (not safe)) (##fx= _g99802_ 2))
                 (apply __string->bytes__% _g99801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g99801_))))))
    (define substring->bytes__%
      (lambda (_%str95230%_ _%start95231%_ _%end95232%_ _%enc95233%_)
        (if (string? _%str95230%_)
            (let ((_%str95237%_ _%str95230%_))
              (if (nonnegative-fixnum? _%start95231%_)
                  (let ((_%start95247%_ _%start95231%_))
                    (if (nonnegative-fixnum? _%end95232%_)
                        (let ((_%end95257%_ _%end95232%_))
                          (__substring->bytes__%
                           _%str95237%_
                           _%start95247%_
                           _%end95257%_
                           _%enc95233%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@715.25-715.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end95232%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@714.25-714.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start95231%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@713.25-713.28"
               'contract:
               'string?
               'value:
               _%str95230%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str95270%_ _%start95271%_ _%end95272%_)
        (let ((_%enc95274%_ 'UTF-8))
          (substring->bytes__%
           _%str95270%_
           _%start95271%_
           _%end95272%_
           _%enc95274%_))))
    (define substring->bytes
      (lambda _g99803_
        (let ((_g99804_ (let () (declare (not safe)) (##length _g99803_))))
          (cond ((let () (declare (not safe)) (##fx= _g99804_ 3))
                 (apply substring->bytes__0 _g99803_))
                ((let () (declare (not safe)) (##fx= _g99804_ 4))
                 (apply substring->bytes__% _g99803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g99803_))))))
    (define __substring->bytes__%
      (lambda (_%str95182%_ _%start95183%_ _%end95184%_ _%enc95185%_)
        (let* ((_%str95188%_ _%str95182%_)
               (_%start95196%_ _%start95183%_)
               (_%end95204%_ _%end95184%_))
          (if (eq? _%enc95185%_ 'UTF-8)
              (string->utf8 _%str95188%_ _%start95196%_ _%end95204%_)
              (let ((_%out95213%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc95185%_ '())))))
                (write-substring
                 _%str95188%_
                 _%start95196%_
                 _%end95204%_
                 _%out95213%_)
                (get-output-u8vector _%out95213%_))))))
    (define __substring->bytes__0
      (lambda (_%str95218%_ _%start95219%_ _%end95220%_)
        (let ((_%enc95222%_ 'UTF-8))
          (__substring->bytes__%
           _%str95218%_
           _%start95219%_
           _%end95220%_
           _%enc95222%_))))
    (define __substring->bytes
      (lambda _g99805_
        (let ((_g99806_ (let () (declare (not safe)) (##length _g99805_))))
          (cond ((let () (declare (not safe)) (##fx= _g99806_ 3))
                 (apply __substring->bytes__0 _g99805_))
                ((let () (declare (not safe)) (##fx= _g99806_ 4))
                 (apply __substring->bytes__% _g99805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g99805_))))))
    (define string-empty?
      (lambda (_%str95167%_)
        (if (string? _%str95167%_)
            (let ((_%str95171%_ _%str95167%_)) (__string-empty? _%str95171%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@724.22-724.25"
               'contract:
               'string?
               'value:
               _%str95167%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str95155%_)
        (let* ((_%str95158%_ _%str95155%_)
               (__tmp99807
                (let () (declare (not safe)) (##string-length _%str95158%_))))
          (declare (not safe))
          (##fxzero? __tmp99807))))
    (define string-index__%
      (lambda (_%str95107%_ _%char95108%_ _%start95109%_)
        (if (string? _%str95107%_)
            (let ((_%str95113%_ _%str95107%_))
              (if (char? _%char95108%_)
                  (let ((_%char95123%_ _%char95108%_))
                    (if (nonnegative-fixnum? _%start95109%_)
                        (let ((_%start95133%_ _%start95109%_))
                          (__string-index__%
                           _%str95113%_
                           _%char95123%_
                           _%start95133%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@730.21-730.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start95109%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.21-729.25"
                     'contract:
                     'char?
                     'value:
                     _%char95108%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@728.21-728.24"
               'contract:
               'string?
               'value:
               _%str95107%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str95146%_ _%char95147%_)
        (let ((_%start95149%_ '0))
          (string-index__% _%str95146%_ _%char95147%_ _%start95149%_))))
    (define string-index
      (lambda _g99808_
        (let ((_g99809_ (let () (declare (not safe)) (##length _g99808_))))
          (cond ((let () (declare (not safe)) (##fx= _g99809_ 2))
                 (apply string-index__0 _g99808_))
                ((let () (declare (not safe)) (##fx= _g99809_ 3))
                 (apply string-index__% _g99808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g99808_))))))
    (define __string-index__%
      (lambda (_%str95046%_ _%char95047%_ _%start95048%_)
        (let* ((_%str95051%_ _%str95046%_)
               (_%char95059%_ _%char95047%_)
               (_%start95067%_ _%start95048%_)
               (_%len95076%_
                (let () (declare (not safe)) (##string-length _%str95051%_))))
          (let _%lp95078%_ ((_%k95080%_ _%start95067%_))
            (let ((_%k95082%_ _%k95080%_))
              (if (let () (declare (not safe)) (##fx< _%k95082%_ _%len95076%_))
                  (if (eq? _%char95059%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str95051%_ _%k95082%_)))
                      _%k95082%_
                      (_%lp95078%_
                       (let () (declare (not safe)) (##fx+ _%k95082%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str95097%_ _%char95098%_)
        (let ((_%start95100%_ '0))
          (__string-index__% _%str95097%_ _%char95098%_ _%start95100%_))))
    (define __string-index
      (lambda _g99810_
        (let ((_g99811_ (let () (declare (not safe)) (##length _g99810_))))
          (cond ((let () (declare (not safe)) (##fx= _g99811_ 2))
                 (apply __string-index__0 _g99810_))
                ((let () (declare (not safe)) (##fx= _g99811_ 3))
                 (apply __string-index__% _g99810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g99810_))))))
    (define string-rindex__%
      (lambda (_%str95007%_ _%char95008%_ _%start95009%_)
        (if (string? _%str95007%_)
            (let ((_%str95013%_ _%str95007%_))
              (if (char? _%char95008%_)
                  (let ((_%char95023%_ _%char95008%_))
                    (__string-rindex__%
                     _%str95013%_
                     _%char95023%_
                     _%start95009%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@740.25-740.29"
                     'contract:
                     'char?
                     'value:
                     _%char95008%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@739.22-739.25"
               'contract:
               'string?
               'value:
               _%str95007%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str95036%_ _%char95037%_)
        (let ((_%start95039%_ '#f))
          (string-rindex__% _%str95036%_ _%char95037%_ _%start95039%_))))
    (define string-rindex
      (lambda _g99812_
        (let ((_g99813_ (let () (declare (not safe)) (##length _g99812_))))
          (cond ((let () (declare (not safe)) (##fx= _g99813_ 2))
                 (apply string-rindex__0 _g99812_))
                ((let () (declare (not safe)) (##fx= _g99813_ 3))
                 (apply string-rindex__% _g99812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g99812_))))))
    (define __string-rindex__%
      (lambda (_%str94949%_ _%char94950%_ _%start94951%_)
        (let* ((_%str94954%_ _%str94949%_)
               (_%char94962%_ _%char94950%_)
               (_%len94971%_
                (let () (declare (not safe)) (##string-length _%str94954%_)))
               (_%start94973%_
                (if (fixnum? _%start94951%_)
                    _%start94951%_
                    (let () (declare (not safe)) (##fx- _%len94971%_ '1)))))
          (let _%lp94976%_ ((_%k94978%_ _%start94973%_))
            (let ((_%k94980%_ _%k94978%_))
              (if (let () (declare (not safe)) (##fx>= _%k94980%_ '0))
                  (if (eq? _%char94962%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str94954%_ _%k94980%_)))
                      _%k94980%_
                      (_%lp94976%_
                       (let () (declare (not safe)) (##fx- _%k94980%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str94997%_ _%char94998%_)
        (let ((_%start95000%_ '#f))
          (__string-rindex__% _%str94997%_ _%char94998%_ _%start95000%_))))
    (define __string-rindex
      (lambda _g99814_
        (let ((_g99815_ (let () (declare (not safe)) (##length _g99814_))))
          (cond ((let () (declare (not safe)) (##fx= _g99815_ 2))
                 (apply __string-rindex__0 _g99814_))
                ((let () (declare (not safe)) (##fx= _g99815_ 3))
                 (apply __string-rindex__% _g99814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g99814_))))))
    (define string-split
      (lambda (_%str94923%_ _%char94924%_)
        (if (string? _%str94923%_)
            (let ((_%str94928%_ _%str94923%_))
              (if (char? _%char94924%_)
                  (let ((_%char94938%_ _%char94924%_))
                    (__string-split _%str94928%_ _%char94938%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@751.37-751.41"
                     'contract:
                     'char?
                     'value:
                     _%char94924%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@751.21-751.24"
               'contract:
               'string?
               'value:
               _%str94923%_)
              '#!void))))
    (define __string-split
      (lambda (_%str94864%_ _%char94865%_)
        (let* ((_%str94868%_ _%str94864%_)
               (_%char94876%_ _%char94865%_)
               (_%len94885%_
                (let () (declare (not safe)) (##string-length _%str94868%_))))
          (let _%lp94887%_ ((_%start94889%_ '0) (_%r94890%_ '()))
            (let* ((_%start94893%_ _%start94889%_)
                   (_%$e94906%_
                    (__string-index__%
                     _%str94868%_
                     _%char94876%_
                     _%start94893%_)))
              (if _%$e94906%_
                  ((lambda (_%end94909%_)
                     (let ((_%end94911%_ _%end94909%_))
                       (_%lp94887%_
                        (let () (declare (not safe)) (##fx+ _%end94911%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str94868%_
                                 _%start94893%_
                                 _%end94911%_))
                              _%r94890%_))))
                   _%$e94906%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start94893%_ _%len94885%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str94868%_
                                _%start94893%_
                                _%len94885%_)))
                       _%r94890%_)
                      (reverse! _%r94890%_))))))))
    (define string-join
      (lambda (_%strs94714%_ _%join94715%_)
        (letrec ((_%join-length94718%_
                  (lambda (_%strs94802%_ _%jlen94803%_)
                    (let _%lp94805%_ ((_%rest94807%_ _%strs94802%_)
                                      (_%len94808%_ '0))
                      (let* ((_%len94810%_ _%len94808%_)
                             (_%rest9481894826%_ _%rest94807%_)
                             (_%else9482094834%_ (lambda () '0))
                             (_%K9482294852%_
                              (lambda (_%rest94837%_ _%hd94838%_)
                                (if (string? _%hd94838%_)
                                    (let ((_%hd94840%_ _%hd94838%_))
                                      (if (pair? _%rest94837%_)
                                          (_%lp94805%_
                                           _%rest94837%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd94840%_))
                                                _%jlen94803%_
                                                _%len94810%_))
                                          (let ((__tmp99816
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd94840%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp99816 _%len94810%_))))
                                    (error '"expected string" _%hd94838%_)))))
                        (if (pair? _%rest9481894826%_)
                            (let ((_%hd9482394855%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest9481894826%_)))
                                  (_%tl9482494857%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest9481894826%_))))
                              (let* ((_%hd94860%_ _%hd9482394855%_)
                                     (_%rest94862%_ _%tl9482494857%_))
                                (_%K9482294852%_ _%rest94862%_ _%hd94860%_)))
                            (_%else9482094834%_)))))))
          (let* ((_%join94723%_
                  (if (char? _%join94715%_)
                      (let () (declare (not safe)) (##string _%join94715%_))
                      (if (string? _%join94715%_)
                          _%join94715%_
                          (error '"expected string or char" _%join94715%_))))
                 (_%jlen94725%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join94723%_)))
                 (_%olen94727%_
                  (_%join-length94718%_ _%strs94714%_ _%jlen94725%_))
                 (_%ostr94729%_
                  (let () (declare (not safe)) (##make-string _%olen94727%_))))
            (let _%lp94732%_ ((_%rest94734%_ _%strs94714%_) (_%k94735%_ '0))
              (let* ((_%k94738%_ _%k94735%_)
                     (_%rest9475494762%_ _%rest94734%_)
                     (_%else9475694770%_ (lambda () '""))
                     (_%K9475894790%_
                      (lambda (_%rest94773%_ _%hd94774%_)
                        (let* ((_%hd94776%_ _%hd94774%_)
                               (_%hdlen94788%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd94776%_))))
                          (if (pair? _%rest94773%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd94776%_
                                   '0
                                   _%hdlen94788%_
                                   _%ostr94729%_
                                   _%k94738%_))
                                (let ((__tmp99817
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k94738%_ _%hdlen94788%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join94723%_
                                   '0
                                   _%jlen94725%_
                                   _%ostr94729%_
                                   __tmp99817))
                                (_%lp94732%_
                                 _%rest94773%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k94738%_
                                          _%hdlen94788%_
                                          _%jlen94725%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd94776%_
                                   '0
                                   _%hdlen94788%_
                                   _%ostr94729%_
                                   _%k94738%_))
                                _%ostr94729%_))))))
                (if (pair? _%rest9475494762%_)
                    (let ((_%hd9475994793%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest9475494762%_)))
                          (_%tl9476094795%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest9475494762%_))))
                      (let* ((_%hd94798%_ _%hd9475994793%_)
                             (_%rest94800%_ _%tl9476094795%_))
                        (_%K9475894790%_ _%rest94800%_ _%hd94798%_)))
                    (_%else9475694770%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes94640%_ _%port94641%_ _%start94642%_ _%end94643%_)
        (if (u8vector? _%bytes94640%_)
            (let ((_%bytes94647%_ _%bytes94640%_))
              (if (input-port? _%port94641%_)
                  (let ((_%port94657%_ _%port94641%_))
                    (if ((lambda (_%o94666%_)
                           (and (fixnum? _%o94666%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o94666%_ '0))
                                (let ((__tmp99818
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes94647%_))))
                                  (declare (not safe))
                                  (##fx< _%o94666%_ __tmp99818))))
                         _%start94642%_)
                        (let ((_%start94670%_ _%start94642%_))
                          (if ((lambda (_%o94679%_)
                                 (and (fixnum? _%o94679%_)
                                      (let ((__tmp99819
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes94647%_))))
                                        (declare (not safe))
                                        (##fx<= _%start94670%_
                                                _%o94679%_
                                                __tmp99819))))
                               _%end94643%_)
                              (let ((_%end94683%_ _%end94643%_))
                                (__read-u8vector__%
                                 _%bytes94647%_
                                 _%port94657%_
                                 _%start94670%_
                                 _%end94683%_))
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
                                 _%end94643%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@816.22-816.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start94642%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@815.22-815.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port94641%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@814.22-814.27"
               'contract:
               'u8vector?
               'value:
               _%bytes94640%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes94696%_ _%port94697%_)
        (let* ((_%start94699%_ '0)
               (_%end94701%_ (u8vector-length _%bytes94696%_)))
          (read-u8vector__%
           _%bytes94696%_
           _%port94697%_
           _%start94699%_
           _%end94701%_))))
    (define read-u8vector__1
      (lambda (_%bytes94703%_ _%port94704%_ _%start94705%_)
        (let ((_%end94707%_ (u8vector-length _%bytes94703%_)))
          (read-u8vector__%
           _%bytes94703%_
           _%port94704%_
           _%start94705%_
           _%end94707%_))))
    (define read-u8vector
      (lambda _g99820_
        (let ((_g99821_ (let () (declare (not safe)) (##length _g99820_))))
          (cond ((let () (declare (not safe)) (##fx= _g99821_ 2))
                 (apply read-u8vector__0 _g99820_))
                ((let () (declare (not safe)) (##fx= _g99821_ 3))
                 (apply read-u8vector__1 _g99820_))
                ((let () (declare (not safe)) (##fx= _g99821_ 4))
                 (apply read-u8vector__% _g99820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g99820_))))))
    (define __read-u8vector__%
      (lambda (_%bytes94579%_ _%port94580%_ _%start94581%_ _%end94582%_)
        (let* ((_%bytes94585%_ _%bytes94579%_)
               (_%port94593%_ _%port94580%_)
               (_%start94601%_ _%start94581%_)
               (_%end94609%_ _%end94582%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes94585%_
           _%start94601%_
           _%end94609%_
           _%port94593%_))))
    (define __read-u8vector__0
      (lambda (_%bytes94621%_ _%port94622%_)
        (let* ((_%start94624%_ '0)
               (_%end94626%_ (u8vector-length _%bytes94621%_)))
          (__read-u8vector__%
           _%bytes94621%_
           _%port94622%_
           _%start94624%_
           _%end94626%_))))
    (define __read-u8vector__1
      (lambda (_%bytes94628%_ _%port94629%_ _%start94630%_)
        (let ((_%end94632%_ (u8vector-length _%bytes94628%_)))
          (__read-u8vector__%
           _%bytes94628%_
           _%port94629%_
           _%start94630%_
           _%end94632%_))))
    (define __read-u8vector
      (lambda _g99822_
        (let ((_g99823_ (let () (declare (not safe)) (##length _g99822_))))
          (cond ((let () (declare (not safe)) (##fx= _g99823_ 2))
                 (apply __read-u8vector__0 _g99822_))
                ((let () (declare (not safe)) (##fx= _g99823_ 3))
                 (apply __read-u8vector__1 _g99822_))
                ((let () (declare (not safe)) (##fx= _g99823_ 4))
                 (apply __read-u8vector__% _g99822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g99822_))))))
    (define write-u8vector__%
      (lambda (_%bytes94509%_ _%port94510%_ _%start94511%_ _%end94512%_)
        (if (u8vector? _%bytes94509%_)
            (let ((_%bytes94516%_ _%bytes94509%_))
              (if (output-port? _%port94510%_)
                  (let* ((_%port94526%_ _%port94510%_)
                         (_%start94535%_ _%start94511%_))
                    (if ((lambda (_%o94543%_)
                           (and (fixnum? _%o94543%_)
                                (let ((__tmp99824
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes94516%_))))
                                  (declare (not safe))
                                  (##fx<= _%start94535%_
                                          _%o94543%_
                                          __tmp99824))))
                         _%end94512%_)
                        (let ((_%end94547%_ _%end94512%_))
                          (__write-u8vector__%
                           _%bytes94516%_
                           _%port94526%_
                           _%start94535%_
                           _%end94547%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@827.23-827.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end94512%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@825.23-825.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port94510%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@824.23-824.28"
               'contract:
               'u8vector?
               'value:
               _%bytes94509%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes94560%_ _%port94561%_)
        (let* ((_%start94563%_ '0)
               (_%end94565%_ (u8vector-length _%bytes94560%_)))
          (write-u8vector__%
           _%bytes94560%_
           _%port94561%_
           _%start94563%_
           _%end94565%_))))
    (define write-u8vector__1
      (lambda (_%bytes94567%_ _%port94568%_ _%start94569%_)
        (let ((_%end94571%_ (u8vector-length _%bytes94567%_)))
          (write-u8vector__%
           _%bytes94567%_
           _%port94568%_
           _%start94569%_
           _%end94571%_))))
    (define write-u8vector
      (lambda _g99825_
        (let ((_g99826_ (let () (declare (not safe)) (##length _g99825_))))
          (cond ((let () (declare (not safe)) (##fx= _g99826_ 2))
                 (apply write-u8vector__0 _g99825_))
                ((let () (declare (not safe)) (##fx= _g99826_ 3))
                 (apply write-u8vector__1 _g99825_))
                ((let () (declare (not safe)) (##fx= _g99826_ 4))
                 (apply write-u8vector__% _g99825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g99825_))))))
    (define __write-u8vector__%
      (lambda (_%bytes94448%_ _%port94449%_ _%start94450%_ _%end94451%_)
        (let* ((_%bytes94454%_ _%bytes94448%_)
               (_%port94462%_ _%port94449%_)
               (_%start94470%_ _%start94450%_)
               (_%end94478%_ _%end94451%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes94454%_
           _%start94470%_
           _%end94478%_
           _%port94462%_))))
    (define __write-u8vector__0
      (lambda (_%bytes94490%_ _%port94491%_)
        (let* ((_%start94493%_ '0)
               (_%end94495%_ (u8vector-length _%bytes94490%_)))
          (__write-u8vector__%
           _%bytes94490%_
           _%port94491%_
           _%start94493%_
           _%end94495%_))))
    (define __write-u8vector__1
      (lambda (_%bytes94497%_ _%port94498%_ _%start94499%_)
        (let ((_%end94501%_ (u8vector-length _%bytes94497%_)))
          (__write-u8vector__%
           _%bytes94497%_
           _%port94498%_
           _%start94499%_
           _%end94501%_))))
    (define __write-u8vector
      (lambda _g99827_
        (let ((_g99828_ (let () (declare (not safe)) (##length _g99827_))))
          (cond ((let () (declare (not safe)) (##fx= _g99828_ 2))
                 (apply __write-u8vector__0 _g99827_))
                ((let () (declare (not safe)) (##fx= _g99828_ 3))
                 (apply __write-u8vector__1 _g99827_))
                ((let () (declare (not safe)) (##fx= _g99828_ 4))
                 (apply __write-u8vector__% _g99827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g99827_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag94416%_
               _%dbg-exprs94417%_
               _%dbg-thunks94418%_
               _%expr94419%_
               _%thunk94420%_)
        (letrec ((_%o94422%_ (current-output-port))
                 (_%e94423%_ (current-error-port))
                 (_%p94424%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f94425%_
                  (lambda ()
                    (force-output _%o94422%_)
                    (force-output _%e94423%_)))
                 (_%d94426%_
                  (lambda (_%x94433%_) (display _%x94433%_ _%e94423%_)))
                 (_%w94427%_
                  (lambda (_%x94435%_) (_%p94424%_ _%x94435%_ _%e94423%_)))
                 (_%n94428%_ (lambda () (newline _%e94423%_)))
                 (_%v94429%_
                  (lambda (_%l94438%_)
                    (for-each
                     (lambda (_%x94440%_)
                       (_%d94426%_ '" ")
                       (_%w94427%_ _%x94440%_))
                     _%l94438%_)
                    (_%n94428%_)))
                 (_%x94430%_
                  (lambda (_%expr94442%_ _%thunk94443%_)
                    (_%f94425%_)
                    (_%d94426%_ '"  ")
                    (_%w94427%_ _%expr94442%_)
                    (_%d94426%_ '" =>")
                    (call-with-values
                     _%thunk94443%_
                     (lambda _%x94445%_
                       (_%v94429%_ _%x94445%_)
                       (_%f94425%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x94445%_)))))))
          (if _%tag94416%_
              (begin
                (if (eq? _%tag94416%_ '#!void)
                    '#!void
                    (begin
                      (_%f94425%_)
                      (_%d94426%_ _%tag94416%_)
                      (_%n94428%_)))
                (for-each _%x94430%_ _%dbg-exprs94417%_ _%dbg-thunks94418%_)
                (if _%thunk94420%_
                    (_%x94430%_ _%expr94419%_ _%thunk94420%_)
                    '#!void))
              (if _%thunk94420%_ (_%thunk94420%_) '#!void)))))))
