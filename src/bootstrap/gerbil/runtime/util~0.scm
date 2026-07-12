(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1783878473)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args115013%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args115013%_))
          (newline))))
    (define display*
      (lambda _%args115010%_
        (let () (declare (not safe)) (##for-each display _%args115010%_))))
    (define __file-newer?
      (lambda (_%file1114801%_ _%file2114802%_)
        (let* ((_%file1114805%_ _%file1114801%_)
               (_%file2114813%_ _%file2114802%_))
          (letrec ((_%__modification-time114957%_
                    (lambda (_%file114998%_)
                      (let* ((_%file115001%_ _%file114998%_)
                             (__tmp117893
                              (let ((__tmp117894
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file115001%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp117894))))
                        (declare (not safe))
                        (##time->seconds __tmp117893))))
                   (_%modification-time114958%_
                    (lambda (_%file114986%_)
                      (let ((_%file114989%_ _%file114986%_))
                        (_%__modification-time114957%_ _%file114989%_)))))
            (let ((__tmp117896
                   (let* ((_%file114960%_ _%file1114805%_)
                          (_%file114964%_ _%file114960%_))
                     (_%__modification-time114957%_ _%file114964%_)))
                  (__tmp117895
                   (let* ((_%file114973%_ _%file2114813%_)
                          (_%file114977%_ _%file114973%_))
                     (_%__modification-time114957%_ _%file114977%_))))
              (declare (not safe))
              (##fl> __tmp117896 __tmp117895))))))
    (define file-newer?
      (lambda (_%file1114776%_ _%file2114777%_)
        (if (string? _%file1114776%_)
            (let ((_%file1114781%_ _%file1114776%_))
              (if (string? _%file2114777%_)
                  (let ((_%file2114791%_ _%file2114777%_))
                    (__file-newer? _%file1114781%_ _%file2114791%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.20-75.25"
                     'contract:
                     'string?
                     'value:
                     _%file2114777%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.20-74.25"
               'contract:
               'string?
               'value:
               _%file1114776%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir114486%_ _%perms114487%_)
        (let* ((_%dir114490%_ _%dir114486%_) (_%perms114498%_ _%perms114487%_))
          (letrec ((_%__create1114642%_
                    (lambda (_%path114751%_)
                      (let ((_%path114754%_ _%path114751%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path114754%_))
                            (if (eq? (file-type _%path114754%_) 'directory)
                                '#!void
                                (begin
                                  (raise-contract-violation-error
                                   '"Path component is not a directory"
                                   'value:
                                   _%path114754%_)
                                  '#!void))
                            (if _%perms114498%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path114754%_
                                             (cons 'permissions:
                                                   (cons _%perms114498%_
                                                         '())))))
                                (create-directory _%path114754%_))))))
                   (_%create1114643%_
                    (lambda (_%path114739%_)
                      (let ((_%path114742%_ _%path114739%_))
                        (_%__create1114642%_ _%path114742%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir114490%_))
                '#!void
                (let _%lp114645%_ ((_%start114647%_ '0))
                  (let ((_%$e114704%_
                         (let* ((_%str114649%_ _%dir114490%_)
                                (_%criterion114652%_ '#\/)
                                (_%start114655%_ _%start114647%_)
                                (_%end114658%_ '#f)
                                (_%str114663%_ _%str114649%_))
                           (if (nonnegative-fixnum? _%start114655%_)
                               (let ((_%start114678%_ _%start114655%_))
                                 (if (let ((_%$e114690%_ '#t))
                                       (and _%$e114690%_ _%$e114690%_))
                                     (let ((_%end114694%_ _%end114658%_))
                                       (__string-index__%
                                        _%str114663%_
                                        _%criterion114652%_
                                        _%start114678%_
                                        _%end114694%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/util
                                        'contract:
                                        '(? (or not fixnum?))
                                        'value:
                                        _%end114658%_)
                                       '#!void)))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start114655%_)
                                 '#!void)))))
                    (if _%$e114704%_
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (##fx> _%$e114704%_ '0))
                              (let* ((_%path114709%_
                                      (substring
                                       _%dir114490%_
                                       '0
                                       _%$e114704%_))
                                     (_%path114713%_ _%path114709%_))
                                (_%__create1114642%_ _%path114713%_))
                              '#!void)
                          (_%lp114645%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%$e114704%_ '1))))
                        (let* ((_%path114725%_ _%dir114490%_)
                               (_%path114729%_ _%path114725%_))
                          (_%__create1114642%_ _%path114729%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir114769%_)
        (let ((_%perms114771%_ '493))
          (__create-directory*__% _%dir114769%_ _%perms114771%_))))
    (define __create-directory*
      (lambda _g117897_
        (let ((_g117898_ (let () (declare (not safe)) (##length _g117897_))))
          (cond ((let () (declare (not safe)) (##fx= _g117898_ 1))
                 (apply __create-directory*__0 _g117897_))
                ((let () (declare (not safe)) (##fx= _g117898_ 2))
                 (apply __create-directory*__% _g117897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g117897_))))))
    (define create-directory*__%
      (lambda (_%dir114450%_ _%perms114451%_)
        (if (string? _%dir114450%_)
            (let ((_%dir114455%_ _%dir114450%_))
              (if (fixnum? _%perms114451%_)
                  (let ((_%perms114465%_ _%perms114451%_))
                    (__create-directory*__% _%dir114455%_ _%perms114465%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@86.26-86.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms114451%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@85.26-85.29"
               'contract:
               'string?
               'value:
               _%dir114450%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir114478%_)
        (let ((_%perms114480%_ '493))
          (create-directory*__% _%dir114478%_ _%perms114480%_))))
    (define create-directory*
      (lambda _g117899_
        (let ((_g117900_ (let () (declare (not safe)) (##length _g117899_))))
          (cond ((let () (declare (not safe)) (##fx= _g117900_ 1))
                 (apply create-directory*__0 _g117899_))
                ((let () (declare (not safe)) (##fx= _g117900_ 2))
                 (apply create-directory*__% _g117899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g117899_))))))
    (define __move-file__%
      (lambda (_%src114393%_ _%dest114394%_ _%replace?114395%_)
        (let* ((_%src114398%_ _%src114393%_)
               (_%dest114406%_ _%dest114394%_)
               (_%replace?114414%_ _%replace?114395%_))
          (letrec ((_%force-move-it114423%_
                    (lambda ()
                      (let ((_%tmp114429%_
                             (if _%replace?114414%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest114406%_))
                                     (let ((__tmp117901
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest114406%_
                                        '"."
                                        __tmp117901))
                                     '#f)
                                 '#f)))
                        (if _%tmp114429%_
                            (rename-file _%dest114406%_ _%tmp114429%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e114431%_)
                           (if _%tmp114429%_
                               (rename-file _%tmp114429%_ _%dest114406%_ '#t)
                               '#!void)
                           (raise _%e114431%_))
                         (lambda ()
                           (let ((_%fi114434%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src114398%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi114434%_))
                                      'symbolic-link)
                                 (let ((__tmp117902
                                        (path-normalize _%src114398%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp117902
                                    _%dest114406%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src114398%_
                                    _%dest114406%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src114398%_))
                           (if _%tmp114429%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp114429%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e114425%_)
               (if (let () (declare (not safe)) (##file-exists? _%src114398%_))
                   (_%force-move-it114423%_)
                   (raise _%e114425%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src114398%_
                  _%dest114406%_
                  _%replace?114414%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src114440%_ _%dest114441%_)
        (let ((_%replace?114443%_ '#t))
          (__move-file__% _%src114440%_ _%dest114441%_ _%replace?114443%_))))
    (define __move-file
      (lambda _g117903_
        (let ((_g117904_ (let () (declare (not safe)) (##length _g117903_))))
          (cond ((let () (declare (not safe)) (##fx= _g117904_ 2))
                 (apply __move-file__0 _g117903_))
                ((let () (declare (not safe)) (##fx= _g117904_ 3))
                 (apply __move-file__% _g117903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g117903_))))))
    (define move-file__%
      (lambda (_%src114344%_ _%dest114345%_ _%replace?114346%_)
        (if (string? _%src114344%_)
            (let ((_%src114350%_ _%src114344%_))
              (if (string? _%dest114345%_)
                  (let ((_%dest114360%_ _%dest114345%_))
                    (if (boolean? _%replace?114346%_)
                        (let ((_%replace?114370%_ _%replace?114346%_))
                          (__move-file__%
                           _%src114350%_
                           _%dest114360%_
                           _%replace?114370%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@111.51-111.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?114346%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@111.34-111.38"
                     'contract:
                     'string?
                     'value:
                     _%dest114345%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@111.18-111.21"
               'contract:
               'string?
               'value:
               _%src114344%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src114383%_ _%dest114384%_)
        (let ((_%replace?114386%_ '#t))
          (move-file__% _%src114383%_ _%dest114384%_ _%replace?114386%_))))
    (define move-file
      (lambda _g117905_
        (let ((_g117906_ (let () (declare (not safe)) (##length _g117905_))))
          (cond ((let () (declare (not safe)) (##fx= _g117906_ 2))
                 (apply move-file__0 _g117905_))
                ((let () (declare (not safe)) (##fx= _g117906_ 3))
                 (apply move-file__% _g117905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g117905_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore114340%_ '#t))
    (define true? (lambda (_%obj114337%_) (eq? _%obj114337%_ '#t)))
    (define false (lambda _%ignore114334%_ '#f))
    (define void (lambda _%ignore114331%_ '#!void))
    (define void? (lambda (_%obj114328%_) (eq? _%obj114328%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj114325%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj114325%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj114322%_) (eq? _%obj114322%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj114319%_) (eq? _%obj114319%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj114316%_) (eq? _%obj114316%_ '#!optional)))
    (define immediate?
      (lambda (_%obj114313%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj114313%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj114310%_)
        (if (fixnum? _%obj114310%_)
            (let () (declare (not safe)) (##fx>= _%obj114310%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj114304%_)
        (let ((_%$e114307%_ (pair? _%obj114304%_)))
          (if _%$e114307%_ _%$e114307%_ (null? _%obj114304%_)))))
    (define values-count
      (lambda (_%obj114301%_)
        (if (let () (declare (not safe)) (##values? _%obj114301%_))
            (let () (declare (not safe)) (##values-length _%obj114301%_))
            '1)))
    (define __values-ref
      (lambda (_%obj114288%_ _%k114289%_)
        (let ((_%k114292%_ _%k114289%_))
          (if (let () (declare (not safe)) (##values? _%obj114288%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj114288%_ _%k114292%_))
              _%obj114288%_))))
    (define values-ref
      (lambda (_%obj114273%_ _%k114274%_)
        (if (fixnum? _%k114274%_)
            (let ((_%k114278%_ _%k114274%_))
              (__values-ref _%obj114273%_ _%k114278%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@245.23-245.24"
               'contract:
               'fixnum?
               'value:
               _%k114274%_)
              '#!void))))
    (define values->list
      (lambda (_%obj114270%_)
        (if (let () (declare (not safe)) (##values? _%obj114270%_))
            (let () (declare (not safe)) (##values->list _%obj114270%_))
            (list _%obj114270%_))))
    (define __foldl1
      (lambda (_%f114218%_ _%iv114219%_ _%lst114220%_)
        (let ((_%f114223%_ _%f114218%_))
          (let _%lp114232%_ ((_%rest114234%_ _%lst114220%_)
                             (_%r114235%_ _%iv114219%_))
            (let* ((_%$%rest114236114244%_ _%rest114234%_)
                   (_%$%else114238114252%_ (lambda () _%r114235%_))
                   (_%$%K114240114258%_
                    (lambda (_%rest114255%_ _%x114256%_)
                      (_%lp114232%_
                       _%rest114255%_
                       (let ()
                         (declare (not safe))
                         (_%f114223%_ _%x114256%_ _%r114235%_))))))
              (if (pair? _%$%rest114236114244%_)
                  (let ((_%$%hd114241114261%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest114236114244%_)))
                        (_%$%tl114242114263%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest114236114244%_))))
                    (let* ((_%x114266%_ _%$%hd114241114261%_)
                           (_%rest114268%_ _%$%tl114242114263%_))
                      (_%$%K114240114258%_ _%rest114268%_ _%x114266%_)))
                  (_%$%else114238114252%_)))))))
    (define foldl1
      (lambda (_%f114202%_ _%iv114203%_ _%lst114204%_)
        (if (procedure? _%f114202%_)
            (let ((_%f114208%_ _%f114202%_))
              (__foldl1 _%f114208%_ _%iv114203%_ _%lst114204%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@268.15-268.16"
               'contract:
               'procedure?
               'value:
               _%f114202%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f114115%_ _%iv114116%_ _%lst1114117%_ _%lst2114118%_)
        (let ((_%f114121%_ _%f114115%_))
          (let _%lp114130%_ ((_%rest1114132%_ _%lst1114117%_)
                             (_%rest2114133%_ _%lst2114118%_)
                             (_%r114134%_ _%iv114116%_))
            (let* ((_%$%rest1114135114143%_ _%rest1114132%_)
                   (_%$%else114137114151%_ (lambda () _%r114134%_))
                   (_%$%K114139114190%_
                    (lambda (_%rest1114154%_ _%x1114155%_)
                      (let* ((_%$%rest2114156114164%_ _%rest2114133%_)
                             (_%$%else114158114172%_ (lambda () _%r114134%_))
                             (_%$%K114160114178%_
                              (lambda (_%rest2114175%_ _%x2114176%_)
                                (_%lp114130%_
                                 _%rest1114154%_
                                 _%rest2114175%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f114121%_
                                    _%x1114155%_
                                    _%x2114176%_
                                    _%r114134%_))))))
                        (if (pair? _%$%rest2114156114164%_)
                            (let ((_%$%hd114161114181%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2114156114164%_)))
                                  (_%$%tl114162114183%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2114156114164%_))))
                              (let* ((_%x2114186%_ _%$%hd114161114181%_)
                                     (_%rest2114188%_ _%$%tl114162114183%_))
                                (_%$%K114160114178%_
                                 _%rest2114188%_
                                 _%x2114186%_)))
                            (_%$%else114158114172%_))))))
              (if (pair? _%$%rest1114135114143%_)
                  (let ((_%$%hd114140114193%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1114135114143%_)))
                        (_%$%tl114141114195%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1114135114143%_))))
                    (let* ((_%x1114198%_ _%$%hd114140114193%_)
                           (_%rest1114200%_ _%$%tl114141114195%_))
                      (_%$%K114139114190%_ _%rest1114200%_ _%x1114198%_)))
                  (_%$%else114137114151%_)))))))
    (define foldl2
      (lambda (_%f114098%_ _%iv114099%_ _%lst1114100%_ _%lst2114101%_)
        (if (procedure? _%f114098%_)
            (let ((_%f114105%_ _%f114098%_))
              (__foldl2
               _%f114105%_
               _%iv114099%_
               _%lst1114100%_
               _%lst2114101%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@275.15-275.16"
               'contract:
               'procedure?
               'value:
               _%f114098%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f114031%_ _%iv114032%_ _%lst114033%_)
        (let* ((_%f114035%_ _%f114031%_)
               (_%iv114038%_ _%iv114032%_)
               (_%lst114041%_ _%lst114033%_))
          (if (procedure? _%f114035%_)
              (let ((_%f114046%_ _%f114035%_))
                (__foldl1 _%f114046%_ _%iv114038%_ _%lst114041%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f114035%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f114059%_ _%iv114060%_ _%lst1114061%_ _%lst2114062%_)
        (let* ((_%f114064%_ _%f114059%_)
               (_%iv114067%_ _%iv114060%_)
               (_%lst1114070%_ _%lst1114061%_)
               (_%lst2114073%_ _%lst2114062%_))
          (if (procedure? _%f114064%_)
              (let ((_%f114078%_ _%f114064%_))
                (__foldl2
                 _%f114078%_
                 _%iv114067%_
                 _%lst1114070%_
                 _%lst2114073%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f114064%_)
                '#!void)))))
    (define foldl
      (lambda _g117907_
        (let ((_g117908_ (let () (declare (not safe)) (##length _g117907_))))
          (cond ((let () (declare (not safe)) (##fx= _g117908_ 3))
                 (apply foldl__0 _g117907_))
                ((let () (declare (not safe)) (##fx= _g117908_ 4))
                 (apply foldl__1 _g117907_))
                ((let () (declare (not safe)) (##fx>= _g117908_ 4))
                 (apply foldl* _g117907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g117907_))))))
    (define __foldl*
      (lambda (_%f113962%_ _%iv113963%_ . _%rest113964%_)
        (let ((_%f113967%_ _%f113962%_))
          (let _%recur113976%_ ((_%iv113978%_ _%iv113963%_)
                                (_%rest113979%_ _%rest113964%_))
            (if (let* ((_%f113981%_ pair?)
                       (_%lst113984%_ _%rest113979%_)
                       (_%f113989%_ _%f113981%_))
                  (__andmap1 _%f113989%_ _%lst113984%_))
                (_%recur113976%_
                 (let ((__tmp117909
                        (let* ((_%f114008%_
                                (lambda (_%xs114005%_ _%r114006%_)
                                  (cons (car _%xs114005%_) _%r114006%_)))
                               (_%iv114011%_ (list _%iv113978%_))
                               (_%lst114014%_ _%rest113979%_)
                               (_%f114019%_ _%f114008%_))
                          (__foldr1 _%f114019%_ _%iv114011%_ _%lst114014%_))))
                   (declare (not safe))
                   (##apply _%f113967%_ __tmp117909))
                 (map cdr _%rest113979%_))
                _%iv113978%_)))))
    (define foldl*
      (lambda (_%f113946%_ _%iv113947%_ . _%rest113948%_)
        (if (procedure? _%f113946%_)
            (let ((_%f113952%_ _%f113946%_))
              (declare (not safe))
              (##apply __foldl* _%f113952%_ _%iv113947%_ _%rest113948%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@293.15-293.16"
               'contract:
               'procedure?
               'value:
               _%f113946%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f113895%_ _%iv113896%_ _%lst113897%_)
        (let ((_%f113900%_ _%f113895%_))
          (let _%recur113909%_ ((_%rest113911%_ _%lst113897%_))
            (let* ((_%$%rest113912113920%_ _%rest113911%_)
                   (_%$%else113914113928%_ (lambda () _%iv113896%_))
                   (_%$%K113916113934%_
                    (lambda (_%rest113931%_ _%x113932%_)
                      (let ((__tmp117910 (_%recur113909%_ _%rest113931%_)))
                        (declare (not safe))
                        (_%f113900%_ _%x113932%_ __tmp117910)))))
              (if (pair? _%$%rest113912113920%_)
                  (let ((_%$%hd113917113937%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest113912113920%_)))
                        (_%$%tl113918113939%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest113912113920%_))))
                    (let* ((_%x113942%_ _%$%hd113917113937%_)
                           (_%rest113944%_ _%$%tl113918113939%_))
                      (_%$%K113916113934%_ _%rest113944%_ _%x113942%_)))
                  (_%$%else113914113928%_)))))))
    (define foldr1
      (lambda (_%f113879%_ _%iv113880%_ _%lst113881%_)
        (if (procedure? _%f113879%_)
            (let ((_%f113885%_ _%f113879%_))
              (__foldr1 _%f113885%_ _%iv113880%_ _%lst113881%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@303.15-303.16"
               'contract:
               'procedure?
               'value:
               _%f113879%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f113793%_ _%iv113794%_ _%lst1113795%_ _%lst2113796%_)
        (let ((_%f113799%_ _%f113793%_))
          (let _%recur113808%_ ((_%rest1113810%_ _%lst1113795%_)
                                (_%rest2113811%_ _%lst2113796%_))
            (let* ((_%$%rest1113812113820%_ _%rest1113810%_)
                   (_%$%else113814113828%_ (lambda () _%iv113794%_))
                   (_%$%K113816113867%_
                    (lambda (_%rest1113831%_ _%x1113832%_)
                      (let* ((_%$%rest2113833113841%_ _%rest2113811%_)
                             (_%$%else113835113849%_ (lambda () _%iv113794%_))
                             (_%$%K113837113855%_
                              (lambda (_%rest2113852%_ _%x2113853%_)
                                (let ((__tmp117911
                                       (_%recur113808%_
                                        _%rest1113831%_
                                        _%rest2113852%_)))
                                  (declare (not safe))
                                  (_%f113799%_
                                   _%x1113832%_
                                   _%x2113853%_
                                   __tmp117911)))))
                        (if (pair? _%$%rest2113833113841%_)
                            (let ((_%$%hd113838113858%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2113833113841%_)))
                                  (_%$%tl113839113860%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2113833113841%_))))
                              (let* ((_%x2113863%_ _%$%hd113838113858%_)
                                     (_%rest2113865%_ _%$%tl113839113860%_))
                                (_%$%K113837113855%_
                                 _%rest2113865%_
                                 _%x2113863%_)))
                            (_%$%else113835113849%_))))))
              (if (pair? _%$%rest1113812113820%_)
                  (let ((_%$%hd113817113870%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1113812113820%_)))
                        (_%$%tl113818113872%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1113812113820%_))))
                    (let* ((_%x1113875%_ _%$%hd113817113870%_)
                           (_%rest1113877%_ _%$%tl113818113872%_))
                      (_%$%K113816113867%_ _%rest1113877%_ _%x1113875%_)))
                  (_%$%else113814113828%_)))))))
    (define foldr2
      (lambda (_%f113776%_ _%iv113777%_ _%lst1113778%_ _%lst2113779%_)
        (if (procedure? _%f113776%_)
            (let ((_%f113783%_ _%f113776%_))
              (__foldr2
               _%f113783%_
               _%iv113777%_
               _%lst1113778%_
               _%lst2113779%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@310.15-310.16"
               'contract:
               'procedure?
               'value:
               _%f113776%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f113709%_ _%iv113710%_ _%lst113711%_)
        (let* ((_%f113713%_ _%f113709%_)
               (_%iv113716%_ _%iv113710%_)
               (_%lst113719%_ _%lst113711%_))
          (if (procedure? _%f113713%_)
              (let ((_%f113724%_ _%f113713%_))
                (__foldr1 _%f113724%_ _%iv113716%_ _%lst113719%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f113713%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f113737%_ _%iv113738%_ _%lst1113739%_ _%lst2113740%_)
        (let* ((_%f113742%_ _%f113737%_)
               (_%iv113745%_ _%iv113738%_)
               (_%lst1113748%_ _%lst1113739%_)
               (_%lst2113751%_ _%lst2113740%_))
          (if (procedure? _%f113742%_)
              (let ((_%f113756%_ _%f113742%_))
                (__foldr2
                 _%f113756%_
                 _%iv113745%_
                 _%lst1113748%_
                 _%lst2113751%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f113742%_)
                '#!void)))))
    (define foldr
      (lambda _g117912_
        (let ((_g117913_ (let () (declare (not safe)) (##length _g117912_))))
          (cond ((let () (declare (not safe)) (##fx= _g117913_ 3))
                 (apply foldr__0 _g117912_))
                ((let () (declare (not safe)) (##fx= _g117913_ 4))
                 (apply foldr__1 _g117912_))
                ((let () (declare (not safe)) (##fx>= _g117913_ 4))
                 (apply foldr* _g117912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g117912_))))))
    (define __foldr*
      (lambda (_%f113641%_ _%iv113642%_ . _%rest113643%_)
        (let ((_%f113646%_ _%f113641%_))
          (let _%recur113655%_ ((_%rest113657%_ _%rest113643%_))
            (if (let* ((_%f113659%_ pair?)
                       (_%lst113662%_ _%rest113657%_)
                       (_%f113667%_ _%f113659%_))
                  (__andmap1 _%f113667%_ _%lst113662%_))
                (let ((__tmp117914
                       (let* ((_%f113686%_
                               (lambda (_%xs113683%_ _%r113684%_)
                                 (cons (car _%xs113683%_) _%r113684%_)))
                              (_%iv113689%_
                               (list (_%recur113655%_
                                      (map cdr _%rest113657%_))))
                              (_%lst113692%_ _%rest113657%_)
                              (_%f113697%_ _%f113686%_))
                         (__foldr1 _%f113697%_ _%iv113689%_ _%lst113692%_))))
                  (declare (not safe))
                  (##apply _%f113646%_ __tmp117914))
                _%iv113642%_)))))
    (define foldr*
      (lambda (_%f113625%_ _%iv113626%_ . _%rest113627%_)
        (if (procedure? _%f113625%_)
            (let ((_%f113631%_ _%f113625%_))
              (declare (not safe))
              (##apply __foldr* _%f113631%_ _%iv113626%_ _%rest113627%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@328.15-328.16"
               'contract:
               'procedure?
               'value:
               _%f113625%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%lists113512%_)
        (letrec ((_%process-tails!113514%_
                  (lambda (_%previous-cell113569%_ _%rest113570%_)
                    (let* ((_%$%rest113571113584%_ _%rest113570%_)
                           (_%$%E113575113588%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rest113571113584%_
                                     '([[] . r])
                                     '([_ . r])
                                     '(_))
                              '#!void)))
                      (let ((_%$%K113580113615%_
                             (lambda (_%r113613%_)
                               (let ((__tmp117916 _%previous-cell113569%_)
                                     (__tmp117915 (remove-nulls! _%r113613%_)))
                                 (declare (not safe))
                                 (##set-cdr! __tmp117916 __tmp117915))))
                            (_%$%K113577113602%_
                             (lambda (_%r113600%_)
                               (_%process-tails!113514%_
                                _%rest113570%_
                                _%r113600%_)))
                            (_%$%K113576113593%_ (lambda () '#!void)))
                        (if (pair? _%$%rest113571113584%_)
                            (let ((_%$%tl113582113620%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest113571113584%_)))
                                  (_%$%hd113581113618%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest113571113584%_))))
                              (if (null? _%$%hd113581113618%_)
                                  (let ((_%r113623%_ _%$%tl113582113620%_))
                                    (_%$%K113580113615%_ _%r113623%_))
                                  (let ((_%r113608%_ _%$%tl113582113620%_))
                                    (_%$%K113577113602%_ _%r113608%_))))
                            '#!void))))))
          (let* ((_%$%lists113515113528%_ _%lists113512%_)
                 (_%$%E113519113532%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%lists113515113528%_
                           '([[] . r])
                           '([_ . r])
                           '(_))
                    '#!void)))
            (let ((_%$%K113524113559%_
                   (lambda (_%r113557%_) (remove-nulls! _%r113557%_)))
                  (_%$%K113521113546%_
                   (lambda (_%r113544%_)
                     (_%process-tails!113514%_ _%lists113512%_ _%r113544%_)
                     _%lists113512%_))
                  (_%$%K113520113537%_ (lambda () _%lists113512%_)))
              (if (pair? _%$%lists113515113528%_)
                  (let ((_%$%tl113526113564%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%lists113515113528%_)))
                        (_%$%hd113525113562%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%lists113515113528%_))))
                    (if (null? _%$%hd113525113562%_)
                        (let ((_%r113567%_ _%$%tl113526113564%_))
                          (remove-nulls! _%r113567%_))
                        (let ((_%r113552%_ _%$%tl113526113564%_))
                          (_%$%K113521113546%_ _%r113552%_))))
                  (_%$%K113520113537%_)))))))
    (define append1!
      (lambda (_%l113497%_ _%x113498%_)
        (let ((_%l2113501%_ (cons _%x113498%_ '())))
          (if (pair? _%l113497%_)
              (let ((_%l113503%_ _%l113497%_))
                (let ((__tmp117917
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l113503%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp117917 _%l2113501%_))
                _%l113503%_)
              _%l2113501%_))))
    (define __append-reverse-until
      (lambda (_%pred113439%_ _%rhead113440%_ _%tail113441%_)
        (let ((_%pred113444%_ _%pred113439%_))
          (let _%loop113453%_ ((_%rhead113455%_ _%rhead113440%_)
                               (_%tail113456%_ _%tail113441%_))
            (let* ((_%$%rhead113458113467%_ _%rhead113455%_)
                   (_%$%E113461113471%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rhead113458113467%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%$%K113465113494%_
                     (lambda () (values '() _%tail113456%_)))
                    (_%$%K113462113478%_
                     (lambda (_%r113475%_ _%a113476%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred113444%_ _%a113476%_))
                           (values _%rhead113455%_ _%tail113456%_)
                           (_%loop113453%_
                            _%r113475%_
                            (cons _%a113476%_ _%tail113456%_))))))
                (let ((_%$%try-match113460113490%_
                       (lambda ()
                         (if (pair? _%$%rhead113458113467%_)
                             (let ((_%$%tl113464113483%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rhead113458113467%_)))
                                   (_%$%hd113463113481%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rhead113458113467%_))))
                               (let ((_%a113486%_ _%$%hd113463113481%_)
                                     (_%r113488%_ _%$%tl113464113483%_))
                                 (_%$%K113462113478%_
                                  _%r113488%_
                                  _%a113486%_)))
                             (_%$%E113461113471%_)))))
                  (if (null? _%$%rhead113458113467%_)
                      (_%$%K113465113494%_)
                      (_%$%try-match113460113490%_)))))))))
    (define append-reverse-until
      (lambda (_%pred113423%_ _%rhead113424%_ _%tail113425%_)
        (if (procedure? _%pred113423%_)
            (let ((_%pred113429%_ _%pred113423%_))
              (__append-reverse-until
               _%pred113429%_
               _%rhead113424%_
               _%tail113425%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@366.29-366.33"
               'contract:
               'procedure?
               'value:
               _%pred113423%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f113372%_ _%lst113373%_)
        (let ((_%f113376%_ _%f113372%_))
          (let _%lp113385%_ ((_%rest113387%_ _%lst113373%_))
            (let* ((_%$%rest113389113397%_ _%rest113387%_)
                   (_%$%else113391113405%_ (lambda () '#t))
                   (_%$%K113393113411%_
                    (lambda (_%rest113408%_ _%x113409%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f113376%_ _%x113409%_))
                          (_%lp113385%_ _%rest113408%_)
                          '#f))))
              (if (pair? _%$%rest113389113397%_)
                  (let ((_%$%hd113394113414%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest113389113397%_)))
                        (_%$%tl113395113416%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest113389113397%_))))
                    (let* ((_%x113419%_ _%$%hd113394113414%_)
                           (_%rest113421%_ _%$%tl113395113416%_))
                      (_%$%K113393113411%_ _%rest113421%_ _%x113419%_)))
                  (_%$%else113391113405%_)))))))
    (define andmap1
      (lambda (_%f113357%_ _%lst113358%_)
        (if (procedure? _%f113357%_)
            (let ((_%f113362%_ _%f113357%_))
              (__andmap1 _%f113362%_ _%lst113358%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f113357%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f113271%_ _%lst1113272%_ _%lst2113273%_)
        (let ((_%f113276%_ _%f113271%_))
          (let _%lp113285%_ ((_%rest1113287%_ _%lst1113272%_)
                             (_%rest2113288%_ _%lst2113273%_))
            (let* ((_%$%rest1113290113298%_ _%rest1113287%_)
                   (_%$%else113292113306%_ (lambda () '#t))
                   (_%$%K113294113345%_
                    (lambda (_%rest1113309%_ _%x1113310%_)
                      (let* ((_%$%rest2113311113319%_ _%rest2113288%_)
                             (_%$%else113313113327%_ (lambda () '#t))
                             (_%$%K113315113333%_
                              (lambda (_%rest2113330%_ _%x2113331%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f113276%_ _%x1113310%_ _%x2113331%_))
                                    (_%lp113285%_
                                     _%rest1113309%_
                                     _%rest2113330%_)
                                    '#f))))
                        (if (pair? _%$%rest2113311113319%_)
                            (let ((_%$%hd113316113336%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2113311113319%_)))
                                  (_%$%tl113317113338%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2113311113319%_))))
                              (let* ((_%x2113341%_ _%$%hd113316113336%_)
                                     (_%rest2113343%_ _%$%tl113317113338%_))
                                (_%$%K113315113333%_
                                 _%rest2113343%_
                                 _%x2113341%_)))
                            (_%$%else113313113327%_))))))
              (if (pair? _%$%rest1113290113298%_)
                  (let ((_%$%hd113295113348%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1113290113298%_)))
                        (_%$%tl113296113350%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1113290113298%_))))
                    (let* ((_%x1113353%_ _%$%hd113295113348%_)
                           (_%rest1113355%_ _%$%tl113296113350%_))
                      (_%$%K113294113345%_ _%rest1113355%_ _%x1113353%_)))
                  (_%$%else113292113306%_)))))))
    (define andmap2
      (lambda (_%f113255%_ _%lst1113256%_ _%lst2113257%_)
        (if (procedure? _%f113255%_)
            (let ((_%f113261%_ _%f113255%_))
              (__andmap2 _%f113261%_ _%lst1113256%_ _%lst2113257%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@386.16-386.17"
               'contract:
               'procedure?
               'value:
               _%f113255%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f113199%_ _%lst113200%_)
        (let* ((_%f113202%_ _%f113199%_) (_%lst113205%_ _%lst113200%_))
          (if (procedure? _%f113202%_)
              (let ((_%f113210%_ _%f113202%_))
                (__andmap1 _%f113210%_ _%lst113205%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f113202%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f113222%_ _%lst1113223%_ _%lst2113224%_)
        (let* ((_%f113226%_ _%f113222%_)
               (_%lst1113229%_ _%lst1113223%_)
               (_%lst2113232%_ _%lst2113224%_))
          (if (procedure? _%f113226%_)
              (let ((_%f113237%_ _%f113226%_))
                (__andmap2 _%f113237%_ _%lst1113229%_ _%lst2113232%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f113226%_)
                '#!void)))))
    (define andmap
      (lambda _g117918_
        (let ((_g117919_ (let () (declare (not safe)) (##length _g117918_))))
          (cond ((let () (declare (not safe)) (##fx= _g117919_ 2))
                 (apply andmap__0 _g117918_))
                ((let () (declare (not safe)) (##fx= _g117919_ 3))
                 (apply andmap__1 _g117918_))
                ((let () (declare (not safe)) (##fx>= _g117919_ 3))
                 (apply andmap* _g117918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g117918_))))))
    (define __andmap*
      (lambda (_%f113156%_ . _%rest113157%_)
        (let ((_%f113160%_ _%f113156%_))
          (let _%recur113169%_ ((_%rest113171%_ _%rest113157%_))
            (if (let* ((_%f113174%_ pair?)
                       (_%lst113177%_ _%rest113171%_)
                       (_%f113182%_ _%f113174%_))
                  (__andmap1 _%f113182%_ _%lst113177%_))
                (if (let ((__tmp117920 (map car _%rest113171%_)))
                      (declare (not safe))
                      (##apply _%f113160%_ __tmp117920))
                    (_%recur113169%_ (map cdr _%rest113171%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f113141%_ . _%rest113142%_)
        (if (procedure? _%f113141%_)
            (let ((_%f113146%_ _%f113141%_))
              (declare (not safe))
              (##apply __andmap* _%f113146%_ _%rest113142%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.16-406.17"
               'contract:
               'procedure?
               'value:
               _%f113141%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f113088%_ _%lst113089%_)
        (let ((_%f113092%_ _%f113088%_))
          (let _%lp113101%_ ((_%rest113103%_ _%lst113089%_))
            (let* ((_%$%rest113104113112%_ _%rest113103%_)
                   (_%$%else113106113120%_ (lambda () '#f))
                   (_%$%K113108113129%_
                    (lambda (_%rest113123%_ _%x113124%_)
                      (let ((_%$e113126%_
                             (let ()
                               (declare (not safe))
                               (_%f113092%_ _%x113124%_))))
                        (if _%$e113126%_
                            _%$e113126%_
                            (_%lp113101%_ _%rest113123%_))))))
              (if (pair? _%$%rest113104113112%_)
                  (let ((_%$%hd113109113132%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest113104113112%_)))
                        (_%$%tl113110113134%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest113104113112%_))))
                    (let* ((_%x113137%_ _%$%hd113109113132%_)
                           (_%rest113139%_ _%$%tl113110113134%_))
                      (_%$%K113108113129%_ _%rest113139%_ _%x113137%_)))
                  (_%$%else113106113120%_)))))))
    (define ormap1
      (lambda (_%f113073%_ _%lst113074%_)
        (if (procedure? _%f113073%_)
            (let ((_%f113078%_ _%f113073%_))
              (__ormap1 _%f113078%_ _%lst113074%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@415.15-415.16"
               'contract:
               'procedure?
               'value:
               _%f113073%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f112985%_ _%lst1112986%_ _%lst2112987%_)
        (let ((_%f112990%_ _%f112985%_))
          (let _%lp112999%_ ((_%rest1113001%_ _%lst1112986%_)
                             (_%rest2113002%_ _%lst2112987%_))
            (let* ((_%$%rest1113003113011%_ _%rest1113001%_)
                   (_%$%else113005113019%_ (lambda () '#f))
                   (_%$%K113007113061%_
                    (lambda (_%rest1113022%_ _%x1113023%_)
                      (let* ((_%$%rest2113024113032%_ _%rest2113002%_)
                             (_%$%else113026113040%_ (lambda () '#f))
                             (_%$%K113028113049%_
                              (lambda (_%rest2113043%_ _%x2113044%_)
                                (let ((_%$e113046%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f112990%_
                                          _%x1113023%_
                                          _%x2113044%_))))
                                  (if _%$e113046%_
                                      _%$e113046%_
                                      (_%lp112999%_
                                       _%rest1113022%_
                                       _%rest2113043%_))))))
                        (if (pair? _%$%rest2113024113032%_)
                            (let ((_%$%hd113029113052%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2113024113032%_)))
                                  (_%$%tl113030113054%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2113024113032%_))))
                              (let* ((_%x2113057%_ _%$%hd113029113052%_)
                                     (_%rest2113059%_ _%$%tl113030113054%_))
                                (_%$%K113028113049%_
                                 _%rest2113059%_
                                 _%x2113057%_)))
                            (_%$%else113026113040%_))))))
              (if (pair? _%$%rest1113003113011%_)
                  (let ((_%$%hd113008113064%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1113003113011%_)))
                        (_%$%tl113009113066%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1113003113011%_))))
                    (let* ((_%x1113069%_ _%$%hd113008113064%_)
                           (_%rest1113071%_ _%$%tl113009113066%_))
                      (_%$%K113007113061%_ _%rest1113071%_ _%x1113069%_)))
                  (_%$%else113005113019%_)))))))
    (define ormap2
      (lambda (_%f112969%_ _%lst1112970%_ _%lst2112971%_)
        (if (procedure? _%f112969%_)
            (let ((_%f112975%_ _%f112969%_))
              (__ormap2 _%f112975%_ _%lst1112970%_ _%lst2112971%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@422.15-422.16"
               'contract:
               'procedure?
               'value:
               _%f112969%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f112913%_ _%lst112914%_)
        (let* ((_%f112916%_ _%f112913%_) (_%lst112919%_ _%lst112914%_))
          (if (procedure? _%f112916%_)
              (let ((_%f112924%_ _%f112916%_))
                (__ormap1 _%f112924%_ _%lst112919%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f112916%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f112936%_ _%lst1112937%_ _%lst2112938%_)
        (let* ((_%f112940%_ _%f112936%_)
               (_%lst1112943%_ _%lst1112937%_)
               (_%lst2112946%_ _%lst2112938%_))
          (if (procedure? _%f112940%_)
              (let ((_%f112951%_ _%f112940%_))
                (__ormap2 _%f112951%_ _%lst1112943%_ _%lst2112946%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f112940%_)
                '#!void)))))
    (define ormap
      (lambda _g117921_
        (let ((_g117922_ (let () (declare (not safe)) (##length _g117921_))))
          (cond ((let () (declare (not safe)) (##fx= _g117922_ 2))
                 (apply ormap__0 _g117921_))
                ((let () (declare (not safe)) (##fx= _g117922_ 3))
                 (apply ormap__1 _g117921_))
                ((let () (declare (not safe)) (##fx>= _g117922_ 3))
                 (apply ormap* _g117921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g117921_))))))
    (define __ormap*
      (lambda (_%f112869%_ . _%rest112870%_)
        (let ((_%f112873%_ _%f112869%_))
          (let _%recur112882%_ ((_%rest112884%_ _%rest112870%_))
            (if (let* ((_%f112886%_ pair?)
                       (_%lst112889%_ _%rest112884%_)
                       (_%f112894%_ _%f112886%_))
                  (__andmap1 _%f112894%_ _%lst112889%_))
                (let ((_%$e112910%_
                       (let ((__tmp117923 (map car _%rest112884%_)))
                         (declare (not safe))
                         (##apply _%f112873%_ __tmp117923))))
                  (if _%$e112910%_
                      _%$e112910%_
                      (_%recur112882%_ (map cdr _%rest112884%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f112854%_ . _%rest112855%_)
        (if (procedure? _%f112854%_)
            (let ((_%f112859%_ _%f112854%_))
              (declare (not safe))
              (##apply __ormap* _%f112859%_ _%rest112855%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@440.15-440.16"
               'contract:
               'procedure?
               'value:
               _%f112854%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f112797%_ _%lst112798%_)
        (let ((_%f112801%_ _%f112797%_))
          (let _%recur112810%_ ((_%rest112812%_ _%lst112798%_))
            (let* ((_%$%rest112814112822%_ _%rest112812%_)
                   (_%$%else112816112830%_ (lambda () '()))
                   (_%$%K112818112842%_
                    (lambda (_%rest112833%_ _%x112834%_)
                      (let ((_%$e112836%_
                             (let ()
                               (declare (not safe))
                               (_%f112801%_ _%x112834%_))))
                        (if _%$e112836%_
                            (cons _%$e112836%_
                                  (_%recur112810%_ _%rest112833%_))
                            (_%recur112810%_ _%rest112833%_))))))
              (if (pair? _%$%rest112814112822%_)
                  (let ((_%$%hd112819112845%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest112814112822%_)))
                        (_%$%tl112820112847%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest112814112822%_))))
                    (let* ((_%x112850%_ _%$%hd112819112845%_)
                           (_%rest112852%_ _%$%tl112820112847%_))
                      (_%$%K112818112842%_ _%rest112852%_ _%x112850%_)))
                  (_%$%else112816112830%_)))))))
    (define filter-map1
      (lambda (_%f112782%_ _%lst112783%_)
        (if (procedure? _%f112782%_)
            (let ((_%f112787%_ _%f112782%_))
              (__filter-map1 _%f112787%_ _%lst112783%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@447.20-447.21"
               'contract:
               'procedure?
               'value:
               _%f112782%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f112690%_ _%lst1112691%_ _%lst2112692%_)
        (let ((_%f112695%_ _%f112690%_))
          (let _%recur112704%_ ((_%rest1112706%_ _%lst1112691%_)
                                (_%rest2112707%_ _%lst2112692%_))
            (let* ((_%$%rest1112709112717%_ _%rest1112706%_)
                   (_%$%else112711112725%_ (lambda () '()))
                   (_%$%K112713112770%_
                    (lambda (_%rest1112728%_ _%x1112729%_)
                      (let* ((_%$%rest2112730112738%_ _%rest2112707%_)
                             (_%$%else112732112746%_ (lambda () '()))
                             (_%$%K112734112758%_
                              (lambda (_%rest2112749%_ _%x2112750%_)
                                (let ((_%$e112752%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f112695%_
                                          _%x1112729%_
                                          _%x2112750%_))))
                                  (if _%$e112752%_
                                      (cons _%$e112752%_
                                            (_%recur112704%_
                                             _%rest1112728%_
                                             _%rest2112749%_))
                                      (_%recur112704%_
                                       _%rest1112728%_
                                       _%rest2112749%_))))))
                        (if (pair? _%$%rest2112730112738%_)
                            (let ((_%$%hd112735112761%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2112730112738%_)))
                                  (_%$%tl112736112763%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2112730112738%_))))
                              (let* ((_%x2112766%_ _%$%hd112735112761%_)
                                     (_%rest2112768%_ _%$%tl112736112763%_))
                                (_%$%K112734112758%_
                                 _%rest2112768%_
                                 _%x2112766%_)))
                            (_%$%else112732112746%_))))))
              (if (pair? _%$%rest1112709112717%_)
                  (let ((_%$%hd112714112773%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1112709112717%_)))
                        (_%$%tl112715112775%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1112709112717%_))))
                    (let* ((_%x1112778%_ _%$%hd112714112773%_)
                           (_%rest1112780%_ _%$%tl112715112775%_))
                      (_%$%K112713112770%_ _%rest1112780%_ _%x1112778%_)))
                  (_%$%else112711112725%_)))))))
    (define filter-map2
      (lambda (_%f112674%_ _%lst1112675%_ _%lst2112676%_)
        (if (procedure? _%f112674%_)
            (let ((_%f112680%_ _%f112674%_))
              (__filter-map2 _%f112680%_ _%lst1112675%_ _%lst2112676%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@458.20-458.21"
               'contract:
               'procedure?
               'value:
               _%f112674%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f112618%_ _%lst112619%_)
        (let* ((_%f112621%_ _%f112618%_) (_%lst112624%_ _%lst112619%_))
          (if (procedure? _%f112621%_)
              (let ((_%f112629%_ _%f112621%_))
                (__filter-map1 _%f112629%_ _%lst112624%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f112621%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f112641%_ _%lst1112642%_ _%lst2112643%_)
        (let* ((_%f112645%_ _%f112641%_)
               (_%lst1112648%_ _%lst1112642%_)
               (_%lst2112651%_ _%lst2112643%_))
          (if (procedure? _%f112645%_)
              (let ((_%f112656%_ _%f112645%_))
                (__filter-map2 _%f112656%_ _%lst1112648%_ _%lst2112651%_))
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
    (define filter-map
      (lambda _g117924_
        (let ((_g117925_ (let () (declare (not safe)) (##length _g117924_))))
          (cond ((let () (declare (not safe)) (##fx= _g117925_ 2))
                 (apply filter-map__0 _g117924_))
                ((let () (declare (not safe)) (##fx= _g117925_ 3))
                 (apply filter-map__1 _g117924_))
                ((let () (declare (not safe)) (##fx>= _g117925_ 3))
                 (apply filter-map* _g117924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g117924_))))))
    (define __filter-map*
      (lambda (_%f112569%_ . _%rest112570%_)
        (let ((_%f112573%_ _%f112569%_))
          (let _%recur112582%_ ((_%rest112584%_ _%rest112570%_))
            (if (let* ((_%f112587%_ pair?)
                       (_%lst112590%_ _%rest112584%_)
                       (_%f112595%_ _%f112587%_))
                  (__andmap1 _%f112595%_ _%lst112590%_))
                (let ((_%$e112612%_
                       (let ((__tmp117926 (map car _%rest112584%_)))
                         (declare (not safe))
                         (##apply _%f112573%_ __tmp117926))))
                  (if _%$e112612%_
                      (cons _%$e112612%_
                            (_%recur112582%_ (map cdr _%rest112584%_)))
                      (_%recur112582%_ (map cdr _%rest112584%_))))
                '())))))
    (define filter-map*
      (lambda (_%f112554%_ . _%rest112555%_)
        (if (procedure? _%f112554%_)
            (let ((_%f112559%_ _%f112554%_))
              (declare (not safe))
              (##apply __filter-map* _%f112559%_ _%rest112555%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@480.20-480.21"
               'contract:
               'procedure?
               'value:
               _%f112554%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key112530%_ _%lst112532%_ _%default112534%_)
        (let ((_%$e112537%_
               (if (pair? _%lst112532%_)
                   (assq _%key112530%_ _%lst112532%_)
                   '#f)))
          (if _%$e112537%_
              (cdr _%$e112537%_)
              (if (procedure? _%default112534%_)
                  (_%default112534%_ _%key112530%_)
                  _%default112534%_)))))
    (define agetq__0
      (lambda (_%key112545%_ _%lst112546%_)
        (let ((_%default112548%_ '#f))
          (agetq__% _%key112545%_ _%lst112546%_ _%default112548%_))))
    (define agetq
      (lambda _g117927_
        (let ((_g117928_ (let () (declare (not safe)) (##length _g117927_))))
          (cond ((let () (declare (not safe)) (##fx= _g117928_ 2))
                 (apply agetq__0 _g117927_))
                ((let () (declare (not safe)) (##fx= _g117928_ 3))
                 (apply agetq__% _g117927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g117927_))))))
    (define agetv__%
      (lambda (_%key112505%_ _%lst112507%_ _%default112509%_)
        (let ((_%$e112512%_
               (if (pair? _%lst112507%_)
                   (assv _%key112505%_ _%lst112507%_)
                   '#f)))
          (if _%$e112512%_
              (cdr _%$e112512%_)
              (if (procedure? _%default112509%_)
                  (_%default112509%_ _%key112505%_)
                  _%default112509%_)))))
    (define agetv__0
      (lambda (_%key112520%_ _%lst112521%_)
        (let ((_%default112523%_ '#f))
          (agetv__% _%key112520%_ _%lst112521%_ _%default112523%_))))
    (define agetv
      (lambda _g117929_
        (let ((_g117930_ (let () (declare (not safe)) (##length _g117929_))))
          (cond ((let () (declare (not safe)) (##fx= _g117930_ 2))
                 (apply agetv__0 _g117929_))
                ((let () (declare (not safe)) (##fx= _g117930_ 3))
                 (apply agetv__% _g117929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g117929_))))))
    (define aget__%
      (lambda (_%key112480%_ _%lst112482%_ _%default112484%_)
        (let ((_%$e112487%_
               (if (pair? _%lst112482%_)
                   (assoc _%key112480%_ _%lst112482%_)
                   '#f)))
          (if _%$e112487%_
              (cdr _%$e112487%_)
              (if (procedure? _%default112484%_)
                  (_%default112484%_ _%key112480%_)
                  _%default112484%_)))))
    (define aget__0
      (lambda (_%key112495%_ _%lst112496%_)
        (let ((_%default112498%_ '#f))
          (aget__% _%key112495%_ _%lst112496%_ _%default112498%_))))
    (define aget
      (lambda _g117931_
        (let ((_g117932_ (let () (declare (not safe)) (##length _g117931_))))
          (cond ((let () (declare (not safe)) (##fx= _g117932_ 2))
                 (apply aget__0 _g117931_))
                ((let () (declare (not safe)) (##fx= _g117932_ 3))
                 (apply aget__% _g117931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g117931_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key112409%_ _%lst112411%_ _%default112413%_)
        (let _%lp112416%_ ((_%rest112419%_ _%lst112411%_))
          (let* ((_%$%rest112421112431%_ _%rest112419%_)
                 (_%$%else112423112439%_
                  (lambda ()
                    (if (procedure? _%default112413%_)
                        (_%default112413%_ _%key112409%_)
                        _%default112413%_)))
                 (_%$%K112425112448%_
                  (lambda (_%rest112442%_ _%v112443%_ _%k112445%_)
                    (if (eq? _%k112445%_ _%key112409%_)
                        _%v112443%_
                        (_%lp112416%_ _%rest112442%_)))))
            (if (pair? _%$%rest112421112431%_)
                (let ((_%$%hd112426112451%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest112421112431%_)))
                      (_%$%tl112427112453%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest112421112431%_))))
                  (let ((_%k112456%_ _%$%hd112426112451%_))
                    (if (pair? _%$%tl112427112453%_)
                        (let ((_%$%hd112428112458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl112427112453%_)))
                              (_%$%tl112429112460%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl112427112453%_))))
                          (let* ((_%v112463%_ _%$%hd112428112458%_)
                                 (_%rest112465%_ _%$%tl112429112460%_))
                            (_%$%K112425112448%_
                             _%rest112465%_
                             _%v112463%_
                             _%k112456%_)))
                        (_%$%else112423112439%_))))
                (_%$%else112423112439%_))))))
    (define pgetq__0
      (lambda (_%key112470%_ _%lst112471%_)
        (let ((_%default112473%_ '#f))
          (pgetq__% _%key112470%_ _%lst112471%_ _%default112473%_))))
    (define pgetq
      (lambda _g117933_
        (let ((_g117934_ (let () (declare (not safe)) (##length _g117933_))))
          (cond ((let () (declare (not safe)) (##fx= _g117934_ 2))
                 (apply pgetq__0 _g117933_))
                ((let () (declare (not safe)) (##fx= _g117934_ 3))
                 (apply pgetq__% _g117933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g117933_))))))
    (define pgetv__%
      (lambda (_%key112338%_ _%lst112340%_ _%default112342%_)
        (let _%lp112345%_ ((_%rest112348%_ _%lst112340%_))
          (let* ((_%$%rest112350112360%_ _%rest112348%_)
                 (_%$%else112352112368%_
                  (lambda ()
                    (if (procedure? _%default112342%_)
                        (_%default112342%_ _%key112338%_)
                        _%default112342%_)))
                 (_%$%K112354112377%_
                  (lambda (_%rest112371%_ _%v112372%_ _%k112374%_)
                    (if (eqv? _%k112374%_ _%key112338%_)
                        _%v112372%_
                        (_%lp112345%_ _%rest112371%_)))))
            (if (pair? _%$%rest112350112360%_)
                (let ((_%$%hd112355112380%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest112350112360%_)))
                      (_%$%tl112356112382%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest112350112360%_))))
                  (let ((_%k112385%_ _%$%hd112355112380%_))
                    (if (pair? _%$%tl112356112382%_)
                        (let ((_%$%hd112357112387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl112356112382%_)))
                              (_%$%tl112358112389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl112356112382%_))))
                          (let* ((_%v112392%_ _%$%hd112357112387%_)
                                 (_%rest112394%_ _%$%tl112358112389%_))
                            (_%$%K112354112377%_
                             _%rest112394%_
                             _%v112392%_
                             _%k112385%_)))
                        (_%$%else112352112368%_))))
                (_%$%else112352112368%_))))))
    (define pgetv__0
      (lambda (_%key112399%_ _%lst112400%_)
        (let ((_%default112402%_ '#f))
          (pgetv__% _%key112399%_ _%lst112400%_ _%default112402%_))))
    (define pgetv
      (lambda _g117935_
        (let ((_g117936_ (let () (declare (not safe)) (##length _g117935_))))
          (cond ((let () (declare (not safe)) (##fx= _g117936_ 2))
                 (apply pgetv__0 _g117935_))
                ((let () (declare (not safe)) (##fx= _g117936_ 3))
                 (apply pgetv__% _g117935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g117935_))))))
    (define pget__%
      (lambda (_%key112267%_ _%lst112269%_ _%default112271%_)
        (let _%lp112274%_ ((_%rest112277%_ _%lst112269%_))
          (let* ((_%$%rest112279112289%_ _%rest112277%_)
                 (_%$%else112281112297%_
                  (lambda ()
                    (if (procedure? _%default112271%_)
                        (_%default112271%_ _%key112267%_)
                        _%default112271%_)))
                 (_%$%K112283112306%_
                  (lambda (_%rest112300%_ _%v112301%_ _%k112303%_)
                    (if (equal? _%k112303%_ _%key112267%_)
                        _%v112301%_
                        (_%lp112274%_ _%rest112300%_)))))
            (if (pair? _%$%rest112279112289%_)
                (let ((_%$%hd112284112309%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest112279112289%_)))
                      (_%$%tl112285112311%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest112279112289%_))))
                  (let ((_%k112314%_ _%$%hd112284112309%_))
                    (if (pair? _%$%tl112285112311%_)
                        (let ((_%$%hd112286112316%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl112285112311%_)))
                              (_%$%tl112287112318%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl112285112311%_))))
                          (let* ((_%v112321%_ _%$%hd112286112316%_)
                                 (_%rest112323%_ _%$%tl112287112318%_))
                            (_%$%K112283112306%_
                             _%rest112323%_
                             _%v112321%_
                             _%k112314%_)))
                        (_%$%else112281112297%_))))
                (_%$%else112281112297%_))))))
    (define pget__0
      (lambda (_%key112328%_ _%lst112329%_)
        (let ((_%default112331%_ '#f))
          (pget__% _%key112328%_ _%lst112329%_ _%default112331%_))))
    (define pget
      (lambda _g117937_
        (let ((_g117938_ (let () (declare (not safe)) (##length _g117937_))))
          (cond ((let () (declare (not safe)) (##fx= _g117938_ 2))
                 (apply pget__0 _g117937_))
                ((let () (declare (not safe)) (##fx= _g117938_ 3))
                 (apply pget__% _g117937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g117937_))))))
    (define __find
      (lambda (_%pred112227%_ _%lst112228%_)
        (let* ((_%pred112231%_ _%pred112227%_)
               (_%$e112262%_
                (let* ((_%proc112240%_ _%pred112231%_)
                       (_%lst112243%_ _%lst112228%_)
                       (_%proc112248%_ _%proc112240%_))
                  (__memf _%proc112248%_ _%lst112243%_))))
          (if _%$e112262%_
              (let () (declare (not safe)) (##car _%$e112262%_))
              '#f))))
    (define find
      (lambda (_%pred112212%_ _%lst112213%_)
        (if (procedure? _%pred112212%_)
            (let ((_%pred112217%_ _%pred112212%_))
              (__find _%pred112217%_ _%lst112213%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@526.13-526.17"
               'contract:
               'procedure?
               'value:
               _%pred112212%_)
              '#!void))))
    (define __memf
      (lambda (_%proc112162%_ _%lst112163%_)
        (let ((_%proc112166%_ _%proc112162%_))
          (let _%lp112175%_ ((_%rest112177%_ _%lst112163%_))
            (let* ((_%$%rest112178112186%_ _%rest112177%_)
                   (_%$%else112180112194%_ (lambda () '#f))
                   (_%$%K112182112200%_
                    (lambda (_%tl112197%_ _%hd112198%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc112166%_ _%hd112198%_))
                          _%rest112177%_
                          (_%lp112175%_ _%tl112197%_)))))
              (if (pair? _%$%rest112178112186%_)
                  (let ((_%$%hd112183112203%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest112178112186%_)))
                        (_%$%tl112184112205%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest112178112186%_))))
                    (let* ((_%hd112208%_ _%$%hd112183112203%_)
                           (_%tl112210%_ _%$%tl112184112205%_))
                      (_%$%K112182112200%_ _%tl112210%_ _%hd112208%_)))
                  (_%$%else112180112194%_)))))))
    (define memf
      (lambda (_%proc112147%_ _%lst112148%_)
        (if (procedure? _%proc112147%_)
            (let ((_%proc112152%_ _%proc112147%_))
              (__memf _%proc112152%_ _%lst112148%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@531.13-531.17"
               'contract:
               'procedure?
               'value:
               _%proc112147%_)
              '#!void))))
    (define remove1
      (lambda (_%el112070%_ _%lst112072%_)
        (let _%lp112075%_ ((_%rest112078%_ _%lst112072%_) (_%r112080%_ '()))
          (let* ((_%$%rest112082112090%_ _%rest112078%_)
                 (_%$%else112084112098%_ (lambda () _%lst112072%_))
                 (_%$%K112086112135%_
                  (lambda (_%rest112101%_ _%hd112102%_)
                    (if (equal? _%el112070%_ _%hd112102%_)
                        (let* ((_%f112105%_ cons)
                               (_%iv112108%_ _%rest112101%_)
                               (_%lst112111%_ _%r112080%_)
                               (_%f112116%_ _%f112105%_))
                          (__foldl1 _%f112116%_ _%iv112108%_ _%lst112111%_))
                        (_%lp112075%_
                         _%rest112101%_
                         (cons _%hd112102%_ _%r112080%_))))))
            (if (pair? _%$%rest112082112090%_)
                (let ((_%$%hd112087112138%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest112082112090%_)))
                      (_%$%tl112088112140%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest112082112090%_))))
                  (let* ((_%hd112143%_ _%$%hd112087112138%_)
                         (_%rest112145%_ _%$%tl112088112140%_))
                    (_%$%K112086112135%_ _%rest112145%_ _%hd112143%_)))
                (_%$%else112084112098%_))))))
    (define remv1
      (lambda (_%el111993%_ _%lst111995%_)
        (let _%lp111998%_ ((_%rest112001%_ _%lst111995%_) (_%r112003%_ '()))
          (let* ((_%$%rest112005112013%_ _%rest112001%_)
                 (_%$%else112007112021%_ (lambda () _%lst111995%_))
                 (_%$%K112009112058%_
                  (lambda (_%rest112024%_ _%hd112025%_)
                    (if (eqv? _%el111993%_ _%hd112025%_)
                        (let* ((_%f112028%_ cons)
                               (_%iv112031%_ _%rest112024%_)
                               (_%lst112034%_ _%r112003%_)
                               (_%f112039%_ _%f112028%_))
                          (__foldl1 _%f112039%_ _%iv112031%_ _%lst112034%_))
                        (_%lp111998%_
                         _%rest112024%_
                         (cons _%hd112025%_ _%r112003%_))))))
            (if (pair? _%$%rest112005112013%_)
                (let ((_%$%hd112010112061%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest112005112013%_)))
                      (_%$%tl112011112063%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest112005112013%_))))
                  (let* ((_%hd112066%_ _%$%hd112010112061%_)
                         (_%rest112068%_ _%$%tl112011112063%_))
                    (_%$%K112009112058%_ _%rest112068%_ _%hd112066%_)))
                (_%$%else112007112021%_))))))
    (define remq1
      (lambda (_%el111916%_ _%lst111918%_)
        (let _%lp111921%_ ((_%rest111924%_ _%lst111918%_) (_%r111926%_ '()))
          (let* ((_%$%rest111928111936%_ _%rest111924%_)
                 (_%$%else111930111944%_ (lambda () _%lst111918%_))
                 (_%$%K111932111981%_
                  (lambda (_%rest111947%_ _%hd111948%_)
                    (if (eq? _%el111916%_ _%hd111948%_)
                        (let* ((_%f111951%_ cons)
                               (_%iv111954%_ _%rest111947%_)
                               (_%lst111957%_ _%r111926%_)
                               (_%f111962%_ _%f111951%_))
                          (__foldl1 _%f111962%_ _%iv111954%_ _%lst111957%_))
                        (_%lp111921%_
                         _%rest111947%_
                         (cons _%hd111948%_ _%r111926%_))))))
            (if (pair? _%$%rest111928111936%_)
                (let ((_%$%hd111933111984%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest111928111936%_)))
                      (_%$%tl111934111986%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest111928111936%_))))
                  (let* ((_%hd111989%_ _%$%hd111933111984%_)
                         (_%rest111991%_ _%$%tl111934111986%_))
                    (_%$%K111932111981%_ _%rest111991%_ _%hd111989%_)))
                (_%$%else111930111944%_))))))
    (define __remf
      (lambda (_%proc111833%_ _%lst111834%_)
        (let ((_%proc111837%_ _%proc111833%_))
          (let _%lp111846%_ ((_%rest111848%_ _%lst111834%_) (_%r111849%_ '()))
            (let* ((_%$%rest111850111858%_ _%rest111848%_)
                   (_%$%else111852111866%_ (lambda () _%lst111834%_))
                   (_%$%K111854111904%_
                    (lambda (_%rest111869%_ _%hd111870%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc111837%_ _%hd111870%_))
                          (let* ((_%f111872%_ cons)
                                 (_%iv111875%_ _%rest111869%_)
                                 (_%lst111878%_ _%r111849%_)
                                 (_%f111883%_ _%f111872%_))
                            (__foldl1 _%f111883%_ _%iv111875%_ _%lst111878%_))
                          (_%lp111846%_
                           _%rest111869%_
                           (cons _%hd111870%_ _%r111849%_))))))
              (if (pair? _%$%rest111850111858%_)
                  (let ((_%$%hd111855111907%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest111850111858%_)))
                        (_%$%tl111856111909%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest111850111858%_))))
                    (let* ((_%hd111912%_ _%$%hd111855111907%_)
                           (_%rest111914%_ _%$%tl111856111909%_))
                      (_%$%K111854111904%_ _%rest111914%_ _%hd111912%_)))
                  (_%$%else111852111866%_)))))))
    (define remf
      (lambda (_%proc111818%_ _%lst111819%_)
        (if (procedure? _%proc111818%_)
            (let ((_%proc111823%_ _%proc111818%_))
              (__remf _%proc111823%_ _%lst111819%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.13-553.17"
               'contract:
               'procedure?
               'value:
               _%proc111818%_)
              '#!void))))
    (define __1+
      (lambda (_%x111806%_)
        (let ((_%x111809%_ _%x111806%_)) (+ _%x111809%_ '1))))
    (define 1+
      (lambda (_%x111792%_)
        (if (number? _%x111792%_)
            (let ((_%x111796%_ _%x111792%_)) (__1+ _%x111796%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@562.11-562.12"
               'contract:
               'number?
               'value:
               _%x111792%_)
              '#!void))))
    (define __1-
      (lambda (_%x111780%_)
        (let ((_%x111783%_ _%x111780%_)) (- _%x111783%_ '1))))
    (define 1-
      (lambda (_%x111766%_)
        (if (number? _%x111766%_)
            (let ((_%x111770%_ _%x111766%_)) (__1- _%x111770%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@570.11-570.12"
               'contract:
               'number?
               'value:
               _%x111766%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x111754%_)
        (let ((_%x111757%_ _%x111754%_))
          (declare (not safe))
          (##fx+ _%x111757%_ '1))))
    (define fx1+
      (lambda (_%x111740%_)
        (if (fixnum? _%x111740%_)
            (let ((_%x111744%_ _%x111740%_)) (__fx1+ _%x111744%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@578.13-578.14"
               'contract:
               'fixnum?
               'value:
               _%x111740%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x111728%_)
        (let ((_%x111731%_ _%x111728%_))
          (declare (not safe))
          (##fx- _%x111731%_ '1))))
    (define fx1-
      (lambda (_%x111714%_)
        (if (fixnum? _%x111714%_)
            (let ((_%x111718%_ _%x111714%_)) (__fx1- _%x111718%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@586.13-586.14"
               'contract:
               'fixnum?
               'value:
               _%x111714%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x111711%_)
        (if (fixnum? _%x111711%_)
            (let () (declare (not safe)) (##fx>= _%x111711%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x111708%_)
        (if (fixnum? _%x111708%_)
            (let () (declare (not safe)) (##fx> _%x111708%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x111705%_)
        (let () (declare (not safe)) (##fx= _%x111705%_ '0))))
    (define fx<0?
      (lambda (_%x111702%_)
        (if (fixnum? _%x111702%_)
            (let () (declare (not safe)) (##fx< _%x111702%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x111699%_)
        (if (fixnum? _%x111699%_)
            (let () (declare (not safe)) (##fx<= _%x111699%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x111696%_)
        (if (symbol? _%x111696%_) (not (uninterned-symbol? _%x111696%_)) '#f)))
    (define __display-as-string
      (lambda (_%x111590%_ _%port111591%_)
        (let ((_%port111594%_ _%port111591%_))
          (if (or (string? _%x111590%_)
                  (symbol? _%x111590%_)
                  (keyword? _%x111590%_)
                  (number? _%x111590%_)
                  (char? _%x111590%_))
              (display _%x111590%_ _%port111594%_)
              (if (pair? _%x111590%_)
                  (let ()
                    (let* ((_%x111617%_
                            (let () (declare (not safe)) (##car _%x111590%_)))
                           (_%port111620%_ _%port111594%_))
                      (if (output-port? _%port111620%_)
                          (let ((_%port111625%_ _%port111620%_))
                            (__display-as-string _%x111617%_ _%port111625%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port111620%_)
                            '#!void)))
                    (let* ((_%x111640%_
                            (let () (declare (not safe)) (##cdr _%x111590%_)))
                           (_%port111643%_ _%port111594%_))
                      (if (output-port? _%port111643%_)
                          (let ((_%port111648%_ _%port111643%_))
                            (__display-as-string _%x111640%_ _%port111648%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port111643%_)
                            '#!void))))
                  (if (vector? _%x111590%_)
                      (vector-for-each
                       (lambda (_%$%g111659111661%_)
                         (let* ((_%x111664%_ _%$%g111659111661%_)
                                (_%port111667%_ _%port111594%_))
                           (if (output-port? _%port111667%_)
                               (let ((_%port111672%_ _%port111667%_))
                                 (__display-as-string
                                  _%x111664%_
                                  _%port111672%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port111667%_)
                                 '#!void))))
                       _%x111590%_)
                      (if (or (null? _%x111590%_)
                              (eq? _%x111590%_ '#!void)
                              (eof-object? _%x111590%_)
                              (boolean? _%x111590%_))
                          '#!void
                          (let ()
                            (raise-contract-violation-error
                             '"cannot convert as string"
                             'value:
                             _%x111590%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x111575%_ _%port111576%_)
        (if (output-port? _%port111576%_)
            (let ((_%port111580%_ _%port111576%_))
              (__display-as-string _%x111575%_ _%port111580%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@616.28-616.32"
               'contract:
               'output-port?
               'value:
               _%port111576%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x111515%_)
        (if (string? _%x111515%_)
            _%x111515%_
            (if (symbol? _%x111515%_)
                (let () (declare (not safe)) (##symbol->string _%x111515%_))
                (if (keyword? _%x111515%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x111515%_))
                    (if (number? _%x111515%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x111515%_))
                        (call-with-output-string
                         '()
                         (lambda (_%$%g111521111523%_)
                           (let* ((_%x111526%_ _%x111515%_)
                                  (_%port111529%_ _%$%g111521111523%_))
                             (if (output-port? _%port111529%_)
                                 (let ((_%port111534%_ _%port111529%_))
                                   (__display-as-string
                                    _%x111526%_
                                    _%port111534%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port111529%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args111548%_
        (call-with-output-string
         '()
         (lambda (_%$%g111549111551%_)
           (let* ((_%x111554%_ _%args111548%_)
                  (_%port111557%_ _%$%g111549111551%_))
             (if (output-port? _%port111557%_)
                 (let ((_%port111562%_ _%port111557%_))
                   (__display-as-string _%x111554%_ _%port111562%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port111557%_)
                   '#!void)))))))
    (define as-string
      (lambda _g117939_
        (let ((_g117940_ (let () (declare (not safe)) (##length _g117939_))))
          (cond ((let () (declare (not safe)) (##fx= _g117940_ 1))
                 (apply as-string__0 _g117939_))
                (#t
                 (apply (lambda _%args111548%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args111548%_)))
                        _g117939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g117939_))))))
    (define make-symbol__0
      (lambda (_%x111511%_)
        (if (interned-symbol? _%x111511%_)
            _%x111511%_
            (let ((__tmp117941 (as-string__0 _%x111511%_)))
              (declare (not safe))
              (##string->symbol __tmp117941)))))
    (define make-symbol__1
      (lambda _%args111513%_
        (let ((__tmp117942
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args111513%_))))
          (declare (not safe))
          (##string->symbol __tmp117942))))
    (define make-symbol
      (lambda _g117943_
        (let ((_g117944_ (let () (declare (not safe)) (##length _g117943_))))
          (cond ((let () (declare (not safe)) (##fx= _g117944_ 1))
                 (apply make-symbol__0 _g117943_))
                (#t
                 (apply (lambda _%args111513%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args111513%_)))
                        _g117943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g117943_))))))
    (define make-keyword__0
      (lambda (_%x111507%_)
        (if (interned-keyword? _%x111507%_)
            _%x111507%_
            (let ((__tmp117945 (as-string__0 _%x111507%_)))
              (declare (not safe))
              (##string->keyword __tmp117945)))))
    (define make-keyword__1
      (lambda _%args111509%_
        (let ((__tmp117946
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args111509%_))))
          (declare (not safe))
          (##string->keyword __tmp117946))))
    (define make-keyword
      (lambda _g117947_
        (let ((_g117948_ (let () (declare (not safe)) (##length _g117947_))))
          (cond ((let () (declare (not safe)) (##fx= _g117948_ 1))
                 (apply make-keyword__0 _g117947_))
                (#t
                 (apply (lambda _%args111509%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args111509%_)))
                        _g117947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g117947_))))))
    (define interned-keyword?
      (lambda (_%x111504%_)
        (if (keyword? _%x111504%_)
            (not (uninterned-keyword? _%x111504%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym111492%_)
        (let ((_%sym111495%_ _%sym111492%_))
          (if (uninterned-symbol? _%sym111495%_)
              (let ((__tmp117949
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym111495%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp117949))
              (let ((__tmp117950
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym111495%_))))
                (declare (not safe))
                (##string->keyword __tmp117950))))))
    (define symbol->keyword
      (lambda (_%sym111478%_)
        (if (symbol? _%sym111478%_)
            (let ((_%sym111482%_ _%sym111478%_))
              (__symbol->keyword _%sym111482%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.24-660.27"
               'contract:
               'symbol?
               'value:
               _%sym111478%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym111466%_)
        (let ((_%sym111469%_ _%sym111466%_))
          (if (uninterned-keyword? _%sym111469%_)
              (let ((__tmp117951
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym111469%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp117951))
              (let ((__tmp117952
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym111469%_))))
                (declare (not safe))
                (##string->symbol __tmp117952))))))
    (define keyword->symbol
      (lambda (_%sym111452%_)
        (if (keyword? _%sym111452%_)
            (let ((_%sym111456%_ _%sym111452%_))
              (__keyword->symbol _%sym111456%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@666.24-666.27"
               'contract:
               'keyword?
               'value:
               _%sym111452%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr111412%_ _%enc111413%_)
        (let* ((_%bstr111416%_ _%bstr111412%_) (_%enc111424%_ _%enc111413%_))
          (if (eq? _%enc111424%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr111416%_))
              (let* ((_%in111433%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc111424%_
                                   (cons 'init: (cons _%bstr111416%_ '()))))))
                     (_%len111435%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr111416%_)))
                     (_%out111437%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len111435%_)))
                     (_%n111439%_
                      (read-substring
                       _%out111437%_
                       '0
                       _%len111435%_
                       _%in111433%_)))
                (string-shrink! _%out111437%_ _%n111439%_)
                _%out111437%_)))))
    (define __bytes->string__0
      (lambda (_%bstr111445%_)
        (let ((_%enc111447%_ 'UTF-8))
          (__bytes->string__% _%bstr111445%_ _%enc111447%_))))
    (define __bytes->string
      (lambda _g117953_
        (let ((_g117954_ (let () (declare (not safe)) (##length _g117953_))))
          (cond ((let () (declare (not safe)) (##fx= _g117954_ 1))
                 (apply __bytes->string__0 _g117953_))
                ((let () (declare (not safe)) (##fx= _g117954_ 2))
                 (apply __bytes->string__% _g117953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g117953_))))))
    (define bytes->string__%
      (lambda (_%bstr111376%_ _%enc111377%_)
        (if (u8vector? _%bstr111376%_)
            (let ((_%bstr111381%_ _%bstr111376%_))
              (if (symbol? _%enc111377%_)
                  (let ((_%enc111391%_ _%enc111377%_))
                    (__bytes->string__% _%bstr111381%_ _%enc111391%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc111377%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.26"
               'contract:
               'u8vector?
               'value:
               _%bstr111376%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr111404%_)
        (let ((_%enc111406%_ 'UTF-8))
          (bytes->string__% _%bstr111404%_ _%enc111406%_))))
    (define bytes->string
      (lambda _g117955_
        (let ((_g117956_ (let () (declare (not safe)) (##length _g117955_))))
          (cond ((let () (declare (not safe)) (##fx= _g117956_ 1))
                 (apply bytes->string__0 _g117955_))
                ((let () (declare (not safe)) (##fx= _g117956_ 2))
                 (apply bytes->string__% _g117955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g117955_))))))
    (define __string->bytes__%
      (lambda (_%str111294%_ _%enc111295%_)
        (let* ((_%str111298%_ _%str111294%_) (_%enc111306%_ _%enc111295%_))
          (if (eq? _%enc111306%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str111298%_))
              (let* ((_%str111315%_ _%str111298%_)
                     (_%start111318%_ '0)
                     (_%end111321%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str111298%_)))
                     (_%enc111324%_ _%enc111306%_)
                     (_%str111329%_ _%str111315%_))
                (if (nonnegative-fixnum? _%start111318%_)
                    (let ((_%start111345%_ _%start111318%_))
                      (if (nonnegative-fixnum? _%end111321%_)
                          (let ((_%end111355%_ _%end111321%_))
                            (__substring->bytes__%
                             _%str111329%_
                             _%start111345%_
                             _%end111355%_
                             _%enc111324%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end111321%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start111318%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str111368%_)
        (let ((_%enc111370%_ 'UTF-8))
          (__string->bytes__% _%str111368%_ _%enc111370%_))))
    (define __string->bytes
      (lambda _g117957_
        (let ((_g117958_ (let () (declare (not safe)) (##length _g117957_))))
          (cond ((let () (declare (not safe)) (##fx= _g117958_ 1))
                 (apply __string->bytes__0 _g117957_))
                ((let () (declare (not safe)) (##fx= _g117958_ 2))
                 (apply __string->bytes__% _g117957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g117957_))))))
    (define string->bytes__%
      (lambda (_%str111258%_ _%enc111259%_)
        (if (string? _%str111258%_)
            (let ((_%str111263%_ _%str111258%_))
              (if (symbol? _%enc111259%_)
                  (let ((_%enc111273%_ _%enc111259%_))
                    (__string->bytes__% _%str111263%_ _%enc111273%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@685.25-685.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc111259%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@684.22-684.25"
               'contract:
               'string?
               'value:
               _%str111258%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str111286%_)
        (let ((_%enc111288%_ 'UTF-8))
          (string->bytes__% _%str111286%_ _%enc111288%_))))
    (define string->bytes
      (lambda _g117959_
        (let ((_g117960_ (let () (declare (not safe)) (##length _g117959_))))
          (cond ((let () (declare (not safe)) (##fx= _g117960_ 1))
                 (apply string->bytes__0 _g117959_))
                ((let () (declare (not safe)) (##fx= _g117960_ 2))
                 (apply string->bytes__% _g117959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g117959_))))))
    (define __substring->bytes__%
      (lambda (_%str111210%_ _%start111211%_ _%end111212%_ _%enc111213%_)
        (let* ((_%str111216%_ _%str111210%_)
               (_%start111224%_ _%start111211%_)
               (_%end111232%_ _%end111212%_))
          (if (eq? _%enc111213%_ 'UTF-8)
              (string->utf8 _%str111216%_ _%start111224%_ _%end111232%_)
              (let ((_%out111241%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc111213%_ '())))))
                (write-substring
                 _%str111216%_
                 _%start111224%_
                 _%end111232%_
                 _%out111241%_)
                (get-output-u8vector _%out111241%_))))))
    (define __substring->bytes__0
      (lambda (_%str111246%_ _%start111247%_ _%end111248%_)
        (let ((_%enc111250%_ 'UTF-8))
          (__substring->bytes__%
           _%str111246%_
           _%start111247%_
           _%end111248%_
           _%enc111250%_))))
    (define __substring->bytes
      (lambda _g117961_
        (let ((_g117962_ (let () (declare (not safe)) (##length _g117961_))))
          (cond ((let () (declare (not safe)) (##fx= _g117962_ 3))
                 (apply __substring->bytes__0 _g117961_))
                ((let () (declare (not safe)) (##fx= _g117962_ 4))
                 (apply __substring->bytes__% _g117961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g117961_))))))
    (define substring->bytes__%
      (lambda (_%str111158%_ _%start111159%_ _%end111160%_ _%enc111161%_)
        (if (string? _%str111158%_)
            (let ((_%str111165%_ _%str111158%_))
              (if (nonnegative-fixnum? _%start111159%_)
                  (let ((_%start111175%_ _%start111159%_))
                    (if (nonnegative-fixnum? _%end111160%_)
                        (let ((_%end111185%_ _%end111160%_))
                          (__substring->bytes__%
                           _%str111165%_
                           _%start111175%_
                           _%end111185%_
                           _%enc111161%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@693.25-693.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end111160%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@692.25-692.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start111159%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@691.25-691.28"
               'contract:
               'string?
               'value:
               _%str111158%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str111198%_ _%start111199%_ _%end111200%_)
        (let ((_%enc111202%_ 'UTF-8))
          (substring->bytes__%
           _%str111198%_
           _%start111199%_
           _%end111200%_
           _%enc111202%_))))
    (define substring->bytes
      (lambda _g117963_
        (let ((_g117964_ (let () (declare (not safe)) (##length _g117963_))))
          (cond ((let () (declare (not safe)) (##fx= _g117964_ 3))
                 (apply substring->bytes__0 _g117963_))
                ((let () (declare (not safe)) (##fx= _g117964_ 4))
                 (apply substring->bytes__% _g117963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g117963_))))))
    (define __string-empty?
      (lambda (_%str111145%_)
        (let* ((_%str111148%_ _%str111145%_)
               (__tmp117965
                (let () (declare (not safe)) (##string-length _%str111148%_))))
          (declare (not safe))
          (##fxzero? __tmp117965))))
    (define string-empty?
      (lambda (_%str111131%_)
        (if (string? _%str111131%_)
            (let ((_%str111135%_ _%str111131%_))
              (__string-empty? _%str111135%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@702.22-702.25"
               'contract:
               'string?
               'value:
               _%str111131%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str110965%_ _%criterion110966%_ _%start110967%_ _%end110968%_)
        (let* ((_%str110971%_ _%str110965%_)
               (_%start110979%_ _%start110967%_)
               (_%end110987%_ _%end110968%_)
               (_%end110999%_
                (let ((_%$e110996%_ _%end110987%_))
                  (if _%$e110996%_
                      _%$e110996%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str110971%_))))))
          (if (< _%start110979%_ '0)
              (let ()
                (raise-contract-violation-error
                 '"invalid start for string-index"
                 'value:
                 (cons _%str110971%_ (cons _%start110979%_ '())))
                '#!void)
              (if (> _%end110999%_
                     (let ()
                       (declare (not safe))
                       (##string-length _%str110971%_)))
                  (let ()
                    (raise-contract-violation-error
                     '"invalid end for string-index"
                     'value:
                     (cons _%str110971%_ (cons _%end110999%_ '())))
                    '#!void)
                  (if (char? _%criterion110966%_)
                      (let* ((_%str111004%_ _%str110971%_)
                             (_%char111007%_ _%criterion110966%_)
                             (_%start111010%_ _%start110979%_)
                             (_%end111013%_ _%end110999%_)
                             (_%str111017%_ _%str111004%_)
                             (_%char111033%_ _%char111007%_)
                             (_%start111041%_ _%start111010%_)
                             (_%end111049%_ _%end111013%_))
                        (____string-index/char
                         _%str111017%_
                         _%char111033%_
                         _%start111041%_
                         _%end111049%_))
                      (if (procedure? _%criterion110966%_)
                          (let* ((_%str111059%_ _%str110971%_)
                                 (_%pred?111062%_ _%criterion110966%_)
                                 (_%start111065%_ _%start110979%_)
                                 (_%end111068%_ _%end110999%_)
                                 (_%str111072%_ _%str111059%_)
                                 (_%pred?111084%_ _%pred?111062%_)
                                 (_%start111092%_ _%start111065%_)
                                 (_%end111100%_ _%end111068%_))
                            (____string-index/pred
                             _%str111072%_
                             _%pred?111084%_
                             _%start111092%_
                             _%end111100%_))
                          (let ()
                            (raise-contract-violation-error
                             '"string-index criterion must be char or procedure"
                             'value:
                             _%criterion110966%_)
                            '#!void))))))))
    (define __string-index__0
      (lambda (_%str111113%_ _%criterion111114%_)
        (let* ((_%start111116%_ '0) (_%end111118%_ '#f))
          (__string-index__%
           _%str111113%_
           _%criterion111114%_
           _%start111116%_
           _%end111118%_))))
    (define __string-index__1
      (lambda (_%str111120%_ _%criterion111121%_ _%start111122%_)
        (let ((_%end111124%_ '#f))
          (__string-index__%
           _%str111120%_
           _%criterion111121%_
           _%start111122%_
           _%end111124%_))))
    (define __string-index
      (lambda _g117966_
        (let ((_g117967_ (let () (declare (not safe)) (##length _g117966_))))
          (cond ((let () (declare (not safe)) (##fx= _g117967_ 2))
                 (apply __string-index__0 _g117966_))
                ((let () (declare (not safe)) (##fx= _g117967_ 3))
                 (apply __string-index__1 _g117966_))
                ((let () (declare (not safe)) (##fx= _g117967_ 4))
                 (apply __string-index__% _g117966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g117966_))))))
    (define string-index__%
      (lambda (_%str110900%_ _%criterion110901%_ _%start110902%_ _%end110903%_)
        (if (string? _%str110900%_)
            (let ((_%str110907%_ _%str110900%_))
              (if (nonnegative-fixnum? _%start110902%_)
                  (let ((_%start110917%_ _%start110902%_))
                    (if (or (not _%end110903%_) (fixnum? _%end110903%_))
                        (let ((_%end110933%_ _%end110903%_))
                          (__string-index__%
                           _%str110907%_
                           _%criterion110901%_
                           _%start110917%_
                           _%end110933%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@712.21-712.24"
                           'contract:
                           '(? (or not fixnum?))
                           'value:
                           _%end110903%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@711.21-711.26"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start110902%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@709.21-709.24"
               'contract:
               'string?
               'value:
               _%str110900%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str110946%_ _%criterion110947%_)
        (let* ((_%start110949%_ '0) (_%end110951%_ '#f))
          (string-index__%
           _%str110946%_
           _%criterion110947%_
           _%start110949%_
           _%end110951%_))))
    (define string-index__1
      (lambda (_%str110953%_ _%criterion110954%_ _%start110955%_)
        (let ((_%end110957%_ '#f))
          (string-index__%
           _%str110953%_
           _%criterion110954%_
           _%start110955%_
           _%end110957%_))))
    (define string-index
      (lambda _g117968_
        (let ((_g117969_ (let () (declare (not safe)) (##length _g117968_))))
          (cond ((let () (declare (not safe)) (##fx= _g117969_ 2))
                 (apply string-index__0 _g117968_))
                ((let () (declare (not safe)) (##fx= _g117969_ 3))
                 (apply string-index__1 _g117968_))
                ((let () (declare (not safe)) (##fx= _g117969_ 4))
                 (apply string-index__% _g117968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g117968_))))))
    (define ____string-index/char
      (lambda (_%str110845%_ _%char110846%_ _%start110847%_ _%end110848%_)
        (let* ((_%str110851%_ _%str110845%_)
               (_%char110859%_ _%char110846%_)
               (_%start110867%_ _%start110847%_)
               (_%end110875%_ _%end110848%_))
          (let _%lp110884%_ ((_%k110886%_ _%start110867%_))
            (let ((_%k110888%_ _%k110886%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k110888%_ _%end110875%_))
                  (if (eq? _%char110859%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str110851%_ _%k110888%_)))
                      _%k110888%_
                      (_%lp110884%_
                       (let () (declare (not safe)) (##fx+ _%k110888%_ '1))))
                  '#f))))))
    (define __string-index/char
      (lambda (_%str110806%_ _%char110807%_ _%start110808%_ _%end110809%_)
        (let* ((_%str110812%_ _%str110806%_)
               (_%char110820%_ _%char110807%_)
               (_%start110828%_ _%start110808%_)
               (_%end110836%_ _%end110809%_))
          (____string-index/char
           _%str110812%_
           _%char110820%_
           _%start110828%_
           _%end110836%_))))
    (define ____string-index/pred
      (lambda (_%str110752%_ _%pred?110753%_ _%start110754%_ _%end110755%_)
        (let* ((_%str110758%_ _%str110752%_)
               (_%pred?110766%_ _%pred?110753%_)
               (_%start110774%_ _%start110754%_)
               (_%end110782%_ _%end110755%_))
          (let _%lp110791%_ ((_%k110793%_ _%start110774%_))
            (let ((_%k110795%_ _%k110793%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k110795%_ _%end110782%_))
                  (if (let ((__tmp117970
                             (let ()
                               (declare (not safe))
                               (##string-ref _%str110758%_ _%k110795%_))))
                        (declare (not safe))
                        (_%pred?110766%_ __tmp117970))
                      _%k110795%_
                      (_%lp110791%_
                       (let () (declare (not safe)) (##fx+ _%k110795%_ '1))))
                  '#f))))))
    (define __string-index/pred
      (lambda (_%str110713%_ _%pred?110714%_ _%start110715%_ _%end110716%_)
        (let* ((_%str110719%_ _%str110713%_)
               (_%pred?110727%_ _%pred?110714%_)
               (_%start110735%_ _%start110715%_)
               (_%end110743%_ _%end110716%_))
          (____string-index/pred
           _%str110719%_
           _%pred?110727%_
           _%start110735%_
           _%end110743%_))))
    (define __string-rindex__%
      (lambda (_%str110553%_ _%criterion110554%_ _%start110555%_ _%end110556%_)
        (let* ((_%str110559%_ _%str110553%_)
               (_%start110567%_ _%start110555%_)
               (_%end110575%_ _%end110556%_))
          (if (>= _%start110567%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%str110559%_)))
              (let ()
                (raise-contract-violation-error
                 '"invalid start for string-rindex"
                 'value:
                 (cons _%str110559%_ (cons _%start110567%_ '())))
                '#!void)
              (if (< _%end110575%_ '0)
                  (let ()
                    (raise-contract-violation-error
                     '"invalid end for string-rindex"
                     'value:
                     (cons _%str110559%_ (cons _%end110575%_ '())))
                    '#!void)
                  (if (char? _%criterion110554%_)
                      (let* ((_%str110587%_ _%str110559%_)
                             (_%char110590%_ _%criterion110554%_)
                             (_%start110593%_ _%start110567%_)
                             (_%end110596%_ _%end110575%_)
                             (_%str110600%_ _%str110587%_)
                             (_%char110615%_ _%char110590%_)
                             (_%start110623%_ _%start110593%_)
                             (_%end110631%_ _%end110596%_))
                        (____string-rindex/char
                         _%str110600%_
                         _%char110615%_
                         _%start110623%_
                         _%end110631%_))
                      (if (procedure? _%criterion110554%_)
                          (let* ((_%str110641%_ _%str110559%_)
                                 (_%pred?110644%_ _%criterion110554%_)
                                 (_%start110647%_ _%start110567%_)
                                 (_%end110650%_ _%end110575%_)
                                 (_%str110654%_ _%str110641%_)
                                 (_%pred?110666%_ _%pred?110644%_)
                                 (_%start110674%_ _%start110647%_)
                                 (_%end110682%_ _%end110650%_))
                            (____string-rindex/pred
                             _%str110654%_
                             _%pred?110666%_
                             _%start110674%_
                             _%end110682%_))
                          (let ()
                            (raise-contract-violation-error
                             '"string-rindex criterion must be char or procedure"
                             'value:
                             _%criterion110554%_)
                            '#!void))))))))
    (define __string-rindex__0
      (lambda (_%str110695%_ _%criterion110696%_)
        (let* ((_%start110698%_
                (let ((__tmp117971 (string-length _%str110695%_)))
                  (declare (not safe))
                  (##fx- __tmp117971 '1)))
               (_%end110700%_ '0))
          (__string-rindex__%
           _%str110695%_
           _%criterion110696%_
           _%start110698%_
           _%end110700%_))))
    (define __string-rindex__1
      (lambda (_%str110702%_ _%criterion110703%_ _%start110704%_)
        (let ((_%end110706%_ '0))
          (__string-rindex__%
           _%str110702%_
           _%criterion110703%_
           _%start110704%_
           _%end110706%_))))
    (define __string-rindex
      (lambda _g117972_
        (let ((_g117973_ (let () (declare (not safe)) (##length _g117972_))))
          (cond ((let () (declare (not safe)) (##fx= _g117973_ 2))
                 (apply __string-rindex__0 _g117972_))
                ((let () (declare (not safe)) (##fx= _g117973_ 3))
                 (apply __string-rindex__1 _g117972_))
                ((let () (declare (not safe)) (##fx= _g117973_ 4))
                 (apply __string-rindex__% _g117972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g117972_))))))
    (define string-rindex__%
      (lambda (_%str110494%_ _%criterion110495%_ _%start110496%_ _%end110497%_)
        (if (string? _%str110494%_)
            (let ((_%str110501%_ _%str110494%_))
              (if (fixnum? _%start110496%_)
                  (let ((_%start110511%_ _%start110496%_))
                    (if (fixnum? _%end110497%_)
                        (let ((_%end110521%_ _%end110497%_))
                          (__string-rindex__%
                           _%str110501%_
                           _%criterion110495%_
                           _%start110511%_
                           _%end110521%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@756.22-756.25"
                           'contract:
                           'fixnum?
                           'value:
                           _%end110497%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@755.22-755.27"
                     'contract:
                     'fixnum?
                     'value:
                     _%start110496%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@753.22-753.25"
               'contract:
               'string?
               'value:
               _%str110494%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str110534%_ _%criterion110535%_)
        (let* ((_%start110537%_
                (let ((__tmp117974 (string-length _%str110534%_)))
                  (declare (not safe))
                  (##fx- __tmp117974 '1)))
               (_%end110539%_ '0))
          (string-rindex__%
           _%str110534%_
           _%criterion110535%_
           _%start110537%_
           _%end110539%_))))
    (define string-rindex__1
      (lambda (_%str110541%_ _%criterion110542%_ _%start110543%_)
        (let ((_%end110545%_ '0))
          (string-rindex__%
           _%str110541%_
           _%criterion110542%_
           _%start110543%_
           _%end110545%_))))
    (define string-rindex
      (lambda _g117975_
        (let ((_g117976_ (let () (declare (not safe)) (##length _g117975_))))
          (cond ((let () (declare (not safe)) (##fx= _g117976_ 2))
                 (apply string-rindex__0 _g117975_))
                ((let () (declare (not safe)) (##fx= _g117976_ 3))
                 (apply string-rindex__1 _g117975_))
                ((let () (declare (not safe)) (##fx= _g117976_ 4))
                 (apply string-rindex__% _g117975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g117975_))))))
    (define ____string-rindex/char
      (lambda (_%str110439%_ _%char110440%_ _%start110441%_ _%end110442%_)
        (let* ((_%str110445%_ _%str110439%_)
               (_%char110453%_ _%char110440%_)
               (_%start110461%_ _%start110441%_)
               (_%end110469%_ _%end110442%_))
          (let _%lp110478%_ ((_%k110480%_ _%start110461%_))
            (let ((_%k110482%_ _%k110480%_))
              (if (let ()
                    (declare (not safe))
                    (##fx>= _%k110482%_ _%end110469%_))
                  (if (eq? _%char110453%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str110445%_ _%k110482%_)))
                      _%k110482%_
                      (_%lp110478%_
                       (let () (declare (not safe)) (##fx- _%k110482%_ '1))))
                  '#f))))))
    (define __string-rindex/char
      (lambda (_%str110400%_ _%char110401%_ _%start110402%_ _%end110403%_)
        (let* ((_%str110406%_ _%str110400%_)
               (_%char110414%_ _%char110401%_)
               (_%start110422%_ _%start110402%_)
               (_%end110430%_ _%end110403%_))
          (____string-rindex/char
           _%str110406%_
           _%char110414%_
           _%start110422%_
           _%end110430%_))))
    (define ____string-rindex/pred
      (lambda (_%str110346%_ _%pred?110347%_ _%start110348%_ _%end110349%_)
        (let* ((_%str110352%_ _%str110346%_)
               (_%pred?110360%_ _%pred?110347%_)
               (_%start110368%_ _%start110348%_)
               (_%end110376%_ _%end110349%_))
          (let _%lp110385%_ ((_%k110387%_ _%start110368%_))
            (let ((_%k110389%_ _%k110387%_))
              (if (let ()
                    (declare (not safe))
                    (##fx>= _%k110389%_ _%end110376%_))
                  (if (let ((__tmp117977
                             (let ()
                               (declare (not safe))
                               (##string-ref _%str110352%_ _%k110389%_))))
                        (declare (not safe))
                        (_%pred?110360%_ __tmp117977))
                      _%k110389%_
                      (_%lp110385%_
                       (let () (declare (not safe)) (##fx- _%k110389%_ '1))))
                  '#f))))))
    (define __string-rindex/pred
      (lambda (_%str110307%_ _%pred?110308%_ _%start110309%_ _%end110310%_)
        (let* ((_%str110313%_ _%str110307%_)
               (_%pred?110321%_ _%pred?110308%_)
               (_%start110329%_ _%start110309%_)
               (_%end110337%_ _%end110310%_))
          (____string-rindex/pred
           _%str110313%_
           _%pred?110321%_
           _%start110329%_
           _%end110337%_))))
    (define __string-split
      (lambda (_%str110195%_ _%char110196%_)
        (let* ((_%str110199%_ _%str110195%_)
               (_%char110207%_ _%char110196%_)
               (_%len110216%_
                (let () (declare (not safe)) (##string-length _%str110199%_))))
          (let _%lp110218%_ ((_%start110220%_ '0) (_%r110221%_ '()))
            (let* ((_%start110224%_ _%start110220%_)
                   (_%$e110292%_
                    (let* ((_%str110237%_ _%str110199%_)
                           (_%criterion110240%_ _%char110207%_)
                           (_%start110243%_ _%start110224%_)
                           (_%end110246%_ '#f)
                           (_%str110251%_ _%str110237%_))
                      (if (nonnegative-fixnum? _%start110243%_)
                          (let ((_%start110266%_ _%start110243%_))
                            (if (let ((_%$e110278%_ '#t))
                                  (and _%$e110278%_ _%$e110278%_))
                                (let ((_%end110282%_ _%end110246%_))
                                  (__string-index__%
                                   _%str110251%_
                                   _%criterion110240%_
                                   _%start110266%_
                                   _%end110282%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   '(? (or not fixnum?))
                                   'value:
                                   _%end110246%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start110243%_)
                            '#!void)))))
              (if _%$e110292%_
                  (let ((_%end110297%_ _%$e110292%_))
                    (_%lp110218%_
                     (let () (declare (not safe)) (##fx+ _%end110297%_ '1))
                     (cons (let ()
                             (declare (not safe))
                             (##substring
                              _%str110199%_
                              _%start110224%_
                              _%end110297%_))
                           _%r110221%_)))
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start110224%_ _%len110216%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str110199%_
                                _%start110224%_
                                _%len110216%_)))
                       _%r110221%_)
                      (reverse! _%r110221%_))))))))
    (define string-split
      (lambda (_%str110170%_ _%char110171%_)
        (if (string? _%str110170%_)
            (let ((_%str110175%_ _%str110170%_))
              (if (char? _%char110171%_)
                  (let ((_%char110185%_ _%char110171%_))
                    (__string-split _%str110175%_ _%char110185%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@794.37-794.41"
                     'contract:
                     'char?
                     'value:
                     _%char110171%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@794.21-794.24"
               'contract:
               'string?
               'value:
               _%str110170%_)
              '#!void))))
    (define string-join
      (lambda (_%strs110020%_ _%join110021%_)
        (letrec ((_%join-length110024%_
                  (lambda (_%strs110108%_ _%jlen110109%_)
                    (let _%lp110111%_ ((_%rest110113%_ _%strs110108%_)
                                       (_%len110114%_ '0))
                      (let* ((_%len110116%_ _%len110114%_)
                             (_%$%rest110124110132%_ _%rest110113%_)
                             (_%$%else110126110140%_ (lambda () '0))
                             (_%$%K110128110158%_
                              (lambda (_%rest110143%_ _%hd110144%_)
                                (if (string? _%hd110144%_)
                                    (let ((_%hd110146%_ _%hd110144%_))
                                      (if (pair? _%rest110143%_)
                                          (_%lp110111%_
                                           _%rest110143%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd110146%_))
                                                _%jlen110109%_
                                                _%len110116%_))
                                          (let ((__tmp117978
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd110146%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp117978
                                                   _%len110116%_))))
                                    (begin
                                      (raise-contract-violation-error
                                       '"expected string"
                                       'value:
                                       _%hd110144%_)
                                      '#!void)))))
                        (if (pair? _%$%rest110124110132%_)
                            (let ((_%$%hd110129110161%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest110124110132%_)))
                                  (_%$%tl110130110163%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest110124110132%_))))
                              (let* ((_%hd110166%_ _%$%hd110129110161%_)
                                     (_%rest110168%_ _%$%tl110130110163%_))
                                (_%$%K110128110158%_
                                 _%rest110168%_
                                 _%hd110166%_)))
                            (_%$%else110126110140%_)))))))
          (let* ((_%join110029%_
                  (if (char? _%join110021%_)
                      (let () (declare (not safe)) (##string _%join110021%_))
                      (if (string? _%join110021%_)
                          _%join110021%_
                          (let ()
                            (raise-contract-violation-error
                             '"expected string or char"
                             'value:
                             _%join110021%_)
                            '#!void))))
                 (_%jlen110031%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join110029%_)))
                 (_%olen110033%_
                  (_%join-length110024%_ _%strs110020%_ _%jlen110031%_))
                 (_%ostr110035%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen110033%_))))
            (let _%lp110038%_ ((_%rest110040%_ _%strs110020%_)
                               (_%k110041%_ '0))
              (let* ((_%k110044%_ _%k110041%_)
                     (_%$%rest110060110068%_ _%rest110040%_)
                     (_%$%else110062110076%_ (lambda () '""))
                     (_%$%K110064110096%_
                      (lambda (_%rest110079%_ _%hd110080%_)
                        (let* ((_%hd110082%_ _%hd110080%_)
                               (_%hdlen110094%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd110082%_))))
                          (if (pair? _%rest110079%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd110082%_
                                   '0
                                   _%hdlen110094%_
                                   _%ostr110035%_
                                   _%k110044%_))
                                (let ((__tmp117979
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k110044%_ _%hdlen110094%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join110029%_
                                   '0
                                   _%jlen110031%_
                                   _%ostr110035%_
                                   __tmp117979))
                                (_%lp110038%_
                                 _%rest110079%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k110044%_
                                          _%hdlen110094%_
                                          _%jlen110031%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd110082%_
                                   '0
                                   _%hdlen110094%_
                                   _%ostr110035%_
                                   _%k110044%_))
                                _%ostr110035%_))))))
                (if (pair? _%$%rest110060110068%_)
                    (let ((_%$%hd110065110099%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest110060110068%_)))
                          (_%$%tl110066110101%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest110060110068%_))))
                      (let* ((_%hd110104%_ _%$%hd110065110099%_)
                             (_%rest110106%_ _%$%tl110066110101%_))
                        (_%$%K110064110096%_ _%rest110106%_ _%hd110104%_)))
                    (_%$%else110062110076%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes109960%_ _%port109961%_ _%start109962%_ _%end109963%_)
        (let* ((_%bytes109966%_ _%bytes109960%_)
               (_%port109974%_ _%port109961%_)
               (_%start109982%_ _%start109962%_)
               (_%end109990%_ _%end109963%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes109966%_
           _%start109982%_
           _%end109990%_
           _%port109974%_))))
    (define __read-u8vector__0
      (lambda (_%bytes110002%_ _%port110003%_)
        (let* ((_%start110005%_ '0)
               (_%end110007%_ (u8vector-length _%bytes110002%_)))
          (__read-u8vector__%
           _%bytes110002%_
           _%port110003%_
           _%start110005%_
           _%end110007%_))))
    (define __read-u8vector__1
      (lambda (_%bytes110009%_ _%port110010%_ _%start110011%_)
        (let ((_%end110013%_ (u8vector-length _%bytes110009%_)))
          (__read-u8vector__%
           _%bytes110009%_
           _%port110010%_
           _%start110011%_
           _%end110013%_))))
    (define __read-u8vector
      (lambda _g117980_
        (let ((_g117981_ (let () (declare (not safe)) (##length _g117980_))))
          (cond ((let () (declare (not safe)) (##fx= _g117981_ 2))
                 (apply __read-u8vector__0 _g117980_))
                ((let () (declare (not safe)) (##fx= _g117981_ 3))
                 (apply __read-u8vector__1 _g117980_))
                ((let () (declare (not safe)) (##fx= _g117981_ 4))
                 (apply __read-u8vector__% _g117980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g117980_))))))
    (define read-u8vector__%
      (lambda (_%bytes109885%_ _%port109886%_ _%start109887%_ _%end109888%_)
        (if (u8vector? _%bytes109885%_)
            (let ((_%bytes109892%_ _%bytes109885%_))
              (if (input-port? _%port109886%_)
                  (let ((_%port109902%_ _%port109886%_))
                    (if (and (fixnum? _%start109887%_)
                             (let ()
                               (declare (not safe))
                               (##fx>= _%start109887%_ '0))
                             (let ((__tmp117982
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes109892%_))))
                               (declare (not safe))
                               (##fx< _%start109887%_ __tmp117982)))
                        (let ((_%start109915%_ _%start109887%_))
                          (if (and (fixnum? _%end109888%_)
                                   (let ((__tmp117983
                                          (let ()
                                            (declare (not safe))
                                            (##u8vector-length
                                             _%bytes109892%_))))
                                     (declare (not safe))
                                     (##fx<= _%start109915%_
                                             _%end109888%_
                                             __tmp117983)))
                              (let ((_%end109928%_ _%end109888%_))
                                (__read-u8vector__%
                                 _%bytes109892%_
                                 _%port109902%_
                                 _%start109915%_
                                 _%end109928%_))
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
                                 _%end109888%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@861.22-861.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start109887%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@860.22-860.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port109886%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@859.22-859.27"
               'contract:
               'u8vector?
               'value:
               _%bytes109885%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes109941%_ _%port109942%_)
        (let* ((_%start109944%_ '0)
               (_%end109946%_ (u8vector-length _%bytes109941%_)))
          (read-u8vector__%
           _%bytes109941%_
           _%port109942%_
           _%start109944%_
           _%end109946%_))))
    (define read-u8vector__1
      (lambda (_%bytes109948%_ _%port109949%_ _%start109950%_)
        (let ((_%end109952%_ (u8vector-length _%bytes109948%_)))
          (read-u8vector__%
           _%bytes109948%_
           _%port109949%_
           _%start109950%_
           _%end109952%_))))
    (define read-u8vector
      (lambda _g117984_
        (let ((_g117985_ (let () (declare (not safe)) (##length _g117984_))))
          (cond ((let () (declare (not safe)) (##fx= _g117985_ 2))
                 (apply read-u8vector__0 _g117984_))
                ((let () (declare (not safe)) (##fx= _g117985_ 3))
                 (apply read-u8vector__1 _g117984_))
                ((let () (declare (not safe)) (##fx= _g117985_ 4))
                 (apply read-u8vector__% _g117984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g117984_))))))
    (define __write-u8vector__%
      (lambda (_%bytes109824%_ _%port109825%_ _%start109826%_ _%end109827%_)
        (let* ((_%bytes109830%_ _%bytes109824%_)
               (_%port109838%_ _%port109825%_)
               (_%start109846%_ _%start109826%_)
               (_%end109854%_ _%end109827%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes109830%_
           _%start109846%_
           _%end109854%_
           _%port109838%_))))
    (define __write-u8vector__0
      (lambda (_%bytes109866%_ _%port109867%_)
        (let* ((_%start109869%_ '0)
               (_%end109871%_ (u8vector-length _%bytes109866%_)))
          (__write-u8vector__%
           _%bytes109866%_
           _%port109867%_
           _%start109869%_
           _%end109871%_))))
    (define __write-u8vector__1
      (lambda (_%bytes109873%_ _%port109874%_ _%start109875%_)
        (let ((_%end109877%_ (u8vector-length _%bytes109873%_)))
          (__write-u8vector__%
           _%bytes109873%_
           _%port109874%_
           _%start109875%_
           _%end109877%_))))
    (define __write-u8vector
      (lambda _g117986_
        (let ((_g117987_ (let () (declare (not safe)) (##length _g117986_))))
          (cond ((let () (declare (not safe)) (##fx= _g117987_ 2))
                 (apply __write-u8vector__0 _g117986_))
                ((let () (declare (not safe)) (##fx= _g117987_ 3))
                 (apply __write-u8vector__1 _g117986_))
                ((let () (declare (not safe)) (##fx= _g117987_ 4))
                 (apply __write-u8vector__% _g117986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g117986_))))))
    (define write-u8vector__%
      (lambda (_%bytes109754%_ _%port109755%_ _%start109756%_ _%end109757%_)
        (if (u8vector? _%bytes109754%_)
            (let ((_%bytes109761%_ _%bytes109754%_))
              (if (output-port? _%port109755%_)
                  (let* ((_%port109771%_ _%port109755%_)
                         (_%start109780%_ _%start109756%_))
                    (if (and (fixnum? _%end109757%_)
                             (let ((__tmp117988
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes109761%_))))
                               (declare (not safe))
                               (##fx<= _%start109780%_
                                       _%end109757%_
                                       __tmp117988)))
                        (let ((_%end109792%_ _%end109757%_))
                          (__write-u8vector__%
                           _%bytes109761%_
                           _%port109771%_
                           _%start109780%_
                           _%end109792%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@872.23-872.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end109757%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@870.23-870.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port109755%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@869.23-869.28"
               'contract:
               'u8vector?
               'value:
               _%bytes109754%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes109805%_ _%port109806%_)
        (let* ((_%start109808%_ '0)
               (_%end109810%_ (u8vector-length _%bytes109805%_)))
          (write-u8vector__%
           _%bytes109805%_
           _%port109806%_
           _%start109808%_
           _%end109810%_))))
    (define write-u8vector__1
      (lambda (_%bytes109812%_ _%port109813%_ _%start109814%_)
        (let ((_%end109816%_ (u8vector-length _%bytes109812%_)))
          (write-u8vector__%
           _%bytes109812%_
           _%port109813%_
           _%start109814%_
           _%end109816%_))))
    (define write-u8vector
      (lambda _g117989_
        (let ((_g117990_ (let () (declare (not safe)) (##length _g117989_))))
          (cond ((let () (declare (not safe)) (##fx= _g117990_ 2))
                 (apply write-u8vector__0 _g117989_))
                ((let () (declare (not safe)) (##fx= _g117990_ 3))
                 (apply write-u8vector__1 _g117989_))
                ((let () (declare (not safe)) (##fx= _g117990_ 4))
                 (apply write-u8vector__% _g117989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g117989_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag109722%_
               _%dbg-exprs109723%_
               _%dbg-thunks109724%_
               _%expr109725%_
               _%thunk109726%_)
        (letrec ((_%o109728%_ (current-output-port))
                 (_%e109729%_ (current-error-port))
                 (_%p109730%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f109731%_
                  (lambda ()
                    (force-output _%o109728%_)
                    (force-output _%e109729%_)))
                 (_%d109732%_
                  (lambda (_%x109739%_) (display _%x109739%_ _%e109729%_)))
                 (_%w109733%_
                  (lambda (_%x109741%_) (_%p109730%_ _%x109741%_ _%e109729%_)))
                 (_%n109734%_ (lambda () (newline _%e109729%_)))
                 (_%v109735%_
                  (lambda (_%l109744%_)
                    (for-each
                     (lambda (_%x109746%_)
                       (_%d109732%_ '" ")
                       (_%w109733%_ _%x109746%_))
                     _%l109744%_)
                    (_%n109734%_)))
                 (_%x109736%_
                  (lambda (_%expr109748%_ _%thunk109749%_)
                    (_%f109731%_)
                    (_%d109732%_ '"  ")
                    (_%w109733%_ _%expr109748%_)
                    (_%d109732%_ '" =>")
                    (call-with-values
                     _%thunk109749%_
                     (lambda _%x109751%_
                       (_%v109735%_ _%x109751%_)
                       (_%f109731%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x109751%_)))))))
          (if _%tag109722%_
              (begin
                (if (eq? _%tag109722%_ '#!void)
                    '#!void
                    (begin
                      (_%f109731%_)
                      (_%d109732%_ _%tag109722%_)
                      (_%n109734%_)))
                (for-each _%x109736%_ _%dbg-exprs109723%_ _%dbg-thunks109724%_)
                (if _%thunk109726%_
                    (_%x109736%_ _%expr109725%_ _%thunk109726%_)
                    '#!void))
              (if _%thunk109726%_ (_%thunk109726%_) '#!void)))))))
