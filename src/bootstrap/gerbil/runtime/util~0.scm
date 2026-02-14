(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1771101392)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args111707%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args111707%_))
          (newline))))
    (define display*
      (lambda _%args111704%_
        (let () (declare (not safe)) (##for-each display _%args111704%_))))
    (define __file-newer?
      (lambda (_%file1111495%_ _%file2111496%_)
        (let* ((_%file1111499%_ _%file1111495%_)
               (_%file2111507%_ _%file2111496%_))
          (letrec ((_%__modification-time111651%_
                    (lambda (_%file111692%_)
                      (let* ((_%file111695%_ _%file111692%_)
                             (__tmp114483
                              (let ((__tmp114484
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file111695%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp114484))))
                        (declare (not safe))
                        (##time->seconds __tmp114483))))
                   (_%modification-time111652%_
                    (lambda (_%file111680%_)
                      (let ((_%file111683%_ _%file111680%_))
                        (_%__modification-time111651%_ _%file111683%_)))))
            (let ((__tmp114486
                   (let* ((_%file111654%_ _%file1111499%_)
                          (_%file111658%_ _%file111654%_))
                     (_%__modification-time111651%_ _%file111658%_)))
                  (__tmp114485
                   (let* ((_%file111667%_ _%file2111507%_)
                          (_%file111671%_ _%file111667%_))
                     (_%__modification-time111651%_ _%file111671%_))))
              (declare (not safe))
              (##fl> __tmp114486 __tmp114485))))))
    (define file-newer?
      (lambda (_%file1101081%_ _%file2101082%_)
        (if (string? _%file1101081%_)
            (let ((_%file1101086%_ _%file1101081%_))
              (if (string? _%file2101082%_)
                  (let ((_%file2101096%_ _%file2101082%_))
                    (__file-newer? _%file1101086%_ _%file2101096%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@98.20-98.25"
                     'contract:
                     'string?
                     'value:
                     _%file2101082%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@97.20-97.25"
               'contract:
               'string?
               'value:
               _%file1101081%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir111215%_ _%perms111216%_)
        (let* ((_%dir111219%_ _%dir111215%_) (_%perms111227%_ _%perms111216%_))
          (letrec ((_%__create1111371%_
                    (lambda (_%path111470%_)
                      (let ((_%path111473%_ _%path111470%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path111473%_))
                            (if (eq? (file-type _%path111473%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path111473%_))
                            (if _%perms111227%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path111473%_
                                             (cons 'permissions:
                                                   (cons _%perms111227%_
                                                         '())))))
                                (create-directory _%path111473%_))))))
                   (_%create1111372%_
                    (lambda (_%path111458%_)
                      (let ((_%path111461%_ _%path111458%_))
                        (_%__create1111371%_ _%path111461%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir111219%_))
                '#!void
                (let _%lp111374%_ ((_%start111376%_ '0))
                  (let ((_%$e111423%_
                         (let* ((_%str111378%_ _%dir111219%_)
                                (_%char111381%_ '#\/)
                                (_%start111384%_ _%start111376%_)
                                (_%str111389%_ _%str111378%_)
                                (_%char111403%_ _%char111381%_))
                           (if (nonnegative-fixnum? _%start111384%_)
                               (let ((_%start111413%_ _%start111384%_))
                                 (__string-index__%
                                  _%str111389%_
                                  _%char111403%_
                                  _%start111413%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start111384%_)
                                 '#!void)))))
                    (if _%$e111423%_
                        ((lambda (_%x111426%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x111426%_ '0))
                               (let* ((_%path111428%_
                                       (substring
                                        _%dir111219%_
                                        '0
                                        _%x111426%_))
                                      (_%path111432%_ _%path111428%_))
                                 (_%__create1111371%_ _%path111432%_))
                               '#!void)
                           (_%lp111374%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x111426%_ '1))))
                         _%$e111423%_)
                        (let* ((_%path111444%_ _%dir111219%_)
                               (_%path111448%_ _%path111444%_))
                          (_%__create1111371%_ _%path111448%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir111488%_)
        (let ((_%perms111490%_ '493))
          (__create-directory*__% _%dir111488%_ _%perms111490%_))))
    (define __create-directory*
      (lambda _g114487_
        (let ((_g114488_ (let () (declare (not safe)) (##length _g114487_))))
          (cond ((let () (declare (not safe)) (##fx= _g114488_ 1))
                 (apply __create-directory*__0 _g114487_))
                ((let () (declare (not safe)) (##fx= _g114488_ 2))
                 (apply __create-directory*__% _g114487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g114487_))))))
    (define create-directory*__%
      (lambda (_%dir101227%_ _%perms101228%_)
        (if (string? _%dir101227%_)
            (let ((_%dir101232%_ _%dir101227%_))
              (if (fixnum? _%perms101228%_)
                  (let ((_%perms101242%_ _%perms101228%_))
                    (__create-directory*__% _%dir101232%_ _%perms101242%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@109.26-109.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms101228%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@108.26-108.29"
               'contract:
               'string?
               'value:
               _%dir101227%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir101255%_)
        (let ((_%perms101257%_ '493))
          (create-directory*__% _%dir101255%_ _%perms101257%_))))
    (define create-directory*
      (lambda _g114489_
        (let ((_g114490_ (let () (declare (not safe)) (##length _g114489_))))
          (cond ((let () (declare (not safe)) (##fx= _g114490_ 1))
                 (apply create-directory*__0 _g114489_))
                ((let () (declare (not safe)) (##fx= _g114490_ 2))
                 (apply create-directory*__% _g114489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g114489_))))))
    (define __move-file__%
      (lambda (_%src111158%_ _%dest111159%_ _%replace?111160%_)
        (let* ((_%src111163%_ _%src111158%_)
               (_%dest111171%_ _%dest111159%_)
               (_%replace?111179%_ _%replace?111160%_))
          (letrec ((_%force-move-it111188%_
                    (lambda ()
                      (let ((_%tmp111194%_
                             (if _%replace?111179%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest111171%_))
                                     (let ((__tmp114491
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest111171%_
                                        '"."
                                        __tmp114491))
                                     '#f)
                                 '#f)))
                        (if _%tmp111194%_
                            (rename-file _%dest111171%_ _%tmp111194%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e111196%_)
                           (if _%tmp111194%_
                               (rename-file _%tmp111194%_ _%dest111171%_ '#t)
                               '#!void)
                           (raise _%e111196%_))
                         (lambda ()
                           (let ((_%fi111199%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src111163%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi111199%_))
                                      'symbolic-link)
                                 (let ((__tmp114492
                                        (path-normalize _%src111163%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp114492
                                    _%dest111171%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src111163%_
                                    _%dest111171%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src111163%_))
                           (if _%tmp111194%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp111194%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e111190%_)
               (if (let () (declare (not safe)) (##file-exists? _%src111163%_))
                   (_%force-move-it111188%_)
                   (raise _%e111190%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src111163%_
                  _%dest111171%_
                  _%replace?111179%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src111205%_ _%dest111206%_)
        (let ((_%replace?111208%_ '#t))
          (__move-file__% _%src111205%_ _%dest111206%_ _%replace?111208%_))))
    (define __move-file
      (lambda _g114493_
        (let ((_g114494_ (let () (declare (not safe)) (##length _g114493_))))
          (cond ((let () (declare (not safe)) (##fx= _g114494_ 2))
                 (apply __move-file__0 _g114493_))
                ((let () (declare (not safe)) (##fx= _g114494_ 3))
                 (apply __move-file__% _g114493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g114493_))))))
    (define move-file__%
      (lambda (_%src101383%_ _%dest101384%_ _%replace?101385%_)
        (if (string? _%src101383%_)
            (let ((_%src101389%_ _%src101383%_))
              (if (string? _%dest101384%_)
                  (let ((_%dest101399%_ _%dest101384%_))
                    (if (boolean? _%replace?101385%_)
                        (let ((_%replace?101409%_ _%replace?101385%_))
                          (__move-file__%
                           _%src101389%_
                           _%dest101399%_
                           _%replace?101409%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@133.51-133.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?101385%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@133.34-133.38"
                     'contract:
                     'string?
                     'value:
                     _%dest101384%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@133.18-133.21"
               'contract:
               'string?
               'value:
               _%src101383%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src101422%_ _%dest101423%_)
        (let ((_%replace?101425%_ '#t))
          (move-file__% _%src101422%_ _%dest101423%_ _%replace?101425%_))))
    (define move-file
      (lambda _g114495_
        (let ((_g114496_ (let () (declare (not safe)) (##length _g114495_))))
          (cond ((let () (declare (not safe)) (##fx= _g114496_ 2))
                 (apply move-file__0 _g114495_))
                ((let () (declare (not safe)) (##fx= _g114496_ 3))
                 (apply move-file__% _g114495_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g114495_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore111154%_ '#t))
    (define true? (lambda (_%obj111151%_) (eq? _%obj111151%_ '#t)))
    (define false (lambda _%ignore111148%_ '#f))
    (define void (lambda _%ignore111145%_ '#!void))
    (define void? (lambda (_%obj111142%_) (eq? _%obj111142%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj111139%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj111139%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj111136%_) (eq? _%obj111136%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj111133%_) (eq? _%obj111133%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj111130%_) (eq? _%obj111130%_ '#!optional)))
    (define immediate?
      (lambda (_%obj111127%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj111127%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj111124%_)
        (if (fixnum? _%obj111124%_)
            (let () (declare (not safe)) (##fx>= _%obj111124%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj111118%_)
        (let ((_%$e111121%_ (pair? _%obj111118%_)))
          (if _%$e111121%_ _%$e111121%_ (null? _%obj111118%_)))))
    (define values-count
      (lambda (_%obj111115%_)
        (if (let () (declare (not safe)) (##values? _%obj111115%_))
            (let () (declare (not safe)) (##values-length _%obj111115%_))
            '1)))
    (define __values-ref
      (lambda (_%obj111102%_ _%k111103%_)
        (let ((_%k111106%_ _%k111103%_))
          (if (let () (declare (not safe)) (##values? _%obj111102%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj111102%_ _%k111106%_))
              _%obj111102%_))))
    (define values-ref
      (lambda (_%obj101551%_ _%k101552%_)
        (if (fixnum? _%k101552%_)
            (let ((_%k101556%_ _%k101552%_))
              (__values-ref _%obj101551%_ _%k101556%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@267.23-267.24"
               'contract:
               'fixnum?
               'value:
               _%k101552%_)
              '#!void))))
    (define values->list
      (lambda (_%obj111099%_)
        (if (let () (declare (not safe)) (##values? _%obj111099%_))
            (let () (declare (not safe)) (##values->list _%obj111099%_))
            (list _%obj111099%_))))
    (define __foldl1
      (lambda (_%f111047%_ _%iv111048%_ _%lst111049%_)
        (let ((_%f111052%_ _%f111047%_))
          (let _%lp111061%_ ((_%rest111063%_ _%lst111049%_)
                             (_%r111064%_ _%iv111048%_))
            (let* ((_%rest111065111073%_ _%rest111063%_)
                   (_%else111067111081%_ (lambda () _%r111064%_))
                   (_%K111069111087%_
                    (lambda (_%rest111084%_ _%x111085%_)
                      (_%lp111061%_
                       _%rest111084%_
                       (let ()
                         (declare (not safe))
                         (_%f111052%_ _%x111085%_ _%r111064%_))))))
              (if (pair? _%rest111065111073%_)
                  (let ((_%hd111070111090%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111065111073%_)))
                        (_%tl111071111092%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111065111073%_))))
                    (let* ((_%x111095%_ _%hd111070111090%_)
                           (_%rest111097%_ _%tl111071111092%_))
                      (_%K111069111087%_ _%rest111097%_ _%x111095%_)))
                  (_%else111067111081%_)))))))
    (define foldl1
      (lambda (_%f101686%_ _%iv101687%_ _%lst101688%_)
        (if (procedure? _%f101686%_)
            (let ((_%f101692%_ _%f101686%_))
              (__foldl1 _%f101692%_ _%iv101687%_ _%lst101688%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@290.15-290.16"
               'contract:
               'procedure?
               'value:
               _%f101686%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f110960%_ _%iv110961%_ _%lst1110962%_ _%lst2110963%_)
        (let ((_%f110966%_ _%f110960%_))
          (let _%lp110975%_ ((_%rest1110977%_ _%lst1110962%_)
                             (_%rest2110978%_ _%lst2110963%_)
                             (_%r110979%_ _%iv110961%_))
            (let* ((_%rest1110980110988%_ _%rest1110977%_)
                   (_%else110982110996%_ (lambda () _%r110979%_))
                   (_%K110984111035%_
                    (lambda (_%rest1110999%_ _%x1111000%_)
                      (let* ((_%rest2111001111009%_ _%rest2110978%_)
                             (_%else111003111017%_ (lambda () _%r110979%_))
                             (_%K111005111023%_
                              (lambda (_%rest2111020%_ _%x2111021%_)
                                (_%lp110975%_
                                 _%rest1110999%_
                                 _%rest2111020%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f110966%_
                                    _%x1111000%_
                                    _%x2111021%_
                                    _%r110979%_))))))
                        (if (pair? _%rest2111001111009%_)
                            (let ((_%hd111006111026%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2111001111009%_)))
                                  (_%tl111007111028%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2111001111009%_))))
                              (let* ((_%x2111031%_ _%hd111006111026%_)
                                     (_%rest2111033%_ _%tl111007111028%_))
                                (_%K111005111023%_
                                 _%rest2111033%_
                                 _%x2111031%_)))
                            (_%else111003111017%_))))))
              (if (pair? _%rest1110980110988%_)
                  (let ((_%hd110985111038%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110980110988%_)))
                        (_%tl110986111040%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110980110988%_))))
                    (let* ((_%x1111043%_ _%hd110985111038%_)
                           (_%rest1111045%_ _%tl110986111040%_))
                      (_%K110984111035%_ _%rest1111045%_ _%x1111043%_)))
                  (_%else110982110996%_)))))))
    (define foldl2
      (lambda (_%f101822%_ _%iv101823%_ _%lst1101824%_ _%lst2101825%_)
        (if (procedure? _%f101822%_)
            (let ((_%f101829%_ _%f101822%_))
              (__foldl2
               _%f101829%_
               _%iv101823%_
               _%lst1101824%_
               _%lst2101825%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@297.15-297.16"
               'contract:
               'procedure?
               'value:
               _%f101822%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f110893%_ _%iv110894%_ _%lst110895%_)
        (let* ((_%f110897%_ _%f110893%_)
               (_%iv110900%_ _%iv110894%_)
               (_%lst110903%_ _%lst110895%_))
          (if (procedure? _%f110897%_)
              (let ((_%f110908%_ _%f110897%_))
                (__foldl1 _%f110908%_ _%iv110900%_ _%lst110903%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110897%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f110921%_ _%iv110922%_ _%lst1110923%_ _%lst2110924%_)
        (let* ((_%f110926%_ _%f110921%_)
               (_%iv110929%_ _%iv110922%_)
               (_%lst1110932%_ _%lst1110923%_)
               (_%lst2110935%_ _%lst2110924%_))
          (if (procedure? _%f110926%_)
              (let ((_%f110940%_ _%f110926%_))
                (__foldl2
                 _%f110940%_
                 _%iv110929%_
                 _%lst1110932%_
                 _%lst2110935%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110926%_)
                '#!void)))))
    (define foldl
      (lambda _g114497_
        (let ((_g114498_ (let () (declare (not safe)) (##length _g114497_))))
          (cond ((let () (declare (not safe)) (##fx= _g114498_ 3))
                 (apply foldl__0 _g114497_))
                ((let () (declare (not safe)) (##fx= _g114498_ 4))
                 (apply foldl__1 _g114497_))
                ((let () (declare (not safe)) (##fx>= _g114498_ 4))
                 (apply foldl* _g114497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g114497_))))))
    (define __foldl*
      (lambda (_%f110824%_ _%iv110825%_ . _%rest110826%_)
        (let ((_%f110829%_ _%f110824%_))
          (let _%recur110838%_ ((_%iv110840%_ _%iv110825%_)
                                (_%rest110841%_ _%rest110826%_))
            (if (let* ((_%f110843%_ pair?)
                       (_%lst110846%_ _%rest110841%_)
                       (_%f110851%_ _%f110843%_))
                  (__andmap1 _%f110851%_ _%lst110846%_))
                (_%recur110838%_
                 (let ((__tmp114499
                        (let* ((_%f110870%_
                                (lambda (_%xs110867%_ _%r110868%_)
                                  (cons (car _%xs110867%_) _%r110868%_)))
                               (_%iv110873%_ (list _%iv110840%_))
                               (_%lst110876%_ _%rest110841%_)
                               (_%f110881%_ _%f110870%_))
                          (__foldr1 _%f110881%_ _%iv110873%_ _%lst110876%_))))
                   (declare (not safe))
                   (##apply _%f110829%_ __tmp114499))
                 (map cdr _%rest110841%_))
                _%iv110840%_)))))
    (define foldl*
      (lambda (_%f101959%_ _%iv101960%_ . _%rest101961%_)
        (if (procedure? _%f101959%_)
            (let ((_%f101965%_ _%f101959%_))
              (declare (not safe))
              (##apply __foldl* _%f101965%_ _%iv101960%_ _%rest101961%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@315.15-315.16"
               'contract:
               'procedure?
               'value:
               _%f101959%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f110773%_ _%iv110774%_ _%lst110775%_)
        (let ((_%f110778%_ _%f110773%_))
          (let _%recur110787%_ ((_%rest110789%_ _%lst110775%_))
            (let* ((_%rest110790110798%_ _%rest110789%_)
                   (_%else110792110806%_ (lambda () _%iv110774%_))
                   (_%K110794110812%_
                    (lambda (_%rest110809%_ _%x110810%_)
                      (let ((__tmp114500 (_%recur110787%_ _%rest110809%_)))
                        (declare (not safe))
                        (_%f110778%_ _%x110810%_ __tmp114500)))))
              (if (pair? _%rest110790110798%_)
                  (let ((_%hd110795110815%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110790110798%_)))
                        (_%tl110796110817%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110790110798%_))))
                    (let* ((_%x110820%_ _%hd110795110815%_)
                           (_%rest110822%_ _%tl110796110817%_))
                      (_%K110794110812%_ _%rest110822%_ _%x110820%_)))
                  (_%else110792110806%_)))))))
    (define foldr1
      (lambda (_%f102095%_ _%iv102096%_ _%lst102097%_)
        (if (procedure? _%f102095%_)
            (let ((_%f102101%_ _%f102095%_))
              (__foldr1 _%f102101%_ _%iv102096%_ _%lst102097%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@325.15-325.16"
               'contract:
               'procedure?
               'value:
               _%f102095%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f110687%_ _%iv110688%_ _%lst1110689%_ _%lst2110690%_)
        (let ((_%f110693%_ _%f110687%_))
          (let _%recur110702%_ ((_%rest1110704%_ _%lst1110689%_)
                                (_%rest2110705%_ _%lst2110690%_))
            (let* ((_%rest1110706110714%_ _%rest1110704%_)
                   (_%else110708110722%_ (lambda () _%iv110688%_))
                   (_%K110710110761%_
                    (lambda (_%rest1110725%_ _%x1110726%_)
                      (let* ((_%rest2110727110735%_ _%rest2110705%_)
                             (_%else110729110743%_ (lambda () _%iv110688%_))
                             (_%K110731110749%_
                              (lambda (_%rest2110746%_ _%x2110747%_)
                                (let ((__tmp114501
                                       (_%recur110702%_
                                        _%rest1110725%_
                                        _%rest2110746%_)))
                                  (declare (not safe))
                                  (_%f110693%_
                                   _%x1110726%_
                                   _%x2110747%_
                                   __tmp114501)))))
                        (if (pair? _%rest2110727110735%_)
                            (let ((_%hd110732110752%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110727110735%_)))
                                  (_%tl110733110754%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110727110735%_))))
                              (let* ((_%x2110757%_ _%hd110732110752%_)
                                     (_%rest2110759%_ _%tl110733110754%_))
                                (_%K110731110749%_
                                 _%rest2110759%_
                                 _%x2110757%_)))
                            (_%else110729110743%_))))))
              (if (pair? _%rest1110706110714%_)
                  (let ((_%hd110711110764%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110706110714%_)))
                        (_%tl110712110766%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110706110714%_))))
                    (let* ((_%x1110769%_ _%hd110711110764%_)
                           (_%rest1110771%_ _%tl110712110766%_))
                      (_%K110710110761%_ _%rest1110771%_ _%x1110769%_)))
                  (_%else110708110722%_)))))))
    (define foldr2
      (lambda (_%f102231%_ _%iv102232%_ _%lst1102233%_ _%lst2102234%_)
        (if (procedure? _%f102231%_)
            (let ((_%f102238%_ _%f102231%_))
              (__foldr2
               _%f102238%_
               _%iv102232%_
               _%lst1102233%_
               _%lst2102234%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@332.15-332.16"
               'contract:
               'procedure?
               'value:
               _%f102231%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f110620%_ _%iv110621%_ _%lst110622%_)
        (let* ((_%f110624%_ _%f110620%_)
               (_%iv110627%_ _%iv110621%_)
               (_%lst110630%_ _%lst110622%_))
          (if (procedure? _%f110624%_)
              (let ((_%f110635%_ _%f110624%_))
                (__foldr1 _%f110635%_ _%iv110627%_ _%lst110630%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110624%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f110648%_ _%iv110649%_ _%lst1110650%_ _%lst2110651%_)
        (let* ((_%f110653%_ _%f110648%_)
               (_%iv110656%_ _%iv110649%_)
               (_%lst1110659%_ _%lst1110650%_)
               (_%lst2110662%_ _%lst2110651%_))
          (if (procedure? _%f110653%_)
              (let ((_%f110667%_ _%f110653%_))
                (__foldr2
                 _%f110667%_
                 _%iv110656%_
                 _%lst1110659%_
                 _%lst2110662%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110653%_)
                '#!void)))))
    (define foldr
      (lambda _g114502_
        (let ((_g114503_ (let () (declare (not safe)) (##length _g114502_))))
          (cond ((let () (declare (not safe)) (##fx= _g114503_ 3))
                 (apply foldr__0 _g114502_))
                ((let () (declare (not safe)) (##fx= _g114503_ 4))
                 (apply foldr__1 _g114502_))
                ((let () (declare (not safe)) (##fx>= _g114503_ 4))
                 (apply foldr* _g114502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g114502_))))))
    (define __foldr*
      (lambda (_%f110552%_ _%iv110553%_ . _%rest110554%_)
        (let ((_%f110557%_ _%f110552%_))
          (let _%recur110566%_ ((_%rest110568%_ _%rest110554%_))
            (if (let* ((_%f110570%_ pair?)
                       (_%lst110573%_ _%rest110568%_)
                       (_%f110578%_ _%f110570%_))
                  (__andmap1 _%f110578%_ _%lst110573%_))
                (let ((__tmp114504
                       (let* ((_%f110597%_
                               (lambda (_%xs110594%_ _%r110595%_)
                                 (cons (car _%xs110594%_) _%r110595%_)))
                              (_%iv110600%_
                               (list (_%recur110566%_
                                      (map cdr _%rest110568%_))))
                              (_%lst110603%_ _%rest110568%_)
                              (_%f110608%_ _%f110597%_))
                         (__foldr1 _%f110608%_ _%iv110600%_ _%lst110603%_))))
                  (declare (not safe))
                  (##apply _%f110557%_ __tmp114504))
                _%iv110553%_)))))
    (define foldr*
      (lambda (_%f102368%_ _%iv102369%_ . _%rest102370%_)
        (if (procedure? _%f102368%_)
            (let ((_%f102374%_ _%f102368%_))
              (declare (not safe))
              (##apply __foldr* _%f102374%_ _%iv102369%_ _%rest102370%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@350.15-350.16"
               'contract:
               'procedure?
               'value:
               _%f102368%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%l110439%_)
        (let* ((_%l110440110453%_ _%l110439%_)
               (_%E110444110457%_
                (lambda ()
                  (error '"No clause matching"
                         _%l110440110453%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K110449110542%_
                 (lambda (_%r110540%_) (remove-nulls! _%r110540%_)))
                (_%K110446110529%_
                 (lambda (_%r110469%_)
                   (let _%loop110471%_ ((_%l110473%_ _%l110439%_)
                                        (_%r110474%_ _%r110469%_))
                     (let* ((_%r110475110488%_ _%r110474%_)
                            (_%E110479110492%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r110475110488%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K110484110519%_
                              (lambda (_%rr110517%_)
                                (let ((__tmp114506 _%l110473%_)
                                      (__tmp114505
                                       (remove-nulls! _%rr110517%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp114506 __tmp114505))))
                             (_%K110481110506%_
                              (lambda (_%rr110504%_)
                                (_%loop110471%_ _%r110474%_ _%rr110504%_)))
                             (_%K110480110497%_ (lambda () '#!void)))
                         (if (pair? _%r110475110488%_)
                             (let ((_%tl110486110524%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r110475110488%_)))
                                   (_%hd110485110522%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r110475110488%_))))
                               (if (null? _%hd110485110522%_)
                                   (let ((_%rr110527%_ _%tl110486110524%_))
                                     (_%K110484110519%_ _%rr110527%_))
                                   (let ((_%rr110512%_ _%tl110486110524%_))
                                     (_%K110481110506%_ _%rr110512%_))))
                             '#!void))))
                   _%l110439%_))
                (_%K110445110462%_ (lambda () _%l110439%_)))
            (if (pair? _%l110440110453%_)
                (let ((_%tl110451110547%_
                       (let () (declare (not safe)) (##cdr _%l110440110453%_)))
                      (_%hd110450110545%_
                       (let ()
                         (declare (not safe))
                         (##car _%l110440110453%_))))
                  (if (null? _%hd110450110545%_)
                      (let ((_%r110550%_ _%tl110451110547%_))
                        (remove-nulls! _%r110550%_))
                      (let ((_%r110535%_ _%tl110451110547%_))
                        (_%K110446110529%_ _%r110535%_))))
                (_%K110445110462%_))))))
    (define append1!
      (lambda (_%l110424%_ _%x110425%_)
        (let ((_%l2110428%_ (cons _%x110425%_ '())))
          (if (pair? _%l110424%_)
              (let ((_%l110430%_ _%l110424%_))
                (let ((__tmp114507
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l110430%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp114507 _%l2110428%_))
                _%l110430%_)
              _%l2110428%_))))
    (define __append-reverse-until
      (lambda (_%pred110366%_ _%rhead110367%_ _%tail110368%_)
        (let ((_%pred110371%_ _%pred110366%_))
          (let _%loop110380%_ ((_%rhead110382%_ _%rhead110367%_)
                               (_%tail110383%_ _%tail110368%_))
            (let* ((_%rhead110385110394%_ _%rhead110382%_)
                   (_%E110388110398%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead110385110394%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K110392110421%_ (lambda () (values '() _%tail110383%_)))
                    (_%K110389110405%_
                     (lambda (_%r110402%_ _%a110403%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred110371%_ _%a110403%_))
                           (values _%rhead110382%_ _%tail110383%_)
                           (_%loop110380%_
                            _%r110402%_
                            (cons _%a110403%_ _%tail110383%_))))))
                (let ((_%try-match110387110417%_
                       (lambda ()
                         (if (pair? _%rhead110385110394%_)
                             (let ((_%tl110391110410%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead110385110394%_)))
                                   (_%hd110390110408%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead110385110394%_))))
                               (let ((_%a110413%_ _%hd110390110408%_)
                                     (_%r110415%_ _%tl110391110410%_))
                                 (_%K110389110405%_ _%r110415%_ _%a110413%_)))
                             (_%E110388110398%_)))))
                  (if (null? _%rhead110385110394%_)
                      (_%K110392110421%_)
                      (_%try-match110387110417%_)))))))))
    (define append-reverse-until
      (lambda (_%pred102504%_ _%rhead102505%_ _%tail102506%_)
        (if (procedure? _%pred102504%_)
            (let ((_%pred102510%_ _%pred102504%_))
              (__append-reverse-until
               _%pred102510%_
               _%rhead102505%_
               _%tail102506%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@390.29-390.33"
               'contract:
               'procedure?
               'value:
               _%pred102504%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f110315%_ _%lst110316%_)
        (let ((_%f110319%_ _%f110315%_))
          (let _%lp110328%_ ((_%rest110330%_ _%lst110316%_))
            (let* ((_%rest110332110340%_ _%rest110330%_)
                   (_%else110334110348%_ (lambda () '#t))
                   (_%K110336110354%_
                    (lambda (_%rest110351%_ _%x110352%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f110319%_ _%x110352%_))
                          (_%lp110328%_ _%rest110351%_)
                          '#f))))
              (if (pair? _%rest110332110340%_)
                  (let ((_%hd110337110357%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110332110340%_)))
                        (_%tl110338110359%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110332110340%_))))
                    (let* ((_%x110362%_ _%hd110337110357%_)
                           (_%rest110364%_ _%tl110338110359%_))
                      (_%K110336110354%_ _%rest110364%_ _%x110362%_)))
                  (_%else110334110348%_)))))))
    (define andmap1
      (lambda (_%f102640%_ _%lst102641%_)
        (if (procedure? _%f102640%_)
            (let ((_%f102645%_ _%f102640%_))
              (__andmap1 _%f102645%_ _%lst102641%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@401.16-401.17"
               'contract:
               'procedure?
               'value:
               _%f102640%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f110229%_ _%lst1110230%_ _%lst2110231%_)
        (let ((_%f110234%_ _%f110229%_))
          (let _%lp110243%_ ((_%rest1110245%_ _%lst1110230%_)
                             (_%rest2110246%_ _%lst2110231%_))
            (let* ((_%rest1110248110256%_ _%rest1110245%_)
                   (_%else110250110264%_ (lambda () '#t))
                   (_%K110252110303%_
                    (lambda (_%rest1110267%_ _%x1110268%_)
                      (let* ((_%rest2110269110277%_ _%rest2110246%_)
                             (_%else110271110285%_ (lambda () '#t))
                             (_%K110273110291%_
                              (lambda (_%rest2110288%_ _%x2110289%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f110234%_ _%x1110268%_ _%x2110289%_))
                                    (_%lp110243%_
                                     _%rest1110267%_
                                     _%rest2110288%_)
                                    '#f))))
                        (if (pair? _%rest2110269110277%_)
                            (let ((_%hd110274110294%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110269110277%_)))
                                  (_%tl110275110296%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110269110277%_))))
                              (let* ((_%x2110299%_ _%hd110274110294%_)
                                     (_%rest2110301%_ _%tl110275110296%_))
                                (_%K110273110291%_
                                 _%rest2110301%_
                                 _%x2110299%_)))
                            (_%else110271110285%_))))))
              (if (pair? _%rest1110248110256%_)
                  (let ((_%hd110253110306%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110248110256%_)))
                        (_%tl110254110308%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110248110256%_))))
                    (let* ((_%x1110311%_ _%hd110253110306%_)
                           (_%rest1110313%_ _%tl110254110308%_))
                      (_%K110252110303%_ _%rest1110313%_ _%x1110311%_)))
                  (_%else110250110264%_)))))))
    (define andmap2
      (lambda (_%f102775%_ _%lst1102776%_ _%lst2102777%_)
        (if (procedure? _%f102775%_)
            (let ((_%f102781%_ _%f102775%_))
              (__andmap2 _%f102781%_ _%lst1102776%_ _%lst2102777%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@410.16-410.17"
               'contract:
               'procedure?
               'value:
               _%f102775%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f110173%_ _%lst110174%_)
        (let* ((_%f110176%_ _%f110173%_) (_%lst110179%_ _%lst110174%_))
          (if (procedure? _%f110176%_)
              (let ((_%f110184%_ _%f110176%_))
                (__andmap1 _%f110184%_ _%lst110179%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110176%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f110196%_ _%lst1110197%_ _%lst2110198%_)
        (let* ((_%f110200%_ _%f110196%_)
               (_%lst1110203%_ _%lst1110197%_)
               (_%lst2110206%_ _%lst2110198%_))
          (if (procedure? _%f110200%_)
              (let ((_%f110211%_ _%f110200%_))
                (__andmap2 _%f110211%_ _%lst1110203%_ _%lst2110206%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110200%_)
                '#!void)))))
    (define andmap
      (lambda _g114508_
        (let ((_g114509_ (let () (declare (not safe)) (##length _g114508_))))
          (cond ((let () (declare (not safe)) (##fx= _g114509_ 2))
                 (apply andmap__0 _g114508_))
                ((let () (declare (not safe)) (##fx= _g114509_ 3))
                 (apply andmap__1 _g114508_))
                ((let () (declare (not safe)) (##fx>= _g114509_ 3))
                 (apply andmap* _g114508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g114508_))))))
    (define __andmap*
      (lambda (_%f110130%_ . _%rest110131%_)
        (let ((_%f110134%_ _%f110130%_))
          (let _%recur110143%_ ((_%rest110145%_ _%rest110131%_))
            (if (let* ((_%f110148%_ pair?)
                       (_%lst110151%_ _%rest110145%_)
                       (_%f110156%_ _%f110148%_))
                  (__andmap1 _%f110156%_ _%lst110151%_))
                (if (let ((__tmp114510 (map car _%rest110145%_)))
                      (declare (not safe))
                      (##apply _%f110134%_ __tmp114510))
                    (_%recur110143%_ (map cdr _%rest110145%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f102911%_ . _%rest102912%_)
        (if (procedure? _%f102911%_)
            (let ((_%f102916%_ _%f102911%_))
              (declare (not safe))
              (##apply __andmap* _%f102916%_ _%rest102912%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@430.16-430.17"
               'contract:
               'procedure?
               'value:
               _%f102911%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f110077%_ _%lst110078%_)
        (let ((_%f110081%_ _%f110077%_))
          (let _%lp110090%_ ((_%rest110092%_ _%lst110078%_))
            (let* ((_%rest110093110101%_ _%rest110092%_)
                   (_%else110095110109%_ (lambda () '#f))
                   (_%K110097110118%_
                    (lambda (_%rest110112%_ _%x110113%_)
                      (let ((_%$e110115%_
                             (let ()
                               (declare (not safe))
                               (_%f110081%_ _%x110113%_))))
                        (if _%$e110115%_
                            _%$e110115%_
                            (_%lp110090%_ _%rest110112%_))))))
              (if (pair? _%rest110093110101%_)
                  (let ((_%hd110098110121%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110093110101%_)))
                        (_%tl110099110123%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110093110101%_))))
                    (let* ((_%x110126%_ _%hd110098110121%_)
                           (_%rest110128%_ _%tl110099110123%_))
                      (_%K110097110118%_ _%rest110128%_ _%x110126%_)))
                  (_%else110095110109%_)))))))
    (define ormap1
      (lambda (_%f103046%_ _%lst103047%_)
        (if (procedure? _%f103046%_)
            (let ((_%f103051%_ _%f103046%_))
              (__ormap1 _%f103051%_ _%lst103047%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@439.15-439.16"
               'contract:
               'procedure?
               'value:
               _%f103046%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f109989%_ _%lst1109990%_ _%lst2109991%_)
        (let ((_%f109994%_ _%f109989%_))
          (let _%lp110003%_ ((_%rest1110005%_ _%lst1109990%_)
                             (_%rest2110006%_ _%lst2109991%_))
            (let* ((_%rest1110007110015%_ _%rest1110005%_)
                   (_%else110009110023%_ (lambda () '#f))
                   (_%K110011110065%_
                    (lambda (_%rest1110026%_ _%x1110027%_)
                      (let* ((_%rest2110028110036%_ _%rest2110006%_)
                             (_%else110030110044%_ (lambda () '#f))
                             (_%K110032110053%_
                              (lambda (_%rest2110047%_ _%x2110048%_)
                                (let ((_%$e110050%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f109994%_
                                          _%x1110027%_
                                          _%x2110048%_))))
                                  (if _%$e110050%_
                                      _%$e110050%_
                                      (_%lp110003%_
                                       _%rest1110026%_
                                       _%rest2110047%_))))))
                        (if (pair? _%rest2110028110036%_)
                            (let ((_%hd110033110056%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110028110036%_)))
                                  (_%tl110034110058%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110028110036%_))))
                              (let* ((_%x2110061%_ _%hd110033110056%_)
                                     (_%rest2110063%_ _%tl110034110058%_))
                                (_%K110032110053%_
                                 _%rest2110063%_
                                 _%x2110061%_)))
                            (_%else110030110044%_))))))
              (if (pair? _%rest1110007110015%_)
                  (let ((_%hd110012110068%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110007110015%_)))
                        (_%tl110013110070%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110007110015%_))))
                    (let* ((_%x1110073%_ _%hd110012110068%_)
                           (_%rest1110075%_ _%tl110013110070%_))
                      (_%K110011110065%_ _%rest1110075%_ _%x1110073%_)))
                  (_%else110009110023%_)))))))
    (define ormap2
      (lambda (_%f103181%_ _%lst1103182%_ _%lst2103183%_)
        (if (procedure? _%f103181%_)
            (let ((_%f103187%_ _%f103181%_))
              (__ormap2 _%f103187%_ _%lst1103182%_ _%lst2103183%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@446.15-446.16"
               'contract:
               'procedure?
               'value:
               _%f103181%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f109933%_ _%lst109934%_)
        (let* ((_%f109936%_ _%f109933%_) (_%lst109939%_ _%lst109934%_))
          (if (procedure? _%f109936%_)
              (let ((_%f109944%_ _%f109936%_))
                (__ormap1 _%f109944%_ _%lst109939%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109936%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f109956%_ _%lst1109957%_ _%lst2109958%_)
        (let* ((_%f109960%_ _%f109956%_)
               (_%lst1109963%_ _%lst1109957%_)
               (_%lst2109966%_ _%lst2109958%_))
          (if (procedure? _%f109960%_)
              (let ((_%f109971%_ _%f109960%_))
                (__ormap2 _%f109971%_ _%lst1109963%_ _%lst2109966%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109960%_)
                '#!void)))))
    (define ormap
      (lambda _g114511_
        (let ((_g114512_ (let () (declare (not safe)) (##length _g114511_))))
          (cond ((let () (declare (not safe)) (##fx= _g114512_ 2))
                 (apply ormap__0 _g114511_))
                ((let () (declare (not safe)) (##fx= _g114512_ 3))
                 (apply ormap__1 _g114511_))
                ((let () (declare (not safe)) (##fx>= _g114512_ 3))
                 (apply ormap* _g114511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g114511_))))))
    (define __ormap*
      (lambda (_%f109889%_ . _%rest109890%_)
        (let ((_%f109893%_ _%f109889%_))
          (let _%recur109902%_ ((_%rest109904%_ _%rest109890%_))
            (if (let* ((_%f109906%_ pair?)
                       (_%lst109909%_ _%rest109904%_)
                       (_%f109914%_ _%f109906%_))
                  (__andmap1 _%f109914%_ _%lst109909%_))
                (let ((_%$e109930%_
                       (let ((__tmp114513 (map car _%rest109904%_)))
                         (declare (not safe))
                         (##apply _%f109893%_ __tmp114513))))
                  (if _%$e109930%_
                      _%$e109930%_
                      (_%recur109902%_ (map cdr _%rest109904%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f103317%_ . _%rest103318%_)
        (if (procedure? _%f103317%_)
            (let ((_%f103322%_ _%f103317%_))
              (declare (not safe))
              (##apply __ormap* _%f103322%_ _%rest103318%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@464.15-464.16"
               'contract:
               'procedure?
               'value:
               _%f103317%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f109832%_ _%lst109833%_)
        (let ((_%f109836%_ _%f109832%_))
          (let _%recur109845%_ ((_%rest109847%_ _%lst109833%_))
            (let* ((_%rest109849109857%_ _%rest109847%_)
                   (_%else109851109865%_ (lambda () '()))
                   (_%K109853109877%_
                    (lambda (_%rest109868%_ _%x109869%_)
                      (let ((_%$e109871%_
                             (let ()
                               (declare (not safe))
                               (_%f109836%_ _%x109869%_))))
                        (if _%$e109871%_
                            ((lambda (_%r109874%_)
                               (cons _%r109874%_
                                     (_%recur109845%_ _%rest109868%_)))
                             _%$e109871%_)
                            (_%recur109845%_ _%rest109868%_))))))
              (if (pair? _%rest109849109857%_)
                  (let ((_%hd109854109880%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest109849109857%_)))
                        (_%tl109855109882%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest109849109857%_))))
                    (let* ((_%x109885%_ _%hd109854109880%_)
                           (_%rest109887%_ _%tl109855109882%_))
                      (_%K109853109877%_ _%rest109887%_ _%x109885%_)))
                  (_%else109851109865%_)))))))
    (define filter-map1
      (lambda (_%f103452%_ _%lst103453%_)
        (if (procedure? _%f103452%_)
            (let ((_%f103457%_ _%f103452%_))
              (__filter-map1 _%f103457%_ _%lst103453%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f103452%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f109740%_ _%lst1109741%_ _%lst2109742%_)
        (let ((_%f109745%_ _%f109740%_))
          (let _%recur109754%_ ((_%rest1109756%_ _%lst1109741%_)
                                (_%rest2109757%_ _%lst2109742%_))
            (let* ((_%rest1109759109767%_ _%rest1109756%_)
                   (_%else109761109775%_ (lambda () '()))
                   (_%K109763109820%_
                    (lambda (_%rest1109778%_ _%x1109779%_)
                      (let* ((_%rest2109780109788%_ _%rest2109757%_)
                             (_%else109782109796%_ (lambda () '()))
                             (_%K109784109808%_
                              (lambda (_%rest2109799%_ _%x2109800%_)
                                (let ((_%$e109802%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f109745%_
                                          _%x1109779%_
                                          _%x2109800%_))))
                                  (if _%$e109802%_
                                      ((lambda (_%r109805%_)
                                         (cons _%r109805%_
                                               (_%recur109754%_
                                                _%rest1109778%_
                                                _%rest2109799%_)))
                                       _%$e109802%_)
                                      (_%recur109754%_
                                       _%rest1109778%_
                                       _%rest2109799%_))))))
                        (if (pair? _%rest2109780109788%_)
                            (let ((_%hd109785109811%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2109780109788%_)))
                                  (_%tl109786109813%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2109780109788%_))))
                              (let* ((_%x2109816%_ _%hd109785109811%_)
                                     (_%rest2109818%_ _%tl109786109813%_))
                                (_%K109784109808%_
                                 _%rest2109818%_
                                 _%x2109816%_)))
                            (_%else109782109796%_))))))
              (if (pair? _%rest1109759109767%_)
                  (let ((_%hd109764109823%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1109759109767%_)))
                        (_%tl109765109825%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1109759109767%_))))
                    (let* ((_%x1109828%_ _%hd109764109823%_)
                           (_%rest1109830%_ _%tl109765109825%_))
                      (_%K109763109820%_ _%rest1109830%_ _%x1109828%_)))
                  (_%else109761109775%_)))))))
    (define filter-map2
      (lambda (_%f103587%_ _%lst1103588%_ _%lst2103589%_)
        (if (procedure? _%f103587%_)
            (let ((_%f103593%_ _%f103587%_))
              (__filter-map2 _%f103593%_ _%lst1103588%_ _%lst2103589%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@482.20-482.21"
               'contract:
               'procedure?
               'value:
               _%f103587%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f109684%_ _%lst109685%_)
        (let* ((_%f109687%_ _%f109684%_) (_%lst109690%_ _%lst109685%_))
          (if (procedure? _%f109687%_)
              (let ((_%f109695%_ _%f109687%_))
                (__filter-map1 _%f109695%_ _%lst109690%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109687%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f109707%_ _%lst1109708%_ _%lst2109709%_)
        (let* ((_%f109711%_ _%f109707%_)
               (_%lst1109714%_ _%lst1109708%_)
               (_%lst2109717%_ _%lst2109709%_))
          (if (procedure? _%f109711%_)
              (let ((_%f109722%_ _%f109711%_))
                (__filter-map2 _%f109722%_ _%lst1109714%_ _%lst2109717%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109711%_)
                '#!void)))))
    (define filter-map
      (lambda _g114514_
        (let ((_g114515_ (let () (declare (not safe)) (##length _g114514_))))
          (cond ((let () (declare (not safe)) (##fx= _g114515_ 2))
                 (apply filter-map__0 _g114514_))
                ((let () (declare (not safe)) (##fx= _g114515_ 3))
                 (apply filter-map__1 _g114514_))
                ((let () (declare (not safe)) (##fx>= _g114515_ 3))
                 (apply filter-map* _g114514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g114514_))))))
    (define __filter-map*
      (lambda (_%f109635%_ . _%rest109636%_)
        (let ((_%f109639%_ _%f109635%_))
          (let _%recur109648%_ ((_%rest109650%_ _%rest109636%_))
            (if (let* ((_%f109653%_ pair?)
                       (_%lst109656%_ _%rest109650%_)
                       (_%f109661%_ _%f109653%_))
                  (__andmap1 _%f109661%_ _%lst109656%_))
                (let ((_%$e109678%_
                       (let ((__tmp114516 (map car _%rest109650%_)))
                         (declare (not safe))
                         (##apply _%f109639%_ __tmp114516))))
                  (if _%$e109678%_
                      ((lambda (_%r109681%_)
                         (cons _%r109681%_
                               (_%recur109648%_ (map cdr _%rest109650%_))))
                       _%$e109678%_)
                      (_%recur109648%_ (map cdr _%rest109650%_))))
                '())))))
    (define filter-map*
      (lambda (_%f103723%_ . _%rest103724%_)
        (if (procedure? _%f103723%_)
            (let ((_%f103728%_ _%f103723%_))
              (declare (not safe))
              (##apply __filter-map* _%f103728%_ _%rest103724%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@504.20-504.21"
               'contract:
               'procedure?
               'value:
               _%f103723%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key109611%_ _%lst109613%_ _%default109615%_)
        (let ((_%$e109618%_
               (if (pair? _%lst109613%_)
                   (assq _%key109611%_ _%lst109613%_)
                   '#f)))
          (if _%$e109618%_
              (cdr _%$e109618%_)
              (if (procedure? _%default109615%_)
                  (_%default109615%_ _%key109611%_)
                  _%default109615%_)))))
    (define agetq__0
      (lambda (_%key109626%_ _%lst109627%_)
        (let ((_%default109629%_ '#f))
          (agetq__% _%key109626%_ _%lst109627%_ _%default109629%_))))
    (define agetq
      (lambda _g114517_
        (let ((_g114518_ (let () (declare (not safe)) (##length _g114517_))))
          (cond ((let () (declare (not safe)) (##fx= _g114518_ 2))
                 (apply agetq__0 _g114517_))
                ((let () (declare (not safe)) (##fx= _g114518_ 3))
                 (apply agetq__% _g114517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g114517_))))))
    (define agetv__%
      (lambda (_%key109586%_ _%lst109588%_ _%default109590%_)
        (let ((_%$e109593%_
               (if (pair? _%lst109588%_)
                   (assv _%key109586%_ _%lst109588%_)
                   '#f)))
          (if _%$e109593%_
              (cdr _%$e109593%_)
              (if (procedure? _%default109590%_)
                  (_%default109590%_ _%key109586%_)
                  _%default109590%_)))))
    (define agetv__0
      (lambda (_%key109601%_ _%lst109602%_)
        (let ((_%default109604%_ '#f))
          (agetv__% _%key109601%_ _%lst109602%_ _%default109604%_))))
    (define agetv
      (lambda _g114519_
        (let ((_g114520_ (let () (declare (not safe)) (##length _g114519_))))
          (cond ((let () (declare (not safe)) (##fx= _g114520_ 2))
                 (apply agetv__0 _g114519_))
                ((let () (declare (not safe)) (##fx= _g114520_ 3))
                 (apply agetv__% _g114519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g114519_))))))
    (define aget__%
      (lambda (_%key109561%_ _%lst109563%_ _%default109565%_)
        (let ((_%$e109568%_
               (if (pair? _%lst109563%_)
                   (assoc _%key109561%_ _%lst109563%_)
                   '#f)))
          (if _%$e109568%_
              (cdr _%$e109568%_)
              (if (procedure? _%default109565%_)
                  (_%default109565%_ _%key109561%_)
                  _%default109565%_)))))
    (define aget__0
      (lambda (_%key109576%_ _%lst109577%_)
        (let ((_%default109579%_ '#f))
          (aget__% _%key109576%_ _%lst109577%_ _%default109579%_))))
    (define aget
      (lambda _g114521_
        (let ((_g114522_ (let () (declare (not safe)) (##length _g114521_))))
          (cond ((let () (declare (not safe)) (##fx= _g114522_ 2))
                 (apply aget__0 _g114521_))
                ((let () (declare (not safe)) (##fx= _g114522_ 3))
                 (apply aget__% _g114521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g114521_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key109490%_ _%lst109492%_ _%default109494%_)
        (let _%lp109497%_ ((_%rest109500%_ _%lst109492%_))
          (let* ((_%rest109502109512%_ _%rest109500%_)
                 (_%else109504109520%_
                  (lambda ()
                    (if (procedure? _%default109494%_)
                        (_%default109494%_ _%key109490%_)
                        _%default109494%_)))
                 (_%K109506109529%_
                  (lambda (_%rest109523%_ _%v109524%_ _%k109526%_)
                    (if (eq? _%k109526%_ _%key109490%_)
                        _%v109524%_
                        (_%lp109497%_ _%rest109523%_)))))
            (if (pair? _%rest109502109512%_)
                (let ((_%hd109507109532%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109502109512%_)))
                      (_%tl109508109534%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109502109512%_))))
                  (let ((_%k109537%_ _%hd109507109532%_))
                    (if (pair? _%tl109508109534%_)
                        (let ((_%hd109509109539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl109508109534%_)))
                              (_%tl109510109541%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl109508109534%_))))
                          (let* ((_%v109544%_ _%hd109509109539%_)
                                 (_%rest109546%_ _%tl109510109541%_))
                            (_%K109506109529%_
                             _%rest109546%_
                             _%v109544%_
                             _%k109537%_)))
                        (_%else109504109520%_))))
                (_%else109504109520%_))))))
    (define pgetq__0
      (lambda (_%key109551%_ _%lst109552%_)
        (let ((_%default109554%_ '#f))
          (pgetq__% _%key109551%_ _%lst109552%_ _%default109554%_))))
    (define pgetq
      (lambda _g114523_
        (let ((_g114524_ (let () (declare (not safe)) (##length _g114523_))))
          (cond ((let () (declare (not safe)) (##fx= _g114524_ 2))
                 (apply pgetq__0 _g114523_))
                ((let () (declare (not safe)) (##fx= _g114524_ 3))
                 (apply pgetq__% _g114523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g114523_))))))
    (define pgetv__%
      (lambda (_%key109419%_ _%lst109421%_ _%default109423%_)
        (let _%lp109426%_ ((_%rest109429%_ _%lst109421%_))
          (let* ((_%rest109431109441%_ _%rest109429%_)
                 (_%else109433109449%_
                  (lambda ()
                    (if (procedure? _%default109423%_)
                        (_%default109423%_ _%key109419%_)
                        _%default109423%_)))
                 (_%K109435109458%_
                  (lambda (_%rest109452%_ _%v109453%_ _%k109455%_)
                    (if (eqv? _%k109455%_ _%key109419%_)
                        _%v109453%_
                        (_%lp109426%_ _%rest109452%_)))))
            (if (pair? _%rest109431109441%_)
                (let ((_%hd109436109461%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109431109441%_)))
                      (_%tl109437109463%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109431109441%_))))
                  (let ((_%k109466%_ _%hd109436109461%_))
                    (if (pair? _%tl109437109463%_)
                        (let ((_%hd109438109468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl109437109463%_)))
                              (_%tl109439109470%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl109437109463%_))))
                          (let* ((_%v109473%_ _%hd109438109468%_)
                                 (_%rest109475%_ _%tl109439109470%_))
                            (_%K109435109458%_
                             _%rest109475%_
                             _%v109473%_
                             _%k109466%_)))
                        (_%else109433109449%_))))
                (_%else109433109449%_))))))
    (define pgetv__0
      (lambda (_%key109480%_ _%lst109481%_)
        (let ((_%default109483%_ '#f))
          (pgetv__% _%key109480%_ _%lst109481%_ _%default109483%_))))
    (define pgetv
      (lambda _g114525_
        (let ((_g114526_ (let () (declare (not safe)) (##length _g114525_))))
          (cond ((let () (declare (not safe)) (##fx= _g114526_ 2))
                 (apply pgetv__0 _g114525_))
                ((let () (declare (not safe)) (##fx= _g114526_ 3))
                 (apply pgetv__% _g114525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g114525_))))))
    (define pget__%
      (lambda (_%key109348%_ _%lst109350%_ _%default109352%_)
        (let _%lp109355%_ ((_%rest109358%_ _%lst109350%_))
          (let* ((_%rest109360109370%_ _%rest109358%_)
                 (_%else109362109378%_
                  (lambda ()
                    (if (procedure? _%default109352%_)
                        (_%default109352%_ _%key109348%_)
                        _%default109352%_)))
                 (_%K109364109387%_
                  (lambda (_%rest109381%_ _%v109382%_ _%k109384%_)
                    (if (equal? _%k109384%_ _%key109348%_)
                        _%v109382%_
                        (_%lp109355%_ _%rest109381%_)))))
            (if (pair? _%rest109360109370%_)
                (let ((_%hd109365109390%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109360109370%_)))
                      (_%tl109366109392%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109360109370%_))))
                  (let ((_%k109395%_ _%hd109365109390%_))
                    (if (pair? _%tl109366109392%_)
                        (let ((_%hd109367109397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl109366109392%_)))
                              (_%tl109368109399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl109366109392%_))))
                          (let* ((_%v109402%_ _%hd109367109397%_)
                                 (_%rest109404%_ _%tl109368109399%_))
                            (_%K109364109387%_
                             _%rest109404%_
                             _%v109402%_
                             _%k109395%_)))
                        (_%else109362109378%_))))
                (_%else109362109378%_))))))
    (define pget__0
      (lambda (_%key109409%_ _%lst109410%_)
        (let ((_%default109412%_ '#f))
          (pget__% _%key109409%_ _%lst109410%_ _%default109412%_))))
    (define pget
      (lambda _g114527_
        (let ((_g114528_ (let () (declare (not safe)) (##length _g114527_))))
          (cond ((let () (declare (not safe)) (##fx= _g114528_ 2))
                 (apply pget__0 _g114527_))
                ((let () (declare (not safe)) (##fx= _g114528_ 3))
                 (apply pget__% _g114527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g114527_))))))
    (define __find
      (lambda (_%pred109308%_ _%lst109309%_)
        (let* ((_%pred109312%_ _%pred109308%_)
               (_%$e109343%_
                (let* ((_%proc109321%_ _%pred109312%_)
                       (_%lst109324%_ _%lst109309%_)
                       (_%proc109329%_ _%proc109321%_))
                  (__memf _%proc109329%_ _%lst109324%_))))
          (if _%$e109343%_
              (let () (declare (not safe)) (##car _%$e109343%_))
              '#f))))
    (define find
      (lambda (_%pred104020%_ _%lst104021%_)
        (if (procedure? _%pred104020%_)
            (let ((_%pred104025%_ _%pred104020%_))
              (__find _%pred104025%_ _%lst104021%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@550.13-550.17"
               'contract:
               'procedure?
               'value:
               _%pred104020%_)
              '#!void))))
    (define __memf
      (lambda (_%proc109258%_ _%lst109259%_)
        (let ((_%proc109262%_ _%proc109258%_))
          (let _%lp109271%_ ((_%rest109273%_ _%lst109259%_))
            (let* ((_%rest109274109282%_ _%rest109273%_)
                   (_%else109276109290%_ (lambda () '#f))
                   (_%K109278109296%_
                    (lambda (_%tl109293%_ _%hd109294%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc109262%_ _%hd109294%_))
                          _%rest109273%_
                          (_%lp109271%_ _%tl109293%_)))))
              (if (pair? _%rest109274109282%_)
                  (let ((_%hd109279109299%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest109274109282%_)))
                        (_%tl109280109301%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest109274109282%_))))
                    (let* ((_%hd109304%_ _%hd109279109299%_)
                           (_%tl109306%_ _%tl109280109301%_))
                      (_%K109278109296%_ _%tl109306%_ _%hd109304%_)))
                  (_%else109276109290%_)))))))
    (define memf
      (lambda (_%proc104155%_ _%lst104156%_)
        (if (procedure? _%proc104155%_)
            (let ((_%proc104160%_ _%proc104155%_))
              (__memf _%proc104160%_ _%lst104156%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@555.13-555.17"
               'contract:
               'procedure?
               'value:
               _%proc104155%_)
              '#!void))))
    (define remove1
      (lambda (_%el109181%_ _%lst109183%_)
        (let _%lp109186%_ ((_%rest109189%_ _%lst109183%_) (_%r109191%_ '()))
          (let* ((_%rest109193109201%_ _%rest109189%_)
                 (_%else109195109209%_ (lambda () _%lst109183%_))
                 (_%K109197109246%_
                  (lambda (_%rest109212%_ _%hd109213%_)
                    (if (equal? _%el109181%_ _%hd109213%_)
                        (let* ((_%f109216%_ cons)
                               (_%iv109219%_ _%rest109212%_)
                               (_%lst109222%_ _%r109191%_)
                               (_%f109227%_ _%f109216%_))
                          (__foldl1 _%f109227%_ _%iv109219%_ _%lst109222%_))
                        (_%lp109186%_
                         _%rest109212%_
                         (cons _%hd109213%_ _%r109191%_))))))
            (if (pair? _%rest109193109201%_)
                (let ((_%hd109198109249%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109193109201%_)))
                      (_%tl109199109251%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109193109201%_))))
                  (let* ((_%hd109254%_ _%hd109198109249%_)
                         (_%rest109256%_ _%tl109199109251%_))
                    (_%K109197109246%_ _%rest109256%_ _%hd109254%_)))
                (_%else109195109209%_))))))
    (define remv1
      (lambda (_%el109104%_ _%lst109106%_)
        (let _%lp109109%_ ((_%rest109112%_ _%lst109106%_) (_%r109114%_ '()))
          (let* ((_%rest109116109124%_ _%rest109112%_)
                 (_%else109118109132%_ (lambda () _%lst109106%_))
                 (_%K109120109169%_
                  (lambda (_%rest109135%_ _%hd109136%_)
                    (if (eqv? _%el109104%_ _%hd109136%_)
                        (let* ((_%f109139%_ cons)
                               (_%iv109142%_ _%rest109135%_)
                               (_%lst109145%_ _%r109114%_)
                               (_%f109150%_ _%f109139%_))
                          (__foldl1 _%f109150%_ _%iv109142%_ _%lst109145%_))
                        (_%lp109109%_
                         _%rest109135%_
                         (cons _%hd109136%_ _%r109114%_))))))
            (if (pair? _%rest109116109124%_)
                (let ((_%hd109121109172%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109116109124%_)))
                      (_%tl109122109174%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109116109124%_))))
                  (let* ((_%hd109177%_ _%hd109121109172%_)
                         (_%rest109179%_ _%tl109122109174%_))
                    (_%K109120109169%_ _%rest109179%_ _%hd109177%_)))
                (_%else109118109132%_))))))
    (define remq1
      (lambda (_%el109027%_ _%lst109029%_)
        (let _%lp109032%_ ((_%rest109035%_ _%lst109029%_) (_%r109037%_ '()))
          (let* ((_%rest109039109047%_ _%rest109035%_)
                 (_%else109041109055%_ (lambda () _%lst109029%_))
                 (_%K109043109092%_
                  (lambda (_%rest109058%_ _%hd109059%_)
                    (if (eq? _%el109027%_ _%hd109059%_)
                        (let* ((_%f109062%_ cons)
                               (_%iv109065%_ _%rest109058%_)
                               (_%lst109068%_ _%r109037%_)
                               (_%f109073%_ _%f109062%_))
                          (__foldl1 _%f109073%_ _%iv109065%_ _%lst109068%_))
                        (_%lp109032%_
                         _%rest109058%_
                         (cons _%hd109059%_ _%r109037%_))))))
            (if (pair? _%rest109039109047%_)
                (let ((_%hd109044109095%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109039109047%_)))
                      (_%tl109045109097%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109039109047%_))))
                  (let* ((_%hd109100%_ _%hd109044109095%_)
                         (_%rest109102%_ _%tl109045109097%_))
                    (_%K109043109092%_ _%rest109102%_ _%hd109100%_)))
                (_%else109041109055%_))))))
    (define __remf
      (lambda (_%proc108944%_ _%lst108945%_)
        (let ((_%proc108948%_ _%proc108944%_))
          (let _%lp108957%_ ((_%rest108959%_ _%lst108945%_) (_%r108960%_ '()))
            (let* ((_%rest108961108969%_ _%rest108959%_)
                   (_%else108963108977%_ (lambda () _%lst108945%_))
                   (_%K108965109015%_
                    (lambda (_%rest108980%_ _%hd108981%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc108948%_ _%hd108981%_))
                          (let* ((_%f108983%_ cons)
                                 (_%iv108986%_ _%rest108980%_)
                                 (_%lst108989%_ _%r108960%_)
                                 (_%f108994%_ _%f108983%_))
                            (__foldl1 _%f108994%_ _%iv108986%_ _%lst108989%_))
                          (_%lp108957%_
                           _%rest108980%_
                           (cons _%hd108981%_ _%r108960%_))))))
              (if (pair? _%rest108961108969%_)
                  (let ((_%hd108966109018%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest108961108969%_)))
                        (_%tl108967109020%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest108961108969%_))))
                    (let* ((_%hd109023%_ _%hd108966109018%_)
                           (_%rest109025%_ _%tl108967109020%_))
                      (_%K108965109015%_ _%rest109025%_ _%hd109023%_)))
                  (_%else108963108977%_)))))))
    (define remf
      (lambda (_%proc104371%_ _%lst104372%_)
        (if (procedure? _%proc104371%_)
            (let ((_%proc104376%_ _%proc104371%_))
              (__remf _%proc104376%_ _%lst104372%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.17"
               'contract:
               'procedure?
               'value:
               _%proc104371%_)
              '#!void))))
    (define __1+
      (lambda (_%x108932%_)
        (let ((_%x108935%_ _%x108932%_)) (+ _%x108935%_ '1))))
    (define 1+
      (lambda (_%x104506%_)
        (if (number? _%x104506%_)
            (let ((_%x104510%_ _%x104506%_)) (__1+ _%x104510%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@586.11-586.12"
               'contract:
               'number?
               'value:
               _%x104506%_)
              '#!void))))
    (define __1-
      (lambda (_%x108920%_)
        (let ((_%x108923%_ _%x108920%_)) (- _%x108923%_ '1))))
    (define 1-
      (lambda (_%x104640%_)
        (if (number? _%x104640%_)
            (let ((_%x104644%_ _%x104640%_)) (__1- _%x104644%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@594.11-594.12"
               'contract:
               'number?
               'value:
               _%x104640%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x108908%_)
        (let ((_%x108911%_ _%x108908%_))
          (declare (not safe))
          (##fx+ _%x108911%_ '1))))
    (define fx1+
      (lambda (_%x104774%_)
        (if (fixnum? _%x104774%_)
            (let ((_%x104778%_ _%x104774%_)) (__fx1+ _%x104778%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@602.13-602.14"
               'contract:
               'fixnum?
               'value:
               _%x104774%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x108896%_)
        (let ((_%x108899%_ _%x108896%_))
          (declare (not safe))
          (##fx- _%x108899%_ '1))))
    (define fx1-
      (lambda (_%x104908%_)
        (if (fixnum? _%x104908%_)
            (let ((_%x104912%_ _%x104908%_)) (__fx1- _%x104912%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@610.13-610.14"
               'contract:
               'fixnum?
               'value:
               _%x104908%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x108893%_)
        (if (fixnum? _%x108893%_)
            (let () (declare (not safe)) (##fx>= _%x108893%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x108890%_)
        (if (fixnum? _%x108890%_)
            (let () (declare (not safe)) (##fx> _%x108890%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x108887%_)
        (let () (declare (not safe)) (##fx= _%x108887%_ '0))))
    (define fx<0?
      (lambda (_%x108884%_)
        (if (fixnum? _%x108884%_)
            (let () (declare (not safe)) (##fx< _%x108884%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x108881%_)
        (if (fixnum? _%x108881%_)
            (let () (declare (not safe)) (##fx<= _%x108881%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x108878%_)
        (if (symbol? _%x108878%_) (not (uninterned-symbol? _%x108878%_)) '#f)))
    (define __display-as-string
      (lambda (_%x108772%_ _%port108773%_)
        (let ((_%port108776%_ _%port108773%_))
          (if (or (string? _%x108772%_)
                  (symbol? _%x108772%_)
                  (keyword? _%x108772%_)
                  (number? _%x108772%_)
                  (char? _%x108772%_))
              (display _%x108772%_ _%port108776%_)
              (if (pair? _%x108772%_)
                  (let ()
                    (let* ((_%x108799%_
                            (let () (declare (not safe)) (##car _%x108772%_)))
                           (_%port108802%_ _%port108776%_))
                      (if (output-port? _%port108802%_)
                          (let ((_%port108807%_ _%port108802%_))
                            (__display-as-string _%x108799%_ _%port108807%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port108802%_)
                            '#!void)))
                    (let* ((_%x108822%_
                            (let () (declare (not safe)) (##cdr _%x108772%_)))
                           (_%port108825%_ _%port108776%_))
                      (if (output-port? _%port108825%_)
                          (let ((_%port108830%_ _%port108825%_))
                            (__display-as-string _%x108822%_ _%port108830%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port108825%_)
                            '#!void))))
                  (if (vector? _%x108772%_)
                      (vector-for-each
                       (lambda (_%g108841108843%_)
                         (let* ((_%x108846%_ _%g108841108843%_)
                                (_%port108849%_ _%port108776%_))
                           (if (output-port? _%port108849%_)
                               (let ((_%port108854%_ _%port108849%_))
                                 (__display-as-string
                                  _%x108846%_
                                  _%port108854%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port108849%_)
                                 '#!void))))
                       _%x108772%_)
                      (if (or (null? _%x108772%_)
                              (eq? _%x108772%_ '#!void)
                              (eof-object? _%x108772%_)
                              (boolean? _%x108772%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x108772%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x105042%_ _%port105043%_)
        (if (output-port? _%port105043%_)
            (let ((_%port105047%_ _%port105043%_))
              (__display-as-string _%x105042%_ _%port105047%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@640.28-640.32"
               'contract:
               'output-port?
               'value:
               _%port105043%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x108712%_)
        (if (string? _%x108712%_)
            _%x108712%_
            (if (symbol? _%x108712%_)
                (let () (declare (not safe)) (##symbol->string _%x108712%_))
                (if (keyword? _%x108712%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x108712%_))
                    (if (number? _%x108712%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x108712%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g108718108720%_)
                           (let* ((_%x108723%_ _%x108712%_)
                                  (_%port108726%_ _%g108718108720%_))
                             (if (output-port? _%port108726%_)
                                 (let ((_%port108731%_ _%port108726%_))
                                   (__display-as-string
                                    _%x108723%_
                                    _%port108731%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port108726%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args108745%_
        (call-with-output-string
         '()
         (lambda (_%g108746108748%_)
           (let* ((_%x108751%_ _%args108745%_)
                  (_%port108754%_ _%g108746108748%_))
             (if (output-port? _%port108754%_)
                 (let ((_%port108759%_ _%port108754%_))
                   (__display-as-string _%x108751%_ _%port108759%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port108754%_)
                   '#!void)))))))
    (define as-string
      (lambda _g114529_
        (let ((_g114530_ (let () (declare (not safe)) (##length _g114529_))))
          (cond ((let () (declare (not safe)) (##fx= _g114530_ 1))
                 (apply as-string__0 _g114529_))
                (#t
                 (apply (lambda _%args108745%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args108745%_)))
                        _g114529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g114529_))))))
    (define make-symbol__0
      (lambda (_%x108708%_)
        (if (interned-symbol? _%x108708%_)
            _%x108708%_
            (let ((__tmp114531 (as-string__0 _%x108708%_)))
              (declare (not safe))
              (##string->symbol __tmp114531)))))
    (define make-symbol__1
      (lambda _%args108710%_
        (let ((__tmp114532
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args108710%_))))
          (declare (not safe))
          (##string->symbol __tmp114532))))
    (define make-symbol
      (lambda _g114533_
        (let ((_g114534_ (let () (declare (not safe)) (##length _g114533_))))
          (cond ((let () (declare (not safe)) (##fx= _g114534_ 1))
                 (apply make-symbol__0 _g114533_))
                (#t
                 (apply (lambda _%args108710%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args108710%_)))
                        _g114533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g114533_))))))
    (define make-keyword__0
      (lambda (_%x108704%_)
        (if (interned-keyword? _%x108704%_)
            _%x108704%_
            (let ((__tmp114535 (as-string__0 _%x108704%_)))
              (declare (not safe))
              (##string->keyword __tmp114535)))))
    (define make-keyword__1
      (lambda _%args108706%_
        (let ((__tmp114536
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args108706%_))))
          (declare (not safe))
          (##string->keyword __tmp114536))))
    (define make-keyword
      (lambda _g114537_
        (let ((_g114538_ (let () (declare (not safe)) (##length _g114537_))))
          (cond ((let () (declare (not safe)) (##fx= _g114538_ 1))
                 (apply make-keyword__0 _g114537_))
                (#t
                 (apply (lambda _%args108706%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args108706%_)))
                        _g114537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g114537_))))))
    (define interned-keyword?
      (lambda (_%x108701%_)
        (if (keyword? _%x108701%_)
            (not (uninterned-keyword? _%x108701%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym108689%_)
        (let ((_%sym108692%_ _%sym108689%_))
          (if (uninterned-symbol? _%sym108692%_)
              (let ((__tmp114539
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym108692%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp114539))
              (let ((__tmp114540
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym108692%_))))
                (declare (not safe))
                (##string->keyword __tmp114540))))))
    (define symbol->keyword
      (lambda (_%sym105177%_)
        (if (symbol? _%sym105177%_)
            (let ((_%sym105181%_ _%sym105177%_))
              (__symbol->keyword _%sym105181%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@683.24-683.27"
               'contract:
               'symbol?
               'value:
               _%sym105177%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym108677%_)
        (let ((_%sym108680%_ _%sym108677%_))
          (if (uninterned-keyword? _%sym108680%_)
              (let ((__tmp114541
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym108680%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp114541))
              (let ((__tmp114542
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym108680%_))))
                (declare (not safe))
                (##string->symbol __tmp114542))))))
    (define keyword->symbol
      (lambda (_%sym105311%_)
        (if (keyword? _%sym105311%_)
            (let ((_%sym105315%_ _%sym105311%_))
              (__keyword->symbol _%sym105315%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@689.24-689.27"
               'contract:
               'keyword?
               'value:
               _%sym105311%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr108637%_ _%enc108638%_)
        (let* ((_%bstr108641%_ _%bstr108637%_) (_%enc108649%_ _%enc108638%_))
          (if (eq? _%enc108649%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr108641%_))
              (let* ((_%in108658%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc108649%_
                                   (cons 'init: (cons _%bstr108641%_ '()))))))
                     (_%len108660%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr108641%_)))
                     (_%out108662%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len108660%_)))
                     (_%n108664%_
                      (read-substring
                       _%out108662%_
                       '0
                       _%len108660%_
                       _%in108658%_)))
                (string-shrink! _%out108662%_ _%n108664%_)
                _%out108662%_)))))
    (define __bytes->string__0
      (lambda (_%bstr108670%_)
        (let ((_%enc108672%_ 'UTF-8))
          (__bytes->string__% _%bstr108670%_ _%enc108672%_))))
    (define __bytes->string
      (lambda _g114543_
        (let ((_g114544_ (let () (declare (not safe)) (##length _g114543_))))
          (cond ((let () (declare (not safe)) (##fx= _g114544_ 1))
                 (apply __bytes->string__0 _g114543_))
                ((let () (declare (not safe)) (##fx= _g114544_ 2))
                 (apply __bytes->string__% _g114543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g114543_))))))
    (define bytes->string__%
      (lambda (_%bstr105446%_ _%enc105447%_)
        (if (u8vector? _%bstr105446%_)
            (let ((_%bstr105451%_ _%bstr105446%_))
              (if (symbol? _%enc105447%_)
                  (let ((_%enc105461%_ _%enc105447%_))
                    (__bytes->string__% _%bstr105451%_ _%enc105461%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@696.25-696.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc105447%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@695.22-695.26"
               'contract:
               'u8vector?
               'value:
               _%bstr105446%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr105474%_)
        (let ((_%enc105476%_ 'UTF-8))
          (bytes->string__% _%bstr105474%_ _%enc105476%_))))
    (define bytes->string
      (lambda _g114545_
        (let ((_g114546_ (let () (declare (not safe)) (##length _g114545_))))
          (cond ((let () (declare (not safe)) (##fx= _g114546_ 1))
                 (apply bytes->string__0 _g114545_))
                ((let () (declare (not safe)) (##fx= _g114546_ 2))
                 (apply bytes->string__% _g114545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g114545_))))))
    (define __string->bytes__%
      (lambda (_%str108555%_ _%enc108556%_)
        (let* ((_%str108559%_ _%str108555%_) (_%enc108567%_ _%enc108556%_))
          (if (eq? _%enc108567%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str108559%_))
              (let* ((_%str108576%_ _%str108559%_)
                     (_%start108579%_ '0)
                     (_%end108582%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str108559%_)))
                     (_%enc108585%_ _%enc108567%_)
                     (_%str108590%_ _%str108576%_))
                (if (nonnegative-fixnum? _%start108579%_)
                    (let ((_%start108606%_ _%start108579%_))
                      (if (nonnegative-fixnum? _%end108582%_)
                          (let ((_%end108616%_ _%end108582%_))
                            (__substring->bytes__%
                             _%str108590%_
                             _%start108606%_
                             _%end108616%_
                             _%enc108585%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end108582%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start108579%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str108629%_)
        (let ((_%enc108631%_ 'UTF-8))
          (__string->bytes__% _%str108629%_ _%enc108631%_))))
    (define __string->bytes
      (lambda _g114547_
        (let ((_g114548_ (let () (declare (not safe)) (##length _g114547_))))
          (cond ((let () (declare (not safe)) (##fx= _g114548_ 1))
                 (apply __string->bytes__0 _g114547_))
                ((let () (declare (not safe)) (##fx= _g114548_ 2))
                 (apply __string->bytes__% _g114547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g114547_))))))
    (define string->bytes__%
      (lambda (_%str105602%_ _%enc105603%_)
        (if (string? _%str105602%_)
            (let ((_%str105607%_ _%str105602%_))
              (if (symbol? _%enc105603%_)
                  (let ((_%enc105617%_ _%enc105603%_))
                    (__string->bytes__% _%str105607%_ _%enc105617%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@708.25-708.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc105603%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@707.22-707.25"
               'contract:
               'string?
               'value:
               _%str105602%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str105630%_)
        (let ((_%enc105632%_ 'UTF-8))
          (string->bytes__% _%str105630%_ _%enc105632%_))))
    (define string->bytes
      (lambda _g114549_
        (let ((_g114550_ (let () (declare (not safe)) (##length _g114549_))))
          (cond ((let () (declare (not safe)) (##fx= _g114550_ 1))
                 (apply string->bytes__0 _g114549_))
                ((let () (declare (not safe)) (##fx= _g114550_ 2))
                 (apply string->bytes__% _g114549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g114549_))))))
    (define __substring->bytes__%
      (lambda (_%str108507%_ _%start108508%_ _%end108509%_ _%enc108510%_)
        (let* ((_%str108513%_ _%str108507%_)
               (_%start108521%_ _%start108508%_)
               (_%end108529%_ _%end108509%_))
          (if (eq? _%enc108510%_ 'UTF-8)
              (string->utf8 _%str108513%_ _%start108521%_ _%end108529%_)
              (let ((_%out108538%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc108510%_ '())))))
                (write-substring
                 _%str108513%_
                 _%start108521%_
                 _%end108529%_
                 _%out108538%_)
                (get-output-u8vector _%out108538%_))))))
    (define __substring->bytes__0
      (lambda (_%str108543%_ _%start108544%_ _%end108545%_)
        (let ((_%enc108547%_ 'UTF-8))
          (__substring->bytes__%
           _%str108543%_
           _%start108544%_
           _%end108545%_
           _%enc108547%_))))
    (define __substring->bytes
      (lambda _g114551_
        (let ((_g114552_ (let () (declare (not safe)) (##length _g114551_))))
          (cond ((let () (declare (not safe)) (##fx= _g114552_ 3))
                 (apply __substring->bytes__0 _g114551_))
                ((let () (declare (not safe)) (##fx= _g114552_ 4))
                 (apply __substring->bytes__% _g114551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g114551_))))))
    (define substring->bytes__%
      (lambda (_%str105758%_ _%start105759%_ _%end105760%_ _%enc105761%_)
        (if (string? _%str105758%_)
            (let ((_%str105765%_ _%str105758%_))
              (if (nonnegative-fixnum? _%start105759%_)
                  (let ((_%start105775%_ _%start105759%_))
                    (if (nonnegative-fixnum? _%end105760%_)
                        (let ((_%end105785%_ _%end105760%_))
                          (__substring->bytes__%
                           _%str105765%_
                           _%start105775%_
                           _%end105785%_
                           _%enc105761%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@716.25-716.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end105760%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@715.25-715.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start105759%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@714.25-714.28"
               'contract:
               'string?
               'value:
               _%str105758%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str105798%_ _%start105799%_ _%end105800%_)
        (let ((_%enc105802%_ 'UTF-8))
          (substring->bytes__%
           _%str105798%_
           _%start105799%_
           _%end105800%_
           _%enc105802%_))))
    (define substring->bytes
      (lambda _g114553_
        (let ((_g114554_ (let () (declare (not safe)) (##length _g114553_))))
          (cond ((let () (declare (not safe)) (##fx= _g114554_ 3))
                 (apply substring->bytes__0 _g114553_))
                ((let () (declare (not safe)) (##fx= _g114554_ 4))
                 (apply substring->bytes__% _g114553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g114553_))))))
    (define __string-empty?
      (lambda (_%str108494%_)
        (let* ((_%str108497%_ _%str108494%_)
               (__tmp114555
                (let () (declare (not safe)) (##string-length _%str108497%_))))
          (declare (not safe))
          (##fxzero? __tmp114555))))
    (define string-empty?
      (lambda (_%str105929%_)
        (if (string? _%str105929%_)
            (let ((_%str105933%_ _%str105929%_))
              (__string-empty? _%str105933%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@725.22-725.25"
               'contract:
               'string?
               'value:
               _%str105929%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str108434%_ _%char108435%_ _%start108436%_)
        (let* ((_%str108439%_ _%str108434%_)
               (_%char108447%_ _%char108435%_)
               (_%start108455%_ _%start108436%_)
               (_%len108464%_
                (let () (declare (not safe)) (##string-length _%str108439%_))))
          (let _%lp108466%_ ((_%k108468%_ _%start108455%_))
            (let ((_%k108470%_ _%k108468%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k108470%_ _%len108464%_))
                  (if (eq? _%char108447%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str108439%_ _%k108470%_)))
                      _%k108470%_
                      (_%lp108466%_
                       (let () (declare (not safe)) (##fx+ _%k108470%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str108485%_ _%char108486%_)
        (let ((_%start108488%_ '0))
          (__string-index__% _%str108485%_ _%char108486%_ _%start108488%_))))
    (define __string-index
      (lambda _g114556_
        (let ((_g114557_ (let () (declare (not safe)) (##length _g114556_))))
          (cond ((let () (declare (not safe)) (##fx= _g114557_ 2))
                 (apply __string-index__0 _g114556_))
                ((let () (declare (not safe)) (##fx= _g114557_ 3))
                 (apply __string-index__% _g114556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g114556_))))))
    (define string-index__%
      (lambda (_%str106064%_ _%char106065%_ _%start106066%_)
        (if (string? _%str106064%_)
            (let ((_%str106070%_ _%str106064%_))
              (if (char? _%char106065%_)
                  (let ((_%char106080%_ _%char106065%_))
                    (if (nonnegative-fixnum? _%start106066%_)
                        (let ((_%start106090%_ _%start106066%_))
                          (__string-index__%
                           _%str106070%_
                           _%char106080%_
                           _%start106090%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@731.21-731.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start106066%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@730.21-730.25"
                     'contract:
                     'char?
                     'value:
                     _%char106065%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@729.21-729.24"
               'contract:
               'string?
               'value:
               _%str106064%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str106103%_ _%char106104%_)
        (let ((_%start106106%_ '0))
          (string-index__% _%str106103%_ _%char106104%_ _%start106106%_))))
    (define string-index
      (lambda _g114558_
        (let ((_g114559_ (let () (declare (not safe)) (##length _g114558_))))
          (cond ((let () (declare (not safe)) (##fx= _g114559_ 2))
                 (apply string-index__0 _g114558_))
                ((let () (declare (not safe)) (##fx= _g114559_ 3))
                 (apply string-index__% _g114558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g114558_))))))
    (define __string-rindex__%
      (lambda (_%str108376%_ _%char108377%_ _%start108378%_)
        (let* ((_%str108381%_ _%str108376%_)
               (_%char108389%_ _%char108377%_)
               (_%len108398%_
                (let () (declare (not safe)) (##string-length _%str108381%_)))
               (_%start108400%_
                (if (fixnum? _%start108378%_)
                    _%start108378%_
                    (let () (declare (not safe)) (##fx- _%len108398%_ '1)))))
          (let _%lp108403%_ ((_%k108405%_ _%start108400%_))
            (let ((_%k108407%_ _%k108405%_))
              (if (let () (declare (not safe)) (##fx>= _%k108407%_ '0))
                  (if (eq? _%char108389%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str108381%_ _%k108407%_)))
                      _%k108407%_
                      (_%lp108403%_
                       (let () (declare (not safe)) (##fx- _%k108407%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str108424%_ _%char108425%_)
        (let ((_%start108427%_ '#f))
          (__string-rindex__% _%str108424%_ _%char108425%_ _%start108427%_))))
    (define __string-rindex
      (lambda _g114560_
        (let ((_g114561_ (let () (declare (not safe)) (##length _g114560_))))
          (cond ((let () (declare (not safe)) (##fx= _g114561_ 2))
                 (apply __string-rindex__0 _g114560_))
                ((let () (declare (not safe)) (##fx= _g114561_ 3))
                 (apply __string-rindex__% _g114560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g114560_))))))
    (define string-rindex__%
      (lambda (_%str106233%_ _%char106234%_ _%start106235%_)
        (if (string? _%str106233%_)
            (let ((_%str106239%_ _%str106233%_))
              (if (char? _%char106234%_)
                  (let ((_%char106249%_ _%char106234%_))
                    (__string-rindex__%
                     _%str106239%_
                     _%char106249%_
                     _%start106235%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@741.25-741.29"
                     'contract:
                     'char?
                     'value:
                     _%char106234%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@740.22-740.25"
               'contract:
               'string?
               'value:
               _%str106233%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str106262%_ _%char106263%_)
        (let ((_%start106265%_ '#f))
          (string-rindex__% _%str106262%_ _%char106263%_ _%start106265%_))))
    (define string-rindex
      (lambda _g114562_
        (let ((_g114563_ (let () (declare (not safe)) (##length _g114562_))))
          (cond ((let () (declare (not safe)) (##fx= _g114563_ 2))
                 (apply string-rindex__0 _g114562_))
                ((let () (declare (not safe)) (##fx= _g114563_ 3))
                 (apply string-rindex__% _g114562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g114562_))))))
    (define __string-split
      (lambda (_%str108273%_ _%char108274%_)
        (let* ((_%str108277%_ _%str108273%_)
               (_%char108285%_ _%char108274%_)
               (_%len108294%_
                (let () (declare (not safe)) (##string-length _%str108277%_))))
          (let _%lp108296%_ ((_%start108298%_ '0) (_%r108299%_ '()))
            (let* ((_%start108302%_ _%start108298%_)
                   (_%$e108360%_
                    (let* ((_%str108315%_ _%str108277%_)
                           (_%char108318%_ _%char108285%_)
                           (_%start108321%_ _%start108302%_)
                           (_%str108326%_ _%str108315%_)
                           (_%char108340%_ _%char108318%_))
                      (if (nonnegative-fixnum? _%start108321%_)
                          (let ((_%start108350%_ _%start108321%_))
                            (__string-index__%
                             _%str108326%_
                             _%char108340%_
                             _%start108350%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start108321%_)
                            '#!void)))))
              (if _%$e108360%_
                  ((lambda (_%end108363%_)
                     (let ((_%end108365%_ _%end108363%_))
                       (_%lp108296%_
                        (let () (declare (not safe)) (##fx+ _%end108365%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str108277%_
                                 _%start108302%_
                                 _%end108365%_))
                              _%r108299%_))))
                   _%$e108360%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start108302%_ _%len108294%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str108277%_
                                _%start108302%_
                                _%len108294%_)))
                       _%r108299%_)
                      (reverse! _%r108299%_))))))))
    (define string-split
      (lambda (_%str106391%_ _%char106392%_)
        (if (string? _%str106391%_)
            (let ((_%str106396%_ _%str106391%_))
              (if (char? _%char106392%_)
                  (let ((_%char106406%_ _%char106392%_))
                    (__string-split _%str106396%_ _%char106406%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@752.37-752.41"
                     'contract:
                     'char?
                     'value:
                     _%char106392%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@752.21-752.24"
               'contract:
               'string?
               'value:
               _%str106391%_)
              '#!void))))
    (define string-join
      (lambda (_%strs108123%_ _%join108124%_)
        (letrec ((_%join-length108127%_
                  (lambda (_%strs108211%_ _%jlen108212%_)
                    (let _%lp108214%_ ((_%rest108216%_ _%strs108211%_)
                                       (_%len108217%_ '0))
                      (let* ((_%len108219%_ _%len108217%_)
                             (_%rest108227108235%_ _%rest108216%_)
                             (_%else108229108243%_ (lambda () '0))
                             (_%K108231108261%_
                              (lambda (_%rest108246%_ _%hd108247%_)
                                (if (string? _%hd108247%_)
                                    (let ((_%hd108249%_ _%hd108247%_))
                                      (if (pair? _%rest108246%_)
                                          (_%lp108214%_
                                           _%rest108246%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd108249%_))
                                                _%jlen108212%_
                                                _%len108219%_))
                                          (let ((__tmp114564
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd108249%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp114564
                                                   _%len108219%_))))
                                    (error '"expected string" _%hd108247%_)))))
                        (if (pair? _%rest108227108235%_)
                            (let ((_%hd108232108264%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest108227108235%_)))
                                  (_%tl108233108266%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest108227108235%_))))
                              (let* ((_%hd108269%_ _%hd108232108264%_)
                                     (_%rest108271%_ _%tl108233108266%_))
                                (_%K108231108261%_
                                 _%rest108271%_
                                 _%hd108269%_)))
                            (_%else108229108243%_)))))))
          (let* ((_%join108132%_
                  (if (char? _%join108124%_)
                      (let () (declare (not safe)) (##string _%join108124%_))
                      (if (string? _%join108124%_)
                          _%join108124%_
                          (error '"expected string or char" _%join108124%_))))
                 (_%jlen108134%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join108132%_)))
                 (_%olen108136%_
                  (_%join-length108127%_ _%strs108123%_ _%jlen108134%_))
                 (_%ostr108138%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen108136%_))))
            (let _%lp108141%_ ((_%rest108143%_ _%strs108123%_)
                               (_%k108144%_ '0))
              (let* ((_%k108147%_ _%k108144%_)
                     (_%rest108163108171%_ _%rest108143%_)
                     (_%else108165108179%_ (lambda () '""))
                     (_%K108167108199%_
                      (lambda (_%rest108182%_ _%hd108183%_)
                        (let* ((_%hd108185%_ _%hd108183%_)
                               (_%hdlen108197%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd108185%_))))
                          (if (pair? _%rest108182%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd108185%_
                                   '0
                                   _%hdlen108197%_
                                   _%ostr108138%_
                                   _%k108147%_))
                                (let ((__tmp114565
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k108147%_ _%hdlen108197%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join108132%_
                                   '0
                                   _%jlen108134%_
                                   _%ostr108138%_
                                   __tmp114565))
                                (_%lp108141%_
                                 _%rest108182%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k108147%_
                                          _%hdlen108197%_
                                          _%jlen108134%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd108185%_
                                   '0
                                   _%hdlen108197%_
                                   _%ostr108138%_
                                   _%k108147%_))
                                _%ostr108138%_))))))
                (if (pair? _%rest108163108171%_)
                    (let ((_%hd108168108202%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest108163108171%_)))
                          (_%tl108169108204%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest108163108171%_))))
                      (let* ((_%hd108207%_ _%hd108168108202%_)
                             (_%rest108209%_ _%tl108169108204%_))
                        (_%K108167108199%_ _%rest108209%_ _%hd108207%_)))
                    (_%else108165108179%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes108063%_ _%port108064%_ _%start108065%_ _%end108066%_)
        (let* ((_%bytes108069%_ _%bytes108063%_)
               (_%port108077%_ _%port108064%_)
               (_%start108085%_ _%start108065%_)
               (_%end108093%_ _%end108066%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes108069%_
           _%start108085%_
           _%end108093%_
           _%port108077%_))))
    (define __read-u8vector__0
      (lambda (_%bytes108105%_ _%port108106%_)
        (let* ((_%start108108%_ '0)
               (_%end108110%_ (u8vector-length _%bytes108105%_)))
          (__read-u8vector__%
           _%bytes108105%_
           _%port108106%_
           _%start108108%_
           _%end108110%_))))
    (define __read-u8vector__1
      (lambda (_%bytes108112%_ _%port108113%_ _%start108114%_)
        (let ((_%end108116%_ (u8vector-length _%bytes108112%_)))
          (__read-u8vector__%
           _%bytes108112%_
           _%port108113%_
           _%start108114%_
           _%end108116%_))))
    (define __read-u8vector
      (lambda _g114566_
        (let ((_g114567_ (let () (declare (not safe)) (##length _g114566_))))
          (cond ((let () (declare (not safe)) (##fx= _g114567_ 2))
                 (apply __read-u8vector__0 _g114566_))
                ((let () (declare (not safe)) (##fx= _g114567_ 3))
                 (apply __read-u8vector__1 _g114566_))
                ((let () (declare (not safe)) (##fx= _g114567_ 4))
                 (apply __read-u8vector__% _g114566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g114566_))))))
    (define read-u8vector__%
      (lambda (_%bytes106537%_ _%port106538%_ _%start106539%_ _%end106540%_)
        (if (u8vector? _%bytes106537%_)
            (let ((_%bytes106544%_ _%bytes106537%_))
              (if (input-port? _%port106538%_)
                  (let ((_%port106554%_ _%port106538%_))
                    (if ((lambda (_%o106563%_)
                           (and (fixnum? _%o106563%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o106563%_ '0))
                                (let ((__tmp114568
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes106544%_))))
                                  (declare (not safe))
                                  (##fx< _%o106563%_ __tmp114568))))
                         _%start106539%_)
                        (let ((_%start106567%_ _%start106539%_))
                          (if ((lambda (_%o106576%_)
                                 (and (fixnum? _%o106576%_)
                                      (let ((__tmp114569
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes106544%_))))
                                        (declare (not safe))
                                        (##fx<= _%start106567%_
                                                _%o106576%_
                                                __tmp114569))))
                               _%end106540%_)
                              (let ((_%end106580%_ _%end106540%_))
                                (__read-u8vector__%
                                 _%bytes106544%_
                                 _%port106554%_
                                 _%start106567%_
                                 _%end106580%_))
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
                                 _%end106540%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@817.22-817.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start106539%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@816.22-816.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port106538%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@815.22-815.27"
               'contract:
               'u8vector?
               'value:
               _%bytes106537%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes106593%_ _%port106594%_)
        (let* ((_%start106596%_ '0)
               (_%end106598%_ (u8vector-length _%bytes106593%_)))
          (read-u8vector__%
           _%bytes106593%_
           _%port106594%_
           _%start106596%_
           _%end106598%_))))
    (define read-u8vector__1
      (lambda (_%bytes106600%_ _%port106601%_ _%start106602%_)
        (let ((_%end106604%_ (u8vector-length _%bytes106600%_)))
          (read-u8vector__%
           _%bytes106600%_
           _%port106601%_
           _%start106602%_
           _%end106604%_))))
    (define read-u8vector
      (lambda _g114570_
        (let ((_g114571_ (let () (declare (not safe)) (##length _g114570_))))
          (cond ((let () (declare (not safe)) (##fx= _g114571_ 2))
                 (apply read-u8vector__0 _g114570_))
                ((let () (declare (not safe)) (##fx= _g114571_ 3))
                 (apply read-u8vector__1 _g114570_))
                ((let () (declare (not safe)) (##fx= _g114571_ 4))
                 (apply read-u8vector__% _g114570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g114570_))))))
    (define __write-u8vector__%
      (lambda (_%bytes108002%_ _%port108003%_ _%start108004%_ _%end108005%_)
        (let* ((_%bytes108008%_ _%bytes108002%_)
               (_%port108016%_ _%port108003%_)
               (_%start108024%_ _%start108004%_)
               (_%end108032%_ _%end108005%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes108008%_
           _%start108024%_
           _%end108032%_
           _%port108016%_))))
    (define __write-u8vector__0
      (lambda (_%bytes108044%_ _%port108045%_)
        (let* ((_%start108047%_ '0)
               (_%end108049%_ (u8vector-length _%bytes108044%_)))
          (__write-u8vector__%
           _%bytes108044%_
           _%port108045%_
           _%start108047%_
           _%end108049%_))))
    (define __write-u8vector__1
      (lambda (_%bytes108051%_ _%port108052%_ _%start108053%_)
        (let ((_%end108055%_ (u8vector-length _%bytes108051%_)))
          (__write-u8vector__%
           _%bytes108051%_
           _%port108052%_
           _%start108053%_
           _%end108055%_))))
    (define __write-u8vector
      (lambda _g114572_
        (let ((_g114573_ (let () (declare (not safe)) (##length _g114572_))))
          (cond ((let () (declare (not safe)) (##fx= _g114573_ 2))
                 (apply __write-u8vector__0 _g114572_))
                ((let () (declare (not safe)) (##fx= _g114573_ 3))
                 (apply __write-u8vector__1 _g114572_))
                ((let () (declare (not safe)) (##fx= _g114573_ 4))
                 (apply __write-u8vector__% _g114572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g114572_))))))
    (define write-u8vector__%
      (lambda (_%bytes106732%_ _%port106733%_ _%start106734%_ _%end106735%_)
        (if (u8vector? _%bytes106732%_)
            (let ((_%bytes106739%_ _%bytes106732%_))
              (if (output-port? _%port106733%_)
                  (let* ((_%port106749%_ _%port106733%_)
                         (_%start106758%_ _%start106734%_))
                    (if ((lambda (_%o106766%_)
                           (and (fixnum? _%o106766%_)
                                (let ((__tmp114574
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes106739%_))))
                                  (declare (not safe))
                                  (##fx<= _%start106758%_
                                          _%o106766%_
                                          __tmp114574))))
                         _%end106735%_)
                        (let ((_%end106770%_ _%end106735%_))
                          (__write-u8vector__%
                           _%bytes106739%_
                           _%port106749%_
                           _%start106758%_
                           _%end106770%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@828.23-828.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end106735%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@826.23-826.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port106733%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@825.23-825.28"
               'contract:
               'u8vector?
               'value:
               _%bytes106732%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes106783%_ _%port106784%_)
        (let* ((_%start106786%_ '0)
               (_%end106788%_ (u8vector-length _%bytes106783%_)))
          (write-u8vector__%
           _%bytes106783%_
           _%port106784%_
           _%start106786%_
           _%end106788%_))))
    (define write-u8vector__1
      (lambda (_%bytes106790%_ _%port106791%_ _%start106792%_)
        (let ((_%end106794%_ (u8vector-length _%bytes106790%_)))
          (write-u8vector__%
           _%bytes106790%_
           _%port106791%_
           _%start106792%_
           _%end106794%_))))
    (define write-u8vector
      (lambda _g114575_
        (let ((_g114576_ (let () (declare (not safe)) (##length _g114575_))))
          (cond ((let () (declare (not safe)) (##fx= _g114576_ 2))
                 (apply write-u8vector__0 _g114575_))
                ((let () (declare (not safe)) (##fx= _g114576_ 3))
                 (apply write-u8vector__1 _g114575_))
                ((let () (declare (not safe)) (##fx= _g114576_ 4))
                 (apply write-u8vector__% _g114575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g114575_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag107970%_
               _%dbg-exprs107971%_
               _%dbg-thunks107972%_
               _%expr107973%_
               _%thunk107974%_)
        (letrec ((_%o107976%_ (current-output-port))
                 (_%e107977%_ (current-error-port))
                 (_%p107978%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f107979%_
                  (lambda ()
                    (force-output _%o107976%_)
                    (force-output _%e107977%_)))
                 (_%d107980%_
                  (lambda (_%x107987%_) (display _%x107987%_ _%e107977%_)))
                 (_%w107981%_
                  (lambda (_%x107989%_) (_%p107978%_ _%x107989%_ _%e107977%_)))
                 (_%n107982%_ (lambda () (newline _%e107977%_)))
                 (_%v107983%_
                  (lambda (_%l107992%_)
                    (for-each
                     (lambda (_%x107994%_)
                       (_%d107980%_ '" ")
                       (_%w107981%_ _%x107994%_))
                     _%l107992%_)
                    (_%n107982%_)))
                 (_%x107984%_
                  (lambda (_%expr107996%_ _%thunk107997%_)
                    (_%f107979%_)
                    (_%d107980%_ '"  ")
                    (_%w107981%_ _%expr107996%_)
                    (_%d107980%_ '" =>")
                    (call-with-values
                     _%thunk107997%_
                     (lambda _%x107999%_
                       (_%v107983%_ _%x107999%_)
                       (_%f107979%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x107999%_)))))))
          (if _%tag107970%_
              (begin
                (if (eq? _%tag107970%_ '#!void)
                    '#!void
                    (begin
                      (_%f107979%_)
                      (_%d107980%_ _%tag107970%_)
                      (_%n107982%_)))
                (for-each _%x107984%_ _%dbg-exprs107971%_ _%dbg-thunks107972%_)
                (if _%thunk107974%_
                    (_%x107984%_ _%expr107973%_ _%thunk107974%_)
                    '#!void))
              (if _%thunk107974%_ (_%thunk107974%_) '#!void)))))))
