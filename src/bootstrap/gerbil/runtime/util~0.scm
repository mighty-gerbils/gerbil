(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1712246553)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args86217%_
        (let () (for-each display _%args86217%_) (newline))))
    (define display*
      (lambda _%args86214%_ (let () (for-each display _%args86214%_))))
    (define file-newer?
      (lambda (_%file186189%_ _%file286190%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%file186189%_))
              (let ((_%file186194%_ _%file186189%_))
                (if (let () (declare (not safe)) (string? _%file286190%_))
                    (let ((_%file286204%_ _%file286190%_))
                      (declare (not safe))
                      (__file-newer? _%file186194%_ _%file286204%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@62.23-62.28"
                       'contract:
                       'string?
                       'value:
                       _%file286190%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@61.20-61.25"
                 'contract:
                 'string?
                 'value:
                 _%file186189%_)
                '#!void)))))
    (define __file-newer?
      (lambda (_%file186137%_ _%file286138%_)
        (let ()
          (let* ((_%file186141%_ _%file186137%_)
                 (_%file286149%_ _%file286138%_))
            (letrec ((_%modification-time86158%_
                      (lambda (_%file86177%_)
                        (let ((_%file86180%_ _%file86177%_))
                          (declare (not safe))
                          (_%__modification-time86159%_ _%file86180%_))))
                     (_%__modification-time86159%_
                      (lambda (_%file86161%_)
                        (let ()
                          (let* ((_%file86164%_ _%file86161%_)
                                 (__tmp87958
                                  (let ((__tmp87959
                                         (let ()
                                           (declare (not safe))
                                           (##file-info _%file86164%_ '#t))))
                                    (declare (not safe))
                                    (##file-info-last-modification-time
                                     __tmp87959))))
                            (declare (not safe))
                            (##time->seconds __tmp87958))))))
              (let ((__tmp87961
                     (let ()
                       (declare (not safe))
                       (_%__modification-time86159%_ _%file186141%_)))
                    (__tmp87960
                     (let ()
                       (declare (not safe))
                       (_%__modification-time86159%_ _%file286149%_))))
                (declare (not safe))
                (##fl> __tmp87961 __tmp87960)))))))
    (define create-directory*__%
      (lambda (_%dir86102%_ _%perms86103%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%dir86102%_))
              (let ((_%dir86107%_ _%dir86102%_))
                (if (let () (declare (not safe)) (fixnum? _%perms86103%_))
                    (let ((_%perms86117%_ _%perms86103%_))
                      (declare (not safe))
                      (__create-directory*__% _%dir86107%_ _%perms86117%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@73.26-73.31"
                       'contract:
                       'fixnum?
                       'value:
                       _%perms86103%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@72.26-72.29"
                 'contract:
                 'string?
                 'value:
                 _%dir86102%_)
                '#!void)))))
    (define create-directory*__0
      (lambda (_%dir86130%_)
        (let ((_%perms86132%_ '493))
          (declare (not safe))
          (create-directory*__% _%dir86130%_ _%perms86132%_))))
    (define create-directory*
      (lambda _g87963_
        (let ((_g87962_ (let () (declare (not safe)) (##length _g87963_))))
          (cond ((let () (declare (not safe)) (##fx= _g87962_ 1))
                 (apply (lambda (_%dir86130%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _%dir86130%_)))
                        _g87963_))
                ((let () (declare (not safe)) (##fx= _g87962_ 2))
                 (apply (lambda (_%dir86134%_ _%perms86135%_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__%
                             _%dir86134%_
                             _%perms86135%_)))
                        _g87963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g87963_))))))
    (define __create-directory*__%
      (lambda (_%dir86026%_ _%perms86027%_)
        (let ()
          (let* ((_%dir86030%_ _%dir86026%_) (_%perms86038%_ _%perms86027%_))
            (letrec ((_%create186047%_
                      (lambda (_%path86079%_)
                        (let ((_%path86082%_ _%path86079%_))
                          (declare (not safe))
                          (_%__create186048%_ _%path86082%_))))
                     (_%__create186048%_
                      (lambda (_%path86060%_)
                        (let ((_%path86063%_ _%path86060%_))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%path86063%_))
                              (let ()
                                (if (eq? (file-type _%path86063%_) 'directory)
                                    '#!void
                                    (error '"Path component is not a directory"
                                           _%path86063%_)))
                              (if _%perms86038%_
                                  (let ()
                                    (create-directory
                                     (cons 'path:
                                           (cons _%path86063%_
                                                 (cons 'permissions:
                                                       (cons _%perms86038%_
                                                             '()))))))
                                  (let ()
                                    (create-directory _%path86063%_))))))))
              (if (let () (declare (not safe)) (##file-exists? _%dir86030%_))
                  '#!void
                  (let _%lp86050%_ ((_%start86052%_ '0))
                    (let ((_%$e86054%_
                           (let ()
                             (declare (not safe))
                             (__string-index
                              _%dir86030%_
                              '#\/
                              _%start86052%_))))
                      (if _%$e86054%_
                          ((lambda (_%x86057%_)
                             (if (let ()
                                   (declare (not safe))
                                   (##fx> _%x86057%_ '0))
                                 (let ((__tmp87964
                                        (substring
                                         _%dir86030%_
                                         '0
                                         _%x86057%_)))
                                   (declare (not safe))
                                   (_%__create186048%_ __tmp87964))
                                 '#!void)
                             (let ((__tmp87965
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%x86057%_ '1))))
                               (declare (not safe))
                               (_%lp86050%_ __tmp87965)))
                           _%$e86054%_)
                          (let ()
                            (declare (not safe))
                            (_%__create186048%_ _%dir86030%_))))))
              '#!void)))))
    (define __create-directory*__0
      (lambda (_%dir86094%_)
        (let ((_%perms86096%_ '493))
          (declare (not safe))
          (__create-directory*__% _%dir86094%_ _%perms86096%_))))
    (define __create-directory*
      (lambda _g87967_
        (let ((_g87966_ (let () (declare (not safe)) (##length _g87967_))))
          (cond ((let () (declare (not safe)) (##fx= _g87966_ 1))
                 (apply (lambda (_%dir86094%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__0 _%dir86094%_)))
                        _g87967_))
                ((let () (declare (not safe)) (##fx= _g87966_ 2))
                 (apply (lambda (_%dir86098%_ _%perms86099%_)
                          (let ()
                            (declare (not safe))
                            (__create-directory*__%
                             _%dir86098%_
                             _%perms86099%_)))
                        _g87967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g87967_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore86022%_ (let () '#t)))
    (define true? (lambda (_%obj86019%_) (let () (eq? _%obj86019%_ '#t))))
    (define false (lambda _%ignore86016%_ (let () '#f)))
    (define void (lambda _%ignore86013%_ (let () '#!void)))
    (define void? (lambda (_%obj86010%_) (let () (eq? _%obj86010%_ '#!void))))
    (define dssl-object?
      (lambda (_%obj86007%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##memq _%obj86007%_ '(#!key #!rest #!optional)))
              '#t
              '#f))))
    (define dssl-key-object?
      (lambda (_%obj86004%_) (let () (eq? _%obj86004%_ '#!key))))
    (define dssl-rest-object?
      (lambda (_%obj86001%_) (let () (eq? _%obj86001%_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_%obj85998%_) (let () (eq? _%obj85998%_ '#!optional))))
    (define immediate?
      (lambda (_%obj85993%_)
        (let ()
          (let* ((_%t85996%_
                  (let () (declare (not safe)) (##type _%obj85993%_)))
                 (__tmp87968
                  (let () (declare (not safe)) (##fxand _%t85996%_ '1))))
            (declare (not safe))
            (##fxzero? __tmp87968)))))
    (define nonnegative-fixnum?
      (lambda (_%obj85990%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%obj85990%_))
              (let () (declare (not safe)) (##fx>= _%obj85990%_ '0))
              '#f))))
    (define pair-or-null?
      (lambda (_%obj85984%_)
        (let ((_%$e85987%_ (let () (declare (not safe)) (pair? _%obj85984%_))))
          (if _%$e85987%_
              _%$e85987%_
              (let () (declare (not safe)) (null? _%obj85984%_))))))
    (define values-count
      (lambda (_%obj85981%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85981%_))
              (let () (declare (not safe)) (##vector-length _%obj85981%_))
              '1))))
    (define values-ref
      (lambda (_%obj85966%_ _%k85967%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%k85967%_))
              (let ((_%k85971%_ _%k85967%_))
                (declare (not safe))
                (__values-ref _%obj85966%_ _%k85971%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@198.23-198.24"
                 'contract:
                 'fixnum?
                 'value:
                 _%k85967%_)
                '#!void)))))
    (define __values-ref
      (lambda (_%obj85953%_ _%k85954%_)
        (let ((_%k85957%_ _%k85954%_))
          (if (let () (declare (not safe)) (##values? _%obj85953%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj85953%_ _%k85957%_))
              _%obj85953%_))))
    (define values->list
      (lambda (_%obj85950%_)
        (let ()
          (if (let () (declare (not safe)) (##values? _%obj85950%_))
              (let () (declare (not safe)) (##vector->list _%obj85950%_))
              (list _%obj85950%_)))))
    (define foldl1
      (lambda (_%f85934%_ _%iv85935%_ _%lst85936%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85934%_))
              (let ((_%f85940%_ _%f85934%_))
                (declare (not safe))
                (__foldl1 _%f85940%_ _%iv85935%_ _%lst85936%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@221.15-221.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85934%_)
                '#!void)))))
    (define __foldl1
      (lambda (_%f85882%_ _%iv85883%_ _%lst85884%_)
        (let ((_%f85887%_ _%f85882%_))
          (let _%lp85896%_ ((_%rest85898%_ _%lst85884%_)
                            (_%r85899%_ _%iv85883%_))
            (let* ((_%rest8590085908%_ _%rest85898%_)
                   (_%else8590285916%_ (lambda () _%r85899%_))
                   (_%K8590485922%_
                    (lambda (_%rest85919%_ _%x85920%_)
                      (let ((__tmp87969
                             (let ()
                               (declare (not safe))
                               (_%f85887%_ _%x85920%_ _%r85899%_))))
                        (declare (not safe))
                        (_%lp85896%_ _%rest85919%_ __tmp87969)))))
              (if (let () (declare (not safe)) (##pair? _%rest8590085908%_))
                  (let ((_%hd8590585925%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8590085908%_)))
                        (_%tl8590685927%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8590085908%_))))
                    (let* ((_%x85930%_ _%hd8590585925%_)
                           (_%rest85932%_ _%tl8590685927%_))
                      (declare (not safe))
                      (_%K8590485922%_ _%rest85932%_ _%x85930%_)))
                  (let () (declare (not safe)) (_%else8590285916%_))))))))
    (define foldl2
      (lambda (_%f85865%_ _%iv85866%_ _%lst185867%_ _%lst285868%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85865%_))
              (let ((_%f85872%_ _%f85865%_))
                (declare (not safe))
                (__foldl2 _%f85872%_ _%iv85866%_ _%lst185867%_ _%lst285868%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@228.15-228.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85865%_)
                '#!void)))))
    (define __foldl2
      (lambda (_%f85778%_ _%iv85779%_ _%lst185780%_ _%lst285781%_)
        (let ((_%f85784%_ _%f85778%_))
          (let _%lp85793%_ ((_%rest185795%_ _%lst185780%_)
                            (_%rest285796%_ _%lst285781%_)
                            (_%r85797%_ _%iv85779%_))
            (let* ((_%rest18579885806%_ _%rest185795%_)
                   (_%else8580085814%_ (lambda () _%r85797%_))
                   (_%K8580285853%_
                    (lambda (_%rest185817%_ _%x185818%_)
                      (let* ((_%rest28581985827%_ _%rest285796%_)
                             (_%else8582185835%_ (lambda () _%r85797%_))
                             (_%K8582385841%_
                              (lambda (_%rest285838%_ _%x285839%_)
                                (let ((__tmp87970
                                       (let ()
                                         (declare (not safe))
                                         (_%f85784%_
                                          _%x185818%_
                                          _%x285839%_
                                          _%r85797%_))))
                                  (declare (not safe))
                                  (_%lp85793%_
                                   _%rest185817%_
                                   _%rest285838%_
                                   __tmp87970)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28581985827%_))
                            (let ((_%hd8582485844%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28581985827%_)))
                                  (_%tl8582585846%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28581985827%_))))
                              (let* ((_%x285849%_ _%hd8582485844%_)
                                     (_%rest285851%_ _%tl8582585846%_))
                                (declare (not safe))
                                (_%K8582385841%_ _%rest285851%_ _%x285849%_)))
                            (let ()
                              (declare (not safe))
                              (_%else8582185835%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest18579885806%_))
                  (let ((_%hd8580385856%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18579885806%_)))
                        (_%tl8580485858%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18579885806%_))))
                    (let* ((_%x185861%_ _%hd8580385856%_)
                           (_%rest185863%_ _%tl8580485858%_))
                      (declare (not safe))
                      (_%K8580285853%_ _%rest185863%_ _%x185861%_)))
                  (let () (declare (not safe)) (_%else8580085814%_))))))))
    (define foldl
      (lambda _g87972_
        (let ((_g87971_ (let () (declare (not safe)) (##length _g87972_))))
          (cond ((let () (declare (not safe)) (##fx= _g87971_ 3))
                 (apply (lambda (_%f85763%_ _%iv85764%_ _%lst85765%_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _%f85763%_ _%iv85764%_ _%lst85765%_)))
                        _g87972_))
                ((let () (declare (not safe)) (##fx= _g87971_ 4))
                 (apply (lambda (_%f85767%_
                                 _%iv85768%_
                                 _%lst185769%_
                                 _%lst285770%_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _%f85767%_
                                    _%iv85768%_
                                    _%lst185769%_
                                    _%lst285770%_)))
                        _g87972_))
                ((let () (declare (not safe)) (##fx>= _g87971_ 4))
                 (apply foldl* _g87972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g87972_))))))
    (define foldl*
      (lambda (_%f85747%_ _%iv85748%_ . _%rest85749%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85747%_))
              (let ((_%f85753%_ _%f85747%_))
                (declare (not safe))
                (##apply __foldl* _%f85753%_ _%iv85748%_ _%rest85749%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@246.15-246.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85747%_)
                '#!void)))))
    (define __foldl*
      (lambda (_%f85725%_ _%iv85726%_ . _%rest85727%_)
        (let ((_%f85730%_ _%f85725%_))
          (let _%recur85739%_ ((_%iv85741%_ _%iv85726%_)
                               (_%rest85742%_ _%rest85727%_))
            (if (let () (declare (not safe)) (__andmap1 pair? _%rest85742%_))
                (let ((__tmp87974
                       (let ((__tmp87975
                              (let ((__tmp87977
                                     (lambda (_%xs85744%_ _%r85745%_)
                                       (cons (car _%xs85744%_) _%r85745%_)))
                                    (__tmp87976 (list _%iv85741%_)))
                                (declare (not safe))
                                (__foldr1
                                 __tmp87977
                                 __tmp87976
                                 _%rest85742%_))))
                         (declare (not safe))
                         (##apply _%f85730%_ __tmp87975)))
                      (__tmp87973 (map cdr _%rest85742%_)))
                  (declare (not safe))
                  (_%recur85739%_ __tmp87974 __tmp87973))
                _%iv85741%_)))))
    (define foldr1
      (lambda (_%f85709%_ _%iv85710%_ _%lst85711%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85709%_))
              (let ((_%f85715%_ _%f85709%_))
                (declare (not safe))
                (__foldr1 _%f85715%_ _%iv85710%_ _%lst85711%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@256.15-256.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85709%_)
                '#!void)))))
    (define __foldr1
      (lambda (_%f85658%_ _%iv85659%_ _%lst85660%_)
        (let ((_%f85663%_ _%f85658%_))
          (let _%recur85672%_ ((_%rest85674%_ _%lst85660%_))
            (let* ((_%rest8567585683%_ _%rest85674%_)
                   (_%else8567785691%_ (lambda () _%iv85659%_))
                   (_%K8567985697%_
                    (lambda (_%rest85694%_ _%x85695%_)
                      (let ((__tmp87978
                             (let ()
                               (declare (not safe))
                               (_%recur85672%_ _%rest85694%_))))
                        (declare (not safe))
                        (_%f85663%_ _%x85695%_ __tmp87978)))))
              (if (let () (declare (not safe)) (##pair? _%rest8567585683%_))
                  (let ((_%hd8568085700%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8567585683%_)))
                        (_%tl8568185702%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8567585683%_))))
                    (let* ((_%x85705%_ _%hd8568085700%_)
                           (_%rest85707%_ _%tl8568185702%_))
                      (declare (not safe))
                      (_%K8567985697%_ _%rest85707%_ _%x85705%_)))
                  (let () (declare (not safe)) (_%else8567785691%_))))))))
    (define foldr2
      (lambda (_%f85641%_ _%iv85642%_ _%lst185643%_ _%lst285644%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85641%_))
              (let ((_%f85648%_ _%f85641%_))
                (declare (not safe))
                (__foldr2 _%f85648%_ _%iv85642%_ _%lst185643%_ _%lst285644%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@263.15-263.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85641%_)
                '#!void)))))
    (define __foldr2
      (lambda (_%f85555%_ _%iv85556%_ _%lst185557%_ _%lst285558%_)
        (let ((_%f85561%_ _%f85555%_))
          (let _%recur85570%_ ((_%rest185572%_ _%lst185557%_)
                               (_%rest285573%_ _%lst285558%_))
            (let* ((_%rest18557485582%_ _%rest185572%_)
                   (_%else8557685590%_ (lambda () _%iv85556%_))
                   (_%K8557885629%_
                    (lambda (_%rest185593%_ _%x185594%_)
                      (let* ((_%rest28559585603%_ _%rest285573%_)
                             (_%else8559785611%_ (lambda () _%iv85556%_))
                             (_%K8559985617%_
                              (lambda (_%rest285614%_ _%x285615%_)
                                (let ((__tmp87979
                                       (let ()
                                         (declare (not safe))
                                         (_%recur85570%_
                                          _%rest185593%_
                                          _%rest285614%_))))
                                  (declare (not safe))
                                  (_%f85561%_
                                   _%x185594%_
                                   _%x285615%_
                                   __tmp87979)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28559585603%_))
                            (let ((_%hd8560085620%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28559585603%_)))
                                  (_%tl8560185622%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28559585603%_))))
                              (let* ((_%x285625%_ _%hd8560085620%_)
                                     (_%rest285627%_ _%tl8560185622%_))
                                (declare (not safe))
                                (_%K8559985617%_ _%rest285627%_ _%x285625%_)))
                            (let ()
                              (declare (not safe))
                              (_%else8559785611%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest18557485582%_))
                  (let ((_%hd8557985632%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18557485582%_)))
                        (_%tl8558085634%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18557485582%_))))
                    (let* ((_%x185637%_ _%hd8557985632%_)
                           (_%rest185639%_ _%tl8558085634%_))
                      (declare (not safe))
                      (_%K8557885629%_ _%rest185639%_ _%x185637%_)))
                  (let () (declare (not safe)) (_%else8557685590%_))))))))
    (define foldr
      (lambda _g87981_
        (let ((_g87980_ (let () (declare (not safe)) (##length _g87981_))))
          (cond ((let () (declare (not safe)) (##fx= _g87980_ 3))
                 (apply (lambda (_%f85540%_ _%iv85541%_ _%lst85542%_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _%f85540%_ _%iv85541%_ _%lst85542%_)))
                        _g87981_))
                ((let () (declare (not safe)) (##fx= _g87980_ 4))
                 (apply (lambda (_%f85544%_
                                 _%iv85545%_
                                 _%lst185546%_
                                 _%lst285547%_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _%f85544%_
                                    _%iv85545%_
                                    _%lst185546%_
                                    _%lst285547%_)))
                        _g87981_))
                ((let () (declare (not safe)) (##fx>= _g87980_ 4))
                 (apply foldr* _g87981_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g87981_))))))
    (define foldr*
      (lambda (_%f85524%_ _%iv85525%_ . _%rest85526%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85524%_))
              (let ((_%f85530%_ _%f85524%_))
                (declare (not safe))
                (##apply __foldr* _%f85530%_ _%iv85525%_ _%rest85526%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@281.15-281.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85524%_)
                '#!void)))))
    (define __foldr*
      (lambda (_%f85503%_ _%iv85504%_ . _%rest85505%_)
        (let ((_%f85508%_ _%f85503%_))
          (let _%recur85517%_ ((_%rest85519%_ _%rest85505%_))
            (if (let () (declare (not safe)) (__andmap1 pair? _%rest85519%_))
                (let ((__tmp87982
                       (let ((__tmp87985
                              (lambda (_%xs85521%_ _%r85522%_)
                                (cons (car _%xs85521%_) _%r85522%_)))
                             (__tmp87983
                              (list (let ((__tmp87984 (map cdr _%rest85519%_)))
                                      (declare (not safe))
                                      (_%recur85517%_ __tmp87984)))))
                         (declare (not safe))
                         (__foldr1 __tmp87985 __tmp87983 _%rest85519%_))))
                  (declare (not safe))
                  (##apply _%f85508%_ __tmp87982))
                _%iv85504%_)))))
    (define remove-nulls!
      (lambda (_%l85390%_)
        (let* ((_%l8539185404%_ _%l85390%_)
               (_%E8539585408%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8539185404%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8540085493%_
                 (lambda (_%r85491%_)
                   (let () (declare (not safe)) (remove-nulls! _%r85491%_))))
                (_%K8539785480%_
                 (lambda (_%r85420%_)
                   (let _%loop85422%_ ((_%l85424%_ _%l85390%_)
                                       (_%r85425%_ _%r85420%_))
                     (let* ((_%r8542685439%_ _%r85425%_)
                            (_%E8543085443%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8542685439%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8543585470%_
                              (lambda (_%rr85468%_)
                                (let ((__tmp87987 _%l85424%_)
                                      (__tmp87986
                                       (let ()
                                         (declare (not safe))
                                         (remove-nulls! _%rr85468%_))))
                                  (declare (not safe))
                                  (##set-cdr! __tmp87987 __tmp87986))))
                             (_%K8543285457%_
                              (lambda (_%rr85455%_)
                                (let ()
                                  (declare (not safe))
                                  (_%loop85422%_ _%r85425%_ _%rr85455%_))))
                             (_%K8543185448%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8542685439%_))
                             (let ((_%tl8543785475%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8542685439%_)))
                                   (_%hd8543685473%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8542685439%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8543685473%_))
                                   (let ((_%rr85478%_ _%tl8543785475%_))
                                     (declare (not safe))
                                     (_%K8543585470%_ _%rr85478%_))
                                   (let ((_%rr85463%_ _%tl8543785475%_))
                                     (declare (not safe))
                                     (_%K8543285457%_ _%rr85463%_))))
                             '#!void))))
                   _%l85390%_))
                (_%K8539685413%_ (lambda () _%l85390%_)))
            (if (let () (declare (not safe)) (##pair? _%l8539185404%_))
                (let ((_%tl8540285498%_
                       (let () (declare (not safe)) (##cdr _%l8539185404%_)))
                      (_%hd8540185496%_
                       (let () (declare (not safe)) (##car _%l8539185404%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8540185496%_))
                      (let ((_%r85501%_ _%tl8540285498%_))
                        (declare (not safe))
                        (remove-nulls! _%r85501%_))
                      (let ((_%r85486%_ _%tl8540285498%_))
                        (declare (not safe))
                        (_%K8539785480%_ _%r85486%_))))
                (let () (declare (not safe)) (_%K8539685413%_)))))))
    (define append1!
      (lambda (_%l85375%_ _%x85376%_)
        (let ((_%l285379%_ (cons _%x85376%_ '())))
          (if (let () (declare (not safe)) (pair? _%l85375%_))
              (let ((_%l85381%_ _%l85375%_))
                (let ((__tmp87988
                       (let () (declare (not safe)) (##last-pair _%l85381%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp87988 _%l285379%_))
                _%l85381%_)
              _%l285379%_))))
    (define append-reverse-until
      (lambda (_%pred85359%_ _%rhead85360%_ _%tail85361%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred85359%_))
              (let ((_%pred85365%_ _%pred85359%_))
                (declare (not safe))
                (__append-reverse-until
                 _%pred85365%_
                 _%rhead85360%_
                 _%tail85361%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@321.29-321.33"
                 'contract:
                 'procedure?
                 'value:
                 _%pred85359%_)
                '#!void)))))
    (define __append-reverse-until
      (lambda (_%pred85301%_ _%rhead85302%_ _%tail85303%_)
        (let ((_%pred85306%_ _%pred85301%_))
          (let _%loop85315%_ ((_%rhead85317%_ _%rhead85302%_)
                              (_%tail85318%_ _%tail85303%_))
            (let ()
              (let* ((_%rhead8532085329%_ _%rhead85317%_)
                     (_%E8532385333%_
                      (lambda ()
                        (error '"No clause matching"
                               _%rhead8532085329%_
                               '([])
                               '([a :: r]))
                        '#!void)))
                (let ((_%K8532785356%_ (lambda () (values '() _%tail85318%_)))
                      (_%K8532485340%_
                       (lambda (_%r85337%_ _%a85338%_)
                         (if (let ()
                               (declare (not safe))
                               (_%pred85306%_ _%a85338%_))
                             (values _%rhead85317%_ _%tail85318%_)
                             (let ((__tmp87989
                                    (cons _%a85338%_ _%tail85318%_)))
                               (declare (not safe))
                               (_%loop85315%_ _%r85337%_ __tmp87989))))))
                  (let ((_%try-match8532285352%_
                         (lambda ()
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rhead8532085329%_))
                               (let ((_%tl8532685345%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rhead8532085329%_)))
                                     (_%hd8532585343%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rhead8532085329%_))))
                                 (let ((_%a85348%_ _%hd8532585343%_)
                                       (_%r85350%_ _%tl8532685345%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%K8532485340%_ _%r85350%_ _%a85348%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%E8532385333%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##null? _%rhead8532085329%_))
                        (let () (declare (not safe)) (_%K8532785356%_))
                        (let ()
                          (declare (not safe))
                          (_%try-match8532285352%_)))))))))))
    (define andmap1
      (lambda (_%f85286%_ _%lst85287%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85286%_))
              (let ((_%f85291%_ _%f85286%_))
                (declare (not safe))
                (__andmap1 _%f85291%_ _%lst85287%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@332.16-332.17"
                 'contract:
                 'procedure?
                 'value:
                 _%f85286%_)
                '#!void)))))
    (define __andmap1
      (lambda (_%f85235%_ _%lst85236%_)
        (let ((_%f85239%_ _%f85235%_))
          (let _%lp85248%_ ((_%rest85250%_ _%lst85236%_))
            (let ()
              (let* ((_%rest8525285260%_ _%rest85250%_)
                     (_%else8525485268%_ (lambda () '#t))
                     (_%K8525685274%_
                      (lambda (_%rest85271%_ _%x85272%_)
                        (if (let ()
                              (declare (not safe))
                              (_%f85239%_ _%x85272%_))
                            (let ()
                              (declare (not safe))
                              (_%lp85248%_ _%rest85271%_))
                            '#f))))
                (if (let () (declare (not safe)) (##pair? _%rest8525285260%_))
                    (let ((_%hd8525785277%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8525285260%_)))
                          (_%tl8525885279%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8525285260%_))))
                      (let* ((_%x85282%_ _%hd8525785277%_)
                             (_%rest85284%_ _%tl8525885279%_))
                        (declare (not safe))
                        (_%K8525685274%_ _%rest85284%_ _%x85282%_)))
                    (let () (declare (not safe)) (_%else8525485268%_)))))))))
    (define andmap2
      (lambda (_%f85219%_ _%lst185220%_ _%lst285221%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85219%_))
              (let ((_%f85225%_ _%f85219%_))
                (declare (not safe))
                (__andmap2 _%f85225%_ _%lst185220%_ _%lst285221%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@341.16-341.17"
                 'contract:
                 'procedure?
                 'value:
                 _%f85219%_)
                '#!void)))))
    (define __andmap2
      (lambda (_%f85133%_ _%lst185134%_ _%lst285135%_)
        (let ((_%f85138%_ _%f85133%_))
          (let _%lp85147%_ ((_%rest185149%_ _%lst185134%_)
                            (_%rest285150%_ _%lst285135%_))
            (let ()
              (let* ((_%rest18515285160%_ _%rest185149%_)
                     (_%else8515485168%_ (lambda () '#t))
                     (_%K8515685207%_
                      (lambda (_%rest185171%_ _%x185172%_)
                        (let* ((_%rest28517385181%_ _%rest285150%_)
                               (_%else8517585189%_ (lambda () '#t))
                               (_%K8517785195%_
                                (lambda (_%rest285192%_ _%x285193%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (_%f85138%_ _%x185172%_ _%x285193%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%lp85147%_
                                         _%rest185171%_
                                         _%rest285192%_))
                                      '#f))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest28517385181%_))
                              (let ((_%hd8517885198%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest28517385181%_)))
                                    (_%tl8517985200%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest28517385181%_))))
                                (let* ((_%x285203%_ _%hd8517885198%_)
                                       (_%rest285205%_ _%tl8517985200%_))
                                  (declare (not safe))
                                  (_%K8517785195%_
                                   _%rest285205%_
                                   _%x285203%_)))
                              (let ()
                                (declare (not safe))
                                (_%else8517585189%_)))))))
                (if (let () (declare (not safe)) (##pair? _%rest18515285160%_))
                    (let ((_%hd8515785210%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest18515285160%_)))
                          (_%tl8515885212%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest18515285160%_))))
                      (let* ((_%x185215%_ _%hd8515785210%_)
                             (_%rest185217%_ _%tl8515885212%_))
                        (declare (not safe))
                        (_%K8515685207%_ _%rest185217%_ _%x185215%_)))
                    (let () (declare (not safe)) (_%else8515485168%_)))))))))
    (define andmap
      (lambda _g87991_
        (let ((_g87990_ (let () (declare (not safe)) (##length _g87991_))))
          (cond ((let () (declare (not safe)) (##fx= _g87990_ 2))
                 (apply (lambda (_%f85121%_ _%lst85122%_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _%f85121%_ _%lst85122%_)))
                        _g87991_))
                ((let () (declare (not safe)) (##fx= _g87990_ 3))
                 (apply (lambda (_%f85124%_ _%lst185125%_ _%lst285126%_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _%f85124%_ _%lst185125%_ _%lst285126%_)))
                        _g87991_))
                ((let () (declare (not safe)) (##fx>= _g87990_ 3))
                 (apply andmap* _g87991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g87991_))))))
    (define andmap*
      (lambda (_%f85106%_ . _%rest85107%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85106%_))
              (let ((_%f85111%_ _%f85106%_))
                (declare (not safe))
                (##apply __andmap* _%f85111%_ _%rest85107%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@361.16-361.17"
                 'contract:
                 'procedure?
                 'value:
                 _%f85106%_)
                '#!void)))))
    (define __andmap*
      (lambda (_%f85088%_ . _%rest85089%_)
        (let ((_%f85092%_ _%f85088%_))
          (let _%recur85101%_ ((_%rest85103%_ _%rest85089%_))
            (let ()
              (if (let () (declare (not safe)) (__andmap1 pair? _%rest85103%_))
                  (if (let ((__tmp87992 (map car _%rest85103%_)))
                        (declare (not safe))
                        (##apply _%f85092%_ __tmp87992))
                      (let ((__tmp87993 (map cdr _%rest85103%_)))
                        (declare (not safe))
                        (_%recur85101%_ __tmp87993))
                      '#f)
                  '#t))))))
    (define ormap1
      (lambda (_%f85073%_ _%lst85074%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85073%_))
              (let ((_%f85078%_ _%f85073%_))
                (declare (not safe))
                (__ormap1 _%f85078%_ _%lst85074%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@370.15-370.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85073%_)
                '#!void)))))
    (define __ormap1
      (lambda (_%f85020%_ _%lst85021%_)
        (let ((_%f85024%_ _%f85020%_))
          (let _%lp85033%_ ((_%rest85035%_ _%lst85021%_))
            (let* ((_%rest8503685044%_ _%rest85035%_)
                   (_%else8503885052%_ (lambda () '#f))
                   (_%K8504085061%_
                    (lambda (_%rest85055%_ _%x85056%_)
                      (let ((_%$e85058%_
                             (let ()
                               (declare (not safe))
                               (_%f85024%_ _%x85056%_))))
                        (if _%$e85058%_
                            _%$e85058%_
                            (let ()
                              (declare (not safe))
                              (_%lp85033%_ _%rest85055%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest8503685044%_))
                  (let ((_%hd8504185064%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8503685044%_)))
                        (_%tl8504285066%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8503685044%_))))
                    (let* ((_%x85069%_ _%hd8504185064%_)
                           (_%rest85071%_ _%tl8504285066%_))
                      (declare (not safe))
                      (_%K8504085061%_ _%rest85071%_ _%x85069%_)))
                  (let () (declare (not safe)) (_%else8503885052%_))))))))
    (define ormap2
      (lambda (_%f85004%_ _%lst185005%_ _%lst285006%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f85004%_))
              (let ((_%f85010%_ _%f85004%_))
                (declare (not safe))
                (__ormap2 _%f85010%_ _%lst185005%_ _%lst285006%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@377.15-377.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f85004%_)
                '#!void)))))
    (define __ormap2
      (lambda (_%f84916%_ _%lst184917%_ _%lst284918%_)
        (let ((_%f84921%_ _%f84916%_))
          (let _%lp84930%_ ((_%rest184932%_ _%lst184917%_)
                            (_%rest284933%_ _%lst284918%_))
            (let* ((_%rest18493484942%_ _%rest184932%_)
                   (_%else8493684950%_ (lambda () '#f))
                   (_%K8493884992%_
                    (lambda (_%rest184953%_ _%x184954%_)
                      (let* ((_%rest28495584963%_ _%rest284933%_)
                             (_%else8495784971%_ (lambda () '#f))
                             (_%K8495984980%_
                              (lambda (_%rest284974%_ _%x284975%_)
                                (let ((_%$e84977%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f84921%_
                                          _%x184954%_
                                          _%x284975%_))))
                                  (if _%$e84977%_
                                      _%$e84977%_
                                      (let ()
                                        (declare (not safe))
                                        (_%lp84930%_
                                         _%rest184953%_
                                         _%rest284974%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28495584963%_))
                            (let ((_%hd8496084983%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28495584963%_)))
                                  (_%tl8496184985%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28495584963%_))))
                              (let* ((_%x284988%_ _%hd8496084983%_)
                                     (_%rest284990%_ _%tl8496184985%_))
                                (declare (not safe))
                                (_%K8495984980%_ _%rest284990%_ _%x284988%_)))
                            (let ()
                              (declare (not safe))
                              (_%else8495784971%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest18493484942%_))
                  (let ((_%hd8493984995%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18493484942%_)))
                        (_%tl8494084997%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18493484942%_))))
                    (let* ((_%x185000%_ _%hd8493984995%_)
                           (_%rest185002%_ _%tl8494084997%_))
                      (declare (not safe))
                      (_%K8493884992%_ _%rest185002%_ _%x185000%_)))
                  (let () (declare (not safe)) (_%else8493684950%_))))))))
    (define ormap
      (lambda _g87995_
        (let ((_g87994_ (let () (declare (not safe)) (##length _g87995_))))
          (cond ((let () (declare (not safe)) (##fx= _g87994_ 2))
                 (apply (lambda (_%f84904%_ _%lst84905%_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _%f84904%_ _%lst84905%_)))
                        _g87995_))
                ((let () (declare (not safe)) (##fx= _g87994_ 3))
                 (apply (lambda (_%f84907%_ _%lst184908%_ _%lst284909%_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _%f84907%_ _%lst184908%_ _%lst284909%_)))
                        _g87995_))
                ((let () (declare (not safe)) (##fx>= _g87994_ 3))
                 (apply ormap* _g87995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g87995_))))))
    (define ormap*
      (lambda (_%f84889%_ . _%rest84890%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84889%_))
              (let ((_%f84894%_ _%f84889%_))
                (declare (not safe))
                (##apply __ormap* _%f84894%_ _%rest84890%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@395.15-395.16"
                 'contract:
                 'procedure?
                 'value:
                 _%f84889%_)
                '#!void)))))
    (define __ormap*
      (lambda (_%f84869%_ . _%rest84870%_)
        (let ((_%f84873%_ _%f84869%_))
          (let _%recur84882%_ ((_%rest84884%_ _%rest84870%_))
            (if (let () (declare (not safe)) (__andmap1 pair? _%rest84884%_))
                (let ((_%$e84886%_
                       (let ((__tmp87996 (map car _%rest84884%_)))
                         (declare (not safe))
                         (##apply _%f84873%_ __tmp87996))))
                  (if _%$e84886%_
                      _%$e84886%_
                      (let ((__tmp87997 (map cdr _%rest84884%_)))
                        (declare (not safe))
                        (_%recur84882%_ __tmp87997))))
                '#f)))))
    (define filter-map1
      (lambda (_%f84854%_ _%lst84855%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84854%_))
              (let ((_%f84859%_ _%f84854%_))
                (declare (not safe))
                (__filter-map1 _%f84859%_ _%lst84855%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@402.20-402.21"
                 'contract:
                 'procedure?
                 'value:
                 _%f84854%_)
                '#!void)))))
    (define __filter-map1
      (lambda (_%f84797%_ _%lst84798%_)
        (let ((_%f84801%_ _%f84797%_))
          (let _%recur84810%_ ((_%rest84812%_ _%lst84798%_))
            (let ()
              (let* ((_%rest8481484822%_ _%rest84812%_)
                     (_%else8481684830%_ (lambda () '()))
                     (_%K8481884842%_
                      (lambda (_%rest84833%_ _%x84834%_)
                        (let ((_%$e84836%_
                               (let ()
                                 (declare (not safe))
                                 (_%f84801%_ _%x84834%_))))
                          (if _%$e84836%_
                              ((lambda (_%r84839%_)
                                 (cons _%r84839%_
                                       (let ()
                                         (declare (not safe))
                                         (_%recur84810%_ _%rest84833%_))))
                               _%$e84836%_)
                              (let ()
                                (declare (not safe))
                                (_%recur84810%_ _%rest84833%_)))))))
                (if (let () (declare (not safe)) (##pair? _%rest8481484822%_))
                    (let ((_%hd8481984845%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8481484822%_)))
                          (_%tl8482084847%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8481484822%_))))
                      (let* ((_%x84850%_ _%hd8481984845%_)
                             (_%rest84852%_ _%tl8482084847%_))
                        (declare (not safe))
                        (_%K8481884842%_ _%rest84852%_ _%x84850%_)))
                    (let () (declare (not safe)) (_%else8481684830%_)))))))))
    (define filter-map2
      (lambda (_%f84781%_ _%lst184782%_ _%lst284783%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84781%_))
              (let ((_%f84787%_ _%f84781%_))
                (declare (not safe))
                (__filter-map2 _%f84787%_ _%lst184782%_ _%lst284783%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@413.20-413.21"
                 'contract:
                 'procedure?
                 'value:
                 _%f84781%_)
                '#!void)))))
    (define __filter-map2
      (lambda (_%f84689%_ _%lst184690%_ _%lst284691%_)
        (let ((_%f84694%_ _%f84689%_))
          (let _%recur84703%_ ((_%rest184705%_ _%lst184690%_)
                               (_%rest284706%_ _%lst284691%_))
            (let ()
              (let* ((_%rest18470884716%_ _%rest184705%_)
                     (_%else8471084724%_ (lambda () '()))
                     (_%K8471284769%_
                      (lambda (_%rest184727%_ _%x184728%_)
                        (let* ((_%rest28472984737%_ _%rest284706%_)
                               (_%else8473184745%_ (lambda () '()))
                               (_%K8473384757%_
                                (lambda (_%rest284748%_ _%x284749%_)
                                  (let ((_%$e84751%_
                                         (let ()
                                           (declare (not safe))
                                           (_%f84694%_
                                            _%x184728%_
                                            _%x284749%_))))
                                    (if _%$e84751%_
                                        ((lambda (_%r84754%_)
                                           (cons _%r84754%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%recur84703%_
                                                    _%rest184727%_
                                                    _%rest284748%_))))
                                         _%$e84751%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%recur84703%_
                                           _%rest184727%_
                                           _%rest284748%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest28472984737%_))
                              (let ((_%hd8473484760%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest28472984737%_)))
                                    (_%tl8473584762%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest28472984737%_))))
                                (let* ((_%x284765%_ _%hd8473484760%_)
                                       (_%rest284767%_ _%tl8473584762%_))
                                  (declare (not safe))
                                  (_%K8473384757%_
                                   _%rest284767%_
                                   _%x284765%_)))
                              (let ()
                                (declare (not safe))
                                (_%else8473184745%_)))))))
                (if (let () (declare (not safe)) (##pair? _%rest18470884716%_))
                    (let ((_%hd8471384772%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest18470884716%_)))
                          (_%tl8471484774%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest18470884716%_))))
                      (let* ((_%x184777%_ _%hd8471384772%_)
                             (_%rest184779%_ _%tl8471484774%_))
                        (declare (not safe))
                        (_%K8471284769%_ _%rest184779%_ _%x184777%_)))
                    (let () (declare (not safe)) (_%else8471084724%_)))))))))
    (define filter-map
      (lambda _g87999_
        (let ((_g87998_ (let () (declare (not safe)) (##length _g87999_))))
          (cond ((let () (declare (not safe)) (##fx= _g87998_ 2))
                 (apply (lambda (_%f84677%_ _%lst84678%_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _%f84677%_ _%lst84678%_)))
                        _g87999_))
                ((let () (declare (not safe)) (##fx= _g87998_ 3))
                 (apply (lambda (_%f84680%_ _%lst184681%_ _%lst284682%_)
                          (let ()
                            (declare (not safe))
                            (filter-map2
                             _%f84680%_
                             _%lst184681%_
                             _%lst284682%_)))
                        _g87999_))
                ((let () (declare (not safe)) (##fx>= _g87998_ 3))
                 (apply filter-map* _g87999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g87999_))))))
    (define filter-map*
      (lambda (_%f84662%_ . _%rest84663%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f84662%_))
              (let ((_%f84667%_ _%f84662%_))
                (declare (not safe))
                (##apply __filter-map* _%f84667%_ _%rest84663%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@435.20-435.21"
                 'contract:
                 'procedure?
                 'value:
                 _%f84662%_)
                '#!void)))))
    (define __filter-map*
      (lambda (_%f84638%_ . _%rest84639%_)
        (let ((_%f84642%_ _%f84638%_))
          (let _%recur84651%_ ((_%rest84653%_ _%rest84639%_))
            (let ()
              (if (let () (declare (not safe)) (__andmap1 pair? _%rest84653%_))
                  (let ((_%$e84656%_
                         (let ((__tmp88000 (map car _%rest84653%_)))
                           (declare (not safe))
                           (##apply _%f84642%_ __tmp88000))))
                    (if _%$e84656%_
                        ((lambda (_%r84659%_)
                           (cons _%r84659%_
                                 (let ((__tmp88001 (map cdr _%rest84653%_)))
                                   (declare (not safe))
                                   (_%recur84651%_ __tmp88001))))
                         _%$e84656%_)
                        (let ((__tmp88002 (map cdr _%rest84653%_)))
                          (declare (not safe))
                          (_%recur84651%_ __tmp88002))))
                  '()))))))
    (define agetq__%
      (lambda (_%key84614%_ _%lst84616%_ _%default84618%_)
        (let ((_%$e84621%_
               (if (let () (declare (not safe)) (pair? _%lst84616%_))
                   (assq _%key84614%_ _%lst84616%_)
                   '#f)))
          (if _%$e84621%_
              (cdr _%$e84621%_)
              (if (let () (declare (not safe)) (procedure? _%default84618%_))
                  (let () (_%default84618%_ _%key84614%_))
                  (let () _%default84618%_))))))
    (define agetq__0
      (lambda (_%key84629%_ _%lst84630%_)
        (let ((_%default84632%_ '#f))
          (declare (not safe))
          (agetq__% _%key84629%_ _%lst84630%_ _%default84632%_))))
    (define agetq
      (lambda _g88004_
        (let ((_g88003_ (let () (declare (not safe)) (##length _g88004_))))
          (cond ((let () (declare (not safe)) (##fx= _g88003_ 2))
                 (apply (lambda (_%key84629%_ _%lst84630%_)
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key84629%_ _%lst84630%_)))
                        _g88004_))
                ((let () (declare (not safe)) (##fx= _g88003_ 3))
                 (apply (lambda (_%key84634%_ _%lst84635%_ _%default84636%_)
                          (let ()
                            (declare (not safe))
                            (agetq__%
                             _%key84634%_
                             _%lst84635%_
                             _%default84636%_)))
                        _g88004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g88004_))))))
    (define agetv__%
      (lambda (_%key84589%_ _%lst84591%_ _%default84593%_)
        (let ((_%$e84596%_
               (if (let () (declare (not safe)) (pair? _%lst84591%_))
                   (assv _%key84589%_ _%lst84591%_)
                   '#f)))
          (if _%$e84596%_
              (cdr _%$e84596%_)
              (if (let () (declare (not safe)) (procedure? _%default84593%_))
                  (let () (_%default84593%_ _%key84589%_))
                  (let () _%default84593%_))))))
    (define agetv__0
      (lambda (_%key84604%_ _%lst84605%_)
        (let ((_%default84607%_ '#f))
          (declare (not safe))
          (agetv__% _%key84604%_ _%lst84605%_ _%default84607%_))))
    (define agetv
      (lambda _g88006_
        (let ((_g88005_ (let () (declare (not safe)) (##length _g88006_))))
          (cond ((let () (declare (not safe)) (##fx= _g88005_ 2))
                 (apply (lambda (_%key84604%_ _%lst84605%_)
                          (let ()
                            (declare (not safe))
                            (agetv__0 _%key84604%_ _%lst84605%_)))
                        _g88006_))
                ((let () (declare (not safe)) (##fx= _g88005_ 3))
                 (apply (lambda (_%key84609%_ _%lst84610%_ _%default84611%_)
                          (let ()
                            (declare (not safe))
                            (agetv__%
                             _%key84609%_
                             _%lst84610%_
                             _%default84611%_)))
                        _g88006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g88006_))))))
    (define aget__%
      (lambda (_%key84564%_ _%lst84566%_ _%default84568%_)
        (let ((_%$e84571%_
               (if (let () (declare (not safe)) (pair? _%lst84566%_))
                   (assoc _%key84564%_ _%lst84566%_)
                   '#f)))
          (if _%$e84571%_
              (cdr _%$e84571%_)
              (if (let () (declare (not safe)) (procedure? _%default84568%_))
                  (let () (_%default84568%_ _%key84564%_))
                  (let () _%default84568%_))))))
    (define aget__0
      (lambda (_%key84579%_ _%lst84580%_)
        (let ((_%default84582%_ '#f))
          (declare (not safe))
          (aget__% _%key84579%_ _%lst84580%_ _%default84582%_))))
    (define aget
      (lambda _g88008_
        (let ((_g88007_ (let () (declare (not safe)) (##length _g88008_))))
          (cond ((let () (declare (not safe)) (##fx= _g88007_ 2))
                 (apply (lambda (_%key84579%_ _%lst84580%_)
                          (let ()
                            (declare (not safe))
                            (aget__0 _%key84579%_ _%lst84580%_)))
                        _g88008_))
                ((let () (declare (not safe)) (##fx= _g88007_ 3))
                 (apply (lambda (_%key84584%_ _%lst84585%_ _%default84586%_)
                          (let ()
                            (declare (not safe))
                            (aget__% _%key84584%_
                                     _%lst84585%_
                                     _%default84586%_)))
                        _g88008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g88008_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key84493%_ _%lst84495%_ _%default84497%_)
        (let _%lp84500%_ ((_%rest84503%_ _%lst84495%_))
          (let* ((_%rest8450584515%_ _%rest84503%_)
                 (_%else8450784523%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default84497%_))
                        (_%default84497%_ _%key84493%_)
                        _%default84497%_)))
                 (_%K8450984532%_
                  (lambda (_%rest84526%_ _%v84527%_ _%k84529%_)
                    (if (eq? _%k84529%_ _%key84493%_)
                        _%v84527%_
                        (let ()
                          (declare (not safe))
                          (_%lp84500%_ _%rest84526%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8450584515%_))
                (let ((_%hd8451084535%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8450584515%_)))
                      (_%tl8451184537%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8450584515%_))))
                  (let ((_%k84540%_ _%hd8451084535%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8451184537%_))
                        (let ((_%hd8451284542%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8451184537%_)))
                              (_%tl8451384544%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8451184537%_))))
                          (let* ((_%v84547%_ _%hd8451284542%_)
                                 (_%rest84549%_ _%tl8451384544%_))
                            (declare (not safe))
                            (_%K8450984532%_
                             _%rest84549%_
                             _%v84547%_
                             _%k84540%_)))
                        (let () (declare (not safe)) (_%else8450784523%_)))))
                (let () (declare (not safe)) (_%else8450784523%_)))))))
    (define pgetq__0
      (lambda (_%key84554%_ _%lst84555%_)
        (let ((_%default84557%_ '#f))
          (declare (not safe))
          (pgetq__% _%key84554%_ _%lst84555%_ _%default84557%_))))
    (define pgetq
      (lambda _g88010_
        (let ((_g88009_ (let () (declare (not safe)) (##length _g88010_))))
          (cond ((let () (declare (not safe)) (##fx= _g88009_ 2))
                 (apply (lambda (_%key84554%_ _%lst84555%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _%key84554%_ _%lst84555%_)))
                        _g88010_))
                ((let () (declare (not safe)) (##fx= _g88009_ 3))
                 (apply (lambda (_%key84559%_ _%lst84560%_ _%default84561%_)
                          (let ()
                            (declare (not safe))
                            (pgetq__%
                             _%key84559%_
                             _%lst84560%_
                             _%default84561%_)))
                        _g88010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g88010_))))))
    (define pgetv__%
      (lambda (_%key84422%_ _%lst84424%_ _%default84426%_)
        (let _%lp84429%_ ((_%rest84432%_ _%lst84424%_))
          (let* ((_%rest8443484444%_ _%rest84432%_)
                 (_%else8443684452%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default84426%_))
                        (_%default84426%_ _%key84422%_)
                        _%default84426%_)))
                 (_%K8443884461%_
                  (lambda (_%rest84455%_ _%v84456%_ _%k84458%_)
                    (if (eqv? _%k84458%_ _%key84422%_)
                        _%v84456%_
                        (let ()
                          (declare (not safe))
                          (_%lp84429%_ _%rest84455%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8443484444%_))
                (let ((_%hd8443984464%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8443484444%_)))
                      (_%tl8444084466%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8443484444%_))))
                  (let ((_%k84469%_ _%hd8443984464%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8444084466%_))
                        (let ((_%hd8444184471%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8444084466%_)))
                              (_%tl8444284473%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8444084466%_))))
                          (let* ((_%v84476%_ _%hd8444184471%_)
                                 (_%rest84478%_ _%tl8444284473%_))
                            (declare (not safe))
                            (_%K8443884461%_
                             _%rest84478%_
                             _%v84476%_
                             _%k84469%_)))
                        (let () (declare (not safe)) (_%else8443684452%_)))))
                (let () (declare (not safe)) (_%else8443684452%_)))))))
    (define pgetv__0
      (lambda (_%key84483%_ _%lst84484%_)
        (let ((_%default84486%_ '#f))
          (declare (not safe))
          (pgetv__% _%key84483%_ _%lst84484%_ _%default84486%_))))
    (define pgetv
      (lambda _g88012_
        (let ((_g88011_ (let () (declare (not safe)) (##length _g88012_))))
          (cond ((let () (declare (not safe)) (##fx= _g88011_ 2))
                 (apply (lambda (_%key84483%_ _%lst84484%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _%key84483%_ _%lst84484%_)))
                        _g88012_))
                ((let () (declare (not safe)) (##fx= _g88011_ 3))
                 (apply (lambda (_%key84488%_ _%lst84489%_ _%default84490%_)
                          (let ()
                            (declare (not safe))
                            (pgetv__%
                             _%key84488%_
                             _%lst84489%_
                             _%default84490%_)))
                        _g88012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g88012_))))))
    (define pget__%
      (lambda (_%key84351%_ _%lst84353%_ _%default84355%_)
        (let _%lp84358%_ ((_%rest84361%_ _%lst84353%_))
          (let* ((_%rest8436384373%_ _%rest84361%_)
                 (_%else8436584381%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _%default84355%_))
                        (_%default84355%_ _%key84351%_)
                        _%default84355%_)))
                 (_%K8436784390%_
                  (lambda (_%rest84384%_ _%v84385%_ _%k84387%_)
                    (if (equal? _%k84387%_ _%key84351%_)
                        _%v84385%_
                        (let ()
                          (declare (not safe))
                          (_%lp84358%_ _%rest84384%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8436384373%_))
                (let ((_%hd8436884393%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8436384373%_)))
                      (_%tl8436984395%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8436384373%_))))
                  (let ((_%k84398%_ _%hd8436884393%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8436984395%_))
                        (let ((_%hd8437084400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8436984395%_)))
                              (_%tl8437184402%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8436984395%_))))
                          (let* ((_%v84405%_ _%hd8437084400%_)
                                 (_%rest84407%_ _%tl8437184402%_))
                            (declare (not safe))
                            (_%K8436784390%_
                             _%rest84407%_
                             _%v84405%_
                             _%k84398%_)))
                        (let () (declare (not safe)) (_%else8436584381%_)))))
                (let () (declare (not safe)) (_%else8436584381%_)))))))
    (define pget__0
      (lambda (_%key84412%_ _%lst84413%_)
        (let ((_%default84415%_ '#f))
          (declare (not safe))
          (pget__% _%key84412%_ _%lst84413%_ _%default84415%_))))
    (define pget
      (lambda _g88014_
        (let ((_g88013_ (let () (declare (not safe)) (##length _g88014_))))
          (cond ((let () (declare (not safe)) (##fx= _g88013_ 2))
                 (apply (lambda (_%key84412%_ _%lst84413%_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _%key84412%_ _%lst84413%_)))
                        _g88014_))
                ((let () (declare (not safe)) (##fx= _g88013_ 3))
                 (apply (lambda (_%key84417%_ _%lst84418%_ _%default84419%_)
                          (let ()
                            (declare (not safe))
                            (pget__% _%key84417%_
                                     _%lst84418%_
                                     _%default84419%_)))
                        _g88014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g88014_))))))
    (define find
      (lambda (_%pred84335%_ _%lst84336%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%pred84335%_))
              (let ((_%pred84340%_ _%pred84335%_))
                (declare (not safe))
                (__find _%pred84340%_ _%lst84336%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@481.13-481.17"
                 'contract:
                 'procedure?
                 'value:
                 _%pred84335%_)
                '#!void)))))
    (define __find
      (lambda (_%pred84318%_ _%lst84319%_)
        (let ()
          (let* ((_%pred84322%_ _%pred84318%_)
                 (_%$e84331%_
                  (let ()
                    (declare (not safe))
                    (__memf _%pred84322%_ _%lst84319%_))))
            (if _%$e84331%_
                (let () (declare (not safe)) (##car _%$e84331%_))
                (let () '#f))))))
    (define memf
      (lambda (_%proc84303%_ _%lst84304%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc84303%_))
              (let ((_%proc84308%_ _%proc84303%_))
                (declare (not safe))
                (__memf _%proc84308%_ _%lst84304%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@486.13-486.17"
                 'contract:
                 'procedure?
                 'value:
                 _%proc84303%_)
                '#!void)))))
    (define __memf
      (lambda (_%proc84253%_ _%lst84254%_)
        (let ((_%proc84257%_ _%proc84253%_))
          (let _%lp84266%_ ((_%rest84268%_ _%lst84254%_))
            (let* ((_%rest8426984277%_ _%rest84268%_)
                   (_%else8427184285%_ (lambda () '#f))
                   (_%K8427384291%_
                    (lambda (_%tl84288%_ _%hd84289%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc84257%_ _%hd84289%_))
                          _%rest84268%_
                          (let ()
                            (declare (not safe))
                            (_%lp84266%_ _%tl84288%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8426984277%_))
                  (let ((_%hd8427484294%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8426984277%_)))
                        (_%tl8427584296%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8426984277%_))))
                    (let* ((_%hd84299%_ _%hd8427484294%_)
                           (_%tl84301%_ _%tl8427584296%_))
                      (declare (not safe))
                      (_%K8427384291%_ _%tl84301%_ _%hd84299%_)))
                  (let () (declare (not safe)) (_%else8427184285%_))))))))
    (define remove1
      (lambda (_%el84206%_ _%lst84208%_)
        (let _%lp84211%_ ((_%rest84214%_ _%lst84208%_) (_%r84216%_ '()))
          (let* ((_%rest8421884226%_ _%rest84214%_)
                 (_%else8422084234%_ (lambda () _%lst84208%_))
                 (_%K8422284241%_
                  (lambda (_%rest84237%_ _%hd84238%_)
                    (if (equal? _%el84206%_ _%hd84238%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest84237%_ _%r84216%_))
                        (let ((__tmp88015 (cons _%hd84238%_ _%r84216%_)))
                          (declare (not safe))
                          (_%lp84211%_ _%rest84237%_ __tmp88015))))))
            (if (let () (declare (not safe)) (##pair? _%rest8421884226%_))
                (let ((_%hd8422384244%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8421884226%_)))
                      (_%tl8422484246%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8421884226%_))))
                  (let* ((_%hd84249%_ _%hd8422384244%_)
                         (_%rest84251%_ _%tl8422484246%_))
                    (declare (not safe))
                    (_%K8422284241%_ _%rest84251%_ _%hd84249%_)))
                (let () (declare (not safe)) (_%else8422084234%_)))))))
    (define remv1
      (lambda (_%el84159%_ _%lst84161%_)
        (let _%lp84164%_ ((_%rest84167%_ _%lst84161%_) (_%r84169%_ '()))
          (let* ((_%rest8417184179%_ _%rest84167%_)
                 (_%else8417384187%_ (lambda () _%lst84161%_))
                 (_%K8417584194%_
                  (lambda (_%rest84190%_ _%hd84191%_)
                    (if (eqv? _%el84159%_ _%hd84191%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest84190%_ _%r84169%_))
                        (let ((__tmp88016 (cons _%hd84191%_ _%r84169%_)))
                          (declare (not safe))
                          (_%lp84164%_ _%rest84190%_ __tmp88016))))))
            (if (let () (declare (not safe)) (##pair? _%rest8417184179%_))
                (let ((_%hd8417684197%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8417184179%_)))
                      (_%tl8417784199%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8417184179%_))))
                  (let* ((_%hd84202%_ _%hd8417684197%_)
                         (_%rest84204%_ _%tl8417784199%_))
                    (declare (not safe))
                    (_%K8417584194%_ _%rest84204%_ _%hd84202%_)))
                (let () (declare (not safe)) (_%else8417384187%_)))))))
    (define remq1
      (lambda (_%el84112%_ _%lst84114%_)
        (let _%lp84117%_ ((_%rest84120%_ _%lst84114%_) (_%r84122%_ '()))
          (let* ((_%rest8412484132%_ _%rest84120%_)
                 (_%else8412684140%_ (lambda () _%lst84114%_))
                 (_%K8412884147%_
                  (lambda (_%rest84143%_ _%hd84144%_)
                    (if (eq? _%el84112%_ _%hd84144%_)
                        (let ()
                          (declare (not safe))
                          (__foldl1 cons _%rest84143%_ _%r84122%_))
                        (let ((__tmp88017 (cons _%hd84144%_ _%r84122%_)))
                          (declare (not safe))
                          (_%lp84117%_ _%rest84143%_ __tmp88017))))))
            (if (let () (declare (not safe)) (##pair? _%rest8412484132%_))
                (let ((_%hd8412984150%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8412484132%_)))
                      (_%tl8413084152%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8412484132%_))))
                  (let* ((_%hd84155%_ _%hd8412984150%_)
                         (_%rest84157%_ _%tl8413084152%_))
                    (declare (not safe))
                    (_%K8412884147%_ _%rest84157%_ _%hd84155%_)))
                (let () (declare (not safe)) (_%else8412684140%_)))))))
    (define remf
      (lambda (_%proc84097%_ _%lst84098%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%proc84097%_))
              (let ((_%proc84102%_ _%proc84097%_))
                (declare (not safe))
                (__remf _%proc84102%_ _%lst84098%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@508.13-508.17"
                 'contract:
                 'procedure?
                 'value:
                 _%proc84097%_)
                '#!void)))))
    (define __remf
      (lambda (_%proc84046%_ _%lst84047%_)
        (let ((_%proc84050%_ _%proc84046%_))
          (let _%lp84059%_ ((_%rest84061%_ _%lst84047%_) (_%r84062%_ '()))
            (let* ((_%rest8406384071%_ _%rest84061%_)
                   (_%else8406584079%_ (lambda () _%lst84047%_))
                   (_%K8406784085%_
                    (lambda (_%rest84082%_ _%hd84083%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc84050%_ _%hd84083%_))
                          (let ()
                            (declare (not safe))
                            (__foldl1 cons _%rest84082%_ _%r84062%_))
                          (let ((__tmp88018 (cons _%hd84083%_ _%r84062%_)))
                            (declare (not safe))
                            (_%lp84059%_ _%rest84082%_ __tmp88018))))))
              (if (let () (declare (not safe)) (##pair? _%rest8406384071%_))
                  (let ((_%hd8406884088%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8406384071%_)))
                        (_%tl8406984090%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8406384071%_))))
                    (let* ((_%hd84093%_ _%hd8406884088%_)
                           (_%rest84095%_ _%tl8406984090%_))
                      (declare (not safe))
                      (_%K8406784085%_ _%rest84095%_ _%hd84093%_)))
                  (let () (declare (not safe)) (_%else8406584079%_))))))))
    (define 1+
      (lambda (_%x84032%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x84032%_))
              (let ((_%x84036%_ _%x84032%_))
                (declare (not safe))
                (__1+ _%x84036%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@517.11-517.12"
                 'contract:
                 'number?
                 'value:
                 _%x84032%_)
                '#!void)))))
    (define __1+
      (lambda (_%x84020%_) (let ((_%x84023%_ _%x84020%_)) (+ _%x84023%_ '1))))
    (define 1-
      (lambda (_%x84006%_)
        (let ()
          (if (let () (declare (not safe)) (number? _%x84006%_))
              (let ((_%x84010%_ _%x84006%_))
                (declare (not safe))
                (__1- _%x84010%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@525.11-525.12"
                 'contract:
                 'number?
                 'value:
                 _%x84006%_)
                '#!void)))))
    (define __1-
      (lambda (_%x83994%_) (let ((_%x83997%_ _%x83994%_)) (- _%x83997%_ '1))))
    (define fx1+
      (lambda (_%x83980%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83980%_))
              (let ((_%x83984%_ _%x83980%_))
                (declare (not safe))
                (__fx1+ _%x83984%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@533.13-533.14"
                 'contract:
                 'fixnum?
                 'value:
                 _%x83980%_)
                '#!void)))))
    (define __fx1+
      (lambda (_%x83968%_)
        (let ((_%x83971%_ _%x83968%_))
          (declare (not safe))
          (##fx+ _%x83971%_ '1))))
    (define fx1-
      (lambda (_%x83954%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83954%_))
              (let ((_%x83958%_ _%x83954%_))
                (declare (not safe))
                (__fx1- _%x83958%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@541.13-541.14"
                 'contract:
                 'fixnum?
                 'value:
                 _%x83954%_)
                '#!void)))))
    (define __fx1-
      (lambda (_%x83942%_)
        (let ((_%x83945%_ _%x83942%_))
          (declare (not safe))
          (##fx- _%x83945%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x83939%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83939%_))
              (let () (declare (not safe)) (##fx>= _%x83939%_ '0))
              '#f))))
    (define fx>0?
      (lambda (_%x83936%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83936%_))
              (let () (declare (not safe)) (##fx> _%x83936%_ '0))
              '#f))))
    (define fx=0?
      (lambda (_%x83933%_)
        (let () (declare (not safe)) (##fx= _%x83933%_ '0))))
    (define fx<0?
      (lambda (_%x83930%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83930%_))
              (let () (declare (not safe)) (##fx< _%x83930%_ '0))
              '#f))))
    (define fx<=0?
      (lambda (_%x83927%_)
        (let ()
          (if (let () (declare (not safe)) (fixnum? _%x83927%_))
              (let () (declare (not safe)) (##fx<= _%x83927%_ '0))
              '#f))))
    (define interned-symbol?
      (lambda (_%x83924%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%x83924%_))
              (let ((__tmp88019 (uninterned-symbol? _%x83924%_)))
                (declare (not safe))
                (not __tmp88019))
              '#f))))
    (define display-as-string
      (lambda (_%x83909%_ _%port83910%_)
        (let ()
          (if (output-port? _%port83910%_)
              (let ((_%port83914%_ _%port83910%_))
                (declare (not safe))
                (__display-as-string _%x83909%_ _%port83914%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@569.28-569.32"
                 'contract:
                 'output-port?
                 'value:
                 _%port83910%_)
                '#!void)))))
    (define __display-as-string
      (lambda (_%x83864%_ _%port83865%_)
        (let ()
          (if (output-port? _%port83865%_)
              (let ((_%port83869%_ _%port83865%_))
                (if (or (let () (declare (not safe)) (string? _%x83864%_))
                        (let () (declare (not safe)) (symbol? _%x83864%_))
                        (let () (declare (not safe)) (keyword? _%x83864%_))
                        (let () (declare (not safe)) (number? _%x83864%_))
                        (let () (declare (not safe)) (char? _%x83864%_)))
                    (let () (display _%x83864%_ _%port83869%_))
                    (if (let () (declare (not safe)) (pair? _%x83864%_))
                        (let ()
                          (let ((__tmp88020 (car _%x83864%_)))
                            (declare (not safe))
                            (__display-as-string __tmp88020 _%port83869%_))
                          (let ((__tmp88021 (cdr _%x83864%_)))
                            (declare (not safe))
                            (__display-as-string __tmp88021 _%port83869%_)))
                        (if (let () (declare (not safe)) (vector? _%x83864%_))
                            (let ()
                              (vector-for-each
                               (lambda (_%g8389383895%_)
                                 (let ()
                                   (declare (not safe))
                                   (__display-as-string
                                    _%g8389383895%_
                                    _%port83869%_)))
                               _%x83864%_))
                            (if (or (let ()
                                      (declare (not safe))
                                      (null? _%x83864%_))
                                    (let ()
                                      (declare (not safe))
                                      (eq? _%x83864%_ '#!void))
                                    (let ()
                                      (declare (not safe))
                                      (eof-object? _%x83864%_))
                                    (let ()
                                      (declare (not safe))
                                      (boolean? _%x83864%_)))
                                (let () '#!void)
                                (let ()
                                  (error '"cannot convert as string"
                                         _%x83864%_)
                                  '#!void))))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@569.28-569.32"
                 'contract:
                 'output-port?
                 'value:
                 _%port83865%_)
                '#!void)))))
    (define as-string__0
      (lambda (_%x83847%_)
        (if (let () (declare (not safe)) (string? _%x83847%_))
            (let () _%x83847%_)
            (if (let () (declare (not safe)) (symbol? _%x83847%_))
                (let () (symbol->string _%x83847%_))
                (if (let () (declare (not safe)) (keyword? _%x83847%_))
                    (let () (keyword->string _%x83847%_))
                    (if (let () (declare (not safe)) (number? _%x83847%_))
                        (let () (number->string _%x83847%_))
                        (let ()
                          (call-with-output-string
                           '()
                           (lambda (_%g8385383855%_)
                             (let ()
                               (declare (not safe))
                               (__display-as-string
                                _%x83847%_
                                _%g8385383855%_)))))))))))
    (define as-string__1
      (lambda _%args83858%_
        (call-with-output-string
         '()
         (lambda (_%g8385983861%_)
           (let ()
             (declare (not safe))
             (__display-as-string _%args83858%_ _%g8385983861%_))))))
    (define as-string
      (lambda _g88023_
        (let ((_g88022_ (let () (declare (not safe)) (##length _g88023_))))
          (cond ((let () (declare (not safe)) (##fx= _g88022_ 1))
                 (apply (lambda (_%x83847%_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _%x83847%_)))
                        _g88023_))
                (#t (apply as-string__1 _g88023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g88023_))))))
    (define make-symbol__0
      (lambda (_%x83843%_)
        (if (let () (declare (not safe)) (interned-symbol? _%x83843%_))
            _%x83843%_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _%x83843%_))))))
    (define make-symbol__1
      (lambda _%args83845%_ (string->symbol (apply as-string _%args83845%_))))
    (define make-symbol
      (lambda _g88025_
        (let ((_g88024_ (let () (declare (not safe)) (##length _g88025_))))
          (cond ((let () (declare (not safe)) (##fx= _g88024_ 1))
                 (apply (lambda (_%x83843%_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _%x83843%_)))
                        _g88025_))
                (#t (apply make-symbol__1 _g88025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g88025_))))))
    (define make-keyword__0
      (lambda (_%x83839%_)
        (if (let () (declare (not safe)) (interned-keyword? _%x83839%_))
            _%x83839%_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _%x83839%_))))))
    (define make-keyword__1
      (lambda _%args83841%_ (string->keyword (apply as-string _%args83841%_))))
    (define make-keyword
      (lambda _g88027_
        (let ((_g88026_ (let () (declare (not safe)) (##length _g88027_))))
          (cond ((let () (declare (not safe)) (##fx= _g88026_ 1))
                 (apply (lambda (_%x83839%_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _%x83839%_)))
                        _g88027_))
                (#t (apply make-keyword__1 _g88027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g88027_))))))
    (define interned-keyword?
      (lambda (_%x83836%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%x83836%_))
              (let ((__tmp88028 (uninterned-keyword? _%x83836%_)))
                (declare (not safe))
                (not __tmp88028))
              '#f))))
    (define symbol->keyword
      (lambda (_%sym83822%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%sym83822%_))
              (let ((_%sym83826%_ _%sym83822%_))
                (declare (not safe))
                (__symbol->keyword _%sym83826%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@612.24-612.27"
                 'contract:
                 'symbol?
                 'value:
                 _%sym83822%_)
                '#!void)))))
    (define __symbol->keyword
      (lambda (_%sym83810%_)
        (let ((_%sym83813%_ _%sym83810%_))
          (if (uninterned-symbol? _%sym83813%_)
              (let ((__tmp88029
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym83813%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp88029))
              (let ((__tmp88030
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym83813%_))))
                (declare (not safe))
                (##string->keyword __tmp88030))))))
    (define keyword->symbol
      (lambda (_%sym83796%_)
        (let ()
          (if (let () (declare (not safe)) (keyword? _%sym83796%_))
              (let ((_%sym83800%_ _%sym83796%_))
                (declare (not safe))
                (__keyword->symbol _%sym83800%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@618.24-618.27"
                 'contract:
                 'keyword?
                 'value:
                 _%sym83796%_)
                '#!void)))))
    (define __keyword->symbol
      (lambda (_%sym83784%_)
        (let ((_%sym83787%_ _%sym83784%_))
          (if (uninterned-keyword? _%sym83787%_)
              (let ((__tmp88031
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym83787%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp88031))
              (let ((__tmp88032
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym83787%_))))
                (declare (not safe))
                (##string->symbol __tmp88032))))))
    (define bytes->string__%
      (lambda (_%bstr83749%_ _%enc83750%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bstr83749%_))
              (let ((_%bstr83754%_ _%bstr83749%_))
                (if (let () (declare (not safe)) (symbol? _%enc83750%_))
                    (let ((_%enc83764%_ _%enc83750%_))
                      (declare (not safe))
                      (__bytes->string__% _%bstr83754%_ _%enc83764%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@625.25-625.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83750%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@624.22-624.26"
                 'contract:
                 'u8vector?
                 'value:
                 _%bstr83749%_)
                '#!void)))))
    (define bytes->string__0
      (lambda (_%bstr83777%_)
        (let ((_%enc83779%_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _%bstr83777%_ _%enc83779%_))))
    (define bytes->string
      (lambda _g88034_
        (let ((_g88033_ (let () (declare (not safe)) (##length _g88034_))))
          (cond ((let () (declare (not safe)) (##fx= _g88033_ 1))
                 (apply (lambda (_%bstr83777%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _%bstr83777%_)))
                        _g88034_))
                ((let () (declare (not safe)) (##fx= _g88033_ 2))
                 (apply (lambda (_%bstr83781%_ _%enc83782%_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _%bstr83781%_ _%enc83782%_)))
                        _g88034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g88034_))))))
    (define __bytes->string__%
      (lambda (_%bstr83708%_ _%enc83709%_)
        (let ()
          (let* ((_%bstr83712%_ _%bstr83708%_) (_%enc83720%_ _%enc83709%_))
            (if (eq? _%enc83720%_ 'UTF-8)
                (let () (declare (not safe)) (##utf8->string _%bstr83712%_))
                (let* ((_%in83729%_
                        (open-input-u8vector
                         (cons 'char-encoding:
                               (cons _%enc83720%_
                                     (cons 'init: (cons _%bstr83712%_ '()))))))
                       (_%len83731%_
                        (let ()
                          (declare (not safe))
                          (##u8vector-length _%bstr83712%_)))
                       (_%out83733%_
                        (let ()
                          (declare (not safe))
                          (##make-string _%len83731%_)))
                       (_%n83735%_
                        (read-substring
                         _%out83733%_
                         '0
                         _%len83731%_
                         _%in83729%_)))
                  (string-shrink! _%out83733%_ _%n83735%_)
                  _%out83733%_))))))
    (define __bytes->string__0
      (lambda (_%bstr83741%_)
        (let ((_%enc83743%_ 'UTF-8))
          (declare (not safe))
          (__bytes->string__% _%bstr83741%_ _%enc83743%_))))
    (define __bytes->string
      (lambda _g88036_
        (let ((_g88035_ (let () (declare (not safe)) (##length _g88036_))))
          (cond ((let () (declare (not safe)) (##fx= _g88035_ 1))
                 (apply (lambda (_%bstr83741%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__0 _%bstr83741%_)))
                        _g88036_))
                ((let () (declare (not safe)) (##fx= _g88035_ 2))
                 (apply (lambda (_%bstr83745%_ _%enc83746%_)
                          (let ()
                            (declare (not safe))
                            (__bytes->string__% _%bstr83745%_ _%enc83746%_)))
                        _g88036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g88036_))))))
    (define string->bytes__%
      (lambda (_%str83672%_ _%enc83673%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83672%_))
              (let ((_%str83677%_ _%str83672%_))
                (if (let () (declare (not safe)) (symbol? _%enc83673%_))
                    (let ((_%enc83687%_ _%enc83673%_))
                      (declare (not safe))
                      (__string->bytes__% _%str83677%_ _%enc83687%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@637.25-637.28"
                       'contract:
                       'symbol?
                       'value:
                       _%enc83673%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@636.22-636.25"
                 'contract:
                 'string?
                 'value:
                 _%str83672%_)
                '#!void)))))
    (define string->bytes__0
      (lambda (_%str83700%_)
        (let ((_%enc83702%_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _%str83700%_ _%enc83702%_))))
    (define string->bytes
      (lambda _g88038_
        (let ((_g88037_ (let () (declare (not safe)) (##length _g88038_))))
          (cond ((let () (declare (not safe)) (##fx= _g88037_ 1))
                 (apply (lambda (_%str83700%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _%str83700%_)))
                        _g88038_))
                ((let () (declare (not safe)) (##fx= _g88037_ 2))
                 (apply (lambda (_%str83704%_ _%enc83705%_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _%str83704%_ _%enc83705%_)))
                        _g88038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g88038_))))))
    (define __string->bytes__%
      (lambda (_%str83640%_ _%enc83641%_)
        (let ()
          (let* ((_%str83644%_ _%str83640%_) (_%enc83652%_ _%enc83641%_))
            (if (eq? _%enc83652%_ 'UTF-8)
                (let () (declare (not safe)) (##string->utf8 _%str83644%_))
                (let ((__tmp88039
                       (let ()
                         (declare (not safe))
                         (##string-length _%str83644%_))))
                  (declare (not safe))
                  (__substring->bytes
                   _%str83644%_
                   '0
                   __tmp88039
                   _%enc83652%_)))))))
    (define __string->bytes__0
      (lambda (_%str83664%_)
        (let ((_%enc83666%_ 'UTF-8))
          (declare (not safe))
          (__string->bytes__% _%str83664%_ _%enc83666%_))))
    (define __string->bytes
      (lambda _g88041_
        (let ((_g88040_ (let () (declare (not safe)) (##length _g88041_))))
          (cond ((let () (declare (not safe)) (##fx= _g88040_ 1))
                 (apply (lambda (_%str83664%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__0 _%str83664%_)))
                        _g88041_))
                ((let () (declare (not safe)) (##fx= _g88040_ 2))
                 (apply (lambda (_%str83668%_ _%enc83669%_)
                          (let ()
                            (declare (not safe))
                            (__string->bytes__% _%str83668%_ _%enc83669%_)))
                        _g88041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g88041_))))))
    (define substring->bytes__%
      (lambda (_%str83588%_ _%start83589%_ _%end83590%_ _%enc83591%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83588%_))
              (let ((_%str83595%_ _%str83588%_))
                (if (let ()
                      (declare (not safe))
                      (nonnegative-fixnum? _%start83589%_))
                    (let ((_%start83605%_ _%start83589%_))
                      (if (let ()
                            (declare (not safe))
                            (nonnegative-fixnum? _%end83590%_))
                          (let ((_%end83615%_ _%end83590%_))
                            (declare (not safe))
                            (__substring->bytes__%
                             _%str83595%_
                             _%start83605%_
                             _%end83615%_
                             _%enc83591%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end83590%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start83589%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@643.25-643.28"
                 'contract:
                 'string?
                 'value:
                 _%str83588%_)
                '#!void)))))
    (define substring->bytes__0
      (lambda (_%str83628%_ _%start83629%_ _%end83630%_)
        (let ((_%enc83632%_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _%str83628%_
           _%start83629%_
           _%end83630%_
           _%enc83632%_))))
    (define substring->bytes
      (lambda _g88043_
        (let ((_g88042_ (let () (declare (not safe)) (##length _g88043_))))
          (cond ((let () (declare (not safe)) (##fx= _g88042_ 3))
                 (apply (lambda (_%str83628%_ _%start83629%_ _%end83630%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _%str83628%_
                             _%start83629%_
                             _%end83630%_)))
                        _g88043_))
                ((let () (declare (not safe)) (##fx= _g88042_ 4))
                 (apply (lambda (_%str83634%_
                                 _%start83635%_
                                 _%end83636%_
                                 _%enc83637%_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _%str83634%_
                             _%start83635%_
                             _%end83636%_
                             _%enc83637%_)))
                        _g88043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g88043_))))))
    (define __substring->bytes__%
      (lambda (_%str83536%_ _%start83537%_ _%end83538%_ _%enc83539%_)
        (let ((_%str83542%_ _%str83536%_))
          (if (let ()
                (declare (not safe))
                (nonnegative-fixnum? _%start83537%_))
              (let ((_%start83551%_ _%start83537%_))
                (if (let ()
                      (declare (not safe))
                      (nonnegative-fixnum? _%end83538%_))
                    (let ((_%end83561%_ _%end83538%_))
                      (if (eq? _%enc83539%_ 'UTF-8)
                          (string->utf8
                           _%str83542%_
                           _%start83551%_
                           _%end83561%_)
                          (let ((_%out83571%_
                                 (open-output-u8vector
                                  (cons 'char-encoding:
                                        (cons _%enc83539%_ '())))))
                            (write-substring
                             _%str83542%_
                             _%start83551%_
                             _%end83561%_
                             _%out83571%_)
                            (get-output-u8vector _%out83571%_))))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@645.25-645.28"
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%end83538%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@644.25-644.30"
                 'contract:
                 'nonnegative-fixnum?
                 'value:
                 _%start83537%_)
                '#!void)))))
    (define __substring->bytes__0
      (lambda (_%str83576%_ _%start83577%_ _%end83578%_)
        (let ((_%enc83580%_ 'UTF-8))
          (declare (not safe))
          (__substring->bytes__%
           _%str83576%_
           _%start83577%_
           _%end83578%_
           _%enc83580%_))))
    (define __substring->bytes
      (lambda _g88045_
        (let ((_g88044_ (let () (declare (not safe)) (##length _g88045_))))
          (cond ((let () (declare (not safe)) (##fx= _g88044_ 3))
                 (apply (lambda (_%str83576%_ _%start83577%_ _%end83578%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__0
                             _%str83576%_
                             _%start83577%_
                             _%end83578%_)))
                        _g88045_))
                ((let () (declare (not safe)) (##fx= _g88044_ 4))
                 (apply (lambda (_%str83582%_
                                 _%start83583%_
                                 _%end83584%_
                                 _%enc83585%_)
                          (let ()
                            (declare (not safe))
                            (__substring->bytes__%
                             _%str83582%_
                             _%start83583%_
                             _%end83584%_
                             _%enc83585%_)))
                        _g88045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g88045_))))))
    (define string-empty?
      (lambda (_%str83521%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83521%_))
              (let ((_%str83525%_ _%str83521%_))
                (declare (not safe))
                (__string-empty? _%str83525%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@654.22-654.25"
                 'contract:
                 'string?
                 'value:
                 _%str83521%_)
                '#!void)))))
    (define __string-empty?
      (lambda (_%str83509%_)
        (let ()
          (let* ((_%str83512%_ _%str83509%_)
                 (__tmp88046
                  (let ()
                    (declare (not safe))
                    (##string-length _%str83512%_))))
            (declare (not safe))
            (##fxzero? __tmp88046)))))
    (define string-index__%
      (lambda (_%str83461%_ _%char83462%_ _%start83463%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83461%_))
              (let ((_%str83467%_ _%str83461%_))
                (if (let () (declare (not safe)) (char? _%char83462%_))
                    (let ((_%char83477%_ _%char83462%_))
                      (if (let ()
                            (declare (not safe))
                            (nonnegative-fixnum? _%start83463%_))
                          (let ((_%start83487%_ _%start83463%_))
                            (declare (not safe))
                            (__string-index__%
                             _%str83467%_
                             _%char83477%_
                             _%start83487%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start83463%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@659.21-659.25"
                       'contract:
                       'char?
                       'value:
                       _%char83462%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@658.21-658.24"
                 'contract:
                 'string?
                 'value:
                 _%str83461%_)
                '#!void)))))
    (define string-index__0
      (lambda (_%str83500%_ _%char83501%_)
        (let ((_%start83503%_ '0))
          (declare (not safe))
          (string-index__% _%str83500%_ _%char83501%_ _%start83503%_))))
    (define string-index
      (lambda _g88048_
        (let ((_g88047_ (let () (declare (not safe)) (##length _g88048_))))
          (cond ((let () (declare (not safe)) (##fx= _g88047_ 2))
                 (apply (lambda (_%str83500%_ _%char83501%_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _%str83500%_ _%char83501%_)))
                        _g88048_))
                ((let () (declare (not safe)) (##fx= _g88047_ 3))
                 (apply (lambda (_%str83505%_ _%char83506%_ _%start83507%_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _%str83505%_
                             _%char83506%_
                             _%start83507%_)))
                        _g88048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g88048_))))))
    (define __string-index__%
      (lambda (_%str83398%_ _%char83399%_ _%start83400%_)
        (let ()
          (let* ((_%str83403%_ _%str83398%_) (_%char83411%_ _%char83399%_))
            (if (let ()
                  (declare (not safe))
                  (nonnegative-fixnum? _%start83400%_))
                (let ()
                  (let* ((_%start83420%_ _%start83400%_)
                         (_%len83430%_
                          (let ()
                            (declare (not safe))
                            (##string-length _%str83403%_))))
                    (let _%lp83432%_ ((_%k83434%_ _%start83420%_))
                      (let ((_%k83436%_ _%k83434%_))
                        (if (let ()
                              (declare (not safe))
                              (##fx< _%k83436%_ _%len83430%_))
                            (if (eq? _%char83411%_
                                     (let ()
                                       (declare (not safe))
                                       (##string-ref _%str83403%_ _%k83436%_)))
                                _%k83436%_
                                (let ((__tmp88049
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k83436%_ '1))))
                                  (declare (not safe))
                                  (_%lp83432%_ __tmp88049)))
                            '#f)))))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   '"\"gerbil/runtime/util.ss\"@660.21-660.26"
                   'contract:
                   'nonnegative-fixnum?
                   'value:
                   _%start83400%_)
                  '#!void))))))
    (define __string-index__0
      (lambda (_%str83451%_ _%char83452%_)
        (let ((_%start83454%_ '0))
          (declare (not safe))
          (__string-index__% _%str83451%_ _%char83452%_ _%start83454%_))))
    (define __string-index
      (lambda _g88051_
        (let ((_g88050_ (let () (declare (not safe)) (##length _g88051_))))
          (cond ((let () (declare (not safe)) (##fx= _g88050_ 2))
                 (apply (lambda (_%str83451%_ _%char83452%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__0 _%str83451%_ _%char83452%_)))
                        _g88051_))
                ((let () (declare (not safe)) (##fx= _g88050_ 3))
                 (apply (lambda (_%str83456%_ _%char83457%_ _%start83458%_)
                          (let ()
                            (declare (not safe))
                            (__string-index__%
                             _%str83456%_
                             _%char83457%_
                             _%start83458%_)))
                        _g88051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g88051_))))))
    (define string-rindex__%
      (lambda (_%str83359%_ _%char83360%_ _%start83361%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83359%_))
              (let ((_%str83365%_ _%str83359%_))
                (if (let () (declare (not safe)) (char? _%char83360%_))
                    (let ((_%char83375%_ _%char83360%_))
                      (declare (not safe))
                      (__string-rindex__%
                       _%str83365%_
                       _%char83375%_
                       _%start83361%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@670.25-670.29"
                       'contract:
                       'char?
                       'value:
                       _%char83360%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@669.22-669.25"
                 'contract:
                 'string?
                 'value:
                 _%str83359%_)
                '#!void)))))
    (define string-rindex__0
      (lambda (_%str83388%_ _%char83389%_)
        (let ((_%start83391%_ '#f))
          (declare (not safe))
          (string-rindex__% _%str83388%_ _%char83389%_ _%start83391%_))))
    (define string-rindex
      (lambda _g88053_
        (let ((_g88052_ (let () (declare (not safe)) (##length _g88053_))))
          (cond ((let () (declare (not safe)) (##fx= _g88052_ 2))
                 (apply (lambda (_%str83388%_ _%char83389%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _%str83388%_ _%char83389%_)))
                        _g88053_))
                ((let () (declare (not safe)) (##fx= _g88052_ 3))
                 (apply (lambda (_%str83393%_ _%char83394%_ _%start83395%_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _%str83393%_
                             _%char83394%_
                             _%start83395%_)))
                        _g88053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g88053_))))))
    (define __string-rindex__%
      (lambda (_%str83301%_ _%char83302%_ _%start83303%_)
        (let ()
          (let* ((_%str83306%_ _%str83301%_) (_%char83314%_ _%char83302%_))
            (let* ((_%len83323%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%str83306%_)))
                   (_%start83325%_
                    (if (let () (declare (not safe)) (fixnum? _%start83303%_))
                        _%start83303%_
                        (let ()
                          (declare (not safe))
                          (##fx- _%len83323%_ '1)))))
              (let _%lp83328%_ ((_%k83330%_ _%start83325%_))
                (let ((_%k83332%_ _%k83330%_))
                  (if (let () (declare (not safe)) (##fx>= _%k83332%_ '0))
                      (if (eq? _%char83314%_
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _%str83306%_ _%k83332%_)))
                          _%k83332%_
                          (let ((__tmp88054
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%k83332%_ '1))))
                            (declare (not safe))
                            (_%lp83328%_ __tmp88054)))
                      '#f))))))))
    (define __string-rindex__0
      (lambda (_%str83349%_ _%char83350%_)
        (let ((_%start83352%_ '#f))
          (declare (not safe))
          (__string-rindex__% _%str83349%_ _%char83350%_ _%start83352%_))))
    (define __string-rindex
      (lambda _g88056_
        (let ((_g88055_ (let () (declare (not safe)) (##length _g88056_))))
          (cond ((let () (declare (not safe)) (##fx= _g88055_ 2))
                 (apply (lambda (_%str83349%_ _%char83350%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__0 _%str83349%_ _%char83350%_)))
                        _g88056_))
                ((let () (declare (not safe)) (##fx= _g88055_ 3))
                 (apply (lambda (_%str83354%_ _%char83355%_ _%start83356%_)
                          (let ()
                            (declare (not safe))
                            (__string-rindex__%
                             _%str83354%_
                             _%char83355%_
                             _%start83356%_)))
                        _g88056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g88056_))))))
    (define string-split
      (lambda (_%str83275%_ _%char83276%_)
        (let ()
          (if (let () (declare (not safe)) (string? _%str83275%_))
              (let ((_%str83280%_ _%str83275%_))
                (if (let () (declare (not safe)) (char? _%char83276%_))
                    (let ((_%char83290%_ _%char83276%_))
                      (declare (not safe))
                      (__string-split _%str83280%_ _%char83290%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@681.37-681.41"
                       'contract:
                       'char?
                       'value:
                       _%char83276%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@681.21-681.24"
                 'contract:
                 'string?
                 'value:
                 _%str83275%_)
                '#!void)))))
    (define __string-split
      (lambda (_%str83216%_ _%char83217%_)
        (let ((_%str83220%_ _%str83216%_))
          (let* ((_%char83228%_ _%char83217%_)
                 (_%len83237%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%str83220%_))))
            (let _%lp83239%_ ((_%start83241%_ '0) (_%r83242%_ '()))
              (let ()
                (let* ((_%start83245%_ _%start83241%_)
                       (_%$e83258%_
                        (let ()
                          (declare (not safe))
                          (__string-index
                           _%str83220%_
                           _%char83228%_
                           _%start83245%_))))
                  (if _%$e83258%_
                      ((lambda (_%end83261%_)
                         (let ((_%end83263%_ _%end83261%_))
                           (let ((__tmp88058
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%end83263%_ '1)))
                                 (__tmp88057
                                  (cons (let ()
                                          (declare (not safe))
                                          (##substring
                                           _%str83220%_
                                           _%start83245%_
                                           _%end83263%_))
                                        _%r83242%_)))
                             (declare (not safe))
                             (_%lp83239%_ __tmp88058 __tmp88057))))
                       _%$e83258%_)
                      (if (let ()
                            (declare (not safe))
                            (##fx< _%start83245%_ _%len83237%_))
                          (let ((__tmp88059
                                 (list (let ()
                                         (declare (not safe))
                                         (##substring
                                          _%str83220%_
                                          _%start83245%_
                                          _%len83237%_)))))
                            (declare (not safe))
                            (__foldl1 cons __tmp88059 _%r83242%_))
                          (let () (reverse! _%r83242%_)))))))))))
    (define string-join
      (lambda (_%strs83066%_ _%join83067%_)
        (let ()
          (letrec ((_%join-length83070%_
                    (lambda (_%strs83154%_ _%jlen83155%_)
                      (let _%lp83157%_ ((_%rest83159%_ _%strs83154%_)
                                        (_%len83160%_ '0))
                        (let ((_%len83162%_ _%len83160%_))
                          (let* ((_%rest8317083178%_ _%rest83159%_)
                                 (_%else8317283186%_ (lambda () '0))
                                 (_%K8317483204%_
                                  (lambda (_%rest83189%_ _%hd83190%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (string? _%hd83190%_))
                                        (let ((_%hd83192%_ _%hd83190%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (pair? _%rest83189%_))
                                              (let ((__tmp88060
                                                     (fx+ (let ()
                                                            (declare
                                                              (not safe))
                                                            (##string-length
                                                             _%hd83192%_))
                                                          _%jlen83155%_
                                                          _%len83162%_)))
                                                (declare (not safe))
                                                (_%lp83157%_
                                                 _%rest83189%_
                                                 __tmp88060))
                                              (let ((__tmp88061
                                                     (let ()
                                                       (declare (not safe))
                                                       (##string-length
                                                        _%hd83192%_))))
                                                (declare (not safe))
                                                (##fx+ __tmp88061
                                                       _%len83162%_))))
                                        (error '"expected string"
                                               _%hd83190%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest8317083178%_))
                                (let ((_%hd8317583207%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest8317083178%_)))
                                      (_%tl8317683209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest8317083178%_))))
                                  (let* ((_%hd83212%_ _%hd8317583207%_)
                                         (_%rest83214%_ _%tl8317683209%_))
                                    (declare (not safe))
                                    (_%K8317483204%_
                                     _%rest83214%_
                                     _%hd83212%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else8317283186%_)))))))))
            (let* ((_%join83075%_
                    (if (let () (declare (not safe)) (char? _%join83067%_))
                        (let () (declare (not safe)) (##string _%join83067%_))
                        (if (let ()
                              (declare (not safe))
                              (string? _%join83067%_))
                            (let () _%join83067%_)
                            (let ()
                              (error '"expected string or char"
                                     _%join83067%_)))))
                   (_%jlen83077%_
                    (let ()
                      (declare (not safe))
                      (##string-length _%join83075%_)))
                   (_%olen83079%_
                    (let ()
                      (declare (not safe))
                      (_%join-length83070%_ _%strs83066%_ _%jlen83077%_)))
                   (_%ostr83081%_
                    (let ()
                      (declare (not safe))
                      (##make-string _%olen83079%_))))
              (let _%lp83084%_ ((_%rest83086%_ _%strs83066%_) (_%k83087%_ '0))
                (let ((_%k83090%_ _%k83087%_))
                  (let* ((_%rest8310683114%_ _%rest83086%_)
                         (_%else8310883122%_ (lambda () '""))
                         (_%K8311083142%_
                          (lambda (_%rest83125%_ _%hd83126%_)
                            (let* ((_%hd83128%_ _%hd83126%_)
                                   (_%hdlen83140%_
                                    (let ()
                                      (declare (not safe))
                                      (##string-length _%hd83128%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _%rest83125%_))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##substring-move!
                                       _%hd83128%_
                                       '0
                                       _%hdlen83140%_
                                       _%ostr83081%_
                                       _%k83090%_))
                                    (let ((__tmp88062
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%k83090%_
                                                    _%hdlen83140%_))))
                                      (declare (not safe))
                                      (##substring-move!
                                       _%join83075%_
                                       '0
                                       _%jlen83077%_
                                       _%ostr83081%_
                                       __tmp88062))
                                    (let ((__tmp88063
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%k83090%_
                                                    _%hdlen83140%_
                                                    _%jlen83077%_))))
                                      (declare (not safe))
                                      (_%lp83084%_ _%rest83125%_ __tmp88063)))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##substring-move!
                                       _%hd83128%_
                                       '0
                                       _%hdlen83140%_
                                       _%ostr83081%_
                                       _%k83090%_))
                                    _%ostr83081%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest8310683114%_))
                        (let ((_%hd8311183145%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest8310683114%_)))
                              (_%tl8311283147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest8310683114%_))))
                          (let* ((_%hd83150%_ _%hd8311183145%_)
                                 (_%rest83152%_ _%tl8311283147%_))
                            (declare (not safe))
                            (_%K8311083142%_ _%rest83152%_ _%hd83150%_)))
                        (let ()
                          (declare (not safe))
                          (_%else8310883122%_)))))))))))
    (define read-u8vector__%
      (lambda (_%bytes82992%_ _%port82993%_ _%start82994%_ _%end82995%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82992%_))
              (let ((_%bytes82999%_ _%bytes82992%_))
                (if (input-port? _%port82993%_)
                    (let ((_%port83009%_ _%port82993%_))
                      (if ((lambda (_%o83018%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o83018%_))
                                  (let ()
                                    (declare (not safe))
                                    (##fx>= _%o83018%_ '0))
                                  (let ((__tmp88064
                                         (let ()
                                           (declare (not safe))
                                           (##u8vector-length
                                            _%bytes82999%_))))
                                    (declare (not safe))
                                    (##fx< _%o83018%_ __tmp88064))))
                           _%start82994%_)
                          (let ((_%start83022%_ _%start82994%_))
                            (if ((lambda (_%o83031%_)
                                   (and (let ()
                                          (declare (not safe))
                                          (fixnum? _%o83031%_))
                                        (fx<= _%start83022%_
                                              _%o83031%_
                                              (let ()
                                                (declare (not safe))
                                                (##u8vector-length
                                                 _%bytes82999%_)))))
                                 _%end82995%_)
                                (let ((_%end83035%_ _%end82995%_))
                                  (declare (not safe))
                                  (__read-u8vector__%
                                   _%bytes82999%_
                                   _%port83009%_
                                   _%start83022%_
                                   _%end83035%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   '"\"gerbil/runtime/util.ss\"@748.22-748.25"
                                   'contract:
                                   '(in-range-inclusive?
                                     start
                                     (u8vector-length bytes))
                                   'value:
                                   _%end82995%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                             'contract:
                             '(in-range? 0 (u8vector-length bytes))
                             'value:
                             _%start82994%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                       'contract:
                       'input-port?
                       'value:
                       _%port82993%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@744.22-744.27"
                 'contract:
                 'u8vector?
                 'value:
                 _%bytes82992%_)
                '#!void)))))
    (define read-u8vector__0
      (lambda (_%bytes83048%_ _%port83049%_)
        (let* ((_%start83051%_ '0)
               (_%end83053%_ (u8vector-length _%bytes83048%_)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes83048%_
           _%port83049%_
           _%start83051%_
           _%end83053%_))))
    (define read-u8vector__1
      (lambda (_%bytes83055%_ _%port83056%_ _%start83057%_)
        (let ((_%end83059%_ (u8vector-length _%bytes83055%_)))
          (declare (not safe))
          (read-u8vector__%
           _%bytes83055%_
           _%port83056%_
           _%start83057%_
           _%end83059%_))))
    (define read-u8vector
      (lambda _g88066_
        (let ((_g88065_ (let () (declare (not safe)) (##length _g88066_))))
          (cond ((let () (declare (not safe)) (##fx= _g88065_ 2))
                 (apply (lambda (_%bytes83048%_ _%port83049%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__0 _%bytes83048%_ _%port83049%_)))
                        _g88066_))
                ((let () (declare (not safe)) (##fx= _g88065_ 3))
                 (apply (lambda (_%bytes83055%_ _%port83056%_ _%start83057%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__1
                             _%bytes83055%_
                             _%port83056%_
                             _%start83057%_)))
                        _g88066_))
                ((let () (declare (not safe)) (##fx= _g88065_ 4))
                 (apply (lambda (_%bytes83061%_
                                 _%port83062%_
                                 _%start83063%_
                                 _%end83064%_)
                          (let ()
                            (declare (not safe))
                            (read-u8vector__%
                             _%bytes83061%_
                             _%port83062%_
                             _%start83063%_
                             _%end83064%_)))
                        _g88066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g88066_))))))
    (define __read-u8vector__%
      (lambda (_%bytes82919%_ _%port82920%_ _%start82921%_ _%end82922%_)
        (let ((_%bytes82925%_ _%bytes82919%_))
          (if (input-port? _%port82920%_)
              (let ((_%port82934%_ _%port82920%_))
                (if ((lambda (_%o82943%_)
                       (and (let () (declare (not safe)) (fixnum? _%o82943%_))
                            (let ()
                              (declare (not safe))
                              (##fx>= _%o82943%_ '0))
                            (let ((__tmp88067
                                   (let ()
                                     (declare (not safe))
                                     (##u8vector-length _%bytes82925%_))))
                              (declare (not safe))
                              (##fx< _%o82943%_ __tmp88067))))
                     _%start82921%_)
                    (let ((_%start82947%_ _%start82921%_))
                      (if ((lambda (_%o82956%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o82956%_))
                                  (fx<= _%start82947%_
                                        _%o82956%_
                                        (let ()
                                          (declare (not safe))
                                          (##u8vector-length
                                           _%bytes82925%_)))))
                           _%end82922%_)
                          (let ((_%end82960%_ _%end82922%_))
                            (declare (not safe))
                            (##read-subu8vector
                             _%bytes82925%_
                             _%start82947%_
                             _%end82960%_
                             _%port82934%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@748.22-748.25"
                             'contract:
                             '(in-range-inclusive?
                               start
                               (u8vector-length bytes))
                             'value:
                             _%end82922%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@746.22-746.27"
                       'contract:
                       '(in-range? 0 (u8vector-length bytes))
                       'value:
                       _%start82921%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@745.22-745.26"
                 'contract:
                 'input-port?
                 'value:
                 _%port82920%_)
                '#!void)))))
    (define __read-u8vector__0
      (lambda (_%bytes82973%_ _%port82974%_)
        (let* ((_%start82976%_ '0)
               (_%end82978%_ (u8vector-length _%bytes82973%_)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82973%_
           _%port82974%_
           _%start82976%_
           _%end82978%_))))
    (define __read-u8vector__1
      (lambda (_%bytes82980%_ _%port82981%_ _%start82982%_)
        (let ((_%end82984%_ (u8vector-length _%bytes82980%_)))
          (declare (not safe))
          (__read-u8vector__%
           _%bytes82980%_
           _%port82981%_
           _%start82982%_
           _%end82984%_))))
    (define __read-u8vector
      (lambda _g88069_
        (let ((_g88068_ (let () (declare (not safe)) (##length _g88069_))))
          (cond ((let () (declare (not safe)) (##fx= _g88068_ 2))
                 (apply (lambda (_%bytes82973%_ _%port82974%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__0 _%bytes82973%_ _%port82974%_)))
                        _g88069_))
                ((let () (declare (not safe)) (##fx= _g88068_ 3))
                 (apply (lambda (_%bytes82980%_ _%port82981%_ _%start82982%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__1
                             _%bytes82980%_
                             _%port82981%_
                             _%start82982%_)))
                        _g88069_))
                ((let () (declare (not safe)) (##fx= _g88068_ 4))
                 (apply (lambda (_%bytes82986%_
                                 _%port82987%_
                                 _%start82988%_
                                 _%end82989%_)
                          (let ()
                            (declare (not safe))
                            (__read-u8vector__%
                             _%bytes82986%_
                             _%port82987%_
                             _%start82988%_
                             _%end82989%_)))
                        _g88069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g88069_))))))
    (define write-u8vector__%
      (lambda (_%bytes82844%_ _%port82845%_ _%start82846%_ _%end82847%_)
        (let ()
          (if (let () (declare (not safe)) (u8vector? _%bytes82844%_))
              (let ((_%bytes82851%_ _%bytes82844%_))
                (if (output-port? _%port82845%_)
                    (let ((_%port82861%_ _%port82845%_))
                      (if ((lambda (_%o82870%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o82870%_))
                                  (let ()
                                    (declare (not safe))
                                    (##fx>= _%o82870%_ '0))
                                  (let ((__tmp88070
                                         (let ()
                                           (declare (not safe))
                                           (##u8vector-length
                                            _%bytes82851%_))))
                                    (declare (not safe))
                                    (##fx< _%o82870%_ __tmp88070))))
                           _%start82846%_)
                          (let ((_%start82874%_ _%start82846%_))
                            (if ((lambda (_%o82883%_)
                                   (and (let ()
                                          (declare (not safe))
                                          (fixnum? _%o82883%_))
                                        (fx<= _%start82874%_
                                              _%o82883%_
                                              (let ()
                                                (declare (not safe))
                                                (##u8vector-length
                                                 _%bytes82851%_)))))
                                 _%end82847%_)
                                (let ((_%end82887%_ _%end82847%_))
                                  (declare (not safe))
                                  (__write-u8vector__%
                                   _%bytes82851%_
                                   _%port82861%_
                                   _%start82874%_
                                   _%end82887%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   '"\"gerbil/runtime/util.ss\"@758.23-758.26"
                                   'contract:
                                   '(in-range-inclusive?
                                     start
                                     (u8vector-length bytes))
                                   'value:
                                   _%end82847%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                             'contract:
                             '(in-range? 0 (u8vector-length bytes))
                             'value:
                             _%start82846%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                       'contract:
                       'output-port?
                       'value:
                       _%port82845%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@754.23-754.28"
                 'contract:
                 'u8vector?
                 'value:
                 _%bytes82844%_)
                '#!void)))))
    (define write-u8vector__0
      (lambda (_%bytes82900%_ _%port82901%_)
        (let* ((_%start82903%_ '0)
               (_%end82905%_ (u8vector-length _%bytes82900%_)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82900%_
           _%port82901%_
           _%start82903%_
           _%end82905%_))))
    (define write-u8vector__1
      (lambda (_%bytes82907%_ _%port82908%_ _%start82909%_)
        (let ((_%end82911%_ (u8vector-length _%bytes82907%_)))
          (declare (not safe))
          (write-u8vector__%
           _%bytes82907%_
           _%port82908%_
           _%start82909%_
           _%end82911%_))))
    (define write-u8vector
      (lambda _g88072_
        (let ((_g88071_ (let () (declare (not safe)) (##length _g88072_))))
          (cond ((let () (declare (not safe)) (##fx= _g88071_ 2))
                 (apply (lambda (_%bytes82900%_ _%port82901%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__0 _%bytes82900%_ _%port82901%_)))
                        _g88072_))
                ((let () (declare (not safe)) (##fx= _g88071_ 3))
                 (apply (lambda (_%bytes82907%_ _%port82908%_ _%start82909%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__1
                             _%bytes82907%_
                             _%port82908%_
                             _%start82909%_)))
                        _g88072_))
                ((let () (declare (not safe)) (##fx= _g88071_ 4))
                 (apply (lambda (_%bytes82913%_
                                 _%port82914%_
                                 _%start82915%_
                                 _%end82916%_)
                          (let ()
                            (declare (not safe))
                            (write-u8vector__%
                             _%bytes82913%_
                             _%port82914%_
                             _%start82915%_
                             _%end82916%_)))
                        _g88072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g88072_))))))
    (define __write-u8vector__%
      (lambda (_%bytes82771%_ _%port82772%_ _%start82773%_ _%end82774%_)
        (let ((_%bytes82777%_ _%bytes82771%_))
          (if (output-port? _%port82772%_)
              (let ((_%port82786%_ _%port82772%_))
                (if ((lambda (_%o82795%_)
                       (and (let () (declare (not safe)) (fixnum? _%o82795%_))
                            (let ()
                              (declare (not safe))
                              (##fx>= _%o82795%_ '0))
                            (let ((__tmp88073
                                   (let ()
                                     (declare (not safe))
                                     (##u8vector-length _%bytes82777%_))))
                              (declare (not safe))
                              (##fx< _%o82795%_ __tmp88073))))
                     _%start82773%_)
                    (let ((_%start82799%_ _%start82773%_))
                      (if ((lambda (_%o82808%_)
                             (and (let ()
                                    (declare (not safe))
                                    (fixnum? _%o82808%_))
                                  (fx<= _%start82799%_
                                        _%o82808%_
                                        (let ()
                                          (declare (not safe))
                                          (##u8vector-length
                                           _%bytes82777%_)))))
                           _%end82774%_)
                          (let ((_%end82812%_ _%end82774%_))
                            (declare (not safe))
                            (##write-subu8vector
                             _%bytes82777%_
                             _%start82799%_
                             _%end82812%_
                             _%port82786%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/util.ss\"@758.23-758.26"
                             'contract:
                             '(in-range-inclusive?
                               start
                               (u8vector-length bytes))
                             'value:
                             _%end82774%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/util.ss\"@756.23-756.28"
                       'contract:
                       '(in-range? 0 (u8vector-length bytes))
                       'value:
                       _%start82773%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/util.ss\"@755.23-755.27"
                 'contract:
                 'output-port?
                 'value:
                 _%port82772%_)
                '#!void)))))
    (define __write-u8vector__0
      (lambda (_%bytes82825%_ _%port82826%_)
        (let* ((_%start82828%_ '0)
               (_%end82830%_ (u8vector-length _%bytes82825%_)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82825%_
           _%port82826%_
           _%start82828%_
           _%end82830%_))))
    (define __write-u8vector__1
      (lambda (_%bytes82832%_ _%port82833%_ _%start82834%_)
        (let ((_%end82836%_ (u8vector-length _%bytes82832%_)))
          (declare (not safe))
          (__write-u8vector__%
           _%bytes82832%_
           _%port82833%_
           _%start82834%_
           _%end82836%_))))
    (define __write-u8vector
      (lambda _g88075_
        (let ((_g88074_ (let () (declare (not safe)) (##length _g88075_))))
          (cond ((let () (declare (not safe)) (##fx= _g88074_ 2))
                 (apply (lambda (_%bytes82825%_ _%port82826%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__0
                             _%bytes82825%_
                             _%port82826%_)))
                        _g88075_))
                ((let () (declare (not safe)) (##fx= _g88074_ 3))
                 (apply (lambda (_%bytes82832%_ _%port82833%_ _%start82834%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__1
                             _%bytes82832%_
                             _%port82833%_
                             _%start82834%_)))
                        _g88075_))
                ((let () (declare (not safe)) (##fx= _g88074_ 4))
                 (apply (lambda (_%bytes82838%_
                                 _%port82839%_
                                 _%start82840%_
                                 _%end82841%_)
                          (let ()
                            (declare (not safe))
                            (__write-u8vector__%
                             _%bytes82838%_
                             _%port82839%_
                             _%start82840%_
                             _%end82841%_)))
                        _g88075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g88075_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag82739%_
               _%dbg-exprs82740%_
               _%dbg-thunks82741%_
               _%expr82742%_
               _%thunk82743%_)
        (letrec ((_%o82745%_ (current-output-port))
                 (_%e82746%_ (current-error-port))
                 (_%p82747%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f82748%_
                  (lambda ()
                    (force-output _%o82745%_)
                    (force-output _%e82746%_)))
                 (_%d82749%_
                  (lambda (_%x82756%_) (display _%x82756%_ _%e82746%_)))
                 (_%w82750%_
                  (lambda (_%x82758%_) (_%p82747%_ _%x82758%_ _%e82746%_)))
                 (_%n82751%_ (lambda () (newline _%e82746%_)))
                 (_%v82752%_
                  (lambda (_%l82761%_)
                    (for-each
                     (lambda (_%x82763%_)
                       (let () (declare (not safe)) (_%d82749%_ '" "))
                       (let () (declare (not safe)) (_%w82750%_ _%x82763%_)))
                     _%l82761%_)
                    (let () (declare (not safe)) (_%n82751%_))))
                 (_%x82753%_
                  (lambda (_%expr82765%_ _%thunk82766%_)
                    (let () (declare (not safe)) (_%f82748%_))
                    (let () (declare (not safe)) (_%d82749%_ '"  "))
                    (let () (declare (not safe)) (_%w82750%_ _%expr82765%_))
                    (let () (declare (not safe)) (_%d82749%_ '" =>"))
                    (call-with-values
                     _%thunk82766%_
                     (lambda _%x82768%_
                       (let () (declare (not safe)) (_%v82752%_ _%x82768%_))
                       (let () (declare (not safe)) (_%f82748%_))
                       (apply values _%x82768%_))))))
          (if _%tag82739%_
              (begin
                (if (let () (declare (not safe)) (eq? _%tag82739%_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_%f82748%_))
                      (let () (declare (not safe)) (_%d82749%_ _%tag82739%_))
                      (let () (declare (not safe)) (_%n82751%_))))
                (for-each _%x82753%_ _%dbg-exprs82740%_ _%dbg-thunks82741%_)
                (if _%thunk82743%_
                    (let ()
                      (declare (not safe))
                      (_%x82753%_ _%expr82742%_ _%thunk82743%_))
                    '#!void))
              (if _%thunk82743%_ (_%thunk82743%_) '#!void)))))))
