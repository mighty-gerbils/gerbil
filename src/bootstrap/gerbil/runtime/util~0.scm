(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1770342544)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args108127%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args108127%_))
          (newline))))
    (define display*
      (lambda _%args108124%_
        (let () (declare (not safe)) (##for-each display _%args108124%_))))
    (define __file-newer?
      (lambda (_%file1107941%_ _%file2107942%_)
        (let* ((_%file1107945%_ _%file1107941%_)
               (_%file2107953%_ _%file2107942%_))
          (letrec ((_%__modification-time108097%_
                    (lambda (_%file108112%_)
                      (let* ((_%file108115%_ _%file108112%_)
                             (__tmp110903
                              (let ((__tmp110904
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file108115%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp110904))))
                        (declare (not safe))
                        (##time->seconds __tmp110903))))
                   (_%modification-time108098%_
                    (lambda (_%file108100%_)
                      (let ((_%file108103%_ _%file108100%_))
                        (_%__modification-time108097%_ _%file108103%_)))))
            (let ((__tmp110906 (_%__modification-time108097%_ _%file1107945%_))
                  (__tmp110905
                   (_%__modification-time108097%_ _%file2107953%_)))
              (declare (not safe))
              (##fl> __tmp110906 __tmp110905))))))
    (define file-newer?
      (lambda (_%file198348%_ _%file298349%_)
        (if (string? _%file198348%_)
            (let ((_%file198353%_ _%file198348%_))
              (if (string? _%file298349%_)
                  (let ((_%file298363%_ _%file298349%_))
                    (__file-newer? _%file198353%_ _%file298363%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@97.20-97.25"
                     'contract:
                     'string?
                     'value:
                     _%file298349%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@96.20-96.25"
               'contract:
               'string?
               'value:
               _%file198348%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir107735%_ _%perms107736%_)
        (let* ((_%dir107739%_ _%dir107735%_) (_%perms107747%_ _%perms107736%_))
          (letrec ((_%__create1107891%_
                    (lambda (_%path107916%_)
                      (let ((_%path107919%_ _%path107916%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path107919%_))
                            (if (eq? (file-type _%path107919%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path107919%_))
                            (if _%perms107747%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path107919%_
                                             (cons 'permissions:
                                                   (cons _%perms107747%_
                                                         '())))))
                                (create-directory _%path107919%_))))))
                   (_%create1107892%_
                    (lambda (_%path107904%_)
                      (let ((_%path107907%_ _%path107904%_))
                        (_%__create1107891%_ _%path107907%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir107739%_))
                '#!void
                (let _%lp107894%_ ((_%start107896%_ '0))
                  (let ((_%$e107898%_
                         (__string-index__%
                          _%dir107739%_
                          '#\/
                          _%start107896%_)))
                    (if _%$e107898%_
                        ((lambda (_%x107901%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x107901%_ '0))
                               (_%__create1107891%_
                                (substring _%dir107739%_ '0 _%x107901%_))
                               '#!void)
                           (_%lp107894%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x107901%_ '1))))
                         _%$e107898%_)
                        (_%__create1107891%_ _%dir107739%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir107934%_)
        (let ((_%perms107936%_ '493))
          (__create-directory*__% _%dir107934%_ _%perms107936%_))))
    (define __create-directory*
      (lambda _g110907_
        (let ((_g110908_ (let () (declare (not safe)) (##length _g110907_))))
          (cond ((let () (declare (not safe)) (##fx= _g110908_ 1))
                 (apply __create-directory*__0 _g110907_))
                ((let () (declare (not safe)) (##fx= _g110908_ 2))
                 (apply __create-directory*__% _g110907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g110907_))))))
    (define create-directory*__%
      (lambda (_%dir98494%_ _%perms98495%_)
        (if (string? _%dir98494%_)
            (let ((_%dir98499%_ _%dir98494%_))
              (if (fixnum? _%perms98495%_)
                  (let ((_%perms98509%_ _%perms98495%_))
                    (__create-directory*__% _%dir98499%_ _%perms98509%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@108.26-108.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms98495%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@107.26-107.29"
               'contract:
               'string?
               'value:
               _%dir98494%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir98522%_)
        (let ((_%perms98524%_ '493))
          (create-directory*__% _%dir98522%_ _%perms98524%_))))
    (define create-directory*
      (lambda _g110909_
        (let ((_g110910_ (let () (declare (not safe)) (##length _g110909_))))
          (cond ((let () (declare (not safe)) (##fx= _g110910_ 1))
                 (apply create-directory*__0 _g110909_))
                ((let () (declare (not safe)) (##fx= _g110910_ 2))
                 (apply create-directory*__% _g110909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g110909_))))))
    (define __move-file__%
      (lambda (_%src107678%_ _%dest107679%_ _%replace?107680%_)
        (let* ((_%src107683%_ _%src107678%_)
               (_%dest107691%_ _%dest107679%_)
               (_%replace?107699%_ _%replace?107680%_))
          (letrec ((_%force-move-it107708%_
                    (lambda ()
                      (let ((_%tmp107714%_
                             (if _%replace?107699%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest107691%_))
                                     (let ((__tmp110911
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest107691%_
                                        '"."
                                        __tmp110911))
                                     '#f)
                                 '#f)))
                        (if _%tmp107714%_
                            (rename-file _%dest107691%_ _%tmp107714%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e107716%_)
                           (if _%tmp107714%_
                               (rename-file _%tmp107714%_ _%dest107691%_ '#t)
                               '#!void)
                           (raise _%e107716%_))
                         (lambda ()
                           (let ((_%fi107719%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src107683%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi107719%_))
                                      'symbolic-link)
                                 (let ((__tmp110912
                                        (path-normalize _%src107683%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp110912
                                    _%dest107691%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src107683%_
                                    _%dest107691%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src107683%_))
                           (if _%tmp107714%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp107714%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e107710%_)
               (if (let () (declare (not safe)) (##file-exists? _%src107683%_))
                   (_%force-move-it107708%_)
                   (raise _%e107710%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src107683%_
                  _%dest107691%_
                  _%replace?107699%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src107725%_ _%dest107726%_)
        (let ((_%replace?107728%_ '#t))
          (__move-file__% _%src107725%_ _%dest107726%_ _%replace?107728%_))))
    (define __move-file
      (lambda _g110913_
        (let ((_g110914_ (let () (declare (not safe)) (##length _g110913_))))
          (cond ((let () (declare (not safe)) (##fx= _g110914_ 2))
                 (apply __move-file__0 _g110913_))
                ((let () (declare (not safe)) (##fx= _g110914_ 3))
                 (apply __move-file__% _g110913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g110913_))))))
    (define move-file__%
      (lambda (_%src98650%_ _%dest98651%_ _%replace?98652%_)
        (if (string? _%src98650%_)
            (let ((_%src98656%_ _%src98650%_))
              (if (string? _%dest98651%_)
                  (let ((_%dest98666%_ _%dest98651%_))
                    (if (boolean? _%replace?98652%_)
                        (let ((_%replace?98676%_ _%replace?98652%_))
                          (__move-file__%
                           _%src98656%_
                           _%dest98666%_
                           _%replace?98676%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@132.51-132.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?98652%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@132.34-132.38"
                     'contract:
                     'string?
                     'value:
                     _%dest98651%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@132.18-132.21"
               'contract:
               'string?
               'value:
               _%src98650%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src98689%_ _%dest98690%_)
        (let ((_%replace?98692%_ '#t))
          (move-file__% _%src98689%_ _%dest98690%_ _%replace?98692%_))))
    (define move-file
      (lambda _g110915_
        (let ((_g110916_ (let () (declare (not safe)) (##length _g110915_))))
          (cond ((let () (declare (not safe)) (##fx= _g110916_ 2))
                 (apply move-file__0 _g110915_))
                ((let () (declare (not safe)) (##fx= _g110916_ 3))
                 (apply move-file__% _g110915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g110915_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore107674%_ '#t))
    (define true? (lambda (_%obj107671%_) (eq? _%obj107671%_ '#t)))
    (define false (lambda _%ignore107668%_ '#f))
    (define void (lambda _%ignore107665%_ '#!void))
    (define void? (lambda (_%obj107662%_) (eq? _%obj107662%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj107659%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj107659%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj107656%_) (eq? _%obj107656%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj107653%_) (eq? _%obj107653%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj107650%_) (eq? _%obj107650%_ '#!optional)))
    (define immediate?
      (lambda (_%obj107647%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj107647%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj107644%_)
        (if (fixnum? _%obj107644%_)
            (let () (declare (not safe)) (##fx>= _%obj107644%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj107638%_)
        (let ((_%$e107641%_ (pair? _%obj107638%_)))
          (if _%$e107641%_ _%$e107641%_ (null? _%obj107638%_)))))
    (define values-count
      (lambda (_%obj107635%_)
        (if (let () (declare (not safe)) (##values? _%obj107635%_))
            (let () (declare (not safe)) (##values-length _%obj107635%_))
            '1)))
    (define __values-ref
      (lambda (_%obj107622%_ _%k107623%_)
        (let ((_%k107626%_ _%k107623%_))
          (if (let () (declare (not safe)) (##values? _%obj107622%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj107622%_ _%k107626%_))
              _%obj107622%_))))
    (define values-ref
      (lambda (_%obj98818%_ _%k98819%_)
        (if (fixnum? _%k98819%_)
            (let ((_%k98823%_ _%k98819%_))
              (__values-ref _%obj98818%_ _%k98823%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@266.23-266.24"
               'contract:
               'fixnum?
               'value:
               _%k98819%_)
              '#!void))))
    (define values->list
      (lambda (_%obj107619%_)
        (if (let () (declare (not safe)) (##values? _%obj107619%_))
            (let () (declare (not safe)) (##values->list _%obj107619%_))
            (list _%obj107619%_))))
    (define __foldl1
      (lambda (_%f107567%_ _%iv107568%_ _%lst107569%_)
        (let ((_%f107572%_ _%f107567%_))
          (let _%lp107581%_ ((_%rest107583%_ _%lst107569%_)
                             (_%r107584%_ _%iv107568%_))
            (let* ((_%rest107585107593%_ _%rest107583%_)
                   (_%else107587107601%_ (lambda () _%r107584%_))
                   (_%K107589107607%_
                    (lambda (_%rest107604%_ _%x107605%_)
                      (_%lp107581%_
                       _%rest107604%_
                       (let ()
                         (declare (not safe))
                         (_%f107572%_ _%x107605%_ _%r107584%_))))))
              (if (pair? _%rest107585107593%_)
                  (let ((_%hd107590107610%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest107585107593%_)))
                        (_%tl107591107612%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest107585107593%_))))
                    (let* ((_%x107615%_ _%hd107590107610%_)
                           (_%rest107617%_ _%tl107591107612%_))
                      (_%K107589107607%_ _%rest107617%_ _%x107615%_)))
                  (_%else107587107601%_)))))))
    (define foldl1
      (lambda (_%f98953%_ _%iv98954%_ _%lst98955%_)
        (if (procedure? _%f98953%_)
            (let ((_%f98959%_ _%f98953%_))
              (__foldl1 _%f98959%_ _%iv98954%_ _%lst98955%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@289.15-289.16"
               'contract:
               'procedure?
               'value:
               _%f98953%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f107480%_ _%iv107481%_ _%lst1107482%_ _%lst2107483%_)
        (let ((_%f107486%_ _%f107480%_))
          (let _%lp107495%_ ((_%rest1107497%_ _%lst1107482%_)
                             (_%rest2107498%_ _%lst2107483%_)
                             (_%r107499%_ _%iv107481%_))
            (let* ((_%rest1107500107508%_ _%rest1107497%_)
                   (_%else107502107516%_ (lambda () _%r107499%_))
                   (_%K107504107555%_
                    (lambda (_%rest1107519%_ _%x1107520%_)
                      (let* ((_%rest2107521107529%_ _%rest2107498%_)
                             (_%else107523107537%_ (lambda () _%r107499%_))
                             (_%K107525107543%_
                              (lambda (_%rest2107540%_ _%x2107541%_)
                                (_%lp107495%_
                                 _%rest1107519%_
                                 _%rest2107540%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f107486%_
                                    _%x1107520%_
                                    _%x2107541%_
                                    _%r107499%_))))))
                        (if (pair? _%rest2107521107529%_)
                            (let ((_%hd107526107546%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2107521107529%_)))
                                  (_%tl107527107548%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2107521107529%_))))
                              (let* ((_%x2107551%_ _%hd107526107546%_)
                                     (_%rest2107553%_ _%tl107527107548%_))
                                (_%K107525107543%_
                                 _%rest2107553%_
                                 _%x2107551%_)))
                            (_%else107523107537%_))))))
              (if (pair? _%rest1107500107508%_)
                  (let ((_%hd107505107558%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1107500107508%_)))
                        (_%tl107506107560%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1107500107508%_))))
                    (let* ((_%x1107563%_ _%hd107505107558%_)
                           (_%rest1107565%_ _%tl107506107560%_))
                      (_%K107504107555%_ _%rest1107565%_ _%x1107563%_)))
                  (_%else107502107516%_)))))))
    (define foldl2
      (lambda (_%f99089%_ _%iv99090%_ _%lst199091%_ _%lst299092%_)
        (if (procedure? _%f99089%_)
            (let ((_%f99096%_ _%f99089%_))
              (__foldl2 _%f99096%_ _%iv99090%_ _%lst199091%_ _%lst299092%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@296.15-296.16"
               'contract:
               'procedure?
               'value:
               _%f99089%_)
              '#!void))))
    (define foldl
      (lambda _g110917_
        (let ((_g110918_ (let () (declare (not safe)) (##length _g110917_))))
          (cond ((let () (declare (not safe)) (##fx= _g110918_ 3))
                 (apply foldl1 _g110917_))
                ((let () (declare (not safe)) (##fx= _g110918_ 4))
                 (apply foldl2 _g110917_))
                ((let () (declare (not safe)) (##fx>= _g110918_ 4))
                 (apply foldl* _g110917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g110917_))))))
    (define __foldl*
      (lambda (_%f107443%_ _%iv107444%_ . _%rest107445%_)
        (let ((_%f107448%_ _%f107443%_))
          (let _%recur107457%_ ((_%iv107459%_ _%iv107444%_)
                                (_%rest107460%_ _%rest107445%_))
            (if (__andmap1 pair? _%rest107460%_)
                (_%recur107457%_
                 (let ((__tmp110919
                        (__foldr1
                         (lambda (_%xs107462%_ _%r107463%_)
                           (cons (car _%xs107462%_) _%r107463%_))
                         (list _%iv107459%_)
                         _%rest107460%_)))
                   (declare (not safe))
                   (##apply _%f107448%_ __tmp110919))
                 (map cdr _%rest107460%_))
                _%iv107459%_)))))
    (define foldl*
      (lambda (_%f99226%_ _%iv99227%_ . _%rest99228%_)
        (if (procedure? _%f99226%_)
            (let ((_%f99232%_ _%f99226%_))
              (declare (not safe))
              (##apply __foldl* _%f99232%_ _%iv99227%_ _%rest99228%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@314.15-314.16"
               'contract:
               'procedure?
               'value:
               _%f99226%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f107392%_ _%iv107393%_ _%lst107394%_)
        (let ((_%f107397%_ _%f107392%_))
          (let _%recur107406%_ ((_%rest107408%_ _%lst107394%_))
            (let* ((_%rest107409107417%_ _%rest107408%_)
                   (_%else107411107425%_ (lambda () _%iv107393%_))
                   (_%K107413107431%_
                    (lambda (_%rest107428%_ _%x107429%_)
                      (let ((__tmp110920 (_%recur107406%_ _%rest107428%_)))
                        (declare (not safe))
                        (_%f107397%_ _%x107429%_ __tmp110920)))))
              (if (pair? _%rest107409107417%_)
                  (let ((_%hd107414107434%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest107409107417%_)))
                        (_%tl107415107436%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest107409107417%_))))
                    (let* ((_%x107439%_ _%hd107414107434%_)
                           (_%rest107441%_ _%tl107415107436%_))
                      (_%K107413107431%_ _%rest107441%_ _%x107439%_)))
                  (_%else107411107425%_)))))))
    (define foldr1
      (lambda (_%f99362%_ _%iv99363%_ _%lst99364%_)
        (if (procedure? _%f99362%_)
            (let ((_%f99368%_ _%f99362%_))
              (__foldr1 _%f99368%_ _%iv99363%_ _%lst99364%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@324.15-324.16"
               'contract:
               'procedure?
               'value:
               _%f99362%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f107306%_ _%iv107307%_ _%lst1107308%_ _%lst2107309%_)
        (let ((_%f107312%_ _%f107306%_))
          (let _%recur107321%_ ((_%rest1107323%_ _%lst1107308%_)
                                (_%rest2107324%_ _%lst2107309%_))
            (let* ((_%rest1107325107333%_ _%rest1107323%_)
                   (_%else107327107341%_ (lambda () _%iv107307%_))
                   (_%K107329107380%_
                    (lambda (_%rest1107344%_ _%x1107345%_)
                      (let* ((_%rest2107346107354%_ _%rest2107324%_)
                             (_%else107348107362%_ (lambda () _%iv107307%_))
                             (_%K107350107368%_
                              (lambda (_%rest2107365%_ _%x2107366%_)
                                (let ((__tmp110921
                                       (_%recur107321%_
                                        _%rest1107344%_
                                        _%rest2107365%_)))
                                  (declare (not safe))
                                  (_%f107312%_
                                   _%x1107345%_
                                   _%x2107366%_
                                   __tmp110921)))))
                        (if (pair? _%rest2107346107354%_)
                            (let ((_%hd107351107371%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2107346107354%_)))
                                  (_%tl107352107373%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2107346107354%_))))
                              (let* ((_%x2107376%_ _%hd107351107371%_)
                                     (_%rest2107378%_ _%tl107352107373%_))
                                (_%K107350107368%_
                                 _%rest2107378%_
                                 _%x2107376%_)))
                            (_%else107348107362%_))))))
              (if (pair? _%rest1107325107333%_)
                  (let ((_%hd107330107383%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1107325107333%_)))
                        (_%tl107331107385%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1107325107333%_))))
                    (let* ((_%x1107388%_ _%hd107330107383%_)
                           (_%rest1107390%_ _%tl107331107385%_))
                      (_%K107329107380%_ _%rest1107390%_ _%x1107388%_)))
                  (_%else107327107341%_)))))))
    (define foldr2
      (lambda (_%f99498%_ _%iv99499%_ _%lst199500%_ _%lst299501%_)
        (if (procedure? _%f99498%_)
            (let ((_%f99505%_ _%f99498%_))
              (__foldr2 _%f99505%_ _%iv99499%_ _%lst199500%_ _%lst299501%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@331.15-331.16"
               'contract:
               'procedure?
               'value:
               _%f99498%_)
              '#!void))))
    (define foldr
      (lambda _g110922_
        (let ((_g110923_ (let () (declare (not safe)) (##length _g110922_))))
          (cond ((let () (declare (not safe)) (##fx= _g110923_ 3))
                 (apply foldr1 _g110922_))
                ((let () (declare (not safe)) (##fx= _g110923_ 4))
                 (apply foldr2 _g110922_))
                ((let () (declare (not safe)) (##fx>= _g110923_ 4))
                 (apply foldr* _g110922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g110922_))))))
    (define __foldr*
      (lambda (_%f107270%_ _%iv107271%_ . _%rest107272%_)
        (let ((_%f107275%_ _%f107270%_))
          (let _%recur107284%_ ((_%rest107286%_ _%rest107272%_))
            (if (__andmap1 pair? _%rest107286%_)
                (let ((__tmp110924
                       (__foldr1
                        (lambda (_%xs107288%_ _%r107289%_)
                          (cons (car _%xs107288%_) _%r107289%_))
                        (list (_%recur107284%_ (map cdr _%rest107286%_)))
                        _%rest107286%_)))
                  (declare (not safe))
                  (##apply _%f107275%_ __tmp110924))
                _%iv107271%_)))))
    (define foldr*
      (lambda (_%f99635%_ _%iv99636%_ . _%rest99637%_)
        (if (procedure? _%f99635%_)
            (let ((_%f99641%_ _%f99635%_))
              (declare (not safe))
              (##apply __foldr* _%f99641%_ _%iv99636%_ _%rest99637%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@349.15-349.16"
               'contract:
               'procedure?
               'value:
               _%f99635%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%l107157%_)
        (let* ((_%l107158107171%_ _%l107157%_)
               (_%E107162107175%_
                (lambda ()
                  (error '"No clause matching"
                         _%l107158107171%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K107167107260%_
                 (lambda (_%r107258%_) (remove-nulls! _%r107258%_)))
                (_%K107164107247%_
                 (lambda (_%r107187%_)
                   (let _%loop107189%_ ((_%l107191%_ _%l107157%_)
                                        (_%r107192%_ _%r107187%_))
                     (let* ((_%r107193107206%_ _%r107192%_)
                            (_%E107197107210%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r107193107206%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K107202107237%_
                              (lambda (_%rr107235%_)
                                (let ((__tmp110926 _%l107191%_)
                                      (__tmp110925
                                       (remove-nulls! _%rr107235%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp110926 __tmp110925))))
                             (_%K107199107224%_
                              (lambda (_%rr107222%_)
                                (_%loop107189%_ _%r107192%_ _%rr107222%_)))
                             (_%K107198107215%_ (lambda () '#!void)))
                         (if (pair? _%r107193107206%_)
                             (let ((_%tl107204107242%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r107193107206%_)))
                                   (_%hd107203107240%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r107193107206%_))))
                               (if (null? _%hd107203107240%_)
                                   (let ((_%rr107245%_ _%tl107204107242%_))
                                     (_%K107202107237%_ _%rr107245%_))
                                   (let ((_%rr107230%_ _%tl107204107242%_))
                                     (_%K107199107224%_ _%rr107230%_))))
                             '#!void))))
                   _%l107157%_))
                (_%K107163107180%_ (lambda () _%l107157%_)))
            (if (pair? _%l107158107171%_)
                (let ((_%tl107169107265%_
                       (let () (declare (not safe)) (##cdr _%l107158107171%_)))
                      (_%hd107168107263%_
                       (let ()
                         (declare (not safe))
                         (##car _%l107158107171%_))))
                  (if (null? _%hd107168107263%_)
                      (let ((_%r107268%_ _%tl107169107265%_))
                        (remove-nulls! _%r107268%_))
                      (let ((_%r107253%_ _%tl107169107265%_))
                        (_%K107164107247%_ _%r107253%_))))
                (_%K107163107180%_))))))
    (define append1!
      (lambda (_%l107142%_ _%x107143%_)
        (let ((_%l2107146%_ (cons _%x107143%_ '())))
          (if (pair? _%l107142%_)
              (let ((_%l107148%_ _%l107142%_))
                (let ((__tmp110927
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l107148%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp110927 _%l2107146%_))
                _%l107148%_)
              _%l2107146%_))))
    (define __append-reverse-until
      (lambda (_%pred107084%_ _%rhead107085%_ _%tail107086%_)
        (let ((_%pred107089%_ _%pred107084%_))
          (let _%loop107098%_ ((_%rhead107100%_ _%rhead107085%_)
                               (_%tail107101%_ _%tail107086%_))
            (let* ((_%rhead107103107112%_ _%rhead107100%_)
                   (_%E107106107116%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead107103107112%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K107110107139%_ (lambda () (values '() _%tail107101%_)))
                    (_%K107107107123%_
                     (lambda (_%r107120%_ _%a107121%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred107089%_ _%a107121%_))
                           (values _%rhead107100%_ _%tail107101%_)
                           (_%loop107098%_
                            _%r107120%_
                            (cons _%a107121%_ _%tail107101%_))))))
                (let ((_%try-match107105107135%_
                       (lambda ()
                         (if (pair? _%rhead107103107112%_)
                             (let ((_%tl107109107128%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead107103107112%_)))
                                   (_%hd107108107126%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead107103107112%_))))
                               (let ((_%a107131%_ _%hd107108107126%_)
                                     (_%r107133%_ _%tl107109107128%_))
                                 (_%K107107107123%_ _%r107133%_ _%a107131%_)))
                             (_%E107106107116%_)))))
                  (if (null? _%rhead107103107112%_)
                      (_%K107110107139%_)
                      (_%try-match107105107135%_)))))))))
    (define append-reverse-until
      (lambda (_%pred99771%_ _%rhead99772%_ _%tail99773%_)
        (if (procedure? _%pred99771%_)
            (let ((_%pred99777%_ _%pred99771%_))
              (__append-reverse-until
               _%pred99777%_
               _%rhead99772%_
               _%tail99773%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@389.29-389.33"
               'contract:
               'procedure?
               'value:
               _%pred99771%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f107033%_ _%lst107034%_)
        (let ((_%f107037%_ _%f107033%_))
          (let _%lp107046%_ ((_%rest107048%_ _%lst107034%_))
            (let* ((_%rest107050107058%_ _%rest107048%_)
                   (_%else107052107066%_ (lambda () '#t))
                   (_%K107054107072%_
                    (lambda (_%rest107069%_ _%x107070%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f107037%_ _%x107070%_))
                          (_%lp107046%_ _%rest107069%_)
                          '#f))))
              (if (pair? _%rest107050107058%_)
                  (let ((_%hd107055107075%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest107050107058%_)))
                        (_%tl107056107077%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest107050107058%_))))
                    (let* ((_%x107080%_ _%hd107055107075%_)
                           (_%rest107082%_ _%tl107056107077%_))
                      (_%K107054107072%_ _%rest107082%_ _%x107080%_)))
                  (_%else107052107066%_)))))))
    (define andmap1
      (lambda (_%f99907%_ _%lst99908%_)
        (if (procedure? _%f99907%_)
            (let ((_%f99912%_ _%f99907%_)) (__andmap1 _%f99912%_ _%lst99908%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@400.16-400.17"
               'contract:
               'procedure?
               'value:
               _%f99907%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f106947%_ _%lst1106948%_ _%lst2106949%_)
        (let ((_%f106952%_ _%f106947%_))
          (let _%lp106961%_ ((_%rest1106963%_ _%lst1106948%_)
                             (_%rest2106964%_ _%lst2106949%_))
            (let* ((_%rest1106966106974%_ _%rest1106963%_)
                   (_%else106968106982%_ (lambda () '#t))
                   (_%K106970107021%_
                    (lambda (_%rest1106985%_ _%x1106986%_)
                      (let* ((_%rest2106987106995%_ _%rest2106964%_)
                             (_%else106989107003%_ (lambda () '#t))
                             (_%K106991107009%_
                              (lambda (_%rest2107006%_ _%x2107007%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f106952%_ _%x1106986%_ _%x2107007%_))
                                    (_%lp106961%_
                                     _%rest1106985%_
                                     _%rest2107006%_)
                                    '#f))))
                        (if (pair? _%rest2106987106995%_)
                            (let ((_%hd106992107012%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2106987106995%_)))
                                  (_%tl106993107014%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2106987106995%_))))
                              (let* ((_%x2107017%_ _%hd106992107012%_)
                                     (_%rest2107019%_ _%tl106993107014%_))
                                (_%K106991107009%_
                                 _%rest2107019%_
                                 _%x2107017%_)))
                            (_%else106989107003%_))))))
              (if (pair? _%rest1106966106974%_)
                  (let ((_%hd106971107024%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1106966106974%_)))
                        (_%tl106972107026%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1106966106974%_))))
                    (let* ((_%x1107029%_ _%hd106971107024%_)
                           (_%rest1107031%_ _%tl106972107026%_))
                      (_%K106970107021%_ _%rest1107031%_ _%x1107029%_)))
                  (_%else106968106982%_)))))))
    (define andmap2
      (lambda (_%f100042%_ _%lst1100043%_ _%lst2100044%_)
        (if (procedure? _%f100042%_)
            (let ((_%f100048%_ _%f100042%_))
              (__andmap2 _%f100048%_ _%lst1100043%_ _%lst2100044%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@409.16-409.17"
               'contract:
               'procedure?
               'value:
               _%f100042%_)
              '#!void))))
    (define andmap
      (lambda _g110928_
        (let ((_g110929_ (let () (declare (not safe)) (##length _g110928_))))
          (cond ((let () (declare (not safe)) (##fx= _g110929_ 2))
                 (apply andmap1 _g110928_))
                ((let () (declare (not safe)) (##fx= _g110929_ 3))
                 (apply andmap2 _g110928_))
                ((let () (declare (not safe)) (##fx>= _g110929_ 3))
                 (apply andmap* _g110928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g110928_))))))
    (define __andmap*
      (lambda (_%f106917%_ . _%rest106918%_)
        (let ((_%f106921%_ _%f106917%_))
          (let _%recur106930%_ ((_%rest106932%_ _%rest106918%_))
            (if (__andmap1 pair? _%rest106932%_)
                (if (let ((__tmp110930 (map car _%rest106932%_)))
                      (declare (not safe))
                      (##apply _%f106921%_ __tmp110930))
                    (_%recur106930%_ (map cdr _%rest106932%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f100178%_ . _%rest100179%_)
        (if (procedure? _%f100178%_)
            (let ((_%f100183%_ _%f100178%_))
              (declare (not safe))
              (##apply __andmap* _%f100183%_ _%rest100179%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@429.16-429.17"
               'contract:
               'procedure?
               'value:
               _%f100178%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f106864%_ _%lst106865%_)
        (let ((_%f106868%_ _%f106864%_))
          (let _%lp106877%_ ((_%rest106879%_ _%lst106865%_))
            (let* ((_%rest106880106888%_ _%rest106879%_)
                   (_%else106882106896%_ (lambda () '#f))
                   (_%K106884106905%_
                    (lambda (_%rest106899%_ _%x106900%_)
                      (let ((_%$e106902%_
                             (let ()
                               (declare (not safe))
                               (_%f106868%_ _%x106900%_))))
                        (if _%$e106902%_
                            _%$e106902%_
                            (_%lp106877%_ _%rest106899%_))))))
              (if (pair? _%rest106880106888%_)
                  (let ((_%hd106885106908%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest106880106888%_)))
                        (_%tl106886106910%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest106880106888%_))))
                    (let* ((_%x106913%_ _%hd106885106908%_)
                           (_%rest106915%_ _%tl106886106910%_))
                      (_%K106884106905%_ _%rest106915%_ _%x106913%_)))
                  (_%else106882106896%_)))))))
    (define ormap1
      (lambda (_%f100313%_ _%lst100314%_)
        (if (procedure? _%f100313%_)
            (let ((_%f100318%_ _%f100313%_))
              (__ormap1 _%f100318%_ _%lst100314%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.15-438.16"
               'contract:
               'procedure?
               'value:
               _%f100313%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f106776%_ _%lst1106777%_ _%lst2106778%_)
        (let ((_%f106781%_ _%f106776%_))
          (let _%lp106790%_ ((_%rest1106792%_ _%lst1106777%_)
                             (_%rest2106793%_ _%lst2106778%_))
            (let* ((_%rest1106794106802%_ _%rest1106792%_)
                   (_%else106796106810%_ (lambda () '#f))
                   (_%K106798106852%_
                    (lambda (_%rest1106813%_ _%x1106814%_)
                      (let* ((_%rest2106815106823%_ _%rest2106793%_)
                             (_%else106817106831%_ (lambda () '#f))
                             (_%K106819106840%_
                              (lambda (_%rest2106834%_ _%x2106835%_)
                                (let ((_%$e106837%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f106781%_
                                          _%x1106814%_
                                          _%x2106835%_))))
                                  (if _%$e106837%_
                                      _%$e106837%_
                                      (_%lp106790%_
                                       _%rest1106813%_
                                       _%rest2106834%_))))))
                        (if (pair? _%rest2106815106823%_)
                            (let ((_%hd106820106843%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2106815106823%_)))
                                  (_%tl106821106845%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2106815106823%_))))
                              (let* ((_%x2106848%_ _%hd106820106843%_)
                                     (_%rest2106850%_ _%tl106821106845%_))
                                (_%K106819106840%_
                                 _%rest2106850%_
                                 _%x2106848%_)))
                            (_%else106817106831%_))))))
              (if (pair? _%rest1106794106802%_)
                  (let ((_%hd106799106855%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1106794106802%_)))
                        (_%tl106800106857%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1106794106802%_))))
                    (let* ((_%x1106860%_ _%hd106799106855%_)
                           (_%rest1106862%_ _%tl106800106857%_))
                      (_%K106798106852%_ _%rest1106862%_ _%x1106860%_)))
                  (_%else106796106810%_)))))))
    (define ormap2
      (lambda (_%f100448%_ _%lst1100449%_ _%lst2100450%_)
        (if (procedure? _%f100448%_)
            (let ((_%f100454%_ _%f100448%_))
              (__ormap2 _%f100454%_ _%lst1100449%_ _%lst2100450%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@445.15-445.16"
               'contract:
               'procedure?
               'value:
               _%f100448%_)
              '#!void))))
    (define ormap
      (lambda _g110931_
        (let ((_g110932_ (let () (declare (not safe)) (##length _g110931_))))
          (cond ((let () (declare (not safe)) (##fx= _g110932_ 2))
                 (apply ormap1 _g110931_))
                ((let () (declare (not safe)) (##fx= _g110932_ 3))
                 (apply ormap2 _g110931_))
                ((let () (declare (not safe)) (##fx>= _g110932_ 3))
                 (apply ormap* _g110931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g110931_))))))
    (define __ormap*
      (lambda (_%f106744%_ . _%rest106745%_)
        (let ((_%f106748%_ _%f106744%_))
          (let _%recur106757%_ ((_%rest106759%_ _%rest106745%_))
            (if (__andmap1 pair? _%rest106759%_)
                (let ((_%$e106761%_
                       (let ((__tmp110933 (map car _%rest106759%_)))
                         (declare (not safe))
                         (##apply _%f106748%_ __tmp110933))))
                  (if _%$e106761%_
                      _%$e106761%_
                      (_%recur106757%_ (map cdr _%rest106759%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f100584%_ . _%rest100585%_)
        (if (procedure? _%f100584%_)
            (let ((_%f100589%_ _%f100584%_))
              (declare (not safe))
              (##apply __ormap* _%f100589%_ _%rest100585%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@463.15-463.16"
               'contract:
               'procedure?
               'value:
               _%f100584%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f106687%_ _%lst106688%_)
        (let ((_%f106691%_ _%f106687%_))
          (let _%recur106700%_ ((_%rest106702%_ _%lst106688%_))
            (let* ((_%rest106704106712%_ _%rest106702%_)
                   (_%else106706106720%_ (lambda () '()))
                   (_%K106708106732%_
                    (lambda (_%rest106723%_ _%x106724%_)
                      (let ((_%$e106726%_
                             (let ()
                               (declare (not safe))
                               (_%f106691%_ _%x106724%_))))
                        (if _%$e106726%_
                            ((lambda (_%r106729%_)
                               (cons _%r106729%_
                                     (_%recur106700%_ _%rest106723%_)))
                             _%$e106726%_)
                            (_%recur106700%_ _%rest106723%_))))))
              (if (pair? _%rest106704106712%_)
                  (let ((_%hd106709106735%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest106704106712%_)))
                        (_%tl106710106737%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest106704106712%_))))
                    (let* ((_%x106740%_ _%hd106709106735%_)
                           (_%rest106742%_ _%tl106710106737%_))
                      (_%K106708106732%_ _%rest106742%_ _%x106740%_)))
                  (_%else106706106720%_)))))))
    (define filter-map1
      (lambda (_%f100719%_ _%lst100720%_)
        (if (procedure? _%f100719%_)
            (let ((_%f100724%_ _%f100719%_))
              (__filter-map1 _%f100724%_ _%lst100720%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@470.20-470.21"
               'contract:
               'procedure?
               'value:
               _%f100719%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f106595%_ _%lst1106596%_ _%lst2106597%_)
        (let ((_%f106600%_ _%f106595%_))
          (let _%recur106609%_ ((_%rest1106611%_ _%lst1106596%_)
                                (_%rest2106612%_ _%lst2106597%_))
            (let* ((_%rest1106614106622%_ _%rest1106611%_)
                   (_%else106616106630%_ (lambda () '()))
                   (_%K106618106675%_
                    (lambda (_%rest1106633%_ _%x1106634%_)
                      (let* ((_%rest2106635106643%_ _%rest2106612%_)
                             (_%else106637106651%_ (lambda () '()))
                             (_%K106639106663%_
                              (lambda (_%rest2106654%_ _%x2106655%_)
                                (let ((_%$e106657%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f106600%_
                                          _%x1106634%_
                                          _%x2106655%_))))
                                  (if _%$e106657%_
                                      ((lambda (_%r106660%_)
                                         (cons _%r106660%_
                                               (_%recur106609%_
                                                _%rest1106633%_
                                                _%rest2106654%_)))
                                       _%$e106657%_)
                                      (_%recur106609%_
                                       _%rest1106633%_
                                       _%rest2106654%_))))))
                        (if (pair? _%rest2106635106643%_)
                            (let ((_%hd106640106666%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2106635106643%_)))
                                  (_%tl106641106668%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2106635106643%_))))
                              (let* ((_%x2106671%_ _%hd106640106666%_)
                                     (_%rest2106673%_ _%tl106641106668%_))
                                (_%K106639106663%_
                                 _%rest2106673%_
                                 _%x2106671%_)))
                            (_%else106637106651%_))))))
              (if (pair? _%rest1106614106622%_)
                  (let ((_%hd106619106678%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1106614106622%_)))
                        (_%tl106620106680%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1106614106622%_))))
                    (let* ((_%x1106683%_ _%hd106619106678%_)
                           (_%rest1106685%_ _%tl106620106680%_))
                      (_%K106618106675%_ _%rest1106685%_ _%x1106683%_)))
                  (_%else106616106630%_)))))))
    (define filter-map2
      (lambda (_%f100854%_ _%lst1100855%_ _%lst2100856%_)
        (if (procedure? _%f100854%_)
            (let ((_%f100860%_ _%f100854%_))
              (__filter-map2 _%f100860%_ _%lst1100855%_ _%lst2100856%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f100854%_)
              '#!void))))
    (define filter-map
      (lambda _g110934_
        (let ((_g110935_ (let () (declare (not safe)) (##length _g110934_))))
          (cond ((let () (declare (not safe)) (##fx= _g110935_ 2))
                 (apply filter-map1 _g110934_))
                ((let () (declare (not safe)) (##fx= _g110935_ 3))
                 (apply filter-map2 _g110934_))
                ((let () (declare (not safe)) (##fx>= _g110935_ 3))
                 (apply filter-map* _g110934_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g110934_))))))
    (define __filter-map*
      (lambda (_%f106559%_ . _%rest106560%_)
        (let ((_%f106563%_ _%f106559%_))
          (let _%recur106572%_ ((_%rest106574%_ _%rest106560%_))
            (if (__andmap1 pair? _%rest106574%_)
                (let ((_%$e106577%_
                       (let ((__tmp110936 (map car _%rest106574%_)))
                         (declare (not safe))
                         (##apply _%f106563%_ __tmp110936))))
                  (if _%$e106577%_
                      ((lambda (_%r106580%_)
                         (cons _%r106580%_
                               (_%recur106572%_ (map cdr _%rest106574%_))))
                       _%$e106577%_)
                      (_%recur106572%_ (map cdr _%rest106574%_))))
                '())))))
    (define filter-map*
      (lambda (_%f100990%_ . _%rest100991%_)
        (if (procedure? _%f100990%_)
            (let ((_%f100995%_ _%f100990%_))
              (declare (not safe))
              (##apply __filter-map* _%f100995%_ _%rest100991%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@503.20-503.21"
               'contract:
               'procedure?
               'value:
               _%f100990%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key106535%_ _%lst106537%_ _%default106539%_)
        (let ((_%$e106542%_
               (if (pair? _%lst106537%_)
                   (assq _%key106535%_ _%lst106537%_)
                   '#f)))
          (if _%$e106542%_
              (cdr _%$e106542%_)
              (if (procedure? _%default106539%_)
                  (_%default106539%_ _%key106535%_)
                  _%default106539%_)))))
    (define agetq__0
      (lambda (_%key106550%_ _%lst106551%_)
        (let ((_%default106553%_ '#f))
          (agetq__% _%key106550%_ _%lst106551%_ _%default106553%_))))
    (define agetq
      (lambda _g110937_
        (let ((_g110938_ (let () (declare (not safe)) (##length _g110937_))))
          (cond ((let () (declare (not safe)) (##fx= _g110938_ 2))
                 (apply agetq__0 _g110937_))
                ((let () (declare (not safe)) (##fx= _g110938_ 3))
                 (apply agetq__% _g110937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g110937_))))))
    (define agetv__%
      (lambda (_%key106510%_ _%lst106512%_ _%default106514%_)
        (let ((_%$e106517%_
               (if (pair? _%lst106512%_)
                   (assv _%key106510%_ _%lst106512%_)
                   '#f)))
          (if _%$e106517%_
              (cdr _%$e106517%_)
              (if (procedure? _%default106514%_)
                  (_%default106514%_ _%key106510%_)
                  _%default106514%_)))))
    (define agetv__0
      (lambda (_%key106525%_ _%lst106526%_)
        (let ((_%default106528%_ '#f))
          (agetv__% _%key106525%_ _%lst106526%_ _%default106528%_))))
    (define agetv
      (lambda _g110939_
        (let ((_g110940_ (let () (declare (not safe)) (##length _g110939_))))
          (cond ((let () (declare (not safe)) (##fx= _g110940_ 2))
                 (apply agetv__0 _g110939_))
                ((let () (declare (not safe)) (##fx= _g110940_ 3))
                 (apply agetv__% _g110939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g110939_))))))
    (define aget__%
      (lambda (_%key106485%_ _%lst106487%_ _%default106489%_)
        (let ((_%$e106492%_
               (if (pair? _%lst106487%_)
                   (assoc _%key106485%_ _%lst106487%_)
                   '#f)))
          (if _%$e106492%_
              (cdr _%$e106492%_)
              (if (procedure? _%default106489%_)
                  (_%default106489%_ _%key106485%_)
                  _%default106489%_)))))
    (define aget__0
      (lambda (_%key106500%_ _%lst106501%_)
        (let ((_%default106503%_ '#f))
          (aget__% _%key106500%_ _%lst106501%_ _%default106503%_))))
    (define aget
      (lambda _g110941_
        (let ((_g110942_ (let () (declare (not safe)) (##length _g110941_))))
          (cond ((let () (declare (not safe)) (##fx= _g110942_ 2))
                 (apply aget__0 _g110941_))
                ((let () (declare (not safe)) (##fx= _g110942_ 3))
                 (apply aget__% _g110941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g110941_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key106414%_ _%lst106416%_ _%default106418%_)
        (let _%lp106421%_ ((_%rest106424%_ _%lst106416%_))
          (let* ((_%rest106426106436%_ _%rest106424%_)
                 (_%else106428106444%_
                  (lambda ()
                    (if (procedure? _%default106418%_)
                        (_%default106418%_ _%key106414%_)
                        _%default106418%_)))
                 (_%K106430106453%_
                  (lambda (_%rest106447%_ _%v106448%_ _%k106450%_)
                    (if (eq? _%k106450%_ _%key106414%_)
                        _%v106448%_
                        (_%lp106421%_ _%rest106447%_)))))
            (if (pair? _%rest106426106436%_)
                (let ((_%hd106431106456%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106426106436%_)))
                      (_%tl106432106458%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106426106436%_))))
                  (let ((_%k106461%_ _%hd106431106456%_))
                    (if (pair? _%tl106432106458%_)
                        (let ((_%hd106433106463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl106432106458%_)))
                              (_%tl106434106465%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl106432106458%_))))
                          (let* ((_%v106468%_ _%hd106433106463%_)
                                 (_%rest106470%_ _%tl106434106465%_))
                            (_%K106430106453%_
                             _%rest106470%_
                             _%v106468%_
                             _%k106461%_)))
                        (_%else106428106444%_))))
                (_%else106428106444%_))))))
    (define pgetq__0
      (lambda (_%key106475%_ _%lst106476%_)
        (let ((_%default106478%_ '#f))
          (pgetq__% _%key106475%_ _%lst106476%_ _%default106478%_))))
    (define pgetq
      (lambda _g110943_
        (let ((_g110944_ (let () (declare (not safe)) (##length _g110943_))))
          (cond ((let () (declare (not safe)) (##fx= _g110944_ 2))
                 (apply pgetq__0 _g110943_))
                ((let () (declare (not safe)) (##fx= _g110944_ 3))
                 (apply pgetq__% _g110943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g110943_))))))
    (define pgetv__%
      (lambda (_%key106343%_ _%lst106345%_ _%default106347%_)
        (let _%lp106350%_ ((_%rest106353%_ _%lst106345%_))
          (let* ((_%rest106355106365%_ _%rest106353%_)
                 (_%else106357106373%_
                  (lambda ()
                    (if (procedure? _%default106347%_)
                        (_%default106347%_ _%key106343%_)
                        _%default106347%_)))
                 (_%K106359106382%_
                  (lambda (_%rest106376%_ _%v106377%_ _%k106379%_)
                    (if (eqv? _%k106379%_ _%key106343%_)
                        _%v106377%_
                        (_%lp106350%_ _%rest106376%_)))))
            (if (pair? _%rest106355106365%_)
                (let ((_%hd106360106385%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106355106365%_)))
                      (_%tl106361106387%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106355106365%_))))
                  (let ((_%k106390%_ _%hd106360106385%_))
                    (if (pair? _%tl106361106387%_)
                        (let ((_%hd106362106392%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl106361106387%_)))
                              (_%tl106363106394%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl106361106387%_))))
                          (let* ((_%v106397%_ _%hd106362106392%_)
                                 (_%rest106399%_ _%tl106363106394%_))
                            (_%K106359106382%_
                             _%rest106399%_
                             _%v106397%_
                             _%k106390%_)))
                        (_%else106357106373%_))))
                (_%else106357106373%_))))))
    (define pgetv__0
      (lambda (_%key106404%_ _%lst106405%_)
        (let ((_%default106407%_ '#f))
          (pgetv__% _%key106404%_ _%lst106405%_ _%default106407%_))))
    (define pgetv
      (lambda _g110945_
        (let ((_g110946_ (let () (declare (not safe)) (##length _g110945_))))
          (cond ((let () (declare (not safe)) (##fx= _g110946_ 2))
                 (apply pgetv__0 _g110945_))
                ((let () (declare (not safe)) (##fx= _g110946_ 3))
                 (apply pgetv__% _g110945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g110945_))))))
    (define pget__%
      (lambda (_%key106272%_ _%lst106274%_ _%default106276%_)
        (let _%lp106279%_ ((_%rest106282%_ _%lst106274%_))
          (let* ((_%rest106284106294%_ _%rest106282%_)
                 (_%else106286106302%_
                  (lambda ()
                    (if (procedure? _%default106276%_)
                        (_%default106276%_ _%key106272%_)
                        _%default106276%_)))
                 (_%K106288106311%_
                  (lambda (_%rest106305%_ _%v106306%_ _%k106308%_)
                    (if (equal? _%k106308%_ _%key106272%_)
                        _%v106306%_
                        (_%lp106279%_ _%rest106305%_)))))
            (if (pair? _%rest106284106294%_)
                (let ((_%hd106289106314%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106284106294%_)))
                      (_%tl106290106316%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106284106294%_))))
                  (let ((_%k106319%_ _%hd106289106314%_))
                    (if (pair? _%tl106290106316%_)
                        (let ((_%hd106291106321%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl106290106316%_)))
                              (_%tl106292106323%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl106290106316%_))))
                          (let* ((_%v106326%_ _%hd106291106321%_)
                                 (_%rest106328%_ _%tl106292106323%_))
                            (_%K106288106311%_
                             _%rest106328%_
                             _%v106326%_
                             _%k106319%_)))
                        (_%else106286106302%_))))
                (_%else106286106302%_))))))
    (define pget__0
      (lambda (_%key106333%_ _%lst106334%_)
        (let ((_%default106336%_ '#f))
          (pget__% _%key106333%_ _%lst106334%_ _%default106336%_))))
    (define pget
      (lambda _g110947_
        (let ((_g110948_ (let () (declare (not safe)) (##length _g110947_))))
          (cond ((let () (declare (not safe)) (##fx= _g110948_ 2))
                 (apply pget__0 _g110947_))
                ((let () (declare (not safe)) (##fx= _g110948_ 3))
                 (apply pget__% _g110947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g110947_))))))
    (define __find
      (lambda (_%pred106254%_ _%lst106255%_)
        (let* ((_%pred106258%_ _%pred106254%_)
               (_%$e106267%_ (__memf _%pred106258%_ _%lst106255%_)))
          (if _%$e106267%_
              (let () (declare (not safe)) (##car _%$e106267%_))
              '#f))))
    (define find
      (lambda (_%pred101287%_ _%lst101288%_)
        (if (procedure? _%pred101287%_)
            (let ((_%pred101292%_ _%pred101287%_))
              (__find _%pred101292%_ _%lst101288%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@549.13-549.17"
               'contract:
               'procedure?
               'value:
               _%pred101287%_)
              '#!void))))
    (define __memf
      (lambda (_%proc106204%_ _%lst106205%_)
        (let ((_%proc106208%_ _%proc106204%_))
          (let _%lp106217%_ ((_%rest106219%_ _%lst106205%_))
            (let* ((_%rest106220106228%_ _%rest106219%_)
                   (_%else106222106236%_ (lambda () '#f))
                   (_%K106224106242%_
                    (lambda (_%tl106239%_ _%hd106240%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc106208%_ _%hd106240%_))
                          _%rest106219%_
                          (_%lp106217%_ _%tl106239%_)))))
              (if (pair? _%rest106220106228%_)
                  (let ((_%hd106225106245%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest106220106228%_)))
                        (_%tl106226106247%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest106220106228%_))))
                    (let* ((_%hd106250%_ _%hd106225106245%_)
                           (_%tl106252%_ _%tl106226106247%_))
                      (_%K106224106242%_ _%tl106252%_ _%hd106250%_)))
                  (_%else106222106236%_)))))))
    (define memf
      (lambda (_%proc101422%_ _%lst101423%_)
        (if (procedure? _%proc101422%_)
            (let ((_%proc101427%_ _%proc101422%_))
              (__memf _%proc101427%_ _%lst101423%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc101422%_)
              '#!void))))
    (define remove1
      (lambda (_%el106157%_ _%lst106159%_)
        (let _%lp106162%_ ((_%rest106165%_ _%lst106159%_) (_%r106167%_ '()))
          (let* ((_%rest106169106177%_ _%rest106165%_)
                 (_%else106171106185%_ (lambda () _%lst106159%_))
                 (_%K106173106192%_
                  (lambda (_%rest106188%_ _%hd106189%_)
                    (if (equal? _%el106157%_ _%hd106189%_)
                        (__foldl1 cons _%rest106188%_ _%r106167%_)
                        (_%lp106162%_
                         _%rest106188%_
                         (cons _%hd106189%_ _%r106167%_))))))
            (if (pair? _%rest106169106177%_)
                (let ((_%hd106174106195%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106169106177%_)))
                      (_%tl106175106197%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106169106177%_))))
                  (let* ((_%hd106200%_ _%hd106174106195%_)
                         (_%rest106202%_ _%tl106175106197%_))
                    (_%K106173106192%_ _%rest106202%_ _%hd106200%_)))
                (_%else106171106185%_))))))
    (define remv1
      (lambda (_%el106110%_ _%lst106112%_)
        (let _%lp106115%_ ((_%rest106118%_ _%lst106112%_) (_%r106120%_ '()))
          (let* ((_%rest106122106130%_ _%rest106118%_)
                 (_%else106124106138%_ (lambda () _%lst106112%_))
                 (_%K106126106145%_
                  (lambda (_%rest106141%_ _%hd106142%_)
                    (if (eqv? _%el106110%_ _%hd106142%_)
                        (__foldl1 cons _%rest106141%_ _%r106120%_)
                        (_%lp106115%_
                         _%rest106141%_
                         (cons _%hd106142%_ _%r106120%_))))))
            (if (pair? _%rest106122106130%_)
                (let ((_%hd106127106148%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106122106130%_)))
                      (_%tl106128106150%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106122106130%_))))
                  (let* ((_%hd106153%_ _%hd106127106148%_)
                         (_%rest106155%_ _%tl106128106150%_))
                    (_%K106126106145%_ _%rest106155%_ _%hd106153%_)))
                (_%else106124106138%_))))))
    (define remq1
      (lambda (_%el106063%_ _%lst106065%_)
        (let _%lp106068%_ ((_%rest106071%_ _%lst106065%_) (_%r106073%_ '()))
          (let* ((_%rest106075106083%_ _%rest106071%_)
                 (_%else106077106091%_ (lambda () _%lst106065%_))
                 (_%K106079106098%_
                  (lambda (_%rest106094%_ _%hd106095%_)
                    (if (eq? _%el106063%_ _%hd106095%_)
                        (__foldl1 cons _%rest106094%_ _%r106073%_)
                        (_%lp106068%_
                         _%rest106094%_
                         (cons _%hd106095%_ _%r106073%_))))))
            (if (pair? _%rest106075106083%_)
                (let ((_%hd106080106101%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106075106083%_)))
                      (_%tl106081106103%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106075106083%_))))
                  (let* ((_%hd106106%_ _%hd106080106101%_)
                         (_%rest106108%_ _%tl106081106103%_))
                    (_%K106079106098%_ _%rest106108%_ _%hd106106%_)))
                (_%else106077106091%_))))))
    (define __remf
      (lambda (_%proc106012%_ _%lst106013%_)
        (let ((_%proc106016%_ _%proc106012%_))
          (let _%lp106025%_ ((_%rest106027%_ _%lst106013%_) (_%r106028%_ '()))
            (let* ((_%rest106029106037%_ _%rest106027%_)
                   (_%else106031106045%_ (lambda () _%lst106013%_))
                   (_%K106033106051%_
                    (lambda (_%rest106048%_ _%hd106049%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc106016%_ _%hd106049%_))
                          (__foldl1 cons _%rest106048%_ _%r106028%_)
                          (_%lp106025%_
                           _%rest106048%_
                           (cons _%hd106049%_ _%r106028%_))))))
              (if (pair? _%rest106029106037%_)
                  (let ((_%hd106034106054%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest106029106037%_)))
                        (_%tl106035106056%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest106029106037%_))))
                    (let* ((_%hd106059%_ _%hd106034106054%_)
                           (_%rest106061%_ _%tl106035106056%_))
                      (_%K106033106051%_ _%rest106061%_ _%hd106059%_)))
                  (_%else106031106045%_)))))))
    (define remf
      (lambda (_%proc101638%_ _%lst101639%_)
        (if (procedure? _%proc101638%_)
            (let ((_%proc101643%_ _%proc101638%_))
              (__remf _%proc101643%_ _%lst101639%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@576.13-576.17"
               'contract:
               'procedure?
               'value:
               _%proc101638%_)
              '#!void))))
    (define __1+
      (lambda (_%x106000%_)
        (let ((_%x106003%_ _%x106000%_)) (+ _%x106003%_ '1))))
    (define 1+
      (lambda (_%x101773%_)
        (if (number? _%x101773%_)
            (let ((_%x101777%_ _%x101773%_)) (__1+ _%x101777%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@585.11-585.12"
               'contract:
               'number?
               'value:
               _%x101773%_)
              '#!void))))
    (define __1-
      (lambda (_%x105988%_)
        (let ((_%x105991%_ _%x105988%_)) (- _%x105991%_ '1))))
    (define 1-
      (lambda (_%x101907%_)
        (if (number? _%x101907%_)
            (let ((_%x101911%_ _%x101907%_)) (__1- _%x101911%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@593.11-593.12"
               'contract:
               'number?
               'value:
               _%x101907%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x105976%_)
        (let ((_%x105979%_ _%x105976%_))
          (declare (not safe))
          (##fx+ _%x105979%_ '1))))
    (define fx1+
      (lambda (_%x102041%_)
        (if (fixnum? _%x102041%_)
            (let ((_%x102045%_ _%x102041%_)) (__fx1+ _%x102045%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@601.13-601.14"
               'contract:
               'fixnum?
               'value:
               _%x102041%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x105964%_)
        (let ((_%x105967%_ _%x105964%_))
          (declare (not safe))
          (##fx- _%x105967%_ '1))))
    (define fx1-
      (lambda (_%x102175%_)
        (if (fixnum? _%x102175%_)
            (let ((_%x102179%_ _%x102175%_)) (__fx1- _%x102179%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@609.13-609.14"
               'contract:
               'fixnum?
               'value:
               _%x102175%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x105961%_)
        (if (fixnum? _%x105961%_)
            (let () (declare (not safe)) (##fx>= _%x105961%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x105958%_)
        (if (fixnum? _%x105958%_)
            (let () (declare (not safe)) (##fx> _%x105958%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x105955%_)
        (let () (declare (not safe)) (##fx= _%x105955%_ '0))))
    (define fx<0?
      (lambda (_%x105952%_)
        (if (fixnum? _%x105952%_)
            (let () (declare (not safe)) (##fx< _%x105952%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x105949%_)
        (if (fixnum? _%x105949%_)
            (let () (declare (not safe)) (##fx<= _%x105949%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x105946%_)
        (if (symbol? _%x105946%_) (not (uninterned-symbol? _%x105946%_)) '#f)))
    (define __display-as-string
      (lambda (_%x105903%_ _%port105904%_)
        (let ((_%port105907%_ _%port105904%_))
          (if (or (string? _%x105903%_)
                  (symbol? _%x105903%_)
                  (keyword? _%x105903%_)
                  (number? _%x105903%_)
                  (char? _%x105903%_))
              (display _%x105903%_ _%port105907%_)
              (if (pair? _%x105903%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x105903%_))
                     _%port105907%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x105903%_))
                     _%port105907%_))
                  (if (vector? _%x105903%_)
                      (vector-for-each
                       (lambda (_%g105930105932%_)
                         (__display-as-string
                          _%g105930105932%_
                          _%port105907%_))
                       _%x105903%_)
                      (if (or (null? _%x105903%_)
                              (eq? _%x105903%_ '#!void)
                              (eof-object? _%x105903%_)
                              (boolean? _%x105903%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x105903%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x102309%_ _%port102310%_)
        (if (output-port? _%port102310%_)
            (let ((_%port102314%_ _%port102310%_))
              (__display-as-string _%x102309%_ _%port102314%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@639.28-639.32"
               'contract:
               'output-port?
               'value:
               _%port102310%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x105886%_)
        (if (string? _%x105886%_)
            _%x105886%_
            (if (symbol? _%x105886%_)
                (let () (declare (not safe)) (##symbol->string _%x105886%_))
                (if (keyword? _%x105886%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x105886%_))
                    (if (number? _%x105886%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x105886%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g105892105894%_)
                           (__display-as-string
                            _%x105886%_
                            _%g105892105894%_)))))))))
    (define as-string__1
      (lambda _%args105897%_
        (call-with-output-string
         '()
         (lambda (_%g105898105900%_)
           (__display-as-string _%args105897%_ _%g105898105900%_)))))
    (define as-string
      (lambda _g110949_
        (let ((_g110950_ (let () (declare (not safe)) (##length _g110949_))))
          (cond ((let () (declare (not safe)) (##fx= _g110950_ 1))
                 (apply as-string__0 _g110949_))
                (#t
                 (apply (lambda _%args105897%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args105897%_)))
                        _g110949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g110949_))))))
    (define make-symbol__0
      (lambda (_%x105882%_)
        (if (interned-symbol? _%x105882%_)
            _%x105882%_
            (let ((__tmp110951 (as-string__0 _%x105882%_)))
              (declare (not safe))
              (##string->symbol __tmp110951)))))
    (define make-symbol__1
      (lambda _%args105884%_
        (let ((__tmp110952
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args105884%_))))
          (declare (not safe))
          (##string->symbol __tmp110952))))
    (define make-symbol
      (lambda _g110953_
        (let ((_g110954_ (let () (declare (not safe)) (##length _g110953_))))
          (cond ((let () (declare (not safe)) (##fx= _g110954_ 1))
                 (apply make-symbol__0 _g110953_))
                (#t
                 (apply (lambda _%args105884%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args105884%_)))
                        _g110953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g110953_))))))
    (define make-keyword__0
      (lambda (_%x105878%_)
        (if (interned-keyword? _%x105878%_)
            _%x105878%_
            (let ((__tmp110955 (as-string__0 _%x105878%_)))
              (declare (not safe))
              (##string->keyword __tmp110955)))))
    (define make-keyword__1
      (lambda _%args105880%_
        (let ((__tmp110956
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args105880%_))))
          (declare (not safe))
          (##string->keyword __tmp110956))))
    (define make-keyword
      (lambda _g110957_
        (let ((_g110958_ (let () (declare (not safe)) (##length _g110957_))))
          (cond ((let () (declare (not safe)) (##fx= _g110958_ 1))
                 (apply make-keyword__0 _g110957_))
                (#t
                 (apply (lambda _%args105880%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args105880%_)))
                        _g110957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g110957_))))))
    (define interned-keyword?
      (lambda (_%x105875%_)
        (if (keyword? _%x105875%_)
            (not (uninterned-keyword? _%x105875%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym105863%_)
        (let ((_%sym105866%_ _%sym105863%_))
          (if (uninterned-symbol? _%sym105866%_)
              (let ((__tmp110959
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym105866%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp110959))
              (let ((__tmp110960
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym105866%_))))
                (declare (not safe))
                (##string->keyword __tmp110960))))))
    (define symbol->keyword
      (lambda (_%sym102444%_)
        (if (symbol? _%sym102444%_)
            (let ((_%sym102448%_ _%sym102444%_))
              (__symbol->keyword _%sym102448%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@682.24-682.27"
               'contract:
               'symbol?
               'value:
               _%sym102444%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym105851%_)
        (let ((_%sym105854%_ _%sym105851%_))
          (if (uninterned-keyword? _%sym105854%_)
              (let ((__tmp110961
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym105854%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp110961))
              (let ((__tmp110962
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym105854%_))))
                (declare (not safe))
                (##string->symbol __tmp110962))))))
    (define keyword->symbol
      (lambda (_%sym102578%_)
        (if (keyword? _%sym102578%_)
            (let ((_%sym102582%_ _%sym102578%_))
              (__keyword->symbol _%sym102582%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@688.24-688.27"
               'contract:
               'keyword?
               'value:
               _%sym102578%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr105811%_ _%enc105812%_)
        (let* ((_%bstr105815%_ _%bstr105811%_) (_%enc105823%_ _%enc105812%_))
          (if (eq? _%enc105823%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr105815%_))
              (let* ((_%in105832%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc105823%_
                                   (cons 'init: (cons _%bstr105815%_ '()))))))
                     (_%len105834%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr105815%_)))
                     (_%out105836%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len105834%_)))
                     (_%n105838%_
                      (read-substring
                       _%out105836%_
                       '0
                       _%len105834%_
                       _%in105832%_)))
                (string-shrink! _%out105836%_ _%n105838%_)
                _%out105836%_)))))
    (define __bytes->string__0
      (lambda (_%bstr105844%_)
        (let ((_%enc105846%_ 'UTF-8))
          (__bytes->string__% _%bstr105844%_ _%enc105846%_))))
    (define __bytes->string
      (lambda _g110963_
        (let ((_g110964_ (let () (declare (not safe)) (##length _g110963_))))
          (cond ((let () (declare (not safe)) (##fx= _g110964_ 1))
                 (apply __bytes->string__0 _g110963_))
                ((let () (declare (not safe)) (##fx= _g110964_ 2))
                 (apply __bytes->string__% _g110963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g110963_))))))
    (define bytes->string__%
      (lambda (_%bstr102713%_ _%enc102714%_)
        (if (u8vector? _%bstr102713%_)
            (let ((_%bstr102718%_ _%bstr102713%_))
              (if (symbol? _%enc102714%_)
                  (let ((_%enc102728%_ _%enc102714%_))
                    (__bytes->string__% _%bstr102718%_ _%enc102728%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.25-695.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc102714%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.22-694.26"
               'contract:
               'u8vector?
               'value:
               _%bstr102713%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr102741%_)
        (let ((_%enc102743%_ 'UTF-8))
          (bytes->string__% _%bstr102741%_ _%enc102743%_))))
    (define bytes->string
      (lambda _g110965_
        (let ((_g110966_ (let () (declare (not safe)) (##length _g110965_))))
          (cond ((let () (declare (not safe)) (##fx= _g110966_ 1))
                 (apply bytes->string__0 _g110965_))
                ((let () (declare (not safe)) (##fx= _g110966_ 2))
                 (apply bytes->string__% _g110965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g110965_))))))
    (define __string->bytes__%
      (lambda (_%str105779%_ _%enc105780%_)
        (let* ((_%str105783%_ _%str105779%_) (_%enc105791%_ _%enc105780%_))
          (if (eq? _%enc105791%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str105783%_))
              (__substring->bytes__%
               _%str105783%_
               '0
               (let () (declare (not safe)) (##string-length _%str105783%_))
               _%enc105791%_)))))
    (define __string->bytes__0
      (lambda (_%str105803%_)
        (let ((_%enc105805%_ 'UTF-8))
          (__string->bytes__% _%str105803%_ _%enc105805%_))))
    (define __string->bytes
      (lambda _g110967_
        (let ((_g110968_ (let () (declare (not safe)) (##length _g110967_))))
          (cond ((let () (declare (not safe)) (##fx= _g110968_ 1))
                 (apply __string->bytes__0 _g110967_))
                ((let () (declare (not safe)) (##fx= _g110968_ 2))
                 (apply __string->bytes__% _g110967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g110967_))))))
    (define string->bytes__%
      (lambda (_%str102869%_ _%enc102870%_)
        (if (string? _%str102869%_)
            (let ((_%str102874%_ _%str102869%_))
              (if (symbol? _%enc102870%_)
                  (let ((_%enc102884%_ _%enc102870%_))
                    (__string->bytes__% _%str102874%_ _%enc102884%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@707.25-707.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc102870%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@706.22-706.25"
               'contract:
               'string?
               'value:
               _%str102869%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str102897%_)
        (let ((_%enc102899%_ 'UTF-8))
          (string->bytes__% _%str102897%_ _%enc102899%_))))
    (define string->bytes
      (lambda _g110969_
        (let ((_g110970_ (let () (declare (not safe)) (##length _g110969_))))
          (cond ((let () (declare (not safe)) (##fx= _g110970_ 1))
                 (apply string->bytes__0 _g110969_))
                ((let () (declare (not safe)) (##fx= _g110970_ 2))
                 (apply string->bytes__% _g110969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g110969_))))))
    (define __substring->bytes__%
      (lambda (_%str105731%_ _%start105732%_ _%end105733%_ _%enc105734%_)
        (let* ((_%str105737%_ _%str105731%_)
               (_%start105745%_ _%start105732%_)
               (_%end105753%_ _%end105733%_))
          (if (eq? _%enc105734%_ 'UTF-8)
              (string->utf8 _%str105737%_ _%start105745%_ _%end105753%_)
              (let ((_%out105762%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc105734%_ '())))))
                (write-substring
                 _%str105737%_
                 _%start105745%_
                 _%end105753%_
                 _%out105762%_)
                (get-output-u8vector _%out105762%_))))))
    (define __substring->bytes__0
      (lambda (_%str105767%_ _%start105768%_ _%end105769%_)
        (let ((_%enc105771%_ 'UTF-8))
          (__substring->bytes__%
           _%str105767%_
           _%start105768%_
           _%end105769%_
           _%enc105771%_))))
    (define __substring->bytes
      (lambda _g110971_
        (let ((_g110972_ (let () (declare (not safe)) (##length _g110971_))))
          (cond ((let () (declare (not safe)) (##fx= _g110972_ 3))
                 (apply __substring->bytes__0 _g110971_))
                ((let () (declare (not safe)) (##fx= _g110972_ 4))
                 (apply __substring->bytes__% _g110971_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g110971_))))))
    (define substring->bytes__%
      (lambda (_%str103025%_ _%start103026%_ _%end103027%_ _%enc103028%_)
        (if (string? _%str103025%_)
            (let ((_%str103032%_ _%str103025%_))
              (if (nonnegative-fixnum? _%start103026%_)
                  (let ((_%start103042%_ _%start103026%_))
                    (if (nonnegative-fixnum? _%end103027%_)
                        (let ((_%end103052%_ _%end103027%_))
                          (__substring->bytes__%
                           _%str103032%_
                           _%start103042%_
                           _%end103052%_
                           _%enc103028%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@715.25-715.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end103027%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@714.25-714.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start103026%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@713.25-713.28"
               'contract:
               'string?
               'value:
               _%str103025%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str103065%_ _%start103066%_ _%end103067%_)
        (let ((_%enc103069%_ 'UTF-8))
          (substring->bytes__%
           _%str103065%_
           _%start103066%_
           _%end103067%_
           _%enc103069%_))))
    (define substring->bytes
      (lambda _g110973_
        (let ((_g110974_ (let () (declare (not safe)) (##length _g110973_))))
          (cond ((let () (declare (not safe)) (##fx= _g110974_ 3))
                 (apply substring->bytes__0 _g110973_))
                ((let () (declare (not safe)) (##fx= _g110974_ 4))
                 (apply substring->bytes__% _g110973_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g110973_))))))
    (define __string-empty?
      (lambda (_%str105718%_)
        (let* ((_%str105721%_ _%str105718%_)
               (__tmp110975
                (let () (declare (not safe)) (##string-length _%str105721%_))))
          (declare (not safe))
          (##fxzero? __tmp110975))))
    (define string-empty?
      (lambda (_%str103196%_)
        (if (string? _%str103196%_)
            (let ((_%str103200%_ _%str103196%_))
              (__string-empty? _%str103200%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@724.22-724.25"
               'contract:
               'string?
               'value:
               _%str103196%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str105658%_ _%char105659%_ _%start105660%_)
        (let* ((_%str105663%_ _%str105658%_)
               (_%char105671%_ _%char105659%_)
               (_%start105679%_ _%start105660%_)
               (_%len105688%_
                (let () (declare (not safe)) (##string-length _%str105663%_))))
          (let _%lp105690%_ ((_%k105692%_ _%start105679%_))
            (let ((_%k105694%_ _%k105692%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k105694%_ _%len105688%_))
                  (if (eq? _%char105671%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str105663%_ _%k105694%_)))
                      _%k105694%_
                      (_%lp105690%_
                       (let () (declare (not safe)) (##fx+ _%k105694%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str105709%_ _%char105710%_)
        (let ((_%start105712%_ '0))
          (__string-index__% _%str105709%_ _%char105710%_ _%start105712%_))))
    (define __string-index
      (lambda _g110976_
        (let ((_g110977_ (let () (declare (not safe)) (##length _g110976_))))
          (cond ((let () (declare (not safe)) (##fx= _g110977_ 2))
                 (apply __string-index__0 _g110976_))
                ((let () (declare (not safe)) (##fx= _g110977_ 3))
                 (apply __string-index__% _g110976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g110976_))))))
    (define string-index__%
      (lambda (_%str103331%_ _%char103332%_ _%start103333%_)
        (if (string? _%str103331%_)
            (let ((_%str103337%_ _%str103331%_))
              (if (char? _%char103332%_)
                  (let ((_%char103347%_ _%char103332%_))
                    (if (nonnegative-fixnum? _%start103333%_)
                        (let ((_%start103357%_ _%start103333%_))
                          (__string-index__%
                           _%str103337%_
                           _%char103347%_
                           _%start103357%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@730.21-730.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start103333%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.21-729.25"
                     'contract:
                     'char?
                     'value:
                     _%char103332%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@728.21-728.24"
               'contract:
               'string?
               'value:
               _%str103331%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str103370%_ _%char103371%_)
        (let ((_%start103373%_ '0))
          (string-index__% _%str103370%_ _%char103371%_ _%start103373%_))))
    (define string-index
      (lambda _g110978_
        (let ((_g110979_ (let () (declare (not safe)) (##length _g110978_))))
          (cond ((let () (declare (not safe)) (##fx= _g110979_ 2))
                 (apply string-index__0 _g110978_))
                ((let () (declare (not safe)) (##fx= _g110979_ 3))
                 (apply string-index__% _g110978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g110978_))))))
    (define __string-rindex__%
      (lambda (_%str105600%_ _%char105601%_ _%start105602%_)
        (let* ((_%str105605%_ _%str105600%_)
               (_%char105613%_ _%char105601%_)
               (_%len105622%_
                (let () (declare (not safe)) (##string-length _%str105605%_)))
               (_%start105624%_
                (if (fixnum? _%start105602%_)
                    _%start105602%_
                    (let () (declare (not safe)) (##fx- _%len105622%_ '1)))))
          (let _%lp105627%_ ((_%k105629%_ _%start105624%_))
            (let ((_%k105631%_ _%k105629%_))
              (if (let () (declare (not safe)) (##fx>= _%k105631%_ '0))
                  (if (eq? _%char105613%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str105605%_ _%k105631%_)))
                      _%k105631%_
                      (_%lp105627%_
                       (let () (declare (not safe)) (##fx- _%k105631%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str105648%_ _%char105649%_)
        (let ((_%start105651%_ '#f))
          (__string-rindex__% _%str105648%_ _%char105649%_ _%start105651%_))))
    (define __string-rindex
      (lambda _g110980_
        (let ((_g110981_ (let () (declare (not safe)) (##length _g110980_))))
          (cond ((let () (declare (not safe)) (##fx= _g110981_ 2))
                 (apply __string-rindex__0 _g110980_))
                ((let () (declare (not safe)) (##fx= _g110981_ 3))
                 (apply __string-rindex__% _g110980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g110980_))))))
    (define string-rindex__%
      (lambda (_%str103500%_ _%char103501%_ _%start103502%_)
        (if (string? _%str103500%_)
            (let ((_%str103506%_ _%str103500%_))
              (if (char? _%char103501%_)
                  (let ((_%char103516%_ _%char103501%_))
                    (__string-rindex__%
                     _%str103506%_
                     _%char103516%_
                     _%start103502%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@740.25-740.29"
                     'contract:
                     'char?
                     'value:
                     _%char103501%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@739.22-739.25"
               'contract:
               'string?
               'value:
               _%str103500%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str103529%_ _%char103530%_)
        (let ((_%start103532%_ '#f))
          (string-rindex__% _%str103529%_ _%char103530%_ _%start103532%_))))
    (define string-rindex
      (lambda _g110982_
        (let ((_g110983_ (let () (declare (not safe)) (##length _g110982_))))
          (cond ((let () (declare (not safe)) (##fx= _g110983_ 2))
                 (apply string-rindex__0 _g110982_))
                ((let () (declare (not safe)) (##fx= _g110983_ 3))
                 (apply string-rindex__% _g110982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g110982_))))))
    (define __string-split
      (lambda (_%str105540%_ _%char105541%_)
        (let* ((_%str105544%_ _%str105540%_)
               (_%char105552%_ _%char105541%_)
               (_%len105561%_
                (let () (declare (not safe)) (##string-length _%str105544%_))))
          (let _%lp105563%_ ((_%start105565%_ '0) (_%r105566%_ '()))
            (let* ((_%start105569%_ _%start105565%_)
                   (_%$e105582%_
                    (__string-index__%
                     _%str105544%_
                     _%char105552%_
                     _%start105569%_)))
              (if _%$e105582%_
                  ((lambda (_%end105585%_)
                     (let ((_%end105587%_ _%end105585%_))
                       (_%lp105563%_
                        (let () (declare (not safe)) (##fx+ _%end105587%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str105544%_
                                 _%start105569%_
                                 _%end105587%_))
                              _%r105566%_))))
                   _%$e105582%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start105569%_ _%len105561%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str105544%_
                                _%start105569%_
                                _%len105561%_)))
                       _%r105566%_)
                      (reverse! _%r105566%_))))))))
    (define string-split
      (lambda (_%str103658%_ _%char103659%_)
        (if (string? _%str103658%_)
            (let ((_%str103663%_ _%str103658%_))
              (if (char? _%char103659%_)
                  (let ((_%char103673%_ _%char103659%_))
                    (__string-split _%str103663%_ _%char103673%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@751.37-751.41"
                     'contract:
                     'char?
                     'value:
                     _%char103659%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@751.21-751.24"
               'contract:
               'string?
               'value:
               _%str103658%_)
              '#!void))))
    (define string-join
      (lambda (_%strs105390%_ _%join105391%_)
        (letrec ((_%join-length105394%_
                  (lambda (_%strs105478%_ _%jlen105479%_)
                    (let _%lp105481%_ ((_%rest105483%_ _%strs105478%_)
                                       (_%len105484%_ '0))
                      (let* ((_%len105486%_ _%len105484%_)
                             (_%rest105494105502%_ _%rest105483%_)
                             (_%else105496105510%_ (lambda () '0))
                             (_%K105498105528%_
                              (lambda (_%rest105513%_ _%hd105514%_)
                                (if (string? _%hd105514%_)
                                    (let ((_%hd105516%_ _%hd105514%_))
                                      (if (pair? _%rest105513%_)
                                          (_%lp105481%_
                                           _%rest105513%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd105516%_))
                                                _%jlen105479%_
                                                _%len105486%_))
                                          (let ((__tmp110984
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd105516%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp110984
                                                   _%len105486%_))))
                                    (error '"expected string" _%hd105514%_)))))
                        (if (pair? _%rest105494105502%_)
                            (let ((_%hd105499105531%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest105494105502%_)))
                                  (_%tl105500105533%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest105494105502%_))))
                              (let* ((_%hd105536%_ _%hd105499105531%_)
                                     (_%rest105538%_ _%tl105500105533%_))
                                (_%K105498105528%_
                                 _%rest105538%_
                                 _%hd105536%_)))
                            (_%else105496105510%_)))))))
          (let* ((_%join105399%_
                  (if (char? _%join105391%_)
                      (let () (declare (not safe)) (##string _%join105391%_))
                      (if (string? _%join105391%_)
                          _%join105391%_
                          (error '"expected string or char" _%join105391%_))))
                 (_%jlen105401%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join105399%_)))
                 (_%olen105403%_
                  (_%join-length105394%_ _%strs105390%_ _%jlen105401%_))
                 (_%ostr105405%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen105403%_))))
            (let _%lp105408%_ ((_%rest105410%_ _%strs105390%_)
                               (_%k105411%_ '0))
              (let* ((_%k105414%_ _%k105411%_)
                     (_%rest105430105438%_ _%rest105410%_)
                     (_%else105432105446%_ (lambda () '""))
                     (_%K105434105466%_
                      (lambda (_%rest105449%_ _%hd105450%_)
                        (let* ((_%hd105452%_ _%hd105450%_)
                               (_%hdlen105464%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd105452%_))))
                          (if (pair? _%rest105449%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd105452%_
                                   '0
                                   _%hdlen105464%_
                                   _%ostr105405%_
                                   _%k105414%_))
                                (let ((__tmp110985
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k105414%_ _%hdlen105464%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join105399%_
                                   '0
                                   _%jlen105401%_
                                   _%ostr105405%_
                                   __tmp110985))
                                (_%lp105408%_
                                 _%rest105449%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k105414%_
                                          _%hdlen105464%_
                                          _%jlen105401%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd105452%_
                                   '0
                                   _%hdlen105464%_
                                   _%ostr105405%_
                                   _%k105414%_))
                                _%ostr105405%_))))))
                (if (pair? _%rest105430105438%_)
                    (let ((_%hd105435105469%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest105430105438%_)))
                          (_%tl105436105471%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest105430105438%_))))
                      (let* ((_%hd105474%_ _%hd105435105469%_)
                             (_%rest105476%_ _%tl105436105471%_))
                        (_%K105434105466%_ _%rest105476%_ _%hd105474%_)))
                    (_%else105432105446%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes105330%_ _%port105331%_ _%start105332%_ _%end105333%_)
        (let* ((_%bytes105336%_ _%bytes105330%_)
               (_%port105344%_ _%port105331%_)
               (_%start105352%_ _%start105332%_)
               (_%end105360%_ _%end105333%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes105336%_
           _%start105352%_
           _%end105360%_
           _%port105344%_))))
    (define __read-u8vector__0
      (lambda (_%bytes105372%_ _%port105373%_)
        (let* ((_%start105375%_ '0)
               (_%end105377%_ (u8vector-length _%bytes105372%_)))
          (__read-u8vector__%
           _%bytes105372%_
           _%port105373%_
           _%start105375%_
           _%end105377%_))))
    (define __read-u8vector__1
      (lambda (_%bytes105379%_ _%port105380%_ _%start105381%_)
        (let ((_%end105383%_ (u8vector-length _%bytes105379%_)))
          (__read-u8vector__%
           _%bytes105379%_
           _%port105380%_
           _%start105381%_
           _%end105383%_))))
    (define __read-u8vector
      (lambda _g110986_
        (let ((_g110987_ (let () (declare (not safe)) (##length _g110986_))))
          (cond ((let () (declare (not safe)) (##fx= _g110987_ 2))
                 (apply __read-u8vector__0 _g110986_))
                ((let () (declare (not safe)) (##fx= _g110987_ 3))
                 (apply __read-u8vector__1 _g110986_))
                ((let () (declare (not safe)) (##fx= _g110987_ 4))
                 (apply __read-u8vector__% _g110986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g110986_))))))
    (define read-u8vector__%
      (lambda (_%bytes103804%_ _%port103805%_ _%start103806%_ _%end103807%_)
        (if (u8vector? _%bytes103804%_)
            (let ((_%bytes103811%_ _%bytes103804%_))
              (if (input-port? _%port103805%_)
                  (let ((_%port103821%_ _%port103805%_))
                    (if ((lambda (_%o103830%_)
                           (and (fixnum? _%o103830%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o103830%_ '0))
                                (let ((__tmp110988
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes103811%_))))
                                  (declare (not safe))
                                  (##fx< _%o103830%_ __tmp110988))))
                         _%start103806%_)
                        (let ((_%start103834%_ _%start103806%_))
                          (if ((lambda (_%o103843%_)
                                 (and (fixnum? _%o103843%_)
                                      (let ((__tmp110989
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes103811%_))))
                                        (declare (not safe))
                                        (##fx<= _%start103834%_
                                                _%o103843%_
                                                __tmp110989))))
                               _%end103807%_)
                              (let ((_%end103847%_ _%end103807%_))
                                (__read-u8vector__%
                                 _%bytes103811%_
                                 _%port103821%_
                                 _%start103834%_
                                 _%end103847%_))
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
                                 _%end103807%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@816.22-816.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start103806%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@815.22-815.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port103805%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@814.22-814.27"
               'contract:
               'u8vector?
               'value:
               _%bytes103804%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes103860%_ _%port103861%_)
        (let* ((_%start103863%_ '0)
               (_%end103865%_ (u8vector-length _%bytes103860%_)))
          (read-u8vector__%
           _%bytes103860%_
           _%port103861%_
           _%start103863%_
           _%end103865%_))))
    (define read-u8vector__1
      (lambda (_%bytes103867%_ _%port103868%_ _%start103869%_)
        (let ((_%end103871%_ (u8vector-length _%bytes103867%_)))
          (read-u8vector__%
           _%bytes103867%_
           _%port103868%_
           _%start103869%_
           _%end103871%_))))
    (define read-u8vector
      (lambda _g110990_
        (let ((_g110991_ (let () (declare (not safe)) (##length _g110990_))))
          (cond ((let () (declare (not safe)) (##fx= _g110991_ 2))
                 (apply read-u8vector__0 _g110990_))
                ((let () (declare (not safe)) (##fx= _g110991_ 3))
                 (apply read-u8vector__1 _g110990_))
                ((let () (declare (not safe)) (##fx= _g110991_ 4))
                 (apply read-u8vector__% _g110990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g110990_))))))
    (define __write-u8vector__%
      (lambda (_%bytes105269%_ _%port105270%_ _%start105271%_ _%end105272%_)
        (let* ((_%bytes105275%_ _%bytes105269%_)
               (_%port105283%_ _%port105270%_)
               (_%start105291%_ _%start105271%_)
               (_%end105299%_ _%end105272%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes105275%_
           _%start105291%_
           _%end105299%_
           _%port105283%_))))
    (define __write-u8vector__0
      (lambda (_%bytes105311%_ _%port105312%_)
        (let* ((_%start105314%_ '0)
               (_%end105316%_ (u8vector-length _%bytes105311%_)))
          (__write-u8vector__%
           _%bytes105311%_
           _%port105312%_
           _%start105314%_
           _%end105316%_))))
    (define __write-u8vector__1
      (lambda (_%bytes105318%_ _%port105319%_ _%start105320%_)
        (let ((_%end105322%_ (u8vector-length _%bytes105318%_)))
          (__write-u8vector__%
           _%bytes105318%_
           _%port105319%_
           _%start105320%_
           _%end105322%_))))
    (define __write-u8vector
      (lambda _g110992_
        (let ((_g110993_ (let () (declare (not safe)) (##length _g110992_))))
          (cond ((let () (declare (not safe)) (##fx= _g110993_ 2))
                 (apply __write-u8vector__0 _g110992_))
                ((let () (declare (not safe)) (##fx= _g110993_ 3))
                 (apply __write-u8vector__1 _g110992_))
                ((let () (declare (not safe)) (##fx= _g110993_ 4))
                 (apply __write-u8vector__% _g110992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g110992_))))))
    (define write-u8vector__%
      (lambda (_%bytes103999%_ _%port104000%_ _%start104001%_ _%end104002%_)
        (if (u8vector? _%bytes103999%_)
            (let ((_%bytes104006%_ _%bytes103999%_))
              (if (output-port? _%port104000%_)
                  (let* ((_%port104016%_ _%port104000%_)
                         (_%start104025%_ _%start104001%_))
                    (if ((lambda (_%o104033%_)
                           (and (fixnum? _%o104033%_)
                                (let ((__tmp110994
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes104006%_))))
                                  (declare (not safe))
                                  (##fx<= _%start104025%_
                                          _%o104033%_
                                          __tmp110994))))
                         _%end104002%_)
                        (let ((_%end104037%_ _%end104002%_))
                          (__write-u8vector__%
                           _%bytes104006%_
                           _%port104016%_
                           _%start104025%_
                           _%end104037%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@827.23-827.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end104002%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@825.23-825.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port104000%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@824.23-824.28"
               'contract:
               'u8vector?
               'value:
               _%bytes103999%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes104050%_ _%port104051%_)
        (let* ((_%start104053%_ '0)
               (_%end104055%_ (u8vector-length _%bytes104050%_)))
          (write-u8vector__%
           _%bytes104050%_
           _%port104051%_
           _%start104053%_
           _%end104055%_))))
    (define write-u8vector__1
      (lambda (_%bytes104057%_ _%port104058%_ _%start104059%_)
        (let ((_%end104061%_ (u8vector-length _%bytes104057%_)))
          (write-u8vector__%
           _%bytes104057%_
           _%port104058%_
           _%start104059%_
           _%end104061%_))))
    (define write-u8vector
      (lambda _g110995_
        (let ((_g110996_ (let () (declare (not safe)) (##length _g110995_))))
          (cond ((let () (declare (not safe)) (##fx= _g110996_ 2))
                 (apply write-u8vector__0 _g110995_))
                ((let () (declare (not safe)) (##fx= _g110996_ 3))
                 (apply write-u8vector__1 _g110995_))
                ((let () (declare (not safe)) (##fx= _g110996_ 4))
                 (apply write-u8vector__% _g110995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g110995_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag105237%_
               _%dbg-exprs105238%_
               _%dbg-thunks105239%_
               _%expr105240%_
               _%thunk105241%_)
        (letrec ((_%o105243%_ (current-output-port))
                 (_%e105244%_ (current-error-port))
                 (_%p105245%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f105246%_
                  (lambda ()
                    (force-output _%o105243%_)
                    (force-output _%e105244%_)))
                 (_%d105247%_
                  (lambda (_%x105254%_) (display _%x105254%_ _%e105244%_)))
                 (_%w105248%_
                  (lambda (_%x105256%_) (_%p105245%_ _%x105256%_ _%e105244%_)))
                 (_%n105249%_ (lambda () (newline _%e105244%_)))
                 (_%v105250%_
                  (lambda (_%l105259%_)
                    (for-each
                     (lambda (_%x105261%_)
                       (_%d105247%_ '" ")
                       (_%w105248%_ _%x105261%_))
                     _%l105259%_)
                    (_%n105249%_)))
                 (_%x105251%_
                  (lambda (_%expr105263%_ _%thunk105264%_)
                    (_%f105246%_)
                    (_%d105247%_ '"  ")
                    (_%w105248%_ _%expr105263%_)
                    (_%d105247%_ '" =>")
                    (call-with-values
                     _%thunk105264%_
                     (lambda _%x105266%_
                       (_%v105250%_ _%x105266%_)
                       (_%f105246%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x105266%_)))))))
          (if _%tag105237%_
              (begin
                (if (eq? _%tag105237%_ '#!void)
                    '#!void
                    (begin
                      (_%f105246%_)
                      (_%d105247%_ _%tag105237%_)
                      (_%n105249%_)))
                (for-each _%x105251%_ _%dbg-exprs105238%_ _%dbg-thunks105239%_)
                (if _%thunk105241%_
                    (_%x105251%_ _%expr105240%_ _%thunk105241%_)
                    '#!void))
              (if _%thunk105241%_ (_%thunk105241%_) '#!void)))))))
