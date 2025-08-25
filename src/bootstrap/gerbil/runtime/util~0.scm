(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1756142917)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args96233%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args96233%_))
          (newline))))
    (define display*
      (lambda _%args96230%_
        (let () (declare (not safe)) (##for-each display _%args96230%_))))
    (define file-newer?
      (lambda (_%file196205%_ _%file296206%_)
        (if (string? _%file196205%_)
            (let ((_%file196210%_ _%file196205%_))
              (if (string? _%file296206%_)
                  (let ((_%file296220%_ _%file296206%_))
                    (__file-newer? _%file196210%_ _%file296220%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@64.20-64.25"
                     'contract:
                     'string?
                     'value:
                     _%file296206%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@63.20-63.25"
               'contract:
               'string?
               'value:
               _%file196205%_)
              '#!void))))
    (define __file-newer?
      (lambda (_%file196153%_ _%file296154%_)
        (let* ((_%file196157%_ _%file196153%_) (_%file296165%_ _%file296154%_))
          (letrec ((_%modification-time96174%_
                    (lambda (_%file96193%_)
                      (let ((_%file96196%_ _%file96193%_))
                        (_%__modification-time96175%_ _%file96196%_))))
                   (_%__modification-time96175%_
                    (lambda (_%file96177%_)
                      (let* ((_%file96180%_ _%file96177%_)
                             (__tmp97963
                              (let ((__tmp97964
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file96180%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp97964))))
                        (declare (not safe))
                        (##time->seconds __tmp97963)))))
            (let ((__tmp97966 (_%__modification-time96175%_ _%file196157%_))
                  (__tmp97965 (_%__modification-time96175%_ _%file296165%_)))
              (declare (not safe))
              (##fl> __tmp97966 __tmp97965))))))
    (define create-directory*__%
      (lambda (_%dir96118%_ _%perms96119%_)
        (if (string? _%dir96118%_)
            (let ((_%dir96123%_ _%dir96118%_))
              (if (fixnum? _%perms96119%_)
                  (let ((_%perms96133%_ _%perms96119%_))
                    (__create-directory*__% _%dir96123%_ _%perms96133%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.26-75.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms96119%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.26-74.29"
               'contract:
               'string?
               'value:
               _%dir96118%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir96146%_)
        (let ((_%perms96148%_ '493))
          (create-directory*__% _%dir96146%_ _%perms96148%_))))
    (define create-directory*
      (lambda _g97967_
        (let ((_g97968_ (let () (declare (not safe)) (##length _g97967_))))
          (cond ((let () (declare (not safe)) (##fx= _g97968_ 1))
                 (apply create-directory*__0 _g97967_))
                ((let () (declare (not safe)) (##fx= _g97968_ 2))
                 (apply create-directory*__% _g97967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g97967_))))))
    (define __create-directory*__%
      (lambda (_%dir96042%_ _%perms96043%_)
        (let* ((_%dir96046%_ _%dir96042%_) (_%perms96054%_ _%perms96043%_))
          (letrec ((_%create196063%_
                    (lambda (_%path96095%_)
                      (let ((_%path96098%_ _%path96095%_))
                        (_%__create196064%_ _%path96098%_))))
                   (_%__create196064%_
                    (lambda (_%path96076%_)
                      (let ((_%path96079%_ _%path96076%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path96079%_))
                            (if (eq? (file-type _%path96079%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path96079%_))
                            (if _%perms96054%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path96079%_
                                             (cons 'permissions:
                                                   (cons _%perms96054%_
                                                         '())))))
                                (create-directory _%path96079%_)))))))
            (if (let () (declare (not safe)) (##file-exists? _%dir96046%_))
                '#!void
                (let _%lp96066%_ ((_%start96068%_ '0))
                  (let ((_%$e96070%_
                         (__string-index__% _%dir96046%_ '#\/ _%start96068%_)))
                    (if _%$e96070%_
                        ((lambda (_%x96073%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x96073%_ '0))
                               (_%__create196064%_
                                (substring _%dir96046%_ '0 _%x96073%_))
                               '#!void)
                           (_%lp96066%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x96073%_ '1))))
                         _%$e96070%_)
                        (_%__create196064%_ _%dir96046%_)))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir96110%_)
        (let ((_%perms96112%_ '493))
          (__create-directory*__% _%dir96110%_ _%perms96112%_))))
    (define __create-directory*
      (lambda _g97969_
        (let ((_g97970_ (let () (declare (not safe)) (##length _g97969_))))
          (cond ((let () (declare (not safe)) (##fx= _g97970_ 1))
                 (apply __create-directory*__0 _g97969_))
                ((let () (declare (not safe)) (##fx= _g97970_ 2))
                 (apply __create-directory*__% _g97969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g97969_))))))
    (define move-file__%
      (lambda (_%src95993%_ _%dest95994%_ _%replace?95995%_)
        (if (string? _%src95993%_)
            (let ((_%src95999%_ _%src95993%_))
              (if (string? _%dest95994%_)
                  (let ((_%dest96009%_ _%dest95994%_))
                    (if (boolean? _%replace?95995%_)
                        (let ((_%replace?96019%_ _%replace?95995%_))
                          (__move-file__%
                           _%src95999%_
                           _%dest96009%_
                           _%replace?96019%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@99.51-99.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?95995%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@99.34-99.38"
                     'contract:
                     'string?
                     'value:
                     _%dest95994%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@99.18-99.21"
               'contract:
               'string?
               'value:
               _%src95993%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src96032%_ _%dest96033%_)
        (let ((_%replace?96035%_ '#t))
          (move-file__% _%src96032%_ _%dest96033%_ _%replace?96035%_))))
    (define move-file
      (lambda _g97971_
        (let ((_g97972_ (let () (declare (not safe)) (##length _g97971_))))
          (cond ((let () (declare (not safe)) (##fx= _g97972_ 2))
                 (apply move-file__0 _g97971_))
                ((let () (declare (not safe)) (##fx= _g97972_ 3))
                 (apply move-file__% _g97971_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g97971_))))))
    (define __move-file__%
      (lambda (_%src95936%_ _%dest95937%_ _%replace?95938%_)
        (let* ((_%src95941%_ _%src95936%_)
               (_%dest95949%_ _%dest95937%_)
               (_%replace?95957%_ _%replace?95938%_))
          (letrec ((_%force-move-it95966%_
                    (lambda ()
                      (let ((_%tmp95972%_
                             (if _%replace?95957%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest95949%_))
                                     (let ((__tmp97973
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest95949%_
                                        '"."
                                        __tmp97973))
                                     '#f)
                                 '#f)))
                        (if _%tmp95972%_
                            (rename-file _%dest95949%_ _%tmp95972%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e95974%_)
                           (if _%tmp95972%_
                               (rename-file _%tmp95972%_ _%dest95949%_ '#t)
                               '#!void)
                           (raise _%e95974%_))
                         (lambda ()
                           (let ((_%fi95977%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src95941%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi95977%_))
                                      'symbolic-link)
                                 (let ((__tmp97974
                                        (path-normalize _%src95941%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp97974
                                    _%dest95949%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file _%src95941%_ _%dest95949%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src95941%_))
                           (if _%tmp95972%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp95972%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e95968%_)
               (if (let () (declare (not safe)) (##file-exists? _%src95941%_))
                   (_%force-move-it95966%_)
                   (raise _%e95968%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src95941%_
                  _%dest95949%_
                  _%replace?95957%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src95983%_ _%dest95984%_)
        (let ((_%replace?95986%_ '#t))
          (__move-file__% _%src95983%_ _%dest95984%_ _%replace?95986%_))))
    (define __move-file
      (lambda _g97975_
        (let ((_g97976_ (let () (declare (not safe)) (##length _g97975_))))
          (cond ((let () (declare (not safe)) (##fx= _g97976_ 2))
                 (apply __move-file__0 _g97975_))
                ((let () (declare (not safe)) (##fx= _g97976_ 3))
                 (apply __move-file__% _g97975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g97975_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore95932%_ '#t))
    (define true? (lambda (_%obj95929%_) (eq? _%obj95929%_ '#t)))
    (define false (lambda _%ignore95926%_ '#f))
    (define void (lambda _%ignore95923%_ '#!void))
    (define void? (lambda (_%obj95920%_) (eq? _%obj95920%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj95917%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj95917%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object? (lambda (_%obj95914%_) (eq? _%obj95914%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj95911%_) (eq? _%obj95911%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj95908%_) (eq? _%obj95908%_ '#!optional)))
    (define immediate?
      (lambda (_%obj95903%_)
        (let* ((_%t95906%_ (let () (declare (not safe)) (##type _%obj95903%_)))
               (__tmp97977
                (let () (declare (not safe)) (##fxand _%t95906%_ '1))))
          (declare (not safe))
          (##fxzero? __tmp97977))))
    (define nonnegative-fixnum?
      (lambda (_%obj95900%_)
        (if (fixnum? _%obj95900%_)
            (let () (declare (not safe)) (##fx>= _%obj95900%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj95894%_)
        (let ((_%$e95897%_ (pair? _%obj95894%_)))
          (if _%$e95897%_ _%$e95897%_ (null? _%obj95894%_)))))
    (define values-count
      (lambda (_%obj95891%_)
        (if (let () (declare (not safe)) (##values? _%obj95891%_))
            (let () (declare (not safe)) (##values-length _%obj95891%_))
            '1)))
    (define values-ref
      (lambda (_%obj95876%_ _%k95877%_)
        (if (fixnum? _%k95877%_)
            (let ((_%k95881%_ _%k95877%_))
              (__values-ref _%obj95876%_ _%k95881%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@234.23-234.24"
               'contract:
               'fixnum?
               'value:
               _%k95877%_)
              '#!void))))
    (define __values-ref
      (lambda (_%obj95863%_ _%k95864%_)
        (let ((_%k95867%_ _%k95864%_))
          (if (let () (declare (not safe)) (##values? _%obj95863%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj95863%_ _%k95867%_))
              _%obj95863%_))))
    (define values->list
      (lambda (_%obj95860%_)
        (if (let () (declare (not safe)) (##values? _%obj95860%_))
            (let () (declare (not safe)) (##values->list _%obj95860%_))
            (list _%obj95860%_))))
    (define foldl1
      (lambda (_%f95844%_ _%iv95845%_ _%lst95846%_)
        (if (procedure? _%f95844%_)
            (let ((_%f95850%_ _%f95844%_))
              (__foldl1 _%f95850%_ _%iv95845%_ _%lst95846%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@257.15-257.16"
               'contract:
               'procedure?
               'value:
               _%f95844%_)
              '#!void))))
    (define __foldl1
      (lambda (_%f95792%_ _%iv95793%_ _%lst95794%_)
        (let ((_%f95797%_ _%f95792%_))
          (let _%lp95806%_ ((_%rest95808%_ _%lst95794%_)
                            (_%r95809%_ _%iv95793%_))
            (let* ((_%rest9581095818%_ _%rest95808%_)
                   (_%else9581295826%_ (lambda () _%r95809%_))
                   (_%K9581495832%_
                    (lambda (_%rest95829%_ _%x95830%_)
                      (_%lp95806%_
                       _%rest95829%_
                       (let ()
                         (declare (not safe))
                         (_%f95797%_ _%x95830%_ _%r95809%_))))))
              (if (pair? _%rest9581095818%_)
                  (let ((_%hd9581595835%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9581095818%_)))
                        (_%tl9581695837%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9581095818%_))))
                    (let* ((_%x95840%_ _%hd9581595835%_)
                           (_%rest95842%_ _%tl9581695837%_))
                      (_%K9581495832%_ _%rest95842%_ _%x95840%_)))
                  (_%else9581295826%_)))))))
    (define foldl2
      (lambda (_%f95775%_ _%iv95776%_ _%lst195777%_ _%lst295778%_)
        (if (procedure? _%f95775%_)
            (let ((_%f95782%_ _%f95775%_))
              (__foldl2 _%f95782%_ _%iv95776%_ _%lst195777%_ _%lst295778%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@264.15-264.16"
               'contract:
               'procedure?
               'value:
               _%f95775%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f95688%_ _%iv95689%_ _%lst195690%_ _%lst295691%_)
        (let ((_%f95694%_ _%f95688%_))
          (let _%lp95703%_ ((_%rest195705%_ _%lst195690%_)
                            (_%rest295706%_ _%lst295691%_)
                            (_%r95707%_ _%iv95689%_))
            (let* ((_%rest19570895716%_ _%rest195705%_)
                   (_%else9571095724%_ (lambda () _%r95707%_))
                   (_%K9571295763%_
                    (lambda (_%rest195727%_ _%x195728%_)
                      (let* ((_%rest29572995737%_ _%rest295706%_)
                             (_%else9573195745%_ (lambda () _%r95707%_))
                             (_%K9573395751%_
                              (lambda (_%rest295748%_ _%x295749%_)
                                (_%lp95703%_
                                 _%rest195727%_
                                 _%rest295748%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f95694%_
                                    _%x195728%_
                                    _%x295749%_
                                    _%r95707%_))))))
                        (if (pair? _%rest29572995737%_)
                            (let ((_%hd9573495754%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29572995737%_)))
                                  (_%tl9573595756%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29572995737%_))))
                              (let* ((_%x295759%_ _%hd9573495754%_)
                                     (_%rest295761%_ _%tl9573595756%_))
                                (_%K9573395751%_ _%rest295761%_ _%x295759%_)))
                            (_%else9573195745%_))))))
              (if (pair? _%rest19570895716%_)
                  (let ((_%hd9571395766%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19570895716%_)))
                        (_%tl9571495768%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19570895716%_))))
                    (let* ((_%x195771%_ _%hd9571395766%_)
                           (_%rest195773%_ _%tl9571495768%_))
                      (_%K9571295763%_ _%rest195773%_ _%x195771%_)))
                  (_%else9571095724%_)))))))
    (define foldl
      (lambda _g97978_
        (let ((_g97979_ (let () (declare (not safe)) (##length _g97978_))))
          (cond ((let () (declare (not safe)) (##fx= _g97979_ 3))
                 (apply foldl1 _g97978_))
                ((let () (declare (not safe)) (##fx= _g97979_ 4))
                 (apply foldl2 _g97978_))
                ((let () (declare (not safe)) (##fx>= _g97979_ 4))
                 (apply foldl* _g97978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g97978_))))))
    (define foldl*
      (lambda (_%f95657%_ _%iv95658%_ . _%rest95659%_)
        (if (procedure? _%f95657%_)
            (let ((_%f95663%_ _%f95657%_))
              (declare (not safe))
              (##apply __foldl* _%f95663%_ _%iv95658%_ _%rest95659%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@282.15-282.16"
               'contract:
               'procedure?
               'value:
               _%f95657%_)
              '#!void))))
    (define __foldl*
      (lambda (_%f95635%_ _%iv95636%_ . _%rest95637%_)
        (let ((_%f95640%_ _%f95635%_))
          (let _%recur95649%_ ((_%iv95651%_ _%iv95636%_)
                               (_%rest95652%_ _%rest95637%_))
            (if (__andmap1 pair? _%rest95652%_)
                (_%recur95649%_
                 (let ((__tmp97980
                        (__foldr1
                         (lambda (_%xs95654%_ _%r95655%_)
                           (cons (car _%xs95654%_) _%r95655%_))
                         (list _%iv95651%_)
                         _%rest95652%_)))
                   (declare (not safe))
                   (##apply _%f95640%_ __tmp97980))
                 (map cdr _%rest95652%_))
                _%iv95651%_)))))
    (define foldr1
      (lambda (_%f95619%_ _%iv95620%_ _%lst95621%_)
        (if (procedure? _%f95619%_)
            (let ((_%f95625%_ _%f95619%_))
              (__foldr1 _%f95625%_ _%iv95620%_ _%lst95621%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@292.15-292.16"
               'contract:
               'procedure?
               'value:
               _%f95619%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f95568%_ _%iv95569%_ _%lst95570%_)
        (let ((_%f95573%_ _%f95568%_))
          (let _%recur95582%_ ((_%rest95584%_ _%lst95570%_))
            (let* ((_%rest9558595593%_ _%rest95584%_)
                   (_%else9558795601%_ (lambda () _%iv95569%_))
                   (_%K9558995607%_
                    (lambda (_%rest95604%_ _%x95605%_)
                      (let ((__tmp97981 (_%recur95582%_ _%rest95604%_)))
                        (declare (not safe))
                        (_%f95573%_ _%x95605%_ __tmp97981)))))
              (if (pair? _%rest9558595593%_)
                  (let ((_%hd9559095610%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9558595593%_)))
                        (_%tl9559195612%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9558595593%_))))
                    (let* ((_%x95615%_ _%hd9559095610%_)
                           (_%rest95617%_ _%tl9559195612%_))
                      (_%K9558995607%_ _%rest95617%_ _%x95615%_)))
                  (_%else9558795601%_)))))))
    (define foldr2
      (lambda (_%f95551%_ _%iv95552%_ _%lst195553%_ _%lst295554%_)
        (if (procedure? _%f95551%_)
            (let ((_%f95558%_ _%f95551%_))
              (__foldr2 _%f95558%_ _%iv95552%_ _%lst195553%_ _%lst295554%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@299.15-299.16"
               'contract:
               'procedure?
               'value:
               _%f95551%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f95465%_ _%iv95466%_ _%lst195467%_ _%lst295468%_)
        (let ((_%f95471%_ _%f95465%_))
          (let _%recur95480%_ ((_%rest195482%_ _%lst195467%_)
                               (_%rest295483%_ _%lst295468%_))
            (let* ((_%rest19548495492%_ _%rest195482%_)
                   (_%else9548695500%_ (lambda () _%iv95466%_))
                   (_%K9548895539%_
                    (lambda (_%rest195503%_ _%x195504%_)
                      (let* ((_%rest29550595513%_ _%rest295483%_)
                             (_%else9550795521%_ (lambda () _%iv95466%_))
                             (_%K9550995527%_
                              (lambda (_%rest295524%_ _%x295525%_)
                                (let ((__tmp97982
                                       (_%recur95480%_
                                        _%rest195503%_
                                        _%rest295524%_)))
                                  (declare (not safe))
                                  (_%f95471%_
                                   _%x195504%_
                                   _%x295525%_
                                   __tmp97982)))))
                        (if (pair? _%rest29550595513%_)
                            (let ((_%hd9551095530%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29550595513%_)))
                                  (_%tl9551195532%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29550595513%_))))
                              (let* ((_%x295535%_ _%hd9551095530%_)
                                     (_%rest295537%_ _%tl9551195532%_))
                                (_%K9550995527%_ _%rest295537%_ _%x295535%_)))
                            (_%else9550795521%_))))))
              (if (pair? _%rest19548495492%_)
                  (let ((_%hd9548995542%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19548495492%_)))
                        (_%tl9549095544%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19548495492%_))))
                    (let* ((_%x195547%_ _%hd9548995542%_)
                           (_%rest195549%_ _%tl9549095544%_))
                      (_%K9548895539%_ _%rest195549%_ _%x195547%_)))
                  (_%else9548695500%_)))))))
    (define foldr
      (lambda _g97983_
        (let ((_g97984_ (let () (declare (not safe)) (##length _g97983_))))
          (cond ((let () (declare (not safe)) (##fx= _g97984_ 3))
                 (apply foldr1 _g97983_))
                ((let () (declare (not safe)) (##fx= _g97984_ 4))
                 (apply foldr2 _g97983_))
                ((let () (declare (not safe)) (##fx>= _g97984_ 4))
                 (apply foldr* _g97983_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g97983_))))))
    (define foldr*
      (lambda (_%f95434%_ _%iv95435%_ . _%rest95436%_)
        (if (procedure? _%f95434%_)
            (let ((_%f95440%_ _%f95434%_))
              (declare (not safe))
              (##apply __foldr* _%f95440%_ _%iv95435%_ _%rest95436%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@317.15-317.16"
               'contract:
               'procedure?
               'value:
               _%f95434%_)
              '#!void))))
    (define __foldr*
      (lambda (_%f95413%_ _%iv95414%_ . _%rest95415%_)
        (let ((_%f95418%_ _%f95413%_))
          (let _%recur95427%_ ((_%rest95429%_ _%rest95415%_))
            (if (__andmap1 pair? _%rest95429%_)
                (let ((__tmp97985
                       (__foldr1
                        (lambda (_%xs95431%_ _%r95432%_)
                          (cons (car _%xs95431%_) _%r95432%_))
                        (list (_%recur95427%_ (map cdr _%rest95429%_)))
                        _%rest95429%_)))
                  (declare (not safe))
                  (##apply _%f95418%_ __tmp97985))
                _%iv95414%_)))))
    (define remove-nulls!
      (lambda (_%l95300%_)
        (let* ((_%l9530195314%_ _%l95300%_)
               (_%E9530595318%_
                (lambda ()
                  (error '"No clause matching"
                         _%l9530195314%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K9531095403%_
                 (lambda (_%r95401%_) (remove-nulls! _%r95401%_)))
                (_%K9530795390%_
                 (lambda (_%r95330%_)
                   (let _%loop95332%_ ((_%l95334%_ _%l95300%_)
                                       (_%r95335%_ _%r95330%_))
                     (let* ((_%r9533695349%_ _%r95335%_)
                            (_%E9534095353%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r9533695349%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K9534595380%_
                              (lambda (_%rr95378%_)
                                (let ((__tmp97987 _%l95334%_)
                                      (__tmp97986 (remove-nulls! _%rr95378%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp97987 __tmp97986))))
                             (_%K9534295367%_
                              (lambda (_%rr95365%_)
                                (_%loop95332%_ _%r95335%_ _%rr95365%_)))
                             (_%K9534195358%_ (lambda () '#!void)))
                         (if (pair? _%r9533695349%_)
                             (let ((_%tl9534795385%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r9533695349%_)))
                                   (_%hd9534695383%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r9533695349%_))))
                               (if (null? _%hd9534695383%_)
                                   (let ((_%rr95388%_ _%tl9534795385%_))
                                     (_%K9534595380%_ _%rr95388%_))
                                   (let ((_%rr95373%_ _%tl9534795385%_))
                                     (_%K9534295367%_ _%rr95373%_))))
                             '#!void))))
                   _%l95300%_))
                (_%K9530695323%_ (lambda () _%l95300%_)))
            (if (pair? _%l9530195314%_)
                (let ((_%tl9531295408%_
                       (let () (declare (not safe)) (##cdr _%l9530195314%_)))
                      (_%hd9531195406%_
                       (let () (declare (not safe)) (##car _%l9530195314%_))))
                  (if (null? _%hd9531195406%_)
                      (let ((_%r95411%_ _%tl9531295408%_))
                        (remove-nulls! _%r95411%_))
                      (let ((_%r95396%_ _%tl9531295408%_))
                        (_%K9530795390%_ _%r95396%_))))
                (_%K9530695323%_))))))
    (define append1!
      (lambda (_%l95285%_ _%x95286%_)
        (let ((_%l295289%_ (cons _%x95286%_ '())))
          (if (pair? _%l95285%_)
              (let ((_%l95291%_ _%l95285%_))
                (let ((__tmp97988
                       (let () (declare (not safe)) (##last-pair _%l95291%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp97988 _%l295289%_))
                _%l95291%_)
              _%l295289%_))))
    (define append-reverse-until
      (lambda (_%pred95269%_ _%rhead95270%_ _%tail95271%_)
        (if (procedure? _%pred95269%_)
            (let ((_%pred95275%_ _%pred95269%_))
              (__append-reverse-until
               _%pred95275%_
               _%rhead95270%_
               _%tail95271%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@357.29-357.33"
               'contract:
               'procedure?
               'value:
               _%pred95269%_)
              '#!void))))
    (define __append-reverse-until
      (lambda (_%pred95211%_ _%rhead95212%_ _%tail95213%_)
        (let ((_%pred95216%_ _%pred95211%_))
          (let _%loop95225%_ ((_%rhead95227%_ _%rhead95212%_)
                              (_%tail95228%_ _%tail95213%_))
            (let* ((_%rhead9523095239%_ _%rhead95227%_)
                   (_%E9523395243%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead9523095239%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K9523795266%_ (lambda () (values '() _%tail95228%_)))
                    (_%K9523495250%_
                     (lambda (_%r95247%_ _%a95248%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred95216%_ _%a95248%_))
                           (values _%rhead95227%_ _%tail95228%_)
                           (_%loop95225%_
                            _%r95247%_
                            (cons _%a95248%_ _%tail95228%_))))))
                (let ((_%try-match9523295262%_
                       (lambda ()
                         (if (pair? _%rhead9523095239%_)
                             (let ((_%tl9523695255%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead9523095239%_)))
                                   (_%hd9523595253%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead9523095239%_))))
                               (let ((_%a95258%_ _%hd9523595253%_)
                                     (_%r95260%_ _%tl9523695255%_))
                                 (_%K9523495250%_ _%r95260%_ _%a95258%_)))
                             (_%E9523395243%_)))))
                  (if (null? _%rhead9523095239%_)
                      (_%K9523795266%_)
                      (_%try-match9523295262%_)))))))))
    (define andmap1
      (lambda (_%f95196%_ _%lst95197%_)
        (if (procedure? _%f95196%_)
            (let ((_%f95201%_ _%f95196%_)) (__andmap1 _%f95201%_ _%lst95197%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@368.16-368.17"
               'contract:
               'procedure?
               'value:
               _%f95196%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f95145%_ _%lst95146%_)
        (let ((_%f95149%_ _%f95145%_))
          (let _%lp95158%_ ((_%rest95160%_ _%lst95146%_))
            (let* ((_%rest9516295170%_ _%rest95160%_)
                   (_%else9516495178%_ (lambda () '#t))
                   (_%K9516695184%_
                    (lambda (_%rest95181%_ _%x95182%_)
                      (if (let () (declare (not safe)) (_%f95149%_ _%x95182%_))
                          (_%lp95158%_ _%rest95181%_)
                          '#f))))
              (if (pair? _%rest9516295170%_)
                  (let ((_%hd9516795187%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9516295170%_)))
                        (_%tl9516895189%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9516295170%_))))
                    (let* ((_%x95192%_ _%hd9516795187%_)
                           (_%rest95194%_ _%tl9516895189%_))
                      (_%K9516695184%_ _%rest95194%_ _%x95192%_)))
                  (_%else9516495178%_)))))))
    (define andmap2
      (lambda (_%f95129%_ _%lst195130%_ _%lst295131%_)
        (if (procedure? _%f95129%_)
            (let ((_%f95135%_ _%f95129%_))
              (__andmap2 _%f95135%_ _%lst195130%_ _%lst295131%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f95129%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f95043%_ _%lst195044%_ _%lst295045%_)
        (let ((_%f95048%_ _%f95043%_))
          (let _%lp95057%_ ((_%rest195059%_ _%lst195044%_)
                            (_%rest295060%_ _%lst295045%_))
            (let* ((_%rest19506295070%_ _%rest195059%_)
                   (_%else9506495078%_ (lambda () '#t))
                   (_%K9506695117%_
                    (lambda (_%rest195081%_ _%x195082%_)
                      (let* ((_%rest29508395091%_ _%rest295060%_)
                             (_%else9508595099%_ (lambda () '#t))
                             (_%K9508795105%_
                              (lambda (_%rest295102%_ _%x295103%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f95048%_ _%x195082%_ _%x295103%_))
                                    (_%lp95057%_ _%rest195081%_ _%rest295102%_)
                                    '#f))))
                        (if (pair? _%rest29508395091%_)
                            (let ((_%hd9508895108%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29508395091%_)))
                                  (_%tl9508995110%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29508395091%_))))
                              (let* ((_%x295113%_ _%hd9508895108%_)
                                     (_%rest295115%_ _%tl9508995110%_))
                                (_%K9508795105%_ _%rest295115%_ _%x295113%_)))
                            (_%else9508595099%_))))))
              (if (pair? _%rest19506295070%_)
                  (let ((_%hd9506795120%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19506295070%_)))
                        (_%tl9506895122%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19506295070%_))))
                    (let* ((_%x195125%_ _%hd9506795120%_)
                           (_%rest195127%_ _%tl9506895122%_))
                      (_%K9506695117%_ _%rest195127%_ _%x195125%_)))
                  (_%else9506495078%_)))))))
    (define andmap
      (lambda _g97989_
        (let ((_g97990_ (let () (declare (not safe)) (##length _g97989_))))
          (cond ((let () (declare (not safe)) (##fx= _g97990_ 2))
                 (apply andmap1 _g97989_))
                ((let () (declare (not safe)) (##fx= _g97990_ 3))
                 (apply andmap2 _g97989_))
                ((let () (declare (not safe)) (##fx>= _g97990_ 3))
                 (apply andmap* _g97989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g97989_))))))
    (define andmap*
      (lambda (_%f95016%_ . _%rest95017%_)
        (if (procedure? _%f95016%_)
            (let ((_%f95021%_ _%f95016%_))
              (declare (not safe))
              (##apply __andmap* _%f95021%_ _%rest95017%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@397.16-397.17"
               'contract:
               'procedure?
               'value:
               _%f95016%_)
              '#!void))))
    (define __andmap*
      (lambda (_%f94998%_ . _%rest94999%_)
        (let ((_%f95002%_ _%f94998%_))
          (let _%recur95011%_ ((_%rest95013%_ _%rest94999%_))
            (if (__andmap1 pair? _%rest95013%_)
                (if (let ((__tmp97991 (map car _%rest95013%_)))
                      (declare (not safe))
                      (##apply _%f95002%_ __tmp97991))
                    (_%recur95011%_ (map cdr _%rest95013%_))
                    '#f)
                '#t)))))
    (define ormap1
      (lambda (_%f94983%_ _%lst94984%_)
        (if (procedure? _%f94983%_)
            (let ((_%f94988%_ _%f94983%_)) (__ormap1 _%f94988%_ _%lst94984%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.15-406.16"
               'contract:
               'procedure?
               'value:
               _%f94983%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f94930%_ _%lst94931%_)
        (let ((_%f94934%_ _%f94930%_))
          (let _%lp94943%_ ((_%rest94945%_ _%lst94931%_))
            (let* ((_%rest9494694954%_ _%rest94945%_)
                   (_%else9494894962%_ (lambda () '#f))
                   (_%K9495094971%_
                    (lambda (_%rest94965%_ _%x94966%_)
                      (let ((_%$e94968%_
                             (let ()
                               (declare (not safe))
                               (_%f94934%_ _%x94966%_))))
                        (if _%$e94968%_
                            _%$e94968%_
                            (_%lp94943%_ _%rest94965%_))))))
              (if (pair? _%rest9494694954%_)
                  (let ((_%hd9495194974%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9494694954%_)))
                        (_%tl9495294976%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9494694954%_))))
                    (let* ((_%x94979%_ _%hd9495194974%_)
                           (_%rest94981%_ _%tl9495294976%_))
                      (_%K9495094971%_ _%rest94981%_ _%x94979%_)))
                  (_%else9494894962%_)))))))
    (define ormap2
      (lambda (_%f94914%_ _%lst194915%_ _%lst294916%_)
        (if (procedure? _%f94914%_)
            (let ((_%f94920%_ _%f94914%_))
              (__ormap2 _%f94920%_ _%lst194915%_ _%lst294916%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@413.15-413.16"
               'contract:
               'procedure?
               'value:
               _%f94914%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f94826%_ _%lst194827%_ _%lst294828%_)
        (let ((_%f94831%_ _%f94826%_))
          (let _%lp94840%_ ((_%rest194842%_ _%lst194827%_)
                            (_%rest294843%_ _%lst294828%_))
            (let* ((_%rest19484494852%_ _%rest194842%_)
                   (_%else9484694860%_ (lambda () '#f))
                   (_%K9484894902%_
                    (lambda (_%rest194863%_ _%x194864%_)
                      (let* ((_%rest29486594873%_ _%rest294843%_)
                             (_%else9486794881%_ (lambda () '#f))
                             (_%K9486994890%_
                              (lambda (_%rest294884%_ _%x294885%_)
                                (let ((_%$e94887%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f94831%_
                                          _%x194864%_
                                          _%x294885%_))))
                                  (if _%$e94887%_
                                      _%$e94887%_
                                      (_%lp94840%_
                                       _%rest194863%_
                                       _%rest294884%_))))))
                        (if (pair? _%rest29486594873%_)
                            (let ((_%hd9487094893%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29486594873%_)))
                                  (_%tl9487194895%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29486594873%_))))
                              (let* ((_%x294898%_ _%hd9487094893%_)
                                     (_%rest294900%_ _%tl9487194895%_))
                                (_%K9486994890%_ _%rest294900%_ _%x294898%_)))
                            (_%else9486794881%_))))))
              (if (pair? _%rest19484494852%_)
                  (let ((_%hd9484994905%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19484494852%_)))
                        (_%tl9485094907%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19484494852%_))))
                    (let* ((_%x194910%_ _%hd9484994905%_)
                           (_%rest194912%_ _%tl9485094907%_))
                      (_%K9484894902%_ _%rest194912%_ _%x194910%_)))
                  (_%else9484694860%_)))))))
    (define ormap
      (lambda _g97992_
        (let ((_g97993_ (let () (declare (not safe)) (##length _g97992_))))
          (cond ((let () (declare (not safe)) (##fx= _g97993_ 2))
                 (apply ormap1 _g97992_))
                ((let () (declare (not safe)) (##fx= _g97993_ 3))
                 (apply ormap2 _g97992_))
                ((let () (declare (not safe)) (##fx>= _g97993_ 3))
                 (apply ormap* _g97992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g97992_))))))
    (define ormap*
      (lambda (_%f94799%_ . _%rest94800%_)
        (if (procedure? _%f94799%_)
            (let ((_%f94804%_ _%f94799%_))
              (declare (not safe))
              (##apply __ormap* _%f94804%_ _%rest94800%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@431.15-431.16"
               'contract:
               'procedure?
               'value:
               _%f94799%_)
              '#!void))))
    (define __ormap*
      (lambda (_%f94779%_ . _%rest94780%_)
        (let ((_%f94783%_ _%f94779%_))
          (let _%recur94792%_ ((_%rest94794%_ _%rest94780%_))
            (if (__andmap1 pair? _%rest94794%_)
                (let ((_%$e94796%_
                       (let ((__tmp97994 (map car _%rest94794%_)))
                         (declare (not safe))
                         (##apply _%f94783%_ __tmp97994))))
                  (if _%$e94796%_
                      _%$e94796%_
                      (_%recur94792%_ (map cdr _%rest94794%_))))
                '#f)))))
    (define filter-map1
      (lambda (_%f94764%_ _%lst94765%_)
        (if (procedure? _%f94764%_)
            (let ((_%f94769%_ _%f94764%_))
              (__filter-map1 _%f94769%_ _%lst94765%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@438.20-438.21"
               'contract:
               'procedure?
               'value:
               _%f94764%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f94707%_ _%lst94708%_)
        (let ((_%f94711%_ _%f94707%_))
          (let _%recur94720%_ ((_%rest94722%_ _%lst94708%_))
            (let* ((_%rest9472494732%_ _%rest94722%_)
                   (_%else9472694740%_ (lambda () '()))
                   (_%K9472894752%_
                    (lambda (_%rest94743%_ _%x94744%_)
                      (let ((_%$e94746%_
                             (let ()
                               (declare (not safe))
                               (_%f94711%_ _%x94744%_))))
                        (if _%$e94746%_
                            ((lambda (_%r94749%_)
                               (cons _%r94749%_
                                     (_%recur94720%_ _%rest94743%_)))
                             _%$e94746%_)
                            (_%recur94720%_ _%rest94743%_))))))
              (if (pair? _%rest9472494732%_)
                  (let ((_%hd9472994755%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9472494732%_)))
                        (_%tl9473094757%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9472494732%_))))
                    (let* ((_%x94760%_ _%hd9472994755%_)
                           (_%rest94762%_ _%tl9473094757%_))
                      (_%K9472894752%_ _%rest94762%_ _%x94760%_)))
                  (_%else9472694740%_)))))))
    (define filter-map2
      (lambda (_%f94691%_ _%lst194692%_ _%lst294693%_)
        (if (procedure? _%f94691%_)
            (let ((_%f94697%_ _%f94691%_))
              (__filter-map2 _%f94697%_ _%lst194692%_ _%lst294693%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@449.20-449.21"
               'contract:
               'procedure?
               'value:
               _%f94691%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f94599%_ _%lst194600%_ _%lst294601%_)
        (let ((_%f94604%_ _%f94599%_))
          (let _%recur94613%_ ((_%rest194615%_ _%lst194600%_)
                               (_%rest294616%_ _%lst294601%_))
            (let* ((_%rest19461894626%_ _%rest194615%_)
                   (_%else9462094634%_ (lambda () '()))
                   (_%K9462294679%_
                    (lambda (_%rest194637%_ _%x194638%_)
                      (let* ((_%rest29463994647%_ _%rest294616%_)
                             (_%else9464194655%_ (lambda () '()))
                             (_%K9464394667%_
                              (lambda (_%rest294658%_ _%x294659%_)
                                (let ((_%$e94661%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f94604%_
                                          _%x194638%_
                                          _%x294659%_))))
                                  (if _%$e94661%_
                                      ((lambda (_%r94664%_)
                                         (cons _%r94664%_
                                               (_%recur94613%_
                                                _%rest194637%_
                                                _%rest294658%_)))
                                       _%$e94661%_)
                                      (_%recur94613%_
                                       _%rest194637%_
                                       _%rest294658%_))))))
                        (if (pair? _%rest29463994647%_)
                            (let ((_%hd9464494670%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest29463994647%_)))
                                  (_%tl9464594672%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest29463994647%_))))
                              (let* ((_%x294675%_ _%hd9464494670%_)
                                     (_%rest294677%_ _%tl9464594672%_))
                                (_%K9464394667%_ _%rest294677%_ _%x294675%_)))
                            (_%else9464194655%_))))))
              (if (pair? _%rest19461894626%_)
                  (let ((_%hd9462394682%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest19461894626%_)))
                        (_%tl9462494684%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest19461894626%_))))
                    (let* ((_%x194687%_ _%hd9462394682%_)
                           (_%rest194689%_ _%tl9462494684%_))
                      (_%K9462294679%_ _%rest194689%_ _%x194687%_)))
                  (_%else9462094634%_)))))))
    (define filter-map
      (lambda _g97995_
        (let ((_g97996_ (let () (declare (not safe)) (##length _g97995_))))
          (cond ((let () (declare (not safe)) (##fx= _g97996_ 2))
                 (apply filter-map1 _g97995_))
                ((let () (declare (not safe)) (##fx= _g97996_ 3))
                 (apply filter-map2 _g97995_))
                ((let () (declare (not safe)) (##fx>= _g97996_ 3))
                 (apply filter-map* _g97995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g97995_))))))
    (define filter-map*
      (lambda (_%f94572%_ . _%rest94573%_)
        (if (procedure? _%f94572%_)
            (let ((_%f94577%_ _%f94572%_))
              (declare (not safe))
              (##apply __filter-map* _%f94577%_ _%rest94573%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f94572%_)
              '#!void))))
    (define __filter-map*
      (lambda (_%f94548%_ . _%rest94549%_)
        (let ((_%f94552%_ _%f94548%_))
          (let _%recur94561%_ ((_%rest94563%_ _%rest94549%_))
            (if (__andmap1 pair? _%rest94563%_)
                (let ((_%$e94566%_
                       (let ((__tmp97997 (map car _%rest94563%_)))
                         (declare (not safe))
                         (##apply _%f94552%_ __tmp97997))))
                  (if _%$e94566%_
                      ((lambda (_%r94569%_)
                         (cons _%r94569%_
                               (_%recur94561%_ (map cdr _%rest94563%_))))
                       _%$e94566%_)
                      (_%recur94561%_ (map cdr _%rest94563%_))))
                '())))))
    (define agetq__%
      (lambda (_%key94524%_ _%lst94526%_ _%default94528%_)
        (let ((_%$e94531%_
               (if (pair? _%lst94526%_) (assq _%key94524%_ _%lst94526%_) '#f)))
          (if _%$e94531%_
              (cdr _%$e94531%_)
              (if (procedure? _%default94528%_)
                  (_%default94528%_ _%key94524%_)
                  _%default94528%_)))))
    (define agetq__0
      (lambda (_%key94539%_ _%lst94540%_)
        (let ((_%default94542%_ '#f))
          (agetq__% _%key94539%_ _%lst94540%_ _%default94542%_))))
    (define agetq
      (lambda _g97998_
        (let ((_g97999_ (let () (declare (not safe)) (##length _g97998_))))
          (cond ((let () (declare (not safe)) (##fx= _g97999_ 2))
                 (apply agetq__0 _g97998_))
                ((let () (declare (not safe)) (##fx= _g97999_ 3))
                 (apply agetq__% _g97998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g97998_))))))
    (define agetv__%
      (lambda (_%key94499%_ _%lst94501%_ _%default94503%_)
        (let ((_%$e94506%_
               (if (pair? _%lst94501%_) (assv _%key94499%_ _%lst94501%_) '#f)))
          (if _%$e94506%_
              (cdr _%$e94506%_)
              (if (procedure? _%default94503%_)
                  (_%default94503%_ _%key94499%_)
                  _%default94503%_)))))
    (define agetv__0
      (lambda (_%key94514%_ _%lst94515%_)
        (let ((_%default94517%_ '#f))
          (agetv__% _%key94514%_ _%lst94515%_ _%default94517%_))))
    (define agetv
      (lambda _g98000_
        (let ((_g98001_ (let () (declare (not safe)) (##length _g98000_))))
          (cond ((let () (declare (not safe)) (##fx= _g98001_ 2))
                 (apply agetv__0 _g98000_))
                ((let () (declare (not safe)) (##fx= _g98001_ 3))
                 (apply agetv__% _g98000_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g98000_))))))
    (define aget__%
      (lambda (_%key94474%_ _%lst94476%_ _%default94478%_)
        (let ((_%$e94481%_
               (if (pair? _%lst94476%_)
                   (assoc _%key94474%_ _%lst94476%_)
                   '#f)))
          (if _%$e94481%_
              (cdr _%$e94481%_)
              (if (procedure? _%default94478%_)
                  (_%default94478%_ _%key94474%_)
                  _%default94478%_)))))
    (define aget__0
      (lambda (_%key94489%_ _%lst94490%_)
        (let ((_%default94492%_ '#f))
          (aget__% _%key94489%_ _%lst94490%_ _%default94492%_))))
    (define aget
      (lambda _g98002_
        (let ((_g98003_ (let () (declare (not safe)) (##length _g98002_))))
          (cond ((let () (declare (not safe)) (##fx= _g98003_ 2))
                 (apply aget__0 _g98002_))
                ((let () (declare (not safe)) (##fx= _g98003_ 3))
                 (apply aget__% _g98002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g98002_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key94403%_ _%lst94405%_ _%default94407%_)
        (let _%lp94410%_ ((_%rest94413%_ _%lst94405%_))
          (let* ((_%rest9441594425%_ _%rest94413%_)
                 (_%else9441794433%_
                  (lambda ()
                    (if (procedure? _%default94407%_)
                        (_%default94407%_ _%key94403%_)
                        _%default94407%_)))
                 (_%K9441994442%_
                  (lambda (_%rest94436%_ _%v94437%_ _%k94439%_)
                    (if (eq? _%k94439%_ _%key94403%_)
                        _%v94437%_
                        (_%lp94410%_ _%rest94436%_)))))
            (if (pair? _%rest9441594425%_)
                (let ((_%hd9442094445%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9441594425%_)))
                      (_%tl9442194447%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9441594425%_))))
                  (let ((_%k94450%_ _%hd9442094445%_))
                    (if (pair? _%tl9442194447%_)
                        (let ((_%hd9442294452%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9442194447%_)))
                              (_%tl9442394454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9442194447%_))))
                          (let* ((_%v94457%_ _%hd9442294452%_)
                                 (_%rest94459%_ _%tl9442394454%_))
                            (_%K9441994442%_
                             _%rest94459%_
                             _%v94457%_
                             _%k94450%_)))
                        (_%else9441794433%_))))
                (_%else9441794433%_))))))
    (define pgetq__0
      (lambda (_%key94464%_ _%lst94465%_)
        (let ((_%default94467%_ '#f))
          (pgetq__% _%key94464%_ _%lst94465%_ _%default94467%_))))
    (define pgetq
      (lambda _g98004_
        (let ((_g98005_ (let () (declare (not safe)) (##length _g98004_))))
          (cond ((let () (declare (not safe)) (##fx= _g98005_ 2))
                 (apply pgetq__0 _g98004_))
                ((let () (declare (not safe)) (##fx= _g98005_ 3))
                 (apply pgetq__% _g98004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g98004_))))))
    (define pgetv__%
      (lambda (_%key94332%_ _%lst94334%_ _%default94336%_)
        (let _%lp94339%_ ((_%rest94342%_ _%lst94334%_))
          (let* ((_%rest9434494354%_ _%rest94342%_)
                 (_%else9434694362%_
                  (lambda ()
                    (if (procedure? _%default94336%_)
                        (_%default94336%_ _%key94332%_)
                        _%default94336%_)))
                 (_%K9434894371%_
                  (lambda (_%rest94365%_ _%v94366%_ _%k94368%_)
                    (if (eqv? _%k94368%_ _%key94332%_)
                        _%v94366%_
                        (_%lp94339%_ _%rest94365%_)))))
            (if (pair? _%rest9434494354%_)
                (let ((_%hd9434994374%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9434494354%_)))
                      (_%tl9435094376%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9434494354%_))))
                  (let ((_%k94379%_ _%hd9434994374%_))
                    (if (pair? _%tl9435094376%_)
                        (let ((_%hd9435194381%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9435094376%_)))
                              (_%tl9435294383%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9435094376%_))))
                          (let* ((_%v94386%_ _%hd9435194381%_)
                                 (_%rest94388%_ _%tl9435294383%_))
                            (_%K9434894371%_
                             _%rest94388%_
                             _%v94386%_
                             _%k94379%_)))
                        (_%else9434694362%_))))
                (_%else9434694362%_))))))
    (define pgetv__0
      (lambda (_%key94393%_ _%lst94394%_)
        (let ((_%default94396%_ '#f))
          (pgetv__% _%key94393%_ _%lst94394%_ _%default94396%_))))
    (define pgetv
      (lambda _g98006_
        (let ((_g98007_ (let () (declare (not safe)) (##length _g98006_))))
          (cond ((let () (declare (not safe)) (##fx= _g98007_ 2))
                 (apply pgetv__0 _g98006_))
                ((let () (declare (not safe)) (##fx= _g98007_ 3))
                 (apply pgetv__% _g98006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g98006_))))))
    (define pget__%
      (lambda (_%key94261%_ _%lst94263%_ _%default94265%_)
        (let _%lp94268%_ ((_%rest94271%_ _%lst94263%_))
          (let* ((_%rest9427394283%_ _%rest94271%_)
                 (_%else9427594291%_
                  (lambda ()
                    (if (procedure? _%default94265%_)
                        (_%default94265%_ _%key94261%_)
                        _%default94265%_)))
                 (_%K9427794300%_
                  (lambda (_%rest94294%_ _%v94295%_ _%k94297%_)
                    (if (equal? _%k94297%_ _%key94261%_)
                        _%v94295%_
                        (_%lp94268%_ _%rest94294%_)))))
            (if (pair? _%rest9427394283%_)
                (let ((_%hd9427894303%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9427394283%_)))
                      (_%tl9427994305%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9427394283%_))))
                  (let ((_%k94308%_ _%hd9427894303%_))
                    (if (pair? _%tl9427994305%_)
                        (let ((_%hd9428094310%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9427994305%_)))
                              (_%tl9428194312%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9427994305%_))))
                          (let* ((_%v94315%_ _%hd9428094310%_)
                                 (_%rest94317%_ _%tl9428194312%_))
                            (_%K9427794300%_
                             _%rest94317%_
                             _%v94315%_
                             _%k94308%_)))
                        (_%else9427594291%_))))
                (_%else9427594291%_))))))
    (define pget__0
      (lambda (_%key94322%_ _%lst94323%_)
        (let ((_%default94325%_ '#f))
          (pget__% _%key94322%_ _%lst94323%_ _%default94325%_))))
    (define pget
      (lambda _g98008_
        (let ((_g98009_ (let () (declare (not safe)) (##length _g98008_))))
          (cond ((let () (declare (not safe)) (##fx= _g98009_ 2))
                 (apply pget__0 _g98008_))
                ((let () (declare (not safe)) (##fx= _g98009_ 3))
                 (apply pget__% _g98008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g98008_))))))
    (define find
      (lambda (_%pred94245%_ _%lst94246%_)
        (if (procedure? _%pred94245%_)
            (let ((_%pred94250%_ _%pred94245%_))
              (__find _%pred94250%_ _%lst94246%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@517.13-517.17"
               'contract:
               'procedure?
               'value:
               _%pred94245%_)
              '#!void))))
    (define __find
      (lambda (_%pred94228%_ _%lst94229%_)
        (let* ((_%pred94232%_ _%pred94228%_)
               (_%$e94241%_ (__memf _%pred94232%_ _%lst94229%_)))
          (if _%$e94241%_
              (let () (declare (not safe)) (##car _%$e94241%_))
              '#f))))
    (define memf
      (lambda (_%proc94213%_ _%lst94214%_)
        (if (procedure? _%proc94213%_)
            (let ((_%proc94218%_ _%proc94213%_))
              (__memf _%proc94218%_ _%lst94214%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@522.13-522.17"
               'contract:
               'procedure?
               'value:
               _%proc94213%_)
              '#!void))))
    (define __memf
      (lambda (_%proc94163%_ _%lst94164%_)
        (let ((_%proc94167%_ _%proc94163%_))
          (let _%lp94176%_ ((_%rest94178%_ _%lst94164%_))
            (let* ((_%rest9417994187%_ _%rest94178%_)
                   (_%else9418194195%_ (lambda () '#f))
                   (_%K9418394201%_
                    (lambda (_%tl94198%_ _%hd94199%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc94167%_ _%hd94199%_))
                          _%rest94178%_
                          (_%lp94176%_ _%tl94198%_)))))
              (if (pair? _%rest9417994187%_)
                  (let ((_%hd9418494204%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9417994187%_)))
                        (_%tl9418594206%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9417994187%_))))
                    (let* ((_%hd94209%_ _%hd9418494204%_)
                           (_%tl94211%_ _%tl9418594206%_))
                      (_%K9418394201%_ _%tl94211%_ _%hd94209%_)))
                  (_%else9418194195%_)))))))
    (define remove1
      (lambda (_%el94116%_ _%lst94118%_)
        (let _%lp94121%_ ((_%rest94124%_ _%lst94118%_) (_%r94126%_ '()))
          (let* ((_%rest9412894136%_ _%rest94124%_)
                 (_%else9413094144%_ (lambda () _%lst94118%_))
                 (_%K9413294151%_
                  (lambda (_%rest94147%_ _%hd94148%_)
                    (if (equal? _%el94116%_ _%hd94148%_)
                        (__foldl1 cons _%rest94147%_ _%r94126%_)
                        (_%lp94121%_
                         _%rest94147%_
                         (cons _%hd94148%_ _%r94126%_))))))
            (if (pair? _%rest9412894136%_)
                (let ((_%hd9413394154%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9412894136%_)))
                      (_%tl9413494156%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9412894136%_))))
                  (let* ((_%hd94159%_ _%hd9413394154%_)
                         (_%rest94161%_ _%tl9413494156%_))
                    (_%K9413294151%_ _%rest94161%_ _%hd94159%_)))
                (_%else9413094144%_))))))
    (define remv1
      (lambda (_%el94069%_ _%lst94071%_)
        (let _%lp94074%_ ((_%rest94077%_ _%lst94071%_) (_%r94079%_ '()))
          (let* ((_%rest9408194089%_ _%rest94077%_)
                 (_%else9408394097%_ (lambda () _%lst94071%_))
                 (_%K9408594104%_
                  (lambda (_%rest94100%_ _%hd94101%_)
                    (if (eqv? _%el94069%_ _%hd94101%_)
                        (__foldl1 cons _%rest94100%_ _%r94079%_)
                        (_%lp94074%_
                         _%rest94100%_
                         (cons _%hd94101%_ _%r94079%_))))))
            (if (pair? _%rest9408194089%_)
                (let ((_%hd9408694107%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9408194089%_)))
                      (_%tl9408794109%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9408194089%_))))
                  (let* ((_%hd94112%_ _%hd9408694107%_)
                         (_%rest94114%_ _%tl9408794109%_))
                    (_%K9408594104%_ _%rest94114%_ _%hd94112%_)))
                (_%else9408394097%_))))))
    (define remq1
      (lambda (_%el94022%_ _%lst94024%_)
        (let _%lp94027%_ ((_%rest94030%_ _%lst94024%_) (_%r94032%_ '()))
          (let* ((_%rest9403494042%_ _%rest94030%_)
                 (_%else9403694050%_ (lambda () _%lst94024%_))
                 (_%K9403894057%_
                  (lambda (_%rest94053%_ _%hd94054%_)
                    (if (eq? _%el94022%_ _%hd94054%_)
                        (__foldl1 cons _%rest94053%_ _%r94032%_)
                        (_%lp94027%_
                         _%rest94053%_
                         (cons _%hd94054%_ _%r94032%_))))))
            (if (pair? _%rest9403494042%_)
                (let ((_%hd9403994060%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9403494042%_)))
                      (_%tl9404094062%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9403494042%_))))
                  (let* ((_%hd94065%_ _%hd9403994060%_)
                         (_%rest94067%_ _%tl9404094062%_))
                    (_%K9403894057%_ _%rest94067%_ _%hd94065%_)))
                (_%else9403694050%_))))))
    (define remf
      (lambda (_%proc94007%_ _%lst94008%_)
        (if (procedure? _%proc94007%_)
            (let ((_%proc94012%_ _%proc94007%_))
              (__remf _%proc94012%_ _%lst94008%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@544.13-544.17"
               'contract:
               'procedure?
               'value:
               _%proc94007%_)
              '#!void))))
    (define __remf
      (lambda (_%proc93956%_ _%lst93957%_)
        (let ((_%proc93960%_ _%proc93956%_))
          (let _%lp93969%_ ((_%rest93971%_ _%lst93957%_) (_%r93972%_ '()))
            (let* ((_%rest9397393981%_ _%rest93971%_)
                   (_%else9397593989%_ (lambda () _%lst93957%_))
                   (_%K9397793995%_
                    (lambda (_%rest93992%_ _%hd93993%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc93960%_ _%hd93993%_))
                          (__foldl1 cons _%rest93992%_ _%r93972%_)
                          (_%lp93969%_
                           _%rest93992%_
                           (cons _%hd93993%_ _%r93972%_))))))
              (if (pair? _%rest9397393981%_)
                  (let ((_%hd9397893998%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9397393981%_)))
                        (_%tl9397994000%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9397393981%_))))
                    (let* ((_%hd94003%_ _%hd9397893998%_)
                           (_%rest94005%_ _%tl9397994000%_))
                      (_%K9397793995%_ _%rest94005%_ _%hd94003%_)))
                  (_%else9397593989%_)))))))
    (define 1+
      (lambda (_%x93942%_)
        (if (number? _%x93942%_)
            (let ((_%x93946%_ _%x93942%_)) (__1+ _%x93946%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.11-553.12"
               'contract:
               'number?
               'value:
               _%x93942%_)
              '#!void))))
    (define __1+
      (lambda (_%x93930%_) (let ((_%x93933%_ _%x93930%_)) (+ _%x93933%_ '1))))
    (define 1-
      (lambda (_%x93916%_)
        (if (number? _%x93916%_)
            (let ((_%x93920%_ _%x93916%_)) (__1- _%x93920%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@561.11-561.12"
               'contract:
               'number?
               'value:
               _%x93916%_)
              '#!void))))
    (define __1-
      (lambda (_%x93904%_) (let ((_%x93907%_ _%x93904%_)) (- _%x93907%_ '1))))
    (define fx1+
      (lambda (_%x93890%_)
        (if (fixnum? _%x93890%_)
            (let ((_%x93894%_ _%x93890%_)) (__fx1+ _%x93894%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@569.13-569.14"
               'contract:
               'fixnum?
               'value:
               _%x93890%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x93878%_)
        (let ((_%x93881%_ _%x93878%_))
          (declare (not safe))
          (##fx+ _%x93881%_ '1))))
    (define fx1-
      (lambda (_%x93864%_)
        (if (fixnum? _%x93864%_)
            (let ((_%x93868%_ _%x93864%_)) (__fx1- _%x93868%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.14"
               'contract:
               'fixnum?
               'value:
               _%x93864%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x93852%_)
        (let ((_%x93855%_ _%x93852%_))
          (declare (not safe))
          (##fx- _%x93855%_ '1))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_%x93849%_)
        (if (fixnum? _%x93849%_)
            (let () (declare (not safe)) (##fx>= _%x93849%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x93846%_)
        (if (fixnum? _%x93846%_)
            (let () (declare (not safe)) (##fx> _%x93846%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x93843%_)
        (let () (declare (not safe)) (##fx= _%x93843%_ '0))))
    (define fx<0?
      (lambda (_%x93840%_)
        (if (fixnum? _%x93840%_)
            (let () (declare (not safe)) (##fx< _%x93840%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x93837%_)
        (if (fixnum? _%x93837%_)
            (let () (declare (not safe)) (##fx<= _%x93837%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x93834%_)
        (if (symbol? _%x93834%_) (not (uninterned-symbol? _%x93834%_)) '#f)))
    (define display-as-string
      (lambda (_%x93819%_ _%port93820%_)
        (if (output-port? _%port93820%_)
            (let ((_%port93824%_ _%port93820%_))
              (__display-as-string _%x93819%_ _%port93824%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@605.28-605.32"
               'contract:
               'output-port?
               'value:
               _%port93820%_)
              '#!void))))
    (define __display-as-string
      (lambda (_%x93776%_ _%port93777%_)
        (let ((_%port93780%_ _%port93777%_))
          (if (or (string? _%x93776%_)
                  (symbol? _%x93776%_)
                  (keyword? _%x93776%_)
                  (number? _%x93776%_)
                  (char? _%x93776%_))
              (display _%x93776%_ _%port93780%_)
              (if (pair? _%x93776%_)
                  (let ()
                    (__display-as-string
                     (let () (declare (not safe)) (##car _%x93776%_))
                     _%port93780%_)
                    (__display-as-string
                     (let () (declare (not safe)) (##cdr _%x93776%_))
                     _%port93780%_))
                  (if (vector? _%x93776%_)
                      (vector-for-each
                       (lambda (_%g9380393805%_)
                         (__display-as-string _%g9380393805%_ _%port93780%_))
                       _%x93776%_)
                      (if (or (null? _%x93776%_)
                              (eq? _%x93776%_ '#!void)
                              (eof-object? _%x93776%_)
                              (boolean? _%x93776%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x93776%_)
                            '#!void))))))))
    (define as-string__0
      (lambda (_%x93759%_)
        (if (string? _%x93759%_)
            _%x93759%_
            (if (symbol? _%x93759%_)
                (let () (declare (not safe)) (##symbol->string _%x93759%_))
                (if (keyword? _%x93759%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x93759%_))
                    (if (number? _%x93759%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x93759%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g9376593767%_)
                           (__display-as-string
                            _%x93759%_
                            _%g9376593767%_)))))))))
    (define as-string__1
      (lambda _%args93770%_
        (call-with-output-string
         '()
         (lambda (_%g9377193773%_)
           (__display-as-string _%args93770%_ _%g9377193773%_)))))
    (define as-string
      (lambda _g98010_
        (let ((_g98011_ (let () (declare (not safe)) (##length _g98010_))))
          (cond ((let () (declare (not safe)) (##fx= _g98011_ 1))
                 (apply as-string__0 _g98010_))
                (#t
                 (apply (lambda _%args93770%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args93770%_)))
                        _g98010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g98010_))))))
    (define make-symbol__0
      (lambda (_%x93755%_)
        (if (interned-symbol? _%x93755%_)
            _%x93755%_
            (let ((__tmp98012 (as-string__0 _%x93755%_)))
              (declare (not safe))
              (##string->symbol __tmp98012)))))
    (define make-symbol__1
      (lambda _%args93757%_
        (let ((__tmp98013
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args93757%_))))
          (declare (not safe))
          (##string->symbol __tmp98013))))
    (define make-symbol
      (lambda _g98014_
        (let ((_g98015_ (let () (declare (not safe)) (##length _g98014_))))
          (cond ((let () (declare (not safe)) (##fx= _g98015_ 1))
                 (apply make-symbol__0 _g98014_))
                (#t
                 (apply (lambda _%args93757%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args93757%_)))
                        _g98014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g98014_))))))
    (define make-keyword__0
      (lambda (_%x93751%_)
        (if (interned-keyword? _%x93751%_)
            _%x93751%_
            (let ((__tmp98016 (as-string__0 _%x93751%_)))
              (declare (not safe))
              (##string->keyword __tmp98016)))))
    (define make-keyword__1
      (lambda _%args93753%_
        (let ((__tmp98017
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args93753%_))))
          (declare (not safe))
          (##string->keyword __tmp98017))))
    (define make-keyword
      (lambda _g98018_
        (let ((_g98019_ (let () (declare (not safe)) (##length _g98018_))))
          (cond ((let () (declare (not safe)) (##fx= _g98019_ 1))
                 (apply make-keyword__0 _g98018_))
                (#t
                 (apply (lambda _%args93753%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args93753%_)))
                        _g98018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g98018_))))))
    (define interned-keyword?
      (lambda (_%x93748%_)
        (if (keyword? _%x93748%_) (not (uninterned-keyword? _%x93748%_)) '#f)))
    (define symbol->keyword
      (lambda (_%sym93734%_)
        (if (symbol? _%sym93734%_)
            (let ((_%sym93738%_ _%sym93734%_))
              (__symbol->keyword _%sym93738%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@648.24-648.27"
               'contract:
               'symbol?
               'value:
               _%sym93734%_)
              '#!void))))
    (define __symbol->keyword
      (lambda (_%sym93722%_)
        (let ((_%sym93725%_ _%sym93722%_))
          (if (uninterned-symbol? _%sym93725%_)
              (let ((__tmp98020
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym93725%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp98020))
              (let ((__tmp98021
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym93725%_))))
                (declare (not safe))
                (##string->keyword __tmp98021))))))
    (define keyword->symbol
      (lambda (_%sym93708%_)
        (if (keyword? _%sym93708%_)
            (let ((_%sym93712%_ _%sym93708%_))
              (__keyword->symbol _%sym93712%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@654.24-654.27"
               'contract:
               'keyword?
               'value:
               _%sym93708%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym93696%_)
        (let ((_%sym93699%_ _%sym93696%_))
          (if (uninterned-keyword? _%sym93699%_)
              (let ((__tmp98022
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym93699%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp98022))
              (let ((__tmp98023
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym93699%_))))
                (declare (not safe))
                (##string->symbol __tmp98023))))))
    (define bytes->string__%
      (lambda (_%bstr93661%_ _%enc93662%_)
        (if (u8vector? _%bstr93661%_)
            (let ((_%bstr93666%_ _%bstr93661%_))
              (if (symbol? _%enc93662%_)
                  (let ((_%enc93676%_ _%enc93662%_))
                    (__bytes->string__% _%bstr93666%_ _%enc93676%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@661.25-661.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc93662%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.22-660.26"
               'contract:
               'u8vector?
               'value:
               _%bstr93661%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr93689%_)
        (let ((_%enc93691%_ 'UTF-8))
          (bytes->string__% _%bstr93689%_ _%enc93691%_))))
    (define bytes->string
      (lambda _g98024_
        (let ((_g98025_ (let () (declare (not safe)) (##length _g98024_))))
          (cond ((let () (declare (not safe)) (##fx= _g98025_ 1))
                 (apply bytes->string__0 _g98024_))
                ((let () (declare (not safe)) (##fx= _g98025_ 2))
                 (apply bytes->string__% _g98024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g98024_))))))
    (define __bytes->string__%
      (lambda (_%bstr93620%_ _%enc93621%_)
        (let* ((_%bstr93624%_ _%bstr93620%_) (_%enc93632%_ _%enc93621%_))
          (if (eq? _%enc93632%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr93624%_))
              (let* ((_%in93641%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc93632%_
                                   (cons 'init: (cons _%bstr93624%_ '()))))))
                     (_%len93643%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr93624%_)))
                     (_%out93645%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len93643%_)))
                     (_%n93647%_
                      (read-substring
                       _%out93645%_
                       '0
                       _%len93643%_
                       _%in93641%_)))
                (string-shrink! _%out93645%_ _%n93647%_)
                _%out93645%_)))))
    (define __bytes->string__0
      (lambda (_%bstr93653%_)
        (let ((_%enc93655%_ 'UTF-8))
          (__bytes->string__% _%bstr93653%_ _%enc93655%_))))
    (define __bytes->string
      (lambda _g98026_
        (let ((_g98027_ (let () (declare (not safe)) (##length _g98026_))))
          (cond ((let () (declare (not safe)) (##fx= _g98027_ 1))
                 (apply __bytes->string__0 _g98026_))
                ((let () (declare (not safe)) (##fx= _g98027_ 2))
                 (apply __bytes->string__% _g98026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g98026_))))))
    (define string->bytes__%
      (lambda (_%str93584%_ _%enc93585%_)
        (if (string? _%str93584%_)
            (let ((_%str93589%_ _%str93584%_))
              (if (symbol? _%enc93585%_)
                  (let ((_%enc93599%_ _%enc93585%_))
                    (__string->bytes__% _%str93589%_ _%enc93599%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc93585%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.25"
               'contract:
               'string?
               'value:
               _%str93584%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str93612%_)
        (let ((_%enc93614%_ 'UTF-8))
          (string->bytes__% _%str93612%_ _%enc93614%_))))
    (define string->bytes
      (lambda _g98028_
        (let ((_g98029_ (let () (declare (not safe)) (##length _g98028_))))
          (cond ((let () (declare (not safe)) (##fx= _g98029_ 1))
                 (apply string->bytes__0 _g98028_))
                ((let () (declare (not safe)) (##fx= _g98029_ 2))
                 (apply string->bytes__% _g98028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g98028_))))))
    (define __string->bytes__%
      (lambda (_%str93552%_ _%enc93553%_)
        (let* ((_%str93556%_ _%str93552%_) (_%enc93564%_ _%enc93553%_))
          (if (eq? _%enc93564%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str93556%_))
              (__substring->bytes__%
               _%str93556%_
               '0
               (let () (declare (not safe)) (##string-length _%str93556%_))
               _%enc93564%_)))))
    (define __string->bytes__0
      (lambda (_%str93576%_)
        (let ((_%enc93578%_ 'UTF-8))
          (__string->bytes__% _%str93576%_ _%enc93578%_))))
    (define __string->bytes
      (lambda _g98030_
        (let ((_g98031_ (let () (declare (not safe)) (##length _g98030_))))
          (cond ((let () (declare (not safe)) (##fx= _g98031_ 1))
                 (apply __string->bytes__0 _g98030_))
                ((let () (declare (not safe)) (##fx= _g98031_ 2))
                 (apply __string->bytes__% _g98030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g98030_))))))
    (define substring->bytes__%
      (lambda (_%str93500%_ _%start93501%_ _%end93502%_ _%enc93503%_)
        (if (string? _%str93500%_)
            (let ((_%str93507%_ _%str93500%_))
              (if (nonnegative-fixnum? _%start93501%_)
                  (let ((_%start93517%_ _%start93501%_))
                    (if (nonnegative-fixnum? _%end93502%_)
                        (let ((_%end93527%_ _%end93502%_))
                          (__substring->bytes__%
                           _%str93507%_
                           _%start93517%_
                           _%end93527%_
                           _%enc93503%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@681.25-681.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end93502%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@680.25-680.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start93501%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@679.25-679.28"
               'contract:
               'string?
               'value:
               _%str93500%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str93540%_ _%start93541%_ _%end93542%_)
        (let ((_%enc93544%_ 'UTF-8))
          (substring->bytes__%
           _%str93540%_
           _%start93541%_
           _%end93542%_
           _%enc93544%_))))
    (define substring->bytes
      (lambda _g98032_
        (let ((_g98033_ (let () (declare (not safe)) (##length _g98032_))))
          (cond ((let () (declare (not safe)) (##fx= _g98033_ 3))
                 (apply substring->bytes__0 _g98032_))
                ((let () (declare (not safe)) (##fx= _g98033_ 4))
                 (apply substring->bytes__% _g98032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g98032_))))))
    (define __substring->bytes__%
      (lambda (_%str93452%_ _%start93453%_ _%end93454%_ _%enc93455%_)
        (let* ((_%str93458%_ _%str93452%_)
               (_%start93466%_ _%start93453%_)
               (_%end93474%_ _%end93454%_))
          (if (eq? _%enc93455%_ 'UTF-8)
              (string->utf8 _%str93458%_ _%start93466%_ _%end93474%_)
              (let ((_%out93483%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc93455%_ '())))))
                (write-substring
                 _%str93458%_
                 _%start93466%_
                 _%end93474%_
                 _%out93483%_)
                (get-output-u8vector _%out93483%_))))))
    (define __substring->bytes__0
      (lambda (_%str93488%_ _%start93489%_ _%end93490%_)
        (let ((_%enc93492%_ 'UTF-8))
          (__substring->bytes__%
           _%str93488%_
           _%start93489%_
           _%end93490%_
           _%enc93492%_))))
    (define __substring->bytes
      (lambda _g98034_
        (let ((_g98035_ (let () (declare (not safe)) (##length _g98034_))))
          (cond ((let () (declare (not safe)) (##fx= _g98035_ 3))
                 (apply __substring->bytes__0 _g98034_))
                ((let () (declare (not safe)) (##fx= _g98035_ 4))
                 (apply __substring->bytes__% _g98034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g98034_))))))
    (define string-empty?
      (lambda (_%str93437%_)
        (if (string? _%str93437%_)
            (let ((_%str93441%_ _%str93437%_)) (__string-empty? _%str93441%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@690.22-690.25"
               'contract:
               'string?
               'value:
               _%str93437%_)
              '#!void))))
    (define __string-empty?
      (lambda (_%str93425%_)
        (let* ((_%str93428%_ _%str93425%_)
               (__tmp98036
                (let () (declare (not safe)) (##string-length _%str93428%_))))
          (declare (not safe))
          (##fxzero? __tmp98036))))
    (define string-index__%
      (lambda (_%str93377%_ _%char93378%_ _%start93379%_)
        (if (string? _%str93377%_)
            (let ((_%str93383%_ _%str93377%_))
              (if (char? _%char93378%_)
                  (let ((_%char93393%_ _%char93378%_))
                    (if (nonnegative-fixnum? _%start93379%_)
                        (let ((_%start93403%_ _%start93379%_))
                          (__string-index__%
                           _%str93383%_
                           _%char93393%_
                           _%start93403%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@696.21-696.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start93379%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@695.21-695.25"
                     'contract:
                     'char?
                     'value:
                     _%char93378%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@694.21-694.24"
               'contract:
               'string?
               'value:
               _%str93377%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str93416%_ _%char93417%_)
        (let ((_%start93419%_ '0))
          (string-index__% _%str93416%_ _%char93417%_ _%start93419%_))))
    (define string-index
      (lambda _g98037_
        (let ((_g98038_ (let () (declare (not safe)) (##length _g98037_))))
          (cond ((let () (declare (not safe)) (##fx= _g98038_ 2))
                 (apply string-index__0 _g98037_))
                ((let () (declare (not safe)) (##fx= _g98038_ 3))
                 (apply string-index__% _g98037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g98037_))))))
    (define __string-index__%
      (lambda (_%str93316%_ _%char93317%_ _%start93318%_)
        (let* ((_%str93321%_ _%str93316%_)
               (_%char93329%_ _%char93317%_)
               (_%start93337%_ _%start93318%_)
               (_%len93346%_
                (let () (declare (not safe)) (##string-length _%str93321%_))))
          (let _%lp93348%_ ((_%k93350%_ _%start93337%_))
            (let ((_%k93352%_ _%k93350%_))
              (if (let () (declare (not safe)) (##fx< _%k93352%_ _%len93346%_))
                  (if (eq? _%char93329%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str93321%_ _%k93352%_)))
                      _%k93352%_
                      (_%lp93348%_
                       (let () (declare (not safe)) (##fx+ _%k93352%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str93367%_ _%char93368%_)
        (let ((_%start93370%_ '0))
          (__string-index__% _%str93367%_ _%char93368%_ _%start93370%_))))
    (define __string-index
      (lambda _g98039_
        (let ((_g98040_ (let () (declare (not safe)) (##length _g98039_))))
          (cond ((let () (declare (not safe)) (##fx= _g98040_ 2))
                 (apply __string-index__0 _g98039_))
                ((let () (declare (not safe)) (##fx= _g98040_ 3))
                 (apply __string-index__% _g98039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g98039_))))))
    (define string-rindex__%
      (lambda (_%str93277%_ _%char93278%_ _%start93279%_)
        (if (string? _%str93277%_)
            (let ((_%str93283%_ _%str93277%_))
              (if (char? _%char93278%_)
                  (let ((_%char93293%_ _%char93278%_))
                    (__string-rindex__%
                     _%str93283%_
                     _%char93293%_
                     _%start93279%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@706.25-706.29"
                     'contract:
                     'char?
                     'value:
                     _%char93278%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@705.22-705.25"
               'contract:
               'string?
               'value:
               _%str93277%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str93306%_ _%char93307%_)
        (let ((_%start93309%_ '#f))
          (string-rindex__% _%str93306%_ _%char93307%_ _%start93309%_))))
    (define string-rindex
      (lambda _g98041_
        (let ((_g98042_ (let () (declare (not safe)) (##length _g98041_))))
          (cond ((let () (declare (not safe)) (##fx= _g98042_ 2))
                 (apply string-rindex__0 _g98041_))
                ((let () (declare (not safe)) (##fx= _g98042_ 3))
                 (apply string-rindex__% _g98041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g98041_))))))
    (define __string-rindex__%
      (lambda (_%str93219%_ _%char93220%_ _%start93221%_)
        (let* ((_%str93224%_ _%str93219%_)
               (_%char93232%_ _%char93220%_)
               (_%len93241%_
                (let () (declare (not safe)) (##string-length _%str93224%_)))
               (_%start93243%_
                (if (fixnum? _%start93221%_)
                    _%start93221%_
                    (let () (declare (not safe)) (##fx- _%len93241%_ '1)))))
          (let _%lp93246%_ ((_%k93248%_ _%start93243%_))
            (let ((_%k93250%_ _%k93248%_))
              (if (let () (declare (not safe)) (##fx>= _%k93250%_ '0))
                  (if (eq? _%char93232%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str93224%_ _%k93250%_)))
                      _%k93250%_
                      (_%lp93246%_
                       (let () (declare (not safe)) (##fx- _%k93250%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str93267%_ _%char93268%_)
        (let ((_%start93270%_ '#f))
          (__string-rindex__% _%str93267%_ _%char93268%_ _%start93270%_))))
    (define __string-rindex
      (lambda _g98043_
        (let ((_g98044_ (let () (declare (not safe)) (##length _g98043_))))
          (cond ((let () (declare (not safe)) (##fx= _g98044_ 2))
                 (apply __string-rindex__0 _g98043_))
                ((let () (declare (not safe)) (##fx= _g98044_ 3))
                 (apply __string-rindex__% _g98043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g98043_))))))
    (define string-split
      (lambda (_%str93193%_ _%char93194%_)
        (if (string? _%str93193%_)
            (let ((_%str93198%_ _%str93193%_))
              (if (char? _%char93194%_)
                  (let ((_%char93208%_ _%char93194%_))
                    (__string-split _%str93198%_ _%char93208%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@717.37-717.41"
                     'contract:
                     'char?
                     'value:
                     _%char93194%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@717.21-717.24"
               'contract:
               'string?
               'value:
               _%str93193%_)
              '#!void))))
    (define __string-split
      (lambda (_%str93134%_ _%char93135%_)
        (let* ((_%str93138%_ _%str93134%_)
               (_%char93146%_ _%char93135%_)
               (_%len93155%_
                (let () (declare (not safe)) (##string-length _%str93138%_))))
          (let _%lp93157%_ ((_%start93159%_ '0) (_%r93160%_ '()))
            (let* ((_%start93163%_ _%start93159%_)
                   (_%$e93176%_
                    (__string-index__%
                     _%str93138%_
                     _%char93146%_
                     _%start93163%_)))
              (if _%$e93176%_
                  ((lambda (_%end93179%_)
                     (let ((_%end93181%_ _%end93179%_))
                       (_%lp93157%_
                        (let () (declare (not safe)) (##fx+ _%end93181%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str93138%_
                                 _%start93163%_
                                 _%end93181%_))
                              _%r93160%_))))
                   _%$e93176%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start93163%_ _%len93155%_))
                      (__foldl1
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str93138%_
                                _%start93163%_
                                _%len93155%_)))
                       _%r93160%_)
                      (reverse! _%r93160%_))))))))
    (define string-join
      (lambda (_%strs92984%_ _%join92985%_)
        (letrec ((_%join-length92988%_
                  (lambda (_%strs93072%_ _%jlen93073%_)
                    (let _%lp93075%_ ((_%rest93077%_ _%strs93072%_)
                                      (_%len93078%_ '0))
                      (let* ((_%len93080%_ _%len93078%_)
                             (_%rest9308893096%_ _%rest93077%_)
                             (_%else9309093104%_ (lambda () '0))
                             (_%K9309293122%_
                              (lambda (_%rest93107%_ _%hd93108%_)
                                (if (string? _%hd93108%_)
                                    (let ((_%hd93110%_ _%hd93108%_))
                                      (if (pair? _%rest93107%_)
                                          (_%lp93075%_
                                           _%rest93107%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd93110%_))
                                                _%jlen93073%_
                                                _%len93080%_))
                                          (let ((__tmp98045
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd93110%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp98045 _%len93080%_))))
                                    (error '"expected string" _%hd93108%_)))))
                        (if (pair? _%rest9308893096%_)
                            (let ((_%hd9309393125%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest9308893096%_)))
                                  (_%tl9309493127%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest9308893096%_))))
                              (let* ((_%hd93130%_ _%hd9309393125%_)
                                     (_%rest93132%_ _%tl9309493127%_))
                                (_%K9309293122%_ _%rest93132%_ _%hd93130%_)))
                            (_%else9309093104%_)))))))
          (let* ((_%join92993%_
                  (if (char? _%join92985%_)
                      (let () (declare (not safe)) (##string _%join92985%_))
                      (if (string? _%join92985%_)
                          _%join92985%_
                          (error '"expected string or char" _%join92985%_))))
                 (_%jlen92995%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join92993%_)))
                 (_%olen92997%_
                  (_%join-length92988%_ _%strs92984%_ _%jlen92995%_))
                 (_%ostr92999%_
                  (let () (declare (not safe)) (##make-string _%olen92997%_))))
            (let _%lp93002%_ ((_%rest93004%_ _%strs92984%_) (_%k93005%_ '0))
              (let* ((_%k93008%_ _%k93005%_)
                     (_%rest9302493032%_ _%rest93004%_)
                     (_%else9302693040%_ (lambda () '""))
                     (_%K9302893060%_
                      (lambda (_%rest93043%_ _%hd93044%_)
                        (let* ((_%hd93046%_ _%hd93044%_)
                               (_%hdlen93058%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd93046%_))))
                          (if (pair? _%rest93043%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd93046%_
                                   '0
                                   _%hdlen93058%_
                                   _%ostr92999%_
                                   _%k93008%_))
                                (let ((__tmp98046
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k93008%_ _%hdlen93058%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join92993%_
                                   '0
                                   _%jlen92995%_
                                   _%ostr92999%_
                                   __tmp98046))
                                (_%lp93002%_
                                 _%rest93043%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k93008%_
                                          _%hdlen93058%_
                                          _%jlen92995%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd93046%_
                                   '0
                                   _%hdlen93058%_
                                   _%ostr92999%_
                                   _%k93008%_))
                                _%ostr92999%_))))))
                (if (pair? _%rest9302493032%_)
                    (let ((_%hd9302993063%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest9302493032%_)))
                          (_%tl9303093065%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest9302493032%_))))
                      (let* ((_%hd93068%_ _%hd9302993063%_)
                             (_%rest93070%_ _%tl9303093065%_))
                        (_%K9302893060%_ _%rest93070%_ _%hd93068%_)))
                    (_%else9302693040%_))))))))
    (define read-u8vector__%
      (lambda (_%bytes92910%_ _%port92911%_ _%start92912%_ _%end92913%_)
        (if (u8vector? _%bytes92910%_)
            (let ((_%bytes92917%_ _%bytes92910%_))
              (if (input-port? _%port92911%_)
                  (let ((_%port92927%_ _%port92911%_))
                    (if ((lambda (_%o92936%_)
                           (and (fixnum? _%o92936%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o92936%_ '0))
                                (let ((__tmp98047
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes92917%_))))
                                  (declare (not safe))
                                  (##fx< _%o92936%_ __tmp98047))))
                         _%start92912%_)
                        (let ((_%start92940%_ _%start92912%_))
                          (if ((lambda (_%o92949%_)
                                 (and (fixnum? _%o92949%_)
                                      (let ((__tmp98048
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes92917%_))))
                                        (declare (not safe))
                                        (##fx<= _%start92940%_
                                                _%o92949%_
                                                __tmp98048))))
                               _%end92913%_)
                              (let ((_%end92953%_ _%end92913%_))
                                (__read-u8vector__%
                                 _%bytes92917%_
                                 _%port92927%_
                                 _%start92940%_
                                 _%end92953%_))
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
                                 _%end92913%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@782.22-782.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start92912%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@781.22-781.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port92911%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@780.22-780.27"
               'contract:
               'u8vector?
               'value:
               _%bytes92910%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes92966%_ _%port92967%_)
        (let* ((_%start92969%_ '0)
               (_%end92971%_ (u8vector-length _%bytes92966%_)))
          (read-u8vector__%
           _%bytes92966%_
           _%port92967%_
           _%start92969%_
           _%end92971%_))))
    (define read-u8vector__1
      (lambda (_%bytes92973%_ _%port92974%_ _%start92975%_)
        (let ((_%end92977%_ (u8vector-length _%bytes92973%_)))
          (read-u8vector__%
           _%bytes92973%_
           _%port92974%_
           _%start92975%_
           _%end92977%_))))
    (define read-u8vector
      (lambda _g98049_
        (let ((_g98050_ (let () (declare (not safe)) (##length _g98049_))))
          (cond ((let () (declare (not safe)) (##fx= _g98050_ 2))
                 (apply read-u8vector__0 _g98049_))
                ((let () (declare (not safe)) (##fx= _g98050_ 3))
                 (apply read-u8vector__1 _g98049_))
                ((let () (declare (not safe)) (##fx= _g98050_ 4))
                 (apply read-u8vector__% _g98049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g98049_))))))
    (define __read-u8vector__%
      (lambda (_%bytes92849%_ _%port92850%_ _%start92851%_ _%end92852%_)
        (let* ((_%bytes92855%_ _%bytes92849%_)
               (_%port92863%_ _%port92850%_)
               (_%start92871%_ _%start92851%_)
               (_%end92879%_ _%end92852%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes92855%_
           _%start92871%_
           _%end92879%_
           _%port92863%_))))
    (define __read-u8vector__0
      (lambda (_%bytes92891%_ _%port92892%_)
        (let* ((_%start92894%_ '0)
               (_%end92896%_ (u8vector-length _%bytes92891%_)))
          (__read-u8vector__%
           _%bytes92891%_
           _%port92892%_
           _%start92894%_
           _%end92896%_))))
    (define __read-u8vector__1
      (lambda (_%bytes92898%_ _%port92899%_ _%start92900%_)
        (let ((_%end92902%_ (u8vector-length _%bytes92898%_)))
          (__read-u8vector__%
           _%bytes92898%_
           _%port92899%_
           _%start92900%_
           _%end92902%_))))
    (define __read-u8vector
      (lambda _g98051_
        (let ((_g98052_ (let () (declare (not safe)) (##length _g98051_))))
          (cond ((let () (declare (not safe)) (##fx= _g98052_ 2))
                 (apply __read-u8vector__0 _g98051_))
                ((let () (declare (not safe)) (##fx= _g98052_ 3))
                 (apply __read-u8vector__1 _g98051_))
                ((let () (declare (not safe)) (##fx= _g98052_ 4))
                 (apply __read-u8vector__% _g98051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g98051_))))))
    (define write-u8vector__%
      (lambda (_%bytes92779%_ _%port92780%_ _%start92781%_ _%end92782%_)
        (if (u8vector? _%bytes92779%_)
            (let ((_%bytes92786%_ _%bytes92779%_))
              (if (output-port? _%port92780%_)
                  (let* ((_%port92796%_ _%port92780%_)
                         (_%start92805%_ _%start92781%_))
                    (if ((lambda (_%o92813%_)
                           (and (fixnum? _%o92813%_)
                                (let ((__tmp98053
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes92786%_))))
                                  (declare (not safe))
                                  (##fx<= _%start92805%_
                                          _%o92813%_
                                          __tmp98053))))
                         _%end92782%_)
                        (let ((_%end92817%_ _%end92782%_))
                          (__write-u8vector__%
                           _%bytes92786%_
                           _%port92796%_
                           _%start92805%_
                           _%end92817%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@793.23-793.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end92782%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@791.23-791.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port92780%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@790.23-790.28"
               'contract:
               'u8vector?
               'value:
               _%bytes92779%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes92830%_ _%port92831%_)
        (let* ((_%start92833%_ '0)
               (_%end92835%_ (u8vector-length _%bytes92830%_)))
          (write-u8vector__%
           _%bytes92830%_
           _%port92831%_
           _%start92833%_
           _%end92835%_))))
    (define write-u8vector__1
      (lambda (_%bytes92837%_ _%port92838%_ _%start92839%_)
        (let ((_%end92841%_ (u8vector-length _%bytes92837%_)))
          (write-u8vector__%
           _%bytes92837%_
           _%port92838%_
           _%start92839%_
           _%end92841%_))))
    (define write-u8vector
      (lambda _g98054_
        (let ((_g98055_ (let () (declare (not safe)) (##length _g98054_))))
          (cond ((let () (declare (not safe)) (##fx= _g98055_ 2))
                 (apply write-u8vector__0 _g98054_))
                ((let () (declare (not safe)) (##fx= _g98055_ 3))
                 (apply write-u8vector__1 _g98054_))
                ((let () (declare (not safe)) (##fx= _g98055_ 4))
                 (apply write-u8vector__% _g98054_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g98054_))))))
    (define __write-u8vector__%
      (lambda (_%bytes92718%_ _%port92719%_ _%start92720%_ _%end92721%_)
        (let* ((_%bytes92724%_ _%bytes92718%_)
               (_%port92732%_ _%port92719%_)
               (_%start92740%_ _%start92720%_)
               (_%end92748%_ _%end92721%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes92724%_
           _%start92740%_
           _%end92748%_
           _%port92732%_))))
    (define __write-u8vector__0
      (lambda (_%bytes92760%_ _%port92761%_)
        (let* ((_%start92763%_ '0)
               (_%end92765%_ (u8vector-length _%bytes92760%_)))
          (__write-u8vector__%
           _%bytes92760%_
           _%port92761%_
           _%start92763%_
           _%end92765%_))))
    (define __write-u8vector__1
      (lambda (_%bytes92767%_ _%port92768%_ _%start92769%_)
        (let ((_%end92771%_ (u8vector-length _%bytes92767%_)))
          (__write-u8vector__%
           _%bytes92767%_
           _%port92768%_
           _%start92769%_
           _%end92771%_))))
    (define __write-u8vector
      (lambda _g98056_
        (let ((_g98057_ (let () (declare (not safe)) (##length _g98056_))))
          (cond ((let () (declare (not safe)) (##fx= _g98057_ 2))
                 (apply __write-u8vector__0 _g98056_))
                ((let () (declare (not safe)) (##fx= _g98057_ 3))
                 (apply __write-u8vector__1 _g98056_))
                ((let () (declare (not safe)) (##fx= _g98057_ 4))
                 (apply __write-u8vector__% _g98056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g98056_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag92686%_
               _%dbg-exprs92687%_
               _%dbg-thunks92688%_
               _%expr92689%_
               _%thunk92690%_)
        (letrec ((_%o92692%_ (current-output-port))
                 (_%e92693%_ (current-error-port))
                 (_%p92694%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f92695%_
                  (lambda ()
                    (force-output _%o92692%_)
                    (force-output _%e92693%_)))
                 (_%d92696%_
                  (lambda (_%x92703%_) (display _%x92703%_ _%e92693%_)))
                 (_%w92697%_
                  (lambda (_%x92705%_) (_%p92694%_ _%x92705%_ _%e92693%_)))
                 (_%n92698%_ (lambda () (newline _%e92693%_)))
                 (_%v92699%_
                  (lambda (_%l92708%_)
                    (for-each
                     (lambda (_%x92710%_)
                       (_%d92696%_ '" ")
                       (_%w92697%_ _%x92710%_))
                     _%l92708%_)
                    (_%n92698%_)))
                 (_%x92700%_
                  (lambda (_%expr92712%_ _%thunk92713%_)
                    (_%f92695%_)
                    (_%d92696%_ '"  ")
                    (_%w92697%_ _%expr92712%_)
                    (_%d92696%_ '" =>")
                    (call-with-values
                     _%thunk92713%_
                     (lambda _%x92715%_
                       (_%v92699%_ _%x92715%_)
                       (_%f92695%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x92715%_)))))))
          (if _%tag92686%_
              (begin
                (if (eq? _%tag92686%_ '#!void)
                    '#!void
                    (begin
                      (_%f92695%_)
                      (_%d92696%_ _%tag92686%_)
                      (_%n92698%_)))
                (for-each _%x92700%_ _%dbg-exprs92687%_ _%dbg-thunks92688%_)
                (if _%thunk92690%_
                    (_%x92700%_ _%expr92689%_ _%thunk92690%_)
                    '#!void))
              (if _%thunk92690%_ (_%thunk92690%_) '#!void)))))))
