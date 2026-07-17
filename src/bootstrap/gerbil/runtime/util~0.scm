(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1784471370)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args117811%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args117811%_))
          (newline))))
    (define display*
      (lambda _%args117808%_
        (let () (declare (not safe)) (##for-each display _%args117808%_))))
    (define __file-newer?
      (lambda (_%file1117599%_ _%file2117600%_)
        (let* ((_%file1117603%_ _%file1117599%_)
               (_%file2117611%_ _%file2117600%_))
          (letrec ((_%__modification-time117755%_
                    (lambda (_%file117796%_)
                      (let* ((_%file117799%_ _%file117796%_)
                             (__tmp120691
                              (let ((__tmp120692
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file117799%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp120692))))
                        (declare (not safe))
                        (##time->seconds __tmp120691))))
                   (_%modification-time117756%_
                    (lambda (_%file117784%_)
                      (let ((_%file117787%_ _%file117784%_))
                        (_%__modification-time117755%_ _%file117787%_)))))
            (let ((__tmp120694
                   (let* ((_%file117758%_ _%file1117603%_)
                          (_%file117762%_ _%file117758%_))
                     (_%__modification-time117755%_ _%file117762%_)))
                  (__tmp120693
                   (let* ((_%file117771%_ _%file2117611%_)
                          (_%file117775%_ _%file117771%_))
                     (_%__modification-time117755%_ _%file117775%_))))
              (declare (not safe))
              (##fl> __tmp120694 __tmp120693))))))
    (define file-newer?
      (lambda (_%file1117574%_ _%file2117575%_)
        (if (string? _%file1117574%_)
            (let ((_%file1117579%_ _%file1117574%_))
              (if (string? _%file2117575%_)
                  (let ((_%file2117589%_ _%file2117575%_))
                    (__file-newer? _%file1117579%_ _%file2117589%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.20-75.25"
                     'contract:
                     'string?
                     'value:
                     _%file2117575%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.20-74.25"
               'contract:
               'string?
               'value:
               _%file1117574%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir117284%_ _%perms117285%_)
        (let* ((_%dir117288%_ _%dir117284%_) (_%perms117296%_ _%perms117285%_))
          (letrec ((_%__create1117440%_
                    (lambda (_%path117549%_)
                      (let ((_%path117552%_ _%path117549%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path117552%_))
                            (if (eq? (file-type _%path117552%_) 'directory)
                                '#!void
                                (begin
                                  (raise-contract-violation-error
                                   '"Path component is not a directory"
                                   'value:
                                   _%path117552%_)
                                  '#!void))
                            (if _%perms117296%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path117552%_
                                             (cons 'permissions:
                                                   (cons _%perms117296%_
                                                         '())))))
                                (create-directory _%path117552%_))))))
                   (_%create1117441%_
                    (lambda (_%path117537%_)
                      (let ((_%path117540%_ _%path117537%_))
                        (_%__create1117440%_ _%path117540%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir117288%_))
                '#!void
                (let _%lp117443%_ ((_%start117445%_ '0))
                  (let ((_%$e117502%_
                         (let* ((_%str117447%_ _%dir117288%_)
                                (_%criterion117450%_ '#\/)
                                (_%start117453%_ _%start117445%_)
                                (_%end117456%_ '#f)
                                (_%str117461%_ _%str117447%_))
                           (if (nonnegative-fixnum? _%start117453%_)
                               (let ((_%start117476%_ _%start117453%_))
                                 (if (let ((_%$e117488%_ '#t))
                                       (and _%$e117488%_ _%$e117488%_))
                                     (let ((_%end117492%_ _%end117456%_))
                                       (__string-index__%
                                        _%str117461%_
                                        _%criterion117450%_
                                        _%start117476%_
                                        _%end117492%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/util
                                        'contract:
                                        '(? (or not fixnum?))
                                        'value:
                                        _%end117456%_)
                                       '#!void)))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start117453%_)
                                 '#!void)))))
                    (if _%$e117502%_
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (##fx> _%$e117502%_ '0))
                              (let* ((_%path117507%_
                                      (substring
                                       _%dir117288%_
                                       '0
                                       _%$e117502%_))
                                     (_%path117511%_ _%path117507%_))
                                (_%__create1117440%_ _%path117511%_))
                              '#!void)
                          (_%lp117443%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%$e117502%_ '1))))
                        (let* ((_%path117523%_ _%dir117288%_)
                               (_%path117527%_ _%path117523%_))
                          (_%__create1117440%_ _%path117527%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir117567%_)
        (let ((_%perms117569%_ '493))
          (__create-directory*__% _%dir117567%_ _%perms117569%_))))
    (define __create-directory*
      (lambda _g120695_
        (let ((_g120696_ (let () (declare (not safe)) (##length _g120695_))))
          (cond ((let () (declare (not safe)) (##fx= _g120696_ 1))
                 (apply __create-directory*__0 _g120695_))
                ((let () (declare (not safe)) (##fx= _g120696_ 2))
                 (apply __create-directory*__% _g120695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g120695_))))))
    (define create-directory*__%
      (lambda (_%dir117248%_ _%perms117249%_)
        (if (string? _%dir117248%_)
            (let ((_%dir117253%_ _%dir117248%_))
              (if (fixnum? _%perms117249%_)
                  (let ((_%perms117263%_ _%perms117249%_))
                    (__create-directory*__% _%dir117253%_ _%perms117263%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@86.26-86.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms117249%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@85.26-85.29"
               'contract:
               'string?
               'value:
               _%dir117248%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir117276%_)
        (let ((_%perms117278%_ '493))
          (create-directory*__% _%dir117276%_ _%perms117278%_))))
    (define create-directory*
      (lambda _g120697_
        (let ((_g120698_ (let () (declare (not safe)) (##length _g120697_))))
          (cond ((let () (declare (not safe)) (##fx= _g120698_ 1))
                 (apply create-directory*__0 _g120697_))
                ((let () (declare (not safe)) (##fx= _g120698_ 2))
                 (apply create-directory*__% _g120697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g120697_))))))
    (define __move-file__%
      (lambda (_%src117191%_ _%dest117192%_ _%replace?117193%_)
        (let* ((_%src117196%_ _%src117191%_)
               (_%dest117204%_ _%dest117192%_)
               (_%replace?117212%_ _%replace?117193%_))
          (letrec ((_%force-move-it117221%_
                    (lambda ()
                      (let ((_%tmp117227%_
                             (if _%replace?117212%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest117204%_))
                                     (let ((__tmp120699
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest117204%_
                                        '"."
                                        __tmp120699))
                                     '#f)
                                 '#f)))
                        (if _%tmp117227%_
                            (rename-file _%dest117204%_ _%tmp117227%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e117229%_)
                           (if _%tmp117227%_
                               (rename-file _%tmp117227%_ _%dest117204%_ '#t)
                               '#!void)
                           (raise _%e117229%_))
                         (lambda ()
                           (let ((_%fi117232%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src117196%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi117232%_))
                                      'symbolic-link)
                                 (let ((__tmp120700
                                        (path-normalize _%src117196%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp120700
                                    _%dest117204%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src117196%_
                                    _%dest117204%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src117196%_))
                           (if _%tmp117227%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp117227%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e117223%_)
               (if (let () (declare (not safe)) (##file-exists? _%src117196%_))
                   (_%force-move-it117221%_)
                   (raise _%e117223%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src117196%_
                  _%dest117204%_
                  _%replace?117212%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src117238%_ _%dest117239%_)
        (let ((_%replace?117241%_ '#t))
          (__move-file__% _%src117238%_ _%dest117239%_ _%replace?117241%_))))
    (define __move-file
      (lambda _g120701_
        (let ((_g120702_ (let () (declare (not safe)) (##length _g120701_))))
          (cond ((let () (declare (not safe)) (##fx= _g120702_ 2))
                 (apply __move-file__0 _g120701_))
                ((let () (declare (not safe)) (##fx= _g120702_ 3))
                 (apply __move-file__% _g120701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g120701_))))))
    (define move-file__%
      (lambda (_%src117142%_ _%dest117143%_ _%replace?117144%_)
        (if (string? _%src117142%_)
            (let ((_%src117148%_ _%src117142%_))
              (if (string? _%dest117143%_)
                  (let ((_%dest117158%_ _%dest117143%_))
                    (if (boolean? _%replace?117144%_)
                        (let ((_%replace?117168%_ _%replace?117144%_))
                          (__move-file__%
                           _%src117148%_
                           _%dest117158%_
                           _%replace?117168%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@111.51-111.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?117144%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@111.34-111.38"
                     'contract:
                     'string?
                     'value:
                     _%dest117143%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@111.18-111.21"
               'contract:
               'string?
               'value:
               _%src117142%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src117181%_ _%dest117182%_)
        (let ((_%replace?117184%_ '#t))
          (move-file__% _%src117181%_ _%dest117182%_ _%replace?117184%_))))
    (define move-file
      (lambda _g120703_
        (let ((_g120704_ (let () (declare (not safe)) (##length _g120703_))))
          (cond ((let () (declare (not safe)) (##fx= _g120704_ 2))
                 (apply move-file__0 _g120703_))
                ((let () (declare (not safe)) (##fx= _g120704_ 3))
                 (apply move-file__% _g120703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g120703_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore117138%_ '#t))
    (define true? (lambda (_%obj117135%_) (eq? _%obj117135%_ '#t)))
    (define false (lambda _%ignore117132%_ '#f))
    (define void (lambda _%ignore117129%_ '#!void))
    (define void? (lambda (_%obj117126%_) (eq? _%obj117126%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj117123%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj117123%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj117120%_) (eq? _%obj117120%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj117117%_) (eq? _%obj117117%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj117114%_) (eq? _%obj117114%_ '#!optional)))
    (define immediate?
      (lambda (_%obj117111%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj117111%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj117108%_)
        (if (fixnum? _%obj117108%_)
            (let () (declare (not safe)) (##fx>= _%obj117108%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj117102%_)
        (let ((_%$e117105%_ (pair? _%obj117102%_)))
          (if _%$e117105%_ _%$e117105%_ (null? _%obj117102%_)))))
    (define values-count
      (lambda (_%obj117099%_)
        (if (let () (declare (not safe)) (##values? _%obj117099%_))
            (let () (declare (not safe)) (##values-length _%obj117099%_))
            '1)))
    (define __values-ref
      (lambda (_%obj117086%_ _%k117087%_)
        (let ((_%k117090%_ _%k117087%_))
          (if (let () (declare (not safe)) (##values? _%obj117086%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj117086%_ _%k117090%_))
              _%obj117086%_))))
    (define values-ref
      (lambda (_%obj117071%_ _%k117072%_)
        (if (fixnum? _%k117072%_)
            (let ((_%k117076%_ _%k117072%_))
              (__values-ref _%obj117071%_ _%k117076%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@245.23-245.24"
               'contract:
               'fixnum?
               'value:
               _%k117072%_)
              '#!void))))
    (define values->list
      (lambda (_%obj117068%_)
        (if (let () (declare (not safe)) (##values? _%obj117068%_))
            (let () (declare (not safe)) (##values->list _%obj117068%_))
            (list _%obj117068%_))))
    (define __foldl1
      (lambda (_%f117016%_ _%iv117017%_ _%lst117018%_)
        (let ((_%f117021%_ _%f117016%_))
          (let _%lp117030%_ ((_%rest117032%_ _%lst117018%_)
                             (_%r117033%_ _%iv117017%_))
            (let* ((_%$%rest117034117042%_ _%rest117032%_)
                   (_%$%else117036117050%_ (lambda () _%r117033%_))
                   (_%$%K117038117056%_
                    (lambda (_%rest117053%_ _%x117054%_)
                      (_%lp117030%_
                       _%rest117053%_
                       (let ()
                         (declare (not safe))
                         (_%f117021%_ _%x117054%_ _%r117033%_))))))
              (if (pair? _%$%rest117034117042%_)
                  (let ((_%$%hd117039117059%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest117034117042%_)))
                        (_%$%tl117040117061%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest117034117042%_))))
                    (let* ((_%x117064%_ _%$%hd117039117059%_)
                           (_%rest117066%_ _%$%tl117040117061%_))
                      (_%$%K117038117056%_ _%rest117066%_ _%x117064%_)))
                  (_%$%else117036117050%_)))))))
    (define foldl1
      (lambda (_%f117000%_ _%iv117001%_ _%lst117002%_)
        (if (procedure? _%f117000%_)
            (let ((_%f117006%_ _%f117000%_))
              (__foldl1 _%f117006%_ _%iv117001%_ _%lst117002%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@268.15-268.16"
               'contract:
               'procedure?
               'value:
               _%f117000%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f116913%_ _%iv116914%_ _%lst1116915%_ _%lst2116916%_)
        (let ((_%f116919%_ _%f116913%_))
          (let _%lp116928%_ ((_%rest1116930%_ _%lst1116915%_)
                             (_%rest2116931%_ _%lst2116916%_)
                             (_%r116932%_ _%iv116914%_))
            (let* ((_%$%rest1116933116941%_ _%rest1116930%_)
                   (_%$%else116935116949%_ (lambda () _%r116932%_))
                   (_%$%K116937116988%_
                    (lambda (_%rest1116952%_ _%x1116953%_)
                      (let* ((_%$%rest2116954116962%_ _%rest2116931%_)
                             (_%$%else116956116970%_ (lambda () _%r116932%_))
                             (_%$%K116958116976%_
                              (lambda (_%rest2116973%_ _%x2116974%_)
                                (_%lp116928%_
                                 _%rest1116952%_
                                 _%rest2116973%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f116919%_
                                    _%x1116953%_
                                    _%x2116974%_
                                    _%r116932%_))))))
                        (if (pair? _%$%rest2116954116962%_)
                            (let ((_%$%hd116959116979%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2116954116962%_)))
                                  (_%$%tl116960116981%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2116954116962%_))))
                              (let* ((_%x2116984%_ _%$%hd116959116979%_)
                                     (_%rest2116986%_ _%$%tl116960116981%_))
                                (_%$%K116958116976%_
                                 _%rest2116986%_
                                 _%x2116984%_)))
                            (_%$%else116956116970%_))))))
              (if (pair? _%$%rest1116933116941%_)
                  (let ((_%$%hd116938116991%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1116933116941%_)))
                        (_%$%tl116939116993%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1116933116941%_))))
                    (let* ((_%x1116996%_ _%$%hd116938116991%_)
                           (_%rest1116998%_ _%$%tl116939116993%_))
                      (_%$%K116937116988%_ _%rest1116998%_ _%x1116996%_)))
                  (_%$%else116935116949%_)))))))
    (define foldl2
      (lambda (_%f116896%_ _%iv116897%_ _%lst1116898%_ _%lst2116899%_)
        (if (procedure? _%f116896%_)
            (let ((_%f116903%_ _%f116896%_))
              (__foldl2
               _%f116903%_
               _%iv116897%_
               _%lst1116898%_
               _%lst2116899%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@275.15-275.16"
               'contract:
               'procedure?
               'value:
               _%f116896%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f116829%_ _%iv116830%_ _%lst116831%_)
        (let* ((_%f116833%_ _%f116829%_)
               (_%iv116836%_ _%iv116830%_)
               (_%lst116839%_ _%lst116831%_))
          (if (procedure? _%f116833%_)
              (let ((_%f116844%_ _%f116833%_))
                (__foldl1 _%f116844%_ _%iv116836%_ _%lst116839%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f116833%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f116857%_ _%iv116858%_ _%lst1116859%_ _%lst2116860%_)
        (let* ((_%f116862%_ _%f116857%_)
               (_%iv116865%_ _%iv116858%_)
               (_%lst1116868%_ _%lst1116859%_)
               (_%lst2116871%_ _%lst2116860%_))
          (if (procedure? _%f116862%_)
              (let ((_%f116876%_ _%f116862%_))
                (__foldl2
                 _%f116876%_
                 _%iv116865%_
                 _%lst1116868%_
                 _%lst2116871%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f116862%_)
                '#!void)))))
    (define foldl
      (lambda _g120705_
        (let ((_g120706_ (let () (declare (not safe)) (##length _g120705_))))
          (cond ((let () (declare (not safe)) (##fx= _g120706_ 3))
                 (apply foldl__0 _g120705_))
                ((let () (declare (not safe)) (##fx= _g120706_ 4))
                 (apply foldl__1 _g120705_))
                ((let () (declare (not safe)) (##fx>= _g120706_ 4))
                 (apply foldl* _g120705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g120705_))))))
    (define __foldl*
      (lambda (_%f116760%_ _%iv116761%_ . _%rest116762%_)
        (let ((_%f116765%_ _%f116760%_))
          (let _%recur116774%_ ((_%iv116776%_ _%iv116761%_)
                                (_%rest116777%_ _%rest116762%_))
            (if (let* ((_%f116779%_ pair?)
                       (_%lst116782%_ _%rest116777%_)
                       (_%f116787%_ _%f116779%_))
                  (__andmap1 _%f116787%_ _%lst116782%_))
                (_%recur116774%_
                 (let ((__tmp120707
                        (let* ((_%f116806%_
                                (lambda (_%xs116803%_ _%r116804%_)
                                  (cons (car _%xs116803%_) _%r116804%_)))
                               (_%iv116809%_ (list _%iv116776%_))
                               (_%lst116812%_ _%rest116777%_)
                               (_%f116817%_ _%f116806%_))
                          (__foldr1 _%f116817%_ _%iv116809%_ _%lst116812%_))))
                   (declare (not safe))
                   (##apply _%f116765%_ __tmp120707))
                 (map cdr _%rest116777%_))
                _%iv116776%_)))))
    (define foldl*
      (lambda (_%f116744%_ _%iv116745%_ . _%rest116746%_)
        (if (procedure? _%f116744%_)
            (let ((_%f116750%_ _%f116744%_))
              (declare (not safe))
              (##apply __foldl* _%f116750%_ _%iv116745%_ _%rest116746%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@293.15-293.16"
               'contract:
               'procedure?
               'value:
               _%f116744%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f116693%_ _%iv116694%_ _%lst116695%_)
        (let ((_%f116698%_ _%f116693%_))
          (let _%recur116707%_ ((_%rest116709%_ _%lst116695%_))
            (let* ((_%$%rest116710116718%_ _%rest116709%_)
                   (_%$%else116712116726%_ (lambda () _%iv116694%_))
                   (_%$%K116714116732%_
                    (lambda (_%rest116729%_ _%x116730%_)
                      (let ((__tmp120708 (_%recur116707%_ _%rest116729%_)))
                        (declare (not safe))
                        (_%f116698%_ _%x116730%_ __tmp120708)))))
              (if (pair? _%$%rest116710116718%_)
                  (let ((_%$%hd116715116735%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest116710116718%_)))
                        (_%$%tl116716116737%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest116710116718%_))))
                    (let* ((_%x116740%_ _%$%hd116715116735%_)
                           (_%rest116742%_ _%$%tl116716116737%_))
                      (_%$%K116714116732%_ _%rest116742%_ _%x116740%_)))
                  (_%$%else116712116726%_)))))))
    (define foldr1
      (lambda (_%f116677%_ _%iv116678%_ _%lst116679%_)
        (if (procedure? _%f116677%_)
            (let ((_%f116683%_ _%f116677%_))
              (__foldr1 _%f116683%_ _%iv116678%_ _%lst116679%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@303.15-303.16"
               'contract:
               'procedure?
               'value:
               _%f116677%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f116591%_ _%iv116592%_ _%lst1116593%_ _%lst2116594%_)
        (let ((_%f116597%_ _%f116591%_))
          (let _%recur116606%_ ((_%rest1116608%_ _%lst1116593%_)
                                (_%rest2116609%_ _%lst2116594%_))
            (let* ((_%$%rest1116610116618%_ _%rest1116608%_)
                   (_%$%else116612116626%_ (lambda () _%iv116592%_))
                   (_%$%K116614116665%_
                    (lambda (_%rest1116629%_ _%x1116630%_)
                      (let* ((_%$%rest2116631116639%_ _%rest2116609%_)
                             (_%$%else116633116647%_ (lambda () _%iv116592%_))
                             (_%$%K116635116653%_
                              (lambda (_%rest2116650%_ _%x2116651%_)
                                (let ((__tmp120709
                                       (_%recur116606%_
                                        _%rest1116629%_
                                        _%rest2116650%_)))
                                  (declare (not safe))
                                  (_%f116597%_
                                   _%x1116630%_
                                   _%x2116651%_
                                   __tmp120709)))))
                        (if (pair? _%$%rest2116631116639%_)
                            (let ((_%$%hd116636116656%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2116631116639%_)))
                                  (_%$%tl116637116658%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2116631116639%_))))
                              (let* ((_%x2116661%_ _%$%hd116636116656%_)
                                     (_%rest2116663%_ _%$%tl116637116658%_))
                                (_%$%K116635116653%_
                                 _%rest2116663%_
                                 _%x2116661%_)))
                            (_%$%else116633116647%_))))))
              (if (pair? _%$%rest1116610116618%_)
                  (let ((_%$%hd116615116668%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1116610116618%_)))
                        (_%$%tl116616116670%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1116610116618%_))))
                    (let* ((_%x1116673%_ _%$%hd116615116668%_)
                           (_%rest1116675%_ _%$%tl116616116670%_))
                      (_%$%K116614116665%_ _%rest1116675%_ _%x1116673%_)))
                  (_%$%else116612116626%_)))))))
    (define foldr2
      (lambda (_%f116574%_ _%iv116575%_ _%lst1116576%_ _%lst2116577%_)
        (if (procedure? _%f116574%_)
            (let ((_%f116581%_ _%f116574%_))
              (__foldr2
               _%f116581%_
               _%iv116575%_
               _%lst1116576%_
               _%lst2116577%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@310.15-310.16"
               'contract:
               'procedure?
               'value:
               _%f116574%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f116507%_ _%iv116508%_ _%lst116509%_)
        (let* ((_%f116511%_ _%f116507%_)
               (_%iv116514%_ _%iv116508%_)
               (_%lst116517%_ _%lst116509%_))
          (if (procedure? _%f116511%_)
              (let ((_%f116522%_ _%f116511%_))
                (__foldr1 _%f116522%_ _%iv116514%_ _%lst116517%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f116511%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f116535%_ _%iv116536%_ _%lst1116537%_ _%lst2116538%_)
        (let* ((_%f116540%_ _%f116535%_)
               (_%iv116543%_ _%iv116536%_)
               (_%lst1116546%_ _%lst1116537%_)
               (_%lst2116549%_ _%lst2116538%_))
          (if (procedure? _%f116540%_)
              (let ((_%f116554%_ _%f116540%_))
                (__foldr2
                 _%f116554%_
                 _%iv116543%_
                 _%lst1116546%_
                 _%lst2116549%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f116540%_)
                '#!void)))))
    (define foldr
      (lambda _g120710_
        (let ((_g120711_ (let () (declare (not safe)) (##length _g120710_))))
          (cond ((let () (declare (not safe)) (##fx= _g120711_ 3))
                 (apply foldr__0 _g120710_))
                ((let () (declare (not safe)) (##fx= _g120711_ 4))
                 (apply foldr__1 _g120710_))
                ((let () (declare (not safe)) (##fx>= _g120711_ 4))
                 (apply foldr* _g120710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g120710_))))))
    (define __foldr*
      (lambda (_%f116439%_ _%iv116440%_ . _%rest116441%_)
        (let ((_%f116444%_ _%f116439%_))
          (let _%recur116453%_ ((_%rest116455%_ _%rest116441%_))
            (if (let* ((_%f116457%_ pair?)
                       (_%lst116460%_ _%rest116455%_)
                       (_%f116465%_ _%f116457%_))
                  (__andmap1 _%f116465%_ _%lst116460%_))
                (let ((__tmp120712
                       (let* ((_%f116484%_
                               (lambda (_%xs116481%_ _%r116482%_)
                                 (cons (car _%xs116481%_) _%r116482%_)))
                              (_%iv116487%_
                               (list (_%recur116453%_
                                      (map cdr _%rest116455%_))))
                              (_%lst116490%_ _%rest116455%_)
                              (_%f116495%_ _%f116484%_))
                         (__foldr1 _%f116495%_ _%iv116487%_ _%lst116490%_))))
                  (declare (not safe))
                  (##apply _%f116444%_ __tmp120712))
                _%iv116440%_)))))
    (define foldr*
      (lambda (_%f116423%_ _%iv116424%_ . _%rest116425%_)
        (if (procedure? _%f116423%_)
            (let ((_%f116429%_ _%f116423%_))
              (declare (not safe))
              (##apply __foldr* _%f116429%_ _%iv116424%_ _%rest116425%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@328.15-328.16"
               'contract:
               'procedure?
               'value:
               _%f116423%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%lists116310%_)
        (letrec ((_%process-tails!116312%_
                  (lambda (_%previous-cell116367%_ _%rest116368%_)
                    (let* ((_%$%rest116369116382%_ _%rest116368%_)
                           (_%$%E116373116386%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rest116369116382%_
                                     '([[] . r])
                                     '([_ . r])
                                     '(_))
                              '#!void)))
                      (let ((_%$%K116378116413%_
                             (lambda (_%r116411%_)
                               (let ((__tmp120714 _%previous-cell116367%_)
                                     (__tmp120713 (remove-nulls! _%r116411%_)))
                                 (declare (not safe))
                                 (##set-cdr! __tmp120714 __tmp120713))))
                            (_%$%K116375116400%_
                             (lambda (_%r116398%_)
                               (_%process-tails!116312%_
                                _%rest116368%_
                                _%r116398%_)))
                            (_%$%K116374116391%_ (lambda () '#!void)))
                        (if (pair? _%$%rest116369116382%_)
                            (let ((_%$%tl116380116418%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest116369116382%_)))
                                  (_%$%hd116379116416%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest116369116382%_))))
                              (if (null? _%$%hd116379116416%_)
                                  (let ((_%r116421%_ _%$%tl116380116418%_))
                                    (_%$%K116378116413%_ _%r116421%_))
                                  (let ((_%r116406%_ _%$%tl116380116418%_))
                                    (_%$%K116375116400%_ _%r116406%_))))
                            '#!void))))))
          (let* ((_%$%lists116313116326%_ _%lists116310%_)
                 (_%$%E116317116330%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%lists116313116326%_
                           '([[] . r])
                           '([_ . r])
                           '(_))
                    '#!void)))
            (let ((_%$%K116322116357%_
                   (lambda (_%r116355%_) (remove-nulls! _%r116355%_)))
                  (_%$%K116319116344%_
                   (lambda (_%r116342%_)
                     (_%process-tails!116312%_ _%lists116310%_ _%r116342%_)
                     _%lists116310%_))
                  (_%$%K116318116335%_ (lambda () _%lists116310%_)))
              (if (pair? _%$%lists116313116326%_)
                  (let ((_%$%tl116324116362%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%lists116313116326%_)))
                        (_%$%hd116323116360%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%lists116313116326%_))))
                    (if (null? _%$%hd116323116360%_)
                        (let ((_%r116365%_ _%$%tl116324116362%_))
                          (remove-nulls! _%r116365%_))
                        (let ((_%r116350%_ _%$%tl116324116362%_))
                          (_%$%K116319116344%_ _%r116350%_))))
                  (_%$%K116318116335%_)))))))
    (define append1!
      (lambda (_%l116295%_ _%x116296%_)
        (let ((_%l2116299%_ (cons _%x116296%_ '())))
          (if (pair? _%l116295%_)
              (let ((_%l116301%_ _%l116295%_))
                (let ((__tmp120715
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l116301%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp120715 _%l2116299%_))
                _%l116301%_)
              _%l2116299%_))))
    (define __append-reverse-until
      (lambda (_%pred116237%_ _%rhead116238%_ _%tail116239%_)
        (let ((_%pred116242%_ _%pred116237%_))
          (let _%loop116251%_ ((_%rhead116253%_ _%rhead116238%_)
                               (_%tail116254%_ _%tail116239%_))
            (let* ((_%$%rhead116256116265%_ _%rhead116253%_)
                   (_%$%E116259116269%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rhead116256116265%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%$%K116263116292%_
                     (lambda () (values '() _%tail116254%_)))
                    (_%$%K116260116276%_
                     (lambda (_%r116273%_ _%a116274%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred116242%_ _%a116274%_))
                           (values _%rhead116253%_ _%tail116254%_)
                           (_%loop116251%_
                            _%r116273%_
                            (cons _%a116274%_ _%tail116254%_))))))
                (let ((_%$%try-match116258116288%_
                       (lambda ()
                         (if (pair? _%$%rhead116256116265%_)
                             (let ((_%$%tl116262116281%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rhead116256116265%_)))
                                   (_%$%hd116261116279%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rhead116256116265%_))))
                               (let ((_%a116284%_ _%$%hd116261116279%_)
                                     (_%r116286%_ _%$%tl116262116281%_))
                                 (_%$%K116260116276%_
                                  _%r116286%_
                                  _%a116284%_)))
                             (_%$%E116259116269%_)))))
                  (if (null? _%$%rhead116256116265%_)
                      (_%$%K116263116292%_)
                      (_%$%try-match116258116288%_)))))))))
    (define append-reverse-until
      (lambda (_%pred116221%_ _%rhead116222%_ _%tail116223%_)
        (if (procedure? _%pred116221%_)
            (let ((_%pred116227%_ _%pred116221%_))
              (__append-reverse-until
               _%pred116227%_
               _%rhead116222%_
               _%tail116223%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@366.29-366.33"
               'contract:
               'procedure?
               'value:
               _%pred116221%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f116170%_ _%lst116171%_)
        (let ((_%f116174%_ _%f116170%_))
          (let _%lp116183%_ ((_%rest116185%_ _%lst116171%_))
            (let* ((_%$%rest116187116195%_ _%rest116185%_)
                   (_%$%else116189116203%_ (lambda () '#t))
                   (_%$%K116191116209%_
                    (lambda (_%rest116206%_ _%x116207%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f116174%_ _%x116207%_))
                          (_%lp116183%_ _%rest116206%_)
                          '#f))))
              (if (pair? _%$%rest116187116195%_)
                  (let ((_%$%hd116192116212%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest116187116195%_)))
                        (_%$%tl116193116214%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest116187116195%_))))
                    (let* ((_%x116217%_ _%$%hd116192116212%_)
                           (_%rest116219%_ _%$%tl116193116214%_))
                      (_%$%K116191116209%_ _%rest116219%_ _%x116217%_)))
                  (_%$%else116189116203%_)))))))
    (define andmap1
      (lambda (_%f116155%_ _%lst116156%_)
        (if (procedure? _%f116155%_)
            (let ((_%f116160%_ _%f116155%_))
              (__andmap1 _%f116160%_ _%lst116156%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f116155%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f116069%_ _%lst1116070%_ _%lst2116071%_)
        (let ((_%f116074%_ _%f116069%_))
          (let _%lp116083%_ ((_%rest1116085%_ _%lst1116070%_)
                             (_%rest2116086%_ _%lst2116071%_))
            (let* ((_%$%rest1116088116096%_ _%rest1116085%_)
                   (_%$%else116090116104%_ (lambda () '#t))
                   (_%$%K116092116143%_
                    (lambda (_%rest1116107%_ _%x1116108%_)
                      (let* ((_%$%rest2116109116117%_ _%rest2116086%_)
                             (_%$%else116111116125%_ (lambda () '#t))
                             (_%$%K116113116131%_
                              (lambda (_%rest2116128%_ _%x2116129%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f116074%_ _%x1116108%_ _%x2116129%_))
                                    (_%lp116083%_
                                     _%rest1116107%_
                                     _%rest2116128%_)
                                    '#f))))
                        (if (pair? _%$%rest2116109116117%_)
                            (let ((_%$%hd116114116134%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2116109116117%_)))
                                  (_%$%tl116115116136%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2116109116117%_))))
                              (let* ((_%x2116139%_ _%$%hd116114116134%_)
                                     (_%rest2116141%_ _%$%tl116115116136%_))
                                (_%$%K116113116131%_
                                 _%rest2116141%_
                                 _%x2116139%_)))
                            (_%$%else116111116125%_))))))
              (if (pair? _%$%rest1116088116096%_)
                  (let ((_%$%hd116093116146%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1116088116096%_)))
                        (_%$%tl116094116148%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1116088116096%_))))
                    (let* ((_%x1116151%_ _%$%hd116093116146%_)
                           (_%rest1116153%_ _%$%tl116094116148%_))
                      (_%$%K116092116143%_ _%rest1116153%_ _%x1116151%_)))
                  (_%$%else116090116104%_)))))))
    (define andmap2
      (lambda (_%f116053%_ _%lst1116054%_ _%lst2116055%_)
        (if (procedure? _%f116053%_)
            (let ((_%f116059%_ _%f116053%_))
              (__andmap2 _%f116059%_ _%lst1116054%_ _%lst2116055%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@386.16-386.17"
               'contract:
               'procedure?
               'value:
               _%f116053%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f115997%_ _%lst115998%_)
        (let* ((_%f116000%_ _%f115997%_) (_%lst116003%_ _%lst115998%_))
          (if (procedure? _%f116000%_)
              (let ((_%f116008%_ _%f116000%_))
                (__andmap1 _%f116008%_ _%lst116003%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f116000%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f116020%_ _%lst1116021%_ _%lst2116022%_)
        (let* ((_%f116024%_ _%f116020%_)
               (_%lst1116027%_ _%lst1116021%_)
               (_%lst2116030%_ _%lst2116022%_))
          (if (procedure? _%f116024%_)
              (let ((_%f116035%_ _%f116024%_))
                (__andmap2 _%f116035%_ _%lst1116027%_ _%lst2116030%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f116024%_)
                '#!void)))))
    (define andmap
      (lambda _g120716_
        (let ((_g120717_ (let () (declare (not safe)) (##length _g120716_))))
          (cond ((let () (declare (not safe)) (##fx= _g120717_ 2))
                 (apply andmap__0 _g120716_))
                ((let () (declare (not safe)) (##fx= _g120717_ 3))
                 (apply andmap__1 _g120716_))
                ((let () (declare (not safe)) (##fx>= _g120717_ 3))
                 (apply andmap* _g120716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g120716_))))))
    (define __andmap*
      (lambda (_%f115954%_ . _%rest115955%_)
        (let ((_%f115958%_ _%f115954%_))
          (let _%recur115967%_ ((_%rest115969%_ _%rest115955%_))
            (if (let* ((_%f115972%_ pair?)
                       (_%lst115975%_ _%rest115969%_)
                       (_%f115980%_ _%f115972%_))
                  (__andmap1 _%f115980%_ _%lst115975%_))
                (if (let ((__tmp120718 (map car _%rest115969%_)))
                      (declare (not safe))
                      (##apply _%f115958%_ __tmp120718))
                    (_%recur115967%_ (map cdr _%rest115969%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f115939%_ . _%rest115940%_)
        (if (procedure? _%f115939%_)
            (let ((_%f115944%_ _%f115939%_))
              (declare (not safe))
              (##apply __andmap* _%f115944%_ _%rest115940%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.16-406.17"
               'contract:
               'procedure?
               'value:
               _%f115939%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f115886%_ _%lst115887%_)
        (let ((_%f115890%_ _%f115886%_))
          (let _%lp115899%_ ((_%rest115901%_ _%lst115887%_))
            (let* ((_%$%rest115902115910%_ _%rest115901%_)
                   (_%$%else115904115918%_ (lambda () '#f))
                   (_%$%K115906115927%_
                    (lambda (_%rest115921%_ _%x115922%_)
                      (let ((_%$e115924%_
                             (let ()
                               (declare (not safe))
                               (_%f115890%_ _%x115922%_))))
                        (if _%$e115924%_
                            _%$e115924%_
                            (_%lp115899%_ _%rest115921%_))))))
              (if (pair? _%$%rest115902115910%_)
                  (let ((_%$%hd115907115930%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest115902115910%_)))
                        (_%$%tl115908115932%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest115902115910%_))))
                    (let* ((_%x115935%_ _%$%hd115907115930%_)
                           (_%rest115937%_ _%$%tl115908115932%_))
                      (_%$%K115906115927%_ _%rest115937%_ _%x115935%_)))
                  (_%$%else115904115918%_)))))))
    (define ormap1
      (lambda (_%f115871%_ _%lst115872%_)
        (if (procedure? _%f115871%_)
            (let ((_%f115876%_ _%f115871%_))
              (__ormap1 _%f115876%_ _%lst115872%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@415.15-415.16"
               'contract:
               'procedure?
               'value:
               _%f115871%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f115783%_ _%lst1115784%_ _%lst2115785%_)
        (let ((_%f115788%_ _%f115783%_))
          (let _%lp115797%_ ((_%rest1115799%_ _%lst1115784%_)
                             (_%rest2115800%_ _%lst2115785%_))
            (let* ((_%$%rest1115801115809%_ _%rest1115799%_)
                   (_%$%else115803115817%_ (lambda () '#f))
                   (_%$%K115805115859%_
                    (lambda (_%rest1115820%_ _%x1115821%_)
                      (let* ((_%$%rest2115822115830%_ _%rest2115800%_)
                             (_%$%else115824115838%_ (lambda () '#f))
                             (_%$%K115826115847%_
                              (lambda (_%rest2115841%_ _%x2115842%_)
                                (let ((_%$e115844%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f115788%_
                                          _%x1115821%_
                                          _%x2115842%_))))
                                  (if _%$e115844%_
                                      _%$e115844%_
                                      (_%lp115797%_
                                       _%rest1115820%_
                                       _%rest2115841%_))))))
                        (if (pair? _%$%rest2115822115830%_)
                            (let ((_%$%hd115827115850%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2115822115830%_)))
                                  (_%$%tl115828115852%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2115822115830%_))))
                              (let* ((_%x2115855%_ _%$%hd115827115850%_)
                                     (_%rest2115857%_ _%$%tl115828115852%_))
                                (_%$%K115826115847%_
                                 _%rest2115857%_
                                 _%x2115855%_)))
                            (_%$%else115824115838%_))))))
              (if (pair? _%$%rest1115801115809%_)
                  (let ((_%$%hd115806115862%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1115801115809%_)))
                        (_%$%tl115807115864%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1115801115809%_))))
                    (let* ((_%x1115867%_ _%$%hd115806115862%_)
                           (_%rest1115869%_ _%$%tl115807115864%_))
                      (_%$%K115805115859%_ _%rest1115869%_ _%x1115867%_)))
                  (_%$%else115803115817%_)))))))
    (define ormap2
      (lambda (_%f115767%_ _%lst1115768%_ _%lst2115769%_)
        (if (procedure? _%f115767%_)
            (let ((_%f115773%_ _%f115767%_))
              (__ormap2 _%f115773%_ _%lst1115768%_ _%lst2115769%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@422.15-422.16"
               'contract:
               'procedure?
               'value:
               _%f115767%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f115711%_ _%lst115712%_)
        (let* ((_%f115714%_ _%f115711%_) (_%lst115717%_ _%lst115712%_))
          (if (procedure? _%f115714%_)
              (let ((_%f115722%_ _%f115714%_))
                (__ormap1 _%f115722%_ _%lst115717%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f115714%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f115734%_ _%lst1115735%_ _%lst2115736%_)
        (let* ((_%f115738%_ _%f115734%_)
               (_%lst1115741%_ _%lst1115735%_)
               (_%lst2115744%_ _%lst2115736%_))
          (if (procedure? _%f115738%_)
              (let ((_%f115749%_ _%f115738%_))
                (__ormap2 _%f115749%_ _%lst1115741%_ _%lst2115744%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f115738%_)
                '#!void)))))
    (define ormap
      (lambda _g120719_
        (let ((_g120720_ (let () (declare (not safe)) (##length _g120719_))))
          (cond ((let () (declare (not safe)) (##fx= _g120720_ 2))
                 (apply ormap__0 _g120719_))
                ((let () (declare (not safe)) (##fx= _g120720_ 3))
                 (apply ormap__1 _g120719_))
                ((let () (declare (not safe)) (##fx>= _g120720_ 3))
                 (apply ormap* _g120719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g120719_))))))
    (define __ormap*
      (lambda (_%f115667%_ . _%rest115668%_)
        (let ((_%f115671%_ _%f115667%_))
          (let _%recur115680%_ ((_%rest115682%_ _%rest115668%_))
            (if (let* ((_%f115684%_ pair?)
                       (_%lst115687%_ _%rest115682%_)
                       (_%f115692%_ _%f115684%_))
                  (__andmap1 _%f115692%_ _%lst115687%_))
                (let ((_%$e115708%_
                       (let ((__tmp120721 (map car _%rest115682%_)))
                         (declare (not safe))
                         (##apply _%f115671%_ __tmp120721))))
                  (if _%$e115708%_
                      _%$e115708%_
                      (_%recur115680%_ (map cdr _%rest115682%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f115652%_ . _%rest115653%_)
        (if (procedure? _%f115652%_)
            (let ((_%f115657%_ _%f115652%_))
              (declare (not safe))
              (##apply __ormap* _%f115657%_ _%rest115653%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@440.15-440.16"
               'contract:
               'procedure?
               'value:
               _%f115652%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f115595%_ _%lst115596%_)
        (let ((_%f115599%_ _%f115595%_))
          (let _%recur115608%_ ((_%rest115610%_ _%lst115596%_))
            (let* ((_%$%rest115612115620%_ _%rest115610%_)
                   (_%$%else115614115628%_ (lambda () '()))
                   (_%$%K115616115640%_
                    (lambda (_%rest115631%_ _%x115632%_)
                      (let ((_%$e115634%_
                             (let ()
                               (declare (not safe))
                               (_%f115599%_ _%x115632%_))))
                        (if _%$e115634%_
                            (cons _%$e115634%_
                                  (_%recur115608%_ _%rest115631%_))
                            (_%recur115608%_ _%rest115631%_))))))
              (if (pair? _%$%rest115612115620%_)
                  (let ((_%$%hd115617115643%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest115612115620%_)))
                        (_%$%tl115618115645%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest115612115620%_))))
                    (let* ((_%x115648%_ _%$%hd115617115643%_)
                           (_%rest115650%_ _%$%tl115618115645%_))
                      (_%$%K115616115640%_ _%rest115650%_ _%x115648%_)))
                  (_%$%else115614115628%_)))))))
    (define filter-map1
      (lambda (_%f115580%_ _%lst115581%_)
        (if (procedure? _%f115580%_)
            (let ((_%f115585%_ _%f115580%_))
              (__filter-map1 _%f115585%_ _%lst115581%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@447.20-447.21"
               'contract:
               'procedure?
               'value:
               _%f115580%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f115488%_ _%lst1115489%_ _%lst2115490%_)
        (let ((_%f115493%_ _%f115488%_))
          (let _%recur115502%_ ((_%rest1115504%_ _%lst1115489%_)
                                (_%rest2115505%_ _%lst2115490%_))
            (let* ((_%$%rest1115507115515%_ _%rest1115504%_)
                   (_%$%else115509115523%_ (lambda () '()))
                   (_%$%K115511115568%_
                    (lambda (_%rest1115526%_ _%x1115527%_)
                      (let* ((_%$%rest2115528115536%_ _%rest2115505%_)
                             (_%$%else115530115544%_ (lambda () '()))
                             (_%$%K115532115556%_
                              (lambda (_%rest2115547%_ _%x2115548%_)
                                (let ((_%$e115550%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f115493%_
                                          _%x1115527%_
                                          _%x2115548%_))))
                                  (if _%$e115550%_
                                      (cons _%$e115550%_
                                            (_%recur115502%_
                                             _%rest1115526%_
                                             _%rest2115547%_))
                                      (_%recur115502%_
                                       _%rest1115526%_
                                       _%rest2115547%_))))))
                        (if (pair? _%$%rest2115528115536%_)
                            (let ((_%$%hd115533115559%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2115528115536%_)))
                                  (_%$%tl115534115561%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2115528115536%_))))
                              (let* ((_%x2115564%_ _%$%hd115533115559%_)
                                     (_%rest2115566%_ _%$%tl115534115561%_))
                                (_%$%K115532115556%_
                                 _%rest2115566%_
                                 _%x2115564%_)))
                            (_%$%else115530115544%_))))))
              (if (pair? _%$%rest1115507115515%_)
                  (let ((_%$%hd115512115571%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1115507115515%_)))
                        (_%$%tl115513115573%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1115507115515%_))))
                    (let* ((_%x1115576%_ _%$%hd115512115571%_)
                           (_%rest1115578%_ _%$%tl115513115573%_))
                      (_%$%K115511115568%_ _%rest1115578%_ _%x1115576%_)))
                  (_%$%else115509115523%_)))))))
    (define filter-map2
      (lambda (_%f115472%_ _%lst1115473%_ _%lst2115474%_)
        (if (procedure? _%f115472%_)
            (let ((_%f115478%_ _%f115472%_))
              (__filter-map2 _%f115478%_ _%lst1115473%_ _%lst2115474%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@458.20-458.21"
               'contract:
               'procedure?
               'value:
               _%f115472%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f115416%_ _%lst115417%_)
        (let* ((_%f115419%_ _%f115416%_) (_%lst115422%_ _%lst115417%_))
          (if (procedure? _%f115419%_)
              (let ((_%f115427%_ _%f115419%_))
                (__filter-map1 _%f115427%_ _%lst115422%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f115419%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f115439%_ _%lst1115440%_ _%lst2115441%_)
        (let* ((_%f115443%_ _%f115439%_)
               (_%lst1115446%_ _%lst1115440%_)
               (_%lst2115449%_ _%lst2115441%_))
          (if (procedure? _%f115443%_)
              (let ((_%f115454%_ _%f115443%_))
                (__filter-map2 _%f115454%_ _%lst1115446%_ _%lst2115449%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f115443%_)
                '#!void)))))
    (define filter-map
      (lambda _g120722_
        (let ((_g120723_ (let () (declare (not safe)) (##length _g120722_))))
          (cond ((let () (declare (not safe)) (##fx= _g120723_ 2))
                 (apply filter-map__0 _g120722_))
                ((let () (declare (not safe)) (##fx= _g120723_ 3))
                 (apply filter-map__1 _g120722_))
                ((let () (declare (not safe)) (##fx>= _g120723_ 3))
                 (apply filter-map* _g120722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g120722_))))))
    (define __filter-map*
      (lambda (_%f115367%_ . _%rest115368%_)
        (let ((_%f115371%_ _%f115367%_))
          (let _%recur115380%_ ((_%rest115382%_ _%rest115368%_))
            (if (let* ((_%f115385%_ pair?)
                       (_%lst115388%_ _%rest115382%_)
                       (_%f115393%_ _%f115385%_))
                  (__andmap1 _%f115393%_ _%lst115388%_))
                (let ((_%$e115410%_
                       (let ((__tmp120724 (map car _%rest115382%_)))
                         (declare (not safe))
                         (##apply _%f115371%_ __tmp120724))))
                  (if _%$e115410%_
                      (cons _%$e115410%_
                            (_%recur115380%_ (map cdr _%rest115382%_)))
                      (_%recur115380%_ (map cdr _%rest115382%_))))
                '())))))
    (define filter-map*
      (lambda (_%f115352%_ . _%rest115353%_)
        (if (procedure? _%f115352%_)
            (let ((_%f115357%_ _%f115352%_))
              (declare (not safe))
              (##apply __filter-map* _%f115357%_ _%rest115353%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@480.20-480.21"
               'contract:
               'procedure?
               'value:
               _%f115352%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key115328%_ _%lst115330%_ _%default115332%_)
        (let ((_%$e115335%_
               (if (pair? _%lst115330%_)
                   (assq _%key115328%_ _%lst115330%_)
                   '#f)))
          (if _%$e115335%_
              (cdr _%$e115335%_)
              (if (procedure? _%default115332%_)
                  (_%default115332%_ _%key115328%_)
                  _%default115332%_)))))
    (define agetq__0
      (lambda (_%key115343%_ _%lst115344%_)
        (let ((_%default115346%_ '#f))
          (agetq__% _%key115343%_ _%lst115344%_ _%default115346%_))))
    (define agetq
      (lambda _g120725_
        (let ((_g120726_ (let () (declare (not safe)) (##length _g120725_))))
          (cond ((let () (declare (not safe)) (##fx= _g120726_ 2))
                 (apply agetq__0 _g120725_))
                ((let () (declare (not safe)) (##fx= _g120726_ 3))
                 (apply agetq__% _g120725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g120725_))))))
    (define agetv__%
      (lambda (_%key115303%_ _%lst115305%_ _%default115307%_)
        (let ((_%$e115310%_
               (if (pair? _%lst115305%_)
                   (assv _%key115303%_ _%lst115305%_)
                   '#f)))
          (if _%$e115310%_
              (cdr _%$e115310%_)
              (if (procedure? _%default115307%_)
                  (_%default115307%_ _%key115303%_)
                  _%default115307%_)))))
    (define agetv__0
      (lambda (_%key115318%_ _%lst115319%_)
        (let ((_%default115321%_ '#f))
          (agetv__% _%key115318%_ _%lst115319%_ _%default115321%_))))
    (define agetv
      (lambda _g120727_
        (let ((_g120728_ (let () (declare (not safe)) (##length _g120727_))))
          (cond ((let () (declare (not safe)) (##fx= _g120728_ 2))
                 (apply agetv__0 _g120727_))
                ((let () (declare (not safe)) (##fx= _g120728_ 3))
                 (apply agetv__% _g120727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g120727_))))))
    (define aget__%
      (lambda (_%key115278%_ _%lst115280%_ _%default115282%_)
        (let ((_%$e115285%_
               (if (pair? _%lst115280%_)
                   (assoc _%key115278%_ _%lst115280%_)
                   '#f)))
          (if _%$e115285%_
              (cdr _%$e115285%_)
              (if (procedure? _%default115282%_)
                  (_%default115282%_ _%key115278%_)
                  _%default115282%_)))))
    (define aget__0
      (lambda (_%key115293%_ _%lst115294%_)
        (let ((_%default115296%_ '#f))
          (aget__% _%key115293%_ _%lst115294%_ _%default115296%_))))
    (define aget
      (lambda _g120729_
        (let ((_g120730_ (let () (declare (not safe)) (##length _g120729_))))
          (cond ((let () (declare (not safe)) (##fx= _g120730_ 2))
                 (apply aget__0 _g120729_))
                ((let () (declare (not safe)) (##fx= _g120730_ 3))
                 (apply aget__% _g120729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g120729_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key115207%_ _%lst115209%_ _%default115211%_)
        (let _%lp115214%_ ((_%rest115217%_ _%lst115209%_))
          (let* ((_%$%rest115219115229%_ _%rest115217%_)
                 (_%$%else115221115237%_
                  (lambda ()
                    (if (procedure? _%default115211%_)
                        (_%default115211%_ _%key115207%_)
                        _%default115211%_)))
                 (_%$%K115223115246%_
                  (lambda (_%rest115240%_ _%v115241%_ _%k115243%_)
                    (if (eq? _%k115243%_ _%key115207%_)
                        _%v115241%_
                        (_%lp115214%_ _%rest115240%_)))))
            (if (pair? _%$%rest115219115229%_)
                (let ((_%$%hd115224115249%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest115219115229%_)))
                      (_%$%tl115225115251%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest115219115229%_))))
                  (let ((_%k115254%_ _%$%hd115224115249%_))
                    (if (pair? _%$%tl115225115251%_)
                        (let ((_%$%hd115226115256%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl115225115251%_)))
                              (_%$%tl115227115258%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl115225115251%_))))
                          (let* ((_%v115261%_ _%$%hd115226115256%_)
                                 (_%rest115263%_ _%$%tl115227115258%_))
                            (_%$%K115223115246%_
                             _%rest115263%_
                             _%v115261%_
                             _%k115254%_)))
                        (_%$%else115221115237%_))))
                (_%$%else115221115237%_))))))
    (define pgetq__0
      (lambda (_%key115268%_ _%lst115269%_)
        (let ((_%default115271%_ '#f))
          (pgetq__% _%key115268%_ _%lst115269%_ _%default115271%_))))
    (define pgetq
      (lambda _g120731_
        (let ((_g120732_ (let () (declare (not safe)) (##length _g120731_))))
          (cond ((let () (declare (not safe)) (##fx= _g120732_ 2))
                 (apply pgetq__0 _g120731_))
                ((let () (declare (not safe)) (##fx= _g120732_ 3))
                 (apply pgetq__% _g120731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g120731_))))))
    (define pgetv__%
      (lambda (_%key115136%_ _%lst115138%_ _%default115140%_)
        (let _%lp115143%_ ((_%rest115146%_ _%lst115138%_))
          (let* ((_%$%rest115148115158%_ _%rest115146%_)
                 (_%$%else115150115166%_
                  (lambda ()
                    (if (procedure? _%default115140%_)
                        (_%default115140%_ _%key115136%_)
                        _%default115140%_)))
                 (_%$%K115152115175%_
                  (lambda (_%rest115169%_ _%v115170%_ _%k115172%_)
                    (if (eqv? _%k115172%_ _%key115136%_)
                        _%v115170%_
                        (_%lp115143%_ _%rest115169%_)))))
            (if (pair? _%$%rest115148115158%_)
                (let ((_%$%hd115153115178%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest115148115158%_)))
                      (_%$%tl115154115180%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest115148115158%_))))
                  (let ((_%k115183%_ _%$%hd115153115178%_))
                    (if (pair? _%$%tl115154115180%_)
                        (let ((_%$%hd115155115185%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl115154115180%_)))
                              (_%$%tl115156115187%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl115154115180%_))))
                          (let* ((_%v115190%_ _%$%hd115155115185%_)
                                 (_%rest115192%_ _%$%tl115156115187%_))
                            (_%$%K115152115175%_
                             _%rest115192%_
                             _%v115190%_
                             _%k115183%_)))
                        (_%$%else115150115166%_))))
                (_%$%else115150115166%_))))))
    (define pgetv__0
      (lambda (_%key115197%_ _%lst115198%_)
        (let ((_%default115200%_ '#f))
          (pgetv__% _%key115197%_ _%lst115198%_ _%default115200%_))))
    (define pgetv
      (lambda _g120733_
        (let ((_g120734_ (let () (declare (not safe)) (##length _g120733_))))
          (cond ((let () (declare (not safe)) (##fx= _g120734_ 2))
                 (apply pgetv__0 _g120733_))
                ((let () (declare (not safe)) (##fx= _g120734_ 3))
                 (apply pgetv__% _g120733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g120733_))))))
    (define pget__%
      (lambda (_%key115065%_ _%lst115067%_ _%default115069%_)
        (let _%lp115072%_ ((_%rest115075%_ _%lst115067%_))
          (let* ((_%$%rest115077115087%_ _%rest115075%_)
                 (_%$%else115079115095%_
                  (lambda ()
                    (if (procedure? _%default115069%_)
                        (_%default115069%_ _%key115065%_)
                        _%default115069%_)))
                 (_%$%K115081115104%_
                  (lambda (_%rest115098%_ _%v115099%_ _%k115101%_)
                    (if (equal? _%k115101%_ _%key115065%_)
                        _%v115099%_
                        (_%lp115072%_ _%rest115098%_)))))
            (if (pair? _%$%rest115077115087%_)
                (let ((_%$%hd115082115107%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest115077115087%_)))
                      (_%$%tl115083115109%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest115077115087%_))))
                  (let ((_%k115112%_ _%$%hd115082115107%_))
                    (if (pair? _%$%tl115083115109%_)
                        (let ((_%$%hd115084115114%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl115083115109%_)))
                              (_%$%tl115085115116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl115083115109%_))))
                          (let* ((_%v115119%_ _%$%hd115084115114%_)
                                 (_%rest115121%_ _%$%tl115085115116%_))
                            (_%$%K115081115104%_
                             _%rest115121%_
                             _%v115119%_
                             _%k115112%_)))
                        (_%$%else115079115095%_))))
                (_%$%else115079115095%_))))))
    (define pget__0
      (lambda (_%key115126%_ _%lst115127%_)
        (let ((_%default115129%_ '#f))
          (pget__% _%key115126%_ _%lst115127%_ _%default115129%_))))
    (define pget
      (lambda _g120735_
        (let ((_g120736_ (let () (declare (not safe)) (##length _g120735_))))
          (cond ((let () (declare (not safe)) (##fx= _g120736_ 2))
                 (apply pget__0 _g120735_))
                ((let () (declare (not safe)) (##fx= _g120736_ 3))
                 (apply pget__% _g120735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g120735_))))))
    (define __find
      (lambda (_%pred115025%_ _%lst115026%_)
        (let* ((_%pred115029%_ _%pred115025%_)
               (_%$e115060%_
                (let* ((_%proc115038%_ _%pred115029%_)
                       (_%lst115041%_ _%lst115026%_)
                       (_%proc115046%_ _%proc115038%_))
                  (__memf _%proc115046%_ _%lst115041%_))))
          (if _%$e115060%_
              (let () (declare (not safe)) (##car _%$e115060%_))
              '#f))))
    (define find
      (lambda (_%pred115010%_ _%lst115011%_)
        (if (procedure? _%pred115010%_)
            (let ((_%pred115015%_ _%pred115010%_))
              (__find _%pred115015%_ _%lst115011%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@526.13-526.17"
               'contract:
               'procedure?
               'value:
               _%pred115010%_)
              '#!void))))
    (define __memf
      (lambda (_%proc114960%_ _%lst114961%_)
        (let ((_%proc114964%_ _%proc114960%_))
          (let _%lp114973%_ ((_%rest114975%_ _%lst114961%_))
            (let* ((_%$%rest114976114984%_ _%rest114975%_)
                   (_%$%else114978114992%_ (lambda () '#f))
                   (_%$%K114980114998%_
                    (lambda (_%tl114995%_ _%hd114996%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc114964%_ _%hd114996%_))
                          _%rest114975%_
                          (_%lp114973%_ _%tl114995%_)))))
              (if (pair? _%$%rest114976114984%_)
                  (let ((_%$%hd114981115001%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest114976114984%_)))
                        (_%$%tl114982115003%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest114976114984%_))))
                    (let* ((_%hd115006%_ _%$%hd114981115001%_)
                           (_%tl115008%_ _%$%tl114982115003%_))
                      (_%$%K114980114998%_ _%tl115008%_ _%hd115006%_)))
                  (_%$%else114978114992%_)))))))
    (define memf
      (lambda (_%proc114945%_ _%lst114946%_)
        (if (procedure? _%proc114945%_)
            (let ((_%proc114950%_ _%proc114945%_))
              (__memf _%proc114950%_ _%lst114946%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@531.13-531.17"
               'contract:
               'procedure?
               'value:
               _%proc114945%_)
              '#!void))))
    (define remove1
      (lambda (_%el114868%_ _%lst114870%_)
        (let _%lp114873%_ ((_%rest114876%_ _%lst114870%_) (_%r114878%_ '()))
          (let* ((_%$%rest114880114888%_ _%rest114876%_)
                 (_%$%else114882114896%_ (lambda () _%lst114870%_))
                 (_%$%K114884114933%_
                  (lambda (_%rest114899%_ _%hd114900%_)
                    (if (equal? _%el114868%_ _%hd114900%_)
                        (let* ((_%f114903%_ cons)
                               (_%iv114906%_ _%rest114899%_)
                               (_%lst114909%_ _%r114878%_)
                               (_%f114914%_ _%f114903%_))
                          (__foldl1 _%f114914%_ _%iv114906%_ _%lst114909%_))
                        (_%lp114873%_
                         _%rest114899%_
                         (cons _%hd114900%_ _%r114878%_))))))
            (if (pair? _%$%rest114880114888%_)
                (let ((_%$%hd114885114936%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest114880114888%_)))
                      (_%$%tl114886114938%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest114880114888%_))))
                  (let* ((_%hd114941%_ _%$%hd114885114936%_)
                         (_%rest114943%_ _%$%tl114886114938%_))
                    (_%$%K114884114933%_ _%rest114943%_ _%hd114941%_)))
                (_%$%else114882114896%_))))))
    (define remv1
      (lambda (_%el114791%_ _%lst114793%_)
        (let _%lp114796%_ ((_%rest114799%_ _%lst114793%_) (_%r114801%_ '()))
          (let* ((_%$%rest114803114811%_ _%rest114799%_)
                 (_%$%else114805114819%_ (lambda () _%lst114793%_))
                 (_%$%K114807114856%_
                  (lambda (_%rest114822%_ _%hd114823%_)
                    (if (eqv? _%el114791%_ _%hd114823%_)
                        (let* ((_%f114826%_ cons)
                               (_%iv114829%_ _%rest114822%_)
                               (_%lst114832%_ _%r114801%_)
                               (_%f114837%_ _%f114826%_))
                          (__foldl1 _%f114837%_ _%iv114829%_ _%lst114832%_))
                        (_%lp114796%_
                         _%rest114822%_
                         (cons _%hd114823%_ _%r114801%_))))))
            (if (pair? _%$%rest114803114811%_)
                (let ((_%$%hd114808114859%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest114803114811%_)))
                      (_%$%tl114809114861%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest114803114811%_))))
                  (let* ((_%hd114864%_ _%$%hd114808114859%_)
                         (_%rest114866%_ _%$%tl114809114861%_))
                    (_%$%K114807114856%_ _%rest114866%_ _%hd114864%_)))
                (_%$%else114805114819%_))))))
    (define remq1
      (lambda (_%el114714%_ _%lst114716%_)
        (let _%lp114719%_ ((_%rest114722%_ _%lst114716%_) (_%r114724%_ '()))
          (let* ((_%$%rest114726114734%_ _%rest114722%_)
                 (_%$%else114728114742%_ (lambda () _%lst114716%_))
                 (_%$%K114730114779%_
                  (lambda (_%rest114745%_ _%hd114746%_)
                    (if (eq? _%el114714%_ _%hd114746%_)
                        (let* ((_%f114749%_ cons)
                               (_%iv114752%_ _%rest114745%_)
                               (_%lst114755%_ _%r114724%_)
                               (_%f114760%_ _%f114749%_))
                          (__foldl1 _%f114760%_ _%iv114752%_ _%lst114755%_))
                        (_%lp114719%_
                         _%rest114745%_
                         (cons _%hd114746%_ _%r114724%_))))))
            (if (pair? _%$%rest114726114734%_)
                (let ((_%$%hd114731114782%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest114726114734%_)))
                      (_%$%tl114732114784%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest114726114734%_))))
                  (let* ((_%hd114787%_ _%$%hd114731114782%_)
                         (_%rest114789%_ _%$%tl114732114784%_))
                    (_%$%K114730114779%_ _%rest114789%_ _%hd114787%_)))
                (_%$%else114728114742%_))))))
    (define __remf
      (lambda (_%proc114631%_ _%lst114632%_)
        (let ((_%proc114635%_ _%proc114631%_))
          (let _%lp114644%_ ((_%rest114646%_ _%lst114632%_) (_%r114647%_ '()))
            (let* ((_%$%rest114648114656%_ _%rest114646%_)
                   (_%$%else114650114664%_ (lambda () _%lst114632%_))
                   (_%$%K114652114702%_
                    (lambda (_%rest114667%_ _%hd114668%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc114635%_ _%hd114668%_))
                          (let* ((_%f114670%_ cons)
                                 (_%iv114673%_ _%rest114667%_)
                                 (_%lst114676%_ _%r114647%_)
                                 (_%f114681%_ _%f114670%_))
                            (__foldl1 _%f114681%_ _%iv114673%_ _%lst114676%_))
                          (_%lp114644%_
                           _%rest114667%_
                           (cons _%hd114668%_ _%r114647%_))))))
              (if (pair? _%$%rest114648114656%_)
                  (let ((_%$%hd114653114705%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest114648114656%_)))
                        (_%$%tl114654114707%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest114648114656%_))))
                    (let* ((_%hd114710%_ _%$%hd114653114705%_)
                           (_%rest114712%_ _%$%tl114654114707%_))
                      (_%$%K114652114702%_ _%rest114712%_ _%hd114710%_)))
                  (_%$%else114650114664%_)))))))
    (define remf
      (lambda (_%proc114616%_ _%lst114617%_)
        (if (procedure? _%proc114616%_)
            (let ((_%proc114621%_ _%proc114616%_))
              (__remf _%proc114621%_ _%lst114617%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.13-553.17"
               'contract:
               'procedure?
               'value:
               _%proc114616%_)
              '#!void))))
    (define __1+
      (lambda (_%x114604%_)
        (let ((_%x114607%_ _%x114604%_)) (+ _%x114607%_ '1))))
    (define 1+
      (lambda (_%x114590%_)
        (if (number? _%x114590%_)
            (let ((_%x114594%_ _%x114590%_)) (__1+ _%x114594%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@562.11-562.12"
               'contract:
               'number?
               'value:
               _%x114590%_)
              '#!void))))
    (define __1-
      (lambda (_%x114578%_)
        (let ((_%x114581%_ _%x114578%_)) (- _%x114581%_ '1))))
    (define 1-
      (lambda (_%x114564%_)
        (if (number? _%x114564%_)
            (let ((_%x114568%_ _%x114564%_)) (__1- _%x114568%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@570.11-570.12"
               'contract:
               'number?
               'value:
               _%x114564%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x114552%_)
        (let ((_%x114555%_ _%x114552%_))
          (declare (not safe))
          (##fx+ _%x114555%_ '1))))
    (define fx1+
      (lambda (_%x114538%_)
        (if (fixnum? _%x114538%_)
            (let ((_%x114542%_ _%x114538%_)) (__fx1+ _%x114542%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@578.13-578.14"
               'contract:
               'fixnum?
               'value:
               _%x114538%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x114526%_)
        (let ((_%x114529%_ _%x114526%_))
          (declare (not safe))
          (##fx- _%x114529%_ '1))))
    (define fx1-
      (lambda (_%x114512%_)
        (if (fixnum? _%x114512%_)
            (let ((_%x114516%_ _%x114512%_)) (__fx1- _%x114516%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@586.13-586.14"
               'contract:
               'fixnum?
               'value:
               _%x114512%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x114509%_)
        (if (fixnum? _%x114509%_)
            (let () (declare (not safe)) (##fx>= _%x114509%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x114506%_)
        (if (fixnum? _%x114506%_)
            (let () (declare (not safe)) (##fx> _%x114506%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x114503%_)
        (let () (declare (not safe)) (##fx= _%x114503%_ '0))))
    (define fx<0?
      (lambda (_%x114500%_)
        (if (fixnum? _%x114500%_)
            (let () (declare (not safe)) (##fx< _%x114500%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x114497%_)
        (if (fixnum? _%x114497%_)
            (let () (declare (not safe)) (##fx<= _%x114497%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x114494%_)
        (if (symbol? _%x114494%_) (not (uninterned-symbol? _%x114494%_)) '#f)))
    (define __display-as-string
      (lambda (_%x114388%_ _%port114389%_)
        (let ((_%port114392%_ _%port114389%_))
          (if (or (string? _%x114388%_)
                  (symbol? _%x114388%_)
                  (keyword? _%x114388%_)
                  (number? _%x114388%_)
                  (char? _%x114388%_))
              (display _%x114388%_ _%port114392%_)
              (if (pair? _%x114388%_)
                  (let ()
                    (let* ((_%x114415%_
                            (let () (declare (not safe)) (##car _%x114388%_)))
                           (_%port114418%_ _%port114392%_))
                      (if (output-port? _%port114418%_)
                          (let ((_%port114423%_ _%port114418%_))
                            (__display-as-string _%x114415%_ _%port114423%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port114418%_)
                            '#!void)))
                    (let* ((_%x114438%_
                            (let () (declare (not safe)) (##cdr _%x114388%_)))
                           (_%port114441%_ _%port114392%_))
                      (if (output-port? _%port114441%_)
                          (let ((_%port114446%_ _%port114441%_))
                            (__display-as-string _%x114438%_ _%port114446%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port114441%_)
                            '#!void))))
                  (if (vector? _%x114388%_)
                      (vector-for-each
                       (lambda (_%$%g114457114459%_)
                         (let* ((_%x114462%_ _%$%g114457114459%_)
                                (_%port114465%_ _%port114392%_))
                           (if (output-port? _%port114465%_)
                               (let ((_%port114470%_ _%port114465%_))
                                 (__display-as-string
                                  _%x114462%_
                                  _%port114470%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port114465%_)
                                 '#!void))))
                       _%x114388%_)
                      (if (or (null? _%x114388%_)
                              (eq? _%x114388%_ '#!void)
                              (eof-object? _%x114388%_)
                              (boolean? _%x114388%_))
                          '#!void
                          (let ()
                            (raise-contract-violation-error
                             '"cannot convert as string"
                             'value:
                             _%x114388%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x114373%_ _%port114374%_)
        (if (output-port? _%port114374%_)
            (let ((_%port114378%_ _%port114374%_))
              (__display-as-string _%x114373%_ _%port114378%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@616.28-616.32"
               'contract:
               'output-port?
               'value:
               _%port114374%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x114313%_)
        (if (string? _%x114313%_)
            _%x114313%_
            (if (symbol? _%x114313%_)
                (let () (declare (not safe)) (##symbol->string _%x114313%_))
                (if (keyword? _%x114313%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x114313%_))
                    (if (number? _%x114313%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x114313%_))
                        (call-with-output-string
                         '()
                         (lambda (_%$%g114319114321%_)
                           (let* ((_%x114324%_ _%x114313%_)
                                  (_%port114327%_ _%$%g114319114321%_))
                             (if (output-port? _%port114327%_)
                                 (let ((_%port114332%_ _%port114327%_))
                                   (__display-as-string
                                    _%x114324%_
                                    _%port114332%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port114327%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args114346%_
        (call-with-output-string
         '()
         (lambda (_%$%g114347114349%_)
           (let* ((_%x114352%_ _%args114346%_)
                  (_%port114355%_ _%$%g114347114349%_))
             (if (output-port? _%port114355%_)
                 (let ((_%port114360%_ _%port114355%_))
                   (__display-as-string _%x114352%_ _%port114360%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port114355%_)
                   '#!void)))))))
    (define as-string
      (lambda _g120737_
        (let ((_g120738_ (let () (declare (not safe)) (##length _g120737_))))
          (cond ((let () (declare (not safe)) (##fx= _g120738_ 1))
                 (apply as-string__0 _g120737_))
                (#t
                 (apply (lambda _%args114346%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args114346%_)))
                        _g120737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g120737_))))))
    (define make-symbol__0
      (lambda (_%x114309%_)
        (if (interned-symbol? _%x114309%_)
            _%x114309%_
            (let ((__tmp120739 (as-string__0 _%x114309%_)))
              (declare (not safe))
              (##string->symbol __tmp120739)))))
    (define make-symbol__1
      (lambda _%args114311%_
        (let ((__tmp120740
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args114311%_))))
          (declare (not safe))
          (##string->symbol __tmp120740))))
    (define make-symbol
      (lambda _g120741_
        (let ((_g120742_ (let () (declare (not safe)) (##length _g120741_))))
          (cond ((let () (declare (not safe)) (##fx= _g120742_ 1))
                 (apply make-symbol__0 _g120741_))
                (#t
                 (apply (lambda _%args114311%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args114311%_)))
                        _g120741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g120741_))))))
    (define make-keyword__0
      (lambda (_%x114305%_)
        (if (interned-keyword? _%x114305%_)
            _%x114305%_
            (let ((__tmp120743 (as-string__0 _%x114305%_)))
              (declare (not safe))
              (##string->keyword __tmp120743)))))
    (define make-keyword__1
      (lambda _%args114307%_
        (let ((__tmp120744
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args114307%_))))
          (declare (not safe))
          (##string->keyword __tmp120744))))
    (define make-keyword
      (lambda _g120745_
        (let ((_g120746_ (let () (declare (not safe)) (##length _g120745_))))
          (cond ((let () (declare (not safe)) (##fx= _g120746_ 1))
                 (apply make-keyword__0 _g120745_))
                (#t
                 (apply (lambda _%args114307%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args114307%_)))
                        _g120745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g120745_))))))
    (define interned-keyword?
      (lambda (_%x114302%_)
        (if (keyword? _%x114302%_)
            (not (uninterned-keyword? _%x114302%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym114290%_)
        (let ((_%sym114293%_ _%sym114290%_))
          (if (uninterned-symbol? _%sym114293%_)
              (let ((__tmp120747
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym114293%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp120747))
              (let ((__tmp120748
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym114293%_))))
                (declare (not safe))
                (##string->keyword __tmp120748))))))
    (define symbol->keyword
      (lambda (_%sym114276%_)
        (if (symbol? _%sym114276%_)
            (let ((_%sym114280%_ _%sym114276%_))
              (__symbol->keyword _%sym114280%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.24-660.27"
               'contract:
               'symbol?
               'value:
               _%sym114276%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym114264%_)
        (let ((_%sym114267%_ _%sym114264%_))
          (if (uninterned-keyword? _%sym114267%_)
              (let ((__tmp120749
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym114267%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp120749))
              (let ((__tmp120750
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym114267%_))))
                (declare (not safe))
                (##string->symbol __tmp120750))))))
    (define keyword->symbol
      (lambda (_%sym114250%_)
        (if (keyword? _%sym114250%_)
            (let ((_%sym114254%_ _%sym114250%_))
              (__keyword->symbol _%sym114254%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@666.24-666.27"
               'contract:
               'keyword?
               'value:
               _%sym114250%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr114210%_ _%enc114211%_)
        (let* ((_%bstr114214%_ _%bstr114210%_) (_%enc114222%_ _%enc114211%_))
          (if (eq? _%enc114222%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr114214%_))
              (let* ((_%in114231%_
                      (open-input-u8vector
                       (list 'char-encoding:
                             _%enc114222%_
                             'init:
                             _%bstr114214%_)))
                     (_%len114233%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr114214%_)))
                     (_%out114235%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len114233%_)))
                     (_%n114237%_
                      (read-substring
                       _%out114235%_
                       '0
                       _%len114233%_
                       _%in114231%_)))
                (string-shrink! _%out114235%_ _%n114237%_)
                _%out114235%_)))))
    (define __bytes->string__0
      (lambda (_%bstr114243%_)
        (let ((_%enc114245%_ 'UTF-8))
          (__bytes->string__% _%bstr114243%_ _%enc114245%_))))
    (define __bytes->string
      (lambda _g120751_
        (let ((_g120752_ (let () (declare (not safe)) (##length _g120751_))))
          (cond ((let () (declare (not safe)) (##fx= _g120752_ 1))
                 (apply __bytes->string__0 _g120751_))
                ((let () (declare (not safe)) (##fx= _g120752_ 2))
                 (apply __bytes->string__% _g120751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g120751_))))))
    (define bytes->string__%
      (lambda (_%bstr114174%_ _%enc114175%_)
        (if (u8vector? _%bstr114174%_)
            (let ((_%bstr114179%_ _%bstr114174%_))
              (if (symbol? _%enc114175%_)
                  (let ((_%enc114189%_ _%enc114175%_))
                    (__bytes->string__% _%bstr114179%_ _%enc114189%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc114175%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.26"
               'contract:
               'u8vector?
               'value:
               _%bstr114174%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr114202%_)
        (let ((_%enc114204%_ 'UTF-8))
          (bytes->string__% _%bstr114202%_ _%enc114204%_))))
    (define bytes->string
      (lambda _g120753_
        (let ((_g120754_ (let () (declare (not safe)) (##length _g120753_))))
          (cond ((let () (declare (not safe)) (##fx= _g120754_ 1))
                 (apply bytes->string__0 _g120753_))
                ((let () (declare (not safe)) (##fx= _g120754_ 2))
                 (apply bytes->string__% _g120753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g120753_))))))
    (define __string->bytes__%
      (lambda (_%str114092%_ _%enc114093%_)
        (let* ((_%str114096%_ _%str114092%_) (_%enc114104%_ _%enc114093%_))
          (if (eq? _%enc114104%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str114096%_))
              (let* ((_%str114113%_ _%str114096%_)
                     (_%start114116%_ '0)
                     (_%end114119%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str114096%_)))
                     (_%enc114122%_ _%enc114104%_)
                     (_%str114127%_ _%str114113%_))
                (if (nonnegative-fixnum? _%start114116%_)
                    (let ((_%start114143%_ _%start114116%_))
                      (if (nonnegative-fixnum? _%end114119%_)
                          (let ((_%end114153%_ _%end114119%_))
                            (__substring->bytes__%
                             _%str114127%_
                             _%start114143%_
                             _%end114153%_
                             _%enc114122%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end114119%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start114116%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str114166%_)
        (let ((_%enc114168%_ 'UTF-8))
          (__string->bytes__% _%str114166%_ _%enc114168%_))))
    (define __string->bytes
      (lambda _g120755_
        (let ((_g120756_ (let () (declare (not safe)) (##length _g120755_))))
          (cond ((let () (declare (not safe)) (##fx= _g120756_ 1))
                 (apply __string->bytes__0 _g120755_))
                ((let () (declare (not safe)) (##fx= _g120756_ 2))
                 (apply __string->bytes__% _g120755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g120755_))))))
    (define string->bytes__%
      (lambda (_%str114056%_ _%enc114057%_)
        (if (string? _%str114056%_)
            (let ((_%str114061%_ _%str114056%_))
              (if (symbol? _%enc114057%_)
                  (let ((_%enc114071%_ _%enc114057%_))
                    (__string->bytes__% _%str114061%_ _%enc114071%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@685.25-685.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc114057%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@684.22-684.25"
               'contract:
               'string?
               'value:
               _%str114056%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str114084%_)
        (let ((_%enc114086%_ 'UTF-8))
          (string->bytes__% _%str114084%_ _%enc114086%_))))
    (define string->bytes
      (lambda _g120757_
        (let ((_g120758_ (let () (declare (not safe)) (##length _g120757_))))
          (cond ((let () (declare (not safe)) (##fx= _g120758_ 1))
                 (apply string->bytes__0 _g120757_))
                ((let () (declare (not safe)) (##fx= _g120758_ 2))
                 (apply string->bytes__% _g120757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g120757_))))))
    (define __substring->bytes__%
      (lambda (_%str114008%_ _%start114009%_ _%end114010%_ _%enc114011%_)
        (let* ((_%str114014%_ _%str114008%_)
               (_%start114022%_ _%start114009%_)
               (_%end114030%_ _%end114010%_))
          (if (eq? _%enc114011%_ 'UTF-8)
              (string->utf8 _%str114014%_ _%start114022%_ _%end114030%_)
              (let ((_%out114039%_
                     (open-output-u8vector
                      (list 'char-encoding: _%enc114011%_))))
                (write-substring
                 _%str114014%_
                 _%start114022%_
                 _%end114030%_
                 _%out114039%_)
                (get-output-u8vector _%out114039%_))))))
    (define __substring->bytes__0
      (lambda (_%str114044%_ _%start114045%_ _%end114046%_)
        (let ((_%enc114048%_ 'UTF-8))
          (__substring->bytes__%
           _%str114044%_
           _%start114045%_
           _%end114046%_
           _%enc114048%_))))
    (define __substring->bytes
      (lambda _g120759_
        (let ((_g120760_ (let () (declare (not safe)) (##length _g120759_))))
          (cond ((let () (declare (not safe)) (##fx= _g120760_ 3))
                 (apply __substring->bytes__0 _g120759_))
                ((let () (declare (not safe)) (##fx= _g120760_ 4))
                 (apply __substring->bytes__% _g120759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g120759_))))))
    (define substring->bytes__%
      (lambda (_%str113956%_ _%start113957%_ _%end113958%_ _%enc113959%_)
        (if (string? _%str113956%_)
            (let ((_%str113963%_ _%str113956%_))
              (if (nonnegative-fixnum? _%start113957%_)
                  (let ((_%start113973%_ _%start113957%_))
                    (if (nonnegative-fixnum? _%end113958%_)
                        (let ((_%end113983%_ _%end113958%_))
                          (__substring->bytes__%
                           _%str113963%_
                           _%start113973%_
                           _%end113983%_
                           _%enc113959%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@693.25-693.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end113958%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@692.25-692.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start113957%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@691.25-691.28"
               'contract:
               'string?
               'value:
               _%str113956%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str113996%_ _%start113997%_ _%end113998%_)
        (let ((_%enc114000%_ 'UTF-8))
          (substring->bytes__%
           _%str113996%_
           _%start113997%_
           _%end113998%_
           _%enc114000%_))))
    (define substring->bytes
      (lambda _g120761_
        (let ((_g120762_ (let () (declare (not safe)) (##length _g120761_))))
          (cond ((let () (declare (not safe)) (##fx= _g120762_ 3))
                 (apply substring->bytes__0 _g120761_))
                ((let () (declare (not safe)) (##fx= _g120762_ 4))
                 (apply substring->bytes__% _g120761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g120761_))))))
    (define __string-empty?
      (lambda (_%str113943%_)
        (let* ((_%str113946%_ _%str113943%_)
               (__tmp120763
                (let () (declare (not safe)) (##string-length _%str113946%_))))
          (declare (not safe))
          (##fxzero? __tmp120763))))
    (define string-empty?
      (lambda (_%str113929%_)
        (if (string? _%str113929%_)
            (let ((_%str113933%_ _%str113929%_))
              (__string-empty? _%str113933%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@702.22-702.25"
               'contract:
               'string?
               'value:
               _%str113929%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str113763%_ _%criterion113764%_ _%start113765%_ _%end113766%_)
        (let* ((_%str113769%_ _%str113763%_)
               (_%start113777%_ _%start113765%_)
               (_%end113785%_ _%end113766%_)
               (_%end113797%_
                (let ((_%$e113794%_ _%end113785%_))
                  (if _%$e113794%_
                      _%$e113794%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str113769%_))))))
          (if (< _%start113777%_ '0)
              (let ()
                (raise-contract-violation-error
                 '"invalid start for string-index"
                 'value:
                 (cons _%str113769%_ (cons _%start113777%_ '())))
                '#!void)
              (if (> _%end113797%_
                     (let ()
                       (declare (not safe))
                       (##string-length _%str113769%_)))
                  (let ()
                    (raise-contract-violation-error
                     '"invalid end for string-index"
                     'value:
                     (cons _%str113769%_ (cons _%end113797%_ '())))
                    '#!void)
                  (if (char? _%criterion113764%_)
                      (let* ((_%str113802%_ _%str113769%_)
                             (_%char113805%_ _%criterion113764%_)
                             (_%start113808%_ _%start113777%_)
                             (_%end113811%_ _%end113797%_)
                             (_%str113815%_ _%str113802%_)
                             (_%char113831%_ _%char113805%_)
                             (_%start113839%_ _%start113808%_)
                             (_%end113847%_ _%end113811%_))
                        (____string-index/char
                         _%str113815%_
                         _%char113831%_
                         _%start113839%_
                         _%end113847%_))
                      (if (procedure? _%criterion113764%_)
                          (let* ((_%str113857%_ _%str113769%_)
                                 (_%pred?113860%_ _%criterion113764%_)
                                 (_%start113863%_ _%start113777%_)
                                 (_%end113866%_ _%end113797%_)
                                 (_%str113870%_ _%str113857%_)
                                 (_%pred?113882%_ _%pred?113860%_)
                                 (_%start113890%_ _%start113863%_)
                                 (_%end113898%_ _%end113866%_))
                            (____string-index/pred
                             _%str113870%_
                             _%pred?113882%_
                             _%start113890%_
                             _%end113898%_))
                          (let ()
                            (raise-contract-violation-error
                             '"string-index criterion must be char or procedure"
                             'value:
                             _%criterion113764%_)
                            '#!void))))))))
    (define __string-index__0
      (lambda (_%str113911%_ _%criterion113912%_)
        (let* ((_%start113914%_ '0) (_%end113916%_ '#f))
          (__string-index__%
           _%str113911%_
           _%criterion113912%_
           _%start113914%_
           _%end113916%_))))
    (define __string-index__1
      (lambda (_%str113918%_ _%criterion113919%_ _%start113920%_)
        (let ((_%end113922%_ '#f))
          (__string-index__%
           _%str113918%_
           _%criterion113919%_
           _%start113920%_
           _%end113922%_))))
    (define __string-index
      (lambda _g120764_
        (let ((_g120765_ (let () (declare (not safe)) (##length _g120764_))))
          (cond ((let () (declare (not safe)) (##fx= _g120765_ 2))
                 (apply __string-index__0 _g120764_))
                ((let () (declare (not safe)) (##fx= _g120765_ 3))
                 (apply __string-index__1 _g120764_))
                ((let () (declare (not safe)) (##fx= _g120765_ 4))
                 (apply __string-index__% _g120764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g120764_))))))
    (define string-index__%
      (lambda (_%str113698%_ _%criterion113699%_ _%start113700%_ _%end113701%_)
        (if (string? _%str113698%_)
            (let ((_%str113705%_ _%str113698%_))
              (if (nonnegative-fixnum? _%start113700%_)
                  (let ((_%start113715%_ _%start113700%_))
                    (if (or (not _%end113701%_) (fixnum? _%end113701%_))
                        (let ((_%end113731%_ _%end113701%_))
                          (__string-index__%
                           _%str113705%_
                           _%criterion113699%_
                           _%start113715%_
                           _%end113731%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@712.21-712.24"
                           'contract:
                           '(? (or not fixnum?))
                           'value:
                           _%end113701%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@711.21-711.26"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start113700%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@709.21-709.24"
               'contract:
               'string?
               'value:
               _%str113698%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str113744%_ _%criterion113745%_)
        (let* ((_%start113747%_ '0) (_%end113749%_ '#f))
          (string-index__%
           _%str113744%_
           _%criterion113745%_
           _%start113747%_
           _%end113749%_))))
    (define string-index__1
      (lambda (_%str113751%_ _%criterion113752%_ _%start113753%_)
        (let ((_%end113755%_ '#f))
          (string-index__%
           _%str113751%_
           _%criterion113752%_
           _%start113753%_
           _%end113755%_))))
    (define string-index
      (lambda _g120766_
        (let ((_g120767_ (let () (declare (not safe)) (##length _g120766_))))
          (cond ((let () (declare (not safe)) (##fx= _g120767_ 2))
                 (apply string-index__0 _g120766_))
                ((let () (declare (not safe)) (##fx= _g120767_ 3))
                 (apply string-index__1 _g120766_))
                ((let () (declare (not safe)) (##fx= _g120767_ 4))
                 (apply string-index__% _g120766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g120766_))))))
    (define ____string-index/char
      (lambda (_%str113643%_ _%char113644%_ _%start113645%_ _%end113646%_)
        (let* ((_%str113649%_ _%str113643%_)
               (_%char113657%_ _%char113644%_)
               (_%start113665%_ _%start113645%_)
               (_%end113673%_ _%end113646%_))
          (let _%lp113682%_ ((_%k113684%_ _%start113665%_))
            (let ((_%k113686%_ _%k113684%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k113686%_ _%end113673%_))
                  (if (eq? _%char113657%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str113649%_ _%k113686%_)))
                      _%k113686%_
                      (_%lp113682%_
                       (let () (declare (not safe)) (##fx+ _%k113686%_ '1))))
                  '#f))))))
    (define __string-index/char
      (lambda (_%str113604%_ _%char113605%_ _%start113606%_ _%end113607%_)
        (let* ((_%str113610%_ _%str113604%_)
               (_%char113618%_ _%char113605%_)
               (_%start113626%_ _%start113606%_)
               (_%end113634%_ _%end113607%_))
          (____string-index/char
           _%str113610%_
           _%char113618%_
           _%start113626%_
           _%end113634%_))))
    (define ____string-index/pred
      (lambda (_%str113550%_ _%pred?113551%_ _%start113552%_ _%end113553%_)
        (let* ((_%str113556%_ _%str113550%_)
               (_%pred?113564%_ _%pred?113551%_)
               (_%start113572%_ _%start113552%_)
               (_%end113580%_ _%end113553%_))
          (let _%lp113589%_ ((_%k113591%_ _%start113572%_))
            (let ((_%k113593%_ _%k113591%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k113593%_ _%end113580%_))
                  (if (let ((__tmp120768
                             (let ()
                               (declare (not safe))
                               (##string-ref _%str113556%_ _%k113593%_))))
                        (declare (not safe))
                        (_%pred?113564%_ __tmp120768))
                      _%k113593%_
                      (_%lp113589%_
                       (let () (declare (not safe)) (##fx+ _%k113593%_ '1))))
                  '#f))))))
    (define __string-index/pred
      (lambda (_%str113511%_ _%pred?113512%_ _%start113513%_ _%end113514%_)
        (let* ((_%str113517%_ _%str113511%_)
               (_%pred?113525%_ _%pred?113512%_)
               (_%start113533%_ _%start113513%_)
               (_%end113541%_ _%end113514%_))
          (____string-index/pred
           _%str113517%_
           _%pred?113525%_
           _%start113533%_
           _%end113541%_))))
    (define __string-rindex__%
      (lambda (_%str113351%_ _%criterion113352%_ _%start113353%_ _%end113354%_)
        (let* ((_%str113357%_ _%str113351%_)
               (_%start113365%_ _%start113353%_)
               (_%end113373%_ _%end113354%_))
          (if (>= _%start113365%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%str113357%_)))
              (let ()
                (raise-contract-violation-error
                 '"invalid start for string-rindex"
                 'value:
                 (cons _%str113357%_ (cons _%start113365%_ '())))
                '#!void)
              (if (< _%end113373%_ '0)
                  (let ()
                    (raise-contract-violation-error
                     '"invalid end for string-rindex"
                     'value:
                     (cons _%str113357%_ (cons _%end113373%_ '())))
                    '#!void)
                  (if (char? _%criterion113352%_)
                      (let* ((_%str113385%_ _%str113357%_)
                             (_%char113388%_ _%criterion113352%_)
                             (_%start113391%_ _%start113365%_)
                             (_%end113394%_ _%end113373%_)
                             (_%str113398%_ _%str113385%_)
                             (_%char113413%_ _%char113388%_)
                             (_%start113421%_ _%start113391%_)
                             (_%end113429%_ _%end113394%_))
                        (____string-rindex/char
                         _%str113398%_
                         _%char113413%_
                         _%start113421%_
                         _%end113429%_))
                      (if (procedure? _%criterion113352%_)
                          (let* ((_%str113439%_ _%str113357%_)
                                 (_%pred?113442%_ _%criterion113352%_)
                                 (_%start113445%_ _%start113365%_)
                                 (_%end113448%_ _%end113373%_)
                                 (_%str113452%_ _%str113439%_)
                                 (_%pred?113464%_ _%pred?113442%_)
                                 (_%start113472%_ _%start113445%_)
                                 (_%end113480%_ _%end113448%_))
                            (____string-rindex/pred
                             _%str113452%_
                             _%pred?113464%_
                             _%start113472%_
                             _%end113480%_))
                          (let ()
                            (raise-contract-violation-error
                             '"string-rindex criterion must be char or procedure"
                             'value:
                             _%criterion113352%_)
                            '#!void))))))))
    (define __string-rindex__0
      (lambda (_%str113493%_ _%criterion113494%_)
        (let* ((_%start113496%_
                (let ((__tmp120769 (string-length _%str113493%_)))
                  (declare (not safe))
                  (##fx- __tmp120769 '1)))
               (_%end113498%_ '0))
          (__string-rindex__%
           _%str113493%_
           _%criterion113494%_
           _%start113496%_
           _%end113498%_))))
    (define __string-rindex__1
      (lambda (_%str113500%_ _%criterion113501%_ _%start113502%_)
        (let ((_%end113504%_ '0))
          (__string-rindex__%
           _%str113500%_
           _%criterion113501%_
           _%start113502%_
           _%end113504%_))))
    (define __string-rindex
      (lambda _g120770_
        (let ((_g120771_ (let () (declare (not safe)) (##length _g120770_))))
          (cond ((let () (declare (not safe)) (##fx= _g120771_ 2))
                 (apply __string-rindex__0 _g120770_))
                ((let () (declare (not safe)) (##fx= _g120771_ 3))
                 (apply __string-rindex__1 _g120770_))
                ((let () (declare (not safe)) (##fx= _g120771_ 4))
                 (apply __string-rindex__% _g120770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g120770_))))))
    (define string-rindex__%
      (lambda (_%str113292%_ _%criterion113293%_ _%start113294%_ _%end113295%_)
        (if (string? _%str113292%_)
            (let ((_%str113299%_ _%str113292%_))
              (if (fixnum? _%start113294%_)
                  (let ((_%start113309%_ _%start113294%_))
                    (if (fixnum? _%end113295%_)
                        (let ((_%end113319%_ _%end113295%_))
                          (__string-rindex__%
                           _%str113299%_
                           _%criterion113293%_
                           _%start113309%_
                           _%end113319%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@756.22-756.25"
                           'contract:
                           'fixnum?
                           'value:
                           _%end113295%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@755.22-755.27"
                     'contract:
                     'fixnum?
                     'value:
                     _%start113294%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@753.22-753.25"
               'contract:
               'string?
               'value:
               _%str113292%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str113332%_ _%criterion113333%_)
        (let* ((_%start113335%_
                (let ((__tmp120772 (string-length _%str113332%_)))
                  (declare (not safe))
                  (##fx- __tmp120772 '1)))
               (_%end113337%_ '0))
          (string-rindex__%
           _%str113332%_
           _%criterion113333%_
           _%start113335%_
           _%end113337%_))))
    (define string-rindex__1
      (lambda (_%str113339%_ _%criterion113340%_ _%start113341%_)
        (let ((_%end113343%_ '0))
          (string-rindex__%
           _%str113339%_
           _%criterion113340%_
           _%start113341%_
           _%end113343%_))))
    (define string-rindex
      (lambda _g120773_
        (let ((_g120774_ (let () (declare (not safe)) (##length _g120773_))))
          (cond ((let () (declare (not safe)) (##fx= _g120774_ 2))
                 (apply string-rindex__0 _g120773_))
                ((let () (declare (not safe)) (##fx= _g120774_ 3))
                 (apply string-rindex__1 _g120773_))
                ((let () (declare (not safe)) (##fx= _g120774_ 4))
                 (apply string-rindex__% _g120773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g120773_))))))
    (define ____string-rindex/char
      (lambda (_%str113237%_ _%char113238%_ _%start113239%_ _%end113240%_)
        (let* ((_%str113243%_ _%str113237%_)
               (_%char113251%_ _%char113238%_)
               (_%start113259%_ _%start113239%_)
               (_%end113267%_ _%end113240%_))
          (let _%lp113276%_ ((_%k113278%_ _%start113259%_))
            (let ((_%k113280%_ _%k113278%_))
              (if (let ()
                    (declare (not safe))
                    (##fx>= _%k113280%_ _%end113267%_))
                  (if (eq? _%char113251%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str113243%_ _%k113280%_)))
                      _%k113280%_
                      (_%lp113276%_
                       (let () (declare (not safe)) (##fx- _%k113280%_ '1))))
                  '#f))))))
    (define __string-rindex/char
      (lambda (_%str113198%_ _%char113199%_ _%start113200%_ _%end113201%_)
        (let* ((_%str113204%_ _%str113198%_)
               (_%char113212%_ _%char113199%_)
               (_%start113220%_ _%start113200%_)
               (_%end113228%_ _%end113201%_))
          (____string-rindex/char
           _%str113204%_
           _%char113212%_
           _%start113220%_
           _%end113228%_))))
    (define ____string-rindex/pred
      (lambda (_%str113144%_ _%pred?113145%_ _%start113146%_ _%end113147%_)
        (let* ((_%str113150%_ _%str113144%_)
               (_%pred?113158%_ _%pred?113145%_)
               (_%start113166%_ _%start113146%_)
               (_%end113174%_ _%end113147%_))
          (let _%lp113183%_ ((_%k113185%_ _%start113166%_))
            (let ((_%k113187%_ _%k113185%_))
              (if (let ()
                    (declare (not safe))
                    (##fx>= _%k113187%_ _%end113174%_))
                  (if (let ((__tmp120775
                             (let ()
                               (declare (not safe))
                               (##string-ref _%str113150%_ _%k113187%_))))
                        (declare (not safe))
                        (_%pred?113158%_ __tmp120775))
                      _%k113187%_
                      (_%lp113183%_
                       (let () (declare (not safe)) (##fx- _%k113187%_ '1))))
                  '#f))))))
    (define __string-rindex/pred
      (lambda (_%str113105%_ _%pred?113106%_ _%start113107%_ _%end113108%_)
        (let* ((_%str113111%_ _%str113105%_)
               (_%pred?113119%_ _%pred?113106%_)
               (_%start113127%_ _%start113107%_)
               (_%end113135%_ _%end113108%_))
          (____string-rindex/pred
           _%str113111%_
           _%pred?113119%_
           _%start113127%_
           _%end113135%_))))
    (define __string-split
      (lambda (_%str112993%_ _%char112994%_)
        (let* ((_%str112997%_ _%str112993%_)
               (_%char113005%_ _%char112994%_)
               (_%len113014%_
                (let () (declare (not safe)) (##string-length _%str112997%_))))
          (let _%lp113016%_ ((_%start113018%_ '0) (_%r113019%_ '()))
            (let* ((_%start113022%_ _%start113018%_)
                   (_%$e113090%_
                    (let* ((_%str113035%_ _%str112997%_)
                           (_%criterion113038%_ _%char113005%_)
                           (_%start113041%_ _%start113022%_)
                           (_%end113044%_ '#f)
                           (_%str113049%_ _%str113035%_))
                      (if (nonnegative-fixnum? _%start113041%_)
                          (let ((_%start113064%_ _%start113041%_))
                            (if (let ((_%$e113076%_ '#t))
                                  (and _%$e113076%_ _%$e113076%_))
                                (let ((_%end113080%_ _%end113044%_))
                                  (__string-index__%
                                   _%str113049%_
                                   _%criterion113038%_
                                   _%start113064%_
                                   _%end113080%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   '(? (or not fixnum?))
                                   'value:
                                   _%end113044%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start113041%_)
                            '#!void)))))
              (if _%$e113090%_
                  (let ((_%end113095%_ _%$e113090%_))
                    (_%lp113016%_
                     (let () (declare (not safe)) (##fx+ _%end113095%_ '1))
                     (cons (let ()
                             (declare (not safe))
                             (##substring
                              _%str112997%_
                              _%start113022%_
                              _%end113095%_))
                           _%r113019%_)))
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start113022%_ _%len113014%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str112997%_
                                _%start113022%_
                                _%len113014%_)))
                       _%r113019%_)
                      (reverse! _%r113019%_))))))))
    (define string-split
      (lambda (_%str112968%_ _%char112969%_)
        (if (string? _%str112968%_)
            (let ((_%str112973%_ _%str112968%_))
              (if (char? _%char112969%_)
                  (let ((_%char112983%_ _%char112969%_))
                    (__string-split _%str112973%_ _%char112983%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@794.37-794.41"
                     'contract:
                     'char?
                     'value:
                     _%char112969%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@794.21-794.24"
               'contract:
               'string?
               'value:
               _%str112968%_)
              '#!void))))
    (define string-join
      (lambda (_%strs112818%_ _%join112819%_)
        (letrec ((_%join-length112822%_
                  (lambda (_%strs112906%_ _%jlen112907%_)
                    (let _%lp112909%_ ((_%rest112911%_ _%strs112906%_)
                                       (_%len112912%_ '0))
                      (let* ((_%len112914%_ _%len112912%_)
                             (_%$%rest112922112930%_ _%rest112911%_)
                             (_%$%else112924112938%_ (lambda () '0))
                             (_%$%K112926112956%_
                              (lambda (_%rest112941%_ _%hd112942%_)
                                (if (string? _%hd112942%_)
                                    (let ((_%hd112944%_ _%hd112942%_))
                                      (if (pair? _%rest112941%_)
                                          (_%lp112909%_
                                           _%rest112941%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd112944%_))
                                                _%jlen112907%_
                                                _%len112914%_))
                                          (let ((__tmp120776
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd112944%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp120776
                                                   _%len112914%_))))
                                    (begin
                                      (raise-contract-violation-error
                                       '"expected string"
                                       'value:
                                       _%hd112942%_)
                                      '#!void)))))
                        (if (pair? _%$%rest112922112930%_)
                            (let ((_%$%hd112927112959%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest112922112930%_)))
                                  (_%$%tl112928112961%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest112922112930%_))))
                              (let* ((_%hd112964%_ _%$%hd112927112959%_)
                                     (_%rest112966%_ _%$%tl112928112961%_))
                                (_%$%K112926112956%_
                                 _%rest112966%_
                                 _%hd112964%_)))
                            (_%$%else112924112938%_)))))))
          (let* ((_%join112827%_
                  (if (char? _%join112819%_)
                      (let () (declare (not safe)) (##string _%join112819%_))
                      (if (string? _%join112819%_)
                          _%join112819%_
                          (let ()
                            (raise-contract-violation-error
                             '"expected string or char"
                             'value:
                             _%join112819%_)
                            '#!void))))
                 (_%jlen112829%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join112827%_)))
                 (_%olen112831%_
                  (_%join-length112822%_ _%strs112818%_ _%jlen112829%_))
                 (_%ostr112833%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen112831%_))))
            (let _%lp112836%_ ((_%rest112838%_ _%strs112818%_)
                               (_%k112839%_ '0))
              (let* ((_%k112842%_ _%k112839%_)
                     (_%$%rest112858112866%_ _%rest112838%_)
                     (_%$%else112860112874%_ (lambda () '""))
                     (_%$%K112862112894%_
                      (lambda (_%rest112877%_ _%hd112878%_)
                        (let* ((_%hd112880%_ _%hd112878%_)
                               (_%hdlen112892%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd112880%_))))
                          (if (pair? _%rest112877%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd112880%_
                                   '0
                                   _%hdlen112892%_
                                   _%ostr112833%_
                                   _%k112842%_))
                                (let ((__tmp120777
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k112842%_ _%hdlen112892%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join112827%_
                                   '0
                                   _%jlen112829%_
                                   _%ostr112833%_
                                   __tmp120777))
                                (_%lp112836%_
                                 _%rest112877%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k112842%_
                                          _%hdlen112892%_
                                          _%jlen112829%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd112880%_
                                   '0
                                   _%hdlen112892%_
                                   _%ostr112833%_
                                   _%k112842%_))
                                _%ostr112833%_))))))
                (if (pair? _%$%rest112858112866%_)
                    (let ((_%$%hd112863112897%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest112858112866%_)))
                          (_%$%tl112864112899%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest112858112866%_))))
                      (let* ((_%hd112902%_ _%$%hd112863112897%_)
                             (_%rest112904%_ _%$%tl112864112899%_))
                        (_%$%K112862112894%_ _%rest112904%_ _%hd112902%_)))
                    (_%$%else112860112874%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes112758%_ _%port112759%_ _%start112760%_ _%end112761%_)
        (let* ((_%bytes112764%_ _%bytes112758%_)
               (_%port112772%_ _%port112759%_)
               (_%start112780%_ _%start112760%_)
               (_%end112788%_ _%end112761%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes112764%_
           _%start112780%_
           _%end112788%_
           _%port112772%_))))
    (define __read-u8vector__0
      (lambda (_%bytes112800%_ _%port112801%_)
        (let* ((_%start112803%_ '0)
               (_%end112805%_ (u8vector-length _%bytes112800%_)))
          (__read-u8vector__%
           _%bytes112800%_
           _%port112801%_
           _%start112803%_
           _%end112805%_))))
    (define __read-u8vector__1
      (lambda (_%bytes112807%_ _%port112808%_ _%start112809%_)
        (let ((_%end112811%_ (u8vector-length _%bytes112807%_)))
          (__read-u8vector__%
           _%bytes112807%_
           _%port112808%_
           _%start112809%_
           _%end112811%_))))
    (define __read-u8vector
      (lambda _g120778_
        (let ((_g120779_ (let () (declare (not safe)) (##length _g120778_))))
          (cond ((let () (declare (not safe)) (##fx= _g120779_ 2))
                 (apply __read-u8vector__0 _g120778_))
                ((let () (declare (not safe)) (##fx= _g120779_ 3))
                 (apply __read-u8vector__1 _g120778_))
                ((let () (declare (not safe)) (##fx= _g120779_ 4))
                 (apply __read-u8vector__% _g120778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g120778_))))))
    (define read-u8vector__%
      (lambda (_%bytes112683%_ _%port112684%_ _%start112685%_ _%end112686%_)
        (if (u8vector? _%bytes112683%_)
            (let ((_%bytes112690%_ _%bytes112683%_))
              (if (input-port? _%port112684%_)
                  (let ((_%port112700%_ _%port112684%_))
                    (if (and (fixnum? _%start112685%_)
                             (let ()
                               (declare (not safe))
                               (##fx>= _%start112685%_ '0))
                             (let ((__tmp120780
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes112690%_))))
                               (declare (not safe))
                               (##fx< _%start112685%_ __tmp120780)))
                        (let ((_%start112713%_ _%start112685%_))
                          (if (and (fixnum? _%end112686%_)
                                   (let ((__tmp120781
                                          (let ()
                                            (declare (not safe))
                                            (##u8vector-length
                                             _%bytes112690%_))))
                                     (declare (not safe))
                                     (##fx<= _%start112713%_
                                             _%end112686%_
                                             __tmp120781)))
                              (let ((_%end112726%_ _%end112686%_))
                                (__read-u8vector__%
                                 _%bytes112690%_
                                 _%port112700%_
                                 _%start112713%_
                                 _%end112726%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@863.22-863.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end112686%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@861.22-861.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start112685%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@860.22-860.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port112684%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@859.22-859.27"
               'contract:
               'u8vector?
               'value:
               _%bytes112683%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes112739%_ _%port112740%_)
        (let* ((_%start112742%_ '0)
               (_%end112744%_ (u8vector-length _%bytes112739%_)))
          (read-u8vector__%
           _%bytes112739%_
           _%port112740%_
           _%start112742%_
           _%end112744%_))))
    (define read-u8vector__1
      (lambda (_%bytes112746%_ _%port112747%_ _%start112748%_)
        (let ((_%end112750%_ (u8vector-length _%bytes112746%_)))
          (read-u8vector__%
           _%bytes112746%_
           _%port112747%_
           _%start112748%_
           _%end112750%_))))
    (define read-u8vector
      (lambda _g120782_
        (let ((_g120783_ (let () (declare (not safe)) (##length _g120782_))))
          (cond ((let () (declare (not safe)) (##fx= _g120783_ 2))
                 (apply read-u8vector__0 _g120782_))
                ((let () (declare (not safe)) (##fx= _g120783_ 3))
                 (apply read-u8vector__1 _g120782_))
                ((let () (declare (not safe)) (##fx= _g120783_ 4))
                 (apply read-u8vector__% _g120782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g120782_))))))
    (define __write-u8vector__%
      (lambda (_%bytes112622%_ _%port112623%_ _%start112624%_ _%end112625%_)
        (let* ((_%bytes112628%_ _%bytes112622%_)
               (_%port112636%_ _%port112623%_)
               (_%start112644%_ _%start112624%_)
               (_%end112652%_ _%end112625%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes112628%_
           _%start112644%_
           _%end112652%_
           _%port112636%_))))
    (define __write-u8vector__0
      (lambda (_%bytes112664%_ _%port112665%_)
        (let* ((_%start112667%_ '0)
               (_%end112669%_ (u8vector-length _%bytes112664%_)))
          (__write-u8vector__%
           _%bytes112664%_
           _%port112665%_
           _%start112667%_
           _%end112669%_))))
    (define __write-u8vector__1
      (lambda (_%bytes112671%_ _%port112672%_ _%start112673%_)
        (let ((_%end112675%_ (u8vector-length _%bytes112671%_)))
          (__write-u8vector__%
           _%bytes112671%_
           _%port112672%_
           _%start112673%_
           _%end112675%_))))
    (define __write-u8vector
      (lambda _g120784_
        (let ((_g120785_ (let () (declare (not safe)) (##length _g120784_))))
          (cond ((let () (declare (not safe)) (##fx= _g120785_ 2))
                 (apply __write-u8vector__0 _g120784_))
                ((let () (declare (not safe)) (##fx= _g120785_ 3))
                 (apply __write-u8vector__1 _g120784_))
                ((let () (declare (not safe)) (##fx= _g120785_ 4))
                 (apply __write-u8vector__% _g120784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g120784_))))))
    (define write-u8vector__%
      (lambda (_%bytes112552%_ _%port112553%_ _%start112554%_ _%end112555%_)
        (if (u8vector? _%bytes112552%_)
            (let ((_%bytes112559%_ _%bytes112552%_))
              (if (output-port? _%port112553%_)
                  (let* ((_%port112569%_ _%port112553%_)
                         (_%start112578%_ _%start112554%_))
                    (if (and (fixnum? _%end112555%_)
                             (let ((__tmp120786
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes112559%_))))
                               (declare (not safe))
                               (##fx<= _%start112578%_
                                       _%end112555%_
                                       __tmp120786)))
                        (let ((_%end112590%_ _%end112555%_))
                          (__write-u8vector__%
                           _%bytes112559%_
                           _%port112569%_
                           _%start112578%_
                           _%end112590%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@872.23-872.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end112555%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@870.23-870.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port112553%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@869.23-869.28"
               'contract:
               'u8vector?
               'value:
               _%bytes112552%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes112603%_ _%port112604%_)
        (let* ((_%start112606%_ '0)
               (_%end112608%_ (u8vector-length _%bytes112603%_)))
          (write-u8vector__%
           _%bytes112603%_
           _%port112604%_
           _%start112606%_
           _%end112608%_))))
    (define write-u8vector__1
      (lambda (_%bytes112610%_ _%port112611%_ _%start112612%_)
        (let ((_%end112614%_ (u8vector-length _%bytes112610%_)))
          (write-u8vector__%
           _%bytes112610%_
           _%port112611%_
           _%start112612%_
           _%end112614%_))))
    (define write-u8vector
      (lambda _g120787_
        (let ((_g120788_ (let () (declare (not safe)) (##length _g120787_))))
          (cond ((let () (declare (not safe)) (##fx= _g120788_ 2))
                 (apply write-u8vector__0 _g120787_))
                ((let () (declare (not safe)) (##fx= _g120788_ 3))
                 (apply write-u8vector__1 _g120787_))
                ((let () (declare (not safe)) (##fx= _g120788_ 4))
                 (apply write-u8vector__% _g120787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g120787_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag112520%_
               _%dbg-exprs112521%_
               _%dbg-thunks112522%_
               _%expr112523%_
               _%thunk112524%_)
        (letrec ((_%o112526%_ (current-output-port))
                 (_%e112527%_ (current-error-port))
                 (_%p112528%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f112529%_
                  (lambda ()
                    (force-output _%o112526%_)
                    (force-output _%e112527%_)))
                 (_%d112530%_
                  (lambda (_%x112537%_) (display _%x112537%_ _%e112527%_)))
                 (_%w112531%_
                  (lambda (_%x112539%_) (_%p112528%_ _%x112539%_ _%e112527%_)))
                 (_%n112532%_ (lambda () (newline _%e112527%_)))
                 (_%v112533%_
                  (lambda (_%l112542%_)
                    (for-each
                     (lambda (_%x112544%_)
                       (_%d112530%_ '" ")
                       (_%w112531%_ _%x112544%_))
                     _%l112542%_)
                    (_%n112532%_)))
                 (_%x112534%_
                  (lambda (_%expr112546%_ _%thunk112547%_)
                    (call-with-values
                     _%thunk112547%_
                     (lambda _%x112549%_
                       (_%f112529%_)
                       (_%d112530%_ '"  ")
                       (_%w112531%_ _%expr112546%_)
                       (_%d112530%_ '" =>")
                       (_%v112533%_ _%x112549%_)
                       (_%f112529%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x112549%_)))))))
          (if _%tag112520%_
              (begin
                (if (eq? _%tag112520%_ '#!void)
                    '#!void
                    (begin
                      (_%f112529%_)
                      (_%d112530%_ _%tag112520%_)
                      (_%n112532%_)))
                (for-each _%x112534%_ _%dbg-exprs112521%_ _%dbg-thunks112522%_)
                (if _%thunk112524%_
                    (_%x112534%_ _%expr112523%_ _%thunk112524%_)
                    '#!void))
              (if _%thunk112524%_ (_%thunk112524%_) '#!void)))))))
