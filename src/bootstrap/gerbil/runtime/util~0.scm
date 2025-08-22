(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1755903074)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args93901%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args93901%_))
          (newline))))
    (define display*
      (lambda _%args93898%_
        (let () (declare (not safe)) (##for-each display _%args93898%_))))
    (define file-newer?
      (lambda (_%file193873%_ _%file293874%_)
        (if (string? _%file193873%_)
            (let ((_%file193878%_ _%file193873%_))
              (if (string? _%file293874%_)
                  (let ((_%file293888%_ _%file293874%_))
                    (__file-newer? _%file193878%_ _%file293888%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@64.20-64.25"
                     'contract:
                     'string?
                     'value:
                     _%file293874%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@63.20-63.25"
               'contract:
               'string?
               'value:
               _%file193873%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file193821%_ _%file293822%_)
        (let* ((_%file193825%_ _%file193821%_) (_%file293833%_ _%file293822%_))
          (letrec ((_%modification-time93842%_
                    (lambda (_%file93861%_)
                      (let ((_%file93864%_ _%file93861%_))
                        (_%__modification-time93843%_ _%file93864%_))))
                   (_%__modification-time93843%_
                    (lambda (_%file93845%_)
                      (let* ((_%file93848%_ _%file93845%_)
                             (__tmp95631
                              (let ((__tmp95632
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file93848%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp95632))))
                        (declare (not safe))
                        (##time->seconds __tmp95631)))))
            (let ((__tmp95634 (_%__modification-time93843%_ _%file193825%_))
                  (__tmp95633 (_%__modification-time93843%_ _%file293833%_)))
              (declare (not safe))
              (##fl> __tmp95634 __tmp95633))))))
    (define create-directory*__%
      (lambda (_%dir93786%_ _%perms93787%_)
        (if (string? _%dir93786%_)
            (let ((_%dir93791%_ _%dir93786%_))
              (if (fixnum? _%perms93787%_)
                  (let ((_%perms93801%_ _%perms93787%_))
                    (__create-directory*__% _%dir93791%_ _%perms93801%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.26-75.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms93787%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.26-74.29"
               'contract:
               'string?
               'value:
               _%dir93786%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir93814%_)
        (let ((_%perms93816%_ '493))
          (create-directory*__% _%dir93814%_ _%perms93816%_))))
    (define create-directory*
      (lambda _g95635_
        (let ((_g95636_ (let () (declare (not safe)) (##length _g95635_))))
          (cond ((let () (declare (not safe)) (##fx= _g95636_ 1))
                 (apply create-directory*__0 _g95635_))
                ((let () (declare (not safe)) (##fx= _g95636_ 2))
                 (apply create-directory*__% _g95635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g95635_))))))
    (define __create-directory*__%
      (lambda (_%dir93710%_ _%perms93711%_)
        (let* ((_%dir93714%_ _%dir93710%_) (_%perms93722%_ _%perms93711%_))
          (letrec ((_%create193731%_
                    (lambda (_%path93763%_)
                      (let ((_%path93766%_ _%path93763%_))
                        (_%__create193732%_ _%path93766%_))))
                   (_%__create193732%_
                    (lambda (_%path93744%_)
                      (let ((_%path93747%_ _%path93744%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path93747%_))
                            (if (eq? (file-type _%path93747%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path93747%_))
                            (if _%perms93722%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path93747%_
                                             (cons 'permissions:
                                                   (cons _%perms93722%_
                                                         '())))))
                                (create-directory _%path93747%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir93714%_))
                '#!void
                (let _%lp93734%_ ((_%start93736%_ '0))
                  (let ((_%$e93738%_
                         (__string-index__% _%dir93714%_ '#\/ _%start93736%_)))
                    (if _%$e93738%_
                        ((lambda (_%x93741%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x93741%_ '0))
                               (_%__create193732%_
                                (substring _%dir93714%_ '0 _%x93741%_))
                               '#!void)
                           (_%lp93734%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x93741%_ '1))))
                         _%$e93738%_)
                        (_%__create193732%_ _%dir93714%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir93778%_)
        (let ((_%perms93780%_ '493))
          (__create-directory*__% _%dir93778%_ _%perms93780%_))))
    (define __create-directory*
      (lambda _g95637_
        (let ((_g95638_ (let () (declare (not safe)) (##length _g95637_))))
          (cond ((let () (declare (not safe)) (##fx= _g95638_ 1))
                 (apply __create-directory*__0 _g95637_))
                ((let () (declare (not safe)) (##fx= _g95638_ 2))
                 (apply __create-directory*__% _g95637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g95637_))))))
    (define move-file__%
      (lambda (_%src93661%_ _%dest93662%_ _%replace?93663%_)
        (if (string? _%src93661%_)
            (let ((_%src93667%_ _%src93661%_))
              (if (string? _%dest93662%_)
                  (let ((_%dest93677%_ _%dest93662%_))
                    (if (boolean? _%replace?93663%_)
                        (let ((_%replace?93687%_ _%replace?93663%_))
                          (__move-file__%
                           _%src93667%_
                           _%dest93677%_
                           _%replace?93687%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@99.51-99.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?93663%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@99.34-99.38"
                     'contract:
                     'string?
                     'value:
                     _%dest93662%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@99.18-99.21"
               'contract:
               'string?
               'value:
               _%src93661%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src93700%_ _%dest93701%_)
        (let ((_%replace?93703%_ '#t))
          (move-file__% _%src93700%_ _%dest93701%_ _%replace?93703%_))))
    (define move-file
      (lambda _g95639_
        (let ((_g95640_ (let () (declare (not safe)) (##length _g95639_))))
          (cond ((let () (declare (not safe)) (##fx= _g95640_ 2))
                 (apply move-file__0 _g95639_))
                ((let () (declare (not safe)) (##fx= _g95640_ 3))
                 (apply move-file__% _g95639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g95639_))))))
    (define __move-file__%
      (lambda (_%src93604%_ _%dest93605%_ _%replace?93606%_)
        (let* ((_%src93609%_ _%src93604%_)
               (_%dest93617%_ _%dest93605%_)
               (_%replace?93625%_ _%replace?93606%_))
          (letrec ((_%force-move-it93634%_
                    (lambda ()
                      (let ((_%tmp93640%_
                             (if _%replace?93625%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest93617%_))
                                     (let ((__tmp95641
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest93617%_
                                        '"."
                                        __tmp95641))
                                     '#f)
                                 '#f)))
                        (if _%tmp93640%_
                            (rename-file _%dest93617%_ _%tmp93640%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e93642%_)
                           (if _%tmp93640%_
                               (rename-file _%tmp93640%_ _%dest93617%_ '#t)
                               '#!void)
                           (raise _%e93642%_))
                         (lambda ()
                           (let ((_%fi93645%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src93609%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi93645%_))
                                      'symbolic-link)
                                 (let ((__tmp95642
                                        (path-normalize _%src93609%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp95642
                                    _%dest93617%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file _%src93609%_ _%dest93617%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src93609%_))
                           (if _%tmp93640%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp93640%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e93636%_)
               (if (let () (declare (not safe)) (##file-exists? _%src93609%_))
                   (_%force-move-it93634%_)
                   (raise _%e93636%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src93609%_
                  _%dest93617%_
                  _%replace?93625%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src93651%_ _%dest93652%_)
        (let ((_%replace?93654%_ '#t))
          (__move-file__% _%src93651%_ _%dest93652%_ _%replace?93654%_))))
    (define __move-file
      (lambda _g95643_
        (let ((_g95644_ (let () (declare (not safe)) (##length _g95643_))))
          (cond ((let () (declare (not safe)) (##fx= _g95644_ 2))
                 (apply __move-file__0 _g95643_))
                ((let () (declare (not safe)) (##fx= _g95644_ 3))
                 (apply __move-file__% _g95643_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g95643_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore93600%_ '#t))
    (define true? (lambda (_%obj93597%_) (eq? _%obj93597%_ '#t)))
    (define false (lambda _%ignore93594%_ '#f))
    (define void (lambda _%ignore93591%_ '#!void))
    (define void? (lambda (_%obj93588%_) (eq? _%obj93588%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj93585%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj93585%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj93582%_) (eq? _%obj93582%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj93579%_) (eq? _%obj93579%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj93576%_) (eq? _%obj93576%_ '#!optional)))
    (define immediate?
      (lambda (_%obj93571%_)
        (let* ((_%t93574%_ (let () (declare (not safe)) (##type _%obj93571%_)))
               (__tmp95645
                (let () (declare (not safe)) (##fxand _%t93574%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp95645))))
    (define nonnegative-fixnum?
      (lambda (_%obj93568%_)
        (if (fixnum? _%obj93568%_)
            (let () (declare (not safe)) (##fx>= _%obj93568%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj93562%_)
        (let ((_%$e93565%_ (pair? _%obj93562%_)))
          (if _%$e93565%_ _%$e93565%_ (null? _%obj93562%_)))))
    (define values-count
      (lambda (_%obj93559%_)
        (if (let () (declare (not safe)) (##values? _%obj93559%_))
            (let () (declare (not safe)) (##values-length _%obj93559%_))
            '1)))
    (define values-ref
      (lambda (_%obj93544%_ _%k93545%_)
        (if (fixnum? _%k93545%_)
            (let ((_%k93549%_ _%k93545%_))
              (__values-ref _%obj93544%_ _%k93549%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@234.23-234.24"
               'contract:
               'fixnum?
               'value:
               _%k93545%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj93531%_ _%k93532%_)
        (let ((_%k93535%_ _%k93532%_))
          (if (let () (declare (not safe)) (##values? _%obj93531%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj93531%_ _%k93535%_))
              _%obj93531%_))))
    (define values->list
      (lambda (_%obj93528%_)
        (if (let () (declare (not safe)) (##values? _%obj93528%_))
            (let () (declare (not safe)) (##values->list _%obj93528%_))
            (list _%obj93528%_))))
    (define foldl1
      (lambda (_%f93512%_ _%iv93513%_ _%lst93514%_)
        (if (procedure? _%f93512%_)
            (let ((_%f93518%_ _%f93512%_))
              (__foldl1 _%f93518%_ _%iv93513%_ _%lst93514%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@257.15-257.16"
               'contract:
               'procedure?
               'value:
               _%f93512%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f93460%_ _%iv93461%_ _%lst93462%_)
        (let ((_%f93465%_ _%f93460%_))
          (let _%lp93474%_ ((_%rest93476%_ _%lst93462%_)
                            (_%r93477%_ _%iv93461%_))
            (let* ((_%rest9347893486%_ _%rest93476%_)
                   (_%else9348093494%_ (lambda () _%r93477%_))
                   (_%K9348293500%_
                    (lambda (_%rest93497%_ _%x93498%_)
                      (_%lp93474%_
                       _%rest93497%_
                       (let ()
                         (declare (not safe))
                         (_%f93465%_ _%x93498%_ _%r93477%_))))))
              (if (pair? _%rest9347893486%_)
                  (let ((_%hd9348393503%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9347893486%_)))
                        (_%tl9348493505%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9347893486%_))))
                    (let* ((_%x93508%_ _%hd9348393503%_)
                           (_%rest93510%_ _%tl9348493505%_))
                      (_%K9348293500%_ _%rest93510%_ _%x93508%_)))
                  (_%else9348093494%_)))))))
    (define foldl2
      (lambda (_%f93443%_ _%iv93444%_ _%lst193445%_ _%lst293446%_)
        (if (procedure? _%f93443%_)
            (let ((_%f93450%_ _%f93443%_))
              (__foldl2 _%f93450%_ _%iv93444%_ _%lst193445%_ _%lst293446%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@264.15-264.16"
               'contract:
               'procedure?
               'value:
               _%f93443%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f93356%_ _%iv93357%_ _%lst193358%_ _%lst293359%_)
        (let ((_%f93362%_ _%f93356%_))
          (let _%lp93371%_ ((_%rest193373%_ _%lst193358%_)
                            (_%rest293374%_ _%lst293359%_)
                            (_%r93375%_ _%iv93357%_))
            (let* ((_%rest19337693384%_ _%rest193373%_)
                   (_%else9337893392%_ (lambda () _%r93375%_))
                   (_%K9338093431%_
                    (lambda (_%rest193395%_ _%x193396%_)
                      (let* ((_%rest29339793405%_ _%rest293374%_)
                             (_%else9339993413%_ (lambda () _%r93375%_))
                             (_%K9340193419%_
                              (lambda (_%rest293416%_ _%x293417%_)
                                (_%lp93371%_
                                 _%rest193395%_
                                 _%rest293416%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f93362%_
                                    _%x193396%_
                                    _%x293417%_
                                    _%r93375%_))))))
                        (if (pair? _%rest29339793405%_)
                            (let ((_%hd9340293422%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29339793405%_)))
                                  (_%tl9340393424%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29339793405%_))))
                              (let* ((_%x293427%_ _%hd9340293422%_)
                                     (_%rest293429%_ _%tl9340393424%_))
                                (_%K9340193419%_ _%rest293429%_ _%x293427%_)))
                            (_%else9339993413%_))))))
              (if (pair? _%rest19337693384%_)
                  (let ((_%hd9338193434%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19337693384%_)))
                        (_%tl9338293436%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19337693384%_))))
                    (let* ((_%x193439%_ _%hd9338193434%_)
                           (_%rest193441%_ _%tl9338293436%_))
                      (_%K9338093431%_ _%rest193441%_ _%x193439%_)))
                  (_%else9337893392%_)))))))
    (define foldl
      (lambda _g95646_
        (let ((_g95647_ (let () (declare (not safe)) (##length _g95646_))))
          (cond ((let () (declare (not safe)) (##fx= _g95647_ 3))
                 (apply foldl1 _g95646_))
                ((let () (declare (not safe)) (##fx= _g95647_ 4))
                 (apply foldl2 _g95646_))
                ((let () (declare (not safe)) (##fx>= _g95647_ 4))
                 (apply foldl* _g95646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g95646_))))))
    (define foldl*
      (lambda (_%f93325%_ _%iv93326%_ . _%rest93327%_)
        (if (procedure? _%f93325%_)
            (let ((_%f93331%_ _%f93325%_))
              (declare (not safe))
              (##apply __foldl* _%f93331%_ _%iv93326%_ _%rest93327%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@282.15-282.16"
               'contract:
               'procedure?
               'value:
               _%f93325%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f93303%_ _%iv93304%_ . _%rest93305%_)
        (let ((_%f93308%_ _%f93303%_))
          (let _%recur93317%_ ((_%iv93319%_ _%iv93304%_)
                               (_%rest93320%_ _%rest93305%_))
            (if (__andmap1 pair? _%rest93320%_)
                (_%recur93317%_
                 (let ((__tmp95648
                        (__foldr1
                         (lambda (_%xs93322%_ _%r93323%_)
                           (cons (car _%xs93322%_) _%r93323%_))
                         (list _%iv93319%_)
                         _%rest93320%_)))
                   (declare (not safe))
                   (##apply _%f93308%_ __tmp95648))
                 (map cdr _%rest93320%_))
                _%iv93319%_)))))
    (define foldr1
      (lambda (_%f93287%_ _%iv93288%_ _%lst93289%_)
        (if (procedure? _%f93287%_)
            (let ((_%f93293%_ _%f93287%_))
              (__foldr1 _%f93293%_ _%iv93288%_ _%lst93289%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f93287%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f93236%_ _%iv93237%_ _%lst93238%_)
        (let ((_%f93241%_ _%f93236%_))
          (let _%recur93250%_ ((_%rest93252%_ _%lst93238%_))
            (let* ((_%rest9325393261%_ _%rest93252%_)
                   (_%else9325593269%_ (lambda () _%iv93237%_))
                   (_%K9325793275%_
                    (lambda (_%rest93272%_ _%x93273%_)
                      (let ((__tmp95649 (_%recur93250%_ _%rest93272%_)))
                        (declare (not safe))
                        (_%f93241%_ _%x93273%_ __tmp95649)))))
              (if (pair? _%rest9325393261%_)
                  (let ((_%hd9325893278%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9325393261%_)))
                        (_%tl9325993280%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9325393261%_))))
                    (let* ((_%x93283%_ _%hd9325893278%_)
                           (_%rest93285%_ _%tl9325993280%_))
                      (_%K9325793275%_ _%rest93285%_ _%x93283%_)))
                  (_%else9325593269%_)))))))
    (define foldr2
      (lambda (_%f93219%_ _%iv93220%_ _%lst193221%_ _%lst293222%_)
        (if (procedure? _%f93219%_)
            (let ((_%f93226%_ _%f93219%_))
              (__foldr2 _%f93226%_ _%iv93220%_ _%lst193221%_ _%lst293222%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@299.15-299.16"
               'contract:
               'procedure?
               'value:
               _%f93219%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f93133%_ _%iv93134%_ _%lst193135%_ _%lst293136%_)
        (let ((_%f93139%_ _%f93133%_))
          (let _%recur93148%_ ((_%rest193150%_ _%lst193135%_)
                               (_%rest293151%_ _%lst293136%_))
            (let* ((_%rest19315293160%_ _%rest193150%_)
                   (_%else9315493168%_ (lambda () _%iv93134%_))
                   (_%K9315693207%_
                    (lambda (_%rest193171%_ _%x193172%_)
                      (let* ((_%rest29317393181%_ _%rest293151%_)
                             (_%else9317593189%_ (lambda () _%iv93134%_))
                             (_%K9317793195%_
                              (lambda (_%rest293192%_ _%x293193%_)
                                (let ((__tmp95650
                                       (_%recur93148%_
                                        _%rest193171%_
                                        _%rest293192%_)))
                                  (declare (not safe))
                                  (_%f93139%_
                                   _%x193172%_
                                   _%x293193%_
                                   __tmp95650)))))
                        (if (pair? _%rest29317393181%_)
                            (let ((_%hd9317893198%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29317393181%_)))
                                  (_%tl9317993200%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29317393181%_))))
                              (let* ((_%x293203%_ _%hd9317893198%_)
                                     (_%rest293205%_ _%tl9317993200%_))
                                (_%K9317793195%_ _%rest293205%_ _%x293203%_)))
                            (_%else9317593189%_))))))
              (if (pair? _%rest19315293160%_)
                  (let ((_%hd9315793210%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19315293160%_)))
                        (_%tl9315893212%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19315293160%_))))
                    (let* ((_%x193215%_ _%hd9315793210%_)
                           (_%rest193217%_ _%tl9315893212%_))
                      (_%K9315693207%_ _%rest193217%_ _%x193215%_)))
                  (_%else9315493168%_)))))))
    (define foldr
      (lambda _g95651_
        (let ((_g95652_ (let () (declare (not safe)) (##length _g95651_))))
          (cond ((let () (declare (not safe)) (##fx= _g95652_ 3))
                 (apply foldr1 _g95651_))
                ((let () (declare (not safe)) (##fx= _g95652_ 4))
                 (apply foldr2 _g95651_))
                ((let () (declare (not safe)) (##fx>= _g95652_ 4))
                 (apply foldr* _g95651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g95651_))))))
    (define foldr*
      (lambda (_%f93102%_ _%iv93103%_ . _%rest93104%_)
        (if (procedure? _%f93102%_)
            (let ((_%f93108%_ _%f93102%_))
              (declare (not safe))
              (##apply __foldr* _%f93108%_ _%iv93103%_ _%rest93104%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@317.15-317.16"
               'contract:
               'procedure?
               'value:
               _%f93102%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f93081%_ _%iv93082%_ . _%rest93083%_)
        (let ((_%f93086%_ _%f93081%_))
          (let _%recur93095%_ ((_%rest93097%_ _%rest93083%_))
            (if (__andmap1 pair? _%rest93097%_)
                (let ((__tmp95653
                       (__foldr1
                        (lambda (_%xs93099%_ _%r93100%_)
                          (cons (car _%xs93099%_) _%r93100%_))
                        (list (_%recur93095%_ (map cdr _%rest93097%_)))
                        _%rest93097%_)))
                  (declare (not safe))
                  (##apply _%f93086%_ __tmp95653))
                _%iv93082%_)))))
    (define remove-nulls!
      (lambda (_%l92968%_)
        (let* ((_%l9296992982%_ _%l92968%_)
               (_%E9297392986%_
                (lambda ()
                  (error '"No clause matching"
                         _%l9296992982%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K9297893071%_
                 (lambda (_%r93069%_) (remove-nulls! _%r93069%_)))
                (_%K9297593058%_
                 (lambda (_%r92998%_)
                   (let _%loop93000%_ ((_%l93002%_ _%l92968%_)
                                       (_%r93003%_ _%r92998%_))
                     (let* ((_%r9300493017%_ _%r93003%_)
                            (_%E9300893021%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r9300493017%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K9301393048%_
                              (lambda (_%rr93046%_)
                                (let ((__tmp95655 _%l93002%_)
                                      (__tmp95654 (remove-nulls! _%rr93046%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp95655 __tmp95654))))
                             (_%K9301093035%_
                              (lambda (_%rr93033%_)
                                (_%loop93000%_ _%r93003%_ _%rr93033%_)))
                             (_%K9300993026%_ (lambda () '#!void)))
                         (if (pair? _%r9300493017%_)
                             (let ((_%tl9301593053%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r9300493017%_)))
                                   (_%hd9301493051%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r9300493017%_))))
                               (if (null? _%hd9301493051%_)
                                   (let ((_%rr93056%_ _%tl9301593053%_))
                                     (_%K9301393048%_ _%rr93056%_))
                                   (let ((_%rr93041%_ _%tl9301593053%_))
                                     (_%K9301093035%_ _%rr93041%_))))
                             '#!void))))
                   _%l92968%_))
                (_%K9297492991%_ (lambda () _%l92968%_)))
            (if (pair? _%l9296992982%_)
                (let ((_%tl9298093076%_
                       (let () (declare (not safe)) (##cdr _%l9296992982%_)))
                      (_%hd9297993074%_
                       (let () (declare (not safe)) (##car _%l9296992982%_))))
                  (if (null? _%hd9297993074%_)
                      (let ((_%r93079%_ _%tl9298093076%_))
                        (remove-nulls! _%r93079%_))
                      (let ((_%r93064%_ _%tl9298093076%_))
                        (_%K9297593058%_ _%r93064%_))))
                (_%K9297492991%_))))))
    (define append1!
      (lambda (_%l92953%_ _%x92954%_)
        (let ((_%l292957%_ (cons _%x92954%_ '())))
          (if (pair? _%l92953%_)
              (let ((_%l92959%_ _%l92953%_))
                (let ((__tmp95656
                       (let () (declare (not safe)) (##last-pair _%l92959%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp95656 _%l292957%_))
                _%l92959%_)
              _%l292957%_))))
    (define append-reverse-until
      (lambda (_%pred92937%_ _%rhead92938%_ _%tail92939%_)
        (if (procedure? _%pred92937%_)
            (let ((_%pred92943%_ _%pred92937%_))
              (__append-reverse-until
               _%pred92943%_
               _%rhead92938%_
               _%tail92939%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@357.29-357.33"
               'contract:
               'procedure?
               'value:
               _%pred92937%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred92879%_ _%rhead92880%_ _%tail92881%_)
        (let ((_%pred92884%_ _%pred92879%_))
          (let _%loop92893%_ ((_%rhead92895%_ _%rhead92880%_)
                              (_%tail92896%_ _%tail92881%_))
            (let* ((_%rhead9289892907%_ _%rhead92895%_)
                   (_%E9290192911%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead9289892907%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K9290592934%_ (lambda () (values '() _%tail92896%_)))
                    (_%K9290292918%_
                     (lambda (_%r92915%_ _%a92916%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred92884%_ _%a92916%_))
                           (values _%rhead92895%_ _%tail92896%_)
                           (_%loop92893%_
                            _%r92915%_
                            (cons _%a92916%_ _%tail92896%_))))))
                (let ((_%try-match9290092930%_
                       (lambda ()
                         (if (pair? _%rhead9289892907%_)
                             (let ((_%tl9290492923%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead9289892907%_)))
                                   (_%hd9290392921%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead9289892907%_))))
                               (let ((_%a92926%_ _%hd9290392921%_)
                                     (_%r92928%_ _%tl9290492923%_))
                                 (_%K9290292918%_ _%r92928%_ _%a92926%_)))
                             (_%E9290192911%_)))))
                  (if (null? _%rhead9289892907%_)
                      (_%K9290592934%_)
                      (_%try-match9290092930%_)))))))))
    (define andmap1
      (lambda (_%f92864%_ _%lst92865%_)
        (if (procedure? _%f92864%_)
            (let ((_%f92869%_ _%f92864%_)) (__andmap1 _%f92869%_ _%lst92865%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@368.16-368.17"
               'contract:
               'procedure?
               'value:
               _%f92864%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f92813%_ _%lst92814%_)
        (let ((_%f92817%_ _%f92813%_))
          (let _%lp92826%_ ((_%rest92828%_ _%lst92814%_))
            (let* ((_%rest9283092838%_ _%rest92828%_)
                   (_%else9283292846%_ (lambda () '#t))
                   (_%K9283492852%_
                    (lambda (_%rest92849%_ _%x92850%_)
                      (if (let () (declare (not safe)) (_%f92817%_ _%x92850%_))
                          (_%lp92826%_ _%rest92849%_)
                          '#f))))
              (if (pair? _%rest9283092838%_)
                  (let ((_%hd9283592855%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9283092838%_)))
                        (_%tl9283692857%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9283092838%_))))
                    (let* ((_%x92860%_ _%hd9283592855%_)
                           (_%rest92862%_ _%tl9283692857%_))
                      (_%K9283492852%_ _%rest92862%_ _%x92860%_)))
                  (_%else9283292846%_)))))))
    (define andmap2
      (lambda (_%f92797%_ _%lst192798%_ _%lst292799%_)
        (if (procedure? _%f92797%_)
            (let ((_%f92803%_ _%f92797%_))
              (__andmap2 _%f92803%_ _%lst192798%_ _%lst292799%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f92797%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f92711%_ _%lst192712%_ _%lst292713%_)
        (let ((_%f92716%_ _%f92711%_))
          (let _%lp92725%_ ((_%rest192727%_ _%lst192712%_)
                            (_%rest292728%_ _%lst292713%_))
            (let* ((_%rest19273092738%_ _%rest192727%_)
                   (_%else9273292746%_ (lambda () '#t))
                   (_%K9273492785%_
                    (lambda (_%rest192749%_ _%x192750%_)
                      (let* ((_%rest29275192759%_ _%rest292728%_)
                             (_%else9275392767%_ (lambda () '#t))
                             (_%K9275592773%_
                              (lambda (_%rest292770%_ _%x292771%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f92716%_ _%x192750%_ _%x292771%_))
                                    (_%lp92725%_ _%rest192749%_ _%rest292770%_)
                                    '#f))))
                        (if (pair? _%rest29275192759%_)
                            (let ((_%hd9275692776%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29275192759%_)))
                                  (_%tl9275792778%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29275192759%_))))
                              (let* ((_%x292781%_ _%hd9275692776%_)
                                     (_%rest292783%_ _%tl9275792778%_))
                                (_%K9275592773%_ _%rest292783%_ _%x292781%_)))
                            (_%else9275392767%_))))))
              (if (pair? _%rest19273092738%_)
                  (let ((_%hd9273592788%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19273092738%_)))
                        (_%tl9273692790%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19273092738%_))))
                    (let* ((_%x192793%_ _%hd9273592788%_)
                           (_%rest192795%_ _%tl9273692790%_))
                      (_%K9273492785%_ _%rest192795%_ _%x192793%_)))
                  (_%else9273292746%_)))))))
    (define andmap
      (lambda _g95657_
        (let ((_g95658_ (let () (declare (not safe)) (##length _g95657_))))
          (cond ((let () (declare (not safe)) (##fx= _g95658_ 2))
                 (apply andmap1 _g95657_))
                ((let () (declare (not safe)) (##fx= _g95658_ 3))
                 (apply andmap2 _g95657_))
                ((let () (declare (not safe)) (##fx>= _g95658_ 3))
                 (apply andmap* _g95657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g95657_))))))
    (define andmap*
      (lambda (_%f92684%_ . _%rest92685%_)
        (if (procedure? _%f92684%_)
            (let ((_%f92689%_ _%f92684%_))
              (declare (not safe))
              (##apply __andmap* _%f92689%_ _%rest92685%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@397.16-397.17"
               'contract:
               'procedure?
               'value:
               _%f92684%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f92666%_ . _%rest92667%_)
        (let ((_%f92670%_ _%f92666%_))
          (let _%recur92679%_ ((_%rest92681%_ _%rest92667%_))
            (if (__andmap1 pair? _%rest92681%_)
                (if (let ((__tmp95659 (map car _%rest92681%_)))
                      (declare (not safe))
                      (##apply _%f92670%_ __tmp95659))
                    (_%recur92679%_ (map cdr _%rest92681%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f92651%_ _%lst92652%_)
        (if (procedure? _%f92651%_)
            (let ((_%f92656%_ _%f92651%_)) (__ormap1 _%f92656%_ _%lst92652%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.15-406.16"
               'contract:
               'procedure?
               'value:
               _%f92651%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f92598%_ _%lst92599%_)
        (let ((_%f92602%_ _%f92598%_))
          (let _%lp92611%_ ((_%rest92613%_ _%lst92599%_))
            (let* ((_%rest9261492622%_ _%rest92613%_)
                   (_%else9261692630%_ (lambda () '#f))
                   (_%K9261892639%_
                    (lambda (_%rest92633%_ _%x92634%_)
                      (let ((_%$e92636%_
                             (let ()
                               (declare (not safe))
                               (_%f92602%_ _%x92634%_))))
                        (if _%$e92636%_
                            _%$e92636%_
                            (_%lp92611%_ _%rest92633%_))))))
              (if (pair? _%rest9261492622%_)
                  (let ((_%hd9261992642%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9261492622%_)))
                        (_%tl9262092644%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9261492622%_))))
                    (let* ((_%x92647%_ _%hd9261992642%_)
                           (_%rest92649%_ _%tl9262092644%_))
                      (_%K9261892639%_ _%rest92649%_ _%x92647%_)))
                  (_%else9261692630%_)))))))
    (define ormap2
      (lambda (_%f92582%_ _%lst192583%_ _%lst292584%_)
        (if (procedure? _%f92582%_)
            (let ((_%f92588%_ _%f92582%_))
              (__ormap2 _%f92588%_ _%lst192583%_ _%lst292584%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.15-413.16"
               'contract:
               'procedure?
               'value:
               _%f92582%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f92494%_ _%lst192495%_ _%lst292496%_)
        (let ((_%f92499%_ _%f92494%_))
          (let _%lp92508%_ ((_%rest192510%_ _%lst192495%_)
                            (_%rest292511%_ _%lst292496%_))
            (let* ((_%rest19251292520%_ _%rest192510%_)
                   (_%else9251492528%_ (lambda () '#f))
                   (_%K9251692570%_
                    (lambda (_%rest192531%_ _%x192532%_)
                      (let* ((_%rest29253392541%_ _%rest292511%_)
                             (_%else9253592549%_ (lambda () '#f))
                             (_%K9253792558%_
                              (lambda (_%rest292552%_ _%x292553%_)
                                (let ((_%$e92555%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f92499%_
                                          _%x192532%_
                                          _%x292553%_))))
                                  (if _%$e92555%_
                                      _%$e92555%_
                                      (_%lp92508%_
                                       _%rest192531%_
                                       _%rest292552%_))))))
                        (if (pair? _%rest29253392541%_)
                            (let ((_%hd9253892561%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29253392541%_)))
                                  (_%tl9253992563%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29253392541%_))))
                              (let* ((_%x292566%_ _%hd9253892561%_)
                                     (_%rest292568%_ _%tl9253992563%_))
                                (_%K9253792558%_ _%rest292568%_ _%x292566%_)))
                            (_%else9253592549%_))))))
              (if (pair? _%rest19251292520%_)
                  (let ((_%hd9251792573%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19251292520%_)))
                        (_%tl9251892575%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19251292520%_))))
                    (let* ((_%x192578%_ _%hd9251792573%_)
                           (_%rest192580%_ _%tl9251892575%_))
                      (_%K9251692570%_ _%rest192580%_ _%x192578%_)))
                  (_%else9251492528%_)))))))
    (define ormap
      (lambda _g95660_
        (let ((_g95661_ (let () (declare (not safe)) (##length _g95660_))))
          (cond ((let () (declare (not safe)) (##fx= _g95661_ 2))
                 (apply ormap1 _g95660_))
                ((let () (declare (not safe)) (##fx= _g95661_ 3))
                 (apply ormap2 _g95660_))
                ((let () (declare (not safe)) (##fx>= _g95661_ 3))
                 (apply ormap* _g95660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g95660_))))))
    (define ormap*
      (lambda (_%f92467%_ . _%rest92468%_)
        (if (procedure? _%f92467%_)
            (let ((_%f92472%_ _%f92467%_))
              (declare (not safe))
              (##apply __ormap* _%f92472%_ _%rest92468%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@431.15-431.16"
               'contract:
               'procedure?
               'value:
               _%f92467%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f92447%_ . _%rest92448%_)
        (let ((_%f92451%_ _%f92447%_))
          (let _%recur92460%_ ((_%rest92462%_ _%rest92448%_))
            (if (__andmap1 pair? _%rest92462%_)
                (let ((_%$e92464%_
                       (let ((__tmp95662 (map car _%rest92462%_)))
                         (declare (not safe))
                         (##apply _%f92451%_ __tmp95662))))
                  (if _%$e92464%_
                      _%$e92464%_
                      (_%recur92460%_ (map cdr _%rest92462%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f92432%_ _%lst92433%_)
        (if (procedure? _%f92432%_)
            (let ((_%f92437%_ _%f92432%_))
              (__filter-map1 _%f92437%_ _%lst92433%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.20-438.21"
               'contract:
               'procedure?
               'value:
               _%f92432%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f92375%_ _%lst92376%_)
        (let ((_%f92379%_ _%f92375%_))
          (let _%recur92388%_ ((_%rest92390%_ _%lst92376%_))
            (let* ((_%rest9239292400%_ _%rest92390%_)
                   (_%else9239492408%_ (lambda () '()))
                   (_%K9239692420%_
                    (lambda (_%rest92411%_ _%x92412%_)
                      (let ((_%$e92414%_
                             (let ()
                               (declare (not safe))
                               (_%f92379%_ _%x92412%_))))
                        (if _%$e92414%_
                            ((lambda (_%r92417%_)
                               (cons _%r92417%_
                                     (_%recur92388%_ _%rest92411%_)))
                             _%$e92414%_)
                            (_%recur92388%_ _%rest92411%_))))))
              (if (pair? _%rest9239292400%_)
                  (let ((_%hd9239792423%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9239292400%_)))
                        (_%tl9239892425%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9239292400%_))))
                    (let* ((_%x92428%_ _%hd9239792423%_)
                           (_%rest92430%_ _%tl9239892425%_))
                      (_%K9239692420%_ _%rest92430%_ _%x92428%_)))
                  (_%else9239492408%_)))))))
    (define filter-map2
      (lambda (_%f92359%_ _%lst192360%_ _%lst292361%_)
        (if (procedure? _%f92359%_)
            (let ((_%f92365%_ _%f92359%_))
              (__filter-map2 _%f92365%_ _%lst192360%_ _%lst292361%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@449.20-449.21"
               'contract:
               'procedure?
               'value:
               _%f92359%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f92267%_ _%lst192268%_ _%lst292269%_)
        (let ((_%f92272%_ _%f92267%_))
          (let _%recur92281%_ ((_%rest192283%_ _%lst192268%_)
                               (_%rest292284%_ _%lst292269%_))
            (let* ((_%rest19228692294%_ _%rest192283%_)
                   (_%else9228892302%_ (lambda () '()))
                   (_%K9229092347%_
                    (lambda (_%rest192305%_ _%x192306%_)
                      (let* ((_%rest29230792315%_ _%rest292284%_)
                             (_%else9230992323%_ (lambda () '()))
                             (_%K9231192335%_
                              (lambda (_%rest292326%_ _%x292327%_)
                                (let ((_%$e92329%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f92272%_
                                          _%x192306%_
                                          _%x292327%_))))
                                  (if _%$e92329%_
                                      ((lambda (_%r92332%_)
                                         (cons _%r92332%_
                                               (_%recur92281%_
                                                _%rest192305%_
                                                _%rest292326%_)))
                                       _%$e92329%_)
                                      (_%recur92281%_
                                       _%rest192305%_
                                       _%rest292326%_))))))
                        (if (pair? _%rest29230792315%_)
                            (let ((_%hd9231292338%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29230792315%_)))
                                  (_%tl9231392340%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29230792315%_))))
                              (let* ((_%x292343%_ _%hd9231292338%_)
                                     (_%rest292345%_ _%tl9231392340%_))
                                (_%K9231192335%_ _%rest292345%_ _%x292343%_)))
                            (_%else9230992323%_))))))
              (if (pair? _%rest19228692294%_)
                  (let ((_%hd9229192350%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19228692294%_)))
                        (_%tl9229292352%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19228692294%_))))
                    (let* ((_%x192355%_ _%hd9229192350%_)
                           (_%rest192357%_ _%tl9229292352%_))
                      (_%K9229092347%_ _%rest192357%_ _%x192355%_)))
                  (_%else9228892302%_)))))))
    (define filter-map
      (lambda _g95663_
        (let ((_g95664_ (let () (declare (not safe)) (##length _g95663_))))
          (cond ((let () (declare (not safe)) (##fx= _g95664_ 2))
                 (apply filter-map1 _g95663_))
                ((let () (declare (not safe)) (##fx= _g95664_ 3))
                 (apply filter-map2 _g95663_))
                ((let () (declare (not safe)) (##fx>= _g95664_ 3))
                 (apply filter-map* _g95663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g95663_))))))
    (define filter-map*
      (lambda (_%f92240%_ . _%rest92241%_)
        (if (procedure? _%f92240%_)
            (let ((_%f92245%_ _%f92240%_))
              (declare (not safe))
              (##apply __filter-map* _%f92245%_ _%rest92241%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f92240%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f92216%_ . _%rest92217%_)
        (let ((_%f92220%_ _%f92216%_))
          (let _%recur92229%_ ((_%rest92231%_ _%rest92217%_))
            (if (__andmap1 pair? _%rest92231%_)
                (let ((_%$e92234%_
                       (let ((__tmp95665 (map car _%rest92231%_)))
                         (declare (not safe))
                         (##apply _%f92220%_ __tmp95665))))
                  (if _%$e92234%_
                      ((lambda (_%r92237%_)
                         (cons _%r92237%_
                               (_%recur92229%_ (map cdr _%rest92231%_))))
                       _%$e92234%_)
                      (_%recur92229%_ (map cdr _%rest92231%_))))
                '())))))
    (define agetq__%
      (lambda (_%key92192%_ _%lst92194%_ _%default92196%_)
        (let ((_%$e92199%_
               (if (pair? _%lst92194%_) (assq _%key92192%_ _%lst92194%_) '#f)))
          (if _%$e92199%_
              (cdr _%$e92199%_)
              (if (procedure? _%default92196%_)
                  (_%default92196%_ _%key92192%_)
                  _%default92196%_)))))
    (define agetq__0
      (lambda (_%key92207%_ _%lst92208%_)
        (let ((_%default92210%_ '#f))
          (agetq__% _%key92207%_ _%lst92208%_ _%default92210%_))))
    (define agetq
      (lambda _g95666_
        (let ((_g95667_ (let () (declare (not safe)) (##length _g95666_))))
          (cond ((let () (declare (not safe)) (##fx= _g95667_ 2))
                 (apply agetq__0 _g95666_))
                ((let () (declare (not safe)) (##fx= _g95667_ 3))
                 (apply agetq__% _g95666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g95666_))))))
    (define agetv__%
      (lambda (_%key92167%_ _%lst92169%_ _%default92171%_)
        (let ((_%$e92174%_
               (if (pair? _%lst92169%_) (assv _%key92167%_ _%lst92169%_) '#f)))
          (if _%$e92174%_
              (cdr _%$e92174%_)
              (if (procedure? _%default92171%_)
                  (_%default92171%_ _%key92167%_)
                  _%default92171%_)))))
    (define agetv__0
      (lambda (_%key92182%_ _%lst92183%_)
        (let ((_%default92185%_ '#f))
          (agetv__% _%key92182%_ _%lst92183%_ _%default92185%_))))
    (define agetv
      (lambda _g95668_
        (let ((_g95669_ (let () (declare (not safe)) (##length _g95668_))))
          (cond ((let () (declare (not safe)) (##fx= _g95669_ 2))
                 (apply agetv__0 _g95668_))
                ((let () (declare (not safe)) (##fx= _g95669_ 3))
                 (apply agetv__% _g95668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g95668_))))))
    (define aget__%
      (lambda (_%key92142%_ _%lst92144%_ _%default92146%_)
        (let ((_%$e92149%_
               (if (pair? _%lst92144%_)
                   (assoc _%key92142%_ _%lst92144%_)
                   '#f)))
          (if _%$e92149%_
              (cdr _%$e92149%_)
              (if (procedure? _%default92146%_)
                  (_%default92146%_ _%key92142%_)
                  _%default92146%_)))))
    (define aget__0
      (lambda (_%key92157%_ _%lst92158%_)
        (let ((_%default92160%_ '#f))
          (aget__% _%key92157%_ _%lst92158%_ _%default92160%_))))
    (define aget
      (lambda _g95670_
        (let ((_g95671_ (let () (declare (not safe)) (##length _g95670_))))
          (cond ((let () (declare (not safe)) (##fx= _g95671_ 2))
                 (apply aget__0 _g95670_))
                ((let () (declare (not safe)) (##fx= _g95671_ 3))
                 (apply aget__% _g95670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g95670_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key92071%_ _%lst92073%_ _%default92075%_)
        (let _%lp92078%_ ((_%rest92081%_ _%lst92073%_))
          (let* ((_%rest9208392093%_ _%rest92081%_)
                 (_%else9208592101%_
                  (lambda ()
                    (if (procedure? _%default92075%_)
                        (_%default92075%_ _%key92071%_)
                        _%default92075%_)))
                 (_%K9208792110%_
                  (lambda (_%rest92104%_ _%v92105%_ _%k92107%_)
                    (if (eq? _%k92107%_ _%key92071%_)
                        _%v92105%_
                        (_%lp92078%_ _%rest92104%_)))))
            (if (pair? _%rest9208392093%_)
                (let ((_%hd9208892113%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9208392093%_)))
                      (_%tl9208992115%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9208392093%_))))
                  (let ((_%k92118%_ _%hd9208892113%_))
                    (if (pair? _%tl9208992115%_)
                        (let ((_%hd9209092120%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9208992115%_)))
                              (_%tl9209192122%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9208992115%_))))
                          (let* ((_%v92125%_ _%hd9209092120%_)
                                 (_%rest92127%_ _%tl9209192122%_))
                            (_%K9208792110%_
                             _%rest92127%_
                             _%v92125%_
                             _%k92118%_)))
                        (_%else9208592101%_))))
                (_%else9208592101%_))))))
    (define pgetq__0
      (lambda (_%key92132%_ _%lst92133%_)
        (let ((_%default92135%_ '#f))
          (pgetq__% _%key92132%_ _%lst92133%_ _%default92135%_))))
    (define pgetq
      (lambda _g95672_
        (let ((_g95673_ (let () (declare (not safe)) (##length _g95672_))))
          (cond ((let () (declare (not safe)) (##fx= _g95673_ 2))
                 (apply pgetq__0 _g95672_))
                ((let () (declare (not safe)) (##fx= _g95673_ 3))
                 (apply pgetq__% _g95672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g95672_))))))
    (define pgetv__%
      (lambda (_%key92000%_ _%lst92002%_ _%default92004%_)
        (let _%lp92007%_ ((_%rest92010%_ _%lst92002%_))
          (let* ((_%rest9201292022%_ _%rest92010%_)
                 (_%else9201492030%_
                  (lambda ()
                    (if (procedure? _%default92004%_)
                        (_%default92004%_ _%key92000%_)
                        _%default92004%_)))
                 (_%K9201692039%_
                  (lambda (_%rest92033%_ _%v92034%_ _%k92036%_)
                    (if (eqv? _%k92036%_ _%key92000%_)
                        _%v92034%_
                        (_%lp92007%_ _%rest92033%_)))))
            (if (pair? _%rest9201292022%_)
                (let ((_%hd9201792042%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9201292022%_)))
                      (_%tl9201892044%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9201292022%_))))
                  (let ((_%k92047%_ _%hd9201792042%_))
                    (if (pair? _%tl9201892044%_)
                        (let ((_%hd9201992049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9201892044%_)))
                              (_%tl9202092051%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9201892044%_))))
                          (let* ((_%v92054%_ _%hd9201992049%_)
                                 (_%rest92056%_ _%tl9202092051%_))
                            (_%K9201692039%_
                             _%rest92056%_
                             _%v92054%_
                             _%k92047%_)))
                        (_%else9201492030%_))))
                (_%else9201492030%_))))))
    (define pgetv__0
      (lambda (_%key92061%_ _%lst92062%_)
        (let ((_%default92064%_ '#f))
          (pgetv__% _%key92061%_ _%lst92062%_ _%default92064%_))))
    (define pgetv
      (lambda _g95674_
        (let ((_g95675_ (let () (declare (not safe)) (##length _g95674_))))
          (cond ((let () (declare (not safe)) (##fx= _g95675_ 2))
                 (apply pgetv__0 _g95674_))
                ((let () (declare (not safe)) (##fx= _g95675_ 3))
                 (apply pgetv__% _g95674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g95674_))))))
    (define pget__%
      (lambda (_%key91929%_ _%lst91931%_ _%default91933%_)
        (let _%lp91936%_ ((_%rest91939%_ _%lst91931%_))
          (let* ((_%rest9194191951%_ _%rest91939%_)
                 (_%else9194391959%_
                  (lambda ()
                    (if (procedure? _%default91933%_)
                        (_%default91933%_ _%key91929%_)
                        _%default91933%_)))
                 (_%K9194591968%_
                  (lambda (_%rest91962%_ _%v91963%_ _%k91965%_)
                    (if (equal? _%k91965%_ _%key91929%_)
                        _%v91963%_
                        (_%lp91936%_ _%rest91962%_)))))
            (if (pair? _%rest9194191951%_)
                (let ((_%hd9194691971%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9194191951%_)))
                      (_%tl9194791973%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9194191951%_))))
                  (let ((_%k91976%_ _%hd9194691971%_))
                    (if (pair? _%tl9194791973%_)
                        (let ((_%hd9194891978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9194791973%_)))
                              (_%tl9194991980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9194791973%_))))
                          (let* ((_%v91983%_ _%hd9194891978%_)
                                 (_%rest91985%_ _%tl9194991980%_))
                            (_%K9194591968%_
                             _%rest91985%_
                             _%v91983%_
                             _%k91976%_)))
                        (_%else9194391959%_))))
                (_%else9194391959%_))))))
    (define pget__0
      (lambda (_%key91990%_ _%lst91991%_)
        (let ((_%default91993%_ '#f))
          (pget__% _%key91990%_ _%lst91991%_ _%default91993%_))))
    (define pget
      (lambda _g95676_
        (let ((_g95677_ (let () (declare (not safe)) (##length _g95676_))))
          (cond ((let () (declare (not safe)) (##fx= _g95677_ 2))
                 (apply pget__0 _g95676_))
                ((let () (declare (not safe)) (##fx= _g95677_ 3))
                 (apply pget__% _g95676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g95676_))))))
    (define find
      (lambda (_%pred91913%_ _%lst91914%_)
        (if (procedure? _%pred91913%_)
            (let ((_%pred91918%_ _%pred91913%_))
              (__find _%pred91918%_ _%lst91914%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.13-517.17"
               'contract:
               'procedure?
               'value:
               _%pred91913%_)
              '#!void))))
    (define __find
      (lambda (_%pred91896%_ _%lst91897%_)
        (let* ((_%pred91900%_ _%pred91896%_)
               (_%$e91909%_ (__memf _%pred91900%_ _%lst91897%_)))
          (if _%$e91909%_
              (let () (declare (not safe)) (##car _%$e91909%_))
              '#f))))
    (define memf
      (lambda (_%proc91881%_ _%lst91882%_)
        (if (procedure? _%proc91881%_)
            (let ((_%proc91886%_ _%proc91881%_))
              (__memf _%proc91886%_ _%lst91882%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@522.13-522.17"
               'contract:
               'procedure?
               'value:
               _%proc91881%_)
              '#!void))))
    (define __memf
      (lambda (_%proc91831%_ _%lst91832%_)
        (let ((_%proc91835%_ _%proc91831%_))
          (let _%lp91844%_ ((_%rest91846%_ _%lst91832%_))
            (let* ((_%rest9184791855%_ _%rest91846%_)
                   (_%else9184991863%_ (lambda () '#f))
                   (_%K9185191869%_
                    (lambda (_%tl91866%_ _%hd91867%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc91835%_ _%hd91867%_))
                          _%rest91846%_
                          (_%lp91844%_ _%tl91866%_)))))
              (if (pair? _%rest9184791855%_)
                  (let ((_%hd9185291872%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9184791855%_)))
                        (_%tl9185391874%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9184791855%_))))
                    (let* ((_%hd91877%_ _%hd9185291872%_)
                           (_%tl91879%_ _%tl9185391874%_))
                      (_%K9185191869%_ _%tl91879%_ _%hd91877%_)))
                  (_%else9184991863%_)))))))
    (define remove1
      (lambda (_%el91784%_ _%lst91786%_)
        (let _%lp91789%_ ((_%rest91792%_ _%lst91786%_) (_%r91794%_ '()))
          (let* ((_%rest9179691804%_ _%rest91792%_)
                 (_%else9179891812%_ (lambda () _%lst91786%_))
                 (_%K9180091819%_
                  (lambda (_%rest91815%_ _%hd91816%_)
                    (if (equal? _%el91784%_ _%hd91816%_)
                        (__foldl1 cons _%rest91815%_ _%r91794%_)
                        (_%lp91789%_
                         _%rest91815%_
                         (cons _%hd91816%_ _%r91794%_))))))
            (if (pair? _%rest9179691804%_)
                (let ((_%hd9180191822%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9179691804%_)))
                      (_%tl9180291824%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9179691804%_))))
                  (let* ((_%hd91827%_ _%hd9180191822%_)
                         (_%rest91829%_ _%tl9180291824%_))
                    (_%K9180091819%_ _%rest91829%_ _%hd91827%_)))
                (_%else9179891812%_))))))
    (define remv1
      (lambda (_%el91737%_ _%lst91739%_)
        (let _%lp91742%_ ((_%rest91745%_ _%lst91739%_) (_%r91747%_ '()))
          (let* ((_%rest9174991757%_ _%rest91745%_)
                 (_%else9175191765%_ (lambda () _%lst91739%_))
                 (_%K9175391772%_
                  (lambda (_%rest91768%_ _%hd91769%_)
                    (if (eqv? _%el91737%_ _%hd91769%_)
                        (__foldl1 cons _%rest91768%_ _%r91747%_)
                        (_%lp91742%_
                         _%rest91768%_
                         (cons _%hd91769%_ _%r91747%_))))))
            (if (pair? _%rest9174991757%_)
                (let ((_%hd9175491775%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9174991757%_)))
                      (_%tl9175591777%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9174991757%_))))
                  (let* ((_%hd91780%_ _%hd9175491775%_)
                         (_%rest91782%_ _%tl9175591777%_))
                    (_%K9175391772%_ _%rest91782%_ _%hd91780%_)))
                (_%else9175191765%_))))))
    (define remq1
      (lambda (_%el91690%_ _%lst91692%_)
        (let _%lp91695%_ ((_%rest91698%_ _%lst91692%_) (_%r91700%_ '()))
          (let* ((_%rest9170291710%_ _%rest91698%_)
                 (_%else9170491718%_ (lambda () _%lst91692%_))
                 (_%K9170691725%_
                  (lambda (_%rest91721%_ _%hd91722%_)
                    (if (eq? _%el91690%_ _%hd91722%_)
                        (__foldl1 cons _%rest91721%_ _%r91700%_)
                        (_%lp91695%_
                         _%rest91721%_
                         (cons _%hd91722%_ _%r91700%_))))))
            (if (pair? _%rest9170291710%_)
                (let ((_%hd9170791728%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9170291710%_)))
                      (_%tl9170891730%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9170291710%_))))
                  (let* ((_%hd91733%_ _%hd9170791728%_)
                         (_%rest91735%_ _%tl9170891730%_))
                    (_%K9170691725%_ _%rest91735%_ _%hd91733%_)))
                (_%else9170491718%_))))))
    (define remf
      (lambda (_%proc91675%_ _%lst91676%_)
        (if (procedure? _%proc91675%_)
            (let ((_%proc91680%_ _%proc91675%_))
              (__remf _%proc91680%_ _%lst91676%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@544.13-544.17"
               'contract:
               'procedure?
               'value:
               _%proc91675%_)
              '#!void))))
    (define __remf
      (lambda (_%proc91624%_ _%lst91625%_)
        (let ((_%proc91628%_ _%proc91624%_))
          (let _%lp91637%_ ((_%rest91639%_ _%lst91625%_) (_%r91640%_ '()))
            (let* ((_%rest9164191649%_ _%rest91639%_)
                   (_%else9164391657%_ (lambda () _%lst91625%_))
                   (_%K9164591663%_
                    (lambda (_%rest91660%_ _%hd91661%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc91628%_ _%hd91661%_))
                          (__foldl1 cons _%rest91660%_ _%r91640%_)
                          (_%lp91637%_
                           _%rest91660%_
                           (cons _%hd91661%_ _%r91640%_))))))
              (if (pair? _%rest9164191649%_)
                  (let ((_%hd9164691666%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9164191649%_)))
                        (_%tl9164791668%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9164191649%_))))
                    (let* ((_%hd91671%_ _%hd9164691666%_)
                           (_%rest91673%_ _%tl9164791668%_))
                      (_%K9164591663%_ _%rest91673%_ _%hd91671%_)))
                  (_%else9164391657%_)))))))
    (define 1+
      (lambda (_%x91610%_)
        (if (number? _%x91610%_)
            (let ((_%x91614%_ _%x91610%_)) (__1+ _%x91614%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.11-553.12"
               'contract:
               'number?
               'value:
               _%x91610%_)
              '#!void))))
    (define __1+
      (lambda (_%x91598%_) (let ((_%x91601%_ _%x91598%_)) (+ _%x91601%_ '1))))
    (define 1-
      (lambda (_%x91584%_)
        (if (number? _%x91584%_)
            (let ((_%x91588%_ _%x91584%_)) (__1- _%x91588%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@561.11-561.12"
               'contract:
               'number?
               'value:
               _%x91584%_)
              '#!void))))
    (define __1-
      (lambda (_%x91572%_) (let ((_%x91575%_ _%x91572%_)) (- _%x91575%_ '1))))
    (define fx1+
      (lambda (_%x91558%_)
        (if (fixnum? _%x91558%_)
            (let ((_%x91562%_ _%x91558%_)) (__fx1+ _%x91562%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.13-569.14"
               'contract:
               'fixnum?
               'value:
               _%x91558%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x91546%_)
        (let ((_%x91549%_ _%x91546%_))
          (declare (not safe))
          (##fx+ _%x91549%_ '1))))
    (define fx1-
      (lambda (_%x91532%_)
        (if (fixnum? _%x91532%_)
            (let ((_%x91536%_ _%x91532%_)) (__fx1- _%x91536%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.14"
               'contract:
               'fixnum?
               'value:
               _%x91532%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x91520%_)
        (let ((_%x91523%_ _%x91520%_))
          (declare (not safe))
          (##fx- _%x91523%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x91517%_)
        (if (fixnum? _%x91517%_)
            (let () (declare (not safe)) (##fx>= _%x91517%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x91514%_)
        (if (fixnum? _%x91514%_)
            (let () (declare (not safe)) (##fx> _%x91514%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x91511%_)
        (let () (declare (not safe)) (##fx= _%x91511%_ '0))))
    (define fx<0?
      (lambda (_%x91508%_)
        (if (fixnum? _%x91508%_)
            (let () (declare (not safe)) (##fx< _%x91508%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x91505%_)
        (if (fixnum? _%x91505%_)
            (let () (declare (not safe)) (##fx<= _%x91505%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x91502%_)
        (if (symbol? _%x91502%_) (not (uninterned-symbol? _%x91502%_)) '#f)))
    (define display-as-string
      (lambda (_%x91487%_ _%port91488%_)
        (if (output-port? _%port91488%_)
            (let ((_%port91492%_ _%port91488%_))
              (__display-as-string _%x91487%_ _%port91492%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@605.28-605.32"
               'contract:
               'output-port?
               'value:
               _%port91488%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x91444%_ _%port91445%_)
        (let ((_%port91448%_ _%port91445%_))
          (if (or (string? _%x91444%_)
                  (symbol? _%x91444%_)
                  (keyword? _%x91444%_)
                  (number? _%x91444%_)
                  (char? _%x91444%_))
              (display _%x91444%_ _%port91448%_)
              (if (pair? _%x91444%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x91444%_))
                     _%port91448%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x91444%_))
                     _%port91448%_))
                  (if (vector? _%x91444%_)
                      (vector-for-each
                       (lambda (_%g9147191473%_)
                         (__display-as-string _%g9147191473%_ _%port91448%_))
                       _%x91444%_)
                      (if (or (null? _%x91444%_)
                              (eq? _%x91444%_ '#!void)
                              (eof-object? _%x91444%_)
                              (boolean? _%x91444%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x91444%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x91427%_)
        (if (string? _%x91427%_)
            _%x91427%_
            (if (symbol? _%x91427%_)
                (let () (declare (not safe)) (##symbol->string _%x91427%_))
                (if (keyword? _%x91427%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x91427%_))
                    (if (number? _%x91427%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x91427%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g9143391435%_)
                           (__display-as-string
                            _%x91427%_
                            _%g9143391435%_)))))))))
    (define as-string__1
      (lambda _%args91438%_
        (call-with-output-string
         '()
         (lambda (_%g9143991441%_)
           (__display-as-string _%args91438%_ _%g9143991441%_)))))
    (define as-string
      (lambda _g95678_
        (let ((_g95679_ (let () (declare (not safe)) (##length _g95678_))))
          (cond ((let () (declare (not safe)) (##fx= _g95679_ 1))
                 (apply as-string__0 _g95678_))
                (#t
                 (apply (lambda _%args91438%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args91438%_)))
                        _g95678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g95678_))))))
    (define make-symbol__0
      (lambda (_%x91423%_)
        (if (interned-symbol? _%x91423%_)
            _%x91423%_
            (let ((__tmp95680 (as-string__0 _%x91423%_)))
              (declare (not safe))
              (##string->symbol __tmp95680)))))
    (define make-symbol__1
      (lambda _%args91425%_
        (let ((__tmp95681
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args91425%_))))
          (declare (not safe))
          (##string->symbol __tmp95681))))
    (define make-symbol
      (lambda _g95682_
        (let ((_g95683_ (let () (declare (not safe)) (##length _g95682_))))
          (cond ((let () (declare (not safe)) (##fx= _g95683_ 1))
                 (apply make-symbol__0 _g95682_))
                (#t
                 (apply (lambda _%args91425%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args91425%_)))
                        _g95682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g95682_))))))
    (define make-keyword__0
      (lambda (_%x91419%_)
        (if (interned-keyword? _%x91419%_)
            _%x91419%_
            (let ((__tmp95684 (as-string__0 _%x91419%_)))
              (declare (not safe))
              (##string->keyword __tmp95684)))))
    (define make-keyword__1
      (lambda _%args91421%_
        (let ((__tmp95685
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args91421%_))))
          (declare (not safe))
          (##string->keyword __tmp95685))))
    (define make-keyword
      (lambda _g95686_
        (let ((_g95687_ (let () (declare (not safe)) (##length _g95686_))))
          (cond ((let () (declare (not safe)) (##fx= _g95687_ 1))
                 (apply make-keyword__0 _g95686_))
                (#t
                 (apply (lambda _%args91421%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args91421%_)))
                        _g95686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g95686_))))))
    (define interned-keyword?
      (lambda (_%x91416%_)
        (if (keyword? _%x91416%_) (not (uninterned-keyword? _%x91416%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym91402%_)
        (if (symbol? _%sym91402%_)
            (let ((_%sym91406%_ _%sym91402%_))
              (__symbol->keyword _%sym91406%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@648.24-648.27"
               'contract:
               'symbol?
               'value:
               _%sym91402%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym91390%_)
        (let ((_%sym91393%_ _%sym91390%_))
          (if (uninterned-symbol? _%sym91393%_)
              (let ((__tmp95688
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym91393%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp95688))
              (let ((__tmp95689
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym91393%_))))
                (declare (not safe))
                (##string->keyword __tmp95689))))))
    (define keyword->symbol
      (lambda (_%sym91376%_)
        (if (keyword? _%sym91376%_)
            (let ((_%sym91380%_ _%sym91376%_))
              (__keyword->symbol _%sym91380%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.24-654.27"
               'contract:
               'keyword?
               'value:
               _%sym91376%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym91364%_)
        (let ((_%sym91367%_ _%sym91364%_))
          (if (uninterned-keyword? _%sym91367%_)
              (let ((__tmp95690
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym91367%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp95690))
              (let ((__tmp95691
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym91367%_))))
                (declare (not safe))
                (##string->symbol __tmp95691))))))
    (define bytes->string__%
      (lambda (_%bstr91329%_ _%enc91330%_)
        (if (u8vector? _%bstr91329%_)
            (let ((_%bstr91334%_ _%bstr91329%_))
              (if (symbol? _%enc91330%_)
                  (let ((_%enc91344%_ _%enc91330%_))
                    (__bytes->string__% _%bstr91334%_ _%enc91344%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@661.25-661.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc91330%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.22-660.26"
               'contract:
               'u8vector?
               'value:
               _%bstr91329%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr91357%_)
        (let ((_%enc91359%_ 'UTF-8))
          (bytes->string__% _%bstr91357%_ _%enc91359%_))))
    (define bytes->string
      (lambda _g95692_
        (let ((_g95693_ (let () (declare (not safe)) (##length _g95692_))))
          (cond ((let () (declare (not safe)) (##fx= _g95693_ 1))
                 (apply bytes->string__0 _g95692_))
                ((let () (declare (not safe)) (##fx= _g95693_ 2))
                 (apply bytes->string__% _g95692_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g95692_))))))
    (define __bytes->string__%
      (lambda (_%bstr91288%_ _%enc91289%_)
        (let* ((_%bstr91292%_ _%bstr91288%_) (_%enc91300%_ _%enc91289%_))
          (if (eq? _%enc91300%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr91292%_))
              (let* ((_%in91309%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc91300%_
                                   (cons 'init: (cons _%bstr91292%_ '()))))))
                     (_%len91311%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr91292%_)))
                     (_%out91313%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len91311%_)))
                     (_%n91315%_
                      (read-substring
                       _%out91313%_
                       '0
                       _%len91311%_
                       _%in91309%_)))
                (string-shrink! _%out91313%_ _%n91315%_)
                _%out91313%_)))))
    (define __bytes->string__0
      (lambda (_%bstr91321%_)
        (let ((_%enc91323%_ 'UTF-8))
          (__bytes->string__% _%bstr91321%_ _%enc91323%_))))
    (define __bytes->string
      (lambda _g95694_
        (let ((_g95695_ (let () (declare (not safe)) (##length _g95694_))))
          (cond ((let () (declare (not safe)) (##fx= _g95695_ 1))
                 (apply __bytes->string__0 _g95694_))
                ((let () (declare (not safe)) (##fx= _g95695_ 2))
                 (apply __bytes->string__% _g95694_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g95694_))))))
    (define string->bytes__%
      (lambda (_%str91252%_ _%enc91253%_)
        (if (string? _%str91252%_)
            (let ((_%str91257%_ _%str91252%_))
              (if (symbol? _%enc91253%_)
                  (let ((_%enc91267%_ _%enc91253%_))
                    (__string->bytes__% _%str91257%_ _%enc91267%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc91253%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.25"
               'contract:
               'string?
               'value:
               _%str91252%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str91280%_)
        (let ((_%enc91282%_ 'UTF-8))
          (string->bytes__% _%str91280%_ _%enc91282%_))))
    (define string->bytes
      (lambda _g95696_
        (let ((_g95697_ (let () (declare (not safe)) (##length _g95696_))))
          (cond ((let () (declare (not safe)) (##fx= _g95697_ 1))
                 (apply string->bytes__0 _g95696_))
                ((let () (declare (not safe)) (##fx= _g95697_ 2))
                 (apply string->bytes__% _g95696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g95696_))))))
    (define __string->bytes__%
      (lambda (_%str91220%_ _%enc91221%_)
        (let* ((_%str91224%_ _%str91220%_) (_%enc91232%_ _%enc91221%_))
          (if (eq? _%enc91232%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str91224%_))
              (__substring->bytes__%
               _%str91224%_
               '0
               (let () (declare (not safe)) (##string-length _%str91224%_))
               _%enc91232%_)))))
    (define __string->bytes__0
      (lambda (_%str91244%_)
        (let ((_%enc91246%_ 'UTF-8))
          (__string->bytes__% _%str91244%_ _%enc91246%_))))
    (define __string->bytes
      (lambda _g95698_
        (let ((_g95699_ (let () (declare (not safe)) (##length _g95698_))))
          (cond ((let () (declare (not safe)) (##fx= _g95699_ 1))
                 (apply __string->bytes__0 _g95698_))
                ((let () (declare (not safe)) (##fx= _g95699_ 2))
                 (apply __string->bytes__% _g95698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g95698_))))))
    (define substring->bytes__%
      (lambda (_%str91168%_ _%start91169%_ _%end91170%_ _%enc91171%_)
        (if (string? _%str91168%_)
            (let ((_%str91175%_ _%str91168%_))
              (if (nonnegative-fixnum? _%start91169%_)
                  (let ((_%start91185%_ _%start91169%_))
                    (if (nonnegative-fixnum? _%end91170%_)
                        (let ((_%end91195%_ _%end91170%_))
                          (__substring->bytes__%
                           _%str91175%_
                           _%start91185%_
                           _%end91195%_
                           _%enc91171%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@681.25-681.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end91170%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@680.25-680.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start91169%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@679.25-679.28"
               'contract:
               'string?
               'value:
               _%str91168%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str91208%_ _%start91209%_ _%end91210%_)
        (let ((_%enc91212%_ 'UTF-8))
          (substring->bytes__%
           _%str91208%_
           _%start91209%_
           _%end91210%_
           _%enc91212%_))))
    (define substring->bytes
      (lambda _g95700_
        (let ((_g95701_ (let () (declare (not safe)) (##length _g95700_))))
          (cond ((let () (declare (not safe)) (##fx= _g95701_ 3))
                 (apply substring->bytes__0 _g95700_))
                ((let () (declare (not safe)) (##fx= _g95701_ 4))
                 (apply substring->bytes__% _g95700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g95700_))))))
    (define __substring->bytes__%
      (lambda (_%str91120%_ _%start91121%_ _%end91122%_ _%enc91123%_)
        (let* ((_%str91126%_ _%str91120%_)
               (_%start91134%_ _%start91121%_)
               (_%end91142%_ _%end91122%_))
          (if (eq? _%enc91123%_ 'UTF-8)
              (string->utf8 _%str91126%_ _%start91134%_ _%end91142%_)
              (let ((_%out91151%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc91123%_ '())))))
                (write-substring
                 _%str91126%_
                 _%start91134%_
                 _%end91142%_
                 _%out91151%_)
                (get-output-u8vector _%out91151%_))))))
    (define __substring->bytes__0
      (lambda (_%str91156%_ _%start91157%_ _%end91158%_)
        (let ((_%enc91160%_ 'UTF-8))
          (__substring->bytes__%
           _%str91156%_
           _%start91157%_
           _%end91158%_
           _%enc91160%_))))
    (define __substring->bytes
      (lambda _g95702_
        (let ((_g95703_ (let () (declare (not safe)) (##length _g95702_))))
          (cond ((let () (declare (not safe)) (##fx= _g95703_ 3))
                 (apply __substring->bytes__0 _g95702_))
                ((let () (declare (not safe)) (##fx= _g95703_ 4))
                 (apply __substring->bytes__% _g95702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g95702_))))))
    (define string-empty?
      (lambda (_%str91105%_)
        (if (string? _%str91105%_)
            (let ((_%str91109%_ _%str91105%_)) (__string-empty? _%str91109%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@690.22-690.25"
               'contract:
               'string?
               'value:
               _%str91105%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str91093%_)
        (let* ((_%str91096%_ _%str91093%_)
               (__tmp95704
                (let () (declare (not safe)) (##string-length _%str91096%_))))
          (declare (not safe))
          (##fxzero? __tmp95704))))
    (define string-index__%
      (lambda (_%str91045%_ _%char91046%_ _%start91047%_)
        (if (string? _%str91045%_)
            (let ((_%str91051%_ _%str91045%_))
              (if (char? _%char91046%_)
                  (let ((_%char91061%_ _%char91046%_))
                    (if (nonnegative-fixnum? _%start91047%_)
                        (let ((_%start91071%_ _%start91047%_))
                          (__string-index__%
                           _%str91051%_
                           _%char91061%_
                           _%start91071%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@696.21-696.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start91047%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.21-695.25"
                     'contract:
                     'char?
                     'value:
                     _%char91046%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.21-694.24"
               'contract:
               'string?
               'value:
               _%str91045%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str91084%_ _%char91085%_)
        (let ((_%start91087%_ '0))
          (string-index__% _%str91084%_ _%char91085%_ _%start91087%_))))
    (define string-index
      (lambda _g95705_
        (let ((_g95706_ (let () (declare (not safe)) (##length _g95705_))))
          (cond ((let () (declare (not safe)) (##fx= _g95706_ 2))
                 (apply string-index__0 _g95705_))
                ((let () (declare (not safe)) (##fx= _g95706_ 3))
                 (apply string-index__% _g95705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g95705_))))))
    (define __string-index__%
      (lambda (_%str90984%_ _%char90985%_ _%start90986%_)
        (let* ((_%str90989%_ _%str90984%_)
               (_%char90997%_ _%char90985%_)
               (_%start91005%_ _%start90986%_)
               (_%len91014%_
                (let () (declare (not safe)) (##string-length _%str90989%_))))
          (let _%lp91016%_ ((_%k91018%_ _%start91005%_))
            (let ((_%k91020%_ _%k91018%_))
              (if (let () (declare (not safe)) (##fx< _%k91020%_ _%len91014%_))
                  (if (eq? _%char90997%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str90989%_ _%k91020%_)))
                      _%k91020%_
                      (_%lp91016%_
                       (let () (declare (not safe)) (##fx+ _%k91020%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str91035%_ _%char91036%_)
        (let ((_%start91038%_ '0))
          (__string-index__% _%str91035%_ _%char91036%_ _%start91038%_))))
    (define __string-index
      (lambda _g95707_
        (let ((_g95708_ (let () (declare (not safe)) (##length _g95707_))))
          (cond ((let () (declare (not safe)) (##fx= _g95708_ 2))
                 (apply __string-index__0 _g95707_))
                ((let () (declare (not safe)) (##fx= _g95708_ 3))
                 (apply __string-index__% _g95707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g95707_))))))
    (define string-rindex__%
      (lambda (_%str90945%_ _%char90946%_ _%start90947%_)
        (if (string? _%str90945%_)
            (let ((_%str90951%_ _%str90945%_))
              (if (char? _%char90946%_)
                  (let ((_%char90961%_ _%char90946%_))
                    (__string-rindex__%
                     _%str90951%_
                     _%char90961%_
                     _%start90947%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@706.25-706.29"
                     'contract:
                     'char?
                     'value:
                     _%char90946%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@705.22-705.25"
               'contract:
               'string?
               'value:
               _%str90945%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str90974%_ _%char90975%_)
        (let ((_%start90977%_ '#f))
          (string-rindex__% _%str90974%_ _%char90975%_ _%start90977%_))))
    (define string-rindex
      (lambda _g95709_
        (let ((_g95710_ (let () (declare (not safe)) (##length _g95709_))))
          (cond ((let () (declare (not safe)) (##fx= _g95710_ 2))
                 (apply string-rindex__0 _g95709_))
                ((let () (declare (not safe)) (##fx= _g95710_ 3))
                 (apply string-rindex__% _g95709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g95709_))))))
    (define __string-rindex__%
      (lambda (_%str90887%_ _%char90888%_ _%start90889%_)
        (let* ((_%str90892%_ _%str90887%_)
               (_%char90900%_ _%char90888%_)
               (_%len90909%_
                (let () (declare (not safe)) (##string-length _%str90892%_)))
               (_%start90911%_
                (if (fixnum? _%start90889%_)
                    _%start90889%_
                    (let () (declare (not safe)) (##fx- _%len90909%_ '1)))))
          (let _%lp90914%_ ((_%k90916%_ _%start90911%_))
            (let ((_%k90918%_ _%k90916%_))
              (if (let () (declare (not safe)) (##fx>= _%k90918%_ '0))
                  (if (eq? _%char90900%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str90892%_ _%k90918%_)))
                      _%k90918%_
                      (_%lp90914%_
                       (let () (declare (not safe)) (##fx- _%k90918%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str90935%_ _%char90936%_)
        (let ((_%start90938%_ '#f))
          (__string-rindex__% _%str90935%_ _%char90936%_ _%start90938%_))))
    (define __string-rindex
      (lambda _g95711_
        (let ((_g95712_ (let () (declare (not safe)) (##length _g95711_))))
          (cond ((let () (declare (not safe)) (##fx= _g95712_ 2))
                 (apply __string-rindex__0 _g95711_))
                ((let () (declare (not safe)) (##fx= _g95712_ 3))
                 (apply __string-rindex__% _g95711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g95711_))))))
    (define string-split
      (lambda (_%str90861%_ _%char90862%_)
        (if (string? _%str90861%_)
            (let ((_%str90866%_ _%str90861%_))
              (if (char? _%char90862%_)
                  (let ((_%char90876%_ _%char90862%_))
                    (__string-split _%str90866%_ _%char90876%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@717.37-717.41"
                     'contract:
                     'char?
                     'value:
                     _%char90862%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.21-717.24"
               'contract:
               'string?
               'value:
               _%str90861%_)
              '#!void))))
    (define __string-split
      (lambda (_%str90802%_ _%char90803%_)
        (let* ((_%str90806%_ _%str90802%_)
               (_%char90814%_ _%char90803%_)
               (_%len90823%_
                (let () (declare (not safe)) (##string-length _%str90806%_))))
          (let _%lp90825%_ ((_%start90827%_ '0) (_%r90828%_ '()))
            (let* ((_%start90831%_ _%start90827%_)
                   (_%$e90844%_
                    (__string-index__%
                     _%str90806%_
                     _%char90814%_
                     _%start90831%_)))
              (if _%$e90844%_
                  ((lambda (_%end90847%_)
                     (let ((_%end90849%_ _%end90847%_))
                       (_%lp90825%_
                        (let () (declare (not safe)) (##fx+ _%end90849%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str90806%_
                                 _%start90831%_
                                 _%end90849%_))
                              _%r90828%_))))
                   _%$e90844%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start90831%_ _%len90823%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str90806%_
                                _%start90831%_
                                _%len90823%_)))
                       _%r90828%_)
                      (reverse! _%r90828%_))))))))
    (define string-join
      (lambda (_%strs90652%_ _%join90653%_)
        (letrec ((_%join-length90656%_
                  (lambda (_%strs90740%_ _%jlen90741%_)
                    (let _%lp90743%_ ((_%rest90745%_ _%strs90740%_)
                                      (_%len90746%_ '0))
                      (let* ((_%len90748%_ _%len90746%_)
                             (_%rest9075690764%_ _%rest90745%_)
                             (_%else9075890772%_ (lambda () '0))
                             (_%K9076090790%_
                              (lambda (_%rest90775%_ _%hd90776%_)
                                (if (string? _%hd90776%_)
                                    (let ((_%hd90778%_ _%hd90776%_))
                                      (if (pair? _%rest90775%_)
                                          (_%lp90743%_
                                           _%rest90775%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd90778%_))
                                                _%jlen90741%_
                                                _%len90748%_))
                                          (let ((__tmp95713
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd90778%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp95713 _%len90748%_))))
                                    (error '"expected string" _%hd90776%_)))))
                        (if (pair? _%rest9075690764%_)
                            (let ((_%hd9076190793%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest9075690764%_)))
                                  (_%tl9076290795%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest9075690764%_))))
                              (let* ((_%hd90798%_ _%hd9076190793%_)
                                     (_%rest90800%_ _%tl9076290795%_))
                                (_%K9076090790%_ _%rest90800%_ _%hd90798%_)))
                            (_%else9075890772%_)))))))
          (let* ((_%join90661%_
                  (if (char? _%join90653%_)
                      (let () (declare (not safe)) (##string _%join90653%_))
                      (if (string? _%join90653%_)
                          _%join90653%_
                          (error '"expected string or char" _%join90653%_))))
                 (_%jlen90663%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join90661%_)))
                 (_%olen90665%_
                  (_%join-length90656%_ _%strs90652%_ _%jlen90663%_))
                 (_%ostr90667%_
                  (let () (declare (not safe)) (##make-string _%olen90665%_))))
            (let _%lp90670%_ ((_%rest90672%_ _%strs90652%_) (_%k90673%_ '0))
              (let* ((_%k90676%_ _%k90673%_)
                     (_%rest9069290700%_ _%rest90672%_)
                     (_%else9069490708%_ (lambda () '""))
                     (_%K9069690728%_
                      (lambda (_%rest90711%_ _%hd90712%_)
                        (let* ((_%hd90714%_ _%hd90712%_)
                               (_%hdlen90726%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd90714%_))))
                          (if (pair? _%rest90711%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd90714%_
                                   '0
                                   _%hdlen90726%_
                                   _%ostr90667%_
                                   _%k90676%_))
                                (let ((__tmp95714
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k90676%_ _%hdlen90726%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join90661%_
                                   '0
                                   _%jlen90663%_
                                   _%ostr90667%_
                                   __tmp95714))
                                (_%lp90670%_
                                 _%rest90711%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k90676%_
                                          _%hdlen90726%_
                                          _%jlen90663%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd90714%_
                                   '0
                                   _%hdlen90726%_
                                   _%ostr90667%_
                                   _%k90676%_))
                                _%ostr90667%_))))))
                (if (pair? _%rest9069290700%_)
                    (let ((_%hd9069790731%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest9069290700%_)))
                          (_%tl9069890733%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest9069290700%_))))
                      (let* ((_%hd90736%_ _%hd9069790731%_)
                             (_%rest90738%_ _%tl9069890733%_))
                        (_%K9069690728%_ _%rest90738%_ _%hd90736%_)))
                    (_%else9069490708%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes90578%_ _%port90579%_ _%start90580%_ _%end90581%_)
        (if (u8vector? _%bytes90578%_)
            (let ((_%bytes90585%_ _%bytes90578%_))
              (if (input-port? _%port90579%_)
                  (let ((_%port90595%_ _%port90579%_))
                    (if ((lambda (_%o90604%_)
                           (and (fixnum? _%o90604%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o90604%_ '0))
                                (let ((__tmp95715
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes90585%_))))
                                  (declare (not safe))
                                  (##fx< _%o90604%_ __tmp95715))))
                         _%start90580%_)
                        (let ((_%start90608%_ _%start90580%_))
                          (if ((lambda (_%o90617%_)
                                 (and (fixnum? _%o90617%_)
                                      (let ((__tmp95716
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes90585%_))))
                                        (declare (not safe))
                                        (##fx<= _%start90608%_
                                                _%o90617%_
                                                __tmp95716))))
                               _%end90581%_)
                              (let ((_%end90621%_ _%end90581%_))
                                (__read-u8vector__%
                                 _%bytes90585%_
                                 _%port90595%_
                                 _%start90608%_
                                 _%end90621%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@784.22-784.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end90581%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@782.22-782.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start90580%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@781.22-781.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port90579%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@780.22-780.27"
               'contract:
               'u8vector?
               'value:
               _%bytes90578%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes90634%_ _%port90635%_)
        (let* ((_%start90637%_ '0)
               (_%end90639%_ (u8vector-length _%bytes90634%_)))
          (read-u8vector__%
           _%bytes90634%_
           _%port90635%_
           _%start90637%_
           _%end90639%_))))
    (define read-u8vector__1
      (lambda (_%bytes90641%_ _%port90642%_ _%start90643%_)
        (let ((_%end90645%_ (u8vector-length _%bytes90641%_)))
          (read-u8vector__%
           _%bytes90641%_
           _%port90642%_
           _%start90643%_
           _%end90645%_))))
    (define read-u8vector
      (lambda _g95717_
        (let ((_g95718_ (let () (declare (not safe)) (##length _g95717_))))
          (cond ((let () (declare (not safe)) (##fx= _g95718_ 2))
                 (apply read-u8vector__0 _g95717_))
                ((let () (declare (not safe)) (##fx= _g95718_ 3))
                 (apply read-u8vector__1 _g95717_))
                ((let () (declare (not safe)) (##fx= _g95718_ 4))
                 (apply read-u8vector__% _g95717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g95717_))))))
    (define __read-u8vector__%
      (lambda (_%bytes90517%_ _%port90518%_ _%start90519%_ _%end90520%_)
        (let* ((_%bytes90523%_ _%bytes90517%_)
               (_%port90531%_ _%port90518%_)
               (_%start90539%_ _%start90519%_)
               (_%end90547%_ _%end90520%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes90523%_
           _%start90539%_
           _%end90547%_
           _%port90531%_))))
    (define __read-u8vector__0
      (lambda (_%bytes90559%_ _%port90560%_)
        (let* ((_%start90562%_ '0)
               (_%end90564%_ (u8vector-length _%bytes90559%_)))
          (__read-u8vector__%
           _%bytes90559%_
           _%port90560%_
           _%start90562%_
           _%end90564%_))))
    (define __read-u8vector__1
      (lambda (_%bytes90566%_ _%port90567%_ _%start90568%_)
        (let ((_%end90570%_ (u8vector-length _%bytes90566%_)))
          (__read-u8vector__%
           _%bytes90566%_
           _%port90567%_
           _%start90568%_
           _%end90570%_))))
    (define __read-u8vector
      (lambda _g95719_
        (let ((_g95720_ (let () (declare (not safe)) (##length _g95719_))))
          (cond ((let () (declare (not safe)) (##fx= _g95720_ 2))
                 (apply __read-u8vector__0 _g95719_))
                ((let () (declare (not safe)) (##fx= _g95720_ 3))
                 (apply __read-u8vector__1 _g95719_))
                ((let () (declare (not safe)) (##fx= _g95720_ 4))
                 (apply __read-u8vector__% _g95719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g95719_))))))
    (define write-u8vector__%
      (lambda (_%bytes90447%_ _%port90448%_ _%start90449%_ _%end90450%_)
        (if (u8vector? _%bytes90447%_)
            (let ((_%bytes90454%_ _%bytes90447%_))
              (if (output-port? _%port90448%_)
                  (let* ((_%port90464%_ _%port90448%_)
                         (_%start90473%_ _%start90449%_))
                    (if ((lambda (_%o90481%_)
                           (and (fixnum? _%o90481%_)
                                (let ((__tmp95721
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes90454%_))))
                                  (declare (not safe))
                                  (##fx<= _%start90473%_
                                          _%o90481%_
                                          __tmp95721))))
                         _%end90450%_)
                        (let ((_%end90485%_ _%end90450%_))
                          (__write-u8vector__%
                           _%bytes90454%_
                           _%port90464%_
                           _%start90473%_
                           _%end90485%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@793.23-793.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end90450%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@791.23-791.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port90448%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@790.23-790.28"
               'contract:
               'u8vector?
               'value:
               _%bytes90447%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes90498%_ _%port90499%_)
        (let* ((_%start90501%_ '0)
               (_%end90503%_ (u8vector-length _%bytes90498%_)))
          (write-u8vector__%
           _%bytes90498%_
           _%port90499%_
           _%start90501%_
           _%end90503%_))))
    (define write-u8vector__1
      (lambda (_%bytes90505%_ _%port90506%_ _%start90507%_)
        (let ((_%end90509%_ (u8vector-length _%bytes90505%_)))
          (write-u8vector__%
           _%bytes90505%_
           _%port90506%_
           _%start90507%_
           _%end90509%_))))
    (define write-u8vector
      (lambda _g95722_
        (let ((_g95723_ (let () (declare (not safe)) (##length _g95722_))))
          (cond ((let () (declare (not safe)) (##fx= _g95723_ 2))
                 (apply write-u8vector__0 _g95722_))
                ((let () (declare (not safe)) (##fx= _g95723_ 3))
                 (apply write-u8vector__1 _g95722_))
                ((let () (declare (not safe)) (##fx= _g95723_ 4))
                 (apply write-u8vector__% _g95722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g95722_))))))
    (define __write-u8vector__%
      (lambda (_%bytes90386%_ _%port90387%_ _%start90388%_ _%end90389%_)
        (let* ((_%bytes90392%_ _%bytes90386%_)
               (_%port90400%_ _%port90387%_)
               (_%start90408%_ _%start90388%_)
               (_%end90416%_ _%end90389%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes90392%_
           _%start90408%_
           _%end90416%_
           _%port90400%_))))
    (define __write-u8vector__0
      (lambda (_%bytes90428%_ _%port90429%_)
        (let* ((_%start90431%_ '0)
               (_%end90433%_ (u8vector-length _%bytes90428%_)))
          (__write-u8vector__%
           _%bytes90428%_
           _%port90429%_
           _%start90431%_
           _%end90433%_))))
    (define __write-u8vector__1
      (lambda (_%bytes90435%_ _%port90436%_ _%start90437%_)
        (let ((_%end90439%_ (u8vector-length _%bytes90435%_)))
          (__write-u8vector__%
           _%bytes90435%_
           _%port90436%_
           _%start90437%_
           _%end90439%_))))
    (define __write-u8vector
      (lambda _g95724_
        (let ((_g95725_ (let () (declare (not safe)) (##length _g95724_))))
          (cond ((let () (declare (not safe)) (##fx= _g95725_ 2))
                 (apply __write-u8vector__0 _g95724_))
                ((let () (declare (not safe)) (##fx= _g95725_ 3))
                 (apply __write-u8vector__1 _g95724_))
                ((let () (declare (not safe)) (##fx= _g95725_ 4))
                 (apply __write-u8vector__% _g95724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g95724_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag90354%_
               _%dbg-exprs90355%_
               _%dbg-thunks90356%_
               _%expr90357%_
               _%thunk90358%_)
        (letrec ((_%o90360%_ (current-output-port))
                 (_%e90361%_ (current-error-port))
                 (_%p90362%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f90363%_
                  (lambda ()
                    (force-output _%o90360%_)
                    (force-output _%e90361%_)))
                 (_%d90364%_
                  (lambda (_%x90371%_) (display _%x90371%_ _%e90361%_)))
                 (_%w90365%_
                  (lambda (_%x90373%_) (_%p90362%_ _%x90373%_ _%e90361%_)))
                 (_%n90366%_ (lambda () (newline _%e90361%_)))
                 (_%v90367%_
                  (lambda (_%l90376%_)
                    (for-each
                     (lambda (_%x90378%_)
                       (_%d90364%_ '" ")
                       (_%w90365%_ _%x90378%_))
                     _%l90376%_)
                    (_%n90366%_)))
                 (_%x90368%_
                  (lambda (_%expr90380%_ _%thunk90381%_)
                    (_%f90363%_)
                    (_%d90364%_ '"  ")
                    (_%w90365%_ _%expr90380%_)
                    (_%d90364%_ '" =>")
                    (call-with-values
                     _%thunk90381%_
                     (lambda _%x90383%_
                       (_%v90367%_ _%x90383%_)
                       (_%f90363%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x90383%_)))))))
          (if _%tag90354%_
              (begin
                (if (eq? _%tag90354%_ '#!void)
                    '#!void
                    (begin
                      (_%f90363%_)
                      (_%d90364%_ _%tag90354%_)
                      (_%n90366%_)))
                (for-each _%x90368%_ _%dbg-exprs90355%_ _%dbg-thunks90356%_)
                (if _%thunk90358%_
                    (_%x90368%_ _%expr90357%_ _%thunk90358%_)
                    '#!void))
              (if _%thunk90358%_ (_%thunk90358%_) '#!void)))))))
