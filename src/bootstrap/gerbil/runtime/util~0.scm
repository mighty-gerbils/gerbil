(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1770513292)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args109301%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args109301%_))
          (newline))))
    (define display*
      (lambda _%args109298%_
        (let () (declare (not safe)) (##for-each display _%args109298%_))))
    (define __file-newer?
      (lambda (_%file1109089%_ _%file2109090%_)
        (let* ((_%file1109093%_ _%file1109089%_)
               (_%file2109101%_ _%file2109090%_))
          (letrec ((_%__modification-time109245%_
                    (lambda (_%file109286%_)
                      (let* ((_%file109289%_ _%file109286%_)
                             (__tmp112077
                              (let ((__tmp112078
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file109289%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp112078))))
                        (declare (not safe))
                        (##time->seconds __tmp112077))))
                   (_%modification-time109246%_
                    (lambda (_%file109274%_)
                      (let ((_%file109277%_ _%file109274%_))
                        (_%__modification-time109245%_ _%file109277%_)))))
            (let ((__tmp112080
                   (let* ((_%file109248%_ _%file1109093%_)
                          (_%file109252%_ _%file109248%_))
                     (_%__modification-time109245%_ _%file109252%_)))
                  (__tmp112079
                   (let* ((_%file109261%_ _%file2109101%_)
                          (_%file109265%_ _%file109261%_))
                     (_%__modification-time109245%_ _%file109265%_))))
              (declare (not safe))
              (##fl> __tmp112080 __tmp112079))))))
    (define file-newer?
      (lambda (_%file198675%_ _%file298676%_)
        (if (string? _%file198675%_)
            (let ((_%file198680%_ _%file198675%_))
              (if (string? _%file298676%_)
                  (let ((_%file298690%_ _%file298676%_))
                    (__file-newer? _%file198680%_ _%file298690%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@97.20-97.25"
                     'contract:
                     'string?
                     'value:
                     _%file298676%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@96.20-96.25"
               'contract:
               'string?
               'value:
               _%file198675%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir108809%_ _%perms108810%_)
        (let* ((_%dir108813%_ _%dir108809%_) (_%perms108821%_ _%perms108810%_))
          (letrec ((_%__create1108965%_
                    (lambda (_%path109064%_)
                      (let ((_%path109067%_ _%path109064%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path109067%_))
                            (if (eq? (file-type _%path109067%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path109067%_))
                            (if _%perms108821%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path109067%_
                                             (cons 'permissions:
                                                   (cons _%perms108821%_
                                                         '())))))
                                (create-directory _%path109067%_))))))
                   (_%create1108966%_
                    (lambda (_%path109052%_)
                      (let ((_%path109055%_ _%path109052%_))
                        (_%__create1108965%_ _%path109055%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir108813%_))
                '#!void
                (let _%lp108968%_ ((_%start108970%_ '0))
                  (let ((_%$e109017%_
                         (let* ((_%str108972%_ _%dir108813%_)
                                (_%char108975%_ '#\/)
                                (_%start108978%_ _%start108970%_)
                                (_%str108983%_ _%str108972%_)
                                (_%char108997%_ _%char108975%_))
                           (if (nonnegative-fixnum? _%start108978%_)
                               (let ((_%start109007%_ _%start108978%_))
                                 (__string-index__%
                                  _%str108983%_
                                  _%char108997%_
                                  _%start109007%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start108978%_)
                                 '#!void)))))
                    (if _%$e109017%_
                        ((lambda (_%x109020%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x109020%_ '0))
                               (let* ((_%path109022%_
                                       (substring
                                        _%dir108813%_
                                        '0
                                        _%x109020%_))
                                      (_%path109026%_ _%path109022%_))
                                 (_%__create1108965%_ _%path109026%_))
                               '#!void)
                           (_%lp108968%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x109020%_ '1))))
                         _%$e109017%_)
                        (let* ((_%path109038%_ _%dir108813%_)
                               (_%path109042%_ _%path109038%_))
                          (_%__create1108965%_ _%path109042%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir109082%_)
        (let ((_%perms109084%_ '493))
          (__create-directory*__% _%dir109082%_ _%perms109084%_))))
    (define __create-directory*
      (lambda _g112081_
        (let ((_g112082_ (let () (declare (not safe)) (##length _g112081_))))
          (cond ((let () (declare (not safe)) (##fx= _g112082_ 1))
                 (apply __create-directory*__0 _g112081_))
                ((let () (declare (not safe)) (##fx= _g112082_ 2))
                 (apply __create-directory*__% _g112081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g112081_))))))
    (define create-directory*__%
      (lambda (_%dir98821%_ _%perms98822%_)
        (if (string? _%dir98821%_)
            (let ((_%dir98826%_ _%dir98821%_))
              (if (fixnum? _%perms98822%_)
                  (let ((_%perms98836%_ _%perms98822%_))
                    (__create-directory*__% _%dir98826%_ _%perms98836%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@108.26-108.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms98822%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@107.26-107.29"
               'contract:
               'string?
               'value:
               _%dir98821%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir98849%_)
        (let ((_%perms98851%_ '493))
          (create-directory*__% _%dir98849%_ _%perms98851%_))))
    (define create-directory*
      (lambda _g112083_
        (let ((_g112084_ (let () (declare (not safe)) (##length _g112083_))))
          (cond ((let () (declare (not safe)) (##fx= _g112084_ 1))
                 (apply create-directory*__0 _g112083_))
                ((let () (declare (not safe)) (##fx= _g112084_ 2))
                 (apply create-directory*__% _g112083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g112083_))))))
    (define __move-file__%
      (lambda (_%src108752%_ _%dest108753%_ _%replace?108754%_)
        (let* ((_%src108757%_ _%src108752%_)
               (_%dest108765%_ _%dest108753%_)
               (_%replace?108773%_ _%replace?108754%_))
          (letrec ((_%force-move-it108782%_
                    (lambda ()
                      (let ((_%tmp108788%_
                             (if _%replace?108773%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest108765%_))
                                     (let ((__tmp112085
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest108765%_
                                        '"."
                                        __tmp112085))
                                     '#f)
                                 '#f)))
                        (if _%tmp108788%_
                            (rename-file _%dest108765%_ _%tmp108788%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e108790%_)
                           (if _%tmp108788%_
                               (rename-file _%tmp108788%_ _%dest108765%_ '#t)
                               '#!void)
                           (raise _%e108790%_))
                         (lambda ()
                           (let ((_%fi108793%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src108757%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi108793%_))
                                      'symbolic-link)
                                 (let ((__tmp112086
                                        (path-normalize _%src108757%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp112086
                                    _%dest108765%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src108757%_
                                    _%dest108765%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src108757%_))
                           (if _%tmp108788%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp108788%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e108784%_)
               (if (let () (declare (not safe)) (##file-exists? _%src108757%_))
                   (_%force-move-it108782%_)
                   (raise _%e108784%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src108757%_
                  _%dest108765%_
                  _%replace?108773%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src108799%_ _%dest108800%_)
        (let ((_%replace?108802%_ '#t))
          (__move-file__% _%src108799%_ _%dest108800%_ _%replace?108802%_))))
    (define __move-file
      (lambda _g112087_
        (let ((_g112088_ (let () (declare (not safe)) (##length _g112087_))))
          (cond ((let () (declare (not safe)) (##fx= _g112088_ 2))
                 (apply __move-file__0 _g112087_))
                ((let () (declare (not safe)) (##fx= _g112088_ 3))
                 (apply __move-file__% _g112087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g112087_))))))
    (define move-file__%
      (lambda (_%src98977%_ _%dest98978%_ _%replace?98979%_)
        (if (string? _%src98977%_)
            (let ((_%src98983%_ _%src98977%_))
              (if (string? _%dest98978%_)
                  (let ((_%dest98993%_ _%dest98978%_))
                    (if (boolean? _%replace?98979%_)
                        (let ((_%replace?99003%_ _%replace?98979%_))
                          (__move-file__%
                           _%src98983%_
                           _%dest98993%_
                           _%replace?99003%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@132.51-132.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?98979%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@132.34-132.38"
                     'contract:
                     'string?
                     'value:
                     _%dest98978%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@132.18-132.21"
               'contract:
               'string?
               'value:
               _%src98977%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src99016%_ _%dest99017%_)
        (let ((_%replace?99019%_ '#t))
          (move-file__% _%src99016%_ _%dest99017%_ _%replace?99019%_))))
    (define move-file
      (lambda _g112089_
        (let ((_g112090_ (let () (declare (not safe)) (##length _g112089_))))
          (cond ((let () (declare (not safe)) (##fx= _g112090_ 2))
                 (apply move-file__0 _g112089_))
                ((let () (declare (not safe)) (##fx= _g112090_ 3))
                 (apply move-file__% _g112089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g112089_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore108748%_ '#t))
    (define true? (lambda (_%obj108745%_) (eq? _%obj108745%_ '#t)))
    (define false (lambda _%ignore108742%_ '#f))
    (define void (lambda _%ignore108739%_ '#!void))
    (define void? (lambda (_%obj108736%_) (eq? _%obj108736%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj108733%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj108733%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj108730%_) (eq? _%obj108730%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj108727%_) (eq? _%obj108727%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj108724%_) (eq? _%obj108724%_ '#!optional)))
    (define immediate?
      (lambda (_%obj108721%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj108721%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj108718%_)
        (if (fixnum? _%obj108718%_)
            (let () (declare (not safe)) (##fx>= _%obj108718%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj108712%_)
        (let ((_%$e108715%_ (pair? _%obj108712%_)))
          (if _%$e108715%_ _%$e108715%_ (null? _%obj108712%_)))))
    (define values-count
      (lambda (_%obj108709%_)
        (if (let () (declare (not safe)) (##values? _%obj108709%_))
            (let () (declare (not safe)) (##values-length _%obj108709%_))
            '1)))
    (define __values-ref
      (lambda (_%obj108696%_ _%k108697%_)
        (let ((_%k108700%_ _%k108697%_))
          (if (let () (declare (not safe)) (##values? _%obj108696%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj108696%_ _%k108700%_))
              _%obj108696%_))))
    (define values-ref
      (lambda (_%obj99145%_ _%k99146%_)
        (if (fixnum? _%k99146%_)
            (let ((_%k99150%_ _%k99146%_))
              (__values-ref _%obj99145%_ _%k99150%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@266.23-266.24"
               'contract:
               'fixnum?
               'value:
               _%k99146%_)
              '#!void))))
    (define values->list
      (lambda (_%obj108693%_)
        (if (let () (declare (not safe)) (##values? _%obj108693%_))
            (let () (declare (not safe)) (##values->list _%obj108693%_))
            (list _%obj108693%_))))
    (define __foldl1
      (lambda (_%f108641%_ _%iv108642%_ _%lst108643%_)
        (let ((_%f108646%_ _%f108641%_))
          (let _%lp108655%_ ((_%rest108657%_ _%lst108643%_)
                             (_%r108658%_ _%iv108642%_))
            (let* ((_%rest108659108667%_ _%rest108657%_)
                   (_%else108661108675%_ (lambda () _%r108658%_))
                   (_%K108663108681%_
                    (lambda (_%rest108678%_ _%x108679%_)
                      (_%lp108655%_
                       _%rest108678%_
                       (let ()
                         (declare (not safe))
                         (_%f108646%_ _%x108679%_ _%r108658%_))))))
              (if (pair? _%rest108659108667%_)
                  (let ((_%hd108664108684%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest108659108667%_)))
                        (_%tl108665108686%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest108659108667%_))))
                    (let* ((_%x108689%_ _%hd108664108684%_)
                           (_%rest108691%_ _%tl108665108686%_))
                      (_%K108663108681%_ _%rest108691%_ _%x108689%_)))
                  (_%else108661108675%_)))))))
    (define foldl1
      (lambda (_%f99280%_ _%iv99281%_ _%lst99282%_)
        (if (procedure? _%f99280%_)
            (let ((_%f99286%_ _%f99280%_))
              (__foldl1 _%f99286%_ _%iv99281%_ _%lst99282%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@289.15-289.16"
               'contract:
               'procedure?
               'value:
               _%f99280%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f108554%_ _%iv108555%_ _%lst1108556%_ _%lst2108557%_)
        (let ((_%f108560%_ _%f108554%_))
          (let _%lp108569%_ ((_%rest1108571%_ _%lst1108556%_)
                             (_%rest2108572%_ _%lst2108557%_)
                             (_%r108573%_ _%iv108555%_))
            (let* ((_%rest1108574108582%_ _%rest1108571%_)
                   (_%else108576108590%_ (lambda () _%r108573%_))
                   (_%K108578108629%_
                    (lambda (_%rest1108593%_ _%x1108594%_)
                      (let* ((_%rest2108595108603%_ _%rest2108572%_)
                             (_%else108597108611%_ (lambda () _%r108573%_))
                             (_%K108599108617%_
                              (lambda (_%rest2108614%_ _%x2108615%_)
                                (_%lp108569%_
                                 _%rest1108593%_
                                 _%rest2108614%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f108560%_
                                    _%x1108594%_
                                    _%x2108615%_
                                    _%r108573%_))))))
                        (if (pair? _%rest2108595108603%_)
                            (let ((_%hd108600108620%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2108595108603%_)))
                                  (_%tl108601108622%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2108595108603%_))))
                              (let* ((_%x2108625%_ _%hd108600108620%_)
                                     (_%rest2108627%_ _%tl108601108622%_))
                                (_%K108599108617%_
                                 _%rest2108627%_
                                 _%x2108625%_)))
                            (_%else108597108611%_))))))
              (if (pair? _%rest1108574108582%_)
                  (let ((_%hd108579108632%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1108574108582%_)))
                        (_%tl108580108634%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1108574108582%_))))
                    (let* ((_%x1108637%_ _%hd108579108632%_)
                           (_%rest1108639%_ _%tl108580108634%_))
                      (_%K108578108629%_ _%rest1108639%_ _%x1108637%_)))
                  (_%else108576108590%_)))))))
    (define foldl2
      (lambda (_%f99416%_ _%iv99417%_ _%lst199418%_ _%lst299419%_)
        (if (procedure? _%f99416%_)
            (let ((_%f99423%_ _%f99416%_))
              (__foldl2 _%f99423%_ _%iv99417%_ _%lst199418%_ _%lst299419%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@296.15-296.16"
               'contract:
               'procedure?
               'value:
               _%f99416%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f108487%_ _%iv108488%_ _%lst108489%_)
        (let* ((_%f108491%_ _%f108487%_)
               (_%iv108494%_ _%iv108488%_)
               (_%lst108497%_ _%lst108489%_))
          (if (procedure? _%f108491%_)
              (let ((_%f108502%_ _%f108491%_))
                (__foldl1 _%f108502%_ _%iv108494%_ _%lst108497%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108491%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f108515%_ _%iv108516%_ _%lst1108517%_ _%lst2108518%_)
        (let* ((_%f108520%_ _%f108515%_)
               (_%iv108523%_ _%iv108516%_)
               (_%lst1108526%_ _%lst1108517%_)
               (_%lst2108529%_ _%lst2108518%_))
          (if (procedure? _%f108520%_)
              (let ((_%f108534%_ _%f108520%_))
                (__foldl2
                 _%f108534%_
                 _%iv108523%_
                 _%lst1108526%_
                 _%lst2108529%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108520%_)
                '#!void)))))
    (define foldl
      (lambda _g112091_
        (let ((_g112092_ (let () (declare (not safe)) (##length _g112091_))))
          (cond ((let () (declare (not safe)) (##fx= _g112092_ 3))
                 (apply foldl__0 _g112091_))
                ((let () (declare (not safe)) (##fx= _g112092_ 4))
                 (apply foldl__1 _g112091_))
                ((let () (declare (not safe)) (##fx>= _g112092_ 4))
                 (apply foldl* _g112091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g112091_))))))
    (define __foldl*
      (lambda (_%f108418%_ _%iv108419%_ . _%rest108420%_)
        (let ((_%f108423%_ _%f108418%_))
          (let _%recur108432%_ ((_%iv108434%_ _%iv108419%_)
                                (_%rest108435%_ _%rest108420%_))
            (if (let* ((_%f108437%_ pair?)
                       (_%lst108440%_ _%rest108435%_)
                       (_%f108445%_ _%f108437%_))
                  (__andmap1 _%f108445%_ _%lst108440%_))
                (_%recur108432%_
                 (let ((__tmp112093
                        (let* ((_%f108464%_
                                (lambda (_%xs108461%_ _%r108462%_)
                                  (cons (car _%xs108461%_) _%r108462%_)))
                               (_%iv108467%_ (list _%iv108434%_))
                               (_%lst108470%_ _%rest108435%_)
                               (_%f108475%_ _%f108464%_))
                          (__foldr1 _%f108475%_ _%iv108467%_ _%lst108470%_))))
                   (declare (not safe))
                   (##apply _%f108423%_ __tmp112093))
                 (map cdr _%rest108435%_))
                _%iv108434%_)))))
    (define foldl*
      (lambda (_%f99553%_ _%iv99554%_ . _%rest99555%_)
        (if (procedure? _%f99553%_)
            (let ((_%f99559%_ _%f99553%_))
              (declare (not safe))
              (##apply __foldl* _%f99559%_ _%iv99554%_ _%rest99555%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@314.15-314.16"
               'contract:
               'procedure?
               'value:
               _%f99553%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f108367%_ _%iv108368%_ _%lst108369%_)
        (let ((_%f108372%_ _%f108367%_))
          (let _%recur108381%_ ((_%rest108383%_ _%lst108369%_))
            (let* ((_%rest108384108392%_ _%rest108383%_)
                   (_%else108386108400%_ (lambda () _%iv108368%_))
                   (_%K108388108406%_
                    (lambda (_%rest108403%_ _%x108404%_)
                      (let ((__tmp112094 (_%recur108381%_ _%rest108403%_)))
                        (declare (not safe))
                        (_%f108372%_ _%x108404%_ __tmp112094)))))
              (if (pair? _%rest108384108392%_)
                  (let ((_%hd108389108409%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest108384108392%_)))
                        (_%tl108390108411%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest108384108392%_))))
                    (let* ((_%x108414%_ _%hd108389108409%_)
                           (_%rest108416%_ _%tl108390108411%_))
                      (_%K108388108406%_ _%rest108416%_ _%x108414%_)))
                  (_%else108386108400%_)))))))
    (define foldr1
      (lambda (_%f99689%_ _%iv99690%_ _%lst99691%_)
        (if (procedure? _%f99689%_)
            (let ((_%f99695%_ _%f99689%_))
              (__foldr1 _%f99695%_ _%iv99690%_ _%lst99691%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@324.15-324.16"
               'contract:
               'procedure?
               'value:
               _%f99689%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f108281%_ _%iv108282%_ _%lst1108283%_ _%lst2108284%_)
        (let ((_%f108287%_ _%f108281%_))
          (let _%recur108296%_ ((_%rest1108298%_ _%lst1108283%_)
                                (_%rest2108299%_ _%lst2108284%_))
            (let* ((_%rest1108300108308%_ _%rest1108298%_)
                   (_%else108302108316%_ (lambda () _%iv108282%_))
                   (_%K108304108355%_
                    (lambda (_%rest1108319%_ _%x1108320%_)
                      (let* ((_%rest2108321108329%_ _%rest2108299%_)
                             (_%else108323108337%_ (lambda () _%iv108282%_))
                             (_%K108325108343%_
                              (lambda (_%rest2108340%_ _%x2108341%_)
                                (let ((__tmp112095
                                       (_%recur108296%_
                                        _%rest1108319%_
                                        _%rest2108340%_)))
                                  (declare (not safe))
                                  (_%f108287%_
                                   _%x1108320%_
                                   _%x2108341%_
                                   __tmp112095)))))
                        (if (pair? _%rest2108321108329%_)
                            (let ((_%hd108326108346%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2108321108329%_)))
                                  (_%tl108327108348%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2108321108329%_))))
                              (let* ((_%x2108351%_ _%hd108326108346%_)
                                     (_%rest2108353%_ _%tl108327108348%_))
                                (_%K108325108343%_
                                 _%rest2108353%_
                                 _%x2108351%_)))
                            (_%else108323108337%_))))))
              (if (pair? _%rest1108300108308%_)
                  (let ((_%hd108305108358%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1108300108308%_)))
                        (_%tl108306108360%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1108300108308%_))))
                    (let* ((_%x1108363%_ _%hd108305108358%_)
                           (_%rest1108365%_ _%tl108306108360%_))
                      (_%K108304108355%_ _%rest1108365%_ _%x1108363%_)))
                  (_%else108302108316%_)))))))
    (define foldr2
      (lambda (_%f99825%_ _%iv99826%_ _%lst199827%_ _%lst299828%_)
        (if (procedure? _%f99825%_)
            (let ((_%f99832%_ _%f99825%_))
              (__foldr2 _%f99832%_ _%iv99826%_ _%lst199827%_ _%lst299828%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@331.15-331.16"
               'contract:
               'procedure?
               'value:
               _%f99825%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f108214%_ _%iv108215%_ _%lst108216%_)
        (let* ((_%f108218%_ _%f108214%_)
               (_%iv108221%_ _%iv108215%_)
               (_%lst108224%_ _%lst108216%_))
          (if (procedure? _%f108218%_)
              (let ((_%f108229%_ _%f108218%_))
                (__foldr1 _%f108229%_ _%iv108221%_ _%lst108224%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108218%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f108242%_ _%iv108243%_ _%lst1108244%_ _%lst2108245%_)
        (let* ((_%f108247%_ _%f108242%_)
               (_%iv108250%_ _%iv108243%_)
               (_%lst1108253%_ _%lst1108244%_)
               (_%lst2108256%_ _%lst2108245%_))
          (if (procedure? _%f108247%_)
              (let ((_%f108261%_ _%f108247%_))
                (__foldr2
                 _%f108261%_
                 _%iv108250%_
                 _%lst1108253%_
                 _%lst2108256%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108247%_)
                '#!void)))))
    (define foldr
      (lambda _g112096_
        (let ((_g112097_ (let () (declare (not safe)) (##length _g112096_))))
          (cond ((let () (declare (not safe)) (##fx= _g112097_ 3))
                 (apply foldr__0 _g112096_))
                ((let () (declare (not safe)) (##fx= _g112097_ 4))
                 (apply foldr__1 _g112096_))
                ((let () (declare (not safe)) (##fx>= _g112097_ 4))
                 (apply foldr* _g112096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g112096_))))))
    (define __foldr*
      (lambda (_%f108146%_ _%iv108147%_ . _%rest108148%_)
        (let ((_%f108151%_ _%f108146%_))
          (let _%recur108160%_ ((_%rest108162%_ _%rest108148%_))
            (if (let* ((_%f108164%_ pair?)
                       (_%lst108167%_ _%rest108162%_)
                       (_%f108172%_ _%f108164%_))
                  (__andmap1 _%f108172%_ _%lst108167%_))
                (let ((__tmp112098
                       (let* ((_%f108191%_
                               (lambda (_%xs108188%_ _%r108189%_)
                                 (cons (car _%xs108188%_) _%r108189%_)))
                              (_%iv108194%_
                               (list (_%recur108160%_
                                      (map cdr _%rest108162%_))))
                              (_%lst108197%_ _%rest108162%_)
                              (_%f108202%_ _%f108191%_))
                         (__foldr1 _%f108202%_ _%iv108194%_ _%lst108197%_))))
                  (declare (not safe))
                  (##apply _%f108151%_ __tmp112098))
                _%iv108147%_)))))
    (define foldr*
      (lambda (_%f99962%_ _%iv99963%_ . _%rest99964%_)
        (if (procedure? _%f99962%_)
            (let ((_%f99968%_ _%f99962%_))
              (declare (not safe))
              (##apply __foldr* _%f99968%_ _%iv99963%_ _%rest99964%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@349.15-349.16"
               'contract:
               'procedure?
               'value:
               _%f99962%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%l108033%_)
        (let* ((_%l108034108047%_ _%l108033%_)
               (_%E108038108051%_
                (lambda ()
                  (error '"No clause matching"
                         _%l108034108047%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K108043108136%_
                 (lambda (_%r108134%_) (remove-nulls! _%r108134%_)))
                (_%K108040108123%_
                 (lambda (_%r108063%_)
                   (let _%loop108065%_ ((_%l108067%_ _%l108033%_)
                                        (_%r108068%_ _%r108063%_))
                     (let* ((_%r108069108082%_ _%r108068%_)
                            (_%E108073108086%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r108069108082%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K108078108113%_
                              (lambda (_%rr108111%_)
                                (let ((__tmp112100 _%l108067%_)
                                      (__tmp112099
                                       (remove-nulls! _%rr108111%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp112100 __tmp112099))))
                             (_%K108075108100%_
                              (lambda (_%rr108098%_)
                                (_%loop108065%_ _%r108068%_ _%rr108098%_)))
                             (_%K108074108091%_ (lambda () '#!void)))
                         (if (pair? _%r108069108082%_)
                             (let ((_%tl108080108118%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r108069108082%_)))
                                   (_%hd108079108116%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r108069108082%_))))
                               (if (null? _%hd108079108116%_)
                                   (let ((_%rr108121%_ _%tl108080108118%_))
                                     (_%K108078108113%_ _%rr108121%_))
                                   (let ((_%rr108106%_ _%tl108080108118%_))
                                     (_%K108075108100%_ _%rr108106%_))))
                             '#!void))))
                   _%l108033%_))
                (_%K108039108056%_ (lambda () _%l108033%_)))
            (if (pair? _%l108034108047%_)
                (let ((_%tl108045108141%_
                       (let () (declare (not safe)) (##cdr _%l108034108047%_)))
                      (_%hd108044108139%_
                       (let ()
                         (declare (not safe))
                         (##car _%l108034108047%_))))
                  (if (null? _%hd108044108139%_)
                      (let ((_%r108144%_ _%tl108045108141%_))
                        (remove-nulls! _%r108144%_))
                      (let ((_%r108129%_ _%tl108045108141%_))
                        (_%K108040108123%_ _%r108129%_))))
                (_%K108039108056%_))))))
    (define append1!
      (lambda (_%l108018%_ _%x108019%_)
        (let ((_%l2108022%_ (cons _%x108019%_ '())))
          (if (pair? _%l108018%_)
              (let ((_%l108024%_ _%l108018%_))
                (let ((__tmp112101
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l108024%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp112101 _%l2108022%_))
                _%l108024%_)
              _%l2108022%_))))
    (define __append-reverse-until
      (lambda (_%pred107960%_ _%rhead107961%_ _%tail107962%_)
        (let ((_%pred107965%_ _%pred107960%_))
          (let _%loop107974%_ ((_%rhead107976%_ _%rhead107961%_)
                               (_%tail107977%_ _%tail107962%_))
            (let* ((_%rhead107979107988%_ _%rhead107976%_)
                   (_%E107982107992%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead107979107988%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K107986108015%_ (lambda () (values '() _%tail107977%_)))
                    (_%K107983107999%_
                     (lambda (_%r107996%_ _%a107997%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred107965%_ _%a107997%_))
                           (values _%rhead107976%_ _%tail107977%_)
                           (_%loop107974%_
                            _%r107996%_
                            (cons _%a107997%_ _%tail107977%_))))))
                (let ((_%try-match107981108011%_
                       (lambda ()
                         (if (pair? _%rhead107979107988%_)
                             (let ((_%tl107985108004%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead107979107988%_)))
                                   (_%hd107984108002%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead107979107988%_))))
                               (let ((_%a108007%_ _%hd107984108002%_)
                                     (_%r108009%_ _%tl107985108004%_))
                                 (_%K107983107999%_ _%r108009%_ _%a108007%_)))
                             (_%E107982107992%_)))))
                  (if (null? _%rhead107979107988%_)
                      (_%K107986108015%_)
                      (_%try-match107981108011%_)))))))))
    (define append-reverse-until
      (lambda (_%pred100098%_ _%rhead100099%_ _%tail100100%_)
        (if (procedure? _%pred100098%_)
            (let ((_%pred100104%_ _%pred100098%_))
              (__append-reverse-until
               _%pred100104%_
               _%rhead100099%_
               _%tail100100%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@389.29-389.33"
               'contract:
               'procedure?
               'value:
               _%pred100098%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f107909%_ _%lst107910%_)
        (let ((_%f107913%_ _%f107909%_))
          (let _%lp107922%_ ((_%rest107924%_ _%lst107910%_))
            (let* ((_%rest107926107934%_ _%rest107924%_)
                   (_%else107928107942%_ (lambda () '#t))
                   (_%K107930107948%_
                    (lambda (_%rest107945%_ _%x107946%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f107913%_ _%x107946%_))
                          (_%lp107922%_ _%rest107945%_)
                          '#f))))
              (if (pair? _%rest107926107934%_)
                  (let ((_%hd107931107951%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest107926107934%_)))
                        (_%tl107932107953%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest107926107934%_))))
                    (let* ((_%x107956%_ _%hd107931107951%_)
                           (_%rest107958%_ _%tl107932107953%_))
                      (_%K107930107948%_ _%rest107958%_ _%x107956%_)))
                  (_%else107928107942%_)))))))
    (define andmap1
      (lambda (_%f100234%_ _%lst100235%_)
        (if (procedure? _%f100234%_)
            (let ((_%f100239%_ _%f100234%_))
              (__andmap1 _%f100239%_ _%lst100235%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@400.16-400.17"
               'contract:
               'procedure?
               'value:
               _%f100234%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f107823%_ _%lst1107824%_ _%lst2107825%_)
        (let ((_%f107828%_ _%f107823%_))
          (let _%lp107837%_ ((_%rest1107839%_ _%lst1107824%_)
                             (_%rest2107840%_ _%lst2107825%_))
            (let* ((_%rest1107842107850%_ _%rest1107839%_)
                   (_%else107844107858%_ (lambda () '#t))
                   (_%K107846107897%_
                    (lambda (_%rest1107861%_ _%x1107862%_)
                      (let* ((_%rest2107863107871%_ _%rest2107840%_)
                             (_%else107865107879%_ (lambda () '#t))
                             (_%K107867107885%_
                              (lambda (_%rest2107882%_ _%x2107883%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f107828%_ _%x1107862%_ _%x2107883%_))
                                    (_%lp107837%_
                                     _%rest1107861%_
                                     _%rest2107882%_)
                                    '#f))))
                        (if (pair? _%rest2107863107871%_)
                            (let ((_%hd107868107888%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2107863107871%_)))
                                  (_%tl107869107890%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2107863107871%_))))
                              (let* ((_%x2107893%_ _%hd107868107888%_)
                                     (_%rest2107895%_ _%tl107869107890%_))
                                (_%K107867107885%_
                                 _%rest2107895%_
                                 _%x2107893%_)))
                            (_%else107865107879%_))))))
              (if (pair? _%rest1107842107850%_)
                  (let ((_%hd107847107900%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1107842107850%_)))
                        (_%tl107848107902%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1107842107850%_))))
                    (let* ((_%x1107905%_ _%hd107847107900%_)
                           (_%rest1107907%_ _%tl107848107902%_))
                      (_%K107846107897%_ _%rest1107907%_ _%x1107905%_)))
                  (_%else107844107858%_)))))))
    (define andmap2
      (lambda (_%f100369%_ _%lst1100370%_ _%lst2100371%_)
        (if (procedure? _%f100369%_)
            (let ((_%f100375%_ _%f100369%_))
              (__andmap2 _%f100375%_ _%lst1100370%_ _%lst2100371%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@409.16-409.17"
               'contract:
               'procedure?
               'value:
               _%f100369%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f107767%_ _%lst107768%_)
        (let* ((_%f107770%_ _%f107767%_) (_%lst107773%_ _%lst107768%_))
          (if (procedure? _%f107770%_)
              (let ((_%f107778%_ _%f107770%_))
                (__andmap1 _%f107778%_ _%lst107773%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107770%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f107790%_ _%lst1107791%_ _%lst2107792%_)
        (let* ((_%f107794%_ _%f107790%_)
               (_%lst1107797%_ _%lst1107791%_)
               (_%lst2107800%_ _%lst2107792%_))
          (if (procedure? _%f107794%_)
              (let ((_%f107805%_ _%f107794%_))
                (__andmap2 _%f107805%_ _%lst1107797%_ _%lst2107800%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107794%_)
                '#!void)))))
    (define andmap
      (lambda _g112102_
        (let ((_g112103_ (let () (declare (not safe)) (##length _g112102_))))
          (cond ((let () (declare (not safe)) (##fx= _g112103_ 2))
                 (apply andmap__0 _g112102_))
                ((let () (declare (not safe)) (##fx= _g112103_ 3))
                 (apply andmap__1 _g112102_))
                ((let () (declare (not safe)) (##fx>= _g112103_ 3))
                 (apply andmap* _g112102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g112102_))))))
    (define __andmap*
      (lambda (_%f107724%_ . _%rest107725%_)
        (let ((_%f107728%_ _%f107724%_))
          (let _%recur107737%_ ((_%rest107739%_ _%rest107725%_))
            (if (let* ((_%f107742%_ pair?)
                       (_%lst107745%_ _%rest107739%_)
                       (_%f107750%_ _%f107742%_))
                  (__andmap1 _%f107750%_ _%lst107745%_))
                (if (let ((__tmp112104 (map car _%rest107739%_)))
                      (declare (not safe))
                      (##apply _%f107728%_ __tmp112104))
                    (_%recur107737%_ (map cdr _%rest107739%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f100505%_ . _%rest100506%_)
        (if (procedure? _%f100505%_)
            (let ((_%f100510%_ _%f100505%_))
              (declare (not safe))
              (##apply __andmap* _%f100510%_ _%rest100506%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@429.16-429.17"
               'contract:
               'procedure?
               'value:
               _%f100505%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f107671%_ _%lst107672%_)
        (let ((_%f107675%_ _%f107671%_))
          (let _%lp107684%_ ((_%rest107686%_ _%lst107672%_))
            (let* ((_%rest107687107695%_ _%rest107686%_)
                   (_%else107689107703%_ (lambda () '#f))
                   (_%K107691107712%_
                    (lambda (_%rest107706%_ _%x107707%_)
                      (let ((_%$e107709%_
                             (let ()
                               (declare (not safe))
                               (_%f107675%_ _%x107707%_))))
                        (if _%$e107709%_
                            _%$e107709%_
                            (_%lp107684%_ _%rest107706%_))))))
              (if (pair? _%rest107687107695%_)
                  (let ((_%hd107692107715%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest107687107695%_)))
                        (_%tl107693107717%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest107687107695%_))))
                    (let* ((_%x107720%_ _%hd107692107715%_)
                           (_%rest107722%_ _%tl107693107717%_))
                      (_%K107691107712%_ _%rest107722%_ _%x107720%_)))
                  (_%else107689107703%_)))))))
    (define ormap1
      (lambda (_%f100640%_ _%lst100641%_)
        (if (procedure? _%f100640%_)
            (let ((_%f100645%_ _%f100640%_))
              (__ormap1 _%f100645%_ _%lst100641%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.15-438.16"
               'contract:
               'procedure?
               'value:
               _%f100640%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f107583%_ _%lst1107584%_ _%lst2107585%_)
        (let ((_%f107588%_ _%f107583%_))
          (let _%lp107597%_ ((_%rest1107599%_ _%lst1107584%_)
                             (_%rest2107600%_ _%lst2107585%_))
            (let* ((_%rest1107601107609%_ _%rest1107599%_)
                   (_%else107603107617%_ (lambda () '#f))
                   (_%K107605107659%_
                    (lambda (_%rest1107620%_ _%x1107621%_)
                      (let* ((_%rest2107622107630%_ _%rest2107600%_)
                             (_%else107624107638%_ (lambda () '#f))
                             (_%K107626107647%_
                              (lambda (_%rest2107641%_ _%x2107642%_)
                                (let ((_%$e107644%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f107588%_
                                          _%x1107621%_
                                          _%x2107642%_))))
                                  (if _%$e107644%_
                                      _%$e107644%_
                                      (_%lp107597%_
                                       _%rest1107620%_
                                       _%rest2107641%_))))))
                        (if (pair? _%rest2107622107630%_)
                            (let ((_%hd107627107650%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2107622107630%_)))
                                  (_%tl107628107652%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2107622107630%_))))
                              (let* ((_%x2107655%_ _%hd107627107650%_)
                                     (_%rest2107657%_ _%tl107628107652%_))
                                (_%K107626107647%_
                                 _%rest2107657%_
                                 _%x2107655%_)))
                            (_%else107624107638%_))))))
              (if (pair? _%rest1107601107609%_)
                  (let ((_%hd107606107662%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1107601107609%_)))
                        (_%tl107607107664%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1107601107609%_))))
                    (let* ((_%x1107667%_ _%hd107606107662%_)
                           (_%rest1107669%_ _%tl107607107664%_))
                      (_%K107605107659%_ _%rest1107669%_ _%x1107667%_)))
                  (_%else107603107617%_)))))))
    (define ormap2
      (lambda (_%f100775%_ _%lst1100776%_ _%lst2100777%_)
        (if (procedure? _%f100775%_)
            (let ((_%f100781%_ _%f100775%_))
              (__ormap2 _%f100781%_ _%lst1100776%_ _%lst2100777%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@445.15-445.16"
               'contract:
               'procedure?
               'value:
               _%f100775%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f107527%_ _%lst107528%_)
        (let* ((_%f107530%_ _%f107527%_) (_%lst107533%_ _%lst107528%_))
          (if (procedure? _%f107530%_)
              (let ((_%f107538%_ _%f107530%_))
                (__ormap1 _%f107538%_ _%lst107533%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107530%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f107550%_ _%lst1107551%_ _%lst2107552%_)
        (let* ((_%f107554%_ _%f107550%_)
               (_%lst1107557%_ _%lst1107551%_)
               (_%lst2107560%_ _%lst2107552%_))
          (if (procedure? _%f107554%_)
              (let ((_%f107565%_ _%f107554%_))
                (__ormap2 _%f107565%_ _%lst1107557%_ _%lst2107560%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107554%_)
                '#!void)))))
    (define ormap
      (lambda _g112105_
        (let ((_g112106_ (let () (declare (not safe)) (##length _g112105_))))
          (cond ((let () (declare (not safe)) (##fx= _g112106_ 2))
                 (apply ormap__0 _g112105_))
                ((let () (declare (not safe)) (##fx= _g112106_ 3))
                 (apply ormap__1 _g112105_))
                ((let () (declare (not safe)) (##fx>= _g112106_ 3))
                 (apply ormap* _g112105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g112105_))))))
    (define __ormap*
      (lambda (_%f107483%_ . _%rest107484%_)
        (let ((_%f107487%_ _%f107483%_))
          (let _%recur107496%_ ((_%rest107498%_ _%rest107484%_))
            (if (let* ((_%f107500%_ pair?)
                       (_%lst107503%_ _%rest107498%_)
                       (_%f107508%_ _%f107500%_))
                  (__andmap1 _%f107508%_ _%lst107503%_))
                (let ((_%$e107524%_
                       (let ((__tmp112107 (map car _%rest107498%_)))
                         (declare (not safe))
                         (##apply _%f107487%_ __tmp112107))))
                  (if _%$e107524%_
                      _%$e107524%_
                      (_%recur107496%_ (map cdr _%rest107498%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f100911%_ . _%rest100912%_)
        (if (procedure? _%f100911%_)
            (let ((_%f100916%_ _%f100911%_))
              (declare (not safe))
              (##apply __ormap* _%f100916%_ _%rest100912%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@463.15-463.16"
               'contract:
               'procedure?
               'value:
               _%f100911%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f107426%_ _%lst107427%_)
        (let ((_%f107430%_ _%f107426%_))
          (let _%recur107439%_ ((_%rest107441%_ _%lst107427%_))
            (let* ((_%rest107443107451%_ _%rest107441%_)
                   (_%else107445107459%_ (lambda () '()))
                   (_%K107447107471%_
                    (lambda (_%rest107462%_ _%x107463%_)
                      (let ((_%$e107465%_
                             (let ()
                               (declare (not safe))
                               (_%f107430%_ _%x107463%_))))
                        (if _%$e107465%_
                            ((lambda (_%r107468%_)
                               (cons _%r107468%_
                                     (_%recur107439%_ _%rest107462%_)))
                             _%$e107465%_)
                            (_%recur107439%_ _%rest107462%_))))))
              (if (pair? _%rest107443107451%_)
                  (let ((_%hd107448107474%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest107443107451%_)))
                        (_%tl107449107476%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest107443107451%_))))
                    (let* ((_%x107479%_ _%hd107448107474%_)
                           (_%rest107481%_ _%tl107449107476%_))
                      (_%K107447107471%_ _%rest107481%_ _%x107479%_)))
                  (_%else107445107459%_)))))))
    (define filter-map1
      (lambda (_%f101046%_ _%lst101047%_)
        (if (procedure? _%f101046%_)
            (let ((_%f101051%_ _%f101046%_))
              (__filter-map1 _%f101051%_ _%lst101047%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@470.20-470.21"
               'contract:
               'procedure?
               'value:
               _%f101046%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f107334%_ _%lst1107335%_ _%lst2107336%_)
        (let ((_%f107339%_ _%f107334%_))
          (let _%recur107348%_ ((_%rest1107350%_ _%lst1107335%_)
                                (_%rest2107351%_ _%lst2107336%_))
            (let* ((_%rest1107353107361%_ _%rest1107350%_)
                   (_%else107355107369%_ (lambda () '()))
                   (_%K107357107414%_
                    (lambda (_%rest1107372%_ _%x1107373%_)
                      (let* ((_%rest2107374107382%_ _%rest2107351%_)
                             (_%else107376107390%_ (lambda () '()))
                             (_%K107378107402%_
                              (lambda (_%rest2107393%_ _%x2107394%_)
                                (let ((_%$e107396%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f107339%_
                                          _%x1107373%_
                                          _%x2107394%_))))
                                  (if _%$e107396%_
                                      ((lambda (_%r107399%_)
                                         (cons _%r107399%_
                                               (_%recur107348%_
                                                _%rest1107372%_
                                                _%rest2107393%_)))
                                       _%$e107396%_)
                                      (_%recur107348%_
                                       _%rest1107372%_
                                       _%rest2107393%_))))))
                        (if (pair? _%rest2107374107382%_)
                            (let ((_%hd107379107405%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2107374107382%_)))
                                  (_%tl107380107407%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2107374107382%_))))
                              (let* ((_%x2107410%_ _%hd107379107405%_)
                                     (_%rest2107412%_ _%tl107380107407%_))
                                (_%K107378107402%_
                                 _%rest2107412%_
                                 _%x2107410%_)))
                            (_%else107376107390%_))))))
              (if (pair? _%rest1107353107361%_)
                  (let ((_%hd107358107417%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1107353107361%_)))
                        (_%tl107359107419%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1107353107361%_))))
                    (let* ((_%x1107422%_ _%hd107358107417%_)
                           (_%rest1107424%_ _%tl107359107419%_))
                      (_%K107357107414%_ _%rest1107424%_ _%x1107422%_)))
                  (_%else107355107369%_)))))))
    (define filter-map2
      (lambda (_%f101181%_ _%lst1101182%_ _%lst2101183%_)
        (if (procedure? _%f101181%_)
            (let ((_%f101187%_ _%f101181%_))
              (__filter-map2 _%f101187%_ _%lst1101182%_ _%lst2101183%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f101181%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f107278%_ _%lst107279%_)
        (let* ((_%f107281%_ _%f107278%_) (_%lst107284%_ _%lst107279%_))
          (if (procedure? _%f107281%_)
              (let ((_%f107289%_ _%f107281%_))
                (__filter-map1 _%f107289%_ _%lst107284%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107281%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f107301%_ _%lst1107302%_ _%lst2107303%_)
        (let* ((_%f107305%_ _%f107301%_)
               (_%lst1107308%_ _%lst1107302%_)
               (_%lst2107311%_ _%lst2107303%_))
          (if (procedure? _%f107305%_)
              (let ((_%f107316%_ _%f107305%_))
                (__filter-map2 _%f107316%_ _%lst1107308%_ _%lst2107311%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107305%_)
                '#!void)))))
    (define filter-map
      (lambda _g112108_
        (let ((_g112109_ (let () (declare (not safe)) (##length _g112108_))))
          (cond ((let () (declare (not safe)) (##fx= _g112109_ 2))
                 (apply filter-map__0 _g112108_))
                ((let () (declare (not safe)) (##fx= _g112109_ 3))
                 (apply filter-map__1 _g112108_))
                ((let () (declare (not safe)) (##fx>= _g112109_ 3))
                 (apply filter-map* _g112108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g112108_))))))
    (define __filter-map*
      (lambda (_%f107229%_ . _%rest107230%_)
        (let ((_%f107233%_ _%f107229%_))
          (let _%recur107242%_ ((_%rest107244%_ _%rest107230%_))
            (if (let* ((_%f107247%_ pair?)
                       (_%lst107250%_ _%rest107244%_)
                       (_%f107255%_ _%f107247%_))
                  (__andmap1 _%f107255%_ _%lst107250%_))
                (let ((_%$e107272%_
                       (let ((__tmp112110 (map car _%rest107244%_)))
                         (declare (not safe))
                         (##apply _%f107233%_ __tmp112110))))
                  (if _%$e107272%_
                      ((lambda (_%r107275%_)
                         (cons _%r107275%_
                               (_%recur107242%_ (map cdr _%rest107244%_))))
                       _%$e107272%_)
                      (_%recur107242%_ (map cdr _%rest107244%_))))
                '())))))
    (define filter-map*
      (lambda (_%f101317%_ . _%rest101318%_)
        (if (procedure? _%f101317%_)
            (let ((_%f101322%_ _%f101317%_))
              (declare (not safe))
              (##apply __filter-map* _%f101322%_ _%rest101318%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@503.20-503.21"
               'contract:
               'procedure?
               'value:
               _%f101317%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key107205%_ _%lst107207%_ _%default107209%_)
        (let ((_%$e107212%_
               (if (pair? _%lst107207%_)
                   (assq _%key107205%_ _%lst107207%_)
                   '#f)))
          (if _%$e107212%_
              (cdr _%$e107212%_)
              (if (procedure? _%default107209%_)
                  (_%default107209%_ _%key107205%_)
                  _%default107209%_)))))
    (define agetq__0
      (lambda (_%key107220%_ _%lst107221%_)
        (let ((_%default107223%_ '#f))
          (agetq__% _%key107220%_ _%lst107221%_ _%default107223%_))))
    (define agetq
      (lambda _g112111_
        (let ((_g112112_ (let () (declare (not safe)) (##length _g112111_))))
          (cond ((let () (declare (not safe)) (##fx= _g112112_ 2))
                 (apply agetq__0 _g112111_))
                ((let () (declare (not safe)) (##fx= _g112112_ 3))
                 (apply agetq__% _g112111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g112111_))))))
    (define agetv__%
      (lambda (_%key107180%_ _%lst107182%_ _%default107184%_)
        (let ((_%$e107187%_
               (if (pair? _%lst107182%_)
                   (assv _%key107180%_ _%lst107182%_)
                   '#f)))
          (if _%$e107187%_
              (cdr _%$e107187%_)
              (if (procedure? _%default107184%_)
                  (_%default107184%_ _%key107180%_)
                  _%default107184%_)))))
    (define agetv__0
      (lambda (_%key107195%_ _%lst107196%_)
        (let ((_%default107198%_ '#f))
          (agetv__% _%key107195%_ _%lst107196%_ _%default107198%_))))
    (define agetv
      (lambda _g112113_
        (let ((_g112114_ (let () (declare (not safe)) (##length _g112113_))))
          (cond ((let () (declare (not safe)) (##fx= _g112114_ 2))
                 (apply agetv__0 _g112113_))
                ((let () (declare (not safe)) (##fx= _g112114_ 3))
                 (apply agetv__% _g112113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g112113_))))))
    (define aget__%
      (lambda (_%key107155%_ _%lst107157%_ _%default107159%_)
        (let ((_%$e107162%_
               (if (pair? _%lst107157%_)
                   (assoc _%key107155%_ _%lst107157%_)
                   '#f)))
          (if _%$e107162%_
              (cdr _%$e107162%_)
              (if (procedure? _%default107159%_)
                  (_%default107159%_ _%key107155%_)
                  _%default107159%_)))))
    (define aget__0
      (lambda (_%key107170%_ _%lst107171%_)
        (let ((_%default107173%_ '#f))
          (aget__% _%key107170%_ _%lst107171%_ _%default107173%_))))
    (define aget
      (lambda _g112115_
        (let ((_g112116_ (let () (declare (not safe)) (##length _g112115_))))
          (cond ((let () (declare (not safe)) (##fx= _g112116_ 2))
                 (apply aget__0 _g112115_))
                ((let () (declare (not safe)) (##fx= _g112116_ 3))
                 (apply aget__% _g112115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g112115_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key107084%_ _%lst107086%_ _%default107088%_)
        (let _%lp107091%_ ((_%rest107094%_ _%lst107086%_))
          (let* ((_%rest107096107106%_ _%rest107094%_)
                 (_%else107098107114%_
                  (lambda ()
                    (if (procedure? _%default107088%_)
                        (_%default107088%_ _%key107084%_)
                        _%default107088%_)))
                 (_%K107100107123%_
                  (lambda (_%rest107117%_ _%v107118%_ _%k107120%_)
                    (if (eq? _%k107120%_ _%key107084%_)
                        _%v107118%_
                        (_%lp107091%_ _%rest107117%_)))))
            (if (pair? _%rest107096107106%_)
                (let ((_%hd107101107126%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest107096107106%_)))
                      (_%tl107102107128%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest107096107106%_))))
                  (let ((_%k107131%_ _%hd107101107126%_))
                    (if (pair? _%tl107102107128%_)
                        (let ((_%hd107103107133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl107102107128%_)))
                              (_%tl107104107135%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl107102107128%_))))
                          (let* ((_%v107138%_ _%hd107103107133%_)
                                 (_%rest107140%_ _%tl107104107135%_))
                            (_%K107100107123%_
                             _%rest107140%_
                             _%v107138%_
                             _%k107131%_)))
                        (_%else107098107114%_))))
                (_%else107098107114%_))))))
    (define pgetq__0
      (lambda (_%key107145%_ _%lst107146%_)
        (let ((_%default107148%_ '#f))
          (pgetq__% _%key107145%_ _%lst107146%_ _%default107148%_))))
    (define pgetq
      (lambda _g112117_
        (let ((_g112118_ (let () (declare (not safe)) (##length _g112117_))))
          (cond ((let () (declare (not safe)) (##fx= _g112118_ 2))
                 (apply pgetq__0 _g112117_))
                ((let () (declare (not safe)) (##fx= _g112118_ 3))
                 (apply pgetq__% _g112117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g112117_))))))
    (define pgetv__%
      (lambda (_%key107013%_ _%lst107015%_ _%default107017%_)
        (let _%lp107020%_ ((_%rest107023%_ _%lst107015%_))
          (let* ((_%rest107025107035%_ _%rest107023%_)
                 (_%else107027107043%_
                  (lambda ()
                    (if (procedure? _%default107017%_)
                        (_%default107017%_ _%key107013%_)
                        _%default107017%_)))
                 (_%K107029107052%_
                  (lambda (_%rest107046%_ _%v107047%_ _%k107049%_)
                    (if (eqv? _%k107049%_ _%key107013%_)
                        _%v107047%_
                        (_%lp107020%_ _%rest107046%_)))))
            (if (pair? _%rest107025107035%_)
                (let ((_%hd107030107055%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest107025107035%_)))
                      (_%tl107031107057%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest107025107035%_))))
                  (let ((_%k107060%_ _%hd107030107055%_))
                    (if (pair? _%tl107031107057%_)
                        (let ((_%hd107032107062%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl107031107057%_)))
                              (_%tl107033107064%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl107031107057%_))))
                          (let* ((_%v107067%_ _%hd107032107062%_)
                                 (_%rest107069%_ _%tl107033107064%_))
                            (_%K107029107052%_
                             _%rest107069%_
                             _%v107067%_
                             _%k107060%_)))
                        (_%else107027107043%_))))
                (_%else107027107043%_))))))
    (define pgetv__0
      (lambda (_%key107074%_ _%lst107075%_)
        (let ((_%default107077%_ '#f))
          (pgetv__% _%key107074%_ _%lst107075%_ _%default107077%_))))
    (define pgetv
      (lambda _g112119_
        (let ((_g112120_ (let () (declare (not safe)) (##length _g112119_))))
          (cond ((let () (declare (not safe)) (##fx= _g112120_ 2))
                 (apply pgetv__0 _g112119_))
                ((let () (declare (not safe)) (##fx= _g112120_ 3))
                 (apply pgetv__% _g112119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g112119_))))))
    (define pget__%
      (lambda (_%key106942%_ _%lst106944%_ _%default106946%_)
        (let _%lp106949%_ ((_%rest106952%_ _%lst106944%_))
          (let* ((_%rest106954106964%_ _%rest106952%_)
                 (_%else106956106972%_
                  (lambda ()
                    (if (procedure? _%default106946%_)
                        (_%default106946%_ _%key106942%_)
                        _%default106946%_)))
                 (_%K106958106981%_
                  (lambda (_%rest106975%_ _%v106976%_ _%k106978%_)
                    (if (equal? _%k106978%_ _%key106942%_)
                        _%v106976%_
                        (_%lp106949%_ _%rest106975%_)))))
            (if (pair? _%rest106954106964%_)
                (let ((_%hd106959106984%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106954106964%_)))
                      (_%tl106960106986%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106954106964%_))))
                  (let ((_%k106989%_ _%hd106959106984%_))
                    (if (pair? _%tl106960106986%_)
                        (let ((_%hd106961106991%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl106960106986%_)))
                              (_%tl106962106993%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl106960106986%_))))
                          (let* ((_%v106996%_ _%hd106961106991%_)
                                 (_%rest106998%_ _%tl106962106993%_))
                            (_%K106958106981%_
                             _%rest106998%_
                             _%v106996%_
                             _%k106989%_)))
                        (_%else106956106972%_))))
                (_%else106956106972%_))))))
    (define pget__0
      (lambda (_%key107003%_ _%lst107004%_)
        (let ((_%default107006%_ '#f))
          (pget__% _%key107003%_ _%lst107004%_ _%default107006%_))))
    (define pget
      (lambda _g112121_
        (let ((_g112122_ (let () (declare (not safe)) (##length _g112121_))))
          (cond ((let () (declare (not safe)) (##fx= _g112122_ 2))
                 (apply pget__0 _g112121_))
                ((let () (declare (not safe)) (##fx= _g112122_ 3))
                 (apply pget__% _g112121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g112121_))))))
    (define __find
      (lambda (_%pred106902%_ _%lst106903%_)
        (let* ((_%pred106906%_ _%pred106902%_)
               (_%$e106937%_
                (let* ((_%proc106915%_ _%pred106906%_)
                       (_%lst106918%_ _%lst106903%_)
                       (_%proc106923%_ _%proc106915%_))
                  (__memf _%proc106923%_ _%lst106918%_))))
          (if _%$e106937%_
              (let () (declare (not safe)) (##car _%$e106937%_))
              '#f))))
    (define find
      (lambda (_%pred101614%_ _%lst101615%_)
        (if (procedure? _%pred101614%_)
            (let ((_%pred101619%_ _%pred101614%_))
              (__find _%pred101619%_ _%lst101615%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@549.13-549.17"
               'contract:
               'procedure?
               'value:
               _%pred101614%_)
              '#!void))))
    (define __memf
      (lambda (_%proc106852%_ _%lst106853%_)
        (let ((_%proc106856%_ _%proc106852%_))
          (let _%lp106865%_ ((_%rest106867%_ _%lst106853%_))
            (let* ((_%rest106868106876%_ _%rest106867%_)
                   (_%else106870106884%_ (lambda () '#f))
                   (_%K106872106890%_
                    (lambda (_%tl106887%_ _%hd106888%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc106856%_ _%hd106888%_))
                          _%rest106867%_
                          (_%lp106865%_ _%tl106887%_)))))
              (if (pair? _%rest106868106876%_)
                  (let ((_%hd106873106893%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest106868106876%_)))
                        (_%tl106874106895%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest106868106876%_))))
                    (let* ((_%hd106898%_ _%hd106873106893%_)
                           (_%tl106900%_ _%tl106874106895%_))
                      (_%K106872106890%_ _%tl106900%_ _%hd106898%_)))
                  (_%else106870106884%_)))))))
    (define memf
      (lambda (_%proc101749%_ _%lst101750%_)
        (if (procedure? _%proc101749%_)
            (let ((_%proc101754%_ _%proc101749%_))
              (__memf _%proc101754%_ _%lst101750%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc101749%_)
              '#!void))))
    (define remove1
      (lambda (_%el106775%_ _%lst106777%_)
        (let _%lp106780%_ ((_%rest106783%_ _%lst106777%_) (_%r106785%_ '()))
          (let* ((_%rest106787106795%_ _%rest106783%_)
                 (_%else106789106803%_ (lambda () _%lst106777%_))
                 (_%K106791106840%_
                  (lambda (_%rest106806%_ _%hd106807%_)
                    (if (equal? _%el106775%_ _%hd106807%_)
                        (let* ((_%f106810%_ cons)
                               (_%iv106813%_ _%rest106806%_)
                               (_%lst106816%_ _%r106785%_)
                               (_%f106821%_ _%f106810%_))
                          (__foldl1 _%f106821%_ _%iv106813%_ _%lst106816%_))
                        (_%lp106780%_
                         _%rest106806%_
                         (cons _%hd106807%_ _%r106785%_))))))
            (if (pair? _%rest106787106795%_)
                (let ((_%hd106792106843%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106787106795%_)))
                      (_%tl106793106845%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106787106795%_))))
                  (let* ((_%hd106848%_ _%hd106792106843%_)
                         (_%rest106850%_ _%tl106793106845%_))
                    (_%K106791106840%_ _%rest106850%_ _%hd106848%_)))
                (_%else106789106803%_))))))
    (define remv1
      (lambda (_%el106698%_ _%lst106700%_)
        (let _%lp106703%_ ((_%rest106706%_ _%lst106700%_) (_%r106708%_ '()))
          (let* ((_%rest106710106718%_ _%rest106706%_)
                 (_%else106712106726%_ (lambda () _%lst106700%_))
                 (_%K106714106763%_
                  (lambda (_%rest106729%_ _%hd106730%_)
                    (if (eqv? _%el106698%_ _%hd106730%_)
                        (let* ((_%f106733%_ cons)
                               (_%iv106736%_ _%rest106729%_)
                               (_%lst106739%_ _%r106708%_)
                               (_%f106744%_ _%f106733%_))
                          (__foldl1 _%f106744%_ _%iv106736%_ _%lst106739%_))
                        (_%lp106703%_
                         _%rest106729%_
                         (cons _%hd106730%_ _%r106708%_))))))
            (if (pair? _%rest106710106718%_)
                (let ((_%hd106715106766%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106710106718%_)))
                      (_%tl106716106768%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106710106718%_))))
                  (let* ((_%hd106771%_ _%hd106715106766%_)
                         (_%rest106773%_ _%tl106716106768%_))
                    (_%K106714106763%_ _%rest106773%_ _%hd106771%_)))
                (_%else106712106726%_))))))
    (define remq1
      (lambda (_%el106621%_ _%lst106623%_)
        (let _%lp106626%_ ((_%rest106629%_ _%lst106623%_) (_%r106631%_ '()))
          (let* ((_%rest106633106641%_ _%rest106629%_)
                 (_%else106635106649%_ (lambda () _%lst106623%_))
                 (_%K106637106686%_
                  (lambda (_%rest106652%_ _%hd106653%_)
                    (if (eq? _%el106621%_ _%hd106653%_)
                        (let* ((_%f106656%_ cons)
                               (_%iv106659%_ _%rest106652%_)
                               (_%lst106662%_ _%r106631%_)
                               (_%f106667%_ _%f106656%_))
                          (__foldl1 _%f106667%_ _%iv106659%_ _%lst106662%_))
                        (_%lp106626%_
                         _%rest106652%_
                         (cons _%hd106653%_ _%r106631%_))))))
            (if (pair? _%rest106633106641%_)
                (let ((_%hd106638106689%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106633106641%_)))
                      (_%tl106639106691%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106633106641%_))))
                  (let* ((_%hd106694%_ _%hd106638106689%_)
                         (_%rest106696%_ _%tl106639106691%_))
                    (_%K106637106686%_ _%rest106696%_ _%hd106694%_)))
                (_%else106635106649%_))))))
    (define __remf
      (lambda (_%proc106538%_ _%lst106539%_)
        (let ((_%proc106542%_ _%proc106538%_))
          (let _%lp106551%_ ((_%rest106553%_ _%lst106539%_) (_%r106554%_ '()))
            (let* ((_%rest106555106563%_ _%rest106553%_)
                   (_%else106557106571%_ (lambda () _%lst106539%_))
                   (_%K106559106609%_
                    (lambda (_%rest106574%_ _%hd106575%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc106542%_ _%hd106575%_))
                          (let* ((_%f106577%_ cons)
                                 (_%iv106580%_ _%rest106574%_)
                                 (_%lst106583%_ _%r106554%_)
                                 (_%f106588%_ _%f106577%_))
                            (__foldl1 _%f106588%_ _%iv106580%_ _%lst106583%_))
                          (_%lp106551%_
                           _%rest106574%_
                           (cons _%hd106575%_ _%r106554%_))))))
              (if (pair? _%rest106555106563%_)
                  (let ((_%hd106560106612%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest106555106563%_)))
                        (_%tl106561106614%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest106555106563%_))))
                    (let* ((_%hd106617%_ _%hd106560106612%_)
                           (_%rest106619%_ _%tl106561106614%_))
                      (_%K106559106609%_ _%rest106619%_ _%hd106617%_)))
                  (_%else106557106571%_)))))))
    (define remf
      (lambda (_%proc101965%_ _%lst101966%_)
        (if (procedure? _%proc101965%_)
            (let ((_%proc101970%_ _%proc101965%_))
              (__remf _%proc101970%_ _%lst101966%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@576.13-576.17"
               'contract:
               'procedure?
               'value:
               _%proc101965%_)
              '#!void))))
    (define __1+
      (lambda (_%x106526%_)
        (let ((_%x106529%_ _%x106526%_)) (+ _%x106529%_ '1))))
    (define 1+
      (lambda (_%x102100%_)
        (if (number? _%x102100%_)
            (let ((_%x102104%_ _%x102100%_)) (__1+ _%x102104%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@585.11-585.12"
               'contract:
               'number?
               'value:
               _%x102100%_)
              '#!void))))
    (define __1-
      (lambda (_%x106514%_)
        (let ((_%x106517%_ _%x106514%_)) (- _%x106517%_ '1))))
    (define 1-
      (lambda (_%x102234%_)
        (if (number? _%x102234%_)
            (let ((_%x102238%_ _%x102234%_)) (__1- _%x102238%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@593.11-593.12"
               'contract:
               'number?
               'value:
               _%x102234%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x106502%_)
        (let ((_%x106505%_ _%x106502%_))
          (declare (not safe))
          (##fx+ _%x106505%_ '1))))
    (define fx1+
      (lambda (_%x102368%_)
        (if (fixnum? _%x102368%_)
            (let ((_%x102372%_ _%x102368%_)) (__fx1+ _%x102372%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@601.13-601.14"
               'contract:
               'fixnum?
               'value:
               _%x102368%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x106490%_)
        (let ((_%x106493%_ _%x106490%_))
          (declare (not safe))
          (##fx- _%x106493%_ '1))))
    (define fx1-
      (lambda (_%x102502%_)
        (if (fixnum? _%x102502%_)
            (let ((_%x102506%_ _%x102502%_)) (__fx1- _%x102506%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@609.13-609.14"
               'contract:
               'fixnum?
               'value:
               _%x102502%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x106487%_)
        (if (fixnum? _%x106487%_)
            (let () (declare (not safe)) (##fx>= _%x106487%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x106484%_)
        (if (fixnum? _%x106484%_)
            (let () (declare (not safe)) (##fx> _%x106484%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x106481%_)
        (let () (declare (not safe)) (##fx= _%x106481%_ '0))))
    (define fx<0?
      (lambda (_%x106478%_)
        (if (fixnum? _%x106478%_)
            (let () (declare (not safe)) (##fx< _%x106478%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x106475%_)
        (if (fixnum? _%x106475%_)
            (let () (declare (not safe)) (##fx<= _%x106475%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x106472%_)
        (if (symbol? _%x106472%_) (not (uninterned-symbol? _%x106472%_)) '#f)))
    (define __display-as-string
      (lambda (_%x106366%_ _%port106367%_)
        (let ((_%port106370%_ _%port106367%_))
          (if (or (string? _%x106366%_)
                  (symbol? _%x106366%_)
                  (keyword? _%x106366%_)
                  (number? _%x106366%_)
                  (char? _%x106366%_))
              (display _%x106366%_ _%port106370%_)
              (if (pair? _%x106366%_)
                  (let ()
                    (let* ((_%x106393%_
                            (let () (declare (not safe)) (##car _%x106366%_)))
                           (_%port106396%_ _%port106370%_))
                      (if (output-port? _%port106396%_)
                          (let ((_%port106401%_ _%port106396%_))
                            (__display-as-string _%x106393%_ _%port106401%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port106396%_)
                            '#!void)))
                    (let* ((_%x106416%_
                            (let () (declare (not safe)) (##cdr _%x106366%_)))
                           (_%port106419%_ _%port106370%_))
                      (if (output-port? _%port106419%_)
                          (let ((_%port106424%_ _%port106419%_))
                            (__display-as-string _%x106416%_ _%port106424%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port106419%_)
                            '#!void))))
                  (if (vector? _%x106366%_)
                      (vector-for-each
                       (lambda (_%g106435106437%_)
                         (let* ((_%x106440%_ _%g106435106437%_)
                                (_%port106443%_ _%port106370%_))
                           (if (output-port? _%port106443%_)
                               (let ((_%port106448%_ _%port106443%_))
                                 (__display-as-string
                                  _%x106440%_
                                  _%port106448%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port106443%_)
                                 '#!void))))
                       _%x106366%_)
                      (if (or (null? _%x106366%_)
                              (eq? _%x106366%_ '#!void)
                              (eof-object? _%x106366%_)
                              (boolean? _%x106366%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x106366%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x102636%_ _%port102637%_)
        (if (output-port? _%port102637%_)
            (let ((_%port102641%_ _%port102637%_))
              (__display-as-string _%x102636%_ _%port102641%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@639.28-639.32"
               'contract:
               'output-port?
               'value:
               _%port102637%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x106306%_)
        (if (string? _%x106306%_)
            _%x106306%_
            (if (symbol? _%x106306%_)
                (let () (declare (not safe)) (##symbol->string _%x106306%_))
                (if (keyword? _%x106306%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x106306%_))
                    (if (number? _%x106306%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x106306%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g106312106314%_)
                           (let* ((_%x106317%_ _%x106306%_)
                                  (_%port106320%_ _%g106312106314%_))
                             (if (output-port? _%port106320%_)
                                 (let ((_%port106325%_ _%port106320%_))
                                   (__display-as-string
                                    _%x106317%_
                                    _%port106325%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port106320%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args106339%_
        (call-with-output-string
         '()
         (lambda (_%g106340106342%_)
           (let* ((_%x106345%_ _%args106339%_)
                  (_%port106348%_ _%g106340106342%_))
             (if (output-port? _%port106348%_)
                 (let ((_%port106353%_ _%port106348%_))
                   (__display-as-string _%x106345%_ _%port106353%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port106348%_)
                   '#!void)))))))
    (define as-string
      (lambda _g112123_
        (let ((_g112124_ (let () (declare (not safe)) (##length _g112123_))))
          (cond ((let () (declare (not safe)) (##fx= _g112124_ 1))
                 (apply as-string__0 _g112123_))
                (#t
                 (apply (lambda _%args106339%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args106339%_)))
                        _g112123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g112123_))))))
    (define make-symbol__0
      (lambda (_%x106302%_)
        (if (interned-symbol? _%x106302%_)
            _%x106302%_
            (let ((__tmp112125 (as-string__0 _%x106302%_)))
              (declare (not safe))
              (##string->symbol __tmp112125)))))
    (define make-symbol__1
      (lambda _%args106304%_
        (let ((__tmp112126
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args106304%_))))
          (declare (not safe))
          (##string->symbol __tmp112126))))
    (define make-symbol
      (lambda _g112127_
        (let ((_g112128_ (let () (declare (not safe)) (##length _g112127_))))
          (cond ((let () (declare (not safe)) (##fx= _g112128_ 1))
                 (apply make-symbol__0 _g112127_))
                (#t
                 (apply (lambda _%args106304%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args106304%_)))
                        _g112127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g112127_))))))
    (define make-keyword__0
      (lambda (_%x106298%_)
        (if (interned-keyword? _%x106298%_)
            _%x106298%_
            (let ((__tmp112129 (as-string__0 _%x106298%_)))
              (declare (not safe))
              (##string->keyword __tmp112129)))))
    (define make-keyword__1
      (lambda _%args106300%_
        (let ((__tmp112130
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args106300%_))))
          (declare (not safe))
          (##string->keyword __tmp112130))))
    (define make-keyword
      (lambda _g112131_
        (let ((_g112132_ (let () (declare (not safe)) (##length _g112131_))))
          (cond ((let () (declare (not safe)) (##fx= _g112132_ 1))
                 (apply make-keyword__0 _g112131_))
                (#t
                 (apply (lambda _%args106300%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args106300%_)))
                        _g112131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g112131_))))))
    (define interned-keyword?
      (lambda (_%x106295%_)
        (if (keyword? _%x106295%_)
            (not (uninterned-keyword? _%x106295%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym106283%_)
        (let ((_%sym106286%_ _%sym106283%_))
          (if (uninterned-symbol? _%sym106286%_)
              (let ((__tmp112133
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym106286%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp112133))
              (let ((__tmp112134
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym106286%_))))
                (declare (not safe))
                (##string->keyword __tmp112134))))))
    (define symbol->keyword
      (lambda (_%sym102771%_)
        (if (symbol? _%sym102771%_)
            (let ((_%sym102775%_ _%sym102771%_))
              (__symbol->keyword _%sym102775%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@682.24-682.27"
               'contract:
               'symbol?
               'value:
               _%sym102771%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym106271%_)
        (let ((_%sym106274%_ _%sym106271%_))
          (if (uninterned-keyword? _%sym106274%_)
              (let ((__tmp112135
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym106274%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp112135))
              (let ((__tmp112136
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym106274%_))))
                (declare (not safe))
                (##string->symbol __tmp112136))))))
    (define keyword->symbol
      (lambda (_%sym102905%_)
        (if (keyword? _%sym102905%_)
            (let ((_%sym102909%_ _%sym102905%_))
              (__keyword->symbol _%sym102909%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@688.24-688.27"
               'contract:
               'keyword?
               'value:
               _%sym102905%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr106231%_ _%enc106232%_)
        (let* ((_%bstr106235%_ _%bstr106231%_) (_%enc106243%_ _%enc106232%_))
          (if (eq? _%enc106243%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr106235%_))
              (let* ((_%in106252%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc106243%_
                                   (cons 'init: (cons _%bstr106235%_ '()))))))
                     (_%len106254%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr106235%_)))
                     (_%out106256%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len106254%_)))
                     (_%n106258%_
                      (read-substring
                       _%out106256%_
                       '0
                       _%len106254%_
                       _%in106252%_)))
                (string-shrink! _%out106256%_ _%n106258%_)
                _%out106256%_)))))
    (define __bytes->string__0
      (lambda (_%bstr106264%_)
        (let ((_%enc106266%_ 'UTF-8))
          (__bytes->string__% _%bstr106264%_ _%enc106266%_))))
    (define __bytes->string
      (lambda _g112137_
        (let ((_g112138_ (let () (declare (not safe)) (##length _g112137_))))
          (cond ((let () (declare (not safe)) (##fx= _g112138_ 1))
                 (apply __bytes->string__0 _g112137_))
                ((let () (declare (not safe)) (##fx= _g112138_ 2))
                 (apply __bytes->string__% _g112137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g112137_))))))
    (define bytes->string__%
      (lambda (_%bstr103040%_ _%enc103041%_)
        (if (u8vector? _%bstr103040%_)
            (let ((_%bstr103045%_ _%bstr103040%_))
              (if (symbol? _%enc103041%_)
                  (let ((_%enc103055%_ _%enc103041%_))
                    (__bytes->string__% _%bstr103045%_ _%enc103055%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.25-695.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc103041%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.22-694.26"
               'contract:
               'u8vector?
               'value:
               _%bstr103040%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr103068%_)
        (let ((_%enc103070%_ 'UTF-8))
          (bytes->string__% _%bstr103068%_ _%enc103070%_))))
    (define bytes->string
      (lambda _g112139_
        (let ((_g112140_ (let () (declare (not safe)) (##length _g112139_))))
          (cond ((let () (declare (not safe)) (##fx= _g112140_ 1))
                 (apply bytes->string__0 _g112139_))
                ((let () (declare (not safe)) (##fx= _g112140_ 2))
                 (apply bytes->string__% _g112139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g112139_))))))
    (define __string->bytes__%
      (lambda (_%str106149%_ _%enc106150%_)
        (let* ((_%str106153%_ _%str106149%_) (_%enc106161%_ _%enc106150%_))
          (if (eq? _%enc106161%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str106153%_))
              (let* ((_%str106170%_ _%str106153%_)
                     (_%start106173%_ '0)
                     (_%end106176%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str106153%_)))
                     (_%enc106179%_ _%enc106161%_)
                     (_%str106184%_ _%str106170%_))
                (if (nonnegative-fixnum? _%start106173%_)
                    (let ((_%start106200%_ _%start106173%_))
                      (if (nonnegative-fixnum? _%end106176%_)
                          (let ((_%end106210%_ _%end106176%_))
                            (__substring->bytes__%
                             _%str106184%_
                             _%start106200%_
                             _%end106210%_
                             _%enc106179%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end106176%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start106173%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str106223%_)
        (let ((_%enc106225%_ 'UTF-8))
          (__string->bytes__% _%str106223%_ _%enc106225%_))))
    (define __string->bytes
      (lambda _g112141_
        (let ((_g112142_ (let () (declare (not safe)) (##length _g112141_))))
          (cond ((let () (declare (not safe)) (##fx= _g112142_ 1))
                 (apply __string->bytes__0 _g112141_))
                ((let () (declare (not safe)) (##fx= _g112142_ 2))
                 (apply __string->bytes__% _g112141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g112141_))))))
    (define string->bytes__%
      (lambda (_%str103196%_ _%enc103197%_)
        (if (string? _%str103196%_)
            (let ((_%str103201%_ _%str103196%_))
              (if (symbol? _%enc103197%_)
                  (let ((_%enc103211%_ _%enc103197%_))
                    (__string->bytes__% _%str103201%_ _%enc103211%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@707.25-707.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc103197%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@706.22-706.25"
               'contract:
               'string?
               'value:
               _%str103196%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str103224%_)
        (let ((_%enc103226%_ 'UTF-8))
          (string->bytes__% _%str103224%_ _%enc103226%_))))
    (define string->bytes
      (lambda _g112143_
        (let ((_g112144_ (let () (declare (not safe)) (##length _g112143_))))
          (cond ((let () (declare (not safe)) (##fx= _g112144_ 1))
                 (apply string->bytes__0 _g112143_))
                ((let () (declare (not safe)) (##fx= _g112144_ 2))
                 (apply string->bytes__% _g112143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g112143_))))))
    (define __substring->bytes__%
      (lambda (_%str106101%_ _%start106102%_ _%end106103%_ _%enc106104%_)
        (let* ((_%str106107%_ _%str106101%_)
               (_%start106115%_ _%start106102%_)
               (_%end106123%_ _%end106103%_))
          (if (eq? _%enc106104%_ 'UTF-8)
              (string->utf8 _%str106107%_ _%start106115%_ _%end106123%_)
              (let ((_%out106132%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc106104%_ '())))))
                (write-substring
                 _%str106107%_
                 _%start106115%_
                 _%end106123%_
                 _%out106132%_)
                (get-output-u8vector _%out106132%_))))))
    (define __substring->bytes__0
      (lambda (_%str106137%_ _%start106138%_ _%end106139%_)
        (let ((_%enc106141%_ 'UTF-8))
          (__substring->bytes__%
           _%str106137%_
           _%start106138%_
           _%end106139%_
           _%enc106141%_))))
    (define __substring->bytes
      (lambda _g112145_
        (let ((_g112146_ (let () (declare (not safe)) (##length _g112145_))))
          (cond ((let () (declare (not safe)) (##fx= _g112146_ 3))
                 (apply __substring->bytes__0 _g112145_))
                ((let () (declare (not safe)) (##fx= _g112146_ 4))
                 (apply __substring->bytes__% _g112145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g112145_))))))
    (define substring->bytes__%
      (lambda (_%str103352%_ _%start103353%_ _%end103354%_ _%enc103355%_)
        (if (string? _%str103352%_)
            (let ((_%str103359%_ _%str103352%_))
              (if (nonnegative-fixnum? _%start103353%_)
                  (let ((_%start103369%_ _%start103353%_))
                    (if (nonnegative-fixnum? _%end103354%_)
                        (let ((_%end103379%_ _%end103354%_))
                          (__substring->bytes__%
                           _%str103359%_
                           _%start103369%_
                           _%end103379%_
                           _%enc103355%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@715.25-715.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end103354%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@714.25-714.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start103353%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@713.25-713.28"
               'contract:
               'string?
               'value:
               _%str103352%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str103392%_ _%start103393%_ _%end103394%_)
        (let ((_%enc103396%_ 'UTF-8))
          (substring->bytes__%
           _%str103392%_
           _%start103393%_
           _%end103394%_
           _%enc103396%_))))
    (define substring->bytes
      (lambda _g112147_
        (let ((_g112148_ (let () (declare (not safe)) (##length _g112147_))))
          (cond ((let () (declare (not safe)) (##fx= _g112148_ 3))
                 (apply substring->bytes__0 _g112147_))
                ((let () (declare (not safe)) (##fx= _g112148_ 4))
                 (apply substring->bytes__% _g112147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g112147_))))))
    (define __string-empty?
      (lambda (_%str106088%_)
        (let* ((_%str106091%_ _%str106088%_)
               (__tmp112149
                (let () (declare (not safe)) (##string-length _%str106091%_))))
          (declare (not safe))
          (##fxzero? __tmp112149))))
    (define string-empty?
      (lambda (_%str103523%_)
        (if (string? _%str103523%_)
            (let ((_%str103527%_ _%str103523%_))
              (__string-empty? _%str103527%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@724.22-724.25"
               'contract:
               'string?
               'value:
               _%str103523%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str106028%_ _%char106029%_ _%start106030%_)
        (let* ((_%str106033%_ _%str106028%_)
               (_%char106041%_ _%char106029%_)
               (_%start106049%_ _%start106030%_)
               (_%len106058%_
                (let () (declare (not safe)) (##string-length _%str106033%_))))
          (let _%lp106060%_ ((_%k106062%_ _%start106049%_))
            (let ((_%k106064%_ _%k106062%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k106064%_ _%len106058%_))
                  (if (eq? _%char106041%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str106033%_ _%k106064%_)))
                      _%k106064%_
                      (_%lp106060%_
                       (let () (declare (not safe)) (##fx+ _%k106064%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str106079%_ _%char106080%_)
        (let ((_%start106082%_ '0))
          (__string-index__% _%str106079%_ _%char106080%_ _%start106082%_))))
    (define __string-index
      (lambda _g112150_
        (let ((_g112151_ (let () (declare (not safe)) (##length _g112150_))))
          (cond ((let () (declare (not safe)) (##fx= _g112151_ 2))
                 (apply __string-index__0 _g112150_))
                ((let () (declare (not safe)) (##fx= _g112151_ 3))
                 (apply __string-index__% _g112150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g112150_))))))
    (define string-index__%
      (lambda (_%str103658%_ _%char103659%_ _%start103660%_)
        (if (string? _%str103658%_)
            (let ((_%str103664%_ _%str103658%_))
              (if (char? _%char103659%_)
                  (let ((_%char103674%_ _%char103659%_))
                    (if (nonnegative-fixnum? _%start103660%_)
                        (let ((_%start103684%_ _%start103660%_))
                          (__string-index__%
                           _%str103664%_
                           _%char103674%_
                           _%start103684%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@730.21-730.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start103660%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.21-729.25"
                     'contract:
                     'char?
                     'value:
                     _%char103659%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@728.21-728.24"
               'contract:
               'string?
               'value:
               _%str103658%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str103697%_ _%char103698%_)
        (let ((_%start103700%_ '0))
          (string-index__% _%str103697%_ _%char103698%_ _%start103700%_))))
    (define string-index
      (lambda _g112152_
        (let ((_g112153_ (let () (declare (not safe)) (##length _g112152_))))
          (cond ((let () (declare (not safe)) (##fx= _g112153_ 2))
                 (apply string-index__0 _g112152_))
                ((let () (declare (not safe)) (##fx= _g112153_ 3))
                 (apply string-index__% _g112152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g112152_))))))
    (define __string-rindex__%
      (lambda (_%str105970%_ _%char105971%_ _%start105972%_)
        (let* ((_%str105975%_ _%str105970%_)
               (_%char105983%_ _%char105971%_)
               (_%len105992%_
                (let () (declare (not safe)) (##string-length _%str105975%_)))
               (_%start105994%_
                (if (fixnum? _%start105972%_)
                    _%start105972%_
                    (let () (declare (not safe)) (##fx- _%len105992%_ '1)))))
          (let _%lp105997%_ ((_%k105999%_ _%start105994%_))
            (let ((_%k106001%_ _%k105999%_))
              (if (let () (declare (not safe)) (##fx>= _%k106001%_ '0))
                  (if (eq? _%char105983%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str105975%_ _%k106001%_)))
                      _%k106001%_
                      (_%lp105997%_
                       (let () (declare (not safe)) (##fx- _%k106001%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str106018%_ _%char106019%_)
        (let ((_%start106021%_ '#f))
          (__string-rindex__% _%str106018%_ _%char106019%_ _%start106021%_))))
    (define __string-rindex
      (lambda _g112154_
        (let ((_g112155_ (let () (declare (not safe)) (##length _g112154_))))
          (cond ((let () (declare (not safe)) (##fx= _g112155_ 2))
                 (apply __string-rindex__0 _g112154_))
                ((let () (declare (not safe)) (##fx= _g112155_ 3))
                 (apply __string-rindex__% _g112154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g112154_))))))
    (define string-rindex__%
      (lambda (_%str103827%_ _%char103828%_ _%start103829%_)
        (if (string? _%str103827%_)
            (let ((_%str103833%_ _%str103827%_))
              (if (char? _%char103828%_)
                  (let ((_%char103843%_ _%char103828%_))
                    (__string-rindex__%
                     _%str103833%_
                     _%char103843%_
                     _%start103829%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@740.25-740.29"
                     'contract:
                     'char?
                     'value:
                     _%char103828%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@739.22-739.25"
               'contract:
               'string?
               'value:
               _%str103827%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str103856%_ _%char103857%_)
        (let ((_%start103859%_ '#f))
          (string-rindex__% _%str103856%_ _%char103857%_ _%start103859%_))))
    (define string-rindex
      (lambda _g112156_
        (let ((_g112157_ (let () (declare (not safe)) (##length _g112156_))))
          (cond ((let () (declare (not safe)) (##fx= _g112157_ 2))
                 (apply string-rindex__0 _g112156_))
                ((let () (declare (not safe)) (##fx= _g112157_ 3))
                 (apply string-rindex__% _g112156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g112156_))))))
    (define __string-split
      (lambda (_%str105867%_ _%char105868%_)
        (let* ((_%str105871%_ _%str105867%_)
               (_%char105879%_ _%char105868%_)
               (_%len105888%_
                (let () (declare (not safe)) (##string-length _%str105871%_))))
          (let _%lp105890%_ ((_%start105892%_ '0) (_%r105893%_ '()))
            (let* ((_%start105896%_ _%start105892%_)
                   (_%$e105954%_
                    (let* ((_%str105909%_ _%str105871%_)
                           (_%char105912%_ _%char105879%_)
                           (_%start105915%_ _%start105896%_)
                           (_%str105920%_ _%str105909%_)
                           (_%char105934%_ _%char105912%_))
                      (if (nonnegative-fixnum? _%start105915%_)
                          (let ((_%start105944%_ _%start105915%_))
                            (__string-index__%
                             _%str105920%_
                             _%char105934%_
                             _%start105944%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start105915%_)
                            '#!void)))))
              (if _%$e105954%_
                  ((lambda (_%end105957%_)
                     (let ((_%end105959%_ _%end105957%_))
                       (_%lp105890%_
                        (let () (declare (not safe)) (##fx+ _%end105959%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str105871%_
                                 _%start105896%_
                                 _%end105959%_))
                              _%r105893%_))))
                   _%$e105954%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start105896%_ _%len105888%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str105871%_
                                _%start105896%_
                                _%len105888%_)))
                       _%r105893%_)
                      (reverse! _%r105893%_))))))))
    (define string-split
      (lambda (_%str103985%_ _%char103986%_)
        (if (string? _%str103985%_)
            (let ((_%str103990%_ _%str103985%_))
              (if (char? _%char103986%_)
                  (let ((_%char104000%_ _%char103986%_))
                    (__string-split _%str103990%_ _%char104000%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@751.37-751.41"
                     'contract:
                     'char?
                     'value:
                     _%char103986%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@751.21-751.24"
               'contract:
               'string?
               'value:
               _%str103985%_)
              '#!void))))
    (define string-join
      (lambda (_%strs105717%_ _%join105718%_)
        (letrec ((_%join-length105721%_
                  (lambda (_%strs105805%_ _%jlen105806%_)
                    (let _%lp105808%_ ((_%rest105810%_ _%strs105805%_)
                                       (_%len105811%_ '0))
                      (let* ((_%len105813%_ _%len105811%_)
                             (_%rest105821105829%_ _%rest105810%_)
                             (_%else105823105837%_ (lambda () '0))
                             (_%K105825105855%_
                              (lambda (_%rest105840%_ _%hd105841%_)
                                (if (string? _%hd105841%_)
                                    (let ((_%hd105843%_ _%hd105841%_))
                                      (if (pair? _%rest105840%_)
                                          (_%lp105808%_
                                           _%rest105840%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd105843%_))
                                                _%jlen105806%_
                                                _%len105813%_))
                                          (let ((__tmp112158
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd105843%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp112158
                                                   _%len105813%_))))
                                    (error '"expected string" _%hd105841%_)))))
                        (if (pair? _%rest105821105829%_)
                            (let ((_%hd105826105858%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest105821105829%_)))
                                  (_%tl105827105860%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest105821105829%_))))
                              (let* ((_%hd105863%_ _%hd105826105858%_)
                                     (_%rest105865%_ _%tl105827105860%_))
                                (_%K105825105855%_
                                 _%rest105865%_
                                 _%hd105863%_)))
                            (_%else105823105837%_)))))))
          (let* ((_%join105726%_
                  (if (char? _%join105718%_)
                      (let () (declare (not safe)) (##string _%join105718%_))
                      (if (string? _%join105718%_)
                          _%join105718%_
                          (error '"expected string or char" _%join105718%_))))
                 (_%jlen105728%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join105726%_)))
                 (_%olen105730%_
                  (_%join-length105721%_ _%strs105717%_ _%jlen105728%_))
                 (_%ostr105732%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen105730%_))))
            (let _%lp105735%_ ((_%rest105737%_ _%strs105717%_)
                               (_%k105738%_ '0))
              (let* ((_%k105741%_ _%k105738%_)
                     (_%rest105757105765%_ _%rest105737%_)
                     (_%else105759105773%_ (lambda () '""))
                     (_%K105761105793%_
                      (lambda (_%rest105776%_ _%hd105777%_)
                        (let* ((_%hd105779%_ _%hd105777%_)
                               (_%hdlen105791%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd105779%_))))
                          (if (pair? _%rest105776%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd105779%_
                                   '0
                                   _%hdlen105791%_
                                   _%ostr105732%_
                                   _%k105741%_))
                                (let ((__tmp112159
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k105741%_ _%hdlen105791%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join105726%_
                                   '0
                                   _%jlen105728%_
                                   _%ostr105732%_
                                   __tmp112159))
                                (_%lp105735%_
                                 _%rest105776%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k105741%_
                                          _%hdlen105791%_
                                          _%jlen105728%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd105779%_
                                   '0
                                   _%hdlen105791%_
                                   _%ostr105732%_
                                   _%k105741%_))
                                _%ostr105732%_))))))
                (if (pair? _%rest105757105765%_)
                    (let ((_%hd105762105796%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest105757105765%_)))
                          (_%tl105763105798%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest105757105765%_))))
                      (let* ((_%hd105801%_ _%hd105762105796%_)
                             (_%rest105803%_ _%tl105763105798%_))
                        (_%K105761105793%_ _%rest105803%_ _%hd105801%_)))
                    (_%else105759105773%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes105657%_ _%port105658%_ _%start105659%_ _%end105660%_)
        (let* ((_%bytes105663%_ _%bytes105657%_)
               (_%port105671%_ _%port105658%_)
               (_%start105679%_ _%start105659%_)
               (_%end105687%_ _%end105660%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes105663%_
           _%start105679%_
           _%end105687%_
           _%port105671%_))))
    (define __read-u8vector__0
      (lambda (_%bytes105699%_ _%port105700%_)
        (let* ((_%start105702%_ '0)
               (_%end105704%_ (u8vector-length _%bytes105699%_)))
          (__read-u8vector__%
           _%bytes105699%_
           _%port105700%_
           _%start105702%_
           _%end105704%_))))
    (define __read-u8vector__1
      (lambda (_%bytes105706%_ _%port105707%_ _%start105708%_)
        (let ((_%end105710%_ (u8vector-length _%bytes105706%_)))
          (__read-u8vector__%
           _%bytes105706%_
           _%port105707%_
           _%start105708%_
           _%end105710%_))))
    (define __read-u8vector
      (lambda _g112160_
        (let ((_g112161_ (let () (declare (not safe)) (##length _g112160_))))
          (cond ((let () (declare (not safe)) (##fx= _g112161_ 2))
                 (apply __read-u8vector__0 _g112160_))
                ((let () (declare (not safe)) (##fx= _g112161_ 3))
                 (apply __read-u8vector__1 _g112160_))
                ((let () (declare (not safe)) (##fx= _g112161_ 4))
                 (apply __read-u8vector__% _g112160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g112160_))))))
    (define read-u8vector__%
      (lambda (_%bytes104131%_ _%port104132%_ _%start104133%_ _%end104134%_)
        (if (u8vector? _%bytes104131%_)
            (let ((_%bytes104138%_ _%bytes104131%_))
              (if (input-port? _%port104132%_)
                  (let ((_%port104148%_ _%port104132%_))
                    (if ((lambda (_%o104157%_)
                           (and (fixnum? _%o104157%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o104157%_ '0))
                                (let ((__tmp112162
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes104138%_))))
                                  (declare (not safe))
                                  (##fx< _%o104157%_ __tmp112162))))
                         _%start104133%_)
                        (let ((_%start104161%_ _%start104133%_))
                          (if ((lambda (_%o104170%_)
                                 (and (fixnum? _%o104170%_)
                                      (let ((__tmp112163
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes104138%_))))
                                        (declare (not safe))
                                        (##fx<= _%start104161%_
                                                _%o104170%_
                                                __tmp112163))))
                               _%end104134%_)
                              (let ((_%end104174%_ _%end104134%_))
                                (__read-u8vector__%
                                 _%bytes104138%_
                                 _%port104148%_
                                 _%start104161%_
                                 _%end104174%_))
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
                                 _%end104134%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@816.22-816.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start104133%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@815.22-815.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port104132%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@814.22-814.27"
               'contract:
               'u8vector?
               'value:
               _%bytes104131%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes104187%_ _%port104188%_)
        (let* ((_%start104190%_ '0)
               (_%end104192%_ (u8vector-length _%bytes104187%_)))
          (read-u8vector__%
           _%bytes104187%_
           _%port104188%_
           _%start104190%_
           _%end104192%_))))
    (define read-u8vector__1
      (lambda (_%bytes104194%_ _%port104195%_ _%start104196%_)
        (let ((_%end104198%_ (u8vector-length _%bytes104194%_)))
          (read-u8vector__%
           _%bytes104194%_
           _%port104195%_
           _%start104196%_
           _%end104198%_))))
    (define read-u8vector
      (lambda _g112164_
        (let ((_g112165_ (let () (declare (not safe)) (##length _g112164_))))
          (cond ((let () (declare (not safe)) (##fx= _g112165_ 2))
                 (apply read-u8vector__0 _g112164_))
                ((let () (declare (not safe)) (##fx= _g112165_ 3))
                 (apply read-u8vector__1 _g112164_))
                ((let () (declare (not safe)) (##fx= _g112165_ 4))
                 (apply read-u8vector__% _g112164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g112164_))))))
    (define __write-u8vector__%
      (lambda (_%bytes105596%_ _%port105597%_ _%start105598%_ _%end105599%_)
        (let* ((_%bytes105602%_ _%bytes105596%_)
               (_%port105610%_ _%port105597%_)
               (_%start105618%_ _%start105598%_)
               (_%end105626%_ _%end105599%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes105602%_
           _%start105618%_
           _%end105626%_
           _%port105610%_))))
    (define __write-u8vector__0
      (lambda (_%bytes105638%_ _%port105639%_)
        (let* ((_%start105641%_ '0)
               (_%end105643%_ (u8vector-length _%bytes105638%_)))
          (__write-u8vector__%
           _%bytes105638%_
           _%port105639%_
           _%start105641%_
           _%end105643%_))))
    (define __write-u8vector__1
      (lambda (_%bytes105645%_ _%port105646%_ _%start105647%_)
        (let ((_%end105649%_ (u8vector-length _%bytes105645%_)))
          (__write-u8vector__%
           _%bytes105645%_
           _%port105646%_
           _%start105647%_
           _%end105649%_))))
    (define __write-u8vector
      (lambda _g112166_
        (let ((_g112167_ (let () (declare (not safe)) (##length _g112166_))))
          (cond ((let () (declare (not safe)) (##fx= _g112167_ 2))
                 (apply __write-u8vector__0 _g112166_))
                ((let () (declare (not safe)) (##fx= _g112167_ 3))
                 (apply __write-u8vector__1 _g112166_))
                ((let () (declare (not safe)) (##fx= _g112167_ 4))
                 (apply __write-u8vector__% _g112166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g112166_))))))
    (define write-u8vector__%
      (lambda (_%bytes104326%_ _%port104327%_ _%start104328%_ _%end104329%_)
        (if (u8vector? _%bytes104326%_)
            (let ((_%bytes104333%_ _%bytes104326%_))
              (if (output-port? _%port104327%_)
                  (let* ((_%port104343%_ _%port104327%_)
                         (_%start104352%_ _%start104328%_))
                    (if ((lambda (_%o104360%_)
                           (and (fixnum? _%o104360%_)
                                (let ((__tmp112168
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes104333%_))))
                                  (declare (not safe))
                                  (##fx<= _%start104352%_
                                          _%o104360%_
                                          __tmp112168))))
                         _%end104329%_)
                        (let ((_%end104364%_ _%end104329%_))
                          (__write-u8vector__%
                           _%bytes104333%_
                           _%port104343%_
                           _%start104352%_
                           _%end104364%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@827.23-827.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end104329%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@825.23-825.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port104327%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@824.23-824.28"
               'contract:
               'u8vector?
               'value:
               _%bytes104326%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes104377%_ _%port104378%_)
        (let* ((_%start104380%_ '0)
               (_%end104382%_ (u8vector-length _%bytes104377%_)))
          (write-u8vector__%
           _%bytes104377%_
           _%port104378%_
           _%start104380%_
           _%end104382%_))))
    (define write-u8vector__1
      (lambda (_%bytes104384%_ _%port104385%_ _%start104386%_)
        (let ((_%end104388%_ (u8vector-length _%bytes104384%_)))
          (write-u8vector__%
           _%bytes104384%_
           _%port104385%_
           _%start104386%_
           _%end104388%_))))
    (define write-u8vector
      (lambda _g112169_
        (let ((_g112170_ (let () (declare (not safe)) (##length _g112169_))))
          (cond ((let () (declare (not safe)) (##fx= _g112170_ 2))
                 (apply write-u8vector__0 _g112169_))
                ((let () (declare (not safe)) (##fx= _g112170_ 3))
                 (apply write-u8vector__1 _g112169_))
                ((let () (declare (not safe)) (##fx= _g112170_ 4))
                 (apply write-u8vector__% _g112169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g112169_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag105564%_
               _%dbg-exprs105565%_
               _%dbg-thunks105566%_
               _%expr105567%_
               _%thunk105568%_)
        (letrec ((_%o105570%_ (current-output-port))
                 (_%e105571%_ (current-error-port))
                 (_%p105572%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f105573%_
                  (lambda ()
                    (force-output _%o105570%_)
                    (force-output _%e105571%_)))
                 (_%d105574%_
                  (lambda (_%x105581%_) (display _%x105581%_ _%e105571%_)))
                 (_%w105575%_
                  (lambda (_%x105583%_) (_%p105572%_ _%x105583%_ _%e105571%_)))
                 (_%n105576%_ (lambda () (newline _%e105571%_)))
                 (_%v105577%_
                  (lambda (_%l105586%_)
                    (for-each
                     (lambda (_%x105588%_)
                       (_%d105574%_ '" ")
                       (_%w105575%_ _%x105588%_))
                     _%l105586%_)
                    (_%n105576%_)))
                 (_%x105578%_
                  (lambda (_%expr105590%_ _%thunk105591%_)
                    (_%f105573%_)
                    (_%d105574%_ '"  ")
                    (_%w105575%_ _%expr105590%_)
                    (_%d105574%_ '" =>")
                    (call-with-values
                     _%thunk105591%_
                     (lambda _%x105593%_
                       (_%v105577%_ _%x105593%_)
                       (_%f105573%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x105593%_)))))))
          (if _%tag105564%_
              (begin
                (if (eq? _%tag105564%_ '#!void)
                    '#!void
                    (begin
                      (_%f105573%_)
                      (_%d105574%_ _%tag105564%_)
                      (_%n105576%_)))
                (for-each _%x105578%_ _%dbg-exprs105565%_ _%dbg-thunks105566%_)
                (if _%thunk105568%_
                    (_%x105578%_ _%expr105567%_ _%thunk105568%_)
                    '#!void))
              (if _%thunk105568%_ (_%thunk105568%_) '#!void)))))))
