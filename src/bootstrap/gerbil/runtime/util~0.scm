(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1713000275)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args87973%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args87973%_))
          (newline))))
    (define display*
      (lambda _%args87970%_
        (let () (declare (not safe)) (##for-each display _%args87970%_))))
    (define file-newer?
      (lambda (_%file187945%_ _%file287946%_)
        (if (string? _%file187945%_)
            (let ((_%file187950%_ _%file187945%_))
              (if (string? _%file287946%_)
                  (let ((_%file287960%_ _%file287946%_))
                    (__file-newer? _%file187950%_ _%file287960%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@64.20-64.25"
                     'contract:
                     'string?
                     'value:
                     _%file287946%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@63.20-63.25"
               'contract:
               'string?
               'value:
               _%file187945%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file187893%_ _%file287894%_)
        (let* ((_%file187897%_ _%file187893%_) (_%file287905%_ _%file287894%_))
          (letrec ((_%modification-time87914%_
                    (lambda (_%file87933%_)
                      (let ((_%file87936%_ _%file87933%_))
                        (_%__modification-time87915%_ _%file87936%_))))
                   (_%__modification-time87915%_
                    (lambda (_%file87917%_)
                      (let* ((_%file87920%_ _%file87917%_)
                             (__tmp89703
                              (let ((__tmp89704
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file87920%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp89704))))
                        (declare (not safe))
                        (##time->seconds __tmp89703)))))
            (let ((__tmp89706 (_%__modification-time87915%_ _%file187897%_))
                  (__tmp89705 (_%__modification-time87915%_ _%file287905%_)))
              (declare (not safe))
              (##fl> __tmp89706 __tmp89705))))))
    (define create-directory*__%
      (lambda (_%dir87858%_ _%perms87859%_)
        (if (string? _%dir87858%_)
            (let ((_%dir87863%_ _%dir87858%_))
              (if (fixnum? _%perms87859%_)
                  (let ((_%perms87873%_ _%perms87859%_))
                    (__create-directory*__% _%dir87863%_ _%perms87873%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.26-75.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms87859%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.26-74.29"
               'contract:
               'string?
               'value:
               _%dir87858%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir87886%_)
        (let ((_%perms87888%_ '493))
          (create-directory*__% _%dir87886%_ _%perms87888%_))))
    (define create-directory*
      (lambda _g89708_
        (let ((_g89707_ (let () (declare (not safe)) (##length _g89708_))))
          (cond ((let () (declare (not safe)) (##fx= _g89707_ 1))
                 (apply create-directory*__0 _g89708_))
                ((let () (declare (not safe)) (##fx= _g89707_ 2))
                 (apply create-directory*__% _g89708_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g89708_))))))
    (define __create-directory*__%
      (lambda (_%dir87782%_ _%perms87783%_)
        (let* ((_%dir87786%_ _%dir87782%_) (_%perms87794%_ _%perms87783%_))
          (letrec ((_%create187803%_
                    (lambda (_%path87835%_)
                      (let ((_%path87838%_ _%path87835%_))
                        (_%__create187804%_ _%path87838%_))))
                   (_%__create187804%_
                    (lambda (_%path87816%_)
                      (let ((_%path87819%_ _%path87816%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path87819%_))
                            (if (eq? (file-type _%path87819%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path87819%_))
                            (if _%perms87794%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path87819%_
                                             (cons 'permissions:
                                                   (cons _%perms87794%_
                                                         '())))))
                                (create-directory _%path87819%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir87786%_))
                '#!void
                (let _%lp87806%_ ((_%start87808%_ '0))
                  (let ((_%$e87810%_
                         (__string-index__% _%dir87786%_ '#\/ _%start87808%_)))
                    (if _%$e87810%_
                        ((lambda (_%x87813%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x87813%_ '0))
                               (_%__create187804%_
                                (substring _%dir87786%_ '0 _%x87813%_))
                               '#!void)
                           (_%lp87806%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x87813%_ '1))))
                         _%$e87810%_)
                        (_%__create187804%_ _%dir87786%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir87850%_)
        (let ((_%perms87852%_ '493))
          (__create-directory*__% _%dir87850%_ _%perms87852%_))))
    (define __create-directory*
      (lambda _g89710_
        (let ((_g89709_ (let () (declare (not safe)) (##length _g89710_))))
          (cond ((let () (declare (not safe)) (##fx= _g89709_ 1))
                 (apply __create-directory*__0 _g89710_))
                ((let () (declare (not safe)) (##fx= _g89709_ 2))
                 (apply __create-directory*__% _g89710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g89710_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore87778%_ '#t))
    (define true? (lambda (_%obj87775%_) (eq? _%obj87775%_ '#t)))
    (define false (lambda _%ignore87772%_ '#f))
    (define void (lambda _%ignore87769%_ '#!void))
    (define void? (lambda (_%obj87766%_) (eq? _%obj87766%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj87763%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj87763%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj87760%_) (eq? _%obj87760%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj87757%_) (eq? _%obj87757%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj87754%_) (eq? _%obj87754%_ '#!optional)))
    (define immediate?
      (lambda (_%obj87749%_)
        (let* ((_%t87752%_ (let () (declare (not safe)) (##type _%obj87749%_)))
               (__tmp89711
                (let () (declare (not safe)) (##fxand _%t87752%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp89711))))
    (define nonnegative-fixnum?
      (lambda (_%obj87746%_)
        (if (fixnum? _%obj87746%_)
            (let () (declare (not safe)) (##fx>= _%obj87746%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj87740%_)
        (let ((_%$e87743%_ (pair? _%obj87740%_)))
          (if _%$e87743%_ _%$e87743%_ (null? _%obj87740%_)))))
    (define values-count
      (lambda (_%obj87737%_)
        (if (let () (declare (not safe)) (##values? _%obj87737%_))
            (let () (declare (not safe)) (##vector-length _%obj87737%_))
            '1)))
    (define values-ref
      (lambda (_%obj87722%_ _%k87723%_)
        (if (fixnum? _%k87723%_)
            (let ((_%k87727%_ _%k87723%_))
              (__values-ref _%obj87722%_ _%k87727%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@200.23-200.24"
               'contract:
               'fixnum?
               'value:
               _%k87723%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj87709%_ _%k87710%_)
        (let ((_%k87713%_ _%k87710%_))
          (if (let () (declare (not safe)) (##values? _%obj87709%_))
              (let ()
                (declare (not safe))
                (##vector-ref _%obj87709%_ _%k87713%_))
              _%obj87709%_))))
    (define values->list
      (lambda (_%obj87706%_)
        (if (let () (declare (not safe)) (##values? _%obj87706%_))
            (let () (declare (not safe)) (##vector->list _%obj87706%_))
            (list _%obj87706%_))))
    (define foldl1
      (lambda (_%f87690%_ _%iv87691%_ _%lst87692%_)
        (if (procedure? _%f87690%_)
            (let ((_%f87696%_ _%f87690%_))
              (__foldl1 _%f87696%_ _%iv87691%_ _%lst87692%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@223.15-223.16"
               'contract:
               'procedure?
               'value:
               _%f87690%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f87638%_ _%iv87639%_ _%lst87640%_)
        (let ((_%f87643%_ _%f87638%_))
          (let _%lp87652%_ ((_%rest87654%_ _%lst87640%_)
                            (_%r87655%_ _%iv87639%_))
            (let* ((_%rest8765687664%_ _%rest87654%_)
                   (_%else8765887672%_ (lambda () _%r87655%_))
                   (_%K8766087678%_
                    (lambda (_%rest87675%_ _%x87676%_)
                      (_%lp87652%_
                       _%rest87675%_
                       (let ()
                         (declare (not safe))
                         (_%f87643%_ _%x87676%_ _%r87655%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8765687664%_))
                  (let ((_%hd8766187681%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8765687664%_)))
                        (_%tl8766287683%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8765687664%_))))
                    (let* ((_%x87686%_ _%hd8766187681%_)
                           (_%rest87688%_ _%tl8766287683%_))
                      (_%K8766087678%_ _%rest87688%_ _%x87686%_)))
                  (_%else8765887672%_)))))))
    (define foldl2
      (lambda (_%f87621%_ _%iv87622%_ _%lst187623%_ _%lst287624%_)
        (if (procedure? _%f87621%_)
            (let ((_%f87628%_ _%f87621%_))
              (__foldl2 _%f87628%_ _%iv87622%_ _%lst187623%_ _%lst287624%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@230.15-230.16"
               'contract:
               'procedure?
               'value:
               _%f87621%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f87534%_ _%iv87535%_ _%lst187536%_ _%lst287537%_)
        (let ((_%f87540%_ _%f87534%_))
          (let _%lp87549%_ ((_%rest187551%_ _%lst187536%_)
                            (_%rest287552%_ _%lst287537%_)
                            (_%r87553%_ _%iv87535%_))
            (let* ((_%rest18755487562%_ _%rest187551%_)
                   (_%else8755687570%_ (lambda () _%r87553%_))
                   (_%K8755887609%_
                    (lambda (_%rest187573%_ _%x187574%_)
                      (let* ((_%rest28757587583%_ _%rest287552%_)
                             (_%else8757787591%_ (lambda () _%r87553%_))
                             (_%K8757987597%_
                              (lambda (_%rest287594%_ _%x287595%_)
                                (_%lp87549%_
                                 _%rest187573%_
                                 _%rest287594%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f87540%_
                                    _%x187574%_
                                    _%x287595%_
                                    _%r87553%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28757587583%_))
                            (let ((_%hd8758087600%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28757587583%_)))
                                  (_%tl8758187602%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28757587583%_))))
                              (let* ((_%x287605%_ _%hd8758087600%_)
                                     (_%rest287607%_ _%tl8758187602%_))
                                (_%K8757987597%_ _%rest287607%_ _%x287605%_)))
                            (_%else8757787591%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18755487562%_))
                  (let ((_%hd8755987612%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18755487562%_)))
                        (_%tl8756087614%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18755487562%_))))
                    (let* ((_%x187617%_ _%hd8755987612%_)
                           (_%rest187619%_ _%tl8756087614%_))
                      (_%K8755887609%_ _%rest187619%_ _%x187617%_)))
                  (_%else8755687570%_)))))))
    (define foldl
      (lambda _g89713_
        (let ((_g89712_ (let () (declare (not safe)) (##length _g89713_))))
          (cond ((let () (declare (not safe)) (##fx= _g89712_ 3))
                 (apply foldl1 _g89713_))
                ((let () (declare (not safe)) (##fx= _g89712_ 4))
                 (apply foldl2 _g89713_))
                ((let () (declare (not safe)) (##fx>= _g89712_ 4))
                 (apply foldl* _g89713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g89713_))))))
    (define foldl*
      (lambda (_%f87503%_ _%iv87504%_ . _%rest87505%_)
        (if (procedure? _%f87503%_)
            (let ((_%f87509%_ _%f87503%_))
              (declare (not safe))
              (##apply __foldl* _%f87509%_ _%iv87504%_ _%rest87505%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@248.15-248.16"
               'contract:
               'procedure?
               'value:
               _%f87503%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f87481%_ _%iv87482%_ . _%rest87483%_)
        (let ((_%f87486%_ _%f87481%_))
          (let _%recur87495%_ ((_%iv87497%_ _%iv87482%_)
                               (_%rest87498%_ _%rest87483%_))
            (if (__andmap1 pair? _%rest87498%_)
                (_%recur87495%_
                 (let ((__tmp89714
                        (__foldr1
                         (lambda (_%xs87500%_ _%r87501%_)
                           (cons (car _%xs87500%_) _%r87501%_))
                         (list _%iv87497%_)
                         _%rest87498%_)))
                   (declare (not safe))
                   (##apply _%f87486%_ __tmp89714))
                 (map cdr _%rest87498%_))
                _%iv87497%_)))))
    (define foldr1
      (lambda (_%f87465%_ _%iv87466%_ _%lst87467%_)
        (if (procedure? _%f87465%_)
            (let ((_%f87471%_ _%f87465%_))
              (__foldr1 _%f87471%_ _%iv87466%_ _%lst87467%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@258.15-258.16"
               'contract:
               'procedure?
               'value:
               _%f87465%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f87414%_ _%iv87415%_ _%lst87416%_)
        (let ((_%f87419%_ _%f87414%_))
          (let _%recur87428%_ ((_%rest87430%_ _%lst87416%_))
            (let* ((_%rest8743187439%_ _%rest87430%_)
                   (_%else8743387447%_ (lambda () _%iv87415%_))
                   (_%K8743587453%_
                    (lambda (_%rest87450%_ _%x87451%_)
                      (let ((__tmp89715 (_%recur87428%_ _%rest87450%_)))
                        (declare (not safe))
                        (_%f87419%_ _%x87451%_ __tmp89715)))))
              (if (let () (declare (not safe)) (##pair? _%rest8743187439%_))
                  (let ((_%hd8743687456%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8743187439%_)))
                        (_%tl8743787458%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8743187439%_))))
                    (let* ((_%x87461%_ _%hd8743687456%_)
                           (_%rest87463%_ _%tl8743787458%_))
                      (_%K8743587453%_ _%rest87463%_ _%x87461%_)))
                  (_%else8743387447%_)))))))
    (define foldr2
      (lambda (_%f87397%_ _%iv87398%_ _%lst187399%_ _%lst287400%_)
        (if (procedure? _%f87397%_)
            (let ((_%f87404%_ _%f87397%_))
              (__foldr2 _%f87404%_ _%iv87398%_ _%lst187399%_ _%lst287400%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@265.15-265.16"
               'contract:
               'procedure?
               'value:
               _%f87397%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f87311%_ _%iv87312%_ _%lst187313%_ _%lst287314%_)
        (let ((_%f87317%_ _%f87311%_))
          (let _%recur87326%_ ((_%rest187328%_ _%lst187313%_)
                               (_%rest287329%_ _%lst287314%_))
            (let* ((_%rest18733087338%_ _%rest187328%_)
                   (_%else8733287346%_ (lambda () _%iv87312%_))
                   (_%K8733487385%_
                    (lambda (_%rest187349%_ _%x187350%_)
                      (let* ((_%rest28735187359%_ _%rest287329%_)
                             (_%else8735387367%_ (lambda () _%iv87312%_))
                             (_%K8735587373%_
                              (lambda (_%rest287370%_ _%x287371%_)
                                (let ((__tmp89716
                                       (_%recur87326%_
                                        _%rest187349%_
                                        _%rest287370%_)))
                                  (declare (not safe))
                                  (_%f87317%_
                                   _%x187350%_
                                   _%x287371%_
                                   __tmp89716)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28735187359%_))
                            (let ((_%hd8735687376%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28735187359%_)))
                                  (_%tl8735787378%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28735187359%_))))
                              (let* ((_%x287381%_ _%hd8735687376%_)
                                     (_%rest287383%_ _%tl8735787378%_))
                                (_%K8735587373%_ _%rest287383%_ _%x287381%_)))
                            (_%else8735387367%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18733087338%_))
                  (let ((_%hd8733587388%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18733087338%_)))
                        (_%tl8733687390%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18733087338%_))))
                    (let* ((_%x187393%_ _%hd8733587388%_)
                           (_%rest187395%_ _%tl8733687390%_))
                      (_%K8733487385%_ _%rest187395%_ _%x187393%_)))
                  (_%else8733287346%_)))))))
    (define foldr
      (lambda _g89718_
        (let ((_g89717_ (let () (declare (not safe)) (##length _g89718_))))
          (cond ((let () (declare (not safe)) (##fx= _g89717_ 3))
                 (apply foldr1 _g89718_))
                ((let () (declare (not safe)) (##fx= _g89717_ 4))
                 (apply foldr2 _g89718_))
                ((let () (declare (not safe)) (##fx>= _g89717_ 4))
                 (apply foldr* _g89718_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g89718_))))))
    (define foldr*
      (lambda (_%f87280%_ _%iv87281%_ . _%rest87282%_)
        (if (procedure? _%f87280%_)
            (let ((_%f87286%_ _%f87280%_))
              (declare (not safe))
              (##apply __foldr* _%f87286%_ _%iv87281%_ _%rest87282%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@283.15-283.16"
               'contract:
               'procedure?
               'value:
               _%f87280%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f87259%_ _%iv87260%_ . _%rest87261%_)
        (let ((_%f87264%_ _%f87259%_))
          (let _%recur87273%_ ((_%rest87275%_ _%rest87261%_))
            (if (__andmap1 pair? _%rest87275%_)
                (let ((__tmp89719
                       (__foldr1
                        (lambda (_%xs87277%_ _%r87278%_)
                          (cons (car _%xs87277%_) _%r87278%_))
                        (list (_%recur87273%_ (map cdr _%rest87275%_)))
                        _%rest87275%_)))
                  (declare (not safe))
                  (##apply _%f87264%_ __tmp89719))
                _%iv87260%_)))))
    (define remove-nulls!
      (lambda (_%l87146%_)
        (let* ((_%l8714787160%_ _%l87146%_)
               (_%E8715187164%_
                (lambda ()
                  (error '"No clause matching"
                         _%l8714787160%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K8715687249%_
                 (lambda (_%r87247%_) (remove-nulls! _%r87247%_)))
                (_%K8715387236%_
                 (lambda (_%r87176%_)
                   (let _%loop87178%_ ((_%l87180%_ _%l87146%_)
                                       (_%r87181%_ _%r87176%_))
                     (let* ((_%r8718287195%_ _%r87181%_)
                            (_%E8718687199%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r8718287195%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K8719187226%_
                              (lambda (_%rr87224%_)
                                (let ((__tmp89721 _%l87180%_)
                                      (__tmp89720 (remove-nulls! _%rr87224%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp89721 __tmp89720))))
                             (_%K8718887213%_
                              (lambda (_%rr87211%_)
                                (_%loop87178%_ _%r87181%_ _%rr87211%_)))
                             (_%K8718787204%_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%r8718287195%_))
                             (let ((_%tl8719387231%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r8718287195%_)))
                                   (_%hd8719287229%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r8718287195%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%hd8719287229%_))
                                   (let ((_%rr87234%_ _%tl8719387231%_))
                                     (_%K8719187226%_ _%rr87234%_))
                                   (let ((_%rr87219%_ _%tl8719387231%_))
                                     (_%K8718887213%_ _%rr87219%_))))
                             '#!void))))
                   _%l87146%_))
                (_%K8715287169%_ (lambda () _%l87146%_)))
            (if (let () (declare (not safe)) (##pair? _%l8714787160%_))
                (let ((_%tl8715887254%_
                       (let () (declare (not safe)) (##cdr _%l8714787160%_)))
                      (_%hd8715787252%_
                       (let () (declare (not safe)) (##car _%l8714787160%_))))
                  (if (let () (declare (not safe)) (##null? _%hd8715787252%_))
                      (let ((_%r87257%_ _%tl8715887254%_))
                        (remove-nulls! _%r87257%_))
                      (let ((_%r87242%_ _%tl8715887254%_))
                        (_%K8715387236%_ _%r87242%_))))
                (_%K8715287169%_))))))
    (define append1!
      (lambda (_%l87131%_ _%x87132%_)
        (let ((_%l287135%_ (cons _%x87132%_ '())))
          (if (pair? _%l87131%_)
              (let ((_%l87137%_ _%l87131%_))
                (let ((__tmp89722
                       (let () (declare (not safe)) (##last-pair _%l87137%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp89722 _%l287135%_))
                _%l87137%_)
              _%l287135%_))))
    (define append-reverse-until
      (lambda (_%pred87115%_ _%rhead87116%_ _%tail87117%_)
        (if (procedure? _%pred87115%_)
            (let ((_%pred87121%_ _%pred87115%_))
              (__append-reverse-until
               _%pred87121%_
               _%rhead87116%_
               _%tail87117%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@323.29-323.33"
               'contract:
               'procedure?
               'value:
               _%pred87115%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred87057%_ _%rhead87058%_ _%tail87059%_)
        (let ((_%pred87062%_ _%pred87057%_))
          (let _%loop87071%_ ((_%rhead87073%_ _%rhead87058%_)
                              (_%tail87074%_ _%tail87059%_))
            (let* ((_%rhead8707687085%_ _%rhead87073%_)
                   (_%E8707987089%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead8707687085%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K8708387112%_ (lambda () (values '() _%tail87074%_)))
                    (_%K8708087096%_
                     (lambda (_%r87093%_ _%a87094%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred87062%_ _%a87094%_))
                           (values _%rhead87073%_ _%tail87074%_)
                           (_%loop87071%_
                            _%r87093%_
                            (cons _%a87094%_ _%tail87074%_))))))
                (let ((_%try-match8707887108%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rhead8707687085%_))
                             (let ((_%tl8708287101%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead8707687085%_)))
                                   (_%hd8708187099%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead8707687085%_))))
                               (let ((_%a87104%_ _%hd8708187099%_)
                                     (_%r87106%_ _%tl8708287101%_))
                                 (_%K8708087096%_ _%r87106%_ _%a87104%_)))
                             (_%E8707987089%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%rhead8707687085%_))
                      (_%K8708387112%_)
                      (_%try-match8707887108%_)))))))))
    (define andmap1
      (lambda (_%f87042%_ _%lst87043%_)
        (if (procedure? _%f87042%_)
            (let ((_%f87047%_ _%f87042%_)) (__andmap1 _%f87047%_ _%lst87043%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@334.16-334.17"
               'contract:
               'procedure?
               'value:
               _%f87042%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f86991%_ _%lst86992%_)
        (let ((_%f86995%_ _%f86991%_))
          (let _%lp87004%_ ((_%rest87006%_ _%lst86992%_))
            (let* ((_%rest8700887016%_ _%rest87006%_)
                   (_%else8701087024%_ (lambda () '#t))
                   (_%K8701287030%_
                    (lambda (_%rest87027%_ _%x87028%_)
                      (if (let () (declare (not safe)) (_%f86995%_ _%x87028%_))
                          (_%lp87004%_ _%rest87027%_)
                          '#f))))
              (if (let () (declare (not safe)) (##pair? _%rest8700887016%_))
                  (let ((_%hd8701387033%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8700887016%_)))
                        (_%tl8701487035%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8700887016%_))))
                    (let* ((_%x87038%_ _%hd8701387033%_)
                           (_%rest87040%_ _%tl8701487035%_))
                      (_%K8701287030%_ _%rest87040%_ _%x87038%_)))
                  (_%else8701087024%_)))))))
    (define andmap2
      (lambda (_%f86975%_ _%lst186976%_ _%lst286977%_)
        (if (procedure? _%f86975%_)
            (let ((_%f86981%_ _%f86975%_))
              (__andmap2 _%f86981%_ _%lst186976%_ _%lst286977%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@343.16-343.17"
               'contract:
               'procedure?
               'value:
               _%f86975%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f86889%_ _%lst186890%_ _%lst286891%_)
        (let ((_%f86894%_ _%f86889%_))
          (let _%lp86903%_ ((_%rest186905%_ _%lst186890%_)
                            (_%rest286906%_ _%lst286891%_))
            (let* ((_%rest18690886916%_ _%rest186905%_)
                   (_%else8691086924%_ (lambda () '#t))
                   (_%K8691286963%_
                    (lambda (_%rest186927%_ _%x186928%_)
                      (let* ((_%rest28692986937%_ _%rest286906%_)
                             (_%else8693186945%_ (lambda () '#t))
                             (_%K8693386951%_
                              (lambda (_%rest286948%_ _%x286949%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f86894%_ _%x186928%_ _%x286949%_))
                                    (_%lp86903%_ _%rest186927%_ _%rest286948%_)
                                    '#f))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28692986937%_))
                            (let ((_%hd8693486954%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28692986937%_)))
                                  (_%tl8693586956%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28692986937%_))))
                              (let* ((_%x286959%_ _%hd8693486954%_)
                                     (_%rest286961%_ _%tl8693586956%_))
                                (_%K8693386951%_ _%rest286961%_ _%x286959%_)))
                            (_%else8693186945%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18690886916%_))
                  (let ((_%hd8691386966%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18690886916%_)))
                        (_%tl8691486968%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18690886916%_))))
                    (let* ((_%x186971%_ _%hd8691386966%_)
                           (_%rest186973%_ _%tl8691486968%_))
                      (_%K8691286963%_ _%rest186973%_ _%x186971%_)))
                  (_%else8691086924%_)))))))
    (define andmap
      (lambda _g89724_
        (let ((_g89723_ (let () (declare (not safe)) (##length _g89724_))))
          (cond ((let () (declare (not safe)) (##fx= _g89723_ 2))
                 (apply andmap1 _g89724_))
                ((let () (declare (not safe)) (##fx= _g89723_ 3))
                 (apply andmap2 _g89724_))
                ((let () (declare (not safe)) (##fx>= _g89723_ 3))
                 (apply andmap* _g89724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g89724_))))))
    (define andmap*
      (lambda (_%f86862%_ . _%rest86863%_)
        (if (procedure? _%f86862%_)
            (let ((_%f86867%_ _%f86862%_))
              (declare (not safe))
              (##apply __andmap* _%f86867%_ _%rest86863%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@363.16-363.17"
               'contract:
               'procedure?
               'value:
               _%f86862%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f86844%_ . _%rest86845%_)
        (let ((_%f86848%_ _%f86844%_))
          (let _%recur86857%_ ((_%rest86859%_ _%rest86845%_))
            (if (__andmap1 pair? _%rest86859%_)
                (if (let ((__tmp89725 (map car _%rest86859%_)))
                      (declare (not safe))
                      (##apply _%f86848%_ __tmp89725))
                    (_%recur86857%_ (map cdr _%rest86859%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f86829%_ _%lst86830%_)
        (if (procedure? _%f86829%_)
            (let ((_%f86834%_ _%f86829%_)) (__ormap1 _%f86834%_ _%lst86830%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@372.15-372.16"
               'contract:
               'procedure?
               'value:
               _%f86829%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f86776%_ _%lst86777%_)
        (let ((_%f86780%_ _%f86776%_))
          (let _%lp86789%_ ((_%rest86791%_ _%lst86777%_))
            (let* ((_%rest8679286800%_ _%rest86791%_)
                   (_%else8679486808%_ (lambda () '#f))
                   (_%K8679686817%_
                    (lambda (_%rest86811%_ _%x86812%_)
                      (let ((_%$e86814%_
                             (let ()
                               (declare (not safe))
                               (_%f86780%_ _%x86812%_))))
                        (if _%$e86814%_
                            _%$e86814%_
                            (_%lp86789%_ _%rest86811%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8679286800%_))
                  (let ((_%hd8679786820%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8679286800%_)))
                        (_%tl8679886822%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8679286800%_))))
                    (let* ((_%x86825%_ _%hd8679786820%_)
                           (_%rest86827%_ _%tl8679886822%_))
                      (_%K8679686817%_ _%rest86827%_ _%x86825%_)))
                  (_%else8679486808%_)))))))
    (define ormap2
      (lambda (_%f86760%_ _%lst186761%_ _%lst286762%_)
        (if (procedure? _%f86760%_)
            (let ((_%f86766%_ _%f86760%_))
              (__ormap2 _%f86766%_ _%lst186761%_ _%lst286762%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@379.15-379.16"
               'contract:
               'procedure?
               'value:
               _%f86760%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f86672%_ _%lst186673%_ _%lst286674%_)
        (let ((_%f86677%_ _%f86672%_))
          (let _%lp86686%_ ((_%rest186688%_ _%lst186673%_)
                            (_%rest286689%_ _%lst286674%_))
            (let* ((_%rest18669086698%_ _%rest186688%_)
                   (_%else8669286706%_ (lambda () '#f))
                   (_%K8669486748%_
                    (lambda (_%rest186709%_ _%x186710%_)
                      (let* ((_%rest28671186719%_ _%rest286689%_)
                             (_%else8671386727%_ (lambda () '#f))
                             (_%K8671586736%_
                              (lambda (_%rest286730%_ _%x286731%_)
                                (let ((_%$e86733%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f86677%_
                                          _%x186710%_
                                          _%x286731%_))))
                                  (if _%$e86733%_
                                      _%$e86733%_
                                      (_%lp86686%_
                                       _%rest186709%_
                                       _%rest286730%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28671186719%_))
                            (let ((_%hd8671686739%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28671186719%_)))
                                  (_%tl8671786741%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28671186719%_))))
                              (let* ((_%x286744%_ _%hd8671686739%_)
                                     (_%rest286746%_ _%tl8671786741%_))
                                (_%K8671586736%_ _%rest286746%_ _%x286744%_)))
                            (_%else8671386727%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18669086698%_))
                  (let ((_%hd8669586751%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18669086698%_)))
                        (_%tl8669686753%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18669086698%_))))
                    (let* ((_%x186756%_ _%hd8669586751%_)
                           (_%rest186758%_ _%tl8669686753%_))
                      (_%K8669486748%_ _%rest186758%_ _%x186756%_)))
                  (_%else8669286706%_)))))))
    (define ormap
      (lambda _g89727_
        (let ((_g89726_ (let () (declare (not safe)) (##length _g89727_))))
          (cond ((let () (declare (not safe)) (##fx= _g89726_ 2))
                 (apply ormap1 _g89727_))
                ((let () (declare (not safe)) (##fx= _g89726_ 3))
                 (apply ormap2 _g89727_))
                ((let () (declare (not safe)) (##fx>= _g89726_ 3))
                 (apply ormap* _g89727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g89727_))))))
    (define ormap*
      (lambda (_%f86645%_ . _%rest86646%_)
        (if (procedure? _%f86645%_)
            (let ((_%f86650%_ _%f86645%_))
              (declare (not safe))
              (##apply __ormap* _%f86650%_ _%rest86646%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@397.15-397.16"
               'contract:
               'procedure?
               'value:
               _%f86645%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f86625%_ . _%rest86626%_)
        (let ((_%f86629%_ _%f86625%_))
          (let _%recur86638%_ ((_%rest86640%_ _%rest86626%_))
            (if (__andmap1 pair? _%rest86640%_)
                (let ((_%$e86642%_
                       (let ((__tmp89728 (map car _%rest86640%_)))
                         (declare (not safe))
                         (##apply _%f86629%_ __tmp89728))))
                  (if _%$e86642%_
                      _%$e86642%_
                      (_%recur86638%_ (map cdr _%rest86640%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f86610%_ _%lst86611%_)
        (if (procedure? _%f86610%_)
            (let ((_%f86615%_ _%f86610%_))
              (__filter-map1 _%f86615%_ _%lst86611%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@404.20-404.21"
               'contract:
               'procedure?
               'value:
               _%f86610%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f86553%_ _%lst86554%_)
        (let ((_%f86557%_ _%f86553%_))
          (let _%recur86566%_ ((_%rest86568%_ _%lst86554%_))
            (let* ((_%rest8657086578%_ _%rest86568%_)
                   (_%else8657286586%_ (lambda () '()))
                   (_%K8657486598%_
                    (lambda (_%rest86589%_ _%x86590%_)
                      (let ((_%$e86592%_
                             (let ()
                               (declare (not safe))
                               (_%f86557%_ _%x86590%_))))
                        (if _%$e86592%_
                            ((lambda (_%r86595%_)
                               (cons _%r86595%_
                                     (_%recur86566%_ _%rest86589%_)))
                             _%$e86592%_)
                            (_%recur86566%_ _%rest86589%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8657086578%_))
                  (let ((_%hd8657586601%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8657086578%_)))
                        (_%tl8657686603%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8657086578%_))))
                    (let* ((_%x86606%_ _%hd8657586601%_)
                           (_%rest86608%_ _%tl8657686603%_))
                      (_%K8657486598%_ _%rest86608%_ _%x86606%_)))
                  (_%else8657286586%_)))))))
    (define filter-map2
      (lambda (_%f86537%_ _%lst186538%_ _%lst286539%_)
        (if (procedure? _%f86537%_)
            (let ((_%f86543%_ _%f86537%_))
              (__filter-map2 _%f86543%_ _%lst186538%_ _%lst286539%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@415.20-415.21"
               'contract:
               'procedure?
               'value:
               _%f86537%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f86445%_ _%lst186446%_ _%lst286447%_)
        (let ((_%f86450%_ _%f86445%_))
          (let _%recur86459%_ ((_%rest186461%_ _%lst186446%_)
                               (_%rest286462%_ _%lst286447%_))
            (let* ((_%rest18646486472%_ _%rest186461%_)
                   (_%else8646686480%_ (lambda () '()))
                   (_%K8646886525%_
                    (lambda (_%rest186483%_ _%x186484%_)
                      (let* ((_%rest28648586493%_ _%rest286462%_)
                             (_%else8648786501%_ (lambda () '()))
                             (_%K8648986513%_
                              (lambda (_%rest286504%_ _%x286505%_)
                                (let ((_%$e86507%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f86450%_
                                          _%x186484%_
                                          _%x286505%_))))
                                  (if _%$e86507%_
                                      ((lambda (_%r86510%_)
                                         (cons _%r86510%_
                                               (_%recur86459%_
                                                _%rest186483%_
                                                _%rest286504%_)))
                                       _%$e86507%_)
                                      (_%recur86459%_
                                       _%rest186483%_
                                       _%rest286504%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest28648586493%_))
                            (let ((_%hd8649086516%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest28648586493%_)))
                                  (_%tl8649186518%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest28648586493%_))))
                              (let* ((_%x286521%_ _%hd8649086516%_)
                                     (_%rest286523%_ _%tl8649186518%_))
                                (_%K8648986513%_ _%rest286523%_ _%x286521%_)))
                            (_%else8648786501%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest18646486472%_))
                  (let ((_%hd8646986528%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest18646486472%_)))
                        (_%tl8647086530%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest18646486472%_))))
                    (let* ((_%x186533%_ _%hd8646986528%_)
                           (_%rest186535%_ _%tl8647086530%_))
                      (_%K8646886525%_ _%rest186535%_ _%x186533%_)))
                  (_%else8646686480%_)))))))
    (define filter-map
      (lambda _g89730_
        (let ((_g89729_ (let () (declare (not safe)) (##length _g89730_))))
          (cond ((let () (declare (not safe)) (##fx= _g89729_ 2))
                 (apply filter-map1 _g89730_))
                ((let () (declare (not safe)) (##fx= _g89729_ 3))
                 (apply filter-map2 _g89730_))
                ((let () (declare (not safe)) (##fx>= _g89729_ 3))
                 (apply filter-map* _g89730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g89730_))))))
    (define filter-map*
      (lambda (_%f86418%_ . _%rest86419%_)
        (if (procedure? _%f86418%_)
            (let ((_%f86423%_ _%f86418%_))
              (declare (not safe))
              (##apply __filter-map* _%f86423%_ _%rest86419%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@437.20-437.21"
               'contract:
               'procedure?
               'value:
               _%f86418%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f86394%_ . _%rest86395%_)
        (let ((_%f86398%_ _%f86394%_))
          (let _%recur86407%_ ((_%rest86409%_ _%rest86395%_))
            (if (__andmap1 pair? _%rest86409%_)
                (let ((_%$e86412%_
                       (let ((__tmp89731 (map car _%rest86409%_)))
                         (declare (not safe))
                         (##apply _%f86398%_ __tmp89731))))
                  (if _%$e86412%_
                      ((lambda (_%r86415%_)
                         (cons _%r86415%_
                               (_%recur86407%_ (map cdr _%rest86409%_))))
                       _%$e86412%_)
                      (_%recur86407%_ (map cdr _%rest86409%_))))
                '())))))
    (define agetq__%
      (lambda (_%key86370%_ _%lst86372%_ _%default86374%_)
        (let ((_%$e86377%_
               (if (pair? _%lst86372%_) (assq _%key86370%_ _%lst86372%_) '#f)))
          (if _%$e86377%_
              (cdr _%$e86377%_)
              (if (procedure? _%default86374%_)
                  (_%default86374%_ _%key86370%_)
                  _%default86374%_)))))
    (define agetq__0
      (lambda (_%key86385%_ _%lst86386%_)
        (let ((_%default86388%_ '#f))
          (agetq__% _%key86385%_ _%lst86386%_ _%default86388%_))))
    (define agetq
      (lambda _g89733_
        (let ((_g89732_ (let () (declare (not safe)) (##length _g89733_))))
          (cond ((let () (declare (not safe)) (##fx= _g89732_ 2))
                 (apply agetq__0 _g89733_))
                ((let () (declare (not safe)) (##fx= _g89732_ 3))
                 (apply agetq__% _g89733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g89733_))))))
    (define agetv__%
      (lambda (_%key86345%_ _%lst86347%_ _%default86349%_)
        (let ((_%$e86352%_
               (if (pair? _%lst86347%_) (assv _%key86345%_ _%lst86347%_) '#f)))
          (if _%$e86352%_
              (cdr _%$e86352%_)
              (if (procedure? _%default86349%_)
                  (_%default86349%_ _%key86345%_)
                  _%default86349%_)))))
    (define agetv__0
      (lambda (_%key86360%_ _%lst86361%_)
        (let ((_%default86363%_ '#f))
          (agetv__% _%key86360%_ _%lst86361%_ _%default86363%_))))
    (define agetv
      (lambda _g89735_
        (let ((_g89734_ (let () (declare (not safe)) (##length _g89735_))))
          (cond ((let () (declare (not safe)) (##fx= _g89734_ 2))
                 (apply agetv__0 _g89735_))
                ((let () (declare (not safe)) (##fx= _g89734_ 3))
                 (apply agetv__% _g89735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g89735_))))))
    (define aget__%
      (lambda (_%key86320%_ _%lst86322%_ _%default86324%_)
        (let ((_%$e86327%_
               (if (pair? _%lst86322%_)
                   (assoc _%key86320%_ _%lst86322%_)
                   '#f)))
          (if _%$e86327%_
              (cdr _%$e86327%_)
              (if (procedure? _%default86324%_)
                  (_%default86324%_ _%key86320%_)
                  _%default86324%_)))))
    (define aget__0
      (lambda (_%key86335%_ _%lst86336%_)
        (let ((_%default86338%_ '#f))
          (aget__% _%key86335%_ _%lst86336%_ _%default86338%_))))
    (define aget
      (lambda _g89737_
        (let ((_g89736_ (let () (declare (not safe)) (##length _g89737_))))
          (cond ((let () (declare (not safe)) (##fx= _g89736_ 2))
                 (apply aget__0 _g89737_))
                ((let () (declare (not safe)) (##fx= _g89736_ 3))
                 (apply aget__% _g89737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g89737_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key86249%_ _%lst86251%_ _%default86253%_)
        (let _%lp86256%_ ((_%rest86259%_ _%lst86251%_))
          (let* ((_%rest8626186271%_ _%rest86259%_)
                 (_%else8626386279%_
                  (lambda ()
                    (if (procedure? _%default86253%_)
                        (_%default86253%_ _%key86249%_)
                        _%default86253%_)))
                 (_%K8626586288%_
                  (lambda (_%rest86282%_ _%v86283%_ _%k86285%_)
                    (if (eq? _%k86285%_ _%key86249%_)
                        _%v86283%_
                        (_%lp86256%_ _%rest86282%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8626186271%_))
                (let ((_%hd8626686291%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8626186271%_)))
                      (_%tl8626786293%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8626186271%_))))
                  (let ((_%k86296%_ _%hd8626686291%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8626786293%_))
                        (let ((_%hd8626886298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8626786293%_)))
                              (_%tl8626986300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8626786293%_))))
                          (let* ((_%v86303%_ _%hd8626886298%_)
                                 (_%rest86305%_ _%tl8626986300%_))
                            (_%K8626586288%_
                             _%rest86305%_
                             _%v86303%_
                             _%k86296%_)))
                        (_%else8626386279%_))))
                (_%else8626386279%_))))))
    (define pgetq__0
      (lambda (_%key86310%_ _%lst86311%_)
        (let ((_%default86313%_ '#f))
          (pgetq__% _%key86310%_ _%lst86311%_ _%default86313%_))))
    (define pgetq
      (lambda _g89739_
        (let ((_g89738_ (let () (declare (not safe)) (##length _g89739_))))
          (cond ((let () (declare (not safe)) (##fx= _g89738_ 2))
                 (apply pgetq__0 _g89739_))
                ((let () (declare (not safe)) (##fx= _g89738_ 3))
                 (apply pgetq__% _g89739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g89739_))))))
    (define pgetv__%
      (lambda (_%key86178%_ _%lst86180%_ _%default86182%_)
        (let _%lp86185%_ ((_%rest86188%_ _%lst86180%_))
          (let* ((_%rest8619086200%_ _%rest86188%_)
                 (_%else8619286208%_
                  (lambda ()
                    (if (procedure? _%default86182%_)
                        (_%default86182%_ _%key86178%_)
                        _%default86182%_)))
                 (_%K8619486217%_
                  (lambda (_%rest86211%_ _%v86212%_ _%k86214%_)
                    (if (eqv? _%k86214%_ _%key86178%_)
                        _%v86212%_
                        (_%lp86185%_ _%rest86211%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8619086200%_))
                (let ((_%hd8619586220%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8619086200%_)))
                      (_%tl8619686222%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8619086200%_))))
                  (let ((_%k86225%_ _%hd8619586220%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8619686222%_))
                        (let ((_%hd8619786227%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8619686222%_)))
                              (_%tl8619886229%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8619686222%_))))
                          (let* ((_%v86232%_ _%hd8619786227%_)
                                 (_%rest86234%_ _%tl8619886229%_))
                            (_%K8619486217%_
                             _%rest86234%_
                             _%v86232%_
                             _%k86225%_)))
                        (_%else8619286208%_))))
                (_%else8619286208%_))))))
    (define pgetv__0
      (lambda (_%key86239%_ _%lst86240%_)
        (let ((_%default86242%_ '#f))
          (pgetv__% _%key86239%_ _%lst86240%_ _%default86242%_))))
    (define pgetv
      (lambda _g89741_
        (let ((_g89740_ (let () (declare (not safe)) (##length _g89741_))))
          (cond ((let () (declare (not safe)) (##fx= _g89740_ 2))
                 (apply pgetv__0 _g89741_))
                ((let () (declare (not safe)) (##fx= _g89740_ 3))
                 (apply pgetv__% _g89741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g89741_))))))
    (define pget__%
      (lambda (_%key86107%_ _%lst86109%_ _%default86111%_)
        (let _%lp86114%_ ((_%rest86117%_ _%lst86109%_))
          (let* ((_%rest8611986129%_ _%rest86117%_)
                 (_%else8612186137%_
                  (lambda ()
                    (if (procedure? _%default86111%_)
                        (_%default86111%_ _%key86107%_)
                        _%default86111%_)))
                 (_%K8612386146%_
                  (lambda (_%rest86140%_ _%v86141%_ _%k86143%_)
                    (if (equal? _%k86143%_ _%key86107%_)
                        _%v86141%_
                        (_%lp86114%_ _%rest86140%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest8611986129%_))
                (let ((_%hd8612486149%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8611986129%_)))
                      (_%tl8612586151%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8611986129%_))))
                  (let ((_%k86154%_ _%hd8612486149%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl8612586151%_))
                        (let ((_%hd8612686156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl8612586151%_)))
                              (_%tl8612786158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl8612586151%_))))
                          (let* ((_%v86161%_ _%hd8612686156%_)
                                 (_%rest86163%_ _%tl8612786158%_))
                            (_%K8612386146%_
                             _%rest86163%_
                             _%v86161%_
                             _%k86154%_)))
                        (_%else8612186137%_))))
                (_%else8612186137%_))))))
    (define pget__0
      (lambda (_%key86168%_ _%lst86169%_)
        (let ((_%default86171%_ '#f))
          (pget__% _%key86168%_ _%lst86169%_ _%default86171%_))))
    (define pget
      (lambda _g89743_
        (let ((_g89742_ (let () (declare (not safe)) (##length _g89743_))))
          (cond ((let () (declare (not safe)) (##fx= _g89742_ 2))
                 (apply pget__0 _g89743_))
                ((let () (declare (not safe)) (##fx= _g89742_ 3))
                 (apply pget__% _g89743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g89743_))))))
    (define find
      (lambda (_%pred86091%_ _%lst86092%_)
        (if (procedure? _%pred86091%_)
            (let ((_%pred86096%_ _%pred86091%_))
              (__find _%pred86096%_ _%lst86092%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@483.13-483.17"
               'contract:
               'procedure?
               'value:
               _%pred86091%_)
              '#!void))))
    (define __find
      (lambda (_%pred86074%_ _%lst86075%_)
        (let* ((_%pred86078%_ _%pred86074%_)
               (_%$e86087%_ (__memf _%pred86078%_ _%lst86075%_)))
          (if _%$e86087%_
              (let () (declare (not safe)) (##car _%$e86087%_))
              '#f))))
    (define memf
      (lambda (_%proc86059%_ _%lst86060%_)
        (if (procedure? _%proc86059%_)
            (let ((_%proc86064%_ _%proc86059%_))
              (__memf _%proc86064%_ _%lst86060%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@488.13-488.17"
               'contract:
               'procedure?
               'value:
               _%proc86059%_)
              '#!void))))
    (define __memf
      (lambda (_%proc86009%_ _%lst86010%_)
        (let ((_%proc86013%_ _%proc86009%_))
          (let _%lp86022%_ ((_%rest86024%_ _%lst86010%_))
            (let* ((_%rest8602586033%_ _%rest86024%_)
                   (_%else8602786041%_ (lambda () '#f))
                   (_%K8602986047%_
                    (lambda (_%tl86044%_ _%hd86045%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc86013%_ _%hd86045%_))
                          _%rest86024%_
                          (_%lp86022%_ _%tl86044%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest8602586033%_))
                  (let ((_%hd8603086050%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8602586033%_)))
                        (_%tl8603186052%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8602586033%_))))
                    (let* ((_%hd86055%_ _%hd8603086050%_)
                           (_%tl86057%_ _%tl8603186052%_))
                      (_%K8602986047%_ _%tl86057%_ _%hd86055%_)))
                  (_%else8602786041%_)))))))
    (define remove1
      (lambda (_%el85962%_ _%lst85964%_)
        (let _%lp85967%_ ((_%rest85970%_ _%lst85964%_) (_%r85972%_ '()))
          (let* ((_%rest8597485982%_ _%rest85970%_)
                 (_%else8597685990%_ (lambda () _%lst85964%_))
                 (_%K8597885997%_
                  (lambda (_%rest85993%_ _%hd85994%_)
                    (if (equal? _%el85962%_ _%hd85994%_)
                        (__foldl1 cons _%rest85993%_ _%r85972%_)
                        (_%lp85967%_
                         _%rest85993%_
                         (cons _%hd85994%_ _%r85972%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8597485982%_))
                (let ((_%hd8597986000%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8597485982%_)))
                      (_%tl8598086002%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8597485982%_))))
                  (let* ((_%hd86005%_ _%hd8597986000%_)
                         (_%rest86007%_ _%tl8598086002%_))
                    (_%K8597885997%_ _%rest86007%_ _%hd86005%_)))
                (_%else8597685990%_))))))
    (define remv1
      (lambda (_%el85915%_ _%lst85917%_)
        (let _%lp85920%_ ((_%rest85923%_ _%lst85917%_) (_%r85925%_ '()))
          (let* ((_%rest8592785935%_ _%rest85923%_)
                 (_%else8592985943%_ (lambda () _%lst85917%_))
                 (_%K8593185950%_
                  (lambda (_%rest85946%_ _%hd85947%_)
                    (if (eqv? _%el85915%_ _%hd85947%_)
                        (__foldl1 cons _%rest85946%_ _%r85925%_)
                        (_%lp85920%_
                         _%rest85946%_
                         (cons _%hd85947%_ _%r85925%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8592785935%_))
                (let ((_%hd8593285953%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8592785935%_)))
                      (_%tl8593385955%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8592785935%_))))
                  (let* ((_%hd85958%_ _%hd8593285953%_)
                         (_%rest85960%_ _%tl8593385955%_))
                    (_%K8593185950%_ _%rest85960%_ _%hd85958%_)))
                (_%else8592985943%_))))))
    (define remq1
      (lambda (_%el85868%_ _%lst85870%_)
        (let _%lp85873%_ ((_%rest85876%_ _%lst85870%_) (_%r85878%_ '()))
          (let* ((_%rest8588085888%_ _%rest85876%_)
                 (_%else8588285896%_ (lambda () _%lst85870%_))
                 (_%K8588485903%_
                  (lambda (_%rest85899%_ _%hd85900%_)
                    (if (eq? _%el85868%_ _%hd85900%_)
                        (__foldl1 cons _%rest85899%_ _%r85878%_)
                        (_%lp85873%_
                         _%rest85899%_
                         (cons _%hd85900%_ _%r85878%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest8588085888%_))
                (let ((_%hd8588585906%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest8588085888%_)))
                      (_%tl8588685908%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest8588085888%_))))
                  (let* ((_%hd85911%_ _%hd8588585906%_)
                         (_%rest85913%_ _%tl8588685908%_))
                    (_%K8588485903%_ _%rest85913%_ _%hd85911%_)))
                (_%else8588285896%_))))))
    (define remf
      (lambda (_%proc85853%_ _%lst85854%_)
        (if (procedure? _%proc85853%_)
            (let ((_%proc85858%_ _%proc85853%_))
              (__remf _%proc85858%_ _%lst85854%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@510.13-510.17"
               'contract:
               'procedure?
               'value:
               _%proc85853%_)
              '#!void))))
    (define __remf
      (lambda (_%proc85802%_ _%lst85803%_)
        (let ((_%proc85806%_ _%proc85802%_))
          (let _%lp85815%_ ((_%rest85817%_ _%lst85803%_) (_%r85818%_ '()))
            (let* ((_%rest8581985827%_ _%rest85817%_)
                   (_%else8582185835%_ (lambda () _%lst85803%_))
                   (_%K8582385841%_
                    (lambda (_%rest85838%_ _%hd85839%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc85806%_ _%hd85839%_))
                          (__foldl1 cons _%rest85838%_ _%r85818%_)
                          (_%lp85815%_
                           _%rest85838%_
                           (cons _%hd85839%_ _%r85818%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest8581985827%_))
                  (let ((_%hd8582485844%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest8581985827%_)))
                        (_%tl8582585846%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest8581985827%_))))
                    (let* ((_%hd85849%_ _%hd8582485844%_)
                           (_%rest85851%_ _%tl8582585846%_))
                      (_%K8582385841%_ _%rest85851%_ _%hd85849%_)))
                  (_%else8582185835%_)))))))
    (define 1+
      (lambda (_%x85788%_)
        (if (number? _%x85788%_)
            (let ((_%x85792%_ _%x85788%_)) (__1+ _%x85792%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@519.11-519.12"
               'contract:
               'number?
               'value:
               _%x85788%_)
              '#!void))))
    (define __1+
      (lambda (_%x85776%_) (let ((_%x85779%_ _%x85776%_)) (+ _%x85779%_ '1))))
    (define 1-
      (lambda (_%x85762%_)
        (if (number? _%x85762%_)
            (let ((_%x85766%_ _%x85762%_)) (__1- _%x85766%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@527.11-527.12"
               'contract:
               'number?
               'value:
               _%x85762%_)
              '#!void))))
    (define __1-
      (lambda (_%x85750%_) (let ((_%x85753%_ _%x85750%_)) (- _%x85753%_ '1))))
    (define fx1+
      (lambda (_%x85736%_)
        (if (fixnum? _%x85736%_)
            (let ((_%x85740%_ _%x85736%_)) (__fx1+ _%x85740%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@535.13-535.14"
               'contract:
               'fixnum?
               'value:
               _%x85736%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x85724%_)
        (let ((_%x85727%_ _%x85724%_))
          (declare (not safe))
          (##fx+ _%x85727%_ '1))))
    (define fx1-
      (lambda (_%x85710%_)
        (if (fixnum? _%x85710%_)
            (let ((_%x85714%_ _%x85710%_)) (__fx1- _%x85714%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@543.13-543.14"
               'contract:
               'fixnum?
               'value:
               _%x85710%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x85698%_)
        (let ((_%x85701%_ _%x85698%_))
          (declare (not safe))
          (##fx- _%x85701%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x85695%_)
        (if (fixnum? _%x85695%_)
            (let () (declare (not safe)) (##fx>= _%x85695%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x85692%_)
        (if (fixnum? _%x85692%_)
            (let () (declare (not safe)) (##fx> _%x85692%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x85689%_)
        (let () (declare (not safe)) (##fx= _%x85689%_ '0))))
    (define fx<0?
      (lambda (_%x85686%_)
        (if (fixnum? _%x85686%_)
            (let () (declare (not safe)) (##fx< _%x85686%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x85683%_)
        (if (fixnum? _%x85683%_)
            (let () (declare (not safe)) (##fx<= _%x85683%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x85680%_)
        (if (symbol? _%x85680%_) (not (uninterned-symbol? _%x85680%_)) '#f)))
    (define display-as-string
      (lambda (_%x85665%_ _%port85666%_)
        (if (output-port? _%port85666%_)
            (let ((_%port85670%_ _%port85666%_))
              (__display-as-string _%x85665%_ _%port85670%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@571.28-571.32"
               'contract:
               'output-port?
               'value:
               _%port85666%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x85622%_ _%port85623%_)
        (let ((_%port85626%_ _%port85623%_))
          (if (or (string? _%x85622%_)
                  (symbol? _%x85622%_)
                  (keyword? _%x85622%_)
                  (number? _%x85622%_)
                  (char? _%x85622%_))
              (display _%x85622%_ _%port85626%_)
              (if (pair? _%x85622%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x85622%_))
                     _%port85626%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x85622%_))
                     _%port85626%_))
                  (if (vector? _%x85622%_)
                      (vector-for-each
                       (lambda (_%g8564985651%_)
                         (__display-as-string _%g8564985651%_ _%port85626%_))
                       _%x85622%_)
                      (if (or (null? _%x85622%_)
                              (eq? _%x85622%_ '#!void)
                              (eof-object? _%x85622%_)
                              (boolean? _%x85622%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x85622%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x85605%_)
        (if (string? _%x85605%_)
            _%x85605%_
            (if (symbol? _%x85605%_)
                (let () (declare (not safe)) (##symbol->string _%x85605%_))
                (if (keyword? _%x85605%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x85605%_))
                    (if (number? _%x85605%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x85605%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g8561185613%_)
                           (__display-as-string
                            _%x85605%_
                            _%g8561185613%_)))))))))
    (define as-string__1
      (lambda _%args85616%_
        (call-with-output-string
         '()
         (lambda (_%g8561785619%_)
           (__display-as-string _%args85616%_ _%g8561785619%_)))))
    (define as-string
      (lambda _g89745_
        (let ((_g89744_ (let () (declare (not safe)) (##length _g89745_))))
          (cond ((let () (declare (not safe)) (##fx= _g89744_ 1))
                 (apply as-string__0 _g89745_))
                (#t
                 (apply (lambda _%args85616%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args85616%_)))
                        _g89745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g89745_))))))
    (define make-symbol__0
      (lambda (_%x85601%_)
        (if (interned-symbol? _%x85601%_)
            _%x85601%_
            (string->symbol (as-string__0 _%x85601%_)))))
    (define make-symbol__1
      (lambda _%args85603%_
        (string->symbol
         (let () (declare (not safe)) (##apply as-string _%args85603%_)))))
    (define make-symbol
      (lambda _g89747_
        (let ((_g89746_ (let () (declare (not safe)) (##length _g89747_))))
          (cond ((let () (declare (not safe)) (##fx= _g89746_ 1))
                 (apply make-symbol__0 _g89747_))
                (#t
                 (apply (lambda _%args85603%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args85603%_)))
                        _g89747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g89747_))))))
    (define make-keyword__0
      (lambda (_%x85597%_)
        (if (interned-keyword? _%x85597%_)
            _%x85597%_
            (string->keyword (as-string__0 _%x85597%_)))))
    (define make-keyword__1
      (lambda _%args85599%_
        (string->keyword
         (let () (declare (not safe)) (##apply as-string _%args85599%_)))))
    (define make-keyword
      (lambda _g89749_
        (let ((_g89748_ (let () (declare (not safe)) (##length _g89749_))))
          (cond ((let () (declare (not safe)) (##fx= _g89748_ 1))
                 (apply make-keyword__0 _g89749_))
                (#t
                 (apply (lambda _%args85599%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args85599%_)))
                        _g89749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g89749_))))))
    (define interned-keyword?
      (lambda (_%x85594%_)
        (if (keyword? _%x85594%_) (not (uninterned-keyword? _%x85594%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym85580%_)
        (if (symbol? _%sym85580%_)
            (let ((_%sym85584%_ _%sym85580%_))
              (__symbol->keyword _%sym85584%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@614.24-614.27"
               'contract:
               'symbol?
               'value:
               _%sym85580%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym85568%_)
        (let ((_%sym85571%_ _%sym85568%_))
          (if (uninterned-symbol? _%sym85571%_)
              (let ((__tmp89750
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym85571%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp89750))
              (let ((__tmp89751
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym85571%_))))
                (declare (not safe))
                (##string->keyword __tmp89751))))))
    (define keyword->symbol
      (lambda (_%sym85554%_)
        (if (keyword? _%sym85554%_)
            (let ((_%sym85558%_ _%sym85554%_))
              (__keyword->symbol _%sym85558%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@620.24-620.27"
               'contract:
               'keyword?
               'value:
               _%sym85554%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym85542%_)
        (let ((_%sym85545%_ _%sym85542%_))
          (if (uninterned-keyword? _%sym85545%_)
              (let ((__tmp89752
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym85545%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp89752))
              (let ((__tmp89753
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym85545%_))))
                (declare (not safe))
                (##string->symbol __tmp89753))))))
    (define bytes->string__%
      (lambda (_%bstr85507%_ _%enc85508%_)
        (if (u8vector? _%bstr85507%_)
            (let ((_%bstr85512%_ _%bstr85507%_))
              (if (symbol? _%enc85508%_)
                  (let ((_%enc85522%_ _%enc85508%_))
                    (__bytes->string__% _%bstr85512%_ _%enc85522%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@627.25-627.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc85508%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@626.22-626.26"
               'contract:
               'u8vector?
               'value:
               _%bstr85507%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr85535%_)
        (let ((_%enc85537%_ 'UTF-8))
          (bytes->string__% _%bstr85535%_ _%enc85537%_))))
    (define bytes->string
      (lambda _g89755_
        (let ((_g89754_ (let () (declare (not safe)) (##length _g89755_))))
          (cond ((let () (declare (not safe)) (##fx= _g89754_ 1))
                 (apply bytes->string__0 _g89755_))
                ((let () (declare (not safe)) (##fx= _g89754_ 2))
                 (apply bytes->string__% _g89755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g89755_))))))
    (define __bytes->string__%
      (lambda (_%bstr85466%_ _%enc85467%_)
        (let* ((_%bstr85470%_ _%bstr85466%_) (_%enc85478%_ _%enc85467%_))
          (if (eq? _%enc85478%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr85470%_))
              (let* ((_%in85487%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc85478%_
                                   (cons 'init: (cons _%bstr85470%_ '()))))))
                     (_%len85489%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr85470%_)))
                     (_%out85491%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len85489%_)))
                     (_%n85493%_
                      (read-substring
                       _%out85491%_
                       '0
                       _%len85489%_
                       _%in85487%_)))
                (string-shrink! _%out85491%_ _%n85493%_)
                _%out85491%_)))))
    (define __bytes->string__0
      (lambda (_%bstr85499%_)
        (let ((_%enc85501%_ 'UTF-8))
          (__bytes->string__% _%bstr85499%_ _%enc85501%_))))
    (define __bytes->string
      (lambda _g89757_
        (let ((_g89756_ (let () (declare (not safe)) (##length _g89757_))))
          (cond ((let () (declare (not safe)) (##fx= _g89756_ 1))
                 (apply __bytes->string__0 _g89757_))
                ((let () (declare (not safe)) (##fx= _g89756_ 2))
                 (apply __bytes->string__% _g89757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g89757_))))))
    (define string->bytes__%
      (lambda (_%str85430%_ _%enc85431%_)
        (if (string? _%str85430%_)
            (let ((_%str85435%_ _%str85430%_))
              (if (symbol? _%enc85431%_)
                  (let ((_%enc85445%_ _%enc85431%_))
                    (__string->bytes__% _%str85435%_ _%enc85445%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@639.25-639.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc85431%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@638.22-638.25"
               'contract:
               'string?
               'value:
               _%str85430%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str85458%_)
        (let ((_%enc85460%_ 'UTF-8))
          (string->bytes__% _%str85458%_ _%enc85460%_))))
    (define string->bytes
      (lambda _g89759_
        (let ((_g89758_ (let () (declare (not safe)) (##length _g89759_))))
          (cond ((let () (declare (not safe)) (##fx= _g89758_ 1))
                 (apply string->bytes__0 _g89759_))
                ((let () (declare (not safe)) (##fx= _g89758_ 2))
                 (apply string->bytes__% _g89759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g89759_))))))
    (define __string->bytes__%
      (lambda (_%str85398%_ _%enc85399%_)
        (let* ((_%str85402%_ _%str85398%_) (_%enc85410%_ _%enc85399%_))
          (if (eq? _%enc85410%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str85402%_))
              (__substring->bytes__%
               _%str85402%_
               '0
               (let () (declare (not safe)) (##string-length _%str85402%_))
               _%enc85410%_)))))
    (define __string->bytes__0
      (lambda (_%str85422%_)
        (let ((_%enc85424%_ 'UTF-8))
          (__string->bytes__% _%str85422%_ _%enc85424%_))))
    (define __string->bytes
      (lambda _g89761_
        (let ((_g89760_ (let () (declare (not safe)) (##length _g89761_))))
          (cond ((let () (declare (not safe)) (##fx= _g89760_ 1))
                 (apply __string->bytes__0 _g89761_))
                ((let () (declare (not safe)) (##fx= _g89760_ 2))
                 (apply __string->bytes__% _g89761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g89761_))))))
    (define substring->bytes__%
      (lambda (_%str85346%_ _%start85347%_ _%end85348%_ _%enc85349%_)
        (if (string? _%str85346%_)
            (let ((_%str85353%_ _%str85346%_))
              (if (nonnegative-fixnum? _%start85347%_)
                  (let ((_%start85363%_ _%start85347%_))
                    (if (nonnegative-fixnum? _%end85348%_)
                        (let ((_%end85373%_ _%end85348%_))
                          (__substring->bytes__%
                           _%str85353%_
                           _%start85363%_
                           _%end85373%_
                           _%enc85349%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@647.25-647.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end85348%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@646.25-646.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start85347%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@645.25-645.28"
               'contract:
               'string?
               'value:
               _%str85346%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str85386%_ _%start85387%_ _%end85388%_)
        (let ((_%enc85390%_ 'UTF-8))
          (substring->bytes__%
           _%str85386%_
           _%start85387%_
           _%end85388%_
           _%enc85390%_))))
    (define substring->bytes
      (lambda _g89763_
        (let ((_g89762_ (let () (declare (not safe)) (##length _g89763_))))
          (cond ((let () (declare (not safe)) (##fx= _g89762_ 3))
                 (apply substring->bytes__0 _g89763_))
                ((let () (declare (not safe)) (##fx= _g89762_ 4))
                 (apply substring->bytes__% _g89763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g89763_))))))
    (define __substring->bytes__%
      (lambda (_%str85298%_ _%start85299%_ _%end85300%_ _%enc85301%_)
        (let* ((_%str85304%_ _%str85298%_)
               (_%start85312%_ _%start85299%_)
               (_%end85320%_ _%end85300%_))
          (if (eq? _%enc85301%_ 'UTF-8)
              (string->utf8 _%str85304%_ _%start85312%_ _%end85320%_)
              (let ((_%out85329%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc85301%_ '())))))
                (write-substring
                 _%str85304%_
                 _%start85312%_
                 _%end85320%_
                 _%out85329%_)
                (get-output-u8vector _%out85329%_))))))
    (define __substring->bytes__0
      (lambda (_%str85334%_ _%start85335%_ _%end85336%_)
        (let ((_%enc85338%_ 'UTF-8))
          (__substring->bytes__%
           _%str85334%_
           _%start85335%_
           _%end85336%_
           _%enc85338%_))))
    (define __substring->bytes
      (lambda _g89765_
        (let ((_g89764_ (let () (declare (not safe)) (##length _g89765_))))
          (cond ((let () (declare (not safe)) (##fx= _g89764_ 3))
                 (apply __substring->bytes__0 _g89765_))
                ((let () (declare (not safe)) (##fx= _g89764_ 4))
                 (apply __substring->bytes__% _g89765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g89765_))))))
    (define string-empty?
      (lambda (_%str85283%_)
        (if (string? _%str85283%_)
            (let ((_%str85287%_ _%str85283%_)) (__string-empty? _%str85287%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@656.22-656.25"
               'contract:
               'string?
               'value:
               _%str85283%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str85271%_)
        (let* ((_%str85274%_ _%str85271%_)
               (__tmp89766
                (let () (declare (not safe)) (##string-length _%str85274%_))))
          (declare (not safe))
          (##fxzero? __tmp89766))))
    (define string-index__%
      (lambda (_%str85223%_ _%char85224%_ _%start85225%_)
        (if (string? _%str85223%_)
            (let ((_%str85229%_ _%str85223%_))
              (if (char? _%char85224%_)
                  (let ((_%char85239%_ _%char85224%_))
                    (if (nonnegative-fixnum? _%start85225%_)
                        (let ((_%start85249%_ _%start85225%_))
                          (__string-index__%
                           _%str85229%_
                           _%char85239%_
                           _%start85249%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@662.21-662.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start85225%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@661.21-661.25"
                     'contract:
                     'char?
                     'value:
                     _%char85224%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.21-660.24"
               'contract:
               'string?
               'value:
               _%str85223%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str85262%_ _%char85263%_)
        (let ((_%start85265%_ '0))
          (string-index__% _%str85262%_ _%char85263%_ _%start85265%_))))
    (define string-index
      (lambda _g89768_
        (let ((_g89767_ (let () (declare (not safe)) (##length _g89768_))))
          (cond ((let () (declare (not safe)) (##fx= _g89767_ 2))
                 (apply string-index__0 _g89768_))
                ((let () (declare (not safe)) (##fx= _g89767_ 3))
                 (apply string-index__% _g89768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g89768_))))))
    (define __string-index__%
      (lambda (_%str85162%_ _%char85163%_ _%start85164%_)
        (let* ((_%str85167%_ _%str85162%_)
               (_%char85175%_ _%char85163%_)
               (_%start85183%_ _%start85164%_)
               (_%len85192%_
                (let () (declare (not safe)) (##string-length _%str85167%_))))
          (let _%lp85194%_ ((_%k85196%_ _%start85183%_))
            (let ((_%k85198%_ _%k85196%_))
              (if (let () (declare (not safe)) (##fx< _%k85198%_ _%len85192%_))
                  (if (eq? _%char85175%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str85167%_ _%k85198%_)))
                      _%k85198%_
                      (_%lp85194%_
                       (let () (declare (not safe)) (##fx+ _%k85198%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str85213%_ _%char85214%_)
        (let ((_%start85216%_ '0))
          (__string-index__% _%str85213%_ _%char85214%_ _%start85216%_))))
    (define __string-index
      (lambda _g89770_
        (let ((_g89769_ (let () (declare (not safe)) (##length _g89770_))))
          (cond ((let () (declare (not safe)) (##fx= _g89769_ 2))
                 (apply __string-index__0 _g89770_))
                ((let () (declare (not safe)) (##fx= _g89769_ 3))
                 (apply __string-index__% _g89770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g89770_))))))
    (define string-rindex__%
      (lambda (_%str85123%_ _%char85124%_ _%start85125%_)
        (if (string? _%str85123%_)
            (let ((_%str85129%_ _%str85123%_))
              (if (char? _%char85124%_)
                  (let ((_%char85139%_ _%char85124%_))
                    (__string-rindex__%
                     _%str85129%_
                     _%char85139%_
                     _%start85125%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@672.25-672.29"
                     'contract:
                     'char?
                     'value:
                     _%char85124%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@671.22-671.25"
               'contract:
               'string?
               'value:
               _%str85123%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str85152%_ _%char85153%_)
        (let ((_%start85155%_ '#f))
          (string-rindex__% _%str85152%_ _%char85153%_ _%start85155%_))))
    (define string-rindex
      (lambda _g89772_
        (let ((_g89771_ (let () (declare (not safe)) (##length _g89772_))))
          (cond ((let () (declare (not safe)) (##fx= _g89771_ 2))
                 (apply string-rindex__0 _g89772_))
                ((let () (declare (not safe)) (##fx= _g89771_ 3))
                 (apply string-rindex__% _g89772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g89772_))))))
    (define __string-rindex__%
      (lambda (_%str85065%_ _%char85066%_ _%start85067%_)
        (let* ((_%str85070%_ _%str85065%_)
               (_%char85078%_ _%char85066%_)
               (_%len85087%_
                (let () (declare (not safe)) (##string-length _%str85070%_)))
               (_%start85089%_
                (if (fixnum? _%start85067%_)
                    _%start85067%_
                    (let () (declare (not safe)) (##fx- _%len85087%_ '1)))))
          (let _%lp85092%_ ((_%k85094%_ _%start85089%_))
            (let ((_%k85096%_ _%k85094%_))
              (if (let () (declare (not safe)) (##fx>= _%k85096%_ '0))
                  (if (eq? _%char85078%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str85070%_ _%k85096%_)))
                      _%k85096%_
                      (_%lp85092%_
                       (let () (declare (not safe)) (##fx- _%k85096%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str85113%_ _%char85114%_)
        (let ((_%start85116%_ '#f))
          (__string-rindex__% _%str85113%_ _%char85114%_ _%start85116%_))))
    (define __string-rindex
      (lambda _g89774_
        (let ((_g89773_ (let () (declare (not safe)) (##length _g89774_))))
          (cond ((let () (declare (not safe)) (##fx= _g89773_ 2))
                 (apply __string-rindex__0 _g89774_))
                ((let () (declare (not safe)) (##fx= _g89773_ 3))
                 (apply __string-rindex__% _g89774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g89774_))))))
    (define string-split
      (lambda (_%str85039%_ _%char85040%_)
        (if (string? _%str85039%_)
            (let ((_%str85044%_ _%str85039%_))
              (if (char? _%char85040%_)
                  (let ((_%char85054%_ _%char85040%_))
                    (__string-split _%str85044%_ _%char85054%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@683.37-683.41"
                     'contract:
                     'char?
                     'value:
                     _%char85040%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@683.21-683.24"
               'contract:
               'string?
               'value:
               _%str85039%_)
              '#!void))))
    (define __string-split
      (lambda (_%str84980%_ _%char84981%_)
        (let* ((_%str84984%_ _%str84980%_)
               (_%char84992%_ _%char84981%_)
               (_%len85001%_
                (let () (declare (not safe)) (##string-length _%str84984%_))))
          (let _%lp85003%_ ((_%start85005%_ '0) (_%r85006%_ '()))
            (let* ((_%start85009%_ _%start85005%_)
                   (_%$e85022%_
                    (__string-index__%
                     _%str84984%_
                     _%char84992%_
                     _%start85009%_)))
              (if _%$e85022%_
                  ((lambda (_%end85025%_)
                     (let ((_%end85027%_ _%end85025%_))
                       (_%lp85003%_
                        (let () (declare (not safe)) (##fx+ _%end85027%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str84984%_
                                 _%start85009%_
                                 _%end85027%_))
                              _%r85006%_))))
                   _%$e85022%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start85009%_ _%len85001%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str84984%_
                                _%start85009%_
                                _%len85001%_)))
                       _%r85006%_)
                      (reverse! _%r85006%_))))))))
    (define string-join
      (lambda (_%strs84830%_ _%join84831%_)
        (letrec ((_%join-length84834%_
                  (lambda (_%strs84918%_ _%jlen84919%_)
                    (let _%lp84921%_ ((_%rest84923%_ _%strs84918%_)
                                      (_%len84924%_ '0))
                      (let* ((_%len84926%_ _%len84924%_)
                             (_%rest8493484942%_ _%rest84923%_)
                             (_%else8493684950%_ (lambda () '0))
                             (_%K8493884968%_
                              (lambda (_%rest84953%_ _%hd84954%_)
                                (if (string? _%hd84954%_)
                                    (let ((_%hd84956%_ _%hd84954%_))
                                      (if (pair? _%rest84953%_)
                                          (_%lp84921%_
                                           _%rest84953%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd84956%_))
                                                _%jlen84919%_
                                                _%len84926%_))
                                          (let ((__tmp89775
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd84956%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp89775 _%len84926%_))))
                                    (error '"expected string" _%hd84954%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest8493484942%_))
                            (let ((_%hd8493984971%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest8493484942%_)))
                                  (_%tl8494084973%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest8493484942%_))))
                              (let* ((_%hd84976%_ _%hd8493984971%_)
                                     (_%rest84978%_ _%tl8494084973%_))
                                (_%K8493884968%_ _%rest84978%_ _%hd84976%_)))
                            (_%else8493684950%_)))))))
          (let* ((_%join84839%_
                  (if (char? _%join84831%_)
                      (let () (declare (not safe)) (##string _%join84831%_))
                      (if (string? _%join84831%_)
                          _%join84831%_
                          (error '"expected string or char" _%join84831%_))))
                 (_%jlen84841%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join84839%_)))
                 (_%olen84843%_
                  (_%join-length84834%_ _%strs84830%_ _%jlen84841%_))
                 (_%ostr84845%_
                  (let () (declare (not safe)) (##make-string _%olen84843%_))))
            (let _%lp84848%_ ((_%rest84850%_ _%strs84830%_) (_%k84851%_ '0))
              (let* ((_%k84854%_ _%k84851%_)
                     (_%rest8487084878%_ _%rest84850%_)
                     (_%else8487284886%_ (lambda () '""))
                     (_%K8487484906%_
                      (lambda (_%rest84889%_ _%hd84890%_)
                        (let* ((_%hd84892%_ _%hd84890%_)
                               (_%hdlen84904%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd84892%_))))
                          (if (pair? _%rest84889%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd84892%_
                                   '0
                                   _%hdlen84904%_
                                   _%ostr84845%_
                                   _%k84854%_))
                                (let ((__tmp89776
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k84854%_ _%hdlen84904%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join84839%_
                                   '0
                                   _%jlen84841%_
                                   _%ostr84845%_
                                   __tmp89776))
                                (_%lp84848%_
                                 _%rest84889%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k84854%_
                                          _%hdlen84904%_
                                          _%jlen84841%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd84892%_
                                   '0
                                   _%hdlen84904%_
                                   _%ostr84845%_
                                   _%k84854%_))
                                _%ostr84845%_))))))
                (if (let () (declare (not safe)) (##pair? _%rest8487084878%_))
                    (let ((_%hd8487584909%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest8487084878%_)))
                          (_%tl8487684911%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest8487084878%_))))
                      (let* ((_%hd84914%_ _%hd8487584909%_)
                             (_%rest84916%_ _%tl8487684911%_))
                        (_%K8487484906%_ _%rest84916%_ _%hd84914%_)))
                    (_%else8487284886%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes84756%_ _%port84757%_ _%start84758%_ _%end84759%_)
        (if (u8vector? _%bytes84756%_)
            (let ((_%bytes84763%_ _%bytes84756%_))
              (if (input-port? _%port84757%_)
                  (let ((_%port84773%_ _%port84757%_))
                    (if ((lambda (_%o84782%_)
                           (and (fixnum? _%o84782%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o84782%_ '0))
                                (let ((__tmp89777
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes84763%_))))
                                  (declare (not safe))
                                  (##fx< _%o84782%_ __tmp89777))))
                         _%start84758%_)
                        (let ((_%start84786%_ _%start84758%_))
                          (if ((lambda (_%o84795%_)
                                 (and (fixnum? _%o84795%_)
                                      (let ((__tmp89778
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes84763%_))))
                                        (declare (not safe))
                                        (##fx<= _%start84786%_
                                                _%o84795%_
                                                __tmp89778))))
                               _%end84759%_)
                              (let ((_%end84799%_ _%end84759%_))
                                (__read-u8vector__%
                                 _%bytes84763%_
                                 _%port84773%_
                                 _%start84786%_
                                 _%end84799%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@750.22-750.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end84759%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@748.22-748.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start84758%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@747.22-747.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port84757%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@746.22-746.27"
               'contract:
               'u8vector?
               'value:
               _%bytes84756%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes84812%_ _%port84813%_)
        (let* ((_%start84815%_ '0)
               (_%end84817%_ (u8vector-length _%bytes84812%_)))
          (read-u8vector__%
           _%bytes84812%_
           _%port84813%_
           _%start84815%_
           _%end84817%_))))
    (define read-u8vector__1
      (lambda (_%bytes84819%_ _%port84820%_ _%start84821%_)
        (let ((_%end84823%_ (u8vector-length _%bytes84819%_)))
          (read-u8vector__%
           _%bytes84819%_
           _%port84820%_
           _%start84821%_
           _%end84823%_))))
    (define read-u8vector
      (lambda _g89780_
        (let ((_g89779_ (let () (declare (not safe)) (##length _g89780_))))
          (cond ((let () (declare (not safe)) (##fx= _g89779_ 2))
                 (apply read-u8vector__0 _g89780_))
                ((let () (declare (not safe)) (##fx= _g89779_ 3))
                 (apply read-u8vector__1 _g89780_))
                ((let () (declare (not safe)) (##fx= _g89779_ 4))
                 (apply read-u8vector__% _g89780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g89780_))))))
    (define __read-u8vector__%
      (lambda (_%bytes84695%_ _%port84696%_ _%start84697%_ _%end84698%_)
        (let* ((_%bytes84701%_ _%bytes84695%_)
               (_%port84709%_ _%port84696%_)
               (_%start84717%_ _%start84697%_)
               (_%end84725%_ _%end84698%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes84701%_
           _%start84717%_
           _%end84725%_
           _%port84709%_))))
    (define __read-u8vector__0
      (lambda (_%bytes84737%_ _%port84738%_)
        (let* ((_%start84740%_ '0)
               (_%end84742%_ (u8vector-length _%bytes84737%_)))
          (__read-u8vector__%
           _%bytes84737%_
           _%port84738%_
           _%start84740%_
           _%end84742%_))))
    (define __read-u8vector__1
      (lambda (_%bytes84744%_ _%port84745%_ _%start84746%_)
        (let ((_%end84748%_ (u8vector-length _%bytes84744%_)))
          (__read-u8vector__%
           _%bytes84744%_
           _%port84745%_
           _%start84746%_
           _%end84748%_))))
    (define __read-u8vector
      (lambda _g89782_
        (let ((_g89781_ (let () (declare (not safe)) (##length _g89782_))))
          (cond ((let () (declare (not safe)) (##fx= _g89781_ 2))
                 (apply __read-u8vector__0 _g89782_))
                ((let () (declare (not safe)) (##fx= _g89781_ 3))
                 (apply __read-u8vector__1 _g89782_))
                ((let () (declare (not safe)) (##fx= _g89781_ 4))
                 (apply __read-u8vector__% _g89782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g89782_))))))
    (define write-u8vector__%
      (lambda (_%bytes84620%_ _%port84621%_ _%start84622%_ _%end84623%_)
        (if (u8vector? _%bytes84620%_)
            (let ((_%bytes84627%_ _%bytes84620%_))
              (if (output-port? _%port84621%_)
                  (let ((_%port84637%_ _%port84621%_))
                    (if ((lambda (_%o84646%_)
                           (and (fixnum? _%o84646%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o84646%_ '0))
                                (let ((__tmp89783
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes84627%_))))
                                  (declare (not safe))
                                  (##fx< _%o84646%_ __tmp89783))))
                         _%start84622%_)
                        (let ((_%start84650%_ _%start84622%_))
                          (if ((lambda (_%o84659%_)
                                 (and (fixnum? _%o84659%_)
                                      (let ((__tmp89784
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes84627%_))))
                                        (declare (not safe))
                                        (##fx<= _%start84650%_
                                                _%o84659%_
                                                __tmp89784))))
                               _%end84623%_)
                              (let ((_%end84663%_ _%end84623%_))
                                (__write-u8vector__%
                                 _%bytes84627%_
                                 _%port84637%_
                                 _%start84650%_
                                 _%end84663%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@760.23-760.26"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end84623%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@758.23-758.28"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start84622%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@757.23-757.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port84621%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@756.23-756.28"
               'contract:
               'u8vector?
               'value:
               _%bytes84620%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes84676%_ _%port84677%_)
        (let* ((_%start84679%_ '0)
               (_%end84681%_ (u8vector-length _%bytes84676%_)))
          (write-u8vector__%
           _%bytes84676%_
           _%port84677%_
           _%start84679%_
           _%end84681%_))))
    (define write-u8vector__1
      (lambda (_%bytes84683%_ _%port84684%_ _%start84685%_)
        (let ((_%end84687%_ (u8vector-length _%bytes84683%_)))
          (write-u8vector__%
           _%bytes84683%_
           _%port84684%_
           _%start84685%_
           _%end84687%_))))
    (define write-u8vector
      (lambda _g89786_
        (let ((_g89785_ (let () (declare (not safe)) (##length _g89786_))))
          (cond ((let () (declare (not safe)) (##fx= _g89785_ 2))
                 (apply write-u8vector__0 _g89786_))
                ((let () (declare (not safe)) (##fx= _g89785_ 3))
                 (apply write-u8vector__1 _g89786_))
                ((let () (declare (not safe)) (##fx= _g89785_ 4))
                 (apply write-u8vector__% _g89786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g89786_))))))
    (define __write-u8vector__%
      (lambda (_%bytes84559%_ _%port84560%_ _%start84561%_ _%end84562%_)
        (let* ((_%bytes84565%_ _%bytes84559%_)
               (_%port84573%_ _%port84560%_)
               (_%start84581%_ _%start84561%_)
               (_%end84589%_ _%end84562%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes84565%_
           _%start84581%_
           _%end84589%_
           _%port84573%_))))
    (define __write-u8vector__0
      (lambda (_%bytes84601%_ _%port84602%_)
        (let* ((_%start84604%_ '0)
               (_%end84606%_ (u8vector-length _%bytes84601%_)))
          (__write-u8vector__%
           _%bytes84601%_
           _%port84602%_
           _%start84604%_
           _%end84606%_))))
    (define __write-u8vector__1
      (lambda (_%bytes84608%_ _%port84609%_ _%start84610%_)
        (let ((_%end84612%_ (u8vector-length _%bytes84608%_)))
          (__write-u8vector__%
           _%bytes84608%_
           _%port84609%_
           _%start84610%_
           _%end84612%_))))
    (define __write-u8vector
      (lambda _g89788_
        (let ((_g89787_ (let () (declare (not safe)) (##length _g89788_))))
          (cond ((let () (declare (not safe)) (##fx= _g89787_ 2))
                 (apply __write-u8vector__0 _g89788_))
                ((let () (declare (not safe)) (##fx= _g89787_ 3))
                 (apply __write-u8vector__1 _g89788_))
                ((let () (declare (not safe)) (##fx= _g89787_ 4))
                 (apply __write-u8vector__% _g89788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g89788_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag84527%_
               _%dbg-exprs84528%_
               _%dbg-thunks84529%_
               _%expr84530%_
               _%thunk84531%_)
        (letrec ((_%o84533%_ (current-output-port))
                 (_%e84534%_ (current-error-port))
                 (_%p84535%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f84536%_
                  (lambda ()
                    (force-output _%o84533%_)
                    (force-output _%e84534%_)))
                 (_%d84537%_
                  (lambda (_%x84544%_) (display _%x84544%_ _%e84534%_)))
                 (_%w84538%_
                  (lambda (_%x84546%_) (_%p84535%_ _%x84546%_ _%e84534%_)))
                 (_%n84539%_ (lambda () (newline _%e84534%_)))
                 (_%v84540%_
                  (lambda (_%l84549%_)
                    (for-each
                     (lambda (_%x84551%_)
                       (_%d84537%_ '" ")
                       (_%w84538%_ _%x84551%_))
                     _%l84549%_)
                    (_%n84539%_)))
                 (_%x84541%_
                  (lambda (_%expr84553%_ _%thunk84554%_)
                    (_%f84536%_)
                    (_%d84537%_ '"  ")
                    (_%w84538%_ _%expr84553%_)
                    (_%d84537%_ '" =>")
                    (call-with-values
                     _%thunk84554%_
                     (lambda _%x84556%_
                       (_%v84540%_ _%x84556%_)
                       (_%f84536%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x84556%_)))))))
          (if _%tag84527%_
              (begin
                (if (eq? _%tag84527%_ '#!void)
                    '#!void
                    (begin
                      (_%f84536%_)
                      (_%d84537%_ _%tag84527%_)
                      (_%n84539%_)))
                (for-each _%x84541%_ _%dbg-exprs84528%_ _%dbg-thunks84529%_)
                (if _%thunk84531%_
                    (_%x84541%_ _%expr84530%_ _%thunk84531%_)
                    '#!void))
              (if _%thunk84531%_ (_%thunk84531%_) '#!void)))))))
