(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1770405369)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args109211%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args109211%_))
          (newline))))
    (define display*
      (lambda _%args109208%_
        (let () (declare (not safe)) (##for-each display _%args109208%_))))
    (define __file-newer?
      (lambda (_%file1108999%_ _%file2109000%_)
        (let* ((_%file1109003%_ _%file1108999%_)
               (_%file2109011%_ _%file2109000%_))
          (letrec ((_%__modification-time109155%_
                    (lambda (_%file109196%_)
                      (let* ((_%file109199%_ _%file109196%_)
                             (__tmp111987
                              (let ((__tmp111988
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file109199%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp111988))))
                        (declare (not safe))
                        (##time->seconds __tmp111987))))
                   (_%modification-time109156%_
                    (lambda (_%file109184%_)
                      (let ((_%file109187%_ _%file109184%_))
                        (_%__modification-time109155%_ _%file109187%_)))))
            (let ((__tmp111990
                   (let* ((_%file109158%_ _%file1109003%_)
                          (_%file109162%_ _%file109158%_))
                     (_%__modification-time109155%_ _%file109162%_)))
                  (__tmp111989
                   (let* ((_%file109171%_ _%file2109011%_)
                          (_%file109175%_ _%file109171%_))
                     (_%__modification-time109155%_ _%file109175%_))))
              (declare (not safe))
              (##fl> __tmp111990 __tmp111989))))))
    (define file-newer?
      (lambda (_%file198585%_ _%file298586%_)
        (if (string? _%file198585%_)
            (let ((_%file198590%_ _%file198585%_))
              (if (string? _%file298586%_)
                  (let ((_%file298600%_ _%file298586%_))
                    (__file-newer? _%file198590%_ _%file298600%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@97.20-97.25"
                     'contract:
                     'string?
                     'value:
                     _%file298586%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@96.20-96.25"
               'contract:
               'string?
               'value:
               _%file198585%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir108719%_ _%perms108720%_)
        (let* ((_%dir108723%_ _%dir108719%_) (_%perms108731%_ _%perms108720%_))
          (letrec ((_%__create1108875%_
                    (lambda (_%path108974%_)
                      (let ((_%path108977%_ _%path108974%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path108977%_))
                            (if (eq? (file-type _%path108977%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path108977%_))
                            (if _%perms108731%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path108977%_
                                             (cons 'permissions:
                                                   (cons _%perms108731%_
                                                         '())))))
                                (create-directory _%path108977%_))))))
                   (_%create1108876%_
                    (lambda (_%path108962%_)
                      (let ((_%path108965%_ _%path108962%_))
                        (_%__create1108875%_ _%path108965%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir108723%_))
                '#!void
                (let _%lp108878%_ ((_%start108880%_ '0))
                  (let ((_%$e108927%_
                         (let* ((_%str108882%_ _%dir108723%_)
                                (_%char108885%_ '#\/)
                                (_%start108888%_ _%start108880%_)
                                (_%str108893%_ _%str108882%_)
                                (_%char108907%_ _%char108885%_))
                           (if (nonnegative-fixnum? _%start108888%_)
                               (let ((_%start108917%_ _%start108888%_))
                                 (__string-index__%
                                  _%str108893%_
                                  _%char108907%_
                                  _%start108917%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start108888%_)
                                 '#!void)))))
                    (if _%$e108927%_
                        ((lambda (_%x108930%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x108930%_ '0))
                               (let* ((_%path108932%_
                                       (substring
                                        _%dir108723%_
                                        '0
                                        _%x108930%_))
                                      (_%path108936%_ _%path108932%_))
                                 (_%__create1108875%_ _%path108936%_))
                               '#!void)
                           (_%lp108878%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x108930%_ '1))))
                         _%$e108927%_)
                        (let* ((_%path108948%_ _%dir108723%_)
                               (_%path108952%_ _%path108948%_))
                          (_%__create1108875%_ _%path108952%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir108992%_)
        (let ((_%perms108994%_ '493))
          (__create-directory*__% _%dir108992%_ _%perms108994%_))))
    (define __create-directory*
      (lambda _g111991_
        (let ((_g111992_ (let () (declare (not safe)) (##length _g111991_))))
          (cond ((let () (declare (not safe)) (##fx= _g111992_ 1))
                 (apply __create-directory*__0 _g111991_))
                ((let () (declare (not safe)) (##fx= _g111992_ 2))
                 (apply __create-directory*__% _g111991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g111991_))))))
    (define create-directory*__%
      (lambda (_%dir98731%_ _%perms98732%_)
        (if (string? _%dir98731%_)
            (let ((_%dir98736%_ _%dir98731%_))
              (if (fixnum? _%perms98732%_)
                  (let ((_%perms98746%_ _%perms98732%_))
                    (__create-directory*__% _%dir98736%_ _%perms98746%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@108.26-108.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms98732%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@107.26-107.29"
               'contract:
               'string?
               'value:
               _%dir98731%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir98759%_)
        (let ((_%perms98761%_ '493))
          (create-directory*__% _%dir98759%_ _%perms98761%_))))
    (define create-directory*
      (lambda _g111993_
        (let ((_g111994_ (let () (declare (not safe)) (##length _g111993_))))
          (cond ((let () (declare (not safe)) (##fx= _g111994_ 1))
                 (apply create-directory*__0 _g111993_))
                ((let () (declare (not safe)) (##fx= _g111994_ 2))
                 (apply create-directory*__% _g111993_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g111993_))))))
    (define __move-file__%
      (lambda (_%src108662%_ _%dest108663%_ _%replace?108664%_)
        (let* ((_%src108667%_ _%src108662%_)
               (_%dest108675%_ _%dest108663%_)
               (_%replace?108683%_ _%replace?108664%_))
          (letrec ((_%force-move-it108692%_
                    (lambda ()
                      (let ((_%tmp108698%_
                             (if _%replace?108683%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest108675%_))
                                     (let ((__tmp111995
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest108675%_
                                        '"."
                                        __tmp111995))
                                     '#f)
                                 '#f)))
                        (if _%tmp108698%_
                            (rename-file _%dest108675%_ _%tmp108698%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e108700%_)
                           (if _%tmp108698%_
                               (rename-file _%tmp108698%_ _%dest108675%_ '#t)
                               '#!void)
                           (raise _%e108700%_))
                         (lambda ()
                           (let ((_%fi108703%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src108667%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi108703%_))
                                      'symbolic-link)
                                 (let ((__tmp111996
                                        (path-normalize _%src108667%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp111996
                                    _%dest108675%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src108667%_
                                    _%dest108675%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src108667%_))
                           (if _%tmp108698%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp108698%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e108694%_)
               (if (let () (declare (not safe)) (##file-exists? _%src108667%_))
                   (_%force-move-it108692%_)
                   (raise _%e108694%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src108667%_
                  _%dest108675%_
                  _%replace?108683%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src108709%_ _%dest108710%_)
        (let ((_%replace?108712%_ '#t))
          (__move-file__% _%src108709%_ _%dest108710%_ _%replace?108712%_))))
    (define __move-file
      (lambda _g111997_
        (let ((_g111998_ (let () (declare (not safe)) (##length _g111997_))))
          (cond ((let () (declare (not safe)) (##fx= _g111998_ 2))
                 (apply __move-file__0 _g111997_))
                ((let () (declare (not safe)) (##fx= _g111998_ 3))
                 (apply __move-file__% _g111997_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g111997_))))))
    (define move-file__%
      (lambda (_%src98887%_ _%dest98888%_ _%replace?98889%_)
        (if (string? _%src98887%_)
            (let ((_%src98893%_ _%src98887%_))
              (if (string? _%dest98888%_)
                  (let ((_%dest98903%_ _%dest98888%_))
                    (if (boolean? _%replace?98889%_)
                        (let ((_%replace?98913%_ _%replace?98889%_))
                          (__move-file__%
                           _%src98893%_
                           _%dest98903%_
                           _%replace?98913%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@132.51-132.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?98889%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@132.34-132.38"
                     'contract:
                     'string?
                     'value:
                     _%dest98888%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@132.18-132.21"
               'contract:
               'string?
               'value:
               _%src98887%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src98926%_ _%dest98927%_)
        (let ((_%replace?98929%_ '#t))
          (move-file__% _%src98926%_ _%dest98927%_ _%replace?98929%_))))
    (define move-file
      (lambda _g111999_
        (let ((_g112000_ (let () (declare (not safe)) (##length _g111999_))))
          (cond ((let () (declare (not safe)) (##fx= _g112000_ 2))
                 (apply move-file__0 _g111999_))
                ((let () (declare (not safe)) (##fx= _g112000_ 3))
                 (apply move-file__% _g111999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g111999_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore108658%_ '#t))
    (define true? (lambda (_%obj108655%_) (eq? _%obj108655%_ '#t)))
    (define false (lambda _%ignore108652%_ '#f))
    (define void (lambda _%ignore108649%_ '#!void))
    (define void? (lambda (_%obj108646%_) (eq? _%obj108646%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj108643%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj108643%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj108640%_) (eq? _%obj108640%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj108637%_) (eq? _%obj108637%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj108634%_) (eq? _%obj108634%_ '#!optional)))
    (define immediate?
      (lambda (_%obj108631%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj108631%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj108628%_)
        (if (fixnum? _%obj108628%_)
            (let () (declare (not safe)) (##fx>= _%obj108628%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj108622%_)
        (let ((_%$e108625%_ (pair? _%obj108622%_)))
          (if _%$e108625%_ _%$e108625%_ (null? _%obj108622%_)))))
    (define values-count
      (lambda (_%obj108619%_)
        (if (let () (declare (not safe)) (##values? _%obj108619%_))
            (let () (declare (not safe)) (##values-length _%obj108619%_))
            '1)))
    (define __values-ref
      (lambda (_%obj108606%_ _%k108607%_)
        (let ((_%k108610%_ _%k108607%_))
          (if (let () (declare (not safe)) (##values? _%obj108606%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj108606%_ _%k108610%_))
              _%obj108606%_))))
    (define values-ref
      (lambda (_%obj99055%_ _%k99056%_)
        (if (fixnum? _%k99056%_)
            (let ((_%k99060%_ _%k99056%_))
              (__values-ref _%obj99055%_ _%k99060%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@266.23-266.24"
               'contract:
               'fixnum?
               'value:
               _%k99056%_)
              '#!void))))
    (define values->list
      (lambda (_%obj108603%_)
        (if (let () (declare (not safe)) (##values? _%obj108603%_))
            (let () (declare (not safe)) (##values->list _%obj108603%_))
            (list _%obj108603%_))))
    (define __foldl1
      (lambda (_%f108551%_ _%iv108552%_ _%lst108553%_)
        (let ((_%f108556%_ _%f108551%_))
          (let _%lp108565%_ ((_%rest108567%_ _%lst108553%_)
                             (_%r108568%_ _%iv108552%_))
            (let* ((_%rest108569108577%_ _%rest108567%_)
                   (_%else108571108585%_ (lambda () _%r108568%_))
                   (_%K108573108591%_
                    (lambda (_%rest108588%_ _%x108589%_)
                      (_%lp108565%_
                       _%rest108588%_
                       (let ()
                         (declare (not safe))
                         (_%f108556%_ _%x108589%_ _%r108568%_))))))
              (if (pair? _%rest108569108577%_)
                  (let ((_%hd108574108594%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest108569108577%_)))
                        (_%tl108575108596%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest108569108577%_))))
                    (let* ((_%x108599%_ _%hd108574108594%_)
                           (_%rest108601%_ _%tl108575108596%_))
                      (_%K108573108591%_ _%rest108601%_ _%x108599%_)))
                  (_%else108571108585%_)))))))
    (define foldl1
      (lambda (_%f99190%_ _%iv99191%_ _%lst99192%_)
        (if (procedure? _%f99190%_)
            (let ((_%f99196%_ _%f99190%_))
              (__foldl1 _%f99196%_ _%iv99191%_ _%lst99192%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@289.15-289.16"
               'contract:
               'procedure?
               'value:
               _%f99190%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f108464%_ _%iv108465%_ _%lst1108466%_ _%lst2108467%_)
        (let ((_%f108470%_ _%f108464%_))
          (let _%lp108479%_ ((_%rest1108481%_ _%lst1108466%_)
                             (_%rest2108482%_ _%lst2108467%_)
                             (_%r108483%_ _%iv108465%_))
            (let* ((_%rest1108484108492%_ _%rest1108481%_)
                   (_%else108486108500%_ (lambda () _%r108483%_))
                   (_%K108488108539%_
                    (lambda (_%rest1108503%_ _%x1108504%_)
                      (let* ((_%rest2108505108513%_ _%rest2108482%_)
                             (_%else108507108521%_ (lambda () _%r108483%_))
                             (_%K108509108527%_
                              (lambda (_%rest2108524%_ _%x2108525%_)
                                (_%lp108479%_
                                 _%rest1108503%_
                                 _%rest2108524%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f108470%_
                                    _%x1108504%_
                                    _%x2108525%_
                                    _%r108483%_))))))
                        (if (pair? _%rest2108505108513%_)
                            (let ((_%hd108510108530%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2108505108513%_)))
                                  (_%tl108511108532%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2108505108513%_))))
                              (let* ((_%x2108535%_ _%hd108510108530%_)
                                     (_%rest2108537%_ _%tl108511108532%_))
                                (_%K108509108527%_
                                 _%rest2108537%_
                                 _%x2108535%_)))
                            (_%else108507108521%_))))))
              (if (pair? _%rest1108484108492%_)
                  (let ((_%hd108489108542%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1108484108492%_)))
                        (_%tl108490108544%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1108484108492%_))))
                    (let* ((_%x1108547%_ _%hd108489108542%_)
                           (_%rest1108549%_ _%tl108490108544%_))
                      (_%K108488108539%_ _%rest1108549%_ _%x1108547%_)))
                  (_%else108486108500%_)))))))
    (define foldl2
      (lambda (_%f99326%_ _%iv99327%_ _%lst199328%_ _%lst299329%_)
        (if (procedure? _%f99326%_)
            (let ((_%f99333%_ _%f99326%_))
              (__foldl2 _%f99333%_ _%iv99327%_ _%lst199328%_ _%lst299329%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@296.15-296.16"
               'contract:
               'procedure?
               'value:
               _%f99326%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f108397%_ _%iv108398%_ _%lst108399%_)
        (let* ((_%f108401%_ _%f108397%_)
               (_%iv108404%_ _%iv108398%_)
               (_%lst108407%_ _%lst108399%_))
          (if (procedure? _%f108401%_)
              (let ((_%f108412%_ _%f108401%_))
                (__foldl1 _%f108412%_ _%iv108404%_ _%lst108407%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108401%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f108425%_ _%iv108426%_ _%lst1108427%_ _%lst2108428%_)
        (let* ((_%f108430%_ _%f108425%_)
               (_%iv108433%_ _%iv108426%_)
               (_%lst1108436%_ _%lst1108427%_)
               (_%lst2108439%_ _%lst2108428%_))
          (if (procedure? _%f108430%_)
              (let ((_%f108444%_ _%f108430%_))
                (__foldl2
                 _%f108444%_
                 _%iv108433%_
                 _%lst1108436%_
                 _%lst2108439%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108430%_)
                '#!void)))))
    (define foldl
      (lambda _g112001_
        (let ((_g112002_ (let () (declare (not safe)) (##length _g112001_))))
          (cond ((let () (declare (not safe)) (##fx= _g112002_ 3))
                 (apply foldl__0 _g112001_))
                ((let () (declare (not safe)) (##fx= _g112002_ 4))
                 (apply foldl__1 _g112001_))
                ((let () (declare (not safe)) (##fx>= _g112002_ 4))
                 (apply foldl* _g112001_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g112001_))))))
    (define __foldl*
      (lambda (_%f108328%_ _%iv108329%_ . _%rest108330%_)
        (let ((_%f108333%_ _%f108328%_))
          (let _%recur108342%_ ((_%iv108344%_ _%iv108329%_)
                                (_%rest108345%_ _%rest108330%_))
            (if (let* ((_%f108347%_ pair?)
                       (_%lst108350%_ _%rest108345%_)
                       (_%f108355%_ _%f108347%_))
                  (__andmap1 _%f108355%_ _%lst108350%_))
                (_%recur108342%_
                 (let ((__tmp112003
                        (let* ((_%f108374%_
                                (lambda (_%xs108371%_ _%r108372%_)
                                  (cons (car _%xs108371%_) _%r108372%_)))
                               (_%iv108377%_ (list _%iv108344%_))
                               (_%lst108380%_ _%rest108345%_)
                               (_%f108385%_ _%f108374%_))
                          (__foldr1 _%f108385%_ _%iv108377%_ _%lst108380%_))))
                   (declare (not safe))
                   (##apply _%f108333%_ __tmp112003))
                 (map cdr _%rest108345%_))
                _%iv108344%_)))))
    (define foldl*
      (lambda (_%f99463%_ _%iv99464%_ . _%rest99465%_)
        (if (procedure? _%f99463%_)
            (let ((_%f99469%_ _%f99463%_))
              (declare (not safe))
              (##apply __foldl* _%f99469%_ _%iv99464%_ _%rest99465%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@314.15-314.16"
               'contract:
               'procedure?
               'value:
               _%f99463%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f108277%_ _%iv108278%_ _%lst108279%_)
        (let ((_%f108282%_ _%f108277%_))
          (let _%recur108291%_ ((_%rest108293%_ _%lst108279%_))
            (let* ((_%rest108294108302%_ _%rest108293%_)
                   (_%else108296108310%_ (lambda () _%iv108278%_))
                   (_%K108298108316%_
                    (lambda (_%rest108313%_ _%x108314%_)
                      (let ((__tmp112004 (_%recur108291%_ _%rest108313%_)))
                        (declare (not safe))
                        (_%f108282%_ _%x108314%_ __tmp112004)))))
              (if (pair? _%rest108294108302%_)
                  (let ((_%hd108299108319%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest108294108302%_)))
                        (_%tl108300108321%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest108294108302%_))))
                    (let* ((_%x108324%_ _%hd108299108319%_)
                           (_%rest108326%_ _%tl108300108321%_))
                      (_%K108298108316%_ _%rest108326%_ _%x108324%_)))
                  (_%else108296108310%_)))))))
    (define foldr1
      (lambda (_%f99599%_ _%iv99600%_ _%lst99601%_)
        (if (procedure? _%f99599%_)
            (let ((_%f99605%_ _%f99599%_))
              (__foldr1 _%f99605%_ _%iv99600%_ _%lst99601%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@324.15-324.16"
               'contract:
               'procedure?
               'value:
               _%f99599%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f108191%_ _%iv108192%_ _%lst1108193%_ _%lst2108194%_)
        (let ((_%f108197%_ _%f108191%_))
          (let _%recur108206%_ ((_%rest1108208%_ _%lst1108193%_)
                                (_%rest2108209%_ _%lst2108194%_))
            (let* ((_%rest1108210108218%_ _%rest1108208%_)
                   (_%else108212108226%_ (lambda () _%iv108192%_))
                   (_%K108214108265%_
                    (lambda (_%rest1108229%_ _%x1108230%_)
                      (let* ((_%rest2108231108239%_ _%rest2108209%_)
                             (_%else108233108247%_ (lambda () _%iv108192%_))
                             (_%K108235108253%_
                              (lambda (_%rest2108250%_ _%x2108251%_)
                                (let ((__tmp112005
                                       (_%recur108206%_
                                        _%rest1108229%_
                                        _%rest2108250%_)))
                                  (declare (not safe))
                                  (_%f108197%_
                                   _%x1108230%_
                                   _%x2108251%_
                                   __tmp112005)))))
                        (if (pair? _%rest2108231108239%_)
                            (let ((_%hd108236108256%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2108231108239%_)))
                                  (_%tl108237108258%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2108231108239%_))))
                              (let* ((_%x2108261%_ _%hd108236108256%_)
                                     (_%rest2108263%_ _%tl108237108258%_))
                                (_%K108235108253%_
                                 _%rest2108263%_
                                 _%x2108261%_)))
                            (_%else108233108247%_))))))
              (if (pair? _%rest1108210108218%_)
                  (let ((_%hd108215108268%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1108210108218%_)))
                        (_%tl108216108270%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1108210108218%_))))
                    (let* ((_%x1108273%_ _%hd108215108268%_)
                           (_%rest1108275%_ _%tl108216108270%_))
                      (_%K108214108265%_ _%rest1108275%_ _%x1108273%_)))
                  (_%else108212108226%_)))))))
    (define foldr2
      (lambda (_%f99735%_ _%iv99736%_ _%lst199737%_ _%lst299738%_)
        (if (procedure? _%f99735%_)
            (let ((_%f99742%_ _%f99735%_))
              (__foldr2 _%f99742%_ _%iv99736%_ _%lst199737%_ _%lst299738%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@331.15-331.16"
               'contract:
               'procedure?
               'value:
               _%f99735%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f108124%_ _%iv108125%_ _%lst108126%_)
        (let* ((_%f108128%_ _%f108124%_)
               (_%iv108131%_ _%iv108125%_)
               (_%lst108134%_ _%lst108126%_))
          (if (procedure? _%f108128%_)
              (let ((_%f108139%_ _%f108128%_))
                (__foldr1 _%f108139%_ _%iv108131%_ _%lst108134%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108128%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f108152%_ _%iv108153%_ _%lst1108154%_ _%lst2108155%_)
        (let* ((_%f108157%_ _%f108152%_)
               (_%iv108160%_ _%iv108153%_)
               (_%lst1108163%_ _%lst1108154%_)
               (_%lst2108166%_ _%lst2108155%_))
          (if (procedure? _%f108157%_)
              (let ((_%f108171%_ _%f108157%_))
                (__foldr2
                 _%f108171%_
                 _%iv108160%_
                 _%lst1108163%_
                 _%lst2108166%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f108157%_)
                '#!void)))))
    (define foldr
      (lambda _g112006_
        (let ((_g112007_ (let () (declare (not safe)) (##length _g112006_))))
          (cond ((let () (declare (not safe)) (##fx= _g112007_ 3))
                 (apply foldr__0 _g112006_))
                ((let () (declare (not safe)) (##fx= _g112007_ 4))
                 (apply foldr__1 _g112006_))
                ((let () (declare (not safe)) (##fx>= _g112007_ 4))
                 (apply foldr* _g112006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g112006_))))))
    (define __foldr*
      (lambda (_%f108056%_ _%iv108057%_ . _%rest108058%_)
        (let ((_%f108061%_ _%f108056%_))
          (let _%recur108070%_ ((_%rest108072%_ _%rest108058%_))
            (if (let* ((_%f108074%_ pair?)
                       (_%lst108077%_ _%rest108072%_)
                       (_%f108082%_ _%f108074%_))
                  (__andmap1 _%f108082%_ _%lst108077%_))
                (let ((__tmp112008
                       (let* ((_%f108101%_
                               (lambda (_%xs108098%_ _%r108099%_)
                                 (cons (car _%xs108098%_) _%r108099%_)))
                              (_%iv108104%_
                               (list (_%recur108070%_
                                      (map cdr _%rest108072%_))))
                              (_%lst108107%_ _%rest108072%_)
                              (_%f108112%_ _%f108101%_))
                         (__foldr1 _%f108112%_ _%iv108104%_ _%lst108107%_))))
                  (declare (not safe))
                  (##apply _%f108061%_ __tmp112008))
                _%iv108057%_)))))
    (define foldr*
      (lambda (_%f99872%_ _%iv99873%_ . _%rest99874%_)
        (if (procedure? _%f99872%_)
            (let ((_%f99878%_ _%f99872%_))
              (declare (not safe))
              (##apply __foldr* _%f99878%_ _%iv99873%_ _%rest99874%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@349.15-349.16"
               'contract:
               'procedure?
               'value:
               _%f99872%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%l107943%_)
        (let* ((_%l107944107957%_ _%l107943%_)
               (_%E107948107961%_
                (lambda ()
                  (error '"No clause matching"
                         _%l107944107957%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K107953108046%_
                 (lambda (_%r108044%_) (remove-nulls! _%r108044%_)))
                (_%K107950108033%_
                 (lambda (_%r107973%_)
                   (let _%loop107975%_ ((_%l107977%_ _%l107943%_)
                                        (_%r107978%_ _%r107973%_))
                     (let* ((_%r107979107992%_ _%r107978%_)
                            (_%E107983107996%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r107979107992%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K107988108023%_
                              (lambda (_%rr108021%_)
                                (let ((__tmp112010 _%l107977%_)
                                      (__tmp112009
                                       (remove-nulls! _%rr108021%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp112010 __tmp112009))))
                             (_%K107985108010%_
                              (lambda (_%rr108008%_)
                                (_%loop107975%_ _%r107978%_ _%rr108008%_)))
                             (_%K107984108001%_ (lambda () '#!void)))
                         (if (pair? _%r107979107992%_)
                             (let ((_%tl107990108028%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r107979107992%_)))
                                   (_%hd107989108026%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r107979107992%_))))
                               (if (null? _%hd107989108026%_)
                                   (let ((_%rr108031%_ _%tl107990108028%_))
                                     (_%K107988108023%_ _%rr108031%_))
                                   (let ((_%rr108016%_ _%tl107990108028%_))
                                     (_%K107985108010%_ _%rr108016%_))))
                             '#!void))))
                   _%l107943%_))
                (_%K107949107966%_ (lambda () _%l107943%_)))
            (if (pair? _%l107944107957%_)
                (let ((_%tl107955108051%_
                       (let () (declare (not safe)) (##cdr _%l107944107957%_)))
                      (_%hd107954108049%_
                       (let ()
                         (declare (not safe))
                         (##car _%l107944107957%_))))
                  (if (null? _%hd107954108049%_)
                      (let ((_%r108054%_ _%tl107955108051%_))
                        (remove-nulls! _%r108054%_))
                      (let ((_%r108039%_ _%tl107955108051%_))
                        (_%K107950108033%_ _%r108039%_))))
                (_%K107949107966%_))))))
    (define append1!
      (lambda (_%l107928%_ _%x107929%_)
        (let ((_%l2107932%_ (cons _%x107929%_ '())))
          (if (pair? _%l107928%_)
              (let ((_%l107934%_ _%l107928%_))
                (let ((__tmp112011
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l107934%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp112011 _%l2107932%_))
                _%l107934%_)
              _%l2107932%_))))
    (define __append-reverse-until
      (lambda (_%pred107870%_ _%rhead107871%_ _%tail107872%_)
        (let ((_%pred107875%_ _%pred107870%_))
          (let _%loop107884%_ ((_%rhead107886%_ _%rhead107871%_)
                               (_%tail107887%_ _%tail107872%_))
            (let* ((_%rhead107889107898%_ _%rhead107886%_)
                   (_%E107892107902%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead107889107898%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K107896107925%_ (lambda () (values '() _%tail107887%_)))
                    (_%K107893107909%_
                     (lambda (_%r107906%_ _%a107907%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred107875%_ _%a107907%_))
                           (values _%rhead107886%_ _%tail107887%_)
                           (_%loop107884%_
                            _%r107906%_
                            (cons _%a107907%_ _%tail107887%_))))))
                (let ((_%try-match107891107921%_
                       (lambda ()
                         (if (pair? _%rhead107889107898%_)
                             (let ((_%tl107895107914%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead107889107898%_)))
                                   (_%hd107894107912%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead107889107898%_))))
                               (let ((_%a107917%_ _%hd107894107912%_)
                                     (_%r107919%_ _%tl107895107914%_))
                                 (_%K107893107909%_ _%r107919%_ _%a107917%_)))
                             (_%E107892107902%_)))))
                  (if (null? _%rhead107889107898%_)
                      (_%K107896107925%_)
                      (_%try-match107891107921%_)))))))))
    (define append-reverse-until
      (lambda (_%pred100008%_ _%rhead100009%_ _%tail100010%_)
        (if (procedure? _%pred100008%_)
            (let ((_%pred100014%_ _%pred100008%_))
              (__append-reverse-until
               _%pred100014%_
               _%rhead100009%_
               _%tail100010%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@389.29-389.33"
               'contract:
               'procedure?
               'value:
               _%pred100008%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f107819%_ _%lst107820%_)
        (let ((_%f107823%_ _%f107819%_))
          (let _%lp107832%_ ((_%rest107834%_ _%lst107820%_))
            (let* ((_%rest107836107844%_ _%rest107834%_)
                   (_%else107838107852%_ (lambda () '#t))
                   (_%K107840107858%_
                    (lambda (_%rest107855%_ _%x107856%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f107823%_ _%x107856%_))
                          (_%lp107832%_ _%rest107855%_)
                          '#f))))
              (if (pair? _%rest107836107844%_)
                  (let ((_%hd107841107861%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest107836107844%_)))
                        (_%tl107842107863%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest107836107844%_))))
                    (let* ((_%x107866%_ _%hd107841107861%_)
                           (_%rest107868%_ _%tl107842107863%_))
                      (_%K107840107858%_ _%rest107868%_ _%x107866%_)))
                  (_%else107838107852%_)))))))
    (define andmap1
      (lambda (_%f100144%_ _%lst100145%_)
        (if (procedure? _%f100144%_)
            (let ((_%f100149%_ _%f100144%_))
              (__andmap1 _%f100149%_ _%lst100145%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@400.16-400.17"
               'contract:
               'procedure?
               'value:
               _%f100144%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f107733%_ _%lst1107734%_ _%lst2107735%_)
        (let ((_%f107738%_ _%f107733%_))
          (let _%lp107747%_ ((_%rest1107749%_ _%lst1107734%_)
                             (_%rest2107750%_ _%lst2107735%_))
            (let* ((_%rest1107752107760%_ _%rest1107749%_)
                   (_%else107754107768%_ (lambda () '#t))
                   (_%K107756107807%_
                    (lambda (_%rest1107771%_ _%x1107772%_)
                      (let* ((_%rest2107773107781%_ _%rest2107750%_)
                             (_%else107775107789%_ (lambda () '#t))
                             (_%K107777107795%_
                              (lambda (_%rest2107792%_ _%x2107793%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f107738%_ _%x1107772%_ _%x2107793%_))
                                    (_%lp107747%_
                                     _%rest1107771%_
                                     _%rest2107792%_)
                                    '#f))))
                        (if (pair? _%rest2107773107781%_)
                            (let ((_%hd107778107798%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2107773107781%_)))
                                  (_%tl107779107800%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2107773107781%_))))
                              (let* ((_%x2107803%_ _%hd107778107798%_)
                                     (_%rest2107805%_ _%tl107779107800%_))
                                (_%K107777107795%_
                                 _%rest2107805%_
                                 _%x2107803%_)))
                            (_%else107775107789%_))))))
              (if (pair? _%rest1107752107760%_)
                  (let ((_%hd107757107810%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1107752107760%_)))
                        (_%tl107758107812%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1107752107760%_))))
                    (let* ((_%x1107815%_ _%hd107757107810%_)
                           (_%rest1107817%_ _%tl107758107812%_))
                      (_%K107756107807%_ _%rest1107817%_ _%x1107815%_)))
                  (_%else107754107768%_)))))))
    (define andmap2
      (lambda (_%f100279%_ _%lst1100280%_ _%lst2100281%_)
        (if (procedure? _%f100279%_)
            (let ((_%f100285%_ _%f100279%_))
              (__andmap2 _%f100285%_ _%lst1100280%_ _%lst2100281%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@409.16-409.17"
               'contract:
               'procedure?
               'value:
               _%f100279%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f107677%_ _%lst107678%_)
        (let* ((_%f107680%_ _%f107677%_) (_%lst107683%_ _%lst107678%_))
          (if (procedure? _%f107680%_)
              (let ((_%f107688%_ _%f107680%_))
                (__andmap1 _%f107688%_ _%lst107683%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107680%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f107700%_ _%lst1107701%_ _%lst2107702%_)
        (let* ((_%f107704%_ _%f107700%_)
               (_%lst1107707%_ _%lst1107701%_)
               (_%lst2107710%_ _%lst2107702%_))
          (if (procedure? _%f107704%_)
              (let ((_%f107715%_ _%f107704%_))
                (__andmap2 _%f107715%_ _%lst1107707%_ _%lst2107710%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107704%_)
                '#!void)))))
    (define andmap
      (lambda _g112012_
        (let ((_g112013_ (let () (declare (not safe)) (##length _g112012_))))
          (cond ((let () (declare (not safe)) (##fx= _g112013_ 2))
                 (apply andmap__0 _g112012_))
                ((let () (declare (not safe)) (##fx= _g112013_ 3))
                 (apply andmap__1 _g112012_))
                ((let () (declare (not safe)) (##fx>= _g112013_ 3))
                 (apply andmap* _g112012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g112012_))))))
    (define __andmap*
      (lambda (_%f107634%_ . _%rest107635%_)
        (let ((_%f107638%_ _%f107634%_))
          (let _%recur107647%_ ((_%rest107649%_ _%rest107635%_))
            (if (let* ((_%f107652%_ pair?)
                       (_%lst107655%_ _%rest107649%_)
                       (_%f107660%_ _%f107652%_))
                  (__andmap1 _%f107660%_ _%lst107655%_))
                (if (let ((__tmp112014 (map car _%rest107649%_)))
                      (declare (not safe))
                      (##apply _%f107638%_ __tmp112014))
                    (_%recur107647%_ (map cdr _%rest107649%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f100415%_ . _%rest100416%_)
        (if (procedure? _%f100415%_)
            (let ((_%f100420%_ _%f100415%_))
              (declare (not safe))
              (##apply __andmap* _%f100420%_ _%rest100416%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@429.16-429.17"
               'contract:
               'procedure?
               'value:
               _%f100415%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f107581%_ _%lst107582%_)
        (let ((_%f107585%_ _%f107581%_))
          (let _%lp107594%_ ((_%rest107596%_ _%lst107582%_))
            (let* ((_%rest107597107605%_ _%rest107596%_)
                   (_%else107599107613%_ (lambda () '#f))
                   (_%K107601107622%_
                    (lambda (_%rest107616%_ _%x107617%_)
                      (let ((_%$e107619%_
                             (let ()
                               (declare (not safe))
                               (_%f107585%_ _%x107617%_))))
                        (if _%$e107619%_
                            _%$e107619%_
                            (_%lp107594%_ _%rest107616%_))))))
              (if (pair? _%rest107597107605%_)
                  (let ((_%hd107602107625%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest107597107605%_)))
                        (_%tl107603107627%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest107597107605%_))))
                    (let* ((_%x107630%_ _%hd107602107625%_)
                           (_%rest107632%_ _%tl107603107627%_))
                      (_%K107601107622%_ _%rest107632%_ _%x107630%_)))
                  (_%else107599107613%_)))))))
    (define ormap1
      (lambda (_%f100550%_ _%lst100551%_)
        (if (procedure? _%f100550%_)
            (let ((_%f100555%_ _%f100550%_))
              (__ormap1 _%f100555%_ _%lst100551%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.15-438.16"
               'contract:
               'procedure?
               'value:
               _%f100550%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f107493%_ _%lst1107494%_ _%lst2107495%_)
        (let ((_%f107498%_ _%f107493%_))
          (let _%lp107507%_ ((_%rest1107509%_ _%lst1107494%_)
                             (_%rest2107510%_ _%lst2107495%_))
            (let* ((_%rest1107511107519%_ _%rest1107509%_)
                   (_%else107513107527%_ (lambda () '#f))
                   (_%K107515107569%_
                    (lambda (_%rest1107530%_ _%x1107531%_)
                      (let* ((_%rest2107532107540%_ _%rest2107510%_)
                             (_%else107534107548%_ (lambda () '#f))
                             (_%K107536107557%_
                              (lambda (_%rest2107551%_ _%x2107552%_)
                                (let ((_%$e107554%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f107498%_
                                          _%x1107531%_
                                          _%x2107552%_))))
                                  (if _%$e107554%_
                                      _%$e107554%_
                                      (_%lp107507%_
                                       _%rest1107530%_
                                       _%rest2107551%_))))))
                        (if (pair? _%rest2107532107540%_)
                            (let ((_%hd107537107560%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2107532107540%_)))
                                  (_%tl107538107562%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2107532107540%_))))
                              (let* ((_%x2107565%_ _%hd107537107560%_)
                                     (_%rest2107567%_ _%tl107538107562%_))
                                (_%K107536107557%_
                                 _%rest2107567%_
                                 _%x2107565%_)))
                            (_%else107534107548%_))))))
              (if (pair? _%rest1107511107519%_)
                  (let ((_%hd107516107572%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1107511107519%_)))
                        (_%tl107517107574%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1107511107519%_))))
                    (let* ((_%x1107577%_ _%hd107516107572%_)
                           (_%rest1107579%_ _%tl107517107574%_))
                      (_%K107515107569%_ _%rest1107579%_ _%x1107577%_)))
                  (_%else107513107527%_)))))))
    (define ormap2
      (lambda (_%f100685%_ _%lst1100686%_ _%lst2100687%_)
        (if (procedure? _%f100685%_)
            (let ((_%f100691%_ _%f100685%_))
              (__ormap2 _%f100691%_ _%lst1100686%_ _%lst2100687%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@445.15-445.16"
               'contract:
               'procedure?
               'value:
               _%f100685%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f107437%_ _%lst107438%_)
        (let* ((_%f107440%_ _%f107437%_) (_%lst107443%_ _%lst107438%_))
          (if (procedure? _%f107440%_)
              (let ((_%f107448%_ _%f107440%_))
                (__ormap1 _%f107448%_ _%lst107443%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107440%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f107460%_ _%lst1107461%_ _%lst2107462%_)
        (let* ((_%f107464%_ _%f107460%_)
               (_%lst1107467%_ _%lst1107461%_)
               (_%lst2107470%_ _%lst2107462%_))
          (if (procedure? _%f107464%_)
              (let ((_%f107475%_ _%f107464%_))
                (__ormap2 _%f107475%_ _%lst1107467%_ _%lst2107470%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107464%_)
                '#!void)))))
    (define ormap
      (lambda _g112015_
        (let ((_g112016_ (let () (declare (not safe)) (##length _g112015_))))
          (cond ((let () (declare (not safe)) (##fx= _g112016_ 2))
                 (apply ormap__0 _g112015_))
                ((let () (declare (not safe)) (##fx= _g112016_ 3))
                 (apply ormap__1 _g112015_))
                ((let () (declare (not safe)) (##fx>= _g112016_ 3))
                 (apply ormap* _g112015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g112015_))))))
    (define __ormap*
      (lambda (_%f107393%_ . _%rest107394%_)
        (let ((_%f107397%_ _%f107393%_))
          (let _%recur107406%_ ((_%rest107408%_ _%rest107394%_))
            (if (let* ((_%f107410%_ pair?)
                       (_%lst107413%_ _%rest107408%_)
                       (_%f107418%_ _%f107410%_))
                  (__andmap1 _%f107418%_ _%lst107413%_))
                (let ((_%$e107434%_
                       (let ((__tmp112017 (map car _%rest107408%_)))
                         (declare (not safe))
                         (##apply _%f107397%_ __tmp112017))))
                  (if _%$e107434%_
                      _%$e107434%_
                      (_%recur107406%_ (map cdr _%rest107408%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f100821%_ . _%rest100822%_)
        (if (procedure? _%f100821%_)
            (let ((_%f100826%_ _%f100821%_))
              (declare (not safe))
              (##apply __ormap* _%f100826%_ _%rest100822%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@463.15-463.16"
               'contract:
               'procedure?
               'value:
               _%f100821%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f107336%_ _%lst107337%_)
        (let ((_%f107340%_ _%f107336%_))
          (let _%recur107349%_ ((_%rest107351%_ _%lst107337%_))
            (let* ((_%rest107353107361%_ _%rest107351%_)
                   (_%else107355107369%_ (lambda () '()))
                   (_%K107357107381%_
                    (lambda (_%rest107372%_ _%x107373%_)
                      (let ((_%$e107375%_
                             (let ()
                               (declare (not safe))
                               (_%f107340%_ _%x107373%_))))
                        (if _%$e107375%_
                            ((lambda (_%r107378%_)
                               (cons _%r107378%_
                                     (_%recur107349%_ _%rest107372%_)))
                             _%$e107375%_)
                            (_%recur107349%_ _%rest107372%_))))))
              (if (pair? _%rest107353107361%_)
                  (let ((_%hd107358107384%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest107353107361%_)))
                        (_%tl107359107386%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest107353107361%_))))
                    (let* ((_%x107389%_ _%hd107358107384%_)
                           (_%rest107391%_ _%tl107359107386%_))
                      (_%K107357107381%_ _%rest107391%_ _%x107389%_)))
                  (_%else107355107369%_)))))))
    (define filter-map1
      (lambda (_%f100956%_ _%lst100957%_)
        (if (procedure? _%f100956%_)
            (let ((_%f100961%_ _%f100956%_))
              (__filter-map1 _%f100961%_ _%lst100957%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@470.20-470.21"
               'contract:
               'procedure?
               'value:
               _%f100956%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f107244%_ _%lst1107245%_ _%lst2107246%_)
        (let ((_%f107249%_ _%f107244%_))
          (let _%recur107258%_ ((_%rest1107260%_ _%lst1107245%_)
                                (_%rest2107261%_ _%lst2107246%_))
            (let* ((_%rest1107263107271%_ _%rest1107260%_)
                   (_%else107265107279%_ (lambda () '()))
                   (_%K107267107324%_
                    (lambda (_%rest1107282%_ _%x1107283%_)
                      (let* ((_%rest2107284107292%_ _%rest2107261%_)
                             (_%else107286107300%_ (lambda () '()))
                             (_%K107288107312%_
                              (lambda (_%rest2107303%_ _%x2107304%_)
                                (let ((_%$e107306%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f107249%_
                                          _%x1107283%_
                                          _%x2107304%_))))
                                  (if _%$e107306%_
                                      ((lambda (_%r107309%_)
                                         (cons _%r107309%_
                                               (_%recur107258%_
                                                _%rest1107282%_
                                                _%rest2107303%_)))
                                       _%$e107306%_)
                                      (_%recur107258%_
                                       _%rest1107282%_
                                       _%rest2107303%_))))))
                        (if (pair? _%rest2107284107292%_)
                            (let ((_%hd107289107315%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2107284107292%_)))
                                  (_%tl107290107317%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2107284107292%_))))
                              (let* ((_%x2107320%_ _%hd107289107315%_)
                                     (_%rest2107322%_ _%tl107290107317%_))
                                (_%K107288107312%_
                                 _%rest2107322%_
                                 _%x2107320%_)))
                            (_%else107286107300%_))))))
              (if (pair? _%rest1107263107271%_)
                  (let ((_%hd107268107327%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1107263107271%_)))
                        (_%tl107269107329%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1107263107271%_))))
                    (let* ((_%x1107332%_ _%hd107268107327%_)
                           (_%rest1107334%_ _%tl107269107329%_))
                      (_%K107267107324%_ _%rest1107334%_ _%x1107332%_)))
                  (_%else107265107279%_)))))))
    (define filter-map2
      (lambda (_%f101091%_ _%lst1101092%_ _%lst2101093%_)
        (if (procedure? _%f101091%_)
            (let ((_%f101097%_ _%f101091%_))
              (__filter-map2 _%f101097%_ _%lst1101092%_ _%lst2101093%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@481.20-481.21"
               'contract:
               'procedure?
               'value:
               _%f101091%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f107188%_ _%lst107189%_)
        (let* ((_%f107191%_ _%f107188%_) (_%lst107194%_ _%lst107189%_))
          (if (procedure? _%f107191%_)
              (let ((_%f107199%_ _%f107191%_))
                (__filter-map1 _%f107199%_ _%lst107194%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107191%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f107211%_ _%lst1107212%_ _%lst2107213%_)
        (let* ((_%f107215%_ _%f107211%_)
               (_%lst1107218%_ _%lst1107212%_)
               (_%lst2107221%_ _%lst2107213%_))
          (if (procedure? _%f107215%_)
              (let ((_%f107226%_ _%f107215%_))
                (__filter-map2 _%f107226%_ _%lst1107218%_ _%lst2107221%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f107215%_)
                '#!void)))))
    (define filter-map
      (lambda _g112018_
        (let ((_g112019_ (let () (declare (not safe)) (##length _g112018_))))
          (cond ((let () (declare (not safe)) (##fx= _g112019_ 2))
                 (apply filter-map__0 _g112018_))
                ((let () (declare (not safe)) (##fx= _g112019_ 3))
                 (apply filter-map__1 _g112018_))
                ((let () (declare (not safe)) (##fx>= _g112019_ 3))
                 (apply filter-map* _g112018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g112018_))))))
    (define __filter-map*
      (lambda (_%f107139%_ . _%rest107140%_)
        (let ((_%f107143%_ _%f107139%_))
          (let _%recur107152%_ ((_%rest107154%_ _%rest107140%_))
            (if (let* ((_%f107157%_ pair?)
                       (_%lst107160%_ _%rest107154%_)
                       (_%f107165%_ _%f107157%_))
                  (__andmap1 _%f107165%_ _%lst107160%_))
                (let ((_%$e107182%_
                       (let ((__tmp112020 (map car _%rest107154%_)))
                         (declare (not safe))
                         (##apply _%f107143%_ __tmp112020))))
                  (if _%$e107182%_
                      ((lambda (_%r107185%_)
                         (cons _%r107185%_
                               (_%recur107152%_ (map cdr _%rest107154%_))))
                       _%$e107182%_)
                      (_%recur107152%_ (map cdr _%rest107154%_))))
                '())))))
    (define filter-map*
      (lambda (_%f101227%_ . _%rest101228%_)
        (if (procedure? _%f101227%_)
            (let ((_%f101232%_ _%f101227%_))
              (declare (not safe))
              (##apply __filter-map* _%f101232%_ _%rest101228%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@503.20-503.21"
               'contract:
               'procedure?
               'value:
               _%f101227%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key107115%_ _%lst107117%_ _%default107119%_)
        (let ((_%$e107122%_
               (if (pair? _%lst107117%_)
                   (assq _%key107115%_ _%lst107117%_)
                   '#f)))
          (if _%$e107122%_
              (cdr _%$e107122%_)
              (if (procedure? _%default107119%_)
                  (_%default107119%_ _%key107115%_)
                  _%default107119%_)))))
    (define agetq__0
      (lambda (_%key107130%_ _%lst107131%_)
        (let ((_%default107133%_ '#f))
          (agetq__% _%key107130%_ _%lst107131%_ _%default107133%_))))
    (define agetq
      (lambda _g112021_
        (let ((_g112022_ (let () (declare (not safe)) (##length _g112021_))))
          (cond ((let () (declare (not safe)) (##fx= _g112022_ 2))
                 (apply agetq__0 _g112021_))
                ((let () (declare (not safe)) (##fx= _g112022_ 3))
                 (apply agetq__% _g112021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g112021_))))))
    (define agetv__%
      (lambda (_%key107090%_ _%lst107092%_ _%default107094%_)
        (let ((_%$e107097%_
               (if (pair? _%lst107092%_)
                   (assv _%key107090%_ _%lst107092%_)
                   '#f)))
          (if _%$e107097%_
              (cdr _%$e107097%_)
              (if (procedure? _%default107094%_)
                  (_%default107094%_ _%key107090%_)
                  _%default107094%_)))))
    (define agetv__0
      (lambda (_%key107105%_ _%lst107106%_)
        (let ((_%default107108%_ '#f))
          (agetv__% _%key107105%_ _%lst107106%_ _%default107108%_))))
    (define agetv
      (lambda _g112023_
        (let ((_g112024_ (let () (declare (not safe)) (##length _g112023_))))
          (cond ((let () (declare (not safe)) (##fx= _g112024_ 2))
                 (apply agetv__0 _g112023_))
                ((let () (declare (not safe)) (##fx= _g112024_ 3))
                 (apply agetv__% _g112023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g112023_))))))
    (define aget__%
      (lambda (_%key107065%_ _%lst107067%_ _%default107069%_)
        (let ((_%$e107072%_
               (if (pair? _%lst107067%_)
                   (assoc _%key107065%_ _%lst107067%_)
                   '#f)))
          (if _%$e107072%_
              (cdr _%$e107072%_)
              (if (procedure? _%default107069%_)
                  (_%default107069%_ _%key107065%_)
                  _%default107069%_)))))
    (define aget__0
      (lambda (_%key107080%_ _%lst107081%_)
        (let ((_%default107083%_ '#f))
          (aget__% _%key107080%_ _%lst107081%_ _%default107083%_))))
    (define aget
      (lambda _g112025_
        (let ((_g112026_ (let () (declare (not safe)) (##length _g112025_))))
          (cond ((let () (declare (not safe)) (##fx= _g112026_ 2))
                 (apply aget__0 _g112025_))
                ((let () (declare (not safe)) (##fx= _g112026_ 3))
                 (apply aget__% _g112025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g112025_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key106994%_ _%lst106996%_ _%default106998%_)
        (let _%lp107001%_ ((_%rest107004%_ _%lst106996%_))
          (let* ((_%rest107006107016%_ _%rest107004%_)
                 (_%else107008107024%_
                  (lambda ()
                    (if (procedure? _%default106998%_)
                        (_%default106998%_ _%key106994%_)
                        _%default106998%_)))
                 (_%K107010107033%_
                  (lambda (_%rest107027%_ _%v107028%_ _%k107030%_)
                    (if (eq? _%k107030%_ _%key106994%_)
                        _%v107028%_
                        (_%lp107001%_ _%rest107027%_)))))
            (if (pair? _%rest107006107016%_)
                (let ((_%hd107011107036%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest107006107016%_)))
                      (_%tl107012107038%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest107006107016%_))))
                  (let ((_%k107041%_ _%hd107011107036%_))
                    (if (pair? _%tl107012107038%_)
                        (let ((_%hd107013107043%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl107012107038%_)))
                              (_%tl107014107045%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl107012107038%_))))
                          (let* ((_%v107048%_ _%hd107013107043%_)
                                 (_%rest107050%_ _%tl107014107045%_))
                            (_%K107010107033%_
                             _%rest107050%_
                             _%v107048%_
                             _%k107041%_)))
                        (_%else107008107024%_))))
                (_%else107008107024%_))))))
    (define pgetq__0
      (lambda (_%key107055%_ _%lst107056%_)
        (let ((_%default107058%_ '#f))
          (pgetq__% _%key107055%_ _%lst107056%_ _%default107058%_))))
    (define pgetq
      (lambda _g112027_
        (let ((_g112028_ (let () (declare (not safe)) (##length _g112027_))))
          (cond ((let () (declare (not safe)) (##fx= _g112028_ 2))
                 (apply pgetq__0 _g112027_))
                ((let () (declare (not safe)) (##fx= _g112028_ 3))
                 (apply pgetq__% _g112027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g112027_))))))
    (define pgetv__%
      (lambda (_%key106923%_ _%lst106925%_ _%default106927%_)
        (let _%lp106930%_ ((_%rest106933%_ _%lst106925%_))
          (let* ((_%rest106935106945%_ _%rest106933%_)
                 (_%else106937106953%_
                  (lambda ()
                    (if (procedure? _%default106927%_)
                        (_%default106927%_ _%key106923%_)
                        _%default106927%_)))
                 (_%K106939106962%_
                  (lambda (_%rest106956%_ _%v106957%_ _%k106959%_)
                    (if (eqv? _%k106959%_ _%key106923%_)
                        _%v106957%_
                        (_%lp106930%_ _%rest106956%_)))))
            (if (pair? _%rest106935106945%_)
                (let ((_%hd106940106965%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106935106945%_)))
                      (_%tl106941106967%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106935106945%_))))
                  (let ((_%k106970%_ _%hd106940106965%_))
                    (if (pair? _%tl106941106967%_)
                        (let ((_%hd106942106972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl106941106967%_)))
                              (_%tl106943106974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl106941106967%_))))
                          (let* ((_%v106977%_ _%hd106942106972%_)
                                 (_%rest106979%_ _%tl106943106974%_))
                            (_%K106939106962%_
                             _%rest106979%_
                             _%v106977%_
                             _%k106970%_)))
                        (_%else106937106953%_))))
                (_%else106937106953%_))))))
    (define pgetv__0
      (lambda (_%key106984%_ _%lst106985%_)
        (let ((_%default106987%_ '#f))
          (pgetv__% _%key106984%_ _%lst106985%_ _%default106987%_))))
    (define pgetv
      (lambda _g112029_
        (let ((_g112030_ (let () (declare (not safe)) (##length _g112029_))))
          (cond ((let () (declare (not safe)) (##fx= _g112030_ 2))
                 (apply pgetv__0 _g112029_))
                ((let () (declare (not safe)) (##fx= _g112030_ 3))
                 (apply pgetv__% _g112029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g112029_))))))
    (define pget__%
      (lambda (_%key106852%_ _%lst106854%_ _%default106856%_)
        (let _%lp106859%_ ((_%rest106862%_ _%lst106854%_))
          (let* ((_%rest106864106874%_ _%rest106862%_)
                 (_%else106866106882%_
                  (lambda ()
                    (if (procedure? _%default106856%_)
                        (_%default106856%_ _%key106852%_)
                        _%default106856%_)))
                 (_%K106868106891%_
                  (lambda (_%rest106885%_ _%v106886%_ _%k106888%_)
                    (if (equal? _%k106888%_ _%key106852%_)
                        _%v106886%_
                        (_%lp106859%_ _%rest106885%_)))))
            (if (pair? _%rest106864106874%_)
                (let ((_%hd106869106894%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106864106874%_)))
                      (_%tl106870106896%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106864106874%_))))
                  (let ((_%k106899%_ _%hd106869106894%_))
                    (if (pair? _%tl106870106896%_)
                        (let ((_%hd106871106901%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl106870106896%_)))
                              (_%tl106872106903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl106870106896%_))))
                          (let* ((_%v106906%_ _%hd106871106901%_)
                                 (_%rest106908%_ _%tl106872106903%_))
                            (_%K106868106891%_
                             _%rest106908%_
                             _%v106906%_
                             _%k106899%_)))
                        (_%else106866106882%_))))
                (_%else106866106882%_))))))
    (define pget__0
      (lambda (_%key106913%_ _%lst106914%_)
        (let ((_%default106916%_ '#f))
          (pget__% _%key106913%_ _%lst106914%_ _%default106916%_))))
    (define pget
      (lambda _g112031_
        (let ((_g112032_ (let () (declare (not safe)) (##length _g112031_))))
          (cond ((let () (declare (not safe)) (##fx= _g112032_ 2))
                 (apply pget__0 _g112031_))
                ((let () (declare (not safe)) (##fx= _g112032_ 3))
                 (apply pget__% _g112031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g112031_))))))
    (define __find
      (lambda (_%pred106812%_ _%lst106813%_)
        (let* ((_%pred106816%_ _%pred106812%_)
               (_%$e106847%_
                (let* ((_%proc106825%_ _%pred106816%_)
                       (_%lst106828%_ _%lst106813%_)
                       (_%proc106833%_ _%proc106825%_))
                  (__memf _%proc106833%_ _%lst106828%_))))
          (if _%$e106847%_
              (let () (declare (not safe)) (##car _%$e106847%_))
              '#f))))
    (define find
      (lambda (_%pred101524%_ _%lst101525%_)
        (if (procedure? _%pred101524%_)
            (let ((_%pred101529%_ _%pred101524%_))
              (__find _%pred101529%_ _%lst101525%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@549.13-549.17"
               'contract:
               'procedure?
               'value:
               _%pred101524%_)
              '#!void))))
    (define __memf
      (lambda (_%proc106762%_ _%lst106763%_)
        (let ((_%proc106766%_ _%proc106762%_))
          (let _%lp106775%_ ((_%rest106777%_ _%lst106763%_))
            (let* ((_%rest106778106786%_ _%rest106777%_)
                   (_%else106780106794%_ (lambda () '#f))
                   (_%K106782106800%_
                    (lambda (_%tl106797%_ _%hd106798%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc106766%_ _%hd106798%_))
                          _%rest106777%_
                          (_%lp106775%_ _%tl106797%_)))))
              (if (pair? _%rest106778106786%_)
                  (let ((_%hd106783106803%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest106778106786%_)))
                        (_%tl106784106805%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest106778106786%_))))
                    (let* ((_%hd106808%_ _%hd106783106803%_)
                           (_%tl106810%_ _%tl106784106805%_))
                      (_%K106782106800%_ _%tl106810%_ _%hd106808%_)))
                  (_%else106780106794%_)))))))
    (define memf
      (lambda (_%proc101659%_ _%lst101660%_)
        (if (procedure? _%proc101659%_)
            (let ((_%proc101664%_ _%proc101659%_))
              (__memf _%proc101664%_ _%lst101660%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@554.13-554.17"
               'contract:
               'procedure?
               'value:
               _%proc101659%_)
              '#!void))))
    (define remove1
      (lambda (_%el106685%_ _%lst106687%_)
        (let _%lp106690%_ ((_%rest106693%_ _%lst106687%_) (_%r106695%_ '()))
          (let* ((_%rest106697106705%_ _%rest106693%_)
                 (_%else106699106713%_ (lambda () _%lst106687%_))
                 (_%K106701106750%_
                  (lambda (_%rest106716%_ _%hd106717%_)
                    (if (equal? _%el106685%_ _%hd106717%_)
                        (let* ((_%f106720%_ cons)
                               (_%iv106723%_ _%rest106716%_)
                               (_%lst106726%_ _%r106695%_)
                               (_%f106731%_ _%f106720%_))
                          (__foldl1 _%f106731%_ _%iv106723%_ _%lst106726%_))
                        (_%lp106690%_
                         _%rest106716%_
                         (cons _%hd106717%_ _%r106695%_))))))
            (if (pair? _%rest106697106705%_)
                (let ((_%hd106702106753%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106697106705%_)))
                      (_%tl106703106755%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106697106705%_))))
                  (let* ((_%hd106758%_ _%hd106702106753%_)
                         (_%rest106760%_ _%tl106703106755%_))
                    (_%K106701106750%_ _%rest106760%_ _%hd106758%_)))
                (_%else106699106713%_))))))
    (define remv1
      (lambda (_%el106608%_ _%lst106610%_)
        (let _%lp106613%_ ((_%rest106616%_ _%lst106610%_) (_%r106618%_ '()))
          (let* ((_%rest106620106628%_ _%rest106616%_)
                 (_%else106622106636%_ (lambda () _%lst106610%_))
                 (_%K106624106673%_
                  (lambda (_%rest106639%_ _%hd106640%_)
                    (if (eqv? _%el106608%_ _%hd106640%_)
                        (let* ((_%f106643%_ cons)
                               (_%iv106646%_ _%rest106639%_)
                               (_%lst106649%_ _%r106618%_)
                               (_%f106654%_ _%f106643%_))
                          (__foldl1 _%f106654%_ _%iv106646%_ _%lst106649%_))
                        (_%lp106613%_
                         _%rest106639%_
                         (cons _%hd106640%_ _%r106618%_))))))
            (if (pair? _%rest106620106628%_)
                (let ((_%hd106625106676%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106620106628%_)))
                      (_%tl106626106678%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106620106628%_))))
                  (let* ((_%hd106681%_ _%hd106625106676%_)
                         (_%rest106683%_ _%tl106626106678%_))
                    (_%K106624106673%_ _%rest106683%_ _%hd106681%_)))
                (_%else106622106636%_))))))
    (define remq1
      (lambda (_%el106531%_ _%lst106533%_)
        (let _%lp106536%_ ((_%rest106539%_ _%lst106533%_) (_%r106541%_ '()))
          (let* ((_%rest106543106551%_ _%rest106539%_)
                 (_%else106545106559%_ (lambda () _%lst106533%_))
                 (_%K106547106596%_
                  (lambda (_%rest106562%_ _%hd106563%_)
                    (if (eq? _%el106531%_ _%hd106563%_)
                        (let* ((_%f106566%_ cons)
                               (_%iv106569%_ _%rest106562%_)
                               (_%lst106572%_ _%r106541%_)
                               (_%f106577%_ _%f106566%_))
                          (__foldl1 _%f106577%_ _%iv106569%_ _%lst106572%_))
                        (_%lp106536%_
                         _%rest106562%_
                         (cons _%hd106563%_ _%r106541%_))))))
            (if (pair? _%rest106543106551%_)
                (let ((_%hd106548106599%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106543106551%_)))
                      (_%tl106549106601%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106543106551%_))))
                  (let* ((_%hd106604%_ _%hd106548106599%_)
                         (_%rest106606%_ _%tl106549106601%_))
                    (_%K106547106596%_ _%rest106606%_ _%hd106604%_)))
                (_%else106545106559%_))))))
    (define __remf
      (lambda (_%proc106448%_ _%lst106449%_)
        (let ((_%proc106452%_ _%proc106448%_))
          (let _%lp106461%_ ((_%rest106463%_ _%lst106449%_) (_%r106464%_ '()))
            (let* ((_%rest106465106473%_ _%rest106463%_)
                   (_%else106467106481%_ (lambda () _%lst106449%_))
                   (_%K106469106519%_
                    (lambda (_%rest106484%_ _%hd106485%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc106452%_ _%hd106485%_))
                          (let* ((_%f106487%_ cons)
                                 (_%iv106490%_ _%rest106484%_)
                                 (_%lst106493%_ _%r106464%_)
                                 (_%f106498%_ _%f106487%_))
                            (__foldl1 _%f106498%_ _%iv106490%_ _%lst106493%_))
                          (_%lp106461%_
                           _%rest106484%_
                           (cons _%hd106485%_ _%r106464%_))))))
              (if (pair? _%rest106465106473%_)
                  (let ((_%hd106470106522%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest106465106473%_)))
                        (_%tl106471106524%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest106465106473%_))))
                    (let* ((_%hd106527%_ _%hd106470106522%_)
                           (_%rest106529%_ _%tl106471106524%_))
                      (_%K106469106519%_ _%rest106529%_ _%hd106527%_)))
                  (_%else106467106481%_)))))))
    (define remf
      (lambda (_%proc101875%_ _%lst101876%_)
        (if (procedure? _%proc101875%_)
            (let ((_%proc101880%_ _%proc101875%_))
              (__remf _%proc101880%_ _%lst101876%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@576.13-576.17"
               'contract:
               'procedure?
               'value:
               _%proc101875%_)
              '#!void))))
    (define __1+
      (lambda (_%x106436%_)
        (let ((_%x106439%_ _%x106436%_)) (+ _%x106439%_ '1))))
    (define 1+
      (lambda (_%x102010%_)
        (if (number? _%x102010%_)
            (let ((_%x102014%_ _%x102010%_)) (__1+ _%x102014%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@585.11-585.12"
               'contract:
               'number?
               'value:
               _%x102010%_)
              '#!void))))
    (define __1-
      (lambda (_%x106424%_)
        (let ((_%x106427%_ _%x106424%_)) (- _%x106427%_ '1))))
    (define 1-
      (lambda (_%x102144%_)
        (if (number? _%x102144%_)
            (let ((_%x102148%_ _%x102144%_)) (__1- _%x102148%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@593.11-593.12"
               'contract:
               'number?
               'value:
               _%x102144%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x106412%_)
        (let ((_%x106415%_ _%x106412%_))
          (declare (not safe))
          (##fx+ _%x106415%_ '1))))
    (define fx1+
      (lambda (_%x102278%_)
        (if (fixnum? _%x102278%_)
            (let ((_%x102282%_ _%x102278%_)) (__fx1+ _%x102282%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@601.13-601.14"
               'contract:
               'fixnum?
               'value:
               _%x102278%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x106400%_)
        (let ((_%x106403%_ _%x106400%_))
          (declare (not safe))
          (##fx- _%x106403%_ '1))))
    (define fx1-
      (lambda (_%x102412%_)
        (if (fixnum? _%x102412%_)
            (let ((_%x102416%_ _%x102412%_)) (__fx1- _%x102416%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@609.13-609.14"
               'contract:
               'fixnum?
               'value:
               _%x102412%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x106397%_)
        (if (fixnum? _%x106397%_)
            (let () (declare (not safe)) (##fx>= _%x106397%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x106394%_)
        (if (fixnum? _%x106394%_)
            (let () (declare (not safe)) (##fx> _%x106394%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x106391%_)
        (let () (declare (not safe)) (##fx= _%x106391%_ '0))))
    (define fx<0?
      (lambda (_%x106388%_)
        (if (fixnum? _%x106388%_)
            (let () (declare (not safe)) (##fx< _%x106388%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x106385%_)
        (if (fixnum? _%x106385%_)
            (let () (declare (not safe)) (##fx<= _%x106385%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x106382%_)
        (if (symbol? _%x106382%_) (not (uninterned-symbol? _%x106382%_)) '#f)))
    (define __display-as-string
      (lambda (_%x106276%_ _%port106277%_)
        (let ((_%port106280%_ _%port106277%_))
          (if (or (string? _%x106276%_)
                  (symbol? _%x106276%_)
                  (keyword? _%x106276%_)
                  (number? _%x106276%_)
                  (char? _%x106276%_))
              (display _%x106276%_ _%port106280%_)
              (if (pair? _%x106276%_)
                  (let ()
                    (let* ((_%x106303%_
                            (let () (declare (not safe)) (##car _%x106276%_)))
                           (_%port106306%_ _%port106280%_))
                      (if (output-port? _%port106306%_)
                          (let ((_%port106311%_ _%port106306%_))
                            (__display-as-string _%x106303%_ _%port106311%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port106306%_)
                            '#!void)))
                    (let* ((_%x106326%_
                            (let () (declare (not safe)) (##cdr _%x106276%_)))
                           (_%port106329%_ _%port106280%_))
                      (if (output-port? _%port106329%_)
                          (let ((_%port106334%_ _%port106329%_))
                            (__display-as-string _%x106326%_ _%port106334%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port106329%_)
                            '#!void))))
                  (if (vector? _%x106276%_)
                      (vector-for-each
                       (lambda (_%g106345106347%_)
                         (let* ((_%x106350%_ _%g106345106347%_)
                                (_%port106353%_ _%port106280%_))
                           (if (output-port? _%port106353%_)
                               (let ((_%port106358%_ _%port106353%_))
                                 (__display-as-string
                                  _%x106350%_
                                  _%port106358%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port106353%_)
                                 '#!void))))
                       _%x106276%_)
                      (if (or (null? _%x106276%_)
                              (eq? _%x106276%_ '#!void)
                              (eof-object? _%x106276%_)
                              (boolean? _%x106276%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x106276%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x102546%_ _%port102547%_)
        (if (output-port? _%port102547%_)
            (let ((_%port102551%_ _%port102547%_))
              (__display-as-string _%x102546%_ _%port102551%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@639.28-639.32"
               'contract:
               'output-port?
               'value:
               _%port102547%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x106216%_)
        (if (string? _%x106216%_)
            _%x106216%_
            (if (symbol? _%x106216%_)
                (let () (declare (not safe)) (##symbol->string _%x106216%_))
                (if (keyword? _%x106216%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x106216%_))
                    (if (number? _%x106216%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x106216%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g106222106224%_)
                           (let* ((_%x106227%_ _%x106216%_)
                                  (_%port106230%_ _%g106222106224%_))
                             (if (output-port? _%port106230%_)
                                 (let ((_%port106235%_ _%port106230%_))
                                   (__display-as-string
                                    _%x106227%_
                                    _%port106235%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port106230%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args106249%_
        (call-with-output-string
         '()
         (lambda (_%g106250106252%_)
           (let* ((_%x106255%_ _%args106249%_)
                  (_%port106258%_ _%g106250106252%_))
             (if (output-port? _%port106258%_)
                 (let ((_%port106263%_ _%port106258%_))
                   (__display-as-string _%x106255%_ _%port106263%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port106258%_)
                   '#!void)))))))
    (define as-string
      (lambda _g112033_
        (let ((_g112034_ (let () (declare (not safe)) (##length _g112033_))))
          (cond ((let () (declare (not safe)) (##fx= _g112034_ 1))
                 (apply as-string__0 _g112033_))
                (#t
                 (apply (lambda _%args106249%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args106249%_)))
                        _g112033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g112033_))))))
    (define make-symbol__0
      (lambda (_%x106212%_)
        (if (interned-symbol? _%x106212%_)
            _%x106212%_
            (let ((__tmp112035 (as-string__0 _%x106212%_)))
              (declare (not safe))
              (##string->symbol __tmp112035)))))
    (define make-symbol__1
      (lambda _%args106214%_
        (let ((__tmp112036
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args106214%_))))
          (declare (not safe))
          (##string->symbol __tmp112036))))
    (define make-symbol
      (lambda _g112037_
        (let ((_g112038_ (let () (declare (not safe)) (##length _g112037_))))
          (cond ((let () (declare (not safe)) (##fx= _g112038_ 1))
                 (apply make-symbol__0 _g112037_))
                (#t
                 (apply (lambda _%args106214%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args106214%_)))
                        _g112037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g112037_))))))
    (define make-keyword__0
      (lambda (_%x106208%_)
        (if (interned-keyword? _%x106208%_)
            _%x106208%_
            (let ((__tmp112039 (as-string__0 _%x106208%_)))
              (declare (not safe))
              (##string->keyword __tmp112039)))))
    (define make-keyword__1
      (lambda _%args106210%_
        (let ((__tmp112040
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args106210%_))))
          (declare (not safe))
          (##string->keyword __tmp112040))))
    (define make-keyword
      (lambda _g112041_
        (let ((_g112042_ (let () (declare (not safe)) (##length _g112041_))))
          (cond ((let () (declare (not safe)) (##fx= _g112042_ 1))
                 (apply make-keyword__0 _g112041_))
                (#t
                 (apply (lambda _%args106210%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args106210%_)))
                        _g112041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g112041_))))))
    (define interned-keyword?
      (lambda (_%x106205%_)
        (if (keyword? _%x106205%_)
            (not (uninterned-keyword? _%x106205%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym106193%_)
        (let ((_%sym106196%_ _%sym106193%_))
          (if (uninterned-symbol? _%sym106196%_)
              (let ((__tmp112043
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym106196%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp112043))
              (let ((__tmp112044
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym106196%_))))
                (declare (not safe))
                (##string->keyword __tmp112044))))))
    (define symbol->keyword
      (lambda (_%sym102681%_)
        (if (symbol? _%sym102681%_)
            (let ((_%sym102685%_ _%sym102681%_))
              (__symbol->keyword _%sym102685%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@682.24-682.27"
               'contract:
               'symbol?
               'value:
               _%sym102681%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym106181%_)
        (let ((_%sym106184%_ _%sym106181%_))
          (if (uninterned-keyword? _%sym106184%_)
              (let ((__tmp112045
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym106184%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp112045))
              (let ((__tmp112046
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym106184%_))))
                (declare (not safe))
                (##string->symbol __tmp112046))))))
    (define keyword->symbol
      (lambda (_%sym102815%_)
        (if (keyword? _%sym102815%_)
            (let ((_%sym102819%_ _%sym102815%_))
              (__keyword->symbol _%sym102819%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@688.24-688.27"
               'contract:
               'keyword?
               'value:
               _%sym102815%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr106141%_ _%enc106142%_)
        (let* ((_%bstr106145%_ _%bstr106141%_) (_%enc106153%_ _%enc106142%_))
          (if (eq? _%enc106153%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr106145%_))
              (let* ((_%in106162%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc106153%_
                                   (cons 'init: (cons _%bstr106145%_ '()))))))
                     (_%len106164%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr106145%_)))
                     (_%out106166%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len106164%_)))
                     (_%n106168%_
                      (read-substring
                       _%out106166%_
                       '0
                       _%len106164%_
                       _%in106162%_)))
                (string-shrink! _%out106166%_ _%n106168%_)
                _%out106166%_)))))
    (define __bytes->string__0
      (lambda (_%bstr106174%_)
        (let ((_%enc106176%_ 'UTF-8))
          (__bytes->string__% _%bstr106174%_ _%enc106176%_))))
    (define __bytes->string
      (lambda _g112047_
        (let ((_g112048_ (let () (declare (not safe)) (##length _g112047_))))
          (cond ((let () (declare (not safe)) (##fx= _g112048_ 1))
                 (apply __bytes->string__0 _g112047_))
                ((let () (declare (not safe)) (##fx= _g112048_ 2))
                 (apply __bytes->string__% _g112047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g112047_))))))
    (define bytes->string__%
      (lambda (_%bstr102950%_ _%enc102951%_)
        (if (u8vector? _%bstr102950%_)
            (let ((_%bstr102955%_ _%bstr102950%_))
              (if (symbol? _%enc102951%_)
                  (let ((_%enc102965%_ _%enc102951%_))
                    (__bytes->string__% _%bstr102955%_ _%enc102965%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.25-695.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc102951%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.22-694.26"
               'contract:
               'u8vector?
               'value:
               _%bstr102950%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr102978%_)
        (let ((_%enc102980%_ 'UTF-8))
          (bytes->string__% _%bstr102978%_ _%enc102980%_))))
    (define bytes->string
      (lambda _g112049_
        (let ((_g112050_ (let () (declare (not safe)) (##length _g112049_))))
          (cond ((let () (declare (not safe)) (##fx= _g112050_ 1))
                 (apply bytes->string__0 _g112049_))
                ((let () (declare (not safe)) (##fx= _g112050_ 2))
                 (apply bytes->string__% _g112049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g112049_))))))
    (define __string->bytes__%
      (lambda (_%str106059%_ _%enc106060%_)
        (let* ((_%str106063%_ _%str106059%_) (_%enc106071%_ _%enc106060%_))
          (if (eq? _%enc106071%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str106063%_))
              (let* ((_%str106080%_ _%str106063%_)
                     (_%start106083%_ '0)
                     (_%end106086%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str106063%_)))
                     (_%enc106089%_ _%enc106071%_)
                     (_%str106094%_ _%str106080%_))
                (if (nonnegative-fixnum? _%start106083%_)
                    (let ((_%start106110%_ _%start106083%_))
                      (if (nonnegative-fixnum? _%end106086%_)
                          (let ((_%end106120%_ _%end106086%_))
                            (__substring->bytes__%
                             _%str106094%_
                             _%start106110%_
                             _%end106120%_
                             _%enc106089%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end106086%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start106083%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str106133%_)
        (let ((_%enc106135%_ 'UTF-8))
          (__string->bytes__% _%str106133%_ _%enc106135%_))))
    (define __string->bytes
      (lambda _g112051_
        (let ((_g112052_ (let () (declare (not safe)) (##length _g112051_))))
          (cond ((let () (declare (not safe)) (##fx= _g112052_ 1))
                 (apply __string->bytes__0 _g112051_))
                ((let () (declare (not safe)) (##fx= _g112052_ 2))
                 (apply __string->bytes__% _g112051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g112051_))))))
    (define string->bytes__%
      (lambda (_%str103106%_ _%enc103107%_)
        (if (string? _%str103106%_)
            (let ((_%str103111%_ _%str103106%_))
              (if (symbol? _%enc103107%_)
                  (let ((_%enc103121%_ _%enc103107%_))
                    (__string->bytes__% _%str103111%_ _%enc103121%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@707.25-707.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc103107%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@706.22-706.25"
               'contract:
               'string?
               'value:
               _%str103106%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str103134%_)
        (let ((_%enc103136%_ 'UTF-8))
          (string->bytes__% _%str103134%_ _%enc103136%_))))
    (define string->bytes
      (lambda _g112053_
        (let ((_g112054_ (let () (declare (not safe)) (##length _g112053_))))
          (cond ((let () (declare (not safe)) (##fx= _g112054_ 1))
                 (apply string->bytes__0 _g112053_))
                ((let () (declare (not safe)) (##fx= _g112054_ 2))
                 (apply string->bytes__% _g112053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g112053_))))))
    (define __substring->bytes__%
      (lambda (_%str106011%_ _%start106012%_ _%end106013%_ _%enc106014%_)
        (let* ((_%str106017%_ _%str106011%_)
               (_%start106025%_ _%start106012%_)
               (_%end106033%_ _%end106013%_))
          (if (eq? _%enc106014%_ 'UTF-8)
              (string->utf8 _%str106017%_ _%start106025%_ _%end106033%_)
              (let ((_%out106042%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc106014%_ '())))))
                (write-substring
                 _%str106017%_
                 _%start106025%_
                 _%end106033%_
                 _%out106042%_)
                (get-output-u8vector _%out106042%_))))))
    (define __substring->bytes__0
      (lambda (_%str106047%_ _%start106048%_ _%end106049%_)
        (let ((_%enc106051%_ 'UTF-8))
          (__substring->bytes__%
           _%str106047%_
           _%start106048%_
           _%end106049%_
           _%enc106051%_))))
    (define __substring->bytes
      (lambda _g112055_
        (let ((_g112056_ (let () (declare (not safe)) (##length _g112055_))))
          (cond ((let () (declare (not safe)) (##fx= _g112056_ 3))
                 (apply __substring->bytes__0 _g112055_))
                ((let () (declare (not safe)) (##fx= _g112056_ 4))
                 (apply __substring->bytes__% _g112055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g112055_))))))
    (define substring->bytes__%
      (lambda (_%str103262%_ _%start103263%_ _%end103264%_ _%enc103265%_)
        (if (string? _%str103262%_)
            (let ((_%str103269%_ _%str103262%_))
              (if (nonnegative-fixnum? _%start103263%_)
                  (let ((_%start103279%_ _%start103263%_))
                    (if (nonnegative-fixnum? _%end103264%_)
                        (let ((_%end103289%_ _%end103264%_))
                          (__substring->bytes__%
                           _%str103269%_
                           _%start103279%_
                           _%end103289%_
                           _%enc103265%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@715.25-715.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end103264%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@714.25-714.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start103263%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@713.25-713.28"
               'contract:
               'string?
               'value:
               _%str103262%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str103302%_ _%start103303%_ _%end103304%_)
        (let ((_%enc103306%_ 'UTF-8))
          (substring->bytes__%
           _%str103302%_
           _%start103303%_
           _%end103304%_
           _%enc103306%_))))
    (define substring->bytes
      (lambda _g112057_
        (let ((_g112058_ (let () (declare (not safe)) (##length _g112057_))))
          (cond ((let () (declare (not safe)) (##fx= _g112058_ 3))
                 (apply substring->bytes__0 _g112057_))
                ((let () (declare (not safe)) (##fx= _g112058_ 4))
                 (apply substring->bytes__% _g112057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g112057_))))))
    (define __string-empty?
      (lambda (_%str105998%_)
        (let* ((_%str106001%_ _%str105998%_)
               (__tmp112059
                (let () (declare (not safe)) (##string-length _%str106001%_))))
          (declare (not safe))
          (##fxzero? __tmp112059))))
    (define string-empty?
      (lambda (_%str103433%_)
        (if (string? _%str103433%_)
            (let ((_%str103437%_ _%str103433%_))
              (__string-empty? _%str103437%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@724.22-724.25"
               'contract:
               'string?
               'value:
               _%str103433%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str105938%_ _%char105939%_ _%start105940%_)
        (let* ((_%str105943%_ _%str105938%_)
               (_%char105951%_ _%char105939%_)
               (_%start105959%_ _%start105940%_)
               (_%len105968%_
                (let () (declare (not safe)) (##string-length _%str105943%_))))
          (let _%lp105970%_ ((_%k105972%_ _%start105959%_))
            (let ((_%k105974%_ _%k105972%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k105974%_ _%len105968%_))
                  (if (eq? _%char105951%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str105943%_ _%k105974%_)))
                      _%k105974%_
                      (_%lp105970%_
                       (let () (declare (not safe)) (##fx+ _%k105974%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str105989%_ _%char105990%_)
        (let ((_%start105992%_ '0))
          (__string-index__% _%str105989%_ _%char105990%_ _%start105992%_))))
    (define __string-index
      (lambda _g112060_
        (let ((_g112061_ (let () (declare (not safe)) (##length _g112060_))))
          (cond ((let () (declare (not safe)) (##fx= _g112061_ 2))
                 (apply __string-index__0 _g112060_))
                ((let () (declare (not safe)) (##fx= _g112061_ 3))
                 (apply __string-index__% _g112060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g112060_))))))
    (define string-index__%
      (lambda (_%str103568%_ _%char103569%_ _%start103570%_)
        (if (string? _%str103568%_)
            (let ((_%str103574%_ _%str103568%_))
              (if (char? _%char103569%_)
                  (let ((_%char103584%_ _%char103569%_))
                    (if (nonnegative-fixnum? _%start103570%_)
                        (let ((_%start103594%_ _%start103570%_))
                          (__string-index__%
                           _%str103574%_
                           _%char103584%_
                           _%start103594%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@730.21-730.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start103570%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@729.21-729.25"
                     'contract:
                     'char?
                     'value:
                     _%char103569%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@728.21-728.24"
               'contract:
               'string?
               'value:
               _%str103568%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str103607%_ _%char103608%_)
        (let ((_%start103610%_ '0))
          (string-index__% _%str103607%_ _%char103608%_ _%start103610%_))))
    (define string-index
      (lambda _g112062_
        (let ((_g112063_ (let () (declare (not safe)) (##length _g112062_))))
          (cond ((let () (declare (not safe)) (##fx= _g112063_ 2))
                 (apply string-index__0 _g112062_))
                ((let () (declare (not safe)) (##fx= _g112063_ 3))
                 (apply string-index__% _g112062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g112062_))))))
    (define __string-rindex__%
      (lambda (_%str105880%_ _%char105881%_ _%start105882%_)
        (let* ((_%str105885%_ _%str105880%_)
               (_%char105893%_ _%char105881%_)
               (_%len105902%_
                (let () (declare (not safe)) (##string-length _%str105885%_)))
               (_%start105904%_
                (if (fixnum? _%start105882%_)
                    _%start105882%_
                    (let () (declare (not safe)) (##fx- _%len105902%_ '1)))))
          (let _%lp105907%_ ((_%k105909%_ _%start105904%_))
            (let ((_%k105911%_ _%k105909%_))
              (if (let () (declare (not safe)) (##fx>= _%k105911%_ '0))
                  (if (eq? _%char105893%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str105885%_ _%k105911%_)))
                      _%k105911%_
                      (_%lp105907%_
                       (let () (declare (not safe)) (##fx- _%k105911%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str105928%_ _%char105929%_)
        (let ((_%start105931%_ '#f))
          (__string-rindex__% _%str105928%_ _%char105929%_ _%start105931%_))))
    (define __string-rindex
      (lambda _g112064_
        (let ((_g112065_ (let () (declare (not safe)) (##length _g112064_))))
          (cond ((let () (declare (not safe)) (##fx= _g112065_ 2))
                 (apply __string-rindex__0 _g112064_))
                ((let () (declare (not safe)) (##fx= _g112065_ 3))
                 (apply __string-rindex__% _g112064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g112064_))))))
    (define string-rindex__%
      (lambda (_%str103737%_ _%char103738%_ _%start103739%_)
        (if (string? _%str103737%_)
            (let ((_%str103743%_ _%str103737%_))
              (if (char? _%char103738%_)
                  (let ((_%char103753%_ _%char103738%_))
                    (__string-rindex__%
                     _%str103743%_
                     _%char103753%_
                     _%start103739%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@740.25-740.29"
                     'contract:
                     'char?
                     'value:
                     _%char103738%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@739.22-739.25"
               'contract:
               'string?
               'value:
               _%str103737%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str103766%_ _%char103767%_)
        (let ((_%start103769%_ '#f))
          (string-rindex__% _%str103766%_ _%char103767%_ _%start103769%_))))
    (define string-rindex
      (lambda _g112066_
        (let ((_g112067_ (let () (declare (not safe)) (##length _g112066_))))
          (cond ((let () (declare (not safe)) (##fx= _g112067_ 2))
                 (apply string-rindex__0 _g112066_))
                ((let () (declare (not safe)) (##fx= _g112067_ 3))
                 (apply string-rindex__% _g112066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g112066_))))))
    (define __string-split
      (lambda (_%str105777%_ _%char105778%_)
        (let* ((_%str105781%_ _%str105777%_)
               (_%char105789%_ _%char105778%_)
               (_%len105798%_
                (let () (declare (not safe)) (##string-length _%str105781%_))))
          (let _%lp105800%_ ((_%start105802%_ '0) (_%r105803%_ '()))
            (let* ((_%start105806%_ _%start105802%_)
                   (_%$e105864%_
                    (let* ((_%str105819%_ _%str105781%_)
                           (_%char105822%_ _%char105789%_)
                           (_%start105825%_ _%start105806%_)
                           (_%str105830%_ _%str105819%_)
                           (_%char105844%_ _%char105822%_))
                      (if (nonnegative-fixnum? _%start105825%_)
                          (let ((_%start105854%_ _%start105825%_))
                            (__string-index__%
                             _%str105830%_
                             _%char105844%_
                             _%start105854%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start105825%_)
                            '#!void)))))
              (if _%$e105864%_
                  ((lambda (_%end105867%_)
                     (let ((_%end105869%_ _%end105867%_))
                       (_%lp105800%_
                        (let () (declare (not safe)) (##fx+ _%end105869%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str105781%_
                                 _%start105806%_
                                 _%end105869%_))
                              _%r105803%_))))
                   _%$e105864%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start105806%_ _%len105798%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str105781%_
                                _%start105806%_
                                _%len105798%_)))
                       _%r105803%_)
                      (reverse! _%r105803%_))))))))
    (define string-split
      (lambda (_%str103895%_ _%char103896%_)
        (if (string? _%str103895%_)
            (let ((_%str103900%_ _%str103895%_))
              (if (char? _%char103896%_)
                  (let ((_%char103910%_ _%char103896%_))
                    (__string-split _%str103900%_ _%char103910%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@751.37-751.41"
                     'contract:
                     'char?
                     'value:
                     _%char103896%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@751.21-751.24"
               'contract:
               'string?
               'value:
               _%str103895%_)
              '#!void))))
    (define string-join
      (lambda (_%strs105627%_ _%join105628%_)
        (letrec ((_%join-length105631%_
                  (lambda (_%strs105715%_ _%jlen105716%_)
                    (let _%lp105718%_ ((_%rest105720%_ _%strs105715%_)
                                       (_%len105721%_ '0))
                      (let* ((_%len105723%_ _%len105721%_)
                             (_%rest105731105739%_ _%rest105720%_)
                             (_%else105733105747%_ (lambda () '0))
                             (_%K105735105765%_
                              (lambda (_%rest105750%_ _%hd105751%_)
                                (if (string? _%hd105751%_)
                                    (let ((_%hd105753%_ _%hd105751%_))
                                      (if (pair? _%rest105750%_)
                                          (_%lp105718%_
                                           _%rest105750%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd105753%_))
                                                _%jlen105716%_
                                                _%len105723%_))
                                          (let ((__tmp112068
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd105753%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp112068
                                                   _%len105723%_))))
                                    (error '"expected string" _%hd105751%_)))))
                        (if (pair? _%rest105731105739%_)
                            (let ((_%hd105736105768%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest105731105739%_)))
                                  (_%tl105737105770%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest105731105739%_))))
                              (let* ((_%hd105773%_ _%hd105736105768%_)
                                     (_%rest105775%_ _%tl105737105770%_))
                                (_%K105735105765%_
                                 _%rest105775%_
                                 _%hd105773%_)))
                            (_%else105733105747%_)))))))
          (let* ((_%join105636%_
                  (if (char? _%join105628%_)
                      (let () (declare (not safe)) (##string _%join105628%_))
                      (if (string? _%join105628%_)
                          _%join105628%_
                          (error '"expected string or char" _%join105628%_))))
                 (_%jlen105638%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join105636%_)))
                 (_%olen105640%_
                  (_%join-length105631%_ _%strs105627%_ _%jlen105638%_))
                 (_%ostr105642%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen105640%_))))
            (let _%lp105645%_ ((_%rest105647%_ _%strs105627%_)
                               (_%k105648%_ '0))
              (let* ((_%k105651%_ _%k105648%_)
                     (_%rest105667105675%_ _%rest105647%_)
                     (_%else105669105683%_ (lambda () '""))
                     (_%K105671105703%_
                      (lambda (_%rest105686%_ _%hd105687%_)
                        (let* ((_%hd105689%_ _%hd105687%_)
                               (_%hdlen105701%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd105689%_))))
                          (if (pair? _%rest105686%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd105689%_
                                   '0
                                   _%hdlen105701%_
                                   _%ostr105642%_
                                   _%k105651%_))
                                (let ((__tmp112069
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k105651%_ _%hdlen105701%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join105636%_
                                   '0
                                   _%jlen105638%_
                                   _%ostr105642%_
                                   __tmp112069))
                                (_%lp105645%_
                                 _%rest105686%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k105651%_
                                          _%hdlen105701%_
                                          _%jlen105638%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd105689%_
                                   '0
                                   _%hdlen105701%_
                                   _%ostr105642%_
                                   _%k105651%_))
                                _%ostr105642%_))))))
                (if (pair? _%rest105667105675%_)
                    (let ((_%hd105672105706%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest105667105675%_)))
                          (_%tl105673105708%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest105667105675%_))))
                      (let* ((_%hd105711%_ _%hd105672105706%_)
                             (_%rest105713%_ _%tl105673105708%_))
                        (_%K105671105703%_ _%rest105713%_ _%hd105711%_)))
                    (_%else105669105683%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes105567%_ _%port105568%_ _%start105569%_ _%end105570%_)
        (let* ((_%bytes105573%_ _%bytes105567%_)
               (_%port105581%_ _%port105568%_)
               (_%start105589%_ _%start105569%_)
               (_%end105597%_ _%end105570%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes105573%_
           _%start105589%_
           _%end105597%_
           _%port105581%_))))
    (define __read-u8vector__0
      (lambda (_%bytes105609%_ _%port105610%_)
        (let* ((_%start105612%_ '0)
               (_%end105614%_ (u8vector-length _%bytes105609%_)))
          (__read-u8vector__%
           _%bytes105609%_
           _%port105610%_
           _%start105612%_
           _%end105614%_))))
    (define __read-u8vector__1
      (lambda (_%bytes105616%_ _%port105617%_ _%start105618%_)
        (let ((_%end105620%_ (u8vector-length _%bytes105616%_)))
          (__read-u8vector__%
           _%bytes105616%_
           _%port105617%_
           _%start105618%_
           _%end105620%_))))
    (define __read-u8vector
      (lambda _g112070_
        (let ((_g112071_ (let () (declare (not safe)) (##length _g112070_))))
          (cond ((let () (declare (not safe)) (##fx= _g112071_ 2))
                 (apply __read-u8vector__0 _g112070_))
                ((let () (declare (not safe)) (##fx= _g112071_ 3))
                 (apply __read-u8vector__1 _g112070_))
                ((let () (declare (not safe)) (##fx= _g112071_ 4))
                 (apply __read-u8vector__% _g112070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g112070_))))))
    (define read-u8vector__%
      (lambda (_%bytes104041%_ _%port104042%_ _%start104043%_ _%end104044%_)
        (if (u8vector? _%bytes104041%_)
            (let ((_%bytes104048%_ _%bytes104041%_))
              (if (input-port? _%port104042%_)
                  (let ((_%port104058%_ _%port104042%_))
                    (if ((lambda (_%o104067%_)
                           (and (fixnum? _%o104067%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o104067%_ '0))
                                (let ((__tmp112072
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes104048%_))))
                                  (declare (not safe))
                                  (##fx< _%o104067%_ __tmp112072))))
                         _%start104043%_)
                        (let ((_%start104071%_ _%start104043%_))
                          (if ((lambda (_%o104080%_)
                                 (and (fixnum? _%o104080%_)
                                      (let ((__tmp112073
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes104048%_))))
                                        (declare (not safe))
                                        (##fx<= _%start104071%_
                                                _%o104080%_
                                                __tmp112073))))
                               _%end104044%_)
                              (let ((_%end104084%_ _%end104044%_))
                                (__read-u8vector__%
                                 _%bytes104048%_
                                 _%port104058%_
                                 _%start104071%_
                                 _%end104084%_))
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
                                 _%end104044%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@816.22-816.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start104043%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@815.22-815.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port104042%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@814.22-814.27"
               'contract:
               'u8vector?
               'value:
               _%bytes104041%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes104097%_ _%port104098%_)
        (let* ((_%start104100%_ '0)
               (_%end104102%_ (u8vector-length _%bytes104097%_)))
          (read-u8vector__%
           _%bytes104097%_
           _%port104098%_
           _%start104100%_
           _%end104102%_))))
    (define read-u8vector__1
      (lambda (_%bytes104104%_ _%port104105%_ _%start104106%_)
        (let ((_%end104108%_ (u8vector-length _%bytes104104%_)))
          (read-u8vector__%
           _%bytes104104%_
           _%port104105%_
           _%start104106%_
           _%end104108%_))))
    (define read-u8vector
      (lambda _g112074_
        (let ((_g112075_ (let () (declare (not safe)) (##length _g112074_))))
          (cond ((let () (declare (not safe)) (##fx= _g112075_ 2))
                 (apply read-u8vector__0 _g112074_))
                ((let () (declare (not safe)) (##fx= _g112075_ 3))
                 (apply read-u8vector__1 _g112074_))
                ((let () (declare (not safe)) (##fx= _g112075_ 4))
                 (apply read-u8vector__% _g112074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g112074_))))))
    (define __write-u8vector__%
      (lambda (_%bytes105506%_ _%port105507%_ _%start105508%_ _%end105509%_)
        (let* ((_%bytes105512%_ _%bytes105506%_)
               (_%port105520%_ _%port105507%_)
               (_%start105528%_ _%start105508%_)
               (_%end105536%_ _%end105509%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes105512%_
           _%start105528%_
           _%end105536%_
           _%port105520%_))))
    (define __write-u8vector__0
      (lambda (_%bytes105548%_ _%port105549%_)
        (let* ((_%start105551%_ '0)
               (_%end105553%_ (u8vector-length _%bytes105548%_)))
          (__write-u8vector__%
           _%bytes105548%_
           _%port105549%_
           _%start105551%_
           _%end105553%_))))
    (define __write-u8vector__1
      (lambda (_%bytes105555%_ _%port105556%_ _%start105557%_)
        (let ((_%end105559%_ (u8vector-length _%bytes105555%_)))
          (__write-u8vector__%
           _%bytes105555%_
           _%port105556%_
           _%start105557%_
           _%end105559%_))))
    (define __write-u8vector
      (lambda _g112076_
        (let ((_g112077_ (let () (declare (not safe)) (##length _g112076_))))
          (cond ((let () (declare (not safe)) (##fx= _g112077_ 2))
                 (apply __write-u8vector__0 _g112076_))
                ((let () (declare (not safe)) (##fx= _g112077_ 3))
                 (apply __write-u8vector__1 _g112076_))
                ((let () (declare (not safe)) (##fx= _g112077_ 4))
                 (apply __write-u8vector__% _g112076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g112076_))))))
    (define write-u8vector__%
      (lambda (_%bytes104236%_ _%port104237%_ _%start104238%_ _%end104239%_)
        (if (u8vector? _%bytes104236%_)
            (let ((_%bytes104243%_ _%bytes104236%_))
              (if (output-port? _%port104237%_)
                  (let* ((_%port104253%_ _%port104237%_)
                         (_%start104262%_ _%start104238%_))
                    (if ((lambda (_%o104270%_)
                           (and (fixnum? _%o104270%_)
                                (let ((__tmp112078
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes104243%_))))
                                  (declare (not safe))
                                  (##fx<= _%start104262%_
                                          _%o104270%_
                                          __tmp112078))))
                         _%end104239%_)
                        (let ((_%end104274%_ _%end104239%_))
                          (__write-u8vector__%
                           _%bytes104243%_
                           _%port104253%_
                           _%start104262%_
                           _%end104274%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@827.23-827.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end104239%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@825.23-825.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port104237%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@824.23-824.28"
               'contract:
               'u8vector?
               'value:
               _%bytes104236%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes104287%_ _%port104288%_)
        (let* ((_%start104290%_ '0)
               (_%end104292%_ (u8vector-length _%bytes104287%_)))
          (write-u8vector__%
           _%bytes104287%_
           _%port104288%_
           _%start104290%_
           _%end104292%_))))
    (define write-u8vector__1
      (lambda (_%bytes104294%_ _%port104295%_ _%start104296%_)
        (let ((_%end104298%_ (u8vector-length _%bytes104294%_)))
          (write-u8vector__%
           _%bytes104294%_
           _%port104295%_
           _%start104296%_
           _%end104298%_))))
    (define write-u8vector
      (lambda _g112079_
        (let ((_g112080_ (let () (declare (not safe)) (##length _g112079_))))
          (cond ((let () (declare (not safe)) (##fx= _g112080_ 2))
                 (apply write-u8vector__0 _g112079_))
                ((let () (declare (not safe)) (##fx= _g112080_ 3))
                 (apply write-u8vector__1 _g112079_))
                ((let () (declare (not safe)) (##fx= _g112080_ 4))
                 (apply write-u8vector__% _g112079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g112079_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag105474%_
               _%dbg-exprs105475%_
               _%dbg-thunks105476%_
               _%expr105477%_
               _%thunk105478%_)
        (letrec ((_%o105480%_ (current-output-port))
                 (_%e105481%_ (current-error-port))
                 (_%p105482%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f105483%_
                  (lambda ()
                    (force-output _%o105480%_)
                    (force-output _%e105481%_)))
                 (_%d105484%_
                  (lambda (_%x105491%_) (display _%x105491%_ _%e105481%_)))
                 (_%w105485%_
                  (lambda (_%x105493%_) (_%p105482%_ _%x105493%_ _%e105481%_)))
                 (_%n105486%_ (lambda () (newline _%e105481%_)))
                 (_%v105487%_
                  (lambda (_%l105496%_)
                    (for-each
                     (lambda (_%x105498%_)
                       (_%d105484%_ '" ")
                       (_%w105485%_ _%x105498%_))
                     _%l105496%_)
                    (_%n105486%_)))
                 (_%x105488%_
                  (lambda (_%expr105500%_ _%thunk105501%_)
                    (_%f105483%_)
                    (_%d105484%_ '"  ")
                    (_%w105485%_ _%expr105500%_)
                    (_%d105484%_ '" =>")
                    (call-with-values
                     _%thunk105501%_
                     (lambda _%x105503%_
                       (_%v105487%_ _%x105503%_)
                       (_%f105483%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x105503%_)))))))
          (if _%tag105474%_
              (begin
                (if (eq? _%tag105474%_ '#!void)
                    '#!void
                    (begin
                      (_%f105483%_)
                      (_%d105484%_ _%tag105474%_)
                      (_%n105486%_)))
                (for-each _%x105488%_ _%dbg-exprs105475%_ _%dbg-thunks105476%_)
                (if _%thunk105478%_
                    (_%x105488%_ _%expr105477%_ _%thunk105478%_)
                    '#!void))
              (if _%thunk105478%_ (_%thunk105478%_) '#!void)))))))
