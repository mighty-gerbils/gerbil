(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1771025391)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args111117%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args111117%_))
          (newline))))
    (define display*
      (lambda _%args111114%_
        (let () (declare (not safe)) (##for-each display _%args111114%_))))
    (define __file-newer?
      (lambda (_%file1110905%_ _%file2110906%_)
        (let* ((_%file1110909%_ _%file1110905%_)
               (_%file2110917%_ _%file2110906%_))
          (letrec ((_%__modification-time111061%_
                    (lambda (_%file111102%_)
                      (let* ((_%file111105%_ _%file111102%_)
                             (__tmp113893
                              (let ((__tmp113894
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file111105%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp113894))))
                        (declare (not safe))
                        (##time->seconds __tmp113893))))
                   (_%modification-time111062%_
                    (lambda (_%file111090%_)
                      (let ((_%file111093%_ _%file111090%_))
                        (_%__modification-time111061%_ _%file111093%_)))))
            (let ((__tmp113896
                   (let* ((_%file111064%_ _%file1110909%_)
                          (_%file111068%_ _%file111064%_))
                     (_%__modification-time111061%_ _%file111068%_)))
                  (__tmp113895
                   (let* ((_%file111077%_ _%file2110917%_)
                          (_%file111081%_ _%file111077%_))
                     (_%__modification-time111061%_ _%file111081%_))))
              (declare (not safe))
              (##fl> __tmp113896 __tmp113895))))))
    (define file-newer?
      (lambda (_%file1100491%_ _%file2100492%_)
        (if (string? _%file1100491%_)
            (let ((_%file1100496%_ _%file1100491%_))
              (if (string? _%file2100492%_)
                  (let ((_%file2100506%_ _%file2100492%_))
                    (__file-newer? _%file1100496%_ _%file2100506%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@98.20-98.25"
                     'contract:
                     'string?
                     'value:
                     _%file2100492%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@97.20-97.25"
               'contract:
               'string?
               'value:
               _%file1100491%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir110625%_ _%perms110626%_)
        (let* ((_%dir110629%_ _%dir110625%_) (_%perms110637%_ _%perms110626%_))
          (letrec ((_%__create1110781%_
                    (lambda (_%path110880%_)
                      (let ((_%path110883%_ _%path110880%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path110883%_))
                            (if (eq? (file-type _%path110883%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path110883%_))
                            (if _%perms110637%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path110883%_
                                             (cons 'permissions:
                                                   (cons _%perms110637%_
                                                         '())))))
                                (create-directory _%path110883%_))))))
                   (_%create1110782%_
                    (lambda (_%path110868%_)
                      (let ((_%path110871%_ _%path110868%_))
                        (_%__create1110781%_ _%path110871%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir110629%_))
                '#!void
                (let _%lp110784%_ ((_%start110786%_ '0))
                  (let ((_%$e110833%_
                         (let* ((_%str110788%_ _%dir110629%_)
                                (_%char110791%_ '#\/)
                                (_%start110794%_ _%start110786%_)
                                (_%str110799%_ _%str110788%_)
                                (_%char110813%_ _%char110791%_))
                           (if (nonnegative-fixnum? _%start110794%_)
                               (let ((_%start110823%_ _%start110794%_))
                                 (__string-index__%
                                  _%str110799%_
                                  _%char110813%_
                                  _%start110823%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start110794%_)
                                 '#!void)))))
                    (if _%$e110833%_
                        ((lambda (_%x110836%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x110836%_ '0))
                               (let* ((_%path110838%_
                                       (substring
                                        _%dir110629%_
                                        '0
                                        _%x110836%_))
                                      (_%path110842%_ _%path110838%_))
                                 (_%__create1110781%_ _%path110842%_))
                               '#!void)
                           (_%lp110784%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x110836%_ '1))))
                         _%$e110833%_)
                        (let* ((_%path110854%_ _%dir110629%_)
                               (_%path110858%_ _%path110854%_))
                          (_%__create1110781%_ _%path110858%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir110898%_)
        (let ((_%perms110900%_ '493))
          (__create-directory*__% _%dir110898%_ _%perms110900%_))))
    (define __create-directory*
      (lambda _g113897_
        (let ((_g113898_ (let () (declare (not safe)) (##length _g113897_))))
          (cond ((let () (declare (not safe)) (##fx= _g113898_ 1))
                 (apply __create-directory*__0 _g113897_))
                ((let () (declare (not safe)) (##fx= _g113898_ 2))
                 (apply __create-directory*__% _g113897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g113897_))))))
    (define create-directory*__%
      (lambda (_%dir100637%_ _%perms100638%_)
        (if (string? _%dir100637%_)
            (let ((_%dir100642%_ _%dir100637%_))
              (if (fixnum? _%perms100638%_)
                  (let ((_%perms100652%_ _%perms100638%_))
                    (__create-directory*__% _%dir100642%_ _%perms100652%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@109.26-109.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms100638%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@108.26-108.29"
               'contract:
               'string?
               'value:
               _%dir100637%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir100665%_)
        (let ((_%perms100667%_ '493))
          (create-directory*__% _%dir100665%_ _%perms100667%_))))
    (define create-directory*
      (lambda _g113899_
        (let ((_g113900_ (let () (declare (not safe)) (##length _g113899_))))
          (cond ((let () (declare (not safe)) (##fx= _g113900_ 1))
                 (apply create-directory*__0 _g113899_))
                ((let () (declare (not safe)) (##fx= _g113900_ 2))
                 (apply create-directory*__% _g113899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g113899_))))))
    (define __move-file__%
      (lambda (_%src110568%_ _%dest110569%_ _%replace?110570%_)
        (let* ((_%src110573%_ _%src110568%_)
               (_%dest110581%_ _%dest110569%_)
               (_%replace?110589%_ _%replace?110570%_))
          (letrec ((_%force-move-it110598%_
                    (lambda ()
                      (let ((_%tmp110604%_
                             (if _%replace?110589%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest110581%_))
                                     (let ((__tmp113901
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest110581%_
                                        '"."
                                        __tmp113901))
                                     '#f)
                                 '#f)))
                        (if _%tmp110604%_
                            (rename-file _%dest110581%_ _%tmp110604%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e110606%_)
                           (if _%tmp110604%_
                               (rename-file _%tmp110604%_ _%dest110581%_ '#t)
                               '#!void)
                           (raise _%e110606%_))
                         (lambda ()
                           (let ((_%fi110609%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src110573%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi110609%_))
                                      'symbolic-link)
                                 (let ((__tmp113902
                                        (path-normalize _%src110573%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp113902
                                    _%dest110581%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src110573%_
                                    _%dest110581%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src110573%_))
                           (if _%tmp110604%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp110604%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e110600%_)
               (if (let () (declare (not safe)) (##file-exists? _%src110573%_))
                   (_%force-move-it110598%_)
                   (raise _%e110600%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src110573%_
                  _%dest110581%_
                  _%replace?110589%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src110615%_ _%dest110616%_)
        (let ((_%replace?110618%_ '#t))
          (__move-file__% _%src110615%_ _%dest110616%_ _%replace?110618%_))))
    (define __move-file
      (lambda _g113903_
        (let ((_g113904_ (let () (declare (not safe)) (##length _g113903_))))
          (cond ((let () (declare (not safe)) (##fx= _g113904_ 2))
                 (apply __move-file__0 _g113903_))
                ((let () (declare (not safe)) (##fx= _g113904_ 3))
                 (apply __move-file__% _g113903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g113903_))))))
    (define move-file__%
      (lambda (_%src100793%_ _%dest100794%_ _%replace?100795%_)
        (if (string? _%src100793%_)
            (let ((_%src100799%_ _%src100793%_))
              (if (string? _%dest100794%_)
                  (let ((_%dest100809%_ _%dest100794%_))
                    (if (boolean? _%replace?100795%_)
                        (let ((_%replace?100819%_ _%replace?100795%_))
                          (__move-file__%
                           _%src100799%_
                           _%dest100809%_
                           _%replace?100819%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@133.51-133.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?100795%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@133.34-133.38"
                     'contract:
                     'string?
                     'value:
                     _%dest100794%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@133.18-133.21"
               'contract:
               'string?
               'value:
               _%src100793%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src100832%_ _%dest100833%_)
        (let ((_%replace?100835%_ '#t))
          (move-file__% _%src100832%_ _%dest100833%_ _%replace?100835%_))))
    (define move-file
      (lambda _g113905_
        (let ((_g113906_ (let () (declare (not safe)) (##length _g113905_))))
          (cond ((let () (declare (not safe)) (##fx= _g113906_ 2))
                 (apply move-file__0 _g113905_))
                ((let () (declare (not safe)) (##fx= _g113906_ 3))
                 (apply move-file__% _g113905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g113905_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore110564%_ '#t))
    (define true? (lambda (_%obj110561%_) (eq? _%obj110561%_ '#t)))
    (define false (lambda _%ignore110558%_ '#f))
    (define void (lambda _%ignore110555%_ '#!void))
    (define void? (lambda (_%obj110552%_) (eq? _%obj110552%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj110549%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj110549%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj110546%_) (eq? _%obj110546%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj110543%_) (eq? _%obj110543%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj110540%_) (eq? _%obj110540%_ '#!optional)))
    (define immediate?
      (lambda (_%obj110537%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj110537%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj110534%_)
        (if (fixnum? _%obj110534%_)
            (let () (declare (not safe)) (##fx>= _%obj110534%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj110528%_)
        (let ((_%$e110531%_ (pair? _%obj110528%_)))
          (if _%$e110531%_ _%$e110531%_ (null? _%obj110528%_)))))
    (define values-count
      (lambda (_%obj110525%_)
        (if (let () (declare (not safe)) (##values? _%obj110525%_))
            (let () (declare (not safe)) (##values-length _%obj110525%_))
            '1)))
    (define __values-ref
      (lambda (_%obj110512%_ _%k110513%_)
        (let ((_%k110516%_ _%k110513%_))
          (if (let () (declare (not safe)) (##values? _%obj110512%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj110512%_ _%k110516%_))
              _%obj110512%_))))
    (define values-ref
      (lambda (_%obj100961%_ _%k100962%_)
        (if (fixnum? _%k100962%_)
            (let ((_%k100966%_ _%k100962%_))
              (__values-ref _%obj100961%_ _%k100966%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@267.23-267.24"
               'contract:
               'fixnum?
               'value:
               _%k100962%_)
              '#!void))))
    (define values->list
      (lambda (_%obj110509%_)
        (if (let () (declare (not safe)) (##values? _%obj110509%_))
            (let () (declare (not safe)) (##values->list _%obj110509%_))
            (list _%obj110509%_))))
    (define __foldl1
      (lambda (_%f110457%_ _%iv110458%_ _%lst110459%_)
        (let ((_%f110462%_ _%f110457%_))
          (let _%lp110471%_ ((_%rest110473%_ _%lst110459%_)
                             (_%r110474%_ _%iv110458%_))
            (let* ((_%rest110475110483%_ _%rest110473%_)
                   (_%else110477110491%_ (lambda () _%r110474%_))
                   (_%K110479110497%_
                    (lambda (_%rest110494%_ _%x110495%_)
                      (_%lp110471%_
                       _%rest110494%_
                       (let ()
                         (declare (not safe))
                         (_%f110462%_ _%x110495%_ _%r110474%_))))))
              (if (pair? _%rest110475110483%_)
                  (let ((_%hd110480110500%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110475110483%_)))
                        (_%tl110481110502%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110475110483%_))))
                    (let* ((_%x110505%_ _%hd110480110500%_)
                           (_%rest110507%_ _%tl110481110502%_))
                      (_%K110479110497%_ _%rest110507%_ _%x110505%_)))
                  (_%else110477110491%_)))))))
    (define foldl1
      (lambda (_%f101096%_ _%iv101097%_ _%lst101098%_)
        (if (procedure? _%f101096%_)
            (let ((_%f101102%_ _%f101096%_))
              (__foldl1 _%f101102%_ _%iv101097%_ _%lst101098%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@290.15-290.16"
               'contract:
               'procedure?
               'value:
               _%f101096%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f110370%_ _%iv110371%_ _%lst1110372%_ _%lst2110373%_)
        (let ((_%f110376%_ _%f110370%_))
          (let _%lp110385%_ ((_%rest1110387%_ _%lst1110372%_)
                             (_%rest2110388%_ _%lst2110373%_)
                             (_%r110389%_ _%iv110371%_))
            (let* ((_%rest1110390110398%_ _%rest1110387%_)
                   (_%else110392110406%_ (lambda () _%r110389%_))
                   (_%K110394110445%_
                    (lambda (_%rest1110409%_ _%x1110410%_)
                      (let* ((_%rest2110411110419%_ _%rest2110388%_)
                             (_%else110413110427%_ (lambda () _%r110389%_))
                             (_%K110415110433%_
                              (lambda (_%rest2110430%_ _%x2110431%_)
                                (_%lp110385%_
                                 _%rest1110409%_
                                 _%rest2110430%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f110376%_
                                    _%x1110410%_
                                    _%x2110431%_
                                    _%r110389%_))))))
                        (if (pair? _%rest2110411110419%_)
                            (let ((_%hd110416110436%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110411110419%_)))
                                  (_%tl110417110438%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110411110419%_))))
                              (let* ((_%x2110441%_ _%hd110416110436%_)
                                     (_%rest2110443%_ _%tl110417110438%_))
                                (_%K110415110433%_
                                 _%rest2110443%_
                                 _%x2110441%_)))
                            (_%else110413110427%_))))))
              (if (pair? _%rest1110390110398%_)
                  (let ((_%hd110395110448%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110390110398%_)))
                        (_%tl110396110450%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110390110398%_))))
                    (let* ((_%x1110453%_ _%hd110395110448%_)
                           (_%rest1110455%_ _%tl110396110450%_))
                      (_%K110394110445%_ _%rest1110455%_ _%x1110453%_)))
                  (_%else110392110406%_)))))))
    (define foldl2
      (lambda (_%f101232%_ _%iv101233%_ _%lst1101234%_ _%lst2101235%_)
        (if (procedure? _%f101232%_)
            (let ((_%f101239%_ _%f101232%_))
              (__foldl2
               _%f101239%_
               _%iv101233%_
               _%lst1101234%_
               _%lst2101235%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@297.15-297.16"
               'contract:
               'procedure?
               'value:
               _%f101232%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f110303%_ _%iv110304%_ _%lst110305%_)
        (let* ((_%f110307%_ _%f110303%_)
               (_%iv110310%_ _%iv110304%_)
               (_%lst110313%_ _%lst110305%_))
          (if (procedure? _%f110307%_)
              (let ((_%f110318%_ _%f110307%_))
                (__foldl1 _%f110318%_ _%iv110310%_ _%lst110313%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110307%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f110331%_ _%iv110332%_ _%lst1110333%_ _%lst2110334%_)
        (let* ((_%f110336%_ _%f110331%_)
               (_%iv110339%_ _%iv110332%_)
               (_%lst1110342%_ _%lst1110333%_)
               (_%lst2110345%_ _%lst2110334%_))
          (if (procedure? _%f110336%_)
              (let ((_%f110350%_ _%f110336%_))
                (__foldl2
                 _%f110350%_
                 _%iv110339%_
                 _%lst1110342%_
                 _%lst2110345%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110336%_)
                '#!void)))))
    (define foldl
      (lambda _g113907_
        (let ((_g113908_ (let () (declare (not safe)) (##length _g113907_))))
          (cond ((let () (declare (not safe)) (##fx= _g113908_ 3))
                 (apply foldl__0 _g113907_))
                ((let () (declare (not safe)) (##fx= _g113908_ 4))
                 (apply foldl__1 _g113907_))
                ((let () (declare (not safe)) (##fx>= _g113908_ 4))
                 (apply foldl* _g113907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g113907_))))))
    (define __foldl*
      (lambda (_%f110234%_ _%iv110235%_ . _%rest110236%_)
        (let ((_%f110239%_ _%f110234%_))
          (let _%recur110248%_ ((_%iv110250%_ _%iv110235%_)
                                (_%rest110251%_ _%rest110236%_))
            (if (let* ((_%f110253%_ pair?)
                       (_%lst110256%_ _%rest110251%_)
                       (_%f110261%_ _%f110253%_))
                  (__andmap1 _%f110261%_ _%lst110256%_))
                (_%recur110248%_
                 (let ((__tmp113909
                        (let* ((_%f110280%_
                                (lambda (_%xs110277%_ _%r110278%_)
                                  (cons (car _%xs110277%_) _%r110278%_)))
                               (_%iv110283%_ (list _%iv110250%_))
                               (_%lst110286%_ _%rest110251%_)
                               (_%f110291%_ _%f110280%_))
                          (__foldr1 _%f110291%_ _%iv110283%_ _%lst110286%_))))
                   (declare (not safe))
                   (##apply _%f110239%_ __tmp113909))
                 (map cdr _%rest110251%_))
                _%iv110250%_)))))
    (define foldl*
      (lambda (_%f101369%_ _%iv101370%_ . _%rest101371%_)
        (if (procedure? _%f101369%_)
            (let ((_%f101375%_ _%f101369%_))
              (declare (not safe))
              (##apply __foldl* _%f101375%_ _%iv101370%_ _%rest101371%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@315.15-315.16"
               'contract:
               'procedure?
               'value:
               _%f101369%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f110183%_ _%iv110184%_ _%lst110185%_)
        (let ((_%f110188%_ _%f110183%_))
          (let _%recur110197%_ ((_%rest110199%_ _%lst110185%_))
            (let* ((_%rest110200110208%_ _%rest110199%_)
                   (_%else110202110216%_ (lambda () _%iv110184%_))
                   (_%K110204110222%_
                    (lambda (_%rest110219%_ _%x110220%_)
                      (let ((__tmp113910 (_%recur110197%_ _%rest110219%_)))
                        (declare (not safe))
                        (_%f110188%_ _%x110220%_ __tmp113910)))))
              (if (pair? _%rest110200110208%_)
                  (let ((_%hd110205110225%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110200110208%_)))
                        (_%tl110206110227%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110200110208%_))))
                    (let* ((_%x110230%_ _%hd110205110225%_)
                           (_%rest110232%_ _%tl110206110227%_))
                      (_%K110204110222%_ _%rest110232%_ _%x110230%_)))
                  (_%else110202110216%_)))))))
    (define foldr1
      (lambda (_%f101505%_ _%iv101506%_ _%lst101507%_)
        (if (procedure? _%f101505%_)
            (let ((_%f101511%_ _%f101505%_))
              (__foldr1 _%f101511%_ _%iv101506%_ _%lst101507%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@325.15-325.16"
               'contract:
               'procedure?
               'value:
               _%f101505%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f110097%_ _%iv110098%_ _%lst1110099%_ _%lst2110100%_)
        (let ((_%f110103%_ _%f110097%_))
          (let _%recur110112%_ ((_%rest1110114%_ _%lst1110099%_)
                                (_%rest2110115%_ _%lst2110100%_))
            (let* ((_%rest1110116110124%_ _%rest1110114%_)
                   (_%else110118110132%_ (lambda () _%iv110098%_))
                   (_%K110120110171%_
                    (lambda (_%rest1110135%_ _%x1110136%_)
                      (let* ((_%rest2110137110145%_ _%rest2110115%_)
                             (_%else110139110153%_ (lambda () _%iv110098%_))
                             (_%K110141110159%_
                              (lambda (_%rest2110156%_ _%x2110157%_)
                                (let ((__tmp113911
                                       (_%recur110112%_
                                        _%rest1110135%_
                                        _%rest2110156%_)))
                                  (declare (not safe))
                                  (_%f110103%_
                                   _%x1110136%_
                                   _%x2110157%_
                                   __tmp113911)))))
                        (if (pair? _%rest2110137110145%_)
                            (let ((_%hd110142110162%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110137110145%_)))
                                  (_%tl110143110164%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110137110145%_))))
                              (let* ((_%x2110167%_ _%hd110142110162%_)
                                     (_%rest2110169%_ _%tl110143110164%_))
                                (_%K110141110159%_
                                 _%rest2110169%_
                                 _%x2110167%_)))
                            (_%else110139110153%_))))))
              (if (pair? _%rest1110116110124%_)
                  (let ((_%hd110121110174%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110116110124%_)))
                        (_%tl110122110176%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110116110124%_))))
                    (let* ((_%x1110179%_ _%hd110121110174%_)
                           (_%rest1110181%_ _%tl110122110176%_))
                      (_%K110120110171%_ _%rest1110181%_ _%x1110179%_)))
                  (_%else110118110132%_)))))))
    (define foldr2
      (lambda (_%f101641%_ _%iv101642%_ _%lst1101643%_ _%lst2101644%_)
        (if (procedure? _%f101641%_)
            (let ((_%f101648%_ _%f101641%_))
              (__foldr2
               _%f101648%_
               _%iv101642%_
               _%lst1101643%_
               _%lst2101644%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@332.15-332.16"
               'contract:
               'procedure?
               'value:
               _%f101641%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f110030%_ _%iv110031%_ _%lst110032%_)
        (let* ((_%f110034%_ _%f110030%_)
               (_%iv110037%_ _%iv110031%_)
               (_%lst110040%_ _%lst110032%_))
          (if (procedure? _%f110034%_)
              (let ((_%f110045%_ _%f110034%_))
                (__foldr1 _%f110045%_ _%iv110037%_ _%lst110040%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110034%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f110058%_ _%iv110059%_ _%lst1110060%_ _%lst2110061%_)
        (let* ((_%f110063%_ _%f110058%_)
               (_%iv110066%_ _%iv110059%_)
               (_%lst1110069%_ _%lst1110060%_)
               (_%lst2110072%_ _%lst2110061%_))
          (if (procedure? _%f110063%_)
              (let ((_%f110077%_ _%f110063%_))
                (__foldr2
                 _%f110077%_
                 _%iv110066%_
                 _%lst1110069%_
                 _%lst2110072%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110063%_)
                '#!void)))))
    (define foldr
      (lambda _g113912_
        (let ((_g113913_ (let () (declare (not safe)) (##length _g113912_))))
          (cond ((let () (declare (not safe)) (##fx= _g113913_ 3))
                 (apply foldr__0 _g113912_))
                ((let () (declare (not safe)) (##fx= _g113913_ 4))
                 (apply foldr__1 _g113912_))
                ((let () (declare (not safe)) (##fx>= _g113913_ 4))
                 (apply foldr* _g113912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g113912_))))))
    (define __foldr*
      (lambda (_%f109962%_ _%iv109963%_ . _%rest109964%_)
        (let ((_%f109967%_ _%f109962%_))
          (let _%recur109976%_ ((_%rest109978%_ _%rest109964%_))
            (if (let* ((_%f109980%_ pair?)
                       (_%lst109983%_ _%rest109978%_)
                       (_%f109988%_ _%f109980%_))
                  (__andmap1 _%f109988%_ _%lst109983%_))
                (let ((__tmp113914
                       (let* ((_%f110007%_
                               (lambda (_%xs110004%_ _%r110005%_)
                                 (cons (car _%xs110004%_) _%r110005%_)))
                              (_%iv110010%_
                               (list (_%recur109976%_
                                      (map cdr _%rest109978%_))))
                              (_%lst110013%_ _%rest109978%_)
                              (_%f110018%_ _%f110007%_))
                         (__foldr1 _%f110018%_ _%iv110010%_ _%lst110013%_))))
                  (declare (not safe))
                  (##apply _%f109967%_ __tmp113914))
                _%iv109963%_)))))
    (define foldr*
      (lambda (_%f101778%_ _%iv101779%_ . _%rest101780%_)
        (if (procedure? _%f101778%_)
            (let ((_%f101784%_ _%f101778%_))
              (declare (not safe))
              (##apply __foldr* _%f101784%_ _%iv101779%_ _%rest101780%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@350.15-350.16"
               'contract:
               'procedure?
               'value:
               _%f101778%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%l109849%_)
        (let* ((_%l109850109863%_ _%l109849%_)
               (_%E109854109867%_
                (lambda ()
                  (error '"No clause matching"
                         _%l109850109863%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K109859109952%_
                 (lambda (_%r109950%_) (remove-nulls! _%r109950%_)))
                (_%K109856109939%_
                 (lambda (_%r109879%_)
                   (let _%loop109881%_ ((_%l109883%_ _%l109849%_)
                                        (_%r109884%_ _%r109879%_))
                     (let* ((_%r109885109898%_ _%r109884%_)
                            (_%E109889109902%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r109885109898%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K109894109929%_
                              (lambda (_%rr109927%_)
                                (let ((__tmp113916 _%l109883%_)
                                      (__tmp113915
                                       (remove-nulls! _%rr109927%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp113916 __tmp113915))))
                             (_%K109891109916%_
                              (lambda (_%rr109914%_)
                                (_%loop109881%_ _%r109884%_ _%rr109914%_)))
                             (_%K109890109907%_ (lambda () '#!void)))
                         (if (pair? _%r109885109898%_)
                             (let ((_%tl109896109934%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r109885109898%_)))
                                   (_%hd109895109932%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r109885109898%_))))
                               (if (null? _%hd109895109932%_)
                                   (let ((_%rr109937%_ _%tl109896109934%_))
                                     (_%K109894109929%_ _%rr109937%_))
                                   (let ((_%rr109922%_ _%tl109896109934%_))
                                     (_%K109891109916%_ _%rr109922%_))))
                             '#!void))))
                   _%l109849%_))
                (_%K109855109872%_ (lambda () _%l109849%_)))
            (if (pair? _%l109850109863%_)
                (let ((_%tl109861109957%_
                       (let () (declare (not safe)) (##cdr _%l109850109863%_)))
                      (_%hd109860109955%_
                       (let ()
                         (declare (not safe))
                         (##car _%l109850109863%_))))
                  (if (null? _%hd109860109955%_)
                      (let ((_%r109960%_ _%tl109861109957%_))
                        (remove-nulls! _%r109960%_))
                      (let ((_%r109945%_ _%tl109861109957%_))
                        (_%K109856109939%_ _%r109945%_))))
                (_%K109855109872%_))))))
    (define append1!
      (lambda (_%l109834%_ _%x109835%_)
        (let ((_%l2109838%_ (cons _%x109835%_ '())))
          (if (pair? _%l109834%_)
              (let ((_%l109840%_ _%l109834%_))
                (let ((__tmp113917
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l109840%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp113917 _%l2109838%_))
                _%l109840%_)
              _%l2109838%_))))
    (define __append-reverse-until
      (lambda (_%pred109776%_ _%rhead109777%_ _%tail109778%_)
        (let ((_%pred109781%_ _%pred109776%_))
          (let _%loop109790%_ ((_%rhead109792%_ _%rhead109777%_)
                               (_%tail109793%_ _%tail109778%_))
            (let* ((_%rhead109795109804%_ _%rhead109792%_)
                   (_%E109798109808%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead109795109804%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K109802109831%_ (lambda () (values '() _%tail109793%_)))
                    (_%K109799109815%_
                     (lambda (_%r109812%_ _%a109813%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred109781%_ _%a109813%_))
                           (values _%rhead109792%_ _%tail109793%_)
                           (_%loop109790%_
                            _%r109812%_
                            (cons _%a109813%_ _%tail109793%_))))))
                (let ((_%try-match109797109827%_
                       (lambda ()
                         (if (pair? _%rhead109795109804%_)
                             (let ((_%tl109801109820%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead109795109804%_)))
                                   (_%hd109800109818%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead109795109804%_))))
                               (let ((_%a109823%_ _%hd109800109818%_)
                                     (_%r109825%_ _%tl109801109820%_))
                                 (_%K109799109815%_ _%r109825%_ _%a109823%_)))
                             (_%E109798109808%_)))))
                  (if (null? _%rhead109795109804%_)
                      (_%K109802109831%_)
                      (_%try-match109797109827%_)))))))))
    (define append-reverse-until
      (lambda (_%pred101914%_ _%rhead101915%_ _%tail101916%_)
        (if (procedure? _%pred101914%_)
            (let ((_%pred101920%_ _%pred101914%_))
              (__append-reverse-until
               _%pred101920%_
               _%rhead101915%_
               _%tail101916%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@390.29-390.33"
               'contract:
               'procedure?
               'value:
               _%pred101914%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f109725%_ _%lst109726%_)
        (let ((_%f109729%_ _%f109725%_))
          (let _%lp109738%_ ((_%rest109740%_ _%lst109726%_))
            (let* ((_%rest109742109750%_ _%rest109740%_)
                   (_%else109744109758%_ (lambda () '#t))
                   (_%K109746109764%_
                    (lambda (_%rest109761%_ _%x109762%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f109729%_ _%x109762%_))
                          (_%lp109738%_ _%rest109761%_)
                          '#f))))
              (if (pair? _%rest109742109750%_)
                  (let ((_%hd109747109767%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest109742109750%_)))
                        (_%tl109748109769%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest109742109750%_))))
                    (let* ((_%x109772%_ _%hd109747109767%_)
                           (_%rest109774%_ _%tl109748109769%_))
                      (_%K109746109764%_ _%rest109774%_ _%x109772%_)))
                  (_%else109744109758%_)))))))
    (define andmap1
      (lambda (_%f102050%_ _%lst102051%_)
        (if (procedure? _%f102050%_)
            (let ((_%f102055%_ _%f102050%_))
              (__andmap1 _%f102055%_ _%lst102051%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@401.16-401.17"
               'contract:
               'procedure?
               'value:
               _%f102050%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f109639%_ _%lst1109640%_ _%lst2109641%_)
        (let ((_%f109644%_ _%f109639%_))
          (let _%lp109653%_ ((_%rest1109655%_ _%lst1109640%_)
                             (_%rest2109656%_ _%lst2109641%_))
            (let* ((_%rest1109658109666%_ _%rest1109655%_)
                   (_%else109660109674%_ (lambda () '#t))
                   (_%K109662109713%_
                    (lambda (_%rest1109677%_ _%x1109678%_)
                      (let* ((_%rest2109679109687%_ _%rest2109656%_)
                             (_%else109681109695%_ (lambda () '#t))
                             (_%K109683109701%_
                              (lambda (_%rest2109698%_ _%x2109699%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f109644%_ _%x1109678%_ _%x2109699%_))
                                    (_%lp109653%_
                                     _%rest1109677%_
                                     _%rest2109698%_)
                                    '#f))))
                        (if (pair? _%rest2109679109687%_)
                            (let ((_%hd109684109704%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2109679109687%_)))
                                  (_%tl109685109706%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2109679109687%_))))
                              (let* ((_%x2109709%_ _%hd109684109704%_)
                                     (_%rest2109711%_ _%tl109685109706%_))
                                (_%K109683109701%_
                                 _%rest2109711%_
                                 _%x2109709%_)))
                            (_%else109681109695%_))))))
              (if (pair? _%rest1109658109666%_)
                  (let ((_%hd109663109716%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1109658109666%_)))
                        (_%tl109664109718%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1109658109666%_))))
                    (let* ((_%x1109721%_ _%hd109663109716%_)
                           (_%rest1109723%_ _%tl109664109718%_))
                      (_%K109662109713%_ _%rest1109723%_ _%x1109721%_)))
                  (_%else109660109674%_)))))))
    (define andmap2
      (lambda (_%f102185%_ _%lst1102186%_ _%lst2102187%_)
        (if (procedure? _%f102185%_)
            (let ((_%f102191%_ _%f102185%_))
              (__andmap2 _%f102191%_ _%lst1102186%_ _%lst2102187%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@410.16-410.17"
               'contract:
               'procedure?
               'value:
               _%f102185%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f109583%_ _%lst109584%_)
        (let* ((_%f109586%_ _%f109583%_) (_%lst109589%_ _%lst109584%_))
          (if (procedure? _%f109586%_)
              (let ((_%f109594%_ _%f109586%_))
                (__andmap1 _%f109594%_ _%lst109589%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109586%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f109606%_ _%lst1109607%_ _%lst2109608%_)
        (let* ((_%f109610%_ _%f109606%_)
               (_%lst1109613%_ _%lst1109607%_)
               (_%lst2109616%_ _%lst2109608%_))
          (if (procedure? _%f109610%_)
              (let ((_%f109621%_ _%f109610%_))
                (__andmap2 _%f109621%_ _%lst1109613%_ _%lst2109616%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109610%_)
                '#!void)))))
    (define andmap
      (lambda _g113918_
        (let ((_g113919_ (let () (declare (not safe)) (##length _g113918_))))
          (cond ((let () (declare (not safe)) (##fx= _g113919_ 2))
                 (apply andmap__0 _g113918_))
                ((let () (declare (not safe)) (##fx= _g113919_ 3))
                 (apply andmap__1 _g113918_))
                ((let () (declare (not safe)) (##fx>= _g113919_ 3))
                 (apply andmap* _g113918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g113918_))))))
    (define __andmap*
      (lambda (_%f109540%_ . _%rest109541%_)
        (let ((_%f109544%_ _%f109540%_))
          (let _%recur109553%_ ((_%rest109555%_ _%rest109541%_))
            (if (let* ((_%f109558%_ pair?)
                       (_%lst109561%_ _%rest109555%_)
                       (_%f109566%_ _%f109558%_))
                  (__andmap1 _%f109566%_ _%lst109561%_))
                (if (let ((__tmp113920 (map car _%rest109555%_)))
                      (declare (not safe))
                      (##apply _%f109544%_ __tmp113920))
                    (_%recur109553%_ (map cdr _%rest109555%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f102321%_ . _%rest102322%_)
        (if (procedure? _%f102321%_)
            (let ((_%f102326%_ _%f102321%_))
              (declare (not safe))
              (##apply __andmap* _%f102326%_ _%rest102322%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@430.16-430.17"
               'contract:
               'procedure?
               'value:
               _%f102321%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f109487%_ _%lst109488%_)
        (let ((_%f109491%_ _%f109487%_))
          (let _%lp109500%_ ((_%rest109502%_ _%lst109488%_))
            (let* ((_%rest109503109511%_ _%rest109502%_)
                   (_%else109505109519%_ (lambda () '#f))
                   (_%K109507109528%_
                    (lambda (_%rest109522%_ _%x109523%_)
                      (let ((_%$e109525%_
                             (let ()
                               (declare (not safe))
                               (_%f109491%_ _%x109523%_))))
                        (if _%$e109525%_
                            _%$e109525%_
                            (_%lp109500%_ _%rest109522%_))))))
              (if (pair? _%rest109503109511%_)
                  (let ((_%hd109508109531%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest109503109511%_)))
                        (_%tl109509109533%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest109503109511%_))))
                    (let* ((_%x109536%_ _%hd109508109531%_)
                           (_%rest109538%_ _%tl109509109533%_))
                      (_%K109507109528%_ _%rest109538%_ _%x109536%_)))
                  (_%else109505109519%_)))))))
    (define ormap1
      (lambda (_%f102456%_ _%lst102457%_)
        (if (procedure? _%f102456%_)
            (let ((_%f102461%_ _%f102456%_))
              (__ormap1 _%f102461%_ _%lst102457%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@439.15-439.16"
               'contract:
               'procedure?
               'value:
               _%f102456%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f109399%_ _%lst1109400%_ _%lst2109401%_)
        (let ((_%f109404%_ _%f109399%_))
          (let _%lp109413%_ ((_%rest1109415%_ _%lst1109400%_)
                             (_%rest2109416%_ _%lst2109401%_))
            (let* ((_%rest1109417109425%_ _%rest1109415%_)
                   (_%else109419109433%_ (lambda () '#f))
                   (_%K109421109475%_
                    (lambda (_%rest1109436%_ _%x1109437%_)
                      (let* ((_%rest2109438109446%_ _%rest2109416%_)
                             (_%else109440109454%_ (lambda () '#f))
                             (_%K109442109463%_
                              (lambda (_%rest2109457%_ _%x2109458%_)
                                (let ((_%$e109460%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f109404%_
                                          _%x1109437%_
                                          _%x2109458%_))))
                                  (if _%$e109460%_
                                      _%$e109460%_
                                      (_%lp109413%_
                                       _%rest1109436%_
                                       _%rest2109457%_))))))
                        (if (pair? _%rest2109438109446%_)
                            (let ((_%hd109443109466%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2109438109446%_)))
                                  (_%tl109444109468%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2109438109446%_))))
                              (let* ((_%x2109471%_ _%hd109443109466%_)
                                     (_%rest2109473%_ _%tl109444109468%_))
                                (_%K109442109463%_
                                 _%rest2109473%_
                                 _%x2109471%_)))
                            (_%else109440109454%_))))))
              (if (pair? _%rest1109417109425%_)
                  (let ((_%hd109422109478%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1109417109425%_)))
                        (_%tl109423109480%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1109417109425%_))))
                    (let* ((_%x1109483%_ _%hd109422109478%_)
                           (_%rest1109485%_ _%tl109423109480%_))
                      (_%K109421109475%_ _%rest1109485%_ _%x1109483%_)))
                  (_%else109419109433%_)))))))
    (define ormap2
      (lambda (_%f102591%_ _%lst1102592%_ _%lst2102593%_)
        (if (procedure? _%f102591%_)
            (let ((_%f102597%_ _%f102591%_))
              (__ormap2 _%f102597%_ _%lst1102592%_ _%lst2102593%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@446.15-446.16"
               'contract:
               'procedure?
               'value:
               _%f102591%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f109343%_ _%lst109344%_)
        (let* ((_%f109346%_ _%f109343%_) (_%lst109349%_ _%lst109344%_))
          (if (procedure? _%f109346%_)
              (let ((_%f109354%_ _%f109346%_))
                (__ormap1 _%f109354%_ _%lst109349%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109346%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f109366%_ _%lst1109367%_ _%lst2109368%_)
        (let* ((_%f109370%_ _%f109366%_)
               (_%lst1109373%_ _%lst1109367%_)
               (_%lst2109376%_ _%lst2109368%_))
          (if (procedure? _%f109370%_)
              (let ((_%f109381%_ _%f109370%_))
                (__ormap2 _%f109381%_ _%lst1109373%_ _%lst2109376%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109370%_)
                '#!void)))))
    (define ormap
      (lambda _g113921_
        (let ((_g113922_ (let () (declare (not safe)) (##length _g113921_))))
          (cond ((let () (declare (not safe)) (##fx= _g113922_ 2))
                 (apply ormap__0 _g113921_))
                ((let () (declare (not safe)) (##fx= _g113922_ 3))
                 (apply ormap__1 _g113921_))
                ((let () (declare (not safe)) (##fx>= _g113922_ 3))
                 (apply ormap* _g113921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g113921_))))))
    (define __ormap*
      (lambda (_%f109299%_ . _%rest109300%_)
        (let ((_%f109303%_ _%f109299%_))
          (let _%recur109312%_ ((_%rest109314%_ _%rest109300%_))
            (if (let* ((_%f109316%_ pair?)
                       (_%lst109319%_ _%rest109314%_)
                       (_%f109324%_ _%f109316%_))
                  (__andmap1 _%f109324%_ _%lst109319%_))
                (let ((_%$e109340%_
                       (let ((__tmp113923 (map car _%rest109314%_)))
                         (declare (not safe))
                         (##apply _%f109303%_ __tmp113923))))
                  (if _%$e109340%_
                      _%$e109340%_
                      (_%recur109312%_ (map cdr _%rest109314%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f102727%_ . _%rest102728%_)
        (if (procedure? _%f102727%_)
            (let ((_%f102732%_ _%f102727%_))
              (declare (not safe))
              (##apply __ormap* _%f102732%_ _%rest102728%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@464.15-464.16"
               'contract:
               'procedure?
               'value:
               _%f102727%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f109242%_ _%lst109243%_)
        (let ((_%f109246%_ _%f109242%_))
          (let _%recur109255%_ ((_%rest109257%_ _%lst109243%_))
            (let* ((_%rest109259109267%_ _%rest109257%_)
                   (_%else109261109275%_ (lambda () '()))
                   (_%K109263109287%_
                    (lambda (_%rest109278%_ _%x109279%_)
                      (let ((_%$e109281%_
                             (let ()
                               (declare (not safe))
                               (_%f109246%_ _%x109279%_))))
                        (if _%$e109281%_
                            ((lambda (_%r109284%_)
                               (cons _%r109284%_
                                     (_%recur109255%_ _%rest109278%_)))
                             _%$e109281%_)
                            (_%recur109255%_ _%rest109278%_))))))
              (if (pair? _%rest109259109267%_)
                  (let ((_%hd109264109290%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest109259109267%_)))
                        (_%tl109265109292%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest109259109267%_))))
                    (let* ((_%x109295%_ _%hd109264109290%_)
                           (_%rest109297%_ _%tl109265109292%_))
                      (_%K109263109287%_ _%rest109297%_ _%x109295%_)))
                  (_%else109261109275%_)))))))
    (define filter-map1
      (lambda (_%f102862%_ _%lst102863%_)
        (if (procedure? _%f102862%_)
            (let ((_%f102867%_ _%f102862%_))
              (__filter-map1 _%f102867%_ _%lst102863%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f102862%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f109150%_ _%lst1109151%_ _%lst2109152%_)
        (let ((_%f109155%_ _%f109150%_))
          (let _%recur109164%_ ((_%rest1109166%_ _%lst1109151%_)
                                (_%rest2109167%_ _%lst2109152%_))
            (let* ((_%rest1109169109177%_ _%rest1109166%_)
                   (_%else109171109185%_ (lambda () '()))
                   (_%K109173109230%_
                    (lambda (_%rest1109188%_ _%x1109189%_)
                      (let* ((_%rest2109190109198%_ _%rest2109167%_)
                             (_%else109192109206%_ (lambda () '()))
                             (_%K109194109218%_
                              (lambda (_%rest2109209%_ _%x2109210%_)
                                (let ((_%$e109212%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f109155%_
                                          _%x1109189%_
                                          _%x2109210%_))))
                                  (if _%$e109212%_
                                      ((lambda (_%r109215%_)
                                         (cons _%r109215%_
                                               (_%recur109164%_
                                                _%rest1109188%_
                                                _%rest2109209%_)))
                                       _%$e109212%_)
                                      (_%recur109164%_
                                       _%rest1109188%_
                                       _%rest2109209%_))))))
                        (if (pair? _%rest2109190109198%_)
                            (let ((_%hd109195109221%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2109190109198%_)))
                                  (_%tl109196109223%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2109190109198%_))))
                              (let* ((_%x2109226%_ _%hd109195109221%_)
                                     (_%rest2109228%_ _%tl109196109223%_))
                                (_%K109194109218%_
                                 _%rest2109228%_
                                 _%x2109226%_)))
                            (_%else109192109206%_))))))
              (if (pair? _%rest1109169109177%_)
                  (let ((_%hd109174109233%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1109169109177%_)))
                        (_%tl109175109235%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1109169109177%_))))
                    (let* ((_%x1109238%_ _%hd109174109233%_)
                           (_%rest1109240%_ _%tl109175109235%_))
                      (_%K109173109230%_ _%rest1109240%_ _%x1109238%_)))
                  (_%else109171109185%_)))))))
    (define filter-map2
      (lambda (_%f102997%_ _%lst1102998%_ _%lst2102999%_)
        (if (procedure? _%f102997%_)
            (let ((_%f103003%_ _%f102997%_))
              (__filter-map2 _%f103003%_ _%lst1102998%_ _%lst2102999%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@482.20-482.21"
               'contract:
               'procedure?
               'value:
               _%f102997%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f109094%_ _%lst109095%_)
        (let* ((_%f109097%_ _%f109094%_) (_%lst109100%_ _%lst109095%_))
          (if (procedure? _%f109097%_)
              (let ((_%f109105%_ _%f109097%_))
                (__filter-map1 _%f109105%_ _%lst109100%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109097%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f109117%_ _%lst1109118%_ _%lst2109119%_)
        (let* ((_%f109121%_ _%f109117%_)
               (_%lst1109124%_ _%lst1109118%_)
               (_%lst2109127%_ _%lst2109119%_))
          (if (procedure? _%f109121%_)
              (let ((_%f109132%_ _%f109121%_))
                (__filter-map2 _%f109132%_ _%lst1109124%_ _%lst2109127%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109121%_)
                '#!void)))))
    (define filter-map
      (lambda _g113924_
        (let ((_g113925_ (let () (declare (not safe)) (##length _g113924_))))
          (cond ((let () (declare (not safe)) (##fx= _g113925_ 2))
                 (apply filter-map__0 _g113924_))
                ((let () (declare (not safe)) (##fx= _g113925_ 3))
                 (apply filter-map__1 _g113924_))
                ((let () (declare (not safe)) (##fx>= _g113925_ 3))
                 (apply filter-map* _g113924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g113924_))))))
    (define __filter-map*
      (lambda (_%f109045%_ . _%rest109046%_)
        (let ((_%f109049%_ _%f109045%_))
          (let _%recur109058%_ ((_%rest109060%_ _%rest109046%_))
            (if (let* ((_%f109063%_ pair?)
                       (_%lst109066%_ _%rest109060%_)
                       (_%f109071%_ _%f109063%_))
                  (__andmap1 _%f109071%_ _%lst109066%_))
                (let ((_%$e109088%_
                       (let ((__tmp113926 (map car _%rest109060%_)))
                         (declare (not safe))
                         (##apply _%f109049%_ __tmp113926))))
                  (if _%$e109088%_
                      ((lambda (_%r109091%_)
                         (cons _%r109091%_
                               (_%recur109058%_ (map cdr _%rest109060%_))))
                       _%$e109088%_)
                      (_%recur109058%_ (map cdr _%rest109060%_))))
                '())))))
    (define filter-map*
      (lambda (_%f103133%_ . _%rest103134%_)
        (if (procedure? _%f103133%_)
            (let ((_%f103138%_ _%f103133%_))
              (declare (not safe))
              (##apply __filter-map* _%f103138%_ _%rest103134%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@504.20-504.21"
               'contract:
               'procedure?
               'value:
               _%f103133%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key109021%_ _%lst109023%_ _%default109025%_)
        (let ((_%$e109028%_
               (if (pair? _%lst109023%_)
                   (assq _%key109021%_ _%lst109023%_)
                   '#f)))
          (if _%$e109028%_
              (cdr _%$e109028%_)
              (if (procedure? _%default109025%_)
                  (_%default109025%_ _%key109021%_)
                  _%default109025%_)))))
    (define agetq__0
      (lambda (_%key109036%_ _%lst109037%_)
        (let ((_%default109039%_ '#f))
          (agetq__% _%key109036%_ _%lst109037%_ _%default109039%_))))
    (define agetq
      (lambda _g113927_
        (let ((_g113928_ (let () (declare (not safe)) (##length _g113927_))))
          (cond ((let () (declare (not safe)) (##fx= _g113928_ 2))
                 (apply agetq__0 _g113927_))
                ((let () (declare (not safe)) (##fx= _g113928_ 3))
                 (apply agetq__% _g113927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g113927_))))))
    (define agetv__%
      (lambda (_%key108996%_ _%lst108998%_ _%default109000%_)
        (let ((_%$e109003%_
               (if (pair? _%lst108998%_)
                   (assv _%key108996%_ _%lst108998%_)
                   '#f)))
          (if _%$e109003%_
              (cdr _%$e109003%_)
              (if (procedure? _%default109000%_)
                  (_%default109000%_ _%key108996%_)
                  _%default109000%_)))))
    (define agetv__0
      (lambda (_%key109011%_ _%lst109012%_)
        (let ((_%default109014%_ '#f))
          (agetv__% _%key109011%_ _%lst109012%_ _%default109014%_))))
    (define agetv
      (lambda _g113929_
        (let ((_g113930_ (let () (declare (not safe)) (##length _g113929_))))
          (cond ((let () (declare (not safe)) (##fx= _g113930_ 2))
                 (apply agetv__0 _g113929_))
                ((let () (declare (not safe)) (##fx= _g113930_ 3))
                 (apply agetv__% _g113929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g113929_))))))
    (define aget__%
      (lambda (_%key108971%_ _%lst108973%_ _%default108975%_)
        (let ((_%$e108978%_
               (if (pair? _%lst108973%_)
                   (assoc _%key108971%_ _%lst108973%_)
                   '#f)))
          (if _%$e108978%_
              (cdr _%$e108978%_)
              (if (procedure? _%default108975%_)
                  (_%default108975%_ _%key108971%_)
                  _%default108975%_)))))
    (define aget__0
      (lambda (_%key108986%_ _%lst108987%_)
        (let ((_%default108989%_ '#f))
          (aget__% _%key108986%_ _%lst108987%_ _%default108989%_))))
    (define aget
      (lambda _g113931_
        (let ((_g113932_ (let () (declare (not safe)) (##length _g113931_))))
          (cond ((let () (declare (not safe)) (##fx= _g113932_ 2))
                 (apply aget__0 _g113931_))
                ((let () (declare (not safe)) (##fx= _g113932_ 3))
                 (apply aget__% _g113931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g113931_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key108900%_ _%lst108902%_ _%default108904%_)
        (let _%lp108907%_ ((_%rest108910%_ _%lst108902%_))
          (let* ((_%rest108912108922%_ _%rest108910%_)
                 (_%else108914108930%_
                  (lambda ()
                    (if (procedure? _%default108904%_)
                        (_%default108904%_ _%key108900%_)
                        _%default108904%_)))
                 (_%K108916108939%_
                  (lambda (_%rest108933%_ _%v108934%_ _%k108936%_)
                    (if (eq? _%k108936%_ _%key108900%_)
                        _%v108934%_
                        (_%lp108907%_ _%rest108933%_)))))
            (if (pair? _%rest108912108922%_)
                (let ((_%hd108917108942%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108912108922%_)))
                      (_%tl108918108944%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108912108922%_))))
                  (let ((_%k108947%_ _%hd108917108942%_))
                    (if (pair? _%tl108918108944%_)
                        (let ((_%hd108919108949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl108918108944%_)))
                              (_%tl108920108951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl108918108944%_))))
                          (let* ((_%v108954%_ _%hd108919108949%_)
                                 (_%rest108956%_ _%tl108920108951%_))
                            (_%K108916108939%_
                             _%rest108956%_
                             _%v108954%_
                             _%k108947%_)))
                        (_%else108914108930%_))))
                (_%else108914108930%_))))))
    (define pgetq__0
      (lambda (_%key108961%_ _%lst108962%_)
        (let ((_%default108964%_ '#f))
          (pgetq__% _%key108961%_ _%lst108962%_ _%default108964%_))))
    (define pgetq
      (lambda _g113933_
        (let ((_g113934_ (let () (declare (not safe)) (##length _g113933_))))
          (cond ((let () (declare (not safe)) (##fx= _g113934_ 2))
                 (apply pgetq__0 _g113933_))
                ((let () (declare (not safe)) (##fx= _g113934_ 3))
                 (apply pgetq__% _g113933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g113933_))))))
    (define pgetv__%
      (lambda (_%key108829%_ _%lst108831%_ _%default108833%_)
        (let _%lp108836%_ ((_%rest108839%_ _%lst108831%_))
          (let* ((_%rest108841108851%_ _%rest108839%_)
                 (_%else108843108859%_
                  (lambda ()
                    (if (procedure? _%default108833%_)
                        (_%default108833%_ _%key108829%_)
                        _%default108833%_)))
                 (_%K108845108868%_
                  (lambda (_%rest108862%_ _%v108863%_ _%k108865%_)
                    (if (eqv? _%k108865%_ _%key108829%_)
                        _%v108863%_
                        (_%lp108836%_ _%rest108862%_)))))
            (if (pair? _%rest108841108851%_)
                (let ((_%hd108846108871%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108841108851%_)))
                      (_%tl108847108873%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108841108851%_))))
                  (let ((_%k108876%_ _%hd108846108871%_))
                    (if (pair? _%tl108847108873%_)
                        (let ((_%hd108848108878%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl108847108873%_)))
                              (_%tl108849108880%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl108847108873%_))))
                          (let* ((_%v108883%_ _%hd108848108878%_)
                                 (_%rest108885%_ _%tl108849108880%_))
                            (_%K108845108868%_
                             _%rest108885%_
                             _%v108883%_
                             _%k108876%_)))
                        (_%else108843108859%_))))
                (_%else108843108859%_))))))
    (define pgetv__0
      (lambda (_%key108890%_ _%lst108891%_)
        (let ((_%default108893%_ '#f))
          (pgetv__% _%key108890%_ _%lst108891%_ _%default108893%_))))
    (define pgetv
      (lambda _g113935_
        (let ((_g113936_ (let () (declare (not safe)) (##length _g113935_))))
          (cond ((let () (declare (not safe)) (##fx= _g113936_ 2))
                 (apply pgetv__0 _g113935_))
                ((let () (declare (not safe)) (##fx= _g113936_ 3))
                 (apply pgetv__% _g113935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g113935_))))))
    (define pget__%
      (lambda (_%key108758%_ _%lst108760%_ _%default108762%_)
        (let _%lp108765%_ ((_%rest108768%_ _%lst108760%_))
          (let* ((_%rest108770108780%_ _%rest108768%_)
                 (_%else108772108788%_
                  (lambda ()
                    (if (procedure? _%default108762%_)
                        (_%default108762%_ _%key108758%_)
                        _%default108762%_)))
                 (_%K108774108797%_
                  (lambda (_%rest108791%_ _%v108792%_ _%k108794%_)
                    (if (equal? _%k108794%_ _%key108758%_)
                        _%v108792%_
                        (_%lp108765%_ _%rest108791%_)))))
            (if (pair? _%rest108770108780%_)
                (let ((_%hd108775108800%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108770108780%_)))
                      (_%tl108776108802%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108770108780%_))))
                  (let ((_%k108805%_ _%hd108775108800%_))
                    (if (pair? _%tl108776108802%_)
                        (let ((_%hd108777108807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl108776108802%_)))
                              (_%tl108778108809%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl108776108802%_))))
                          (let* ((_%v108812%_ _%hd108777108807%_)
                                 (_%rest108814%_ _%tl108778108809%_))
                            (_%K108774108797%_
                             _%rest108814%_
                             _%v108812%_
                             _%k108805%_)))
                        (_%else108772108788%_))))
                (_%else108772108788%_))))))
    (define pget__0
      (lambda (_%key108819%_ _%lst108820%_)
        (let ((_%default108822%_ '#f))
          (pget__% _%key108819%_ _%lst108820%_ _%default108822%_))))
    (define pget
      (lambda _g113937_
        (let ((_g113938_ (let () (declare (not safe)) (##length _g113937_))))
          (cond ((let () (declare (not safe)) (##fx= _g113938_ 2))
                 (apply pget__0 _g113937_))
                ((let () (declare (not safe)) (##fx= _g113938_ 3))
                 (apply pget__% _g113937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g113937_))))))
    (define __find
      (lambda (_%pred108718%_ _%lst108719%_)
        (let* ((_%pred108722%_ _%pred108718%_)
               (_%$e108753%_
                (let* ((_%proc108731%_ _%pred108722%_)
                       (_%lst108734%_ _%lst108719%_)
                       (_%proc108739%_ _%proc108731%_))
                  (__memf _%proc108739%_ _%lst108734%_))))
          (if _%$e108753%_
              (let () (declare (not safe)) (##car _%$e108753%_))
              '#f))))
    (define find
      (lambda (_%pred103430%_ _%lst103431%_)
        (if (procedure? _%pred103430%_)
            (let ((_%pred103435%_ _%pred103430%_))
              (__find _%pred103435%_ _%lst103431%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@550.13-550.17"
               'contract:
               'procedure?
               'value:
               _%pred103430%_)
              '#!void))))
    (define __memf
      (lambda (_%proc108668%_ _%lst108669%_)
        (let ((_%proc108672%_ _%proc108668%_))
          (let _%lp108681%_ ((_%rest108683%_ _%lst108669%_))
            (let* ((_%rest108684108692%_ _%rest108683%_)
                   (_%else108686108700%_ (lambda () '#f))
                   (_%K108688108706%_
                    (lambda (_%tl108703%_ _%hd108704%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc108672%_ _%hd108704%_))
                          _%rest108683%_
                          (_%lp108681%_ _%tl108703%_)))))
              (if (pair? _%rest108684108692%_)
                  (let ((_%hd108689108709%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest108684108692%_)))
                        (_%tl108690108711%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest108684108692%_))))
                    (let* ((_%hd108714%_ _%hd108689108709%_)
                           (_%tl108716%_ _%tl108690108711%_))
                      (_%K108688108706%_ _%tl108716%_ _%hd108714%_)))
                  (_%else108686108700%_)))))))
    (define memf
      (lambda (_%proc103565%_ _%lst103566%_)
        (if (procedure? _%proc103565%_)
            (let ((_%proc103570%_ _%proc103565%_))
              (__memf _%proc103570%_ _%lst103566%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@555.13-555.17"
               'contract:
               'procedure?
               'value:
               _%proc103565%_)
              '#!void))))
    (define remove1
      (lambda (_%el108591%_ _%lst108593%_)
        (let _%lp108596%_ ((_%rest108599%_ _%lst108593%_) (_%r108601%_ '()))
          (let* ((_%rest108603108611%_ _%rest108599%_)
                 (_%else108605108619%_ (lambda () _%lst108593%_))
                 (_%K108607108656%_
                  (lambda (_%rest108622%_ _%hd108623%_)
                    (if (equal? _%el108591%_ _%hd108623%_)
                        (let* ((_%f108626%_ cons)
                               (_%iv108629%_ _%rest108622%_)
                               (_%lst108632%_ _%r108601%_)
                               (_%f108637%_ _%f108626%_))
                          (__foldl1 _%f108637%_ _%iv108629%_ _%lst108632%_))
                        (_%lp108596%_
                         _%rest108622%_
                         (cons _%hd108623%_ _%r108601%_))))))
            (if (pair? _%rest108603108611%_)
                (let ((_%hd108608108659%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108603108611%_)))
                      (_%tl108609108661%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108603108611%_))))
                  (let* ((_%hd108664%_ _%hd108608108659%_)
                         (_%rest108666%_ _%tl108609108661%_))
                    (_%K108607108656%_ _%rest108666%_ _%hd108664%_)))
                (_%else108605108619%_))))))
    (define remv1
      (lambda (_%el108514%_ _%lst108516%_)
        (let _%lp108519%_ ((_%rest108522%_ _%lst108516%_) (_%r108524%_ '()))
          (let* ((_%rest108526108534%_ _%rest108522%_)
                 (_%else108528108542%_ (lambda () _%lst108516%_))
                 (_%K108530108579%_
                  (lambda (_%rest108545%_ _%hd108546%_)
                    (if (eqv? _%el108514%_ _%hd108546%_)
                        (let* ((_%f108549%_ cons)
                               (_%iv108552%_ _%rest108545%_)
                               (_%lst108555%_ _%r108524%_)
                               (_%f108560%_ _%f108549%_))
                          (__foldl1 _%f108560%_ _%iv108552%_ _%lst108555%_))
                        (_%lp108519%_
                         _%rest108545%_
                         (cons _%hd108546%_ _%r108524%_))))))
            (if (pair? _%rest108526108534%_)
                (let ((_%hd108531108582%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108526108534%_)))
                      (_%tl108532108584%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108526108534%_))))
                  (let* ((_%hd108587%_ _%hd108531108582%_)
                         (_%rest108589%_ _%tl108532108584%_))
                    (_%K108530108579%_ _%rest108589%_ _%hd108587%_)))
                (_%else108528108542%_))))))
    (define remq1
      (lambda (_%el108437%_ _%lst108439%_)
        (let _%lp108442%_ ((_%rest108445%_ _%lst108439%_) (_%r108447%_ '()))
          (let* ((_%rest108449108457%_ _%rest108445%_)
                 (_%else108451108465%_ (lambda () _%lst108439%_))
                 (_%K108453108502%_
                  (lambda (_%rest108468%_ _%hd108469%_)
                    (if (eq? _%el108437%_ _%hd108469%_)
                        (let* ((_%f108472%_ cons)
                               (_%iv108475%_ _%rest108468%_)
                               (_%lst108478%_ _%r108447%_)
                               (_%f108483%_ _%f108472%_))
                          (__foldl1 _%f108483%_ _%iv108475%_ _%lst108478%_))
                        (_%lp108442%_
                         _%rest108468%_
                         (cons _%hd108469%_ _%r108447%_))))))
            (if (pair? _%rest108449108457%_)
                (let ((_%hd108454108505%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108449108457%_)))
                      (_%tl108455108507%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108449108457%_))))
                  (let* ((_%hd108510%_ _%hd108454108505%_)
                         (_%rest108512%_ _%tl108455108507%_))
                    (_%K108453108502%_ _%rest108512%_ _%hd108510%_)))
                (_%else108451108465%_))))))
    (define __remf
      (lambda (_%proc108354%_ _%lst108355%_)
        (let ((_%proc108358%_ _%proc108354%_))
          (let _%lp108367%_ ((_%rest108369%_ _%lst108355%_) (_%r108370%_ '()))
            (let* ((_%rest108371108379%_ _%rest108369%_)
                   (_%else108373108387%_ (lambda () _%lst108355%_))
                   (_%K108375108425%_
                    (lambda (_%rest108390%_ _%hd108391%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc108358%_ _%hd108391%_))
                          (let* ((_%f108393%_ cons)
                                 (_%iv108396%_ _%rest108390%_)
                                 (_%lst108399%_ _%r108370%_)
                                 (_%f108404%_ _%f108393%_))
                            (__foldl1 _%f108404%_ _%iv108396%_ _%lst108399%_))
                          (_%lp108367%_
                           _%rest108390%_
                           (cons _%hd108391%_ _%r108370%_))))))
              (if (pair? _%rest108371108379%_)
                  (let ((_%hd108376108428%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest108371108379%_)))
                        (_%tl108377108430%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest108371108379%_))))
                    (let* ((_%hd108433%_ _%hd108376108428%_)
                           (_%rest108435%_ _%tl108377108430%_))
                      (_%K108375108425%_ _%rest108435%_ _%hd108433%_)))
                  (_%else108373108387%_)))))))
    (define remf
      (lambda (_%proc103781%_ _%lst103782%_)
        (if (procedure? _%proc103781%_)
            (let ((_%proc103786%_ _%proc103781%_))
              (__remf _%proc103786%_ _%lst103782%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.17"
               'contract:
               'procedure?
               'value:
               _%proc103781%_)
              '#!void))))
    (define __1+
      (lambda (_%x108342%_)
        (let ((_%x108345%_ _%x108342%_)) (+ _%x108345%_ '1))))
    (define 1+
      (lambda (_%x103916%_)
        (if (number? _%x103916%_)
            (let ((_%x103920%_ _%x103916%_)) (__1+ _%x103920%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@586.11-586.12"
               'contract:
               'number?
               'value:
               _%x103916%_)
              '#!void))))
    (define __1-
      (lambda (_%x108330%_)
        (let ((_%x108333%_ _%x108330%_)) (- _%x108333%_ '1))))
    (define 1-
      (lambda (_%x104050%_)
        (if (number? _%x104050%_)
            (let ((_%x104054%_ _%x104050%_)) (__1- _%x104054%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@594.11-594.12"
               'contract:
               'number?
               'value:
               _%x104050%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x108318%_)
        (let ((_%x108321%_ _%x108318%_))
          (declare (not safe))
          (##fx+ _%x108321%_ '1))))
    (define fx1+
      (lambda (_%x104184%_)
        (if (fixnum? _%x104184%_)
            (let ((_%x104188%_ _%x104184%_)) (__fx1+ _%x104188%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@602.13-602.14"
               'contract:
               'fixnum?
               'value:
               _%x104184%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x108306%_)
        (let ((_%x108309%_ _%x108306%_))
          (declare (not safe))
          (##fx- _%x108309%_ '1))))
    (define fx1-
      (lambda (_%x104318%_)
        (if (fixnum? _%x104318%_)
            (let ((_%x104322%_ _%x104318%_)) (__fx1- _%x104322%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@610.13-610.14"
               'contract:
               'fixnum?
               'value:
               _%x104318%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x108303%_)
        (if (fixnum? _%x108303%_)
            (let () (declare (not safe)) (##fx>= _%x108303%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x108300%_)
        (if (fixnum? _%x108300%_)
            (let () (declare (not safe)) (##fx> _%x108300%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x108297%_)
        (let () (declare (not safe)) (##fx= _%x108297%_ '0))))
    (define fx<0?
      (lambda (_%x108294%_)
        (if (fixnum? _%x108294%_)
            (let () (declare (not safe)) (##fx< _%x108294%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x108291%_)
        (if (fixnum? _%x108291%_)
            (let () (declare (not safe)) (##fx<= _%x108291%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x108288%_)
        (if (symbol? _%x108288%_) (not (uninterned-symbol? _%x108288%_)) '#f)))
    (define __display-as-string
      (lambda (_%x108182%_ _%port108183%_)
        (let ((_%port108186%_ _%port108183%_))
          (if (or (string? _%x108182%_)
                  (symbol? _%x108182%_)
                  (keyword? _%x108182%_)
                  (number? _%x108182%_)
                  (char? _%x108182%_))
              (display _%x108182%_ _%port108186%_)
              (if (pair? _%x108182%_)
                  (let ()
                    (let* ((_%x108209%_
                            (let () (declare (not safe)) (##car _%x108182%_)))
                           (_%port108212%_ _%port108186%_))
                      (if (output-port? _%port108212%_)
                          (let ((_%port108217%_ _%port108212%_))
                            (__display-as-string _%x108209%_ _%port108217%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port108212%_)
                            '#!void)))
                    (let* ((_%x108232%_
                            (let () (declare (not safe)) (##cdr _%x108182%_)))
                           (_%port108235%_ _%port108186%_))
                      (if (output-port? _%port108235%_)
                          (let ((_%port108240%_ _%port108235%_))
                            (__display-as-string _%x108232%_ _%port108240%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port108235%_)
                            '#!void))))
                  (if (vector? _%x108182%_)
                      (vector-for-each
                       (lambda (_%g108251108253%_)
                         (let* ((_%x108256%_ _%g108251108253%_)
                                (_%port108259%_ _%port108186%_))
                           (if (output-port? _%port108259%_)
                               (let ((_%port108264%_ _%port108259%_))
                                 (__display-as-string
                                  _%x108256%_
                                  _%port108264%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port108259%_)
                                 '#!void))))
                       _%x108182%_)
                      (if (or (null? _%x108182%_)
                              (eq? _%x108182%_ '#!void)
                              (eof-object? _%x108182%_)
                              (boolean? _%x108182%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x108182%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x104452%_ _%port104453%_)
        (if (output-port? _%port104453%_)
            (let ((_%port104457%_ _%port104453%_))
              (__display-as-string _%x104452%_ _%port104457%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@640.28-640.32"
               'contract:
               'output-port?
               'value:
               _%port104453%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x108122%_)
        (if (string? _%x108122%_)
            _%x108122%_
            (if (symbol? _%x108122%_)
                (let () (declare (not safe)) (##symbol->string _%x108122%_))
                (if (keyword? _%x108122%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x108122%_))
                    (if (number? _%x108122%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x108122%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g108128108130%_)
                           (let* ((_%x108133%_ _%x108122%_)
                                  (_%port108136%_ _%g108128108130%_))
                             (if (output-port? _%port108136%_)
                                 (let ((_%port108141%_ _%port108136%_))
                                   (__display-as-string
                                    _%x108133%_
                                    _%port108141%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port108136%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args108155%_
        (call-with-output-string
         '()
         (lambda (_%g108156108158%_)
           (let* ((_%x108161%_ _%args108155%_)
                  (_%port108164%_ _%g108156108158%_))
             (if (output-port? _%port108164%_)
                 (let ((_%port108169%_ _%port108164%_))
                   (__display-as-string _%x108161%_ _%port108169%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port108164%_)
                   '#!void)))))))
    (define as-string
      (lambda _g113939_
        (let ((_g113940_ (let () (declare (not safe)) (##length _g113939_))))
          (cond ((let () (declare (not safe)) (##fx= _g113940_ 1))
                 (apply as-string__0 _g113939_))
                (#t
                 (apply (lambda _%args108155%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args108155%_)))
                        _g113939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g113939_))))))
    (define make-symbol__0
      (lambda (_%x108118%_)
        (if (interned-symbol? _%x108118%_)
            _%x108118%_
            (let ((__tmp113941 (as-string__0 _%x108118%_)))
              (declare (not safe))
              (##string->symbol __tmp113941)))))
    (define make-symbol__1
      (lambda _%args108120%_
        (let ((__tmp113942
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args108120%_))))
          (declare (not safe))
          (##string->symbol __tmp113942))))
    (define make-symbol
      (lambda _g113943_
        (let ((_g113944_ (let () (declare (not safe)) (##length _g113943_))))
          (cond ((let () (declare (not safe)) (##fx= _g113944_ 1))
                 (apply make-symbol__0 _g113943_))
                (#t
                 (apply (lambda _%args108120%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args108120%_)))
                        _g113943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g113943_))))))
    (define make-keyword__0
      (lambda (_%x108114%_)
        (if (interned-keyword? _%x108114%_)
            _%x108114%_
            (let ((__tmp113945 (as-string__0 _%x108114%_)))
              (declare (not safe))
              (##string->keyword __tmp113945)))))
    (define make-keyword__1
      (lambda _%args108116%_
        (let ((__tmp113946
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args108116%_))))
          (declare (not safe))
          (##string->keyword __tmp113946))))
    (define make-keyword
      (lambda _g113947_
        (let ((_g113948_ (let () (declare (not safe)) (##length _g113947_))))
          (cond ((let () (declare (not safe)) (##fx= _g113948_ 1))
                 (apply make-keyword__0 _g113947_))
                (#t
                 (apply (lambda _%args108116%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args108116%_)))
                        _g113947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g113947_))))))
    (define interned-keyword?
      (lambda (_%x108111%_)
        (if (keyword? _%x108111%_)
            (not (uninterned-keyword? _%x108111%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym108099%_)
        (let ((_%sym108102%_ _%sym108099%_))
          (if (uninterned-symbol? _%sym108102%_)
              (let ((__tmp113949
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym108102%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp113949))
              (let ((__tmp113950
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym108102%_))))
                (declare (not safe))
                (##string->keyword __tmp113950))))))
    (define symbol->keyword
      (lambda (_%sym104587%_)
        (if (symbol? _%sym104587%_)
            (let ((_%sym104591%_ _%sym104587%_))
              (__symbol->keyword _%sym104591%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@683.24-683.27"
               'contract:
               'symbol?
               'value:
               _%sym104587%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym108087%_)
        (let ((_%sym108090%_ _%sym108087%_))
          (if (uninterned-keyword? _%sym108090%_)
              (let ((__tmp113951
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym108090%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp113951))
              (let ((__tmp113952
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym108090%_))))
                (declare (not safe))
                (##string->symbol __tmp113952))))))
    (define keyword->symbol
      (lambda (_%sym104721%_)
        (if (keyword? _%sym104721%_)
            (let ((_%sym104725%_ _%sym104721%_))
              (__keyword->symbol _%sym104725%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@689.24-689.27"
               'contract:
               'keyword?
               'value:
               _%sym104721%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr108047%_ _%enc108048%_)
        (let* ((_%bstr108051%_ _%bstr108047%_) (_%enc108059%_ _%enc108048%_))
          (if (eq? _%enc108059%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr108051%_))
              (let* ((_%in108068%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc108059%_
                                   (cons 'init: (cons _%bstr108051%_ '()))))))
                     (_%len108070%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr108051%_)))
                     (_%out108072%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len108070%_)))
                     (_%n108074%_
                      (read-substring
                       _%out108072%_
                       '0
                       _%len108070%_
                       _%in108068%_)))
                (string-shrink! _%out108072%_ _%n108074%_)
                _%out108072%_)))))
    (define __bytes->string__0
      (lambda (_%bstr108080%_)
        (let ((_%enc108082%_ 'UTF-8))
          (__bytes->string__% _%bstr108080%_ _%enc108082%_))))
    (define __bytes->string
      (lambda _g113953_
        (let ((_g113954_ (let () (declare (not safe)) (##length _g113953_))))
          (cond ((let () (declare (not safe)) (##fx= _g113954_ 1))
                 (apply __bytes->string__0 _g113953_))
                ((let () (declare (not safe)) (##fx= _g113954_ 2))
                 (apply __bytes->string__% _g113953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g113953_))))))
    (define bytes->string__%
      (lambda (_%bstr104856%_ _%enc104857%_)
        (if (u8vector? _%bstr104856%_)
            (let ((_%bstr104861%_ _%bstr104856%_))
              (if (symbol? _%enc104857%_)
                  (let ((_%enc104871%_ _%enc104857%_))
                    (__bytes->string__% _%bstr104861%_ _%enc104871%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@696.25-696.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc104857%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@695.22-695.26"
               'contract:
               'u8vector?
               'value:
               _%bstr104856%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr104884%_)
        (let ((_%enc104886%_ 'UTF-8))
          (bytes->string__% _%bstr104884%_ _%enc104886%_))))
    (define bytes->string
      (lambda _g113955_
        (let ((_g113956_ (let () (declare (not safe)) (##length _g113955_))))
          (cond ((let () (declare (not safe)) (##fx= _g113956_ 1))
                 (apply bytes->string__0 _g113955_))
                ((let () (declare (not safe)) (##fx= _g113956_ 2))
                 (apply bytes->string__% _g113955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g113955_))))))
    (define __string->bytes__%
      (lambda (_%str107965%_ _%enc107966%_)
        (let* ((_%str107969%_ _%str107965%_) (_%enc107977%_ _%enc107966%_))
          (if (eq? _%enc107977%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str107969%_))
              (let* ((_%str107986%_ _%str107969%_)
                     (_%start107989%_ '0)
                     (_%end107992%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str107969%_)))
                     (_%enc107995%_ _%enc107977%_)
                     (_%str108000%_ _%str107986%_))
                (if (nonnegative-fixnum? _%start107989%_)
                    (let ((_%start108016%_ _%start107989%_))
                      (if (nonnegative-fixnum? _%end107992%_)
                          (let ((_%end108026%_ _%end107992%_))
                            (__substring->bytes__%
                             _%str108000%_
                             _%start108016%_
                             _%end108026%_
                             _%enc107995%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end107992%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start107989%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str108039%_)
        (let ((_%enc108041%_ 'UTF-8))
          (__string->bytes__% _%str108039%_ _%enc108041%_))))
    (define __string->bytes
      (lambda _g113957_
        (let ((_g113958_ (let () (declare (not safe)) (##length _g113957_))))
          (cond ((let () (declare (not safe)) (##fx= _g113958_ 1))
                 (apply __string->bytes__0 _g113957_))
                ((let () (declare (not safe)) (##fx= _g113958_ 2))
                 (apply __string->bytes__% _g113957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g113957_))))))
    (define string->bytes__%
      (lambda (_%str105012%_ _%enc105013%_)
        (if (string? _%str105012%_)
            (let ((_%str105017%_ _%str105012%_))
              (if (symbol? _%enc105013%_)
                  (let ((_%enc105027%_ _%enc105013%_))
                    (__string->bytes__% _%str105017%_ _%enc105027%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@708.25-708.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc105013%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@707.22-707.25"
               'contract:
               'string?
               'value:
               _%str105012%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str105040%_)
        (let ((_%enc105042%_ 'UTF-8))
          (string->bytes__% _%str105040%_ _%enc105042%_))))
    (define string->bytes
      (lambda _g113959_
        (let ((_g113960_ (let () (declare (not safe)) (##length _g113959_))))
          (cond ((let () (declare (not safe)) (##fx= _g113960_ 1))
                 (apply string->bytes__0 _g113959_))
                ((let () (declare (not safe)) (##fx= _g113960_ 2))
                 (apply string->bytes__% _g113959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g113959_))))))
    (define __substring->bytes__%
      (lambda (_%str107917%_ _%start107918%_ _%end107919%_ _%enc107920%_)
        (let* ((_%str107923%_ _%str107917%_)
               (_%start107931%_ _%start107918%_)
               (_%end107939%_ _%end107919%_))
          (if (eq? _%enc107920%_ 'UTF-8)
              (string->utf8 _%str107923%_ _%start107931%_ _%end107939%_)
              (let ((_%out107948%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc107920%_ '())))))
                (write-substring
                 _%str107923%_
                 _%start107931%_
                 _%end107939%_
                 _%out107948%_)
                (get-output-u8vector _%out107948%_))))))
    (define __substring->bytes__0
      (lambda (_%str107953%_ _%start107954%_ _%end107955%_)
        (let ((_%enc107957%_ 'UTF-8))
          (__substring->bytes__%
           _%str107953%_
           _%start107954%_
           _%end107955%_
           _%enc107957%_))))
    (define __substring->bytes
      (lambda _g113961_
        (let ((_g113962_ (let () (declare (not safe)) (##length _g113961_))))
          (cond ((let () (declare (not safe)) (##fx= _g113962_ 3))
                 (apply __substring->bytes__0 _g113961_))
                ((let () (declare (not safe)) (##fx= _g113962_ 4))
                 (apply __substring->bytes__% _g113961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g113961_))))))
    (define substring->bytes__%
      (lambda (_%str105168%_ _%start105169%_ _%end105170%_ _%enc105171%_)
        (if (string? _%str105168%_)
            (let ((_%str105175%_ _%str105168%_))
              (if (nonnegative-fixnum? _%start105169%_)
                  (let ((_%start105185%_ _%start105169%_))
                    (if (nonnegative-fixnum? _%end105170%_)
                        (let ((_%end105195%_ _%end105170%_))
                          (__substring->bytes__%
                           _%str105175%_
                           _%start105185%_
                           _%end105195%_
                           _%enc105171%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@716.25-716.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end105170%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@715.25-715.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start105169%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@714.25-714.28"
               'contract:
               'string?
               'value:
               _%str105168%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str105208%_ _%start105209%_ _%end105210%_)
        (let ((_%enc105212%_ 'UTF-8))
          (substring->bytes__%
           _%str105208%_
           _%start105209%_
           _%end105210%_
           _%enc105212%_))))
    (define substring->bytes
      (lambda _g113963_
        (let ((_g113964_ (let () (declare (not safe)) (##length _g113963_))))
          (cond ((let () (declare (not safe)) (##fx= _g113964_ 3))
                 (apply substring->bytes__0 _g113963_))
                ((let () (declare (not safe)) (##fx= _g113964_ 4))
                 (apply substring->bytes__% _g113963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g113963_))))))
    (define __string-empty?
      (lambda (_%str107904%_)
        (let* ((_%str107907%_ _%str107904%_)
               (__tmp113965
                (let () (declare (not safe)) (##string-length _%str107907%_))))
          (declare (not safe))
          (##fxzero? __tmp113965))))
    (define string-empty?
      (lambda (_%str105339%_)
        (if (string? _%str105339%_)
            (let ((_%str105343%_ _%str105339%_))
              (__string-empty? _%str105343%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@725.22-725.25"
               'contract:
               'string?
               'value:
               _%str105339%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str107844%_ _%char107845%_ _%start107846%_)
        (let* ((_%str107849%_ _%str107844%_)
               (_%char107857%_ _%char107845%_)
               (_%start107865%_ _%start107846%_)
               (_%len107874%_
                (let () (declare (not safe)) (##string-length _%str107849%_))))
          (let _%lp107876%_ ((_%k107878%_ _%start107865%_))
            (let ((_%k107880%_ _%k107878%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k107880%_ _%len107874%_))
                  (if (eq? _%char107857%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str107849%_ _%k107880%_)))
                      _%k107880%_
                      (_%lp107876%_
                       (let () (declare (not safe)) (##fx+ _%k107880%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str107895%_ _%char107896%_)
        (let ((_%start107898%_ '0))
          (__string-index__% _%str107895%_ _%char107896%_ _%start107898%_))))
    (define __string-index
      (lambda _g113966_
        (let ((_g113967_ (let () (declare (not safe)) (##length _g113966_))))
          (cond ((let () (declare (not safe)) (##fx= _g113967_ 2))
                 (apply __string-index__0 _g113966_))
                ((let () (declare (not safe)) (##fx= _g113967_ 3))
                 (apply __string-index__% _g113966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g113966_))))))
    (define string-index__%
      (lambda (_%str105474%_ _%char105475%_ _%start105476%_)
        (if (string? _%str105474%_)
            (let ((_%str105480%_ _%str105474%_))
              (if (char? _%char105475%_)
                  (let ((_%char105490%_ _%char105475%_))
                    (if (nonnegative-fixnum? _%start105476%_)
                        (let ((_%start105500%_ _%start105476%_))
                          (__string-index__%
                           _%str105480%_
                           _%char105490%_
                           _%start105500%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@731.21-731.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start105476%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@730.21-730.25"
                     'contract:
                     'char?
                     'value:
                     _%char105475%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@729.21-729.24"
               'contract:
               'string?
               'value:
               _%str105474%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str105513%_ _%char105514%_)
        (let ((_%start105516%_ '0))
          (string-index__% _%str105513%_ _%char105514%_ _%start105516%_))))
    (define string-index
      (lambda _g113968_
        (let ((_g113969_ (let () (declare (not safe)) (##length _g113968_))))
          (cond ((let () (declare (not safe)) (##fx= _g113969_ 2))
                 (apply string-index__0 _g113968_))
                ((let () (declare (not safe)) (##fx= _g113969_ 3))
                 (apply string-index__% _g113968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g113968_))))))
    (define __string-rindex__%
      (lambda (_%str107786%_ _%char107787%_ _%start107788%_)
        (let* ((_%str107791%_ _%str107786%_)
               (_%char107799%_ _%char107787%_)
               (_%len107808%_
                (let () (declare (not safe)) (##string-length _%str107791%_)))
               (_%start107810%_
                (if (fixnum? _%start107788%_)
                    _%start107788%_
                    (let () (declare (not safe)) (##fx- _%len107808%_ '1)))))
          (let _%lp107813%_ ((_%k107815%_ _%start107810%_))
            (let ((_%k107817%_ _%k107815%_))
              (if (let () (declare (not safe)) (##fx>= _%k107817%_ '0))
                  (if (eq? _%char107799%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str107791%_ _%k107817%_)))
                      _%k107817%_
                      (_%lp107813%_
                       (let () (declare (not safe)) (##fx- _%k107817%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str107834%_ _%char107835%_)
        (let ((_%start107837%_ '#f))
          (__string-rindex__% _%str107834%_ _%char107835%_ _%start107837%_))))
    (define __string-rindex
      (lambda _g113970_
        (let ((_g113971_ (let () (declare (not safe)) (##length _g113970_))))
          (cond ((let () (declare (not safe)) (##fx= _g113971_ 2))
                 (apply __string-rindex__0 _g113970_))
                ((let () (declare (not safe)) (##fx= _g113971_ 3))
                 (apply __string-rindex__% _g113970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g113970_))))))
    (define string-rindex__%
      (lambda (_%str105643%_ _%char105644%_ _%start105645%_)
        (if (string? _%str105643%_)
            (let ((_%str105649%_ _%str105643%_))
              (if (char? _%char105644%_)
                  (let ((_%char105659%_ _%char105644%_))
                    (__string-rindex__%
                     _%str105649%_
                     _%char105659%_
                     _%start105645%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@741.25-741.29"
                     'contract:
                     'char?
                     'value:
                     _%char105644%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@740.22-740.25"
               'contract:
               'string?
               'value:
               _%str105643%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str105672%_ _%char105673%_)
        (let ((_%start105675%_ '#f))
          (string-rindex__% _%str105672%_ _%char105673%_ _%start105675%_))))
    (define string-rindex
      (lambda _g113972_
        (let ((_g113973_ (let () (declare (not safe)) (##length _g113972_))))
          (cond ((let () (declare (not safe)) (##fx= _g113973_ 2))
                 (apply string-rindex__0 _g113972_))
                ((let () (declare (not safe)) (##fx= _g113973_ 3))
                 (apply string-rindex__% _g113972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g113972_))))))
    (define __string-split
      (lambda (_%str107683%_ _%char107684%_)
        (let* ((_%str107687%_ _%str107683%_)
               (_%char107695%_ _%char107684%_)
               (_%len107704%_
                (let () (declare (not safe)) (##string-length _%str107687%_))))
          (let _%lp107706%_ ((_%start107708%_ '0) (_%r107709%_ '()))
            (let* ((_%start107712%_ _%start107708%_)
                   (_%$e107770%_
                    (let* ((_%str107725%_ _%str107687%_)
                           (_%char107728%_ _%char107695%_)
                           (_%start107731%_ _%start107712%_)
                           (_%str107736%_ _%str107725%_)
                           (_%char107750%_ _%char107728%_))
                      (if (nonnegative-fixnum? _%start107731%_)
                          (let ((_%start107760%_ _%start107731%_))
                            (__string-index__%
                             _%str107736%_
                             _%char107750%_
                             _%start107760%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start107731%_)
                            '#!void)))))
              (if _%$e107770%_
                  ((lambda (_%end107773%_)
                     (let ((_%end107775%_ _%end107773%_))
                       (_%lp107706%_
                        (let () (declare (not safe)) (##fx+ _%end107775%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str107687%_
                                 _%start107712%_
                                 _%end107775%_))
                              _%r107709%_))))
                   _%$e107770%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start107712%_ _%len107704%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str107687%_
                                _%start107712%_
                                _%len107704%_)))
                       _%r107709%_)
                      (reverse! _%r107709%_))))))))
    (define string-split
      (lambda (_%str105801%_ _%char105802%_)
        (if (string? _%str105801%_)
            (let ((_%str105806%_ _%str105801%_))
              (if (char? _%char105802%_)
                  (let ((_%char105816%_ _%char105802%_))
                    (__string-split _%str105806%_ _%char105816%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@752.37-752.41"
                     'contract:
                     'char?
                     'value:
                     _%char105802%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@752.21-752.24"
               'contract:
               'string?
               'value:
               _%str105801%_)
              '#!void))))
    (define string-join
      (lambda (_%strs107533%_ _%join107534%_)
        (letrec ((_%join-length107537%_
                  (lambda (_%strs107621%_ _%jlen107622%_)
                    (let _%lp107624%_ ((_%rest107626%_ _%strs107621%_)
                                       (_%len107627%_ '0))
                      (let* ((_%len107629%_ _%len107627%_)
                             (_%rest107637107645%_ _%rest107626%_)
                             (_%else107639107653%_ (lambda () '0))
                             (_%K107641107671%_
                              (lambda (_%rest107656%_ _%hd107657%_)
                                (if (string? _%hd107657%_)
                                    (let ((_%hd107659%_ _%hd107657%_))
                                      (if (pair? _%rest107656%_)
                                          (_%lp107624%_
                                           _%rest107656%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd107659%_))
                                                _%jlen107622%_
                                                _%len107629%_))
                                          (let ((__tmp113974
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd107659%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp113974
                                                   _%len107629%_))))
                                    (error '"expected string" _%hd107657%_)))))
                        (if (pair? _%rest107637107645%_)
                            (let ((_%hd107642107674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest107637107645%_)))
                                  (_%tl107643107676%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest107637107645%_))))
                              (let* ((_%hd107679%_ _%hd107642107674%_)
                                     (_%rest107681%_ _%tl107643107676%_))
                                (_%K107641107671%_
                                 _%rest107681%_
                                 _%hd107679%_)))
                            (_%else107639107653%_)))))))
          (let* ((_%join107542%_
                  (if (char? _%join107534%_)
                      (let () (declare (not safe)) (##string _%join107534%_))
                      (if (string? _%join107534%_)
                          _%join107534%_
                          (error '"expected string or char" _%join107534%_))))
                 (_%jlen107544%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join107542%_)))
                 (_%olen107546%_
                  (_%join-length107537%_ _%strs107533%_ _%jlen107544%_))
                 (_%ostr107548%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen107546%_))))
            (let _%lp107551%_ ((_%rest107553%_ _%strs107533%_)
                               (_%k107554%_ '0))
              (let* ((_%k107557%_ _%k107554%_)
                     (_%rest107573107581%_ _%rest107553%_)
                     (_%else107575107589%_ (lambda () '""))
                     (_%K107577107609%_
                      (lambda (_%rest107592%_ _%hd107593%_)
                        (let* ((_%hd107595%_ _%hd107593%_)
                               (_%hdlen107607%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd107595%_))))
                          (if (pair? _%rest107592%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd107595%_
                                   '0
                                   _%hdlen107607%_
                                   _%ostr107548%_
                                   _%k107557%_))
                                (let ((__tmp113975
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k107557%_ _%hdlen107607%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join107542%_
                                   '0
                                   _%jlen107544%_
                                   _%ostr107548%_
                                   __tmp113975))
                                (_%lp107551%_
                                 _%rest107592%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k107557%_
                                          _%hdlen107607%_
                                          _%jlen107544%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd107595%_
                                   '0
                                   _%hdlen107607%_
                                   _%ostr107548%_
                                   _%k107557%_))
                                _%ostr107548%_))))))
                (if (pair? _%rest107573107581%_)
                    (let ((_%hd107578107612%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest107573107581%_)))
                          (_%tl107579107614%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest107573107581%_))))
                      (let* ((_%hd107617%_ _%hd107578107612%_)
                             (_%rest107619%_ _%tl107579107614%_))
                        (_%K107577107609%_ _%rest107619%_ _%hd107617%_)))
                    (_%else107575107589%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes107473%_ _%port107474%_ _%start107475%_ _%end107476%_)
        (let* ((_%bytes107479%_ _%bytes107473%_)
               (_%port107487%_ _%port107474%_)
               (_%start107495%_ _%start107475%_)
               (_%end107503%_ _%end107476%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes107479%_
           _%start107495%_
           _%end107503%_
           _%port107487%_))))
    (define __read-u8vector__0
      (lambda (_%bytes107515%_ _%port107516%_)
        (let* ((_%start107518%_ '0)
               (_%end107520%_ (u8vector-length _%bytes107515%_)))
          (__read-u8vector__%
           _%bytes107515%_
           _%port107516%_
           _%start107518%_
           _%end107520%_))))
    (define __read-u8vector__1
      (lambda (_%bytes107522%_ _%port107523%_ _%start107524%_)
        (let ((_%end107526%_ (u8vector-length _%bytes107522%_)))
          (__read-u8vector__%
           _%bytes107522%_
           _%port107523%_
           _%start107524%_
           _%end107526%_))))
    (define __read-u8vector
      (lambda _g113976_
        (let ((_g113977_ (let () (declare (not safe)) (##length _g113976_))))
          (cond ((let () (declare (not safe)) (##fx= _g113977_ 2))
                 (apply __read-u8vector__0 _g113976_))
                ((let () (declare (not safe)) (##fx= _g113977_ 3))
                 (apply __read-u8vector__1 _g113976_))
                ((let () (declare (not safe)) (##fx= _g113977_ 4))
                 (apply __read-u8vector__% _g113976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g113976_))))))
    (define read-u8vector__%
      (lambda (_%bytes105947%_ _%port105948%_ _%start105949%_ _%end105950%_)
        (if (u8vector? _%bytes105947%_)
            (let ((_%bytes105954%_ _%bytes105947%_))
              (if (input-port? _%port105948%_)
                  (let ((_%port105964%_ _%port105948%_))
                    (if ((lambda (_%o105973%_)
                           (and (fixnum? _%o105973%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o105973%_ '0))
                                (let ((__tmp113978
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes105954%_))))
                                  (declare (not safe))
                                  (##fx< _%o105973%_ __tmp113978))))
                         _%start105949%_)
                        (let ((_%start105977%_ _%start105949%_))
                          (if ((lambda (_%o105986%_)
                                 (and (fixnum? _%o105986%_)
                                      (let ((__tmp113979
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes105954%_))))
                                        (declare (not safe))
                                        (##fx<= _%start105977%_
                                                _%o105986%_
                                                __tmp113979))))
                               _%end105950%_)
                              (let ((_%end105990%_ _%end105950%_))
                                (__read-u8vector__%
                                 _%bytes105954%_
                                 _%port105964%_
                                 _%start105977%_
                                 _%end105990%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@819.22-819.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end105950%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@817.22-817.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start105949%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@816.22-816.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port105948%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@815.22-815.27"
               'contract:
               'u8vector?
               'value:
               _%bytes105947%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes106003%_ _%port106004%_)
        (let* ((_%start106006%_ '0)
               (_%end106008%_ (u8vector-length _%bytes106003%_)))
          (read-u8vector__%
           _%bytes106003%_
           _%port106004%_
           _%start106006%_
           _%end106008%_))))
    (define read-u8vector__1
      (lambda (_%bytes106010%_ _%port106011%_ _%start106012%_)
        (let ((_%end106014%_ (u8vector-length _%bytes106010%_)))
          (read-u8vector__%
           _%bytes106010%_
           _%port106011%_
           _%start106012%_
           _%end106014%_))))
    (define read-u8vector
      (lambda _g113980_
        (let ((_g113981_ (let () (declare (not safe)) (##length _g113980_))))
          (cond ((let () (declare (not safe)) (##fx= _g113981_ 2))
                 (apply read-u8vector__0 _g113980_))
                ((let () (declare (not safe)) (##fx= _g113981_ 3))
                 (apply read-u8vector__1 _g113980_))
                ((let () (declare (not safe)) (##fx= _g113981_ 4))
                 (apply read-u8vector__% _g113980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g113980_))))))
    (define __write-u8vector__%
      (lambda (_%bytes107412%_ _%port107413%_ _%start107414%_ _%end107415%_)
        (let* ((_%bytes107418%_ _%bytes107412%_)
               (_%port107426%_ _%port107413%_)
               (_%start107434%_ _%start107414%_)
               (_%end107442%_ _%end107415%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes107418%_
           _%start107434%_
           _%end107442%_
           _%port107426%_))))
    (define __write-u8vector__0
      (lambda (_%bytes107454%_ _%port107455%_)
        (let* ((_%start107457%_ '0)
               (_%end107459%_ (u8vector-length _%bytes107454%_)))
          (__write-u8vector__%
           _%bytes107454%_
           _%port107455%_
           _%start107457%_
           _%end107459%_))))
    (define __write-u8vector__1
      (lambda (_%bytes107461%_ _%port107462%_ _%start107463%_)
        (let ((_%end107465%_ (u8vector-length _%bytes107461%_)))
          (__write-u8vector__%
           _%bytes107461%_
           _%port107462%_
           _%start107463%_
           _%end107465%_))))
    (define __write-u8vector
      (lambda _g113982_
        (let ((_g113983_ (let () (declare (not safe)) (##length _g113982_))))
          (cond ((let () (declare (not safe)) (##fx= _g113983_ 2))
                 (apply __write-u8vector__0 _g113982_))
                ((let () (declare (not safe)) (##fx= _g113983_ 3))
                 (apply __write-u8vector__1 _g113982_))
                ((let () (declare (not safe)) (##fx= _g113983_ 4))
                 (apply __write-u8vector__% _g113982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g113982_))))))
    (define write-u8vector__%
      (lambda (_%bytes106142%_ _%port106143%_ _%start106144%_ _%end106145%_)
        (if (u8vector? _%bytes106142%_)
            (let ((_%bytes106149%_ _%bytes106142%_))
              (if (output-port? _%port106143%_)
                  (let* ((_%port106159%_ _%port106143%_)
                         (_%start106168%_ _%start106144%_))
                    (if ((lambda (_%o106176%_)
                           (and (fixnum? _%o106176%_)
                                (let ((__tmp113984
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes106149%_))))
                                  (declare (not safe))
                                  (##fx<= _%start106168%_
                                          _%o106176%_
                                          __tmp113984))))
                         _%end106145%_)
                        (let ((_%end106180%_ _%end106145%_))
                          (__write-u8vector__%
                           _%bytes106149%_
                           _%port106159%_
                           _%start106168%_
                           _%end106180%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@828.23-828.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end106145%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@826.23-826.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port106143%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@825.23-825.28"
               'contract:
               'u8vector?
               'value:
               _%bytes106142%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes106193%_ _%port106194%_)
        (let* ((_%start106196%_ '0)
               (_%end106198%_ (u8vector-length _%bytes106193%_)))
          (write-u8vector__%
           _%bytes106193%_
           _%port106194%_
           _%start106196%_
           _%end106198%_))))
    (define write-u8vector__1
      (lambda (_%bytes106200%_ _%port106201%_ _%start106202%_)
        (let ((_%end106204%_ (u8vector-length _%bytes106200%_)))
          (write-u8vector__%
           _%bytes106200%_
           _%port106201%_
           _%start106202%_
           _%end106204%_))))
    (define write-u8vector
      (lambda _g113985_
        (let ((_g113986_ (let () (declare (not safe)) (##length _g113985_))))
          (cond ((let () (declare (not safe)) (##fx= _g113986_ 2))
                 (apply write-u8vector__0 _g113985_))
                ((let () (declare (not safe)) (##fx= _g113986_ 3))
                 (apply write-u8vector__1 _g113985_))
                ((let () (declare (not safe)) (##fx= _g113986_ 4))
                 (apply write-u8vector__% _g113985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g113985_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag107380%_
               _%dbg-exprs107381%_
               _%dbg-thunks107382%_
               _%expr107383%_
               _%thunk107384%_)
        (letrec ((_%o107386%_ (current-output-port))
                 (_%e107387%_ (current-error-port))
                 (_%p107388%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f107389%_
                  (lambda ()
                    (force-output _%o107386%_)
                    (force-output _%e107387%_)))
                 (_%d107390%_
                  (lambda (_%x107397%_) (display _%x107397%_ _%e107387%_)))
                 (_%w107391%_
                  (lambda (_%x107399%_) (_%p107388%_ _%x107399%_ _%e107387%_)))
                 (_%n107392%_ (lambda () (newline _%e107387%_)))
                 (_%v107393%_
                  (lambda (_%l107402%_)
                    (for-each
                     (lambda (_%x107404%_)
                       (_%d107390%_ '" ")
                       (_%w107391%_ _%x107404%_))
                     _%l107402%_)
                    (_%n107392%_)))
                 (_%x107394%_
                  (lambda (_%expr107406%_ _%thunk107407%_)
                    (_%f107389%_)
                    (_%d107390%_ '"  ")
                    (_%w107391%_ _%expr107406%_)
                    (_%d107390%_ '" =>")
                    (call-with-values
                     _%thunk107407%_
                     (lambda _%x107409%_
                       (_%v107393%_ _%x107409%_)
                       (_%f107389%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x107409%_)))))))
          (if _%tag107380%_
              (begin
                (if (eq? _%tag107380%_ '#!void)
                    '#!void
                    (begin
                      (_%f107389%_)
                      (_%d107390%_ _%tag107380%_)
                      (_%n107392%_)))
                (for-each _%x107394%_ _%dbg-exprs107381%_ _%dbg-thunks107382%_)
                (if _%thunk107384%_
                    (_%x107394%_ _%expr107383%_ _%thunk107384%_)
                    '#!void))
              (if _%thunk107384%_ (_%thunk107384%_) '#!void)))))))
