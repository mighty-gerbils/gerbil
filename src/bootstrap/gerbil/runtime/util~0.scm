(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1781697554)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args113906%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args113906%_))
          (newline))))
    (define display*
      (lambda _%args113903%_
        (let () (declare (not safe)) (##for-each display _%args113903%_))))
    (define __file-newer?
      (lambda (_%file1113694%_ _%file2113695%_)
        (let* ((_%file1113698%_ _%file1113694%_)
               (_%file2113706%_ _%file2113695%_))
          (letrec ((_%__modification-time113850%_
                    (lambda (_%file113891%_)
                      (let* ((_%file113894%_ _%file113891%_)
                             (__tmp116682
                              (let ((__tmp116683
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file113894%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp116683))))
                        (declare (not safe))
                        (##time->seconds __tmp116682))))
                   (_%modification-time113851%_
                    (lambda (_%file113879%_)
                      (let ((_%file113882%_ _%file113879%_))
                        (_%__modification-time113850%_ _%file113882%_)))))
            (let ((__tmp116685
                   (let* ((_%file113853%_ _%file1113698%_)
                          (_%file113857%_ _%file113853%_))
                     (_%__modification-time113850%_ _%file113857%_)))
                  (__tmp116684
                   (let* ((_%file113866%_ _%file2113706%_)
                          (_%file113870%_ _%file113866%_))
                     (_%__modification-time113850%_ _%file113870%_))))
              (declare (not safe))
              (##fl> __tmp116685 __tmp116684))))))
    (define file-newer?
      (lambda (_%file1113669%_ _%file2113670%_)
        (if (string? _%file1113669%_)
            (let ((_%file1113674%_ _%file1113669%_))
              (if (string? _%file2113670%_)
                  (let ((_%file2113684%_ _%file2113670%_))
                    (__file-newer? _%file1113674%_ _%file2113684%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.20-75.25"
                     'contract:
                     'string?
                     'value:
                     _%file2113670%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.20-74.25"
               'contract:
               'string?
               'value:
               _%file1113669%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir113389%_ _%perms113390%_)
        (let* ((_%dir113393%_ _%dir113389%_) (_%perms113401%_ _%perms113390%_))
          (letrec ((_%__create1113545%_
                    (lambda (_%path113644%_)
                      (let ((_%path113647%_ _%path113644%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path113647%_))
                            (if (eq? (file-type _%path113647%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path113647%_))
                            (if _%perms113401%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path113647%_
                                             (cons 'permissions:
                                                   (cons _%perms113401%_
                                                         '())))))
                                (create-directory _%path113647%_))))))
                   (_%create1113546%_
                    (lambda (_%path113632%_)
                      (let ((_%path113635%_ _%path113632%_))
                        (_%__create1113545%_ _%path113635%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir113393%_))
                '#!void
                (let _%lp113548%_ ((_%start113550%_ '0))
                  (let ((_%$e113597%_
                         (let* ((_%str113552%_ _%dir113393%_)
                                (_%char113555%_ '#\/)
                                (_%start113558%_ _%start113550%_)
                                (_%str113563%_ _%str113552%_)
                                (_%char113577%_ _%char113555%_))
                           (if (nonnegative-fixnum? _%start113558%_)
                               (let ((_%start113587%_ _%start113558%_))
                                 (__string-index__%
                                  _%str113563%_
                                  _%char113577%_
                                  _%start113587%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start113558%_)
                                 '#!void)))))
                    (if _%$e113597%_
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (##fx> _%$e113597%_ '0))
                              (let* ((_%path113602%_
                                      (substring
                                       _%dir113393%_
                                       '0
                                       _%$e113597%_))
                                     (_%path113606%_ _%path113602%_))
                                (_%__create1113545%_ _%path113606%_))
                              '#!void)
                          (_%lp113548%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%$e113597%_ '1))))
                        (let* ((_%path113618%_ _%dir113393%_)
                               (_%path113622%_ _%path113618%_))
                          (_%__create1113545%_ _%path113622%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir113662%_)
        (let ((_%perms113664%_ '493))
          (__create-directory*__% _%dir113662%_ _%perms113664%_))))
    (define __create-directory*
      (lambda _g116686_
        (let ((_g116687_ (let () (declare (not safe)) (##length _g116686_))))
          (cond ((let () (declare (not safe)) (##fx= _g116687_ 1))
                 (apply __create-directory*__0 _g116686_))
                ((let () (declare (not safe)) (##fx= _g116687_ 2))
                 (apply __create-directory*__% _g116686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g116686_))))))
    (define create-directory*__%
      (lambda (_%dir113353%_ _%perms113354%_)
        (if (string? _%dir113353%_)
            (let ((_%dir113358%_ _%dir113353%_))
              (if (fixnum? _%perms113354%_)
                  (let ((_%perms113368%_ _%perms113354%_))
                    (__create-directory*__% _%dir113358%_ _%perms113368%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@86.26-86.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms113354%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@85.26-85.29"
               'contract:
               'string?
               'value:
               _%dir113353%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir113381%_)
        (let ((_%perms113383%_ '493))
          (create-directory*__% _%dir113381%_ _%perms113383%_))))
    (define create-directory*
      (lambda _g116688_
        (let ((_g116689_ (let () (declare (not safe)) (##length _g116688_))))
          (cond ((let () (declare (not safe)) (##fx= _g116689_ 1))
                 (apply create-directory*__0 _g116688_))
                ((let () (declare (not safe)) (##fx= _g116689_ 2))
                 (apply create-directory*__% _g116688_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g116688_))))))
    (define __move-file__%
      (lambda (_%src113296%_ _%dest113297%_ _%replace?113298%_)
        (let* ((_%src113301%_ _%src113296%_)
               (_%dest113309%_ _%dest113297%_)
               (_%replace?113317%_ _%replace?113298%_))
          (letrec ((_%force-move-it113326%_
                    (lambda ()
                      (let ((_%tmp113332%_
                             (if _%replace?113317%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest113309%_))
                                     (let ((__tmp116690
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest113309%_
                                        '"."
                                        __tmp116690))
                                     '#f)
                                 '#f)))
                        (if _%tmp113332%_
                            (rename-file _%dest113309%_ _%tmp113332%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e113334%_)
                           (if _%tmp113332%_
                               (rename-file _%tmp113332%_ _%dest113309%_ '#t)
                               '#!void)
                           (raise _%e113334%_))
                         (lambda ()
                           (let ((_%fi113337%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src113301%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi113337%_))
                                      'symbolic-link)
                                 (let ((__tmp116691
                                        (path-normalize _%src113301%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp116691
                                    _%dest113309%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src113301%_
                                    _%dest113309%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src113301%_))
                           (if _%tmp113332%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp113332%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e113328%_)
               (if (let () (declare (not safe)) (##file-exists? _%src113301%_))
                   (_%force-move-it113326%_)
                   (raise _%e113328%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src113301%_
                  _%dest113309%_
                  _%replace?113317%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src113343%_ _%dest113344%_)
        (let ((_%replace?113346%_ '#t))
          (__move-file__% _%src113343%_ _%dest113344%_ _%replace?113346%_))))
    (define __move-file
      (lambda _g116692_
        (let ((_g116693_ (let () (declare (not safe)) (##length _g116692_))))
          (cond ((let () (declare (not safe)) (##fx= _g116693_ 2))
                 (apply __move-file__0 _g116692_))
                ((let () (declare (not safe)) (##fx= _g116693_ 3))
                 (apply __move-file__% _g116692_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g116692_))))))
    (define move-file__%
      (lambda (_%src113247%_ _%dest113248%_ _%replace?113249%_)
        (if (string? _%src113247%_)
            (let ((_%src113253%_ _%src113247%_))
              (if (string? _%dest113248%_)
                  (let ((_%dest113263%_ _%dest113248%_))
                    (if (boolean? _%replace?113249%_)
                        (let ((_%replace?113273%_ _%replace?113249%_))
                          (__move-file__%
                           _%src113253%_
                           _%dest113263%_
                           _%replace?113273%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@110.51-110.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?113249%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@110.34-110.38"
                     'contract:
                     'string?
                     'value:
                     _%dest113248%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@110.18-110.21"
               'contract:
               'string?
               'value:
               _%src113247%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src113286%_ _%dest113287%_)
        (let ((_%replace?113289%_ '#t))
          (move-file__% _%src113286%_ _%dest113287%_ _%replace?113289%_))))
    (define move-file
      (lambda _g116694_
        (let ((_g116695_ (let () (declare (not safe)) (##length _g116694_))))
          (cond ((let () (declare (not safe)) (##fx= _g116695_ 2))
                 (apply move-file__0 _g116694_))
                ((let () (declare (not safe)) (##fx= _g116695_ 3))
                 (apply move-file__% _g116694_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g116694_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore113243%_ '#t))
    (define true? (lambda (_%obj113240%_) (eq? _%obj113240%_ '#t)))
    (define false (lambda _%ignore113237%_ '#f))
    (define void (lambda _%ignore113234%_ '#!void))
    (define void? (lambda (_%obj113231%_) (eq? _%obj113231%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj113228%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj113228%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj113225%_) (eq? _%obj113225%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj113222%_) (eq? _%obj113222%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj113219%_) (eq? _%obj113219%_ '#!optional)))
    (define immediate?
      (lambda (_%obj113216%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj113216%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj113213%_)
        (if (fixnum? _%obj113213%_)
            (let () (declare (not safe)) (##fx>= _%obj113213%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj113207%_)
        (let ((_%$e113210%_ (pair? _%obj113207%_)))
          (if _%$e113210%_ _%$e113210%_ (null? _%obj113207%_)))))
    (define values-count
      (lambda (_%obj113204%_)
        (if (let () (declare (not safe)) (##values? _%obj113204%_))
            (let () (declare (not safe)) (##values-length _%obj113204%_))
            '1)))
    (define __values-ref
      (lambda (_%obj113191%_ _%k113192%_)
        (let ((_%k113195%_ _%k113192%_))
          (if (let () (declare (not safe)) (##values? _%obj113191%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj113191%_ _%k113195%_))
              _%obj113191%_))))
    (define values-ref
      (lambda (_%obj113176%_ _%k113177%_)
        (if (fixnum? _%k113177%_)
            (let ((_%k113181%_ _%k113177%_))
              (__values-ref _%obj113176%_ _%k113181%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@244.23-244.24"
               'contract:
               'fixnum?
               'value:
               _%k113177%_)
              '#!void))))
    (define values->list
      (lambda (_%obj113173%_)
        (if (let () (declare (not safe)) (##values? _%obj113173%_))
            (let () (declare (not safe)) (##values->list _%obj113173%_))
            (list _%obj113173%_))))
    (define __foldl1
      (lambda (_%f113121%_ _%iv113122%_ _%lst113123%_)
        (let ((_%f113126%_ _%f113121%_))
          (let _%lp113135%_ ((_%rest113137%_ _%lst113123%_)
                             (_%r113138%_ _%iv113122%_))
            (let* ((_%$%rest113139113147%_ _%rest113137%_)
                   (_%$%else113141113155%_ (lambda () _%r113138%_))
                   (_%$%K113143113161%_
                    (lambda (_%rest113158%_ _%x113159%_)
                      (_%lp113135%_
                       _%rest113158%_
                       (let ()
                         (declare (not safe))
                         (_%f113126%_ _%x113159%_ _%r113138%_))))))
              (if (pair? _%$%rest113139113147%_)
                  (let ((_%$%hd113144113164%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest113139113147%_)))
                        (_%$%tl113145113166%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest113139113147%_))))
                    (let* ((_%x113169%_ _%$%hd113144113164%_)
                           (_%rest113171%_ _%$%tl113145113166%_))
                      (_%$%K113143113161%_ _%rest113171%_ _%x113169%_)))
                  (_%$%else113141113155%_)))))))
    (define foldl1
      (lambda (_%f113105%_ _%iv113106%_ _%lst113107%_)
        (if (procedure? _%f113105%_)
            (let ((_%f113111%_ _%f113105%_))
              (__foldl1 _%f113111%_ _%iv113106%_ _%lst113107%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@267.15-267.16"
               'contract:
               'procedure?
               'value:
               _%f113105%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f113018%_ _%iv113019%_ _%lst1113020%_ _%lst2113021%_)
        (let ((_%f113024%_ _%f113018%_))
          (let _%lp113033%_ ((_%rest1113035%_ _%lst1113020%_)
                             (_%rest2113036%_ _%lst2113021%_)
                             (_%r113037%_ _%iv113019%_))
            (let* ((_%$%rest1113038113046%_ _%rest1113035%_)
                   (_%$%else113040113054%_ (lambda () _%r113037%_))
                   (_%$%K113042113093%_
                    (lambda (_%rest1113057%_ _%x1113058%_)
                      (let* ((_%$%rest2113059113067%_ _%rest2113036%_)
                             (_%$%else113061113075%_ (lambda () _%r113037%_))
                             (_%$%K113063113081%_
                              (lambda (_%rest2113078%_ _%x2113079%_)
                                (_%lp113033%_
                                 _%rest1113057%_
                                 _%rest2113078%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f113024%_
                                    _%x1113058%_
                                    _%x2113079%_
                                    _%r113037%_))))))
                        (if (pair? _%$%rest2113059113067%_)
                            (let ((_%$%hd113064113084%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2113059113067%_)))
                                  (_%$%tl113065113086%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2113059113067%_))))
                              (let* ((_%x2113089%_ _%$%hd113064113084%_)
                                     (_%rest2113091%_ _%$%tl113065113086%_))
                                (_%$%K113063113081%_
                                 _%rest2113091%_
                                 _%x2113089%_)))
                            (_%$%else113061113075%_))))))
              (if (pair? _%$%rest1113038113046%_)
                  (let ((_%$%hd113043113096%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1113038113046%_)))
                        (_%$%tl113044113098%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1113038113046%_))))
                    (let* ((_%x1113101%_ _%$%hd113043113096%_)
                           (_%rest1113103%_ _%$%tl113044113098%_))
                      (_%$%K113042113093%_ _%rest1113103%_ _%x1113101%_)))
                  (_%$%else113040113054%_)))))))
    (define foldl2
      (lambda (_%f113001%_ _%iv113002%_ _%lst1113003%_ _%lst2113004%_)
        (if (procedure? _%f113001%_)
            (let ((_%f113008%_ _%f113001%_))
              (__foldl2
               _%f113008%_
               _%iv113002%_
               _%lst1113003%_
               _%lst2113004%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@274.15-274.16"
               'contract:
               'procedure?
               'value:
               _%f113001%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f112934%_ _%iv112935%_ _%lst112936%_)
        (let* ((_%f112938%_ _%f112934%_)
               (_%iv112941%_ _%iv112935%_)
               (_%lst112944%_ _%lst112936%_))
          (if (procedure? _%f112938%_)
              (let ((_%f112949%_ _%f112938%_))
                (__foldl1 _%f112949%_ _%iv112941%_ _%lst112944%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f112938%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f112962%_ _%iv112963%_ _%lst1112964%_ _%lst2112965%_)
        (let* ((_%f112967%_ _%f112962%_)
               (_%iv112970%_ _%iv112963%_)
               (_%lst1112973%_ _%lst1112964%_)
               (_%lst2112976%_ _%lst2112965%_))
          (if (procedure? _%f112967%_)
              (let ((_%f112981%_ _%f112967%_))
                (__foldl2
                 _%f112981%_
                 _%iv112970%_
                 _%lst1112973%_
                 _%lst2112976%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f112967%_)
                '#!void)))))
    (define foldl
      (lambda _g116696_
        (let ((_g116697_ (let () (declare (not safe)) (##length _g116696_))))
          (cond ((let () (declare (not safe)) (##fx= _g116697_ 3))
                 (apply foldl__0 _g116696_))
                ((let () (declare (not safe)) (##fx= _g116697_ 4))
                 (apply foldl__1 _g116696_))
                ((let () (declare (not safe)) (##fx>= _g116697_ 4))
                 (apply foldl* _g116696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g116696_))))))
    (define __foldl*
      (lambda (_%f112865%_ _%iv112866%_ . _%rest112867%_)
        (let ((_%f112870%_ _%f112865%_))
          (let _%recur112879%_ ((_%iv112881%_ _%iv112866%_)
                                (_%rest112882%_ _%rest112867%_))
            (if (let* ((_%f112884%_ pair?)
                       (_%lst112887%_ _%rest112882%_)
                       (_%f112892%_ _%f112884%_))
                  (__andmap1 _%f112892%_ _%lst112887%_))
                (_%recur112879%_
                 (let ((__tmp116698
                        (let* ((_%f112911%_
                                (lambda (_%xs112908%_ _%r112909%_)
                                  (cons (car _%xs112908%_) _%r112909%_)))
                               (_%iv112914%_ (list _%iv112881%_))
                               (_%lst112917%_ _%rest112882%_)
                               (_%f112922%_ _%f112911%_))
                          (__foldr1 _%f112922%_ _%iv112914%_ _%lst112917%_))))
                   (declare (not safe))
                   (##apply _%f112870%_ __tmp116698))
                 (map cdr _%rest112882%_))
                _%iv112881%_)))))
    (define foldl*
      (lambda (_%f112849%_ _%iv112850%_ . _%rest112851%_)
        (if (procedure? _%f112849%_)
            (let ((_%f112855%_ _%f112849%_))
              (declare (not safe))
              (##apply __foldl* _%f112855%_ _%iv112850%_ _%rest112851%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f112849%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f112798%_ _%iv112799%_ _%lst112800%_)
        (let ((_%f112803%_ _%f112798%_))
          (let _%recur112812%_ ((_%rest112814%_ _%lst112800%_))
            (let* ((_%$%rest112815112823%_ _%rest112814%_)
                   (_%$%else112817112831%_ (lambda () _%iv112799%_))
                   (_%$%K112819112837%_
                    (lambda (_%rest112834%_ _%x112835%_)
                      (let ((__tmp116699 (_%recur112812%_ _%rest112834%_)))
                        (declare (not safe))
                        (_%f112803%_ _%x112835%_ __tmp116699)))))
              (if (pair? _%$%rest112815112823%_)
                  (let ((_%$%hd112820112840%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest112815112823%_)))
                        (_%$%tl112821112842%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest112815112823%_))))
                    (let* ((_%x112845%_ _%$%hd112820112840%_)
                           (_%rest112847%_ _%$%tl112821112842%_))
                      (_%$%K112819112837%_ _%rest112847%_ _%x112845%_)))
                  (_%$%else112817112831%_)))))))
    (define foldr1
      (lambda (_%f112782%_ _%iv112783%_ _%lst112784%_)
        (if (procedure? _%f112782%_)
            (let ((_%f112788%_ _%f112782%_))
              (__foldr1 _%f112788%_ _%iv112783%_ _%lst112784%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@302.15-302.16"
               'contract:
               'procedure?
               'value:
               _%f112782%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f112696%_ _%iv112697%_ _%lst1112698%_ _%lst2112699%_)
        (let ((_%f112702%_ _%f112696%_))
          (let _%recur112711%_ ((_%rest1112713%_ _%lst1112698%_)
                                (_%rest2112714%_ _%lst2112699%_))
            (let* ((_%$%rest1112715112723%_ _%rest1112713%_)
                   (_%$%else112717112731%_ (lambda () _%iv112697%_))
                   (_%$%K112719112770%_
                    (lambda (_%rest1112734%_ _%x1112735%_)
                      (let* ((_%$%rest2112736112744%_ _%rest2112714%_)
                             (_%$%else112738112752%_ (lambda () _%iv112697%_))
                             (_%$%K112740112758%_
                              (lambda (_%rest2112755%_ _%x2112756%_)
                                (let ((__tmp116700
                                       (_%recur112711%_
                                        _%rest1112734%_
                                        _%rest2112755%_)))
                                  (declare (not safe))
                                  (_%f112702%_
                                   _%x1112735%_
                                   _%x2112756%_
                                   __tmp116700)))))
                        (if (pair? _%$%rest2112736112744%_)
                            (let ((_%$%hd112741112761%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2112736112744%_)))
                                  (_%$%tl112742112763%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2112736112744%_))))
                              (let* ((_%x2112766%_ _%$%hd112741112761%_)
                                     (_%rest2112768%_ _%$%tl112742112763%_))
                                (_%$%K112740112758%_
                                 _%rest2112768%_
                                 _%x2112766%_)))
                            (_%$%else112738112752%_))))))
              (if (pair? _%$%rest1112715112723%_)
                  (let ((_%$%hd112720112773%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1112715112723%_)))
                        (_%$%tl112721112775%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1112715112723%_))))
                    (let* ((_%x1112778%_ _%$%hd112720112773%_)
                           (_%rest1112780%_ _%$%tl112721112775%_))
                      (_%$%K112719112770%_ _%rest1112780%_ _%x1112778%_)))
                  (_%$%else112717112731%_)))))))
    (define foldr2
      (lambda (_%f112679%_ _%iv112680%_ _%lst1112681%_ _%lst2112682%_)
        (if (procedure? _%f112679%_)
            (let ((_%f112686%_ _%f112679%_))
              (__foldr2
               _%f112686%_
               _%iv112680%_
               _%lst1112681%_
               _%lst2112682%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@309.15-309.16"
               'contract:
               'procedure?
               'value:
               _%f112679%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f112612%_ _%iv112613%_ _%lst112614%_)
        (let* ((_%f112616%_ _%f112612%_)
               (_%iv112619%_ _%iv112613%_)
               (_%lst112622%_ _%lst112614%_))
          (if (procedure? _%f112616%_)
              (let ((_%f112627%_ _%f112616%_))
                (__foldr1 _%f112627%_ _%iv112619%_ _%lst112622%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f112616%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f112640%_ _%iv112641%_ _%lst1112642%_ _%lst2112643%_)
        (let* ((_%f112645%_ _%f112640%_)
               (_%iv112648%_ _%iv112641%_)
               (_%lst1112651%_ _%lst1112642%_)
               (_%lst2112654%_ _%lst2112643%_))
          (if (procedure? _%f112645%_)
              (let ((_%f112659%_ _%f112645%_))
                (__foldr2
                 _%f112659%_
                 _%iv112648%_
                 _%lst1112651%_
                 _%lst2112654%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f112645%_)
                '#!void)))))
    (define foldr
      (lambda _g116701_
        (let ((_g116702_ (let () (declare (not safe)) (##length _g116701_))))
          (cond ((let () (declare (not safe)) (##fx= _g116702_ 3))
                 (apply foldr__0 _g116701_))
                ((let () (declare (not safe)) (##fx= _g116702_ 4))
                 (apply foldr__1 _g116701_))
                ((let () (declare (not safe)) (##fx>= _g116702_ 4))
                 (apply foldr* _g116701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g116701_))))))
    (define __foldr*
      (lambda (_%f112544%_ _%iv112545%_ . _%rest112546%_)
        (let ((_%f112549%_ _%f112544%_))
          (let _%recur112558%_ ((_%rest112560%_ _%rest112546%_))
            (if (let* ((_%f112562%_ pair?)
                       (_%lst112565%_ _%rest112560%_)
                       (_%f112570%_ _%f112562%_))
                  (__andmap1 _%f112570%_ _%lst112565%_))
                (let ((__tmp116703
                       (let* ((_%f112589%_
                               (lambda (_%xs112586%_ _%r112587%_)
                                 (cons (car _%xs112586%_) _%r112587%_)))
                              (_%iv112592%_
                               (list (_%recur112558%_
                                      (map cdr _%rest112560%_))))
                              (_%lst112595%_ _%rest112560%_)
                              (_%f112600%_ _%f112589%_))
                         (__foldr1 _%f112600%_ _%iv112592%_ _%lst112595%_))))
                  (declare (not safe))
                  (##apply _%f112549%_ __tmp116703))
                _%iv112545%_)))))
    (define foldr*
      (lambda (_%f112528%_ _%iv112529%_ . _%rest112530%_)
        (if (procedure? _%f112528%_)
            (let ((_%f112534%_ _%f112528%_))
              (declare (not safe))
              (##apply __foldr* _%f112534%_ _%iv112529%_ _%rest112530%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@327.15-327.16"
               'contract:
               'procedure?
               'value:
               _%f112528%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%lists112415%_)
        (letrec ((_%process-tails!112417%_
                  (lambda (_%previous-cell112472%_ _%rest112473%_)
                    (let* ((_%$%rest112474112487%_ _%rest112473%_)
                           (_%$%E112478112491%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rest112474112487%_
                                     '([[] . r])
                                     '([_ . r])
                                     '(_))
                              '#!void)))
                      (let ((_%$%K112483112518%_
                             (lambda (_%r112516%_)
                               (let ((__tmp116705 _%previous-cell112472%_)
                                     (__tmp116704 (remove-nulls! _%r112516%_)))
                                 (declare (not safe))
                                 (##set-cdr! __tmp116705 __tmp116704))))
                            (_%$%K112480112505%_
                             (lambda (_%r112503%_)
                               (_%process-tails!112417%_
                                _%rest112473%_
                                _%r112503%_)))
                            (_%$%K112479112496%_ (lambda () '#!void)))
                        (if (pair? _%$%rest112474112487%_)
                            (let ((_%$%tl112485112523%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest112474112487%_)))
                                  (_%$%hd112484112521%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest112474112487%_))))
                              (if (null? _%$%hd112484112521%_)
                                  (let ((_%r112526%_ _%$%tl112485112523%_))
                                    (_%$%K112483112518%_ _%r112526%_))
                                  (let ((_%r112511%_ _%$%tl112485112523%_))
                                    (_%$%K112480112505%_ _%r112511%_))))
                            '#!void))))))
          (let* ((_%$%lists112418112431%_ _%lists112415%_)
                 (_%$%E112422112435%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%lists112418112431%_
                           '([[] . r])
                           '([_ . r])
                           '(_))
                    '#!void)))
            (let ((_%$%K112427112462%_
                   (lambda (_%r112460%_) (remove-nulls! _%r112460%_)))
                  (_%$%K112424112449%_
                   (lambda (_%r112447%_)
                     (_%process-tails!112417%_ _%lists112415%_ _%r112447%_)
                     _%lists112415%_))
                  (_%$%K112423112440%_ (lambda () _%lists112415%_)))
              (if (pair? _%$%lists112418112431%_)
                  (let ((_%$%tl112429112467%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%lists112418112431%_)))
                        (_%$%hd112428112465%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%lists112418112431%_))))
                    (if (null? _%$%hd112428112465%_)
                        (let ((_%r112470%_ _%$%tl112429112467%_))
                          (remove-nulls! _%r112470%_))
                        (let ((_%r112455%_ _%$%tl112429112467%_))
                          (_%$%K112424112449%_ _%r112455%_))))
                  (_%$%K112423112440%_)))))))
    (define append1!
      (lambda (_%l112400%_ _%x112401%_)
        (let ((_%l2112404%_ (cons _%x112401%_ '())))
          (if (pair? _%l112400%_)
              (let ((_%l112406%_ _%l112400%_))
                (let ((__tmp116706
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l112406%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp116706 _%l2112404%_))
                _%l112406%_)
              _%l2112404%_))))
    (define __append-reverse-until
      (lambda (_%pred112342%_ _%rhead112343%_ _%tail112344%_)
        (let ((_%pred112347%_ _%pred112342%_))
          (let _%loop112356%_ ((_%rhead112358%_ _%rhead112343%_)
                               (_%tail112359%_ _%tail112344%_))
            (let* ((_%$%rhead112361112370%_ _%rhead112358%_)
                   (_%$%E112364112374%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rhead112361112370%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%$%K112368112397%_
                     (lambda () (values '() _%tail112359%_)))
                    (_%$%K112365112381%_
                     (lambda (_%r112378%_ _%a112379%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred112347%_ _%a112379%_))
                           (values _%rhead112358%_ _%tail112359%_)
                           (_%loop112356%_
                            _%r112378%_
                            (cons _%a112379%_ _%tail112359%_))))))
                (let ((_%$%try-match112363112393%_
                       (lambda ()
                         (if (pair? _%$%rhead112361112370%_)
                             (let ((_%$%tl112367112386%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rhead112361112370%_)))
                                   (_%$%hd112366112384%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rhead112361112370%_))))
                               (let ((_%a112389%_ _%$%hd112366112384%_)
                                     (_%r112391%_ _%$%tl112367112386%_))
                                 (_%$%K112365112381%_
                                  _%r112391%_
                                  _%a112389%_)))
                             (_%$%E112364112374%_)))))
                  (if (null? _%$%rhead112361112370%_)
                      (_%$%K112368112397%_)
                      (_%$%try-match112363112393%_)))))))))
    (define append-reverse-until
      (lambda (_%pred112326%_ _%rhead112327%_ _%tail112328%_)
        (if (procedure? _%pred112326%_)
            (let ((_%pred112332%_ _%pred112326%_))
              (__append-reverse-until
               _%pred112332%_
               _%rhead112327%_
               _%tail112328%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@365.29-365.33"
               'contract:
               'procedure?
               'value:
               _%pred112326%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f112275%_ _%lst112276%_)
        (let ((_%f112279%_ _%f112275%_))
          (let _%lp112288%_ ((_%rest112290%_ _%lst112276%_))
            (let* ((_%$%rest112292112300%_ _%rest112290%_)
                   (_%$%else112294112308%_ (lambda () '#t))
                   (_%$%K112296112314%_
                    (lambda (_%rest112311%_ _%x112312%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f112279%_ _%x112312%_))
                          (_%lp112288%_ _%rest112311%_)
                          '#f))))
              (if (pair? _%$%rest112292112300%_)
                  (let ((_%$%hd112297112317%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest112292112300%_)))
                        (_%$%tl112298112319%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest112292112300%_))))
                    (let* ((_%x112322%_ _%$%hd112297112317%_)
                           (_%rest112324%_ _%$%tl112298112319%_))
                      (_%$%K112296112314%_ _%rest112324%_ _%x112322%_)))
                  (_%$%else112294112308%_)))))))
    (define andmap1
      (lambda (_%f112260%_ _%lst112261%_)
        (if (procedure? _%f112260%_)
            (let ((_%f112265%_ _%f112260%_))
              (__andmap1 _%f112265%_ _%lst112261%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@376.16-376.17"
               'contract:
               'procedure?
               'value:
               _%f112260%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f112174%_ _%lst1112175%_ _%lst2112176%_)
        (let ((_%f112179%_ _%f112174%_))
          (let _%lp112188%_ ((_%rest1112190%_ _%lst1112175%_)
                             (_%rest2112191%_ _%lst2112176%_))
            (let* ((_%$%rest1112193112201%_ _%rest1112190%_)
                   (_%$%else112195112209%_ (lambda () '#t))
                   (_%$%K112197112248%_
                    (lambda (_%rest1112212%_ _%x1112213%_)
                      (let* ((_%$%rest2112214112222%_ _%rest2112191%_)
                             (_%$%else112216112230%_ (lambda () '#t))
                             (_%$%K112218112236%_
                              (lambda (_%rest2112233%_ _%x2112234%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f112179%_ _%x1112213%_ _%x2112234%_))
                                    (_%lp112188%_
                                     _%rest1112212%_
                                     _%rest2112233%_)
                                    '#f))))
                        (if (pair? _%$%rest2112214112222%_)
                            (let ((_%$%hd112219112239%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2112214112222%_)))
                                  (_%$%tl112220112241%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2112214112222%_))))
                              (let* ((_%x2112244%_ _%$%hd112219112239%_)
                                     (_%rest2112246%_ _%$%tl112220112241%_))
                                (_%$%K112218112236%_
                                 _%rest2112246%_
                                 _%x2112244%_)))
                            (_%$%else112216112230%_))))))
              (if (pair? _%$%rest1112193112201%_)
                  (let ((_%$%hd112198112251%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1112193112201%_)))
                        (_%$%tl112199112253%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1112193112201%_))))
                    (let* ((_%x1112256%_ _%$%hd112198112251%_)
                           (_%rest1112258%_ _%$%tl112199112253%_))
                      (_%$%K112197112248%_ _%rest1112258%_ _%x1112256%_)))
                  (_%$%else112195112209%_)))))))
    (define andmap2
      (lambda (_%f112158%_ _%lst1112159%_ _%lst2112160%_)
        (if (procedure? _%f112158%_)
            (let ((_%f112164%_ _%f112158%_))
              (__andmap2 _%f112164%_ _%lst1112159%_ _%lst2112160%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@385.16-385.17"
               'contract:
               'procedure?
               'value:
               _%f112158%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f112102%_ _%lst112103%_)
        (let* ((_%f112105%_ _%f112102%_) (_%lst112108%_ _%lst112103%_))
          (if (procedure? _%f112105%_)
              (let ((_%f112113%_ _%f112105%_))
                (__andmap1 _%f112113%_ _%lst112108%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f112105%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f112125%_ _%lst1112126%_ _%lst2112127%_)
        (let* ((_%f112129%_ _%f112125%_)
               (_%lst1112132%_ _%lst1112126%_)
               (_%lst2112135%_ _%lst2112127%_))
          (if (procedure? _%f112129%_)
              (let ((_%f112140%_ _%f112129%_))
                (__andmap2 _%f112140%_ _%lst1112132%_ _%lst2112135%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f112129%_)
                '#!void)))))
    (define andmap
      (lambda _g116707_
        (let ((_g116708_ (let () (declare (not safe)) (##length _g116707_))))
          (cond ((let () (declare (not safe)) (##fx= _g116708_ 2))
                 (apply andmap__0 _g116707_))
                ((let () (declare (not safe)) (##fx= _g116708_ 3))
                 (apply andmap__1 _g116707_))
                ((let () (declare (not safe)) (##fx>= _g116708_ 3))
                 (apply andmap* _g116707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g116707_))))))
    (define __andmap*
      (lambda (_%f112059%_ . _%rest112060%_)
        (let ((_%f112063%_ _%f112059%_))
          (let _%recur112072%_ ((_%rest112074%_ _%rest112060%_))
            (if (let* ((_%f112077%_ pair?)
                       (_%lst112080%_ _%rest112074%_)
                       (_%f112085%_ _%f112077%_))
                  (__andmap1 _%f112085%_ _%lst112080%_))
                (if (let ((__tmp116709 (map car _%rest112074%_)))
                      (declare (not safe))
                      (##apply _%f112063%_ __tmp116709))
                    (_%recur112072%_ (map cdr _%rest112074%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f112044%_ . _%rest112045%_)
        (if (procedure? _%f112044%_)
            (let ((_%f112049%_ _%f112044%_))
              (declare (not safe))
              (##apply __andmap* _%f112049%_ _%rest112045%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@405.16-405.17"
               'contract:
               'procedure?
               'value:
               _%f112044%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f111991%_ _%lst111992%_)
        (let ((_%f111995%_ _%f111991%_))
          (let _%lp112004%_ ((_%rest112006%_ _%lst111992%_))
            (let* ((_%$%rest112007112015%_ _%rest112006%_)
                   (_%$%else112009112023%_ (lambda () '#f))
                   (_%$%K112011112032%_
                    (lambda (_%rest112026%_ _%x112027%_)
                      (let ((_%$e112029%_
                             (let ()
                               (declare (not safe))
                               (_%f111995%_ _%x112027%_))))
                        (if _%$e112029%_
                            _%$e112029%_
                            (_%lp112004%_ _%rest112026%_))))))
              (if (pair? _%$%rest112007112015%_)
                  (let ((_%$%hd112012112035%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest112007112015%_)))
                        (_%$%tl112013112037%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest112007112015%_))))
                    (let* ((_%x112040%_ _%$%hd112012112035%_)
                           (_%rest112042%_ _%$%tl112013112037%_))
                      (_%$%K112011112032%_ _%rest112042%_ _%x112040%_)))
                  (_%$%else112009112023%_)))))))
    (define ormap1
      (lambda (_%f111976%_ _%lst111977%_)
        (if (procedure? _%f111976%_)
            (let ((_%f111981%_ _%f111976%_))
              (__ormap1 _%f111981%_ _%lst111977%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@414.15-414.16"
               'contract:
               'procedure?
               'value:
               _%f111976%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f111888%_ _%lst1111889%_ _%lst2111890%_)
        (let ((_%f111893%_ _%f111888%_))
          (let _%lp111902%_ ((_%rest1111904%_ _%lst1111889%_)
                             (_%rest2111905%_ _%lst2111890%_))
            (let* ((_%$%rest1111906111914%_ _%rest1111904%_)
                   (_%$%else111908111922%_ (lambda () '#f))
                   (_%$%K111910111964%_
                    (lambda (_%rest1111925%_ _%x1111926%_)
                      (let* ((_%$%rest2111927111935%_ _%rest2111905%_)
                             (_%$%else111929111943%_ (lambda () '#f))
                             (_%$%K111931111952%_
                              (lambda (_%rest2111946%_ _%x2111947%_)
                                (let ((_%$e111949%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f111893%_
                                          _%x1111926%_
                                          _%x2111947%_))))
                                  (if _%$e111949%_
                                      _%$e111949%_
                                      (_%lp111902%_
                                       _%rest1111925%_
                                       _%rest2111946%_))))))
                        (if (pair? _%$%rest2111927111935%_)
                            (let ((_%$%hd111932111955%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2111927111935%_)))
                                  (_%$%tl111933111957%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2111927111935%_))))
                              (let* ((_%x2111960%_ _%$%hd111932111955%_)
                                     (_%rest2111962%_ _%$%tl111933111957%_))
                                (_%$%K111931111952%_
                                 _%rest2111962%_
                                 _%x2111960%_)))
                            (_%$%else111929111943%_))))))
              (if (pair? _%$%rest1111906111914%_)
                  (let ((_%$%hd111911111967%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1111906111914%_)))
                        (_%$%tl111912111969%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1111906111914%_))))
                    (let* ((_%x1111972%_ _%$%hd111911111967%_)
                           (_%rest1111974%_ _%$%tl111912111969%_))
                      (_%$%K111910111964%_ _%rest1111974%_ _%x1111972%_)))
                  (_%$%else111908111922%_)))))))
    (define ormap2
      (lambda (_%f111872%_ _%lst1111873%_ _%lst2111874%_)
        (if (procedure? _%f111872%_)
            (let ((_%f111878%_ _%f111872%_))
              (__ormap2 _%f111878%_ _%lst1111873%_ _%lst2111874%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@421.15-421.16"
               'contract:
               'procedure?
               'value:
               _%f111872%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f111816%_ _%lst111817%_)
        (let* ((_%f111819%_ _%f111816%_) (_%lst111822%_ _%lst111817%_))
          (if (procedure? _%f111819%_)
              (let ((_%f111827%_ _%f111819%_))
                (__ormap1 _%f111827%_ _%lst111822%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111819%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f111839%_ _%lst1111840%_ _%lst2111841%_)
        (let* ((_%f111843%_ _%f111839%_)
               (_%lst1111846%_ _%lst1111840%_)
               (_%lst2111849%_ _%lst2111841%_))
          (if (procedure? _%f111843%_)
              (let ((_%f111854%_ _%f111843%_))
                (__ormap2 _%f111854%_ _%lst1111846%_ _%lst2111849%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111843%_)
                '#!void)))))
    (define ormap
      (lambda _g116710_
        (let ((_g116711_ (let () (declare (not safe)) (##length _g116710_))))
          (cond ((let () (declare (not safe)) (##fx= _g116711_ 2))
                 (apply ormap__0 _g116710_))
                ((let () (declare (not safe)) (##fx= _g116711_ 3))
                 (apply ormap__1 _g116710_))
                ((let () (declare (not safe)) (##fx>= _g116711_ 3))
                 (apply ormap* _g116710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g116710_))))))
    (define __ormap*
      (lambda (_%f111772%_ . _%rest111773%_)
        (let ((_%f111776%_ _%f111772%_))
          (let _%recur111785%_ ((_%rest111787%_ _%rest111773%_))
            (if (let* ((_%f111789%_ pair?)
                       (_%lst111792%_ _%rest111787%_)
                       (_%f111797%_ _%f111789%_))
                  (__andmap1 _%f111797%_ _%lst111792%_))
                (let ((_%$e111813%_
                       (let ((__tmp116712 (map car _%rest111787%_)))
                         (declare (not safe))
                         (##apply _%f111776%_ __tmp116712))))
                  (if _%$e111813%_
                      _%$e111813%_
                      (_%recur111785%_ (map cdr _%rest111787%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f111757%_ . _%rest111758%_)
        (if (procedure? _%f111757%_)
            (let ((_%f111762%_ _%f111757%_))
              (declare (not safe))
              (##apply __ormap* _%f111762%_ _%rest111758%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@439.15-439.16"
               'contract:
               'procedure?
               'value:
               _%f111757%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f111700%_ _%lst111701%_)
        (let ((_%f111704%_ _%f111700%_))
          (let _%recur111713%_ ((_%rest111715%_ _%lst111701%_))
            (let* ((_%$%rest111717111725%_ _%rest111715%_)
                   (_%$%else111719111733%_ (lambda () '()))
                   (_%$%K111721111745%_
                    (lambda (_%rest111736%_ _%x111737%_)
                      (let ((_%$e111739%_
                             (let ()
                               (declare (not safe))
                               (_%f111704%_ _%x111737%_))))
                        (if _%$e111739%_
                            (cons _%$e111739%_
                                  (_%recur111713%_ _%rest111736%_))
                            (_%recur111713%_ _%rest111736%_))))))
              (if (pair? _%$%rest111717111725%_)
                  (let ((_%$%hd111722111748%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest111717111725%_)))
                        (_%$%tl111723111750%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest111717111725%_))))
                    (let* ((_%x111753%_ _%$%hd111722111748%_)
                           (_%rest111755%_ _%$%tl111723111750%_))
                      (_%$%K111721111745%_ _%rest111755%_ _%x111753%_)))
                  (_%$%else111719111733%_)))))))
    (define filter-map1
      (lambda (_%f111685%_ _%lst111686%_)
        (if (procedure? _%f111685%_)
            (let ((_%f111690%_ _%f111685%_))
              (__filter-map1 _%f111690%_ _%lst111686%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@446.20-446.21"
               'contract:
               'procedure?
               'value:
               _%f111685%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f111593%_ _%lst1111594%_ _%lst2111595%_)
        (let ((_%f111598%_ _%f111593%_))
          (let _%recur111607%_ ((_%rest1111609%_ _%lst1111594%_)
                                (_%rest2111610%_ _%lst2111595%_))
            (let* ((_%$%rest1111612111620%_ _%rest1111609%_)
                   (_%$%else111614111628%_ (lambda () '()))
                   (_%$%K111616111673%_
                    (lambda (_%rest1111631%_ _%x1111632%_)
                      (let* ((_%$%rest2111633111641%_ _%rest2111610%_)
                             (_%$%else111635111649%_ (lambda () '()))
                             (_%$%K111637111661%_
                              (lambda (_%rest2111652%_ _%x2111653%_)
                                (let ((_%$e111655%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f111598%_
                                          _%x1111632%_
                                          _%x2111653%_))))
                                  (if _%$e111655%_
                                      (cons _%$e111655%_
                                            (_%recur111607%_
                                             _%rest1111631%_
                                             _%rest2111652%_))
                                      (_%recur111607%_
                                       _%rest1111631%_
                                       _%rest2111652%_))))))
                        (if (pair? _%$%rest2111633111641%_)
                            (let ((_%$%hd111638111664%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2111633111641%_)))
                                  (_%$%tl111639111666%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2111633111641%_))))
                              (let* ((_%x2111669%_ _%$%hd111638111664%_)
                                     (_%rest2111671%_ _%$%tl111639111666%_))
                                (_%$%K111637111661%_
                                 _%rest2111671%_
                                 _%x2111669%_)))
                            (_%$%else111635111649%_))))))
              (if (pair? _%$%rest1111612111620%_)
                  (let ((_%$%hd111617111676%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1111612111620%_)))
                        (_%$%tl111618111678%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1111612111620%_))))
                    (let* ((_%x1111681%_ _%$%hd111617111676%_)
                           (_%rest1111683%_ _%$%tl111618111678%_))
                      (_%$%K111616111673%_ _%rest1111683%_ _%x1111681%_)))
                  (_%$%else111614111628%_)))))))
    (define filter-map2
      (lambda (_%f111577%_ _%lst1111578%_ _%lst2111579%_)
        (if (procedure? _%f111577%_)
            (let ((_%f111583%_ _%f111577%_))
              (__filter-map2 _%f111583%_ _%lst1111578%_ _%lst2111579%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@457.20-457.21"
               'contract:
               'procedure?
               'value:
               _%f111577%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f111521%_ _%lst111522%_)
        (let* ((_%f111524%_ _%f111521%_) (_%lst111527%_ _%lst111522%_))
          (if (procedure? _%f111524%_)
              (let ((_%f111532%_ _%f111524%_))
                (__filter-map1 _%f111532%_ _%lst111527%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111524%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f111544%_ _%lst1111545%_ _%lst2111546%_)
        (let* ((_%f111548%_ _%f111544%_)
               (_%lst1111551%_ _%lst1111545%_)
               (_%lst2111554%_ _%lst2111546%_))
          (if (procedure? _%f111548%_)
              (let ((_%f111559%_ _%f111548%_))
                (__filter-map2 _%f111559%_ _%lst1111551%_ _%lst2111554%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f111548%_)
                '#!void)))))
    (define filter-map
      (lambda _g116713_
        (let ((_g116714_ (let () (declare (not safe)) (##length _g116713_))))
          (cond ((let () (declare (not safe)) (##fx= _g116714_ 2))
                 (apply filter-map__0 _g116713_))
                ((let () (declare (not safe)) (##fx= _g116714_ 3))
                 (apply filter-map__1 _g116713_))
                ((let () (declare (not safe)) (##fx>= _g116714_ 3))
                 (apply filter-map* _g116713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g116713_))))))
    (define __filter-map*
      (lambda (_%f111472%_ . _%rest111473%_)
        (let ((_%f111476%_ _%f111472%_))
          (let _%recur111485%_ ((_%rest111487%_ _%rest111473%_))
            (if (let* ((_%f111490%_ pair?)
                       (_%lst111493%_ _%rest111487%_)
                       (_%f111498%_ _%f111490%_))
                  (__andmap1 _%f111498%_ _%lst111493%_))
                (let ((_%$e111515%_
                       (let ((__tmp116715 (map car _%rest111487%_)))
                         (declare (not safe))
                         (##apply _%f111476%_ __tmp116715))))
                  (if _%$e111515%_
                      (cons _%$e111515%_
                            (_%recur111485%_ (map cdr _%rest111487%_)))
                      (_%recur111485%_ (map cdr _%rest111487%_))))
                '())))))
    (define filter-map*
      (lambda (_%f111457%_ . _%rest111458%_)
        (if (procedure? _%f111457%_)
            (let ((_%f111462%_ _%f111457%_))
              (declare (not safe))
              (##apply __filter-map* _%f111462%_ _%rest111458%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@479.20-479.21"
               'contract:
               'procedure?
               'value:
               _%f111457%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key111433%_ _%lst111435%_ _%default111437%_)
        (let ((_%$e111440%_
               (if (pair? _%lst111435%_)
                   (assq _%key111433%_ _%lst111435%_)
                   '#f)))
          (if _%$e111440%_
              (cdr _%$e111440%_)
              (if (procedure? _%default111437%_)
                  (_%default111437%_ _%key111433%_)
                  _%default111437%_)))))
    (define agetq__0
      (lambda (_%key111448%_ _%lst111449%_)
        (let ((_%default111451%_ '#f))
          (agetq__% _%key111448%_ _%lst111449%_ _%default111451%_))))
    (define agetq
      (lambda _g116716_
        (let ((_g116717_ (let () (declare (not safe)) (##length _g116716_))))
          (cond ((let () (declare (not safe)) (##fx= _g116717_ 2))
                 (apply agetq__0 _g116716_))
                ((let () (declare (not safe)) (##fx= _g116717_ 3))
                 (apply agetq__% _g116716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g116716_))))))
    (define agetv__%
      (lambda (_%key111408%_ _%lst111410%_ _%default111412%_)
        (let ((_%$e111415%_
               (if (pair? _%lst111410%_)
                   (assv _%key111408%_ _%lst111410%_)
                   '#f)))
          (if _%$e111415%_
              (cdr _%$e111415%_)
              (if (procedure? _%default111412%_)
                  (_%default111412%_ _%key111408%_)
                  _%default111412%_)))))
    (define agetv__0
      (lambda (_%key111423%_ _%lst111424%_)
        (let ((_%default111426%_ '#f))
          (agetv__% _%key111423%_ _%lst111424%_ _%default111426%_))))
    (define agetv
      (lambda _g116718_
        (let ((_g116719_ (let () (declare (not safe)) (##length _g116718_))))
          (cond ((let () (declare (not safe)) (##fx= _g116719_ 2))
                 (apply agetv__0 _g116718_))
                ((let () (declare (not safe)) (##fx= _g116719_ 3))
                 (apply agetv__% _g116718_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g116718_))))))
    (define aget__%
      (lambda (_%key111383%_ _%lst111385%_ _%default111387%_)
        (let ((_%$e111390%_
               (if (pair? _%lst111385%_)
                   (assoc _%key111383%_ _%lst111385%_)
                   '#f)))
          (if _%$e111390%_
              (cdr _%$e111390%_)
              (if (procedure? _%default111387%_)
                  (_%default111387%_ _%key111383%_)
                  _%default111387%_)))))
    (define aget__0
      (lambda (_%key111398%_ _%lst111399%_)
        (let ((_%default111401%_ '#f))
          (aget__% _%key111398%_ _%lst111399%_ _%default111401%_))))
    (define aget
      (lambda _g116720_
        (let ((_g116721_ (let () (declare (not safe)) (##length _g116720_))))
          (cond ((let () (declare (not safe)) (##fx= _g116721_ 2))
                 (apply aget__0 _g116720_))
                ((let () (declare (not safe)) (##fx= _g116721_ 3))
                 (apply aget__% _g116720_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g116720_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key111312%_ _%lst111314%_ _%default111316%_)
        (let _%lp111319%_ ((_%rest111322%_ _%lst111314%_))
          (let* ((_%$%rest111324111334%_ _%rest111322%_)
                 (_%$%else111326111342%_
                  (lambda ()
                    (if (procedure? _%default111316%_)
                        (_%default111316%_ _%key111312%_)
                        _%default111316%_)))
                 (_%$%K111328111351%_
                  (lambda (_%rest111345%_ _%v111346%_ _%k111348%_)
                    (if (eq? _%k111348%_ _%key111312%_)
                        _%v111346%_
                        (_%lp111319%_ _%rest111345%_)))))
            (if (pair? _%$%rest111324111334%_)
                (let ((_%$%hd111329111354%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest111324111334%_)))
                      (_%$%tl111330111356%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest111324111334%_))))
                  (let ((_%k111359%_ _%$%hd111329111354%_))
                    (if (pair? _%$%tl111330111356%_)
                        (let ((_%$%hd111331111361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl111330111356%_)))
                              (_%$%tl111332111363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl111330111356%_))))
                          (let* ((_%v111366%_ _%$%hd111331111361%_)
                                 (_%rest111368%_ _%$%tl111332111363%_))
                            (_%$%K111328111351%_
                             _%rest111368%_
                             _%v111366%_
                             _%k111359%_)))
                        (_%$%else111326111342%_))))
                (_%$%else111326111342%_))))))
    (define pgetq__0
      (lambda (_%key111373%_ _%lst111374%_)
        (let ((_%default111376%_ '#f))
          (pgetq__% _%key111373%_ _%lst111374%_ _%default111376%_))))
    (define pgetq
      (lambda _g116722_
        (let ((_g116723_ (let () (declare (not safe)) (##length _g116722_))))
          (cond ((let () (declare (not safe)) (##fx= _g116723_ 2))
                 (apply pgetq__0 _g116722_))
                ((let () (declare (not safe)) (##fx= _g116723_ 3))
                 (apply pgetq__% _g116722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g116722_))))))
    (define pgetv__%
      (lambda (_%key111241%_ _%lst111243%_ _%default111245%_)
        (let _%lp111248%_ ((_%rest111251%_ _%lst111243%_))
          (let* ((_%$%rest111253111263%_ _%rest111251%_)
                 (_%$%else111255111271%_
                  (lambda ()
                    (if (procedure? _%default111245%_)
                        (_%default111245%_ _%key111241%_)
                        _%default111245%_)))
                 (_%$%K111257111280%_
                  (lambda (_%rest111274%_ _%v111275%_ _%k111277%_)
                    (if (eqv? _%k111277%_ _%key111241%_)
                        _%v111275%_
                        (_%lp111248%_ _%rest111274%_)))))
            (if (pair? _%$%rest111253111263%_)
                (let ((_%$%hd111258111283%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest111253111263%_)))
                      (_%$%tl111259111285%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest111253111263%_))))
                  (let ((_%k111288%_ _%$%hd111258111283%_))
                    (if (pair? _%$%tl111259111285%_)
                        (let ((_%$%hd111260111290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl111259111285%_)))
                              (_%$%tl111261111292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl111259111285%_))))
                          (let* ((_%v111295%_ _%$%hd111260111290%_)
                                 (_%rest111297%_ _%$%tl111261111292%_))
                            (_%$%K111257111280%_
                             _%rest111297%_
                             _%v111295%_
                             _%k111288%_)))
                        (_%$%else111255111271%_))))
                (_%$%else111255111271%_))))))
    (define pgetv__0
      (lambda (_%key111302%_ _%lst111303%_)
        (let ((_%default111305%_ '#f))
          (pgetv__% _%key111302%_ _%lst111303%_ _%default111305%_))))
    (define pgetv
      (lambda _g116724_
        (let ((_g116725_ (let () (declare (not safe)) (##length _g116724_))))
          (cond ((let () (declare (not safe)) (##fx= _g116725_ 2))
                 (apply pgetv__0 _g116724_))
                ((let () (declare (not safe)) (##fx= _g116725_ 3))
                 (apply pgetv__% _g116724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g116724_))))))
    (define pget__%
      (lambda (_%key111170%_ _%lst111172%_ _%default111174%_)
        (let _%lp111177%_ ((_%rest111180%_ _%lst111172%_))
          (let* ((_%$%rest111182111192%_ _%rest111180%_)
                 (_%$%else111184111200%_
                  (lambda ()
                    (if (procedure? _%default111174%_)
                        (_%default111174%_ _%key111170%_)
                        _%default111174%_)))
                 (_%$%K111186111209%_
                  (lambda (_%rest111203%_ _%v111204%_ _%k111206%_)
                    (if (equal? _%k111206%_ _%key111170%_)
                        _%v111204%_
                        (_%lp111177%_ _%rest111203%_)))))
            (if (pair? _%$%rest111182111192%_)
                (let ((_%$%hd111187111212%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest111182111192%_)))
                      (_%$%tl111188111214%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest111182111192%_))))
                  (let ((_%k111217%_ _%$%hd111187111212%_))
                    (if (pair? _%$%tl111188111214%_)
                        (let ((_%$%hd111189111219%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl111188111214%_)))
                              (_%$%tl111190111221%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl111188111214%_))))
                          (let* ((_%v111224%_ _%$%hd111189111219%_)
                                 (_%rest111226%_ _%$%tl111190111221%_))
                            (_%$%K111186111209%_
                             _%rest111226%_
                             _%v111224%_
                             _%k111217%_)))
                        (_%$%else111184111200%_))))
                (_%$%else111184111200%_))))))
    (define pget__0
      (lambda (_%key111231%_ _%lst111232%_)
        (let ((_%default111234%_ '#f))
          (pget__% _%key111231%_ _%lst111232%_ _%default111234%_))))
    (define pget
      (lambda _g116726_
        (let ((_g116727_ (let () (declare (not safe)) (##length _g116726_))))
          (cond ((let () (declare (not safe)) (##fx= _g116727_ 2))
                 (apply pget__0 _g116726_))
                ((let () (declare (not safe)) (##fx= _g116727_ 3))
                 (apply pget__% _g116726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g116726_))))))
    (define __find
      (lambda (_%pred111130%_ _%lst111131%_)
        (let* ((_%pred111134%_ _%pred111130%_)
               (_%$e111165%_
                (let* ((_%proc111143%_ _%pred111134%_)
                       (_%lst111146%_ _%lst111131%_)
                       (_%proc111151%_ _%proc111143%_))
                  (__memf _%proc111151%_ _%lst111146%_))))
          (if _%$e111165%_
              (let () (declare (not safe)) (##car _%$e111165%_))
              '#f))))
    (define find
      (lambda (_%pred111115%_ _%lst111116%_)
        (if (procedure? _%pred111115%_)
            (let ((_%pred111120%_ _%pred111115%_))
              (__find _%pred111120%_ _%lst111116%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@525.13-525.17"
               'contract:
               'procedure?
               'value:
               _%pred111115%_)
              '#!void))))
    (define __memf
      (lambda (_%proc111065%_ _%lst111066%_)
        (let ((_%proc111069%_ _%proc111065%_))
          (let _%lp111078%_ ((_%rest111080%_ _%lst111066%_))
            (let* ((_%$%rest111081111089%_ _%rest111080%_)
                   (_%$%else111083111097%_ (lambda () '#f))
                   (_%$%K111085111103%_
                    (lambda (_%tl111100%_ _%hd111101%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc111069%_ _%hd111101%_))
                          _%rest111080%_
                          (_%lp111078%_ _%tl111100%_)))))
              (if (pair? _%$%rest111081111089%_)
                  (let ((_%$%hd111086111106%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest111081111089%_)))
                        (_%$%tl111087111108%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest111081111089%_))))
                    (let* ((_%hd111111%_ _%$%hd111086111106%_)
                           (_%tl111113%_ _%$%tl111087111108%_))
                      (_%$%K111085111103%_ _%tl111113%_ _%hd111111%_)))
                  (_%$%else111083111097%_)))))))
    (define memf
      (lambda (_%proc111050%_ _%lst111051%_)
        (if (procedure? _%proc111050%_)
            (let ((_%proc111055%_ _%proc111050%_))
              (__memf _%proc111055%_ _%lst111051%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@530.13-530.17"
               'contract:
               'procedure?
               'value:
               _%proc111050%_)
              '#!void))))
    (define remove1
      (lambda (_%el110973%_ _%lst110975%_)
        (let _%lp110978%_ ((_%rest110981%_ _%lst110975%_) (_%r110983%_ '()))
          (let* ((_%$%rest110985110993%_ _%rest110981%_)
                 (_%$%else110987111001%_ (lambda () _%lst110975%_))
                 (_%$%K110989111038%_
                  (lambda (_%rest111004%_ _%hd111005%_)
                    (if (equal? _%el110973%_ _%hd111005%_)
                        (let* ((_%f111008%_ cons)
                               (_%iv111011%_ _%rest111004%_)
                               (_%lst111014%_ _%r110983%_)
                               (_%f111019%_ _%f111008%_))
                          (__foldl1 _%f111019%_ _%iv111011%_ _%lst111014%_))
                        (_%lp110978%_
                         _%rest111004%_
                         (cons _%hd111005%_ _%r110983%_))))))
            (if (pair? _%$%rest110985110993%_)
                (let ((_%$%hd110990111041%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest110985110993%_)))
                      (_%$%tl110991111043%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest110985110993%_))))
                  (let* ((_%hd111046%_ _%$%hd110990111041%_)
                         (_%rest111048%_ _%$%tl110991111043%_))
                    (_%$%K110989111038%_ _%rest111048%_ _%hd111046%_)))
                (_%$%else110987111001%_))))))
    (define remv1
      (lambda (_%el110896%_ _%lst110898%_)
        (let _%lp110901%_ ((_%rest110904%_ _%lst110898%_) (_%r110906%_ '()))
          (let* ((_%$%rest110908110916%_ _%rest110904%_)
                 (_%$%else110910110924%_ (lambda () _%lst110898%_))
                 (_%$%K110912110961%_
                  (lambda (_%rest110927%_ _%hd110928%_)
                    (if (eqv? _%el110896%_ _%hd110928%_)
                        (let* ((_%f110931%_ cons)
                               (_%iv110934%_ _%rest110927%_)
                               (_%lst110937%_ _%r110906%_)
                               (_%f110942%_ _%f110931%_))
                          (__foldl1 _%f110942%_ _%iv110934%_ _%lst110937%_))
                        (_%lp110901%_
                         _%rest110927%_
                         (cons _%hd110928%_ _%r110906%_))))))
            (if (pair? _%$%rest110908110916%_)
                (let ((_%$%hd110913110964%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest110908110916%_)))
                      (_%$%tl110914110966%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest110908110916%_))))
                  (let* ((_%hd110969%_ _%$%hd110913110964%_)
                         (_%rest110971%_ _%$%tl110914110966%_))
                    (_%$%K110912110961%_ _%rest110971%_ _%hd110969%_)))
                (_%$%else110910110924%_))))))
    (define remq1
      (lambda (_%el110819%_ _%lst110821%_)
        (let _%lp110824%_ ((_%rest110827%_ _%lst110821%_) (_%r110829%_ '()))
          (let* ((_%$%rest110831110839%_ _%rest110827%_)
                 (_%$%else110833110847%_ (lambda () _%lst110821%_))
                 (_%$%K110835110884%_
                  (lambda (_%rest110850%_ _%hd110851%_)
                    (if (eq? _%el110819%_ _%hd110851%_)
                        (let* ((_%f110854%_ cons)
                               (_%iv110857%_ _%rest110850%_)
                               (_%lst110860%_ _%r110829%_)
                               (_%f110865%_ _%f110854%_))
                          (__foldl1 _%f110865%_ _%iv110857%_ _%lst110860%_))
                        (_%lp110824%_
                         _%rest110850%_
                         (cons _%hd110851%_ _%r110829%_))))))
            (if (pair? _%$%rest110831110839%_)
                (let ((_%$%hd110836110887%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest110831110839%_)))
                      (_%$%tl110837110889%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest110831110839%_))))
                  (let* ((_%hd110892%_ _%$%hd110836110887%_)
                         (_%rest110894%_ _%$%tl110837110889%_))
                    (_%$%K110835110884%_ _%rest110894%_ _%hd110892%_)))
                (_%$%else110833110847%_))))))
    (define __remf
      (lambda (_%proc110736%_ _%lst110737%_)
        (let ((_%proc110740%_ _%proc110736%_))
          (let _%lp110749%_ ((_%rest110751%_ _%lst110737%_) (_%r110752%_ '()))
            (let* ((_%$%rest110753110761%_ _%rest110751%_)
                   (_%$%else110755110769%_ (lambda () _%lst110737%_))
                   (_%$%K110757110807%_
                    (lambda (_%rest110772%_ _%hd110773%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc110740%_ _%hd110773%_))
                          (let* ((_%f110775%_ cons)
                                 (_%iv110778%_ _%rest110772%_)
                                 (_%lst110781%_ _%r110752%_)
                                 (_%f110786%_ _%f110775%_))
                            (__foldl1 _%f110786%_ _%iv110778%_ _%lst110781%_))
                          (_%lp110749%_
                           _%rest110772%_
                           (cons _%hd110773%_ _%r110752%_))))))
              (if (pair? _%$%rest110753110761%_)
                  (let ((_%$%hd110758110810%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest110753110761%_)))
                        (_%$%tl110759110812%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest110753110761%_))))
                    (let* ((_%hd110815%_ _%$%hd110758110810%_)
                           (_%rest110817%_ _%$%tl110759110812%_))
                      (_%$%K110757110807%_ _%rest110817%_ _%hd110815%_)))
                  (_%$%else110755110769%_)))))))
    (define remf
      (lambda (_%proc110721%_ _%lst110722%_)
        (if (procedure? _%proc110721%_)
            (let ((_%proc110726%_ _%proc110721%_))
              (__remf _%proc110726%_ _%lst110722%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@552.13-552.17"
               'contract:
               'procedure?
               'value:
               _%proc110721%_)
              '#!void))))
    (define __1+
      (lambda (_%x110709%_)
        (let ((_%x110712%_ _%x110709%_)) (+ _%x110712%_ '1))))
    (define 1+
      (lambda (_%x110695%_)
        (if (number? _%x110695%_)
            (let ((_%x110699%_ _%x110695%_)) (__1+ _%x110699%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@561.11-561.12"
               'contract:
               'number?
               'value:
               _%x110695%_)
              '#!void))))
    (define __1-
      (lambda (_%x110683%_)
        (let ((_%x110686%_ _%x110683%_)) (- _%x110686%_ '1))))
    (define 1-
      (lambda (_%x110669%_)
        (if (number? _%x110669%_)
            (let ((_%x110673%_ _%x110669%_)) (__1- _%x110673%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.11-569.12"
               'contract:
               'number?
               'value:
               _%x110669%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x110657%_)
        (let ((_%x110660%_ _%x110657%_))
          (declare (not safe))
          (##fx+ _%x110660%_ '1))))
    (define fx1+
      (lambda (_%x110643%_)
        (if (fixnum? _%x110643%_)
            (let ((_%x110647%_ _%x110643%_)) (__fx1+ _%x110647%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.14"
               'contract:
               'fixnum?
               'value:
               _%x110643%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x110631%_)
        (let ((_%x110634%_ _%x110631%_))
          (declare (not safe))
          (##fx- _%x110634%_ '1))))
    (define fx1-
      (lambda (_%x110617%_)
        (if (fixnum? _%x110617%_)
            (let ((_%x110621%_ _%x110617%_)) (__fx1- _%x110621%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@585.13-585.14"
               'contract:
               'fixnum?
               'value:
               _%x110617%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x110614%_)
        (if (fixnum? _%x110614%_)
            (let () (declare (not safe)) (##fx>= _%x110614%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x110611%_)
        (if (fixnum? _%x110611%_)
            (let () (declare (not safe)) (##fx> _%x110611%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x110608%_)
        (let () (declare (not safe)) (##fx= _%x110608%_ '0))))
    (define fx<0?
      (lambda (_%x110605%_)
        (if (fixnum? _%x110605%_)
            (let () (declare (not safe)) (##fx< _%x110605%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x110602%_)
        (if (fixnum? _%x110602%_)
            (let () (declare (not safe)) (##fx<= _%x110602%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x110599%_)
        (if (symbol? _%x110599%_) (not (uninterned-symbol? _%x110599%_)) '#f)))
    (define __display-as-string
      (lambda (_%x110493%_ _%port110494%_)
        (let ((_%port110497%_ _%port110494%_))
          (if (or (string? _%x110493%_)
                  (symbol? _%x110493%_)
                  (keyword? _%x110493%_)
                  (number? _%x110493%_)
                  (char? _%x110493%_))
              (display _%x110493%_ _%port110497%_)
              (if (pair? _%x110493%_)
                  (let ()
                    (let* ((_%x110520%_
                            (let () (declare (not safe)) (##car _%x110493%_)))
                           (_%port110523%_ _%port110497%_))
                      (if (output-port? _%port110523%_)
                          (let ((_%port110528%_ _%port110523%_))
                            (__display-as-string _%x110520%_ _%port110528%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port110523%_)
                            '#!void)))
                    (let* ((_%x110543%_
                            (let () (declare (not safe)) (##cdr _%x110493%_)))
                           (_%port110546%_ _%port110497%_))
                      (if (output-port? _%port110546%_)
                          (let ((_%port110551%_ _%port110546%_))
                            (__display-as-string _%x110543%_ _%port110551%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port110546%_)
                            '#!void))))
                  (if (vector? _%x110493%_)
                      (vector-for-each
                       (lambda (_%$%g110562110564%_)
                         (let* ((_%x110567%_ _%$%g110562110564%_)
                                (_%port110570%_ _%port110497%_))
                           (if (output-port? _%port110570%_)
                               (let ((_%port110575%_ _%port110570%_))
                                 (__display-as-string
                                  _%x110567%_
                                  _%port110575%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port110570%_)
                                 '#!void))))
                       _%x110493%_)
                      (if (or (null? _%x110493%_)
                              (eq? _%x110493%_ '#!void)
                              (eof-object? _%x110493%_)
                              (boolean? _%x110493%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x110493%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x110478%_ _%port110479%_)
        (if (output-port? _%port110479%_)
            (let ((_%port110483%_ _%port110479%_))
              (__display-as-string _%x110478%_ _%port110483%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@615.28-615.32"
               'contract:
               'output-port?
               'value:
               _%port110479%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x110418%_)
        (if (string? _%x110418%_)
            _%x110418%_
            (if (symbol? _%x110418%_)
                (let () (declare (not safe)) (##symbol->string _%x110418%_))
                (if (keyword? _%x110418%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x110418%_))
                    (if (number? _%x110418%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x110418%_))
                        (call-with-output-string
                         '()
                         (lambda (_%$%g110424110426%_)
                           (let* ((_%x110429%_ _%x110418%_)
                                  (_%port110432%_ _%$%g110424110426%_))
                             (if (output-port? _%port110432%_)
                                 (let ((_%port110437%_ _%port110432%_))
                                   (__display-as-string
                                    _%x110429%_
                                    _%port110437%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port110432%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args110451%_
        (call-with-output-string
         '()
         (lambda (_%$%g110452110454%_)
           (let* ((_%x110457%_ _%args110451%_)
                  (_%port110460%_ _%$%g110452110454%_))
             (if (output-port? _%port110460%_)
                 (let ((_%port110465%_ _%port110460%_))
                   (__display-as-string _%x110457%_ _%port110465%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port110460%_)
                   '#!void)))))))
    (define as-string
      (lambda _g116728_
        (let ((_g116729_ (let () (declare (not safe)) (##length _g116728_))))
          (cond ((let () (declare (not safe)) (##fx= _g116729_ 1))
                 (apply as-string__0 _g116728_))
                (#t
                 (apply (lambda _%args110451%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args110451%_)))
                        _g116728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g116728_))))))
    (define make-symbol__0
      (lambda (_%x110414%_)
        (if (interned-symbol? _%x110414%_)
            _%x110414%_
            (let ((__tmp116730 (as-string__0 _%x110414%_)))
              (declare (not safe))
              (##string->symbol __tmp116730)))))
    (define make-symbol__1
      (lambda _%args110416%_
        (let ((__tmp116731
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args110416%_))))
          (declare (not safe))
          (##string->symbol __tmp116731))))
    (define make-symbol
      (lambda _g116732_
        (let ((_g116733_ (let () (declare (not safe)) (##length _g116732_))))
          (cond ((let () (declare (not safe)) (##fx= _g116733_ 1))
                 (apply make-symbol__0 _g116732_))
                (#t
                 (apply (lambda _%args110416%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args110416%_)))
                        _g116732_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g116732_))))))
    (define make-keyword__0
      (lambda (_%x110410%_)
        (if (interned-keyword? _%x110410%_)
            _%x110410%_
            (let ((__tmp116734 (as-string__0 _%x110410%_)))
              (declare (not safe))
              (##string->keyword __tmp116734)))))
    (define make-keyword__1
      (lambda _%args110412%_
        (let ((__tmp116735
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args110412%_))))
          (declare (not safe))
          (##string->keyword __tmp116735))))
    (define make-keyword
      (lambda _g116736_
        (let ((_g116737_ (let () (declare (not safe)) (##length _g116736_))))
          (cond ((let () (declare (not safe)) (##fx= _g116737_ 1))
                 (apply make-keyword__0 _g116736_))
                (#t
                 (apply (lambda _%args110412%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args110412%_)))
                        _g116736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g116736_))))))
    (define interned-keyword?
      (lambda (_%x110407%_)
        (if (keyword? _%x110407%_)
            (not (uninterned-keyword? _%x110407%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym110395%_)
        (let ((_%sym110398%_ _%sym110395%_))
          (if (uninterned-symbol? _%sym110398%_)
              (let ((__tmp116738
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym110398%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp116738))
              (let ((__tmp116739
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym110398%_))))
                (declare (not safe))
                (##string->keyword __tmp116739))))))
    (define symbol->keyword
      (lambda (_%sym110381%_)
        (if (symbol? _%sym110381%_)
            (let ((_%sym110385%_ _%sym110381%_))
              (__symbol->keyword _%sym110385%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@658.24-658.27"
               'contract:
               'symbol?
               'value:
               _%sym110381%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym110369%_)
        (let ((_%sym110372%_ _%sym110369%_))
          (if (uninterned-keyword? _%sym110372%_)
              (let ((__tmp116740
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym110372%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp116740))
              (let ((__tmp116741
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym110372%_))))
                (declare (not safe))
                (##string->symbol __tmp116741))))))
    (define keyword->symbol
      (lambda (_%sym110355%_)
        (if (keyword? _%sym110355%_)
            (let ((_%sym110359%_ _%sym110355%_))
              (__keyword->symbol _%sym110359%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@664.24-664.27"
               'contract:
               'keyword?
               'value:
               _%sym110355%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr110315%_ _%enc110316%_)
        (let* ((_%bstr110319%_ _%bstr110315%_) (_%enc110327%_ _%enc110316%_))
          (if (eq? _%enc110327%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr110319%_))
              (let* ((_%in110336%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc110327%_
                                   (cons 'init: (cons _%bstr110319%_ '()))))))
                     (_%len110338%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr110319%_)))
                     (_%out110340%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len110338%_)))
                     (_%n110342%_
                      (read-substring
                       _%out110340%_
                       '0
                       _%len110338%_
                       _%in110336%_)))
                (string-shrink! _%out110340%_ _%n110342%_)
                _%out110340%_)))))
    (define __bytes->string__0
      (lambda (_%bstr110348%_)
        (let ((_%enc110350%_ 'UTF-8))
          (__bytes->string__% _%bstr110348%_ _%enc110350%_))))
    (define __bytes->string
      (lambda _g116742_
        (let ((_g116743_ (let () (declare (not safe)) (##length _g116742_))))
          (cond ((let () (declare (not safe)) (##fx= _g116743_ 1))
                 (apply __bytes->string__0 _g116742_))
                ((let () (declare (not safe)) (##fx= _g116743_ 2))
                 (apply __bytes->string__% _g116742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g116742_))))))
    (define bytes->string__%
      (lambda (_%bstr110279%_ _%enc110280%_)
        (if (u8vector? _%bstr110279%_)
            (let ((_%bstr110284%_ _%bstr110279%_))
              (if (symbol? _%enc110280%_)
                  (let ((_%enc110294%_ _%enc110280%_))
                    (__bytes->string__% _%bstr110284%_ _%enc110294%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@671.25-671.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc110280%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@670.22-670.26"
               'contract:
               'u8vector?
               'value:
               _%bstr110279%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr110307%_)
        (let ((_%enc110309%_ 'UTF-8))
          (bytes->string__% _%bstr110307%_ _%enc110309%_))))
    (define bytes->string
      (lambda _g116744_
        (let ((_g116745_ (let () (declare (not safe)) (##length _g116744_))))
          (cond ((let () (declare (not safe)) (##fx= _g116745_ 1))
                 (apply bytes->string__0 _g116744_))
                ((let () (declare (not safe)) (##fx= _g116745_ 2))
                 (apply bytes->string__% _g116744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g116744_))))))
    (define __string->bytes__%
      (lambda (_%str110197%_ _%enc110198%_)
        (let* ((_%str110201%_ _%str110197%_) (_%enc110209%_ _%enc110198%_))
          (if (eq? _%enc110209%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str110201%_))
              (let* ((_%str110218%_ _%str110201%_)
                     (_%start110221%_ '0)
                     (_%end110224%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str110201%_)))
                     (_%enc110227%_ _%enc110209%_)
                     (_%str110232%_ _%str110218%_))
                (if (nonnegative-fixnum? _%start110221%_)
                    (let ((_%start110248%_ _%start110221%_))
                      (if (nonnegative-fixnum? _%end110224%_)
                          (let ((_%end110258%_ _%end110224%_))
                            (__substring->bytes__%
                             _%str110232%_
                             _%start110248%_
                             _%end110258%_
                             _%enc110227%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end110224%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start110221%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str110271%_)
        (let ((_%enc110273%_ 'UTF-8))
          (__string->bytes__% _%str110271%_ _%enc110273%_))))
    (define __string->bytes
      (lambda _g116746_
        (let ((_g116747_ (let () (declare (not safe)) (##length _g116746_))))
          (cond ((let () (declare (not safe)) (##fx= _g116747_ 1))
                 (apply __string->bytes__0 _g116746_))
                ((let () (declare (not safe)) (##fx= _g116747_ 2))
                 (apply __string->bytes__% _g116746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g116746_))))))
    (define string->bytes__%
      (lambda (_%str110161%_ _%enc110162%_)
        (if (string? _%str110161%_)
            (let ((_%str110166%_ _%str110161%_))
              (if (symbol? _%enc110162%_)
                  (let ((_%enc110176%_ _%enc110162%_))
                    (__string->bytes__% _%str110166%_ _%enc110176%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@683.25-683.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc110162%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@682.22-682.25"
               'contract:
               'string?
               'value:
               _%str110161%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str110189%_)
        (let ((_%enc110191%_ 'UTF-8))
          (string->bytes__% _%str110189%_ _%enc110191%_))))
    (define string->bytes
      (lambda _g116748_
        (let ((_g116749_ (let () (declare (not safe)) (##length _g116748_))))
          (cond ((let () (declare (not safe)) (##fx= _g116749_ 1))
                 (apply string->bytes__0 _g116748_))
                ((let () (declare (not safe)) (##fx= _g116749_ 2))
                 (apply string->bytes__% _g116748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g116748_))))))
    (define __substring->bytes__%
      (lambda (_%str110113%_ _%start110114%_ _%end110115%_ _%enc110116%_)
        (let* ((_%str110119%_ _%str110113%_)
               (_%start110127%_ _%start110114%_)
               (_%end110135%_ _%end110115%_))
          (if (eq? _%enc110116%_ 'UTF-8)
              (string->utf8 _%str110119%_ _%start110127%_ _%end110135%_)
              (let ((_%out110144%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc110116%_ '())))))
                (write-substring
                 _%str110119%_
                 _%start110127%_
                 _%end110135%_
                 _%out110144%_)
                (get-output-u8vector _%out110144%_))))))
    (define __substring->bytes__0
      (lambda (_%str110149%_ _%start110150%_ _%end110151%_)
        (let ((_%enc110153%_ 'UTF-8))
          (__substring->bytes__%
           _%str110149%_
           _%start110150%_
           _%end110151%_
           _%enc110153%_))))
    (define __substring->bytes
      (lambda _g116750_
        (let ((_g116751_ (let () (declare (not safe)) (##length _g116750_))))
          (cond ((let () (declare (not safe)) (##fx= _g116751_ 3))
                 (apply __substring->bytes__0 _g116750_))
                ((let () (declare (not safe)) (##fx= _g116751_ 4))
                 (apply __substring->bytes__% _g116750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g116750_))))))
    (define substring->bytes__%
      (lambda (_%str110061%_ _%start110062%_ _%end110063%_ _%enc110064%_)
        (if (string? _%str110061%_)
            (let ((_%str110068%_ _%str110061%_))
              (if (nonnegative-fixnum? _%start110062%_)
                  (let ((_%start110078%_ _%start110062%_))
                    (if (nonnegative-fixnum? _%end110063%_)
                        (let ((_%end110088%_ _%end110063%_))
                          (__substring->bytes__%
                           _%str110068%_
                           _%start110078%_
                           _%end110088%_
                           _%enc110064%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@691.25-691.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end110063%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@690.25-690.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start110062%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@689.25-689.28"
               'contract:
               'string?
               'value:
               _%str110061%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str110101%_ _%start110102%_ _%end110103%_)
        (let ((_%enc110105%_ 'UTF-8))
          (substring->bytes__%
           _%str110101%_
           _%start110102%_
           _%end110103%_
           _%enc110105%_))))
    (define substring->bytes
      (lambda _g116752_
        (let ((_g116753_ (let () (declare (not safe)) (##length _g116752_))))
          (cond ((let () (declare (not safe)) (##fx= _g116753_ 3))
                 (apply substring->bytes__0 _g116752_))
                ((let () (declare (not safe)) (##fx= _g116753_ 4))
                 (apply substring->bytes__% _g116752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g116752_))))))
    (define __string-empty?
      (lambda (_%str110048%_)
        (let* ((_%str110051%_ _%str110048%_)
               (__tmp116754
                (let () (declare (not safe)) (##string-length _%str110051%_))))
          (declare (not safe))
          (##fxzero? __tmp116754))))
    (define string-empty?
      (lambda (_%str110034%_)
        (if (string? _%str110034%_)
            (let ((_%str110038%_ _%str110034%_))
              (__string-empty? _%str110038%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@700.22-700.25"
               'contract:
               'string?
               'value:
               _%str110034%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str109974%_ _%char109975%_ _%start109976%_)
        (let* ((_%str109979%_ _%str109974%_)
               (_%char109987%_ _%char109975%_)
               (_%start109995%_ _%start109976%_)
               (_%len110004%_
                (let () (declare (not safe)) (##string-length _%str109979%_))))
          (let _%lp110006%_ ((_%k110008%_ _%start109995%_))
            (let ((_%k110010%_ _%k110008%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k110010%_ _%len110004%_))
                  (if (eq? _%char109987%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str109979%_ _%k110010%_)))
                      _%k110010%_
                      (_%lp110006%_
                       (let () (declare (not safe)) (##fx+ _%k110010%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str110025%_ _%char110026%_)
        (let ((_%start110028%_ '0))
          (__string-index__% _%str110025%_ _%char110026%_ _%start110028%_))))
    (define __string-index
      (lambda _g116755_
        (let ((_g116756_ (let () (declare (not safe)) (##length _g116755_))))
          (cond ((let () (declare (not safe)) (##fx= _g116756_ 2))
                 (apply __string-index__0 _g116755_))
                ((let () (declare (not safe)) (##fx= _g116756_ 3))
                 (apply __string-index__% _g116755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g116755_))))))
    (define string-index__%
      (lambda (_%str109925%_ _%char109926%_ _%start109927%_)
        (if (string? _%str109925%_)
            (let ((_%str109931%_ _%str109925%_))
              (if (char? _%char109926%_)
                  (let ((_%char109941%_ _%char109926%_))
                    (if (nonnegative-fixnum? _%start109927%_)
                        (let ((_%start109951%_ _%start109927%_))
                          (__string-index__%
                           _%str109931%_
                           _%char109941%_
                           _%start109951%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@706.21-706.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start109927%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@705.21-705.25"
                     'contract:
                     'char?
                     'value:
                     _%char109926%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@704.21-704.24"
               'contract:
               'string?
               'value:
               _%str109925%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str109964%_ _%char109965%_)
        (let ((_%start109967%_ '0))
          (string-index__% _%str109964%_ _%char109965%_ _%start109967%_))))
    (define string-index
      (lambda _g116757_
        (let ((_g116758_ (let () (declare (not safe)) (##length _g116757_))))
          (cond ((let () (declare (not safe)) (##fx= _g116758_ 2))
                 (apply string-index__0 _g116757_))
                ((let () (declare (not safe)) (##fx= _g116758_ 3))
                 (apply string-index__% _g116757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g116757_))))))
    (define __string-rindex__%
      (lambda (_%str109867%_ _%char109868%_ _%start109869%_)
        (let* ((_%str109872%_ _%str109867%_)
               (_%char109880%_ _%char109868%_)
               (_%len109889%_
                (let () (declare (not safe)) (##string-length _%str109872%_)))
               (_%start109891%_
                (if (fixnum? _%start109869%_)
                    _%start109869%_
                    (let () (declare (not safe)) (##fx- _%len109889%_ '1)))))
          (let _%lp109894%_ ((_%k109896%_ _%start109891%_))
            (let ((_%k109898%_ _%k109896%_))
              (if (let () (declare (not safe)) (##fx>= _%k109898%_ '0))
                  (if (eq? _%char109880%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str109872%_ _%k109898%_)))
                      _%k109898%_
                      (_%lp109894%_
                       (let () (declare (not safe)) (##fx- _%k109898%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str109915%_ _%char109916%_)
        (let ((_%start109918%_ '#f))
          (__string-rindex__% _%str109915%_ _%char109916%_ _%start109918%_))))
    (define __string-rindex
      (lambda _g116759_
        (let ((_g116760_ (let () (declare (not safe)) (##length _g116759_))))
          (cond ((let () (declare (not safe)) (##fx= _g116760_ 2))
                 (apply __string-rindex__0 _g116759_))
                ((let () (declare (not safe)) (##fx= _g116760_ 3))
                 (apply __string-rindex__% _g116759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g116759_))))))
    (define string-rindex__%
      (lambda (_%str109828%_ _%char109829%_ _%start109830%_)
        (if (string? _%str109828%_)
            (let ((_%str109834%_ _%str109828%_))
              (if (char? _%char109829%_)
                  (let ((_%char109844%_ _%char109829%_))
                    (__string-rindex__%
                     _%str109834%_
                     _%char109844%_
                     _%start109830%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@716.25-716.29"
                     'contract:
                     'char?
                     'value:
                     _%char109829%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@715.22-715.25"
               'contract:
               'string?
               'value:
               _%str109828%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str109857%_ _%char109858%_)
        (let ((_%start109860%_ '#f))
          (string-rindex__% _%str109857%_ _%char109858%_ _%start109860%_))))
    (define string-rindex
      (lambda _g116761_
        (let ((_g116762_ (let () (declare (not safe)) (##length _g116761_))))
          (cond ((let () (declare (not safe)) (##fx= _g116762_ 2))
                 (apply string-rindex__0 _g116761_))
                ((let () (declare (not safe)) (##fx= _g116762_ 3))
                 (apply string-rindex__% _g116761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g116761_))))))
    (define __string-split
      (lambda (_%str109725%_ _%char109726%_)
        (let* ((_%str109729%_ _%str109725%_)
               (_%char109737%_ _%char109726%_)
               (_%len109746%_
                (let () (declare (not safe)) (##string-length _%str109729%_))))
          (let _%lp109748%_ ((_%start109750%_ '0) (_%r109751%_ '()))
            (let* ((_%start109754%_ _%start109750%_)
                   (_%$e109812%_
                    (let* ((_%str109767%_ _%str109729%_)
                           (_%char109770%_ _%char109737%_)
                           (_%start109773%_ _%start109754%_)
                           (_%str109778%_ _%str109767%_)
                           (_%char109792%_ _%char109770%_))
                      (if (nonnegative-fixnum? _%start109773%_)
                          (let ((_%start109802%_ _%start109773%_))
                            (__string-index__%
                             _%str109778%_
                             _%char109792%_
                             _%start109802%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start109773%_)
                            '#!void)))))
              (if _%$e109812%_
                  (let ((_%end109817%_ _%$e109812%_))
                    (_%lp109748%_
                     (let () (declare (not safe)) (##fx+ _%end109817%_ '1))
                     (cons (let ()
                             (declare (not safe))
                             (##substring
                              _%str109729%_
                              _%start109754%_
                              _%end109817%_))
                           _%r109751%_)))
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start109754%_ _%len109746%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str109729%_
                                _%start109754%_
                                _%len109746%_)))
                       _%r109751%_)
                      (reverse! _%r109751%_))))))))
    (define string-split
      (lambda (_%str109700%_ _%char109701%_)
        (if (string? _%str109700%_)
            (let ((_%str109705%_ _%str109700%_))
              (if (char? _%char109701%_)
                  (let ((_%char109715%_ _%char109701%_))
                    (__string-split _%str109705%_ _%char109715%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@727.37-727.41"
                     'contract:
                     'char?
                     'value:
                     _%char109701%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@727.21-727.24"
               'contract:
               'string?
               'value:
               _%str109700%_)
              '#!void))))
    (define string-join
      (lambda (_%strs109550%_ _%join109551%_)
        (letrec ((_%join-length109554%_
                  (lambda (_%strs109638%_ _%jlen109639%_)
                    (let _%lp109641%_ ((_%rest109643%_ _%strs109638%_)
                                       (_%len109644%_ '0))
                      (let* ((_%len109646%_ _%len109644%_)
                             (_%$%rest109654109662%_ _%rest109643%_)
                             (_%$%else109656109670%_ (lambda () '0))
                             (_%$%K109658109688%_
                              (lambda (_%rest109673%_ _%hd109674%_)
                                (if (string? _%hd109674%_)
                                    (let ((_%hd109676%_ _%hd109674%_))
                                      (if (pair? _%rest109673%_)
                                          (_%lp109641%_
                                           _%rest109673%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd109676%_))
                                                _%jlen109639%_
                                                _%len109646%_))
                                          (let ((__tmp116763
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd109676%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp116763
                                                   _%len109646%_))))
                                    (error '"expected string" _%hd109674%_)))))
                        (if (pair? _%$%rest109654109662%_)
                            (let ((_%$%hd109659109691%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest109654109662%_)))
                                  (_%$%tl109660109693%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest109654109662%_))))
                              (let* ((_%hd109696%_ _%$%hd109659109691%_)
                                     (_%rest109698%_ _%$%tl109660109693%_))
                                (_%$%K109658109688%_
                                 _%rest109698%_
                                 _%hd109696%_)))
                            (_%$%else109656109670%_)))))))
          (let* ((_%join109559%_
                  (if (char? _%join109551%_)
                      (let () (declare (not safe)) (##string _%join109551%_))
                      (if (string? _%join109551%_)
                          _%join109551%_
                          (error '"expected string or char" _%join109551%_))))
                 (_%jlen109561%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join109559%_)))
                 (_%olen109563%_
                  (_%join-length109554%_ _%strs109550%_ _%jlen109561%_))
                 (_%ostr109565%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen109563%_))))
            (let _%lp109568%_ ((_%rest109570%_ _%strs109550%_)
                               (_%k109571%_ '0))
              (let* ((_%k109574%_ _%k109571%_)
                     (_%$%rest109590109598%_ _%rest109570%_)
                     (_%$%else109592109606%_ (lambda () '""))
                     (_%$%K109594109626%_
                      (lambda (_%rest109609%_ _%hd109610%_)
                        (let* ((_%hd109612%_ _%hd109610%_)
                               (_%hdlen109624%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd109612%_))))
                          (if (pair? _%rest109609%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd109612%_
                                   '0
                                   _%hdlen109624%_
                                   _%ostr109565%_
                                   _%k109574%_))
                                (let ((__tmp116764
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k109574%_ _%hdlen109624%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join109559%_
                                   '0
                                   _%jlen109561%_
                                   _%ostr109565%_
                                   __tmp116764))
                                (_%lp109568%_
                                 _%rest109609%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k109574%_
                                          _%hdlen109624%_
                                          _%jlen109561%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd109612%_
                                   '0
                                   _%hdlen109624%_
                                   _%ostr109565%_
                                   _%k109574%_))
                                _%ostr109565%_))))))
                (if (pair? _%$%rest109590109598%_)
                    (let ((_%$%hd109595109629%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest109590109598%_)))
                          (_%$%tl109596109631%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest109590109598%_))))
                      (let* ((_%hd109634%_ _%$%hd109595109629%_)
                             (_%rest109636%_ _%$%tl109596109631%_))
                        (_%$%K109594109626%_ _%rest109636%_ _%hd109634%_)))
                    (_%$%else109592109606%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes109490%_ _%port109491%_ _%start109492%_ _%end109493%_)
        (let* ((_%bytes109496%_ _%bytes109490%_)
               (_%port109504%_ _%port109491%_)
               (_%start109512%_ _%start109492%_)
               (_%end109520%_ _%end109493%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes109496%_
           _%start109512%_
           _%end109520%_
           _%port109504%_))))
    (define __read-u8vector__0
      (lambda (_%bytes109532%_ _%port109533%_)
        (let* ((_%start109535%_ '0)
               (_%end109537%_ (u8vector-length _%bytes109532%_)))
          (__read-u8vector__%
           _%bytes109532%_
           _%port109533%_
           _%start109535%_
           _%end109537%_))))
    (define __read-u8vector__1
      (lambda (_%bytes109539%_ _%port109540%_ _%start109541%_)
        (let ((_%end109543%_ (u8vector-length _%bytes109539%_)))
          (__read-u8vector__%
           _%bytes109539%_
           _%port109540%_
           _%start109541%_
           _%end109543%_))))
    (define __read-u8vector
      (lambda _g116765_
        (let ((_g116766_ (let () (declare (not safe)) (##length _g116765_))))
          (cond ((let () (declare (not safe)) (##fx= _g116766_ 2))
                 (apply __read-u8vector__0 _g116765_))
                ((let () (declare (not safe)) (##fx= _g116766_ 3))
                 (apply __read-u8vector__1 _g116765_))
                ((let () (declare (not safe)) (##fx= _g116766_ 4))
                 (apply __read-u8vector__% _g116765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g116765_))))))
    (define read-u8vector__%
      (lambda (_%bytes109415%_ _%port109416%_ _%start109417%_ _%end109418%_)
        (if (u8vector? _%bytes109415%_)
            (let ((_%bytes109422%_ _%bytes109415%_))
              (if (input-port? _%port109416%_)
                  (let ((_%port109432%_ _%port109416%_))
                    (if (and (fixnum? _%start109417%_)
                             (let ()
                               (declare (not safe))
                               (##fx>= _%start109417%_ '0))
                             (let ((__tmp116767
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes109422%_))))
                               (declare (not safe))
                               (##fx< _%start109417%_ __tmp116767)))
                        (let ((_%start109445%_ _%start109417%_))
                          (if (and (fixnum? _%end109418%_)
                                   (let ((__tmp116768
                                          (let ()
                                            (declare (not safe))
                                            (##u8vector-length
                                             _%bytes109422%_))))
                                     (declare (not safe))
                                     (##fx<= _%start109445%_
                                             _%end109418%_
                                             __tmp116768)))
                              (let ((_%end109458%_ _%end109418%_))
                                (__read-u8vector__%
                                 _%bytes109422%_
                                 _%port109432%_
                                 _%start109445%_
                                 _%end109458%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@794.22-794.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end109418%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@792.22-792.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start109417%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@791.22-791.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port109416%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@790.22-790.27"
               'contract:
               'u8vector?
               'value:
               _%bytes109415%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes109471%_ _%port109472%_)
        (let* ((_%start109474%_ '0)
               (_%end109476%_ (u8vector-length _%bytes109471%_)))
          (read-u8vector__%
           _%bytes109471%_
           _%port109472%_
           _%start109474%_
           _%end109476%_))))
    (define read-u8vector__1
      (lambda (_%bytes109478%_ _%port109479%_ _%start109480%_)
        (let ((_%end109482%_ (u8vector-length _%bytes109478%_)))
          (read-u8vector__%
           _%bytes109478%_
           _%port109479%_
           _%start109480%_
           _%end109482%_))))
    (define read-u8vector
      (lambda _g116769_
        (let ((_g116770_ (let () (declare (not safe)) (##length _g116769_))))
          (cond ((let () (declare (not safe)) (##fx= _g116770_ 2))
                 (apply read-u8vector__0 _g116769_))
                ((let () (declare (not safe)) (##fx= _g116770_ 3))
                 (apply read-u8vector__1 _g116769_))
                ((let () (declare (not safe)) (##fx= _g116770_ 4))
                 (apply read-u8vector__% _g116769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g116769_))))))
    (define __write-u8vector__%
      (lambda (_%bytes109354%_ _%port109355%_ _%start109356%_ _%end109357%_)
        (let* ((_%bytes109360%_ _%bytes109354%_)
               (_%port109368%_ _%port109355%_)
               (_%start109376%_ _%start109356%_)
               (_%end109384%_ _%end109357%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes109360%_
           _%start109376%_
           _%end109384%_
           _%port109368%_))))
    (define __write-u8vector__0
      (lambda (_%bytes109396%_ _%port109397%_)
        (let* ((_%start109399%_ '0)
               (_%end109401%_ (u8vector-length _%bytes109396%_)))
          (__write-u8vector__%
           _%bytes109396%_
           _%port109397%_
           _%start109399%_
           _%end109401%_))))
    (define __write-u8vector__1
      (lambda (_%bytes109403%_ _%port109404%_ _%start109405%_)
        (let ((_%end109407%_ (u8vector-length _%bytes109403%_)))
          (__write-u8vector__%
           _%bytes109403%_
           _%port109404%_
           _%start109405%_
           _%end109407%_))))
    (define __write-u8vector
      (lambda _g116771_
        (let ((_g116772_ (let () (declare (not safe)) (##length _g116771_))))
          (cond ((let () (declare (not safe)) (##fx= _g116772_ 2))
                 (apply __write-u8vector__0 _g116771_))
                ((let () (declare (not safe)) (##fx= _g116772_ 3))
                 (apply __write-u8vector__1 _g116771_))
                ((let () (declare (not safe)) (##fx= _g116772_ 4))
                 (apply __write-u8vector__% _g116771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g116771_))))))
    (define write-u8vector__%
      (lambda (_%bytes109284%_ _%port109285%_ _%start109286%_ _%end109287%_)
        (if (u8vector? _%bytes109284%_)
            (let ((_%bytes109291%_ _%bytes109284%_))
              (if (output-port? _%port109285%_)
                  (let* ((_%port109301%_ _%port109285%_)
                         (_%start109310%_ _%start109286%_))
                    (if (and (fixnum? _%end109287%_)
                             (let ((__tmp116773
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes109291%_))))
                               (declare (not safe))
                               (##fx<= _%start109310%_
                                       _%end109287%_
                                       __tmp116773)))
                        (let ((_%end109322%_ _%end109287%_))
                          (__write-u8vector__%
                           _%bytes109291%_
                           _%port109301%_
                           _%start109310%_
                           _%end109322%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@803.23-803.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end109287%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@801.23-801.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port109285%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@800.23-800.28"
               'contract:
               'u8vector?
               'value:
               _%bytes109284%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes109335%_ _%port109336%_)
        (let* ((_%start109338%_ '0)
               (_%end109340%_ (u8vector-length _%bytes109335%_)))
          (write-u8vector__%
           _%bytes109335%_
           _%port109336%_
           _%start109338%_
           _%end109340%_))))
    (define write-u8vector__1
      (lambda (_%bytes109342%_ _%port109343%_ _%start109344%_)
        (let ((_%end109346%_ (u8vector-length _%bytes109342%_)))
          (write-u8vector__%
           _%bytes109342%_
           _%port109343%_
           _%start109344%_
           _%end109346%_))))
    (define write-u8vector
      (lambda _g116774_
        (let ((_g116775_ (let () (declare (not safe)) (##length _g116774_))))
          (cond ((let () (declare (not safe)) (##fx= _g116775_ 2))
                 (apply write-u8vector__0 _g116774_))
                ((let () (declare (not safe)) (##fx= _g116775_ 3))
                 (apply write-u8vector__1 _g116774_))
                ((let () (declare (not safe)) (##fx= _g116775_ 4))
                 (apply write-u8vector__% _g116774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g116774_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag109252%_
               _%dbg-exprs109253%_
               _%dbg-thunks109254%_
               _%expr109255%_
               _%thunk109256%_)
        (letrec ((_%o109258%_ (current-output-port))
                 (_%e109259%_ (current-error-port))
                 (_%p109260%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f109261%_
                  (lambda ()
                    (force-output _%o109258%_)
                    (force-output _%e109259%_)))
                 (_%d109262%_
                  (lambda (_%x109269%_) (display _%x109269%_ _%e109259%_)))
                 (_%w109263%_
                  (lambda (_%x109271%_) (_%p109260%_ _%x109271%_ _%e109259%_)))
                 (_%n109264%_ (lambda () (newline _%e109259%_)))
                 (_%v109265%_
                  (lambda (_%l109274%_)
                    (for-each
                     (lambda (_%x109276%_)
                       (_%d109262%_ '" ")
                       (_%w109263%_ _%x109276%_))
                     _%l109274%_)
                    (_%n109264%_)))
                 (_%x109266%_
                  (lambda (_%expr109278%_ _%thunk109279%_)
                    (_%f109261%_)
                    (_%d109262%_ '"  ")
                    (_%w109263%_ _%expr109278%_)
                    (_%d109262%_ '" =>")
                    (call-with-values
                     _%thunk109279%_
                     (lambda _%x109281%_
                       (_%v109265%_ _%x109281%_)
                       (_%f109261%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x109281%_)))))))
          (if _%tag109252%_
              (begin
                (if (eq? _%tag109252%_ '#!void)
                    '#!void
                    (begin
                      (_%f109261%_)
                      (_%d109262%_ _%tag109252%_)
                      (_%n109264%_)))
                (for-each _%x109266%_ _%dbg-exprs109253%_ _%dbg-thunks109254%_)
                (if _%thunk109256%_
                    (_%x109266%_ _%expr109255%_ _%thunk109256%_)
                    '#!void))
              (if _%thunk109256%_ (_%thunk109256%_) '#!void)))))))
