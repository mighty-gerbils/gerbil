(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1771178560)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args111726%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args111726%_))
          (newline))))
    (define display*
      (lambda _%args111723%_
        (let () (declare (not safe)) (##for-each display _%args111723%_))))
    (define __file-newer?
      (lambda (_%file1111514%_ _%file2111515%_)
        (let* ((_%file1111518%_ _%file1111514%_)
               (_%file2111526%_ _%file2111515%_))
          (letrec ((_%__modification-time111670%_
                    (lambda (_%file111711%_)
                      (let* ((_%file111714%_ _%file111711%_)
                             (__tmp114502
                              (let ((__tmp114503
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file111714%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp114503))))
                        (declare (not safe))
                        (##time->seconds __tmp114502))))
                   (_%modification-time111671%_
                    (lambda (_%file111699%_)
                      (let ((_%file111702%_ _%file111699%_))
                        (_%__modification-time111670%_ _%file111702%_)))))
            (let ((__tmp114505
                   (let* ((_%file111673%_ _%file1111518%_)
                          (_%file111677%_ _%file111673%_))
                     (_%__modification-time111670%_ _%file111677%_)))
                  (__tmp114504
                   (let* ((_%file111686%_ _%file2111526%_)
                          (_%file111690%_ _%file111686%_))
                     (_%__modification-time111670%_ _%file111690%_))))
              (declare (not safe))
              (##fl> __tmp114505 __tmp114504))))))
    (define file-newer?
      (lambda (_%file1101100%_ _%file2101101%_)
        (if (string? _%file1101100%_)
            (let ((_%file1101105%_ _%file1101100%_))
              (if (string? _%file2101101%_)
                  (let ((_%file2101115%_ _%file2101101%_))
                    (__file-newer? _%file1101105%_ _%file2101115%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@98.20-98.25"
                     'contract:
                     'string?
                     'value:
                     _%file2101101%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@97.20-97.25"
               'contract:
               'string?
               'value:
               _%file1101100%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir111234%_ _%perms111235%_)
        (let* ((_%dir111238%_ _%dir111234%_) (_%perms111246%_ _%perms111235%_))
          (letrec ((_%__create1111390%_
                    (lambda (_%path111489%_)
                      (let ((_%path111492%_ _%path111489%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path111492%_))
                            (if (eq? (file-type _%path111492%_) 'directory)
                                '#!void
                                (error '"Path component is not a directory"
                                       _%path111492%_))
                            (if _%perms111246%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path111492%_
                                             (cons 'permissions:
                                                   (cons _%perms111246%_
                                                         '())))))
                                (create-directory _%path111492%_))))))
                   (_%create1111391%_
                    (lambda (_%path111477%_)
                      (let ((_%path111480%_ _%path111477%_))
                        (_%__create1111390%_ _%path111480%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir111238%_))
                '#!void
                (let _%lp111393%_ ((_%start111395%_ '0))
                  (let ((_%$e111442%_
                         (let* ((_%str111397%_ _%dir111238%_)
                                (_%char111400%_ '#\/)
                                (_%start111403%_ _%start111395%_)
                                (_%str111408%_ _%str111397%_)
                                (_%char111422%_ _%char111400%_))
                           (if (nonnegative-fixnum? _%start111403%_)
                               (let ((_%start111432%_ _%start111403%_))
                                 (__string-index__%
                                  _%str111408%_
                                  _%char111422%_
                                  _%start111432%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start111403%_)
                                 '#!void)))))
                    (if _%$e111442%_
                        ((lambda (_%x111445%_)
                           (if (let ()
                                 (declare (not safe))
                                 (##fx> _%x111445%_ '0))
                               (let* ((_%path111447%_
                                       (substring
                                        _%dir111238%_
                                        '0
                                        _%x111445%_))
                                      (_%path111451%_ _%path111447%_))
                                 (_%__create1111390%_ _%path111451%_))
                               '#!void)
                           (_%lp111393%_
                            (let ()
                              (declare (not safe))
                              (##fx+ _%x111445%_ '1))))
                         _%$e111442%_)
                        (let* ((_%path111463%_ _%dir111238%_)
                               (_%path111467%_ _%path111463%_))
                          (_%__create1111390%_ _%path111467%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir111507%_)
        (let ((_%perms111509%_ '493))
          (__create-directory*__% _%dir111507%_ _%perms111509%_))))
    (define __create-directory*
      (lambda _g114506_
        (let ((_g114507_ (let () (declare (not safe)) (##length _g114506_))))
          (cond ((let () (declare (not safe)) (##fx= _g114507_ 1))
                 (apply __create-directory*__0 _g114506_))
                ((let () (declare (not safe)) (##fx= _g114507_ 2))
                 (apply __create-directory*__% _g114506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g114506_))))))
    (define create-directory*__%
      (lambda (_%dir101246%_ _%perms101247%_)
        (if (string? _%dir101246%_)
            (let ((_%dir101251%_ _%dir101246%_))
              (if (fixnum? _%perms101247%_)
                  (let ((_%perms101261%_ _%perms101247%_))
                    (__create-directory*__% _%dir101251%_ _%perms101261%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@109.26-109.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms101247%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@108.26-108.29"
               'contract:
               'string?
               'value:
               _%dir101246%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir101274%_)
        (let ((_%perms101276%_ '493))
          (create-directory*__% _%dir101274%_ _%perms101276%_))))
    (define create-directory*
      (lambda _g114508_
        (let ((_g114509_ (let () (declare (not safe)) (##length _g114508_))))
          (cond ((let () (declare (not safe)) (##fx= _g114509_ 1))
                 (apply create-directory*__0 _g114508_))
                ((let () (declare (not safe)) (##fx= _g114509_ 2))
                 (apply create-directory*__% _g114508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g114508_))))))
    (define __move-file__%
      (lambda (_%src111177%_ _%dest111178%_ _%replace?111179%_)
        (let* ((_%src111182%_ _%src111177%_)
               (_%dest111190%_ _%dest111178%_)
               (_%replace?111198%_ _%replace?111179%_))
          (letrec ((_%force-move-it111207%_
                    (lambda ()
                      (let ((_%tmp111213%_
                             (if _%replace?111198%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest111190%_))
                                     (let ((__tmp114510
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest111190%_
                                        '"."
                                        __tmp114510))
                                     '#f)
                                 '#f)))
                        (if _%tmp111213%_
                            (rename-file _%dest111190%_ _%tmp111213%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e111215%_)
                           (if _%tmp111213%_
                               (rename-file _%tmp111213%_ _%dest111190%_ '#t)
                               '#!void)
                           (raise _%e111215%_))
                         (lambda ()
                           (let ((_%fi111218%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src111182%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi111218%_))
                                      'symbolic-link)
                                 (let ((__tmp114511
                                        (path-normalize _%src111182%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp114511
                                    _%dest111190%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src111182%_
                                    _%dest111190%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src111182%_))
                           (if _%tmp111213%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp111213%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e111209%_)
               (if (let () (declare (not safe)) (##file-exists? _%src111182%_))
                   (_%force-move-it111207%_)
                   (raise _%e111209%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src111182%_
                  _%dest111190%_
                  _%replace?111198%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src111224%_ _%dest111225%_)
        (let ((_%replace?111227%_ '#t))
          (__move-file__% _%src111224%_ _%dest111225%_ _%replace?111227%_))))
    (define __move-file
      (lambda _g114512_
        (let ((_g114513_ (let () (declare (not safe)) (##length _g114512_))))
          (cond ((let () (declare (not safe)) (##fx= _g114513_ 2))
                 (apply __move-file__0 _g114512_))
                ((let () (declare (not safe)) (##fx= _g114513_ 3))
                 (apply __move-file__% _g114512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g114512_))))))
    (define move-file__%
      (lambda (_%src101402%_ _%dest101403%_ _%replace?101404%_)
        (if (string? _%src101402%_)
            (let ((_%src101408%_ _%src101402%_))
              (if (string? _%dest101403%_)
                  (let ((_%dest101418%_ _%dest101403%_))
                    (if (boolean? _%replace?101404%_)
                        (let ((_%replace?101428%_ _%replace?101404%_))
                          (__move-file__%
                           _%src101408%_
                           _%dest101418%_
                           _%replace?101428%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@133.51-133.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?101404%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@133.34-133.38"
                     'contract:
                     'string?
                     'value:
                     _%dest101403%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@133.18-133.21"
               'contract:
               'string?
               'value:
               _%src101402%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src101441%_ _%dest101442%_)
        (let ((_%replace?101444%_ '#t))
          (move-file__% _%src101441%_ _%dest101442%_ _%replace?101444%_))))
    (define move-file
      (lambda _g114514_
        (let ((_g114515_ (let () (declare (not safe)) (##length _g114514_))))
          (cond ((let () (declare (not safe)) (##fx= _g114515_ 2))
                 (apply move-file__0 _g114514_))
                ((let () (declare (not safe)) (##fx= _g114515_ 3))
                 (apply move-file__% _g114514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g114514_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore111173%_ '#t))
    (define true? (lambda (_%obj111170%_) (eq? _%obj111170%_ '#t)))
    (define false (lambda _%ignore111167%_ '#f))
    (define void (lambda _%ignore111164%_ '#!void))
    (define void? (lambda (_%obj111161%_) (eq? _%obj111161%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj111158%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj111158%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj111155%_) (eq? _%obj111155%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj111152%_) (eq? _%obj111152%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj111149%_) (eq? _%obj111149%_ '#!optional)))
    (define immediate?
      (lambda (_%obj111146%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj111146%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj111143%_)
        (if (fixnum? _%obj111143%_)
            (let () (declare (not safe)) (##fx>= _%obj111143%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj111137%_)
        (let ((_%$e111140%_ (pair? _%obj111137%_)))
          (if _%$e111140%_ _%$e111140%_ (null? _%obj111137%_)))))
    (define values-count
      (lambda (_%obj111134%_)
        (if (let () (declare (not safe)) (##values? _%obj111134%_))
            (let () (declare (not safe)) (##values-length _%obj111134%_))
            '1)))
    (define __values-ref
      (lambda (_%obj111121%_ _%k111122%_)
        (let ((_%k111125%_ _%k111122%_))
          (if (let () (declare (not safe)) (##values? _%obj111121%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj111121%_ _%k111125%_))
              _%obj111121%_))))
    (define values-ref
      (lambda (_%obj101570%_ _%k101571%_)
        (if (fixnum? _%k101571%_)
            (let ((_%k101575%_ _%k101571%_))
              (__values-ref _%obj101570%_ _%k101575%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@267.23-267.24"
               'contract:
               'fixnum?
               'value:
               _%k101571%_)
              '#!void))))
    (define values->list
      (lambda (_%obj111118%_)
        (if (let () (declare (not safe)) (##values? _%obj111118%_))
            (let () (declare (not safe)) (##values->list _%obj111118%_))
            (list _%obj111118%_))))
    (define __foldl1
      (lambda (_%f111066%_ _%iv111067%_ _%lst111068%_)
        (let ((_%f111071%_ _%f111066%_))
          (let _%lp111080%_ ((_%rest111082%_ _%lst111068%_)
                             (_%r111083%_ _%iv111067%_))
            (let* ((_%rest111084111092%_ _%rest111082%_)
                   (_%else111086111100%_ (lambda () _%r111083%_))
                   (_%K111088111106%_
                    (lambda (_%rest111103%_ _%x111104%_)
                      (_%lp111080%_
                       _%rest111103%_
                       (let ()
                         (declare (not safe))
                         (_%f111071%_ _%x111104%_ _%r111083%_))))))
              (if (pair? _%rest111084111092%_)
                  (let ((_%hd111089111109%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111084111092%_)))
                        (_%tl111090111111%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111084111092%_))))
                    (let* ((_%x111114%_ _%hd111089111109%_)
                           (_%rest111116%_ _%tl111090111111%_))
                      (_%K111088111106%_ _%rest111116%_ _%x111114%_)))
                  (_%else111086111100%_)))))))
    (define foldl1
      (lambda (_%f101705%_ _%iv101706%_ _%lst101707%_)
        (if (procedure? _%f101705%_)
            (let ((_%f101711%_ _%f101705%_))
              (__foldl1 _%f101711%_ _%iv101706%_ _%lst101707%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@290.15-290.16"
               'contract:
               'procedure?
               'value:
               _%f101705%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f110979%_ _%iv110980%_ _%lst1110981%_ _%lst2110982%_)
        (let ((_%f110985%_ _%f110979%_))
          (let _%lp110994%_ ((_%rest1110996%_ _%lst1110981%_)
                             (_%rest2110997%_ _%lst2110982%_)
                             (_%r110998%_ _%iv110980%_))
            (let* ((_%rest1110999111007%_ _%rest1110996%_)
                   (_%else111001111015%_ (lambda () _%r110998%_))
                   (_%K111003111054%_
                    (lambda (_%rest1111018%_ _%x1111019%_)
                      (let* ((_%rest2111020111028%_ _%rest2110997%_)
                             (_%else111022111036%_ (lambda () _%r110998%_))
                             (_%K111024111042%_
                              (lambda (_%rest2111039%_ _%x2111040%_)
                                (_%lp110994%_
                                 _%rest1111018%_
                                 _%rest2111039%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f110985%_
                                    _%x1111019%_
                                    _%x2111040%_
                                    _%r110998%_))))))
                        (if (pair? _%rest2111020111028%_)
                            (let ((_%hd111025111045%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2111020111028%_)))
                                  (_%tl111026111047%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2111020111028%_))))
                              (let* ((_%x2111050%_ _%hd111025111045%_)
                                     (_%rest2111052%_ _%tl111026111047%_))
                                (_%K111024111042%_
                                 _%rest2111052%_
                                 _%x2111050%_)))
                            (_%else111022111036%_))))))
              (if (pair? _%rest1110999111007%_)
                  (let ((_%hd111004111057%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110999111007%_)))
                        (_%tl111005111059%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110999111007%_))))
                    (let* ((_%x1111062%_ _%hd111004111057%_)
                           (_%rest1111064%_ _%tl111005111059%_))
                      (_%K111003111054%_ _%rest1111064%_ _%x1111062%_)))
                  (_%else111001111015%_)))))))
    (define foldl2
      (lambda (_%f101841%_ _%iv101842%_ _%lst1101843%_ _%lst2101844%_)
        (if (procedure? _%f101841%_)
            (let ((_%f101848%_ _%f101841%_))
              (__foldl2
               _%f101848%_
               _%iv101842%_
               _%lst1101843%_
               _%lst2101844%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@297.15-297.16"
               'contract:
               'procedure?
               'value:
               _%f101841%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f110912%_ _%iv110913%_ _%lst110914%_)
        (let* ((_%f110916%_ _%f110912%_)
               (_%iv110919%_ _%iv110913%_)
               (_%lst110922%_ _%lst110914%_))
          (if (procedure? _%f110916%_)
              (let ((_%f110927%_ _%f110916%_))
                (__foldl1 _%f110927%_ _%iv110919%_ _%lst110922%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110916%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f110940%_ _%iv110941%_ _%lst1110942%_ _%lst2110943%_)
        (let* ((_%f110945%_ _%f110940%_)
               (_%iv110948%_ _%iv110941%_)
               (_%lst1110951%_ _%lst1110942%_)
               (_%lst2110954%_ _%lst2110943%_))
          (if (procedure? _%f110945%_)
              (let ((_%f110959%_ _%f110945%_))
                (__foldl2
                 _%f110959%_
                 _%iv110948%_
                 _%lst1110951%_
                 _%lst2110954%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110945%_)
                '#!void)))))
    (define foldl
      (lambda _g114516_
        (let ((_g114517_ (let () (declare (not safe)) (##length _g114516_))))
          (cond ((let () (declare (not safe)) (##fx= _g114517_ 3))
                 (apply foldl__0 _g114516_))
                ((let () (declare (not safe)) (##fx= _g114517_ 4))
                 (apply foldl__1 _g114516_))
                ((let () (declare (not safe)) (##fx>= _g114517_ 4))
                 (apply foldl* _g114516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g114516_))))))
    (define __foldl*
      (lambda (_%f110843%_ _%iv110844%_ . _%rest110845%_)
        (let ((_%f110848%_ _%f110843%_))
          (let _%recur110857%_ ((_%iv110859%_ _%iv110844%_)
                                (_%rest110860%_ _%rest110845%_))
            (if (let* ((_%f110862%_ pair?)
                       (_%lst110865%_ _%rest110860%_)
                       (_%f110870%_ _%f110862%_))
                  (__andmap1 _%f110870%_ _%lst110865%_))
                (_%recur110857%_
                 (let ((__tmp114518
                        (let* ((_%f110889%_
                                (lambda (_%xs110886%_ _%r110887%_)
                                  (cons (car _%xs110886%_) _%r110887%_)))
                               (_%iv110892%_ (list _%iv110859%_))
                               (_%lst110895%_ _%rest110860%_)
                               (_%f110900%_ _%f110889%_))
                          (__foldr1 _%f110900%_ _%iv110892%_ _%lst110895%_))))
                   (declare (not safe))
                   (##apply _%f110848%_ __tmp114518))
                 (map cdr _%rest110860%_))
                _%iv110859%_)))))
    (define foldl*
      (lambda (_%f101978%_ _%iv101979%_ . _%rest101980%_)
        (if (procedure? _%f101978%_)
            (let ((_%f101984%_ _%f101978%_))
              (declare (not safe))
              (##apply __foldl* _%f101984%_ _%iv101979%_ _%rest101980%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@315.15-315.16"
               'contract:
               'procedure?
               'value:
               _%f101978%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f110792%_ _%iv110793%_ _%lst110794%_)
        (let ((_%f110797%_ _%f110792%_))
          (let _%recur110806%_ ((_%rest110808%_ _%lst110794%_))
            (let* ((_%rest110809110817%_ _%rest110808%_)
                   (_%else110811110825%_ (lambda () _%iv110793%_))
                   (_%K110813110831%_
                    (lambda (_%rest110828%_ _%x110829%_)
                      (let ((__tmp114519 (_%recur110806%_ _%rest110828%_)))
                        (declare (not safe))
                        (_%f110797%_ _%x110829%_ __tmp114519)))))
              (if (pair? _%rest110809110817%_)
                  (let ((_%hd110814110834%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110809110817%_)))
                        (_%tl110815110836%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110809110817%_))))
                    (let* ((_%x110839%_ _%hd110814110834%_)
                           (_%rest110841%_ _%tl110815110836%_))
                      (_%K110813110831%_ _%rest110841%_ _%x110839%_)))
                  (_%else110811110825%_)))))))
    (define foldr1
      (lambda (_%f102114%_ _%iv102115%_ _%lst102116%_)
        (if (procedure? _%f102114%_)
            (let ((_%f102120%_ _%f102114%_))
              (__foldr1 _%f102120%_ _%iv102115%_ _%lst102116%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@325.15-325.16"
               'contract:
               'procedure?
               'value:
               _%f102114%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f110706%_ _%iv110707%_ _%lst1110708%_ _%lst2110709%_)
        (let ((_%f110712%_ _%f110706%_))
          (let _%recur110721%_ ((_%rest1110723%_ _%lst1110708%_)
                                (_%rest2110724%_ _%lst2110709%_))
            (let* ((_%rest1110725110733%_ _%rest1110723%_)
                   (_%else110727110741%_ (lambda () _%iv110707%_))
                   (_%K110729110780%_
                    (lambda (_%rest1110744%_ _%x1110745%_)
                      (let* ((_%rest2110746110754%_ _%rest2110724%_)
                             (_%else110748110762%_ (lambda () _%iv110707%_))
                             (_%K110750110768%_
                              (lambda (_%rest2110765%_ _%x2110766%_)
                                (let ((__tmp114520
                                       (_%recur110721%_
                                        _%rest1110744%_
                                        _%rest2110765%_)))
                                  (declare (not safe))
                                  (_%f110712%_
                                   _%x1110745%_
                                   _%x2110766%_
                                   __tmp114520)))))
                        (if (pair? _%rest2110746110754%_)
                            (let ((_%hd110751110771%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110746110754%_)))
                                  (_%tl110752110773%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110746110754%_))))
                              (let* ((_%x2110776%_ _%hd110751110771%_)
                                     (_%rest2110778%_ _%tl110752110773%_))
                                (_%K110750110768%_
                                 _%rest2110778%_
                                 _%x2110776%_)))
                            (_%else110748110762%_))))))
              (if (pair? _%rest1110725110733%_)
                  (let ((_%hd110730110783%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110725110733%_)))
                        (_%tl110731110785%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110725110733%_))))
                    (let* ((_%x1110788%_ _%hd110730110783%_)
                           (_%rest1110790%_ _%tl110731110785%_))
                      (_%K110729110780%_ _%rest1110790%_ _%x1110788%_)))
                  (_%else110727110741%_)))))))
    (define foldr2
      (lambda (_%f102250%_ _%iv102251%_ _%lst1102252%_ _%lst2102253%_)
        (if (procedure? _%f102250%_)
            (let ((_%f102257%_ _%f102250%_))
              (__foldr2
               _%f102257%_
               _%iv102251%_
               _%lst1102252%_
               _%lst2102253%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@332.15-332.16"
               'contract:
               'procedure?
               'value:
               _%f102250%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f110639%_ _%iv110640%_ _%lst110641%_)
        (let* ((_%f110643%_ _%f110639%_)
               (_%iv110646%_ _%iv110640%_)
               (_%lst110649%_ _%lst110641%_))
          (if (procedure? _%f110643%_)
              (let ((_%f110654%_ _%f110643%_))
                (__foldr1 _%f110654%_ _%iv110646%_ _%lst110649%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110643%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f110667%_ _%iv110668%_ _%lst1110669%_ _%lst2110670%_)
        (let* ((_%f110672%_ _%f110667%_)
               (_%iv110675%_ _%iv110668%_)
               (_%lst1110678%_ _%lst1110669%_)
               (_%lst2110681%_ _%lst2110670%_))
          (if (procedure? _%f110672%_)
              (let ((_%f110686%_ _%f110672%_))
                (__foldr2
                 _%f110686%_
                 _%iv110675%_
                 _%lst1110678%_
                 _%lst2110681%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110672%_)
                '#!void)))))
    (define foldr
      (lambda _g114521_
        (let ((_g114522_ (let () (declare (not safe)) (##length _g114521_))))
          (cond ((let () (declare (not safe)) (##fx= _g114522_ 3))
                 (apply foldr__0 _g114521_))
                ((let () (declare (not safe)) (##fx= _g114522_ 4))
                 (apply foldr__1 _g114521_))
                ((let () (declare (not safe)) (##fx>= _g114522_ 4))
                 (apply foldr* _g114521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g114521_))))))
    (define __foldr*
      (lambda (_%f110571%_ _%iv110572%_ . _%rest110573%_)
        (let ((_%f110576%_ _%f110571%_))
          (let _%recur110585%_ ((_%rest110587%_ _%rest110573%_))
            (if (let* ((_%f110589%_ pair?)
                       (_%lst110592%_ _%rest110587%_)
                       (_%f110597%_ _%f110589%_))
                  (__andmap1 _%f110597%_ _%lst110592%_))
                (let ((__tmp114523
                       (let* ((_%f110616%_
                               (lambda (_%xs110613%_ _%r110614%_)
                                 (cons (car _%xs110613%_) _%r110614%_)))
                              (_%iv110619%_
                               (list (_%recur110585%_
                                      (map cdr _%rest110587%_))))
                              (_%lst110622%_ _%rest110587%_)
                              (_%f110627%_ _%f110616%_))
                         (__foldr1 _%f110627%_ _%iv110619%_ _%lst110622%_))))
                  (declare (not safe))
                  (##apply _%f110576%_ __tmp114523))
                _%iv110572%_)))))
    (define foldr*
      (lambda (_%f102387%_ _%iv102388%_ . _%rest102389%_)
        (if (procedure? _%f102387%_)
            (let ((_%f102393%_ _%f102387%_))
              (declare (not safe))
              (##apply __foldr* _%f102393%_ _%iv102388%_ _%rest102389%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@350.15-350.16"
               'contract:
               'procedure?
               'value:
               _%f102387%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%l110458%_)
        (let* ((_%l110459110472%_ _%l110458%_)
               (_%E110463110476%_
                (lambda ()
                  (error '"No clause matching"
                         _%l110459110472%_
                         '([[] . r])
                         '([_ . r])
                         '(_))
                  '#!void)))
          (let ((_%K110468110561%_
                 (lambda (_%r110559%_) (remove-nulls! _%r110559%_)))
                (_%K110465110548%_
                 (lambda (_%r110488%_)
                   (let _%loop110490%_ ((_%l110492%_ _%l110458%_)
                                        (_%r110493%_ _%r110488%_))
                     (let* ((_%r110494110507%_ _%r110493%_)
                            (_%E110498110511%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%r110494110507%_
                                      '([[] . rr])
                                      '([_ . rr])
                                      '(_))
                               '#!void)))
                       (let ((_%K110503110538%_
                              (lambda (_%rr110536%_)
                                (let ((__tmp114525 _%l110492%_)
                                      (__tmp114524
                                       (remove-nulls! _%rr110536%_)))
                                  (declare (not safe))
                                  (##set-cdr! __tmp114525 __tmp114524))))
                             (_%K110500110525%_
                              (lambda (_%rr110523%_)
                                (_%loop110490%_ _%r110493%_ _%rr110523%_)))
                             (_%K110499110516%_ (lambda () '#!void)))
                         (if (pair? _%r110494110507%_)
                             (let ((_%tl110505110543%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%r110494110507%_)))
                                   (_%hd110504110541%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%r110494110507%_))))
                               (if (null? _%hd110504110541%_)
                                   (let ((_%rr110546%_ _%tl110505110543%_))
                                     (_%K110503110538%_ _%rr110546%_))
                                   (let ((_%rr110531%_ _%tl110505110543%_))
                                     (_%K110500110525%_ _%rr110531%_))))
                             '#!void))))
                   _%l110458%_))
                (_%K110464110481%_ (lambda () _%l110458%_)))
            (if (pair? _%l110459110472%_)
                (let ((_%tl110470110566%_
                       (let () (declare (not safe)) (##cdr _%l110459110472%_)))
                      (_%hd110469110564%_
                       (let ()
                         (declare (not safe))
                         (##car _%l110459110472%_))))
                  (if (null? _%hd110469110564%_)
                      (let ((_%r110569%_ _%tl110470110566%_))
                        (remove-nulls! _%r110569%_))
                      (let ((_%r110554%_ _%tl110470110566%_))
                        (_%K110465110548%_ _%r110554%_))))
                (_%K110464110481%_))))))
    (define append1!
      (lambda (_%l110443%_ _%x110444%_)
        (let ((_%l2110447%_ (cons _%x110444%_ '())))
          (if (pair? _%l110443%_)
              (let ((_%l110449%_ _%l110443%_))
                (let ((__tmp114526
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l110449%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp114526 _%l2110447%_))
                _%l110449%_)
              _%l2110447%_))))
    (define __append-reverse-until
      (lambda (_%pred110385%_ _%rhead110386%_ _%tail110387%_)
        (let ((_%pred110390%_ _%pred110385%_))
          (let _%loop110399%_ ((_%rhead110401%_ _%rhead110386%_)
                               (_%tail110402%_ _%tail110387%_))
            (let* ((_%rhead110404110413%_ _%rhead110401%_)
                   (_%E110407110417%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rhead110404110413%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%K110411110440%_ (lambda () (values '() _%tail110402%_)))
                    (_%K110408110424%_
                     (lambda (_%r110421%_ _%a110422%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred110390%_ _%a110422%_))
                           (values _%rhead110401%_ _%tail110402%_)
                           (_%loop110399%_
                            _%r110421%_
                            (cons _%a110422%_ _%tail110402%_))))))
                (let ((_%try-match110406110436%_
                       (lambda ()
                         (if (pair? _%rhead110404110413%_)
                             (let ((_%tl110410110429%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rhead110404110413%_)))
                                   (_%hd110409110427%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rhead110404110413%_))))
                               (let ((_%a110432%_ _%hd110409110427%_)
                                     (_%r110434%_ _%tl110410110429%_))
                                 (_%K110408110424%_ _%r110434%_ _%a110432%_)))
                             (_%E110407110417%_)))))
                  (if (null? _%rhead110404110413%_)
                      (_%K110411110440%_)
                      (_%try-match110406110436%_)))))))))
    (define append-reverse-until
      (lambda (_%pred102523%_ _%rhead102524%_ _%tail102525%_)
        (if (procedure? _%pred102523%_)
            (let ((_%pred102529%_ _%pred102523%_))
              (__append-reverse-until
               _%pred102529%_
               _%rhead102524%_
               _%tail102525%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@390.29-390.33"
               'contract:
               'procedure?
               'value:
               _%pred102523%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f110334%_ _%lst110335%_)
        (let ((_%f110338%_ _%f110334%_))
          (let _%lp110347%_ ((_%rest110349%_ _%lst110335%_))
            (let* ((_%rest110351110359%_ _%rest110349%_)
                   (_%else110353110367%_ (lambda () '#t))
                   (_%K110355110373%_
                    (lambda (_%rest110370%_ _%x110371%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f110338%_ _%x110371%_))
                          (_%lp110347%_ _%rest110370%_)
                          '#f))))
              (if (pair? _%rest110351110359%_)
                  (let ((_%hd110356110376%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110351110359%_)))
                        (_%tl110357110378%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110351110359%_))))
                    (let* ((_%x110381%_ _%hd110356110376%_)
                           (_%rest110383%_ _%tl110357110378%_))
                      (_%K110355110373%_ _%rest110383%_ _%x110381%_)))
                  (_%else110353110367%_)))))))
    (define andmap1
      (lambda (_%f102659%_ _%lst102660%_)
        (if (procedure? _%f102659%_)
            (let ((_%f102664%_ _%f102659%_))
              (__andmap1 _%f102664%_ _%lst102660%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@401.16-401.17"
               'contract:
               'procedure?
               'value:
               _%f102659%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f110248%_ _%lst1110249%_ _%lst2110250%_)
        (let ((_%f110253%_ _%f110248%_))
          (let _%lp110262%_ ((_%rest1110264%_ _%lst1110249%_)
                             (_%rest2110265%_ _%lst2110250%_))
            (let* ((_%rest1110267110275%_ _%rest1110264%_)
                   (_%else110269110283%_ (lambda () '#t))
                   (_%K110271110322%_
                    (lambda (_%rest1110286%_ _%x1110287%_)
                      (let* ((_%rest2110288110296%_ _%rest2110265%_)
                             (_%else110290110304%_ (lambda () '#t))
                             (_%K110292110310%_
                              (lambda (_%rest2110307%_ _%x2110308%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f110253%_ _%x1110287%_ _%x2110308%_))
                                    (_%lp110262%_
                                     _%rest1110286%_
                                     _%rest2110307%_)
                                    '#f))))
                        (if (pair? _%rest2110288110296%_)
                            (let ((_%hd110293110313%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110288110296%_)))
                                  (_%tl110294110315%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110288110296%_))))
                              (let* ((_%x2110318%_ _%hd110293110313%_)
                                     (_%rest2110320%_ _%tl110294110315%_))
                                (_%K110292110310%_
                                 _%rest2110320%_
                                 _%x2110318%_)))
                            (_%else110290110304%_))))))
              (if (pair? _%rest1110267110275%_)
                  (let ((_%hd110272110325%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110267110275%_)))
                        (_%tl110273110327%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110267110275%_))))
                    (let* ((_%x1110330%_ _%hd110272110325%_)
                           (_%rest1110332%_ _%tl110273110327%_))
                      (_%K110271110322%_ _%rest1110332%_ _%x1110330%_)))
                  (_%else110269110283%_)))))))
    (define andmap2
      (lambda (_%f102794%_ _%lst1102795%_ _%lst2102796%_)
        (if (procedure? _%f102794%_)
            (let ((_%f102800%_ _%f102794%_))
              (__andmap2 _%f102800%_ _%lst1102795%_ _%lst2102796%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@410.16-410.17"
               'contract:
               'procedure?
               'value:
               _%f102794%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f110192%_ _%lst110193%_)
        (let* ((_%f110195%_ _%f110192%_) (_%lst110198%_ _%lst110193%_))
          (if (procedure? _%f110195%_)
              (let ((_%f110203%_ _%f110195%_))
                (__andmap1 _%f110203%_ _%lst110198%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110195%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f110215%_ _%lst1110216%_ _%lst2110217%_)
        (let* ((_%f110219%_ _%f110215%_)
               (_%lst1110222%_ _%lst1110216%_)
               (_%lst2110225%_ _%lst2110217%_))
          (if (procedure? _%f110219%_)
              (let ((_%f110230%_ _%f110219%_))
                (__andmap2 _%f110230%_ _%lst1110222%_ _%lst2110225%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f110219%_)
                '#!void)))))
    (define andmap
      (lambda _g114527_
        (let ((_g114528_ (let () (declare (not safe)) (##length _g114527_))))
          (cond ((let () (declare (not safe)) (##fx= _g114528_ 2))
                 (apply andmap__0 _g114527_))
                ((let () (declare (not safe)) (##fx= _g114528_ 3))
                 (apply andmap__1 _g114527_))
                ((let () (declare (not safe)) (##fx>= _g114528_ 3))
                 (apply andmap* _g114527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g114527_))))))
    (define __andmap*
      (lambda (_%f110149%_ . _%rest110150%_)
        (let ((_%f110153%_ _%f110149%_))
          (let _%recur110162%_ ((_%rest110164%_ _%rest110150%_))
            (if (let* ((_%f110167%_ pair?)
                       (_%lst110170%_ _%rest110164%_)
                       (_%f110175%_ _%f110167%_))
                  (__andmap1 _%f110175%_ _%lst110170%_))
                (if (let ((__tmp114529 (map car _%rest110164%_)))
                      (declare (not safe))
                      (##apply _%f110153%_ __tmp114529))
                    (_%recur110162%_ (map cdr _%rest110164%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f102930%_ . _%rest102931%_)
        (if (procedure? _%f102930%_)
            (let ((_%f102935%_ _%f102930%_))
              (declare (not safe))
              (##apply __andmap* _%f102935%_ _%rest102931%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@430.16-430.17"
               'contract:
               'procedure?
               'value:
               _%f102930%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f110096%_ _%lst110097%_)
        (let ((_%f110100%_ _%f110096%_))
          (let _%lp110109%_ ((_%rest110111%_ _%lst110097%_))
            (let* ((_%rest110112110120%_ _%rest110111%_)
                   (_%else110114110128%_ (lambda () '#f))
                   (_%K110116110137%_
                    (lambda (_%rest110131%_ _%x110132%_)
                      (let ((_%$e110134%_
                             (let ()
                               (declare (not safe))
                               (_%f110100%_ _%x110132%_))))
                        (if _%$e110134%_
                            _%$e110134%_
                            (_%lp110109%_ _%rest110131%_))))))
              (if (pair? _%rest110112110120%_)
                  (let ((_%hd110117110140%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest110112110120%_)))
                        (_%tl110118110142%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest110112110120%_))))
                    (let* ((_%x110145%_ _%hd110117110140%_)
                           (_%rest110147%_ _%tl110118110142%_))
                      (_%K110116110137%_ _%rest110147%_ _%x110145%_)))
                  (_%else110114110128%_)))))))
    (define ormap1
      (lambda (_%f103065%_ _%lst103066%_)
        (if (procedure? _%f103065%_)
            (let ((_%f103070%_ _%f103065%_))
              (__ormap1 _%f103070%_ _%lst103066%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@439.15-439.16"
               'contract:
               'procedure?
               'value:
               _%f103065%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f110008%_ _%lst1110009%_ _%lst2110010%_)
        (let ((_%f110013%_ _%f110008%_))
          (let _%lp110022%_ ((_%rest1110024%_ _%lst1110009%_)
                             (_%rest2110025%_ _%lst2110010%_))
            (let* ((_%rest1110026110034%_ _%rest1110024%_)
                   (_%else110028110042%_ (lambda () '#f))
                   (_%K110030110084%_
                    (lambda (_%rest1110045%_ _%x1110046%_)
                      (let* ((_%rest2110047110055%_ _%rest2110025%_)
                             (_%else110049110063%_ (lambda () '#f))
                             (_%K110051110072%_
                              (lambda (_%rest2110066%_ _%x2110067%_)
                                (let ((_%$e110069%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f110013%_
                                          _%x1110046%_
                                          _%x2110067%_))))
                                  (if _%$e110069%_
                                      _%$e110069%_
                                      (_%lp110022%_
                                       _%rest1110045%_
                                       _%rest2110066%_))))))
                        (if (pair? _%rest2110047110055%_)
                            (let ((_%hd110052110075%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2110047110055%_)))
                                  (_%tl110053110077%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2110047110055%_))))
                              (let* ((_%x2110080%_ _%hd110052110075%_)
                                     (_%rest2110082%_ _%tl110053110077%_))
                                (_%K110051110072%_
                                 _%rest2110082%_
                                 _%x2110080%_)))
                            (_%else110049110063%_))))))
              (if (pair? _%rest1110026110034%_)
                  (let ((_%hd110031110087%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1110026110034%_)))
                        (_%tl110032110089%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1110026110034%_))))
                    (let* ((_%x1110092%_ _%hd110031110087%_)
                           (_%rest1110094%_ _%tl110032110089%_))
                      (_%K110030110084%_ _%rest1110094%_ _%x1110092%_)))
                  (_%else110028110042%_)))))))
    (define ormap2
      (lambda (_%f103200%_ _%lst1103201%_ _%lst2103202%_)
        (if (procedure? _%f103200%_)
            (let ((_%f103206%_ _%f103200%_))
              (__ormap2 _%f103206%_ _%lst1103201%_ _%lst2103202%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@446.15-446.16"
               'contract:
               'procedure?
               'value:
               _%f103200%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f109952%_ _%lst109953%_)
        (let* ((_%f109955%_ _%f109952%_) (_%lst109958%_ _%lst109953%_))
          (if (procedure? _%f109955%_)
              (let ((_%f109963%_ _%f109955%_))
                (__ormap1 _%f109963%_ _%lst109958%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109955%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f109975%_ _%lst1109976%_ _%lst2109977%_)
        (let* ((_%f109979%_ _%f109975%_)
               (_%lst1109982%_ _%lst1109976%_)
               (_%lst2109985%_ _%lst2109977%_))
          (if (procedure? _%f109979%_)
              (let ((_%f109990%_ _%f109979%_))
                (__ormap2 _%f109990%_ _%lst1109982%_ _%lst2109985%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109979%_)
                '#!void)))))
    (define ormap
      (lambda _g114530_
        (let ((_g114531_ (let () (declare (not safe)) (##length _g114530_))))
          (cond ((let () (declare (not safe)) (##fx= _g114531_ 2))
                 (apply ormap__0 _g114530_))
                ((let () (declare (not safe)) (##fx= _g114531_ 3))
                 (apply ormap__1 _g114530_))
                ((let () (declare (not safe)) (##fx>= _g114531_ 3))
                 (apply ormap* _g114530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g114530_))))))
    (define __ormap*
      (lambda (_%f109908%_ . _%rest109909%_)
        (let ((_%f109912%_ _%f109908%_))
          (let _%recur109921%_ ((_%rest109923%_ _%rest109909%_))
            (if (let* ((_%f109925%_ pair?)
                       (_%lst109928%_ _%rest109923%_)
                       (_%f109933%_ _%f109925%_))
                  (__andmap1 _%f109933%_ _%lst109928%_))
                (let ((_%$e109949%_
                       (let ((__tmp114532 (map car _%rest109923%_)))
                         (declare (not safe))
                         (##apply _%f109912%_ __tmp114532))))
                  (if _%$e109949%_
                      _%$e109949%_
                      (_%recur109921%_ (map cdr _%rest109923%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f103336%_ . _%rest103337%_)
        (if (procedure? _%f103336%_)
            (let ((_%f103341%_ _%f103336%_))
              (declare (not safe))
              (##apply __ormap* _%f103341%_ _%rest103337%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@464.15-464.16"
               'contract:
               'procedure?
               'value:
               _%f103336%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f109851%_ _%lst109852%_)
        (let ((_%f109855%_ _%f109851%_))
          (let _%recur109864%_ ((_%rest109866%_ _%lst109852%_))
            (let* ((_%rest109868109876%_ _%rest109866%_)
                   (_%else109870109884%_ (lambda () '()))
                   (_%K109872109896%_
                    (lambda (_%rest109887%_ _%x109888%_)
                      (let ((_%$e109890%_
                             (let ()
                               (declare (not safe))
                               (_%f109855%_ _%x109888%_))))
                        (if _%$e109890%_
                            ((lambda (_%r109893%_)
                               (cons _%r109893%_
                                     (_%recur109864%_ _%rest109887%_)))
                             _%$e109890%_)
                            (_%recur109864%_ _%rest109887%_))))))
              (if (pair? _%rest109868109876%_)
                  (let ((_%hd109873109899%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest109868109876%_)))
                        (_%tl109874109901%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest109868109876%_))))
                    (let* ((_%x109904%_ _%hd109873109899%_)
                           (_%rest109906%_ _%tl109874109901%_))
                      (_%K109872109896%_ _%rest109906%_ _%x109904%_)))
                  (_%else109870109884%_)))))))
    (define filter-map1
      (lambda (_%f103471%_ _%lst103472%_)
        (if (procedure? _%f103471%_)
            (let ((_%f103476%_ _%f103471%_))
              (__filter-map1 _%f103476%_ _%lst103472%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@471.20-471.21"
               'contract:
               'procedure?
               'value:
               _%f103471%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f109759%_ _%lst1109760%_ _%lst2109761%_)
        (let ((_%f109764%_ _%f109759%_))
          (let _%recur109773%_ ((_%rest1109775%_ _%lst1109760%_)
                                (_%rest2109776%_ _%lst2109761%_))
            (let* ((_%rest1109778109786%_ _%rest1109775%_)
                   (_%else109780109794%_ (lambda () '()))
                   (_%K109782109839%_
                    (lambda (_%rest1109797%_ _%x1109798%_)
                      (let* ((_%rest2109799109807%_ _%rest2109776%_)
                             (_%else109801109815%_ (lambda () '()))
                             (_%K109803109827%_
                              (lambda (_%rest2109818%_ _%x2109819%_)
                                (let ((_%$e109821%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f109764%_
                                          _%x1109798%_
                                          _%x2109819%_))))
                                  (if _%$e109821%_
                                      ((lambda (_%r109824%_)
                                         (cons _%r109824%_
                                               (_%recur109773%_
                                                _%rest1109797%_
                                                _%rest2109818%_)))
                                       _%$e109821%_)
                                      (_%recur109773%_
                                       _%rest1109797%_
                                       _%rest2109818%_))))))
                        (if (pair? _%rest2109799109807%_)
                            (let ((_%hd109804109830%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest2109799109807%_)))
                                  (_%tl109805109832%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest2109799109807%_))))
                              (let* ((_%x2109835%_ _%hd109804109830%_)
                                     (_%rest2109837%_ _%tl109805109832%_))
                                (_%K109803109827%_
                                 _%rest2109837%_
                                 _%x2109835%_)))
                            (_%else109801109815%_))))))
              (if (pair? _%rest1109778109786%_)
                  (let ((_%hd109783109842%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest1109778109786%_)))
                        (_%tl109784109844%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest1109778109786%_))))
                    (let* ((_%x1109847%_ _%hd109783109842%_)
                           (_%rest1109849%_ _%tl109784109844%_))
                      (_%K109782109839%_ _%rest1109849%_ _%x1109847%_)))
                  (_%else109780109794%_)))))))
    (define filter-map2
      (lambda (_%f103606%_ _%lst1103607%_ _%lst2103608%_)
        (if (procedure? _%f103606%_)
            (let ((_%f103612%_ _%f103606%_))
              (__filter-map2 _%f103612%_ _%lst1103607%_ _%lst2103608%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@482.20-482.21"
               'contract:
               'procedure?
               'value:
               _%f103606%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f109703%_ _%lst109704%_)
        (let* ((_%f109706%_ _%f109703%_) (_%lst109709%_ _%lst109704%_))
          (if (procedure? _%f109706%_)
              (let ((_%f109714%_ _%f109706%_))
                (__filter-map1 _%f109714%_ _%lst109709%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109706%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f109726%_ _%lst1109727%_ _%lst2109728%_)
        (let* ((_%f109730%_ _%f109726%_)
               (_%lst1109733%_ _%lst1109727%_)
               (_%lst2109736%_ _%lst2109728%_))
          (if (procedure? _%f109730%_)
              (let ((_%f109741%_ _%f109730%_))
                (__filter-map2 _%f109741%_ _%lst1109733%_ _%lst2109736%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f109730%_)
                '#!void)))))
    (define filter-map
      (lambda _g114533_
        (let ((_g114534_ (let () (declare (not safe)) (##length _g114533_))))
          (cond ((let () (declare (not safe)) (##fx= _g114534_ 2))
                 (apply filter-map__0 _g114533_))
                ((let () (declare (not safe)) (##fx= _g114534_ 3))
                 (apply filter-map__1 _g114533_))
                ((let () (declare (not safe)) (##fx>= _g114534_ 3))
                 (apply filter-map* _g114533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g114533_))))))
    (define __filter-map*
      (lambda (_%f109654%_ . _%rest109655%_)
        (let ((_%f109658%_ _%f109654%_))
          (let _%recur109667%_ ((_%rest109669%_ _%rest109655%_))
            (if (let* ((_%f109672%_ pair?)
                       (_%lst109675%_ _%rest109669%_)
                       (_%f109680%_ _%f109672%_))
                  (__andmap1 _%f109680%_ _%lst109675%_))
                (let ((_%$e109697%_
                       (let ((__tmp114535 (map car _%rest109669%_)))
                         (declare (not safe))
                         (##apply _%f109658%_ __tmp114535))))
                  (if _%$e109697%_
                      ((lambda (_%r109700%_)
                         (cons _%r109700%_
                               (_%recur109667%_ (map cdr _%rest109669%_))))
                       _%$e109697%_)
                      (_%recur109667%_ (map cdr _%rest109669%_))))
                '())))))
    (define filter-map*
      (lambda (_%f103742%_ . _%rest103743%_)
        (if (procedure? _%f103742%_)
            (let ((_%f103747%_ _%f103742%_))
              (declare (not safe))
              (##apply __filter-map* _%f103747%_ _%rest103743%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@504.20-504.21"
               'contract:
               'procedure?
               'value:
               _%f103742%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key109630%_ _%lst109632%_ _%default109634%_)
        (let ((_%$e109637%_
               (if (pair? _%lst109632%_)
                   (assq _%key109630%_ _%lst109632%_)
                   '#f)))
          (if _%$e109637%_
              (cdr _%$e109637%_)
              (if (procedure? _%default109634%_)
                  (_%default109634%_ _%key109630%_)
                  _%default109634%_)))))
    (define agetq__0
      (lambda (_%key109645%_ _%lst109646%_)
        (let ((_%default109648%_ '#f))
          (agetq__% _%key109645%_ _%lst109646%_ _%default109648%_))))
    (define agetq
      (lambda _g114536_
        (let ((_g114537_ (let () (declare (not safe)) (##length _g114536_))))
          (cond ((let () (declare (not safe)) (##fx= _g114537_ 2))
                 (apply agetq__0 _g114536_))
                ((let () (declare (not safe)) (##fx= _g114537_ 3))
                 (apply agetq__% _g114536_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g114536_))))))
    (define agetv__%
      (lambda (_%key109605%_ _%lst109607%_ _%default109609%_)
        (let ((_%$e109612%_
               (if (pair? _%lst109607%_)
                   (assv _%key109605%_ _%lst109607%_)
                   '#f)))
          (if _%$e109612%_
              (cdr _%$e109612%_)
              (if (procedure? _%default109609%_)
                  (_%default109609%_ _%key109605%_)
                  _%default109609%_)))))
    (define agetv__0
      (lambda (_%key109620%_ _%lst109621%_)
        (let ((_%default109623%_ '#f))
          (agetv__% _%key109620%_ _%lst109621%_ _%default109623%_))))
    (define agetv
      (lambda _g114538_
        (let ((_g114539_ (let () (declare (not safe)) (##length _g114538_))))
          (cond ((let () (declare (not safe)) (##fx= _g114539_ 2))
                 (apply agetv__0 _g114538_))
                ((let () (declare (not safe)) (##fx= _g114539_ 3))
                 (apply agetv__% _g114538_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g114538_))))))
    (define aget__%
      (lambda (_%key109580%_ _%lst109582%_ _%default109584%_)
        (let ((_%$e109587%_
               (if (pair? _%lst109582%_)
                   (assoc _%key109580%_ _%lst109582%_)
                   '#f)))
          (if _%$e109587%_
              (cdr _%$e109587%_)
              (if (procedure? _%default109584%_)
                  (_%default109584%_ _%key109580%_)
                  _%default109584%_)))))
    (define aget__0
      (lambda (_%key109595%_ _%lst109596%_)
        (let ((_%default109598%_ '#f))
          (aget__% _%key109595%_ _%lst109596%_ _%default109598%_))))
    (define aget
      (lambda _g114540_
        (let ((_g114541_ (let () (declare (not safe)) (##length _g114540_))))
          (cond ((let () (declare (not safe)) (##fx= _g114541_ 2))
                 (apply aget__0 _g114540_))
                ((let () (declare (not safe)) (##fx= _g114541_ 3))
                 (apply aget__% _g114540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g114540_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key109509%_ _%lst109511%_ _%default109513%_)
        (let _%lp109516%_ ((_%rest109519%_ _%lst109511%_))
          (let* ((_%rest109521109531%_ _%rest109519%_)
                 (_%else109523109539%_
                  (lambda ()
                    (if (procedure? _%default109513%_)
                        (_%default109513%_ _%key109509%_)
                        _%default109513%_)))
                 (_%K109525109548%_
                  (lambda (_%rest109542%_ _%v109543%_ _%k109545%_)
                    (if (eq? _%k109545%_ _%key109509%_)
                        _%v109543%_
                        (_%lp109516%_ _%rest109542%_)))))
            (if (pair? _%rest109521109531%_)
                (let ((_%hd109526109551%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109521109531%_)))
                      (_%tl109527109553%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109521109531%_))))
                  (let ((_%k109556%_ _%hd109526109551%_))
                    (if (pair? _%tl109527109553%_)
                        (let ((_%hd109528109558%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl109527109553%_)))
                              (_%tl109529109560%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl109527109553%_))))
                          (let* ((_%v109563%_ _%hd109528109558%_)
                                 (_%rest109565%_ _%tl109529109560%_))
                            (_%K109525109548%_
                             _%rest109565%_
                             _%v109563%_
                             _%k109556%_)))
                        (_%else109523109539%_))))
                (_%else109523109539%_))))))
    (define pgetq__0
      (lambda (_%key109570%_ _%lst109571%_)
        (let ((_%default109573%_ '#f))
          (pgetq__% _%key109570%_ _%lst109571%_ _%default109573%_))))
    (define pgetq
      (lambda _g114542_
        (let ((_g114543_ (let () (declare (not safe)) (##length _g114542_))))
          (cond ((let () (declare (not safe)) (##fx= _g114543_ 2))
                 (apply pgetq__0 _g114542_))
                ((let () (declare (not safe)) (##fx= _g114543_ 3))
                 (apply pgetq__% _g114542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g114542_))))))
    (define pgetv__%
      (lambda (_%key109438%_ _%lst109440%_ _%default109442%_)
        (let _%lp109445%_ ((_%rest109448%_ _%lst109440%_))
          (let* ((_%rest109450109460%_ _%rest109448%_)
                 (_%else109452109468%_
                  (lambda ()
                    (if (procedure? _%default109442%_)
                        (_%default109442%_ _%key109438%_)
                        _%default109442%_)))
                 (_%K109454109477%_
                  (lambda (_%rest109471%_ _%v109472%_ _%k109474%_)
                    (if (eqv? _%k109474%_ _%key109438%_)
                        _%v109472%_
                        (_%lp109445%_ _%rest109471%_)))))
            (if (pair? _%rest109450109460%_)
                (let ((_%hd109455109480%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109450109460%_)))
                      (_%tl109456109482%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109450109460%_))))
                  (let ((_%k109485%_ _%hd109455109480%_))
                    (if (pair? _%tl109456109482%_)
                        (let ((_%hd109457109487%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl109456109482%_)))
                              (_%tl109458109489%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl109456109482%_))))
                          (let* ((_%v109492%_ _%hd109457109487%_)
                                 (_%rest109494%_ _%tl109458109489%_))
                            (_%K109454109477%_
                             _%rest109494%_
                             _%v109492%_
                             _%k109485%_)))
                        (_%else109452109468%_))))
                (_%else109452109468%_))))))
    (define pgetv__0
      (lambda (_%key109499%_ _%lst109500%_)
        (let ((_%default109502%_ '#f))
          (pgetv__% _%key109499%_ _%lst109500%_ _%default109502%_))))
    (define pgetv
      (lambda _g114544_
        (let ((_g114545_ (let () (declare (not safe)) (##length _g114544_))))
          (cond ((let () (declare (not safe)) (##fx= _g114545_ 2))
                 (apply pgetv__0 _g114544_))
                ((let () (declare (not safe)) (##fx= _g114545_ 3))
                 (apply pgetv__% _g114544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g114544_))))))
    (define pget__%
      (lambda (_%key109367%_ _%lst109369%_ _%default109371%_)
        (let _%lp109374%_ ((_%rest109377%_ _%lst109369%_))
          (let* ((_%rest109379109389%_ _%rest109377%_)
                 (_%else109381109397%_
                  (lambda ()
                    (if (procedure? _%default109371%_)
                        (_%default109371%_ _%key109367%_)
                        _%default109371%_)))
                 (_%K109383109406%_
                  (lambda (_%rest109400%_ _%v109401%_ _%k109403%_)
                    (if (equal? _%k109403%_ _%key109367%_)
                        _%v109401%_
                        (_%lp109374%_ _%rest109400%_)))))
            (if (pair? _%rest109379109389%_)
                (let ((_%hd109384109409%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109379109389%_)))
                      (_%tl109385109411%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109379109389%_))))
                  (let ((_%k109414%_ _%hd109384109409%_))
                    (if (pair? _%tl109385109411%_)
                        (let ((_%hd109386109416%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl109385109411%_)))
                              (_%tl109387109418%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl109385109411%_))))
                          (let* ((_%v109421%_ _%hd109386109416%_)
                                 (_%rest109423%_ _%tl109387109418%_))
                            (_%K109383109406%_
                             _%rest109423%_
                             _%v109421%_
                             _%k109414%_)))
                        (_%else109381109397%_))))
                (_%else109381109397%_))))))
    (define pget__0
      (lambda (_%key109428%_ _%lst109429%_)
        (let ((_%default109431%_ '#f))
          (pget__% _%key109428%_ _%lst109429%_ _%default109431%_))))
    (define pget
      (lambda _g114546_
        (let ((_g114547_ (let () (declare (not safe)) (##length _g114546_))))
          (cond ((let () (declare (not safe)) (##fx= _g114547_ 2))
                 (apply pget__0 _g114546_))
                ((let () (declare (not safe)) (##fx= _g114547_ 3))
                 (apply pget__% _g114546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g114546_))))))
    (define __find
      (lambda (_%pred109327%_ _%lst109328%_)
        (let* ((_%pred109331%_ _%pred109327%_)
               (_%$e109362%_
                (let* ((_%proc109340%_ _%pred109331%_)
                       (_%lst109343%_ _%lst109328%_)
                       (_%proc109348%_ _%proc109340%_))
                  (__memf _%proc109348%_ _%lst109343%_))))
          (if _%$e109362%_
              (let () (declare (not safe)) (##car _%$e109362%_))
              '#f))))
    (define find
      (lambda (_%pred104039%_ _%lst104040%_)
        (if (procedure? _%pred104039%_)
            (let ((_%pred104044%_ _%pred104039%_))
              (__find _%pred104044%_ _%lst104040%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@550.13-550.17"
               'contract:
               'procedure?
               'value:
               _%pred104039%_)
              '#!void))))
    (define __memf
      (lambda (_%proc109277%_ _%lst109278%_)
        (let ((_%proc109281%_ _%proc109277%_))
          (let _%lp109290%_ ((_%rest109292%_ _%lst109278%_))
            (let* ((_%rest109293109301%_ _%rest109292%_)
                   (_%else109295109309%_ (lambda () '#f))
                   (_%K109297109315%_
                    (lambda (_%tl109312%_ _%hd109313%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc109281%_ _%hd109313%_))
                          _%rest109292%_
                          (_%lp109290%_ _%tl109312%_)))))
              (if (pair? _%rest109293109301%_)
                  (let ((_%hd109298109318%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest109293109301%_)))
                        (_%tl109299109320%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest109293109301%_))))
                    (let* ((_%hd109323%_ _%hd109298109318%_)
                           (_%tl109325%_ _%tl109299109320%_))
                      (_%K109297109315%_ _%tl109325%_ _%hd109323%_)))
                  (_%else109295109309%_)))))))
    (define memf
      (lambda (_%proc104174%_ _%lst104175%_)
        (if (procedure? _%proc104174%_)
            (let ((_%proc104179%_ _%proc104174%_))
              (__memf _%proc104179%_ _%lst104175%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@555.13-555.17"
               'contract:
               'procedure?
               'value:
               _%proc104174%_)
              '#!void))))
    (define remove1
      (lambda (_%el109200%_ _%lst109202%_)
        (let _%lp109205%_ ((_%rest109208%_ _%lst109202%_) (_%r109210%_ '()))
          (let* ((_%rest109212109220%_ _%rest109208%_)
                 (_%else109214109228%_ (lambda () _%lst109202%_))
                 (_%K109216109265%_
                  (lambda (_%rest109231%_ _%hd109232%_)
                    (if (equal? _%el109200%_ _%hd109232%_)
                        (let* ((_%f109235%_ cons)
                               (_%iv109238%_ _%rest109231%_)
                               (_%lst109241%_ _%r109210%_)
                               (_%f109246%_ _%f109235%_))
                          (__foldl1 _%f109246%_ _%iv109238%_ _%lst109241%_))
                        (_%lp109205%_
                         _%rest109231%_
                         (cons _%hd109232%_ _%r109210%_))))))
            (if (pair? _%rest109212109220%_)
                (let ((_%hd109217109268%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109212109220%_)))
                      (_%tl109218109270%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109212109220%_))))
                  (let* ((_%hd109273%_ _%hd109217109268%_)
                         (_%rest109275%_ _%tl109218109270%_))
                    (_%K109216109265%_ _%rest109275%_ _%hd109273%_)))
                (_%else109214109228%_))))))
    (define remv1
      (lambda (_%el109123%_ _%lst109125%_)
        (let _%lp109128%_ ((_%rest109131%_ _%lst109125%_) (_%r109133%_ '()))
          (let* ((_%rest109135109143%_ _%rest109131%_)
                 (_%else109137109151%_ (lambda () _%lst109125%_))
                 (_%K109139109188%_
                  (lambda (_%rest109154%_ _%hd109155%_)
                    (if (eqv? _%el109123%_ _%hd109155%_)
                        (let* ((_%f109158%_ cons)
                               (_%iv109161%_ _%rest109154%_)
                               (_%lst109164%_ _%r109133%_)
                               (_%f109169%_ _%f109158%_))
                          (__foldl1 _%f109169%_ _%iv109161%_ _%lst109164%_))
                        (_%lp109128%_
                         _%rest109154%_
                         (cons _%hd109155%_ _%r109133%_))))))
            (if (pair? _%rest109135109143%_)
                (let ((_%hd109140109191%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109135109143%_)))
                      (_%tl109141109193%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109135109143%_))))
                  (let* ((_%hd109196%_ _%hd109140109191%_)
                         (_%rest109198%_ _%tl109141109193%_))
                    (_%K109139109188%_ _%rest109198%_ _%hd109196%_)))
                (_%else109137109151%_))))))
    (define remq1
      (lambda (_%el109046%_ _%lst109048%_)
        (let _%lp109051%_ ((_%rest109054%_ _%lst109048%_) (_%r109056%_ '()))
          (let* ((_%rest109058109066%_ _%rest109054%_)
                 (_%else109060109074%_ (lambda () _%lst109048%_))
                 (_%K109062109111%_
                  (lambda (_%rest109077%_ _%hd109078%_)
                    (if (eq? _%el109046%_ _%hd109078%_)
                        (let* ((_%f109081%_ cons)
                               (_%iv109084%_ _%rest109077%_)
                               (_%lst109087%_ _%r109056%_)
                               (_%f109092%_ _%f109081%_))
                          (__foldl1 _%f109092%_ _%iv109084%_ _%lst109087%_))
                        (_%lp109051%_
                         _%rest109077%_
                         (cons _%hd109078%_ _%r109056%_))))))
            (if (pair? _%rest109058109066%_)
                (let ((_%hd109063109114%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109058109066%_)))
                      (_%tl109064109116%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109058109066%_))))
                  (let* ((_%hd109119%_ _%hd109063109114%_)
                         (_%rest109121%_ _%tl109064109116%_))
                    (_%K109062109111%_ _%rest109121%_ _%hd109119%_)))
                (_%else109060109074%_))))))
    (define __remf
      (lambda (_%proc108963%_ _%lst108964%_)
        (let ((_%proc108967%_ _%proc108963%_))
          (let _%lp108976%_ ((_%rest108978%_ _%lst108964%_) (_%r108979%_ '()))
            (let* ((_%rest108980108988%_ _%rest108978%_)
                   (_%else108982108996%_ (lambda () _%lst108964%_))
                   (_%K108984109034%_
                    (lambda (_%rest108999%_ _%hd109000%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc108967%_ _%hd109000%_))
                          (let* ((_%f109002%_ cons)
                                 (_%iv109005%_ _%rest108999%_)
                                 (_%lst109008%_ _%r108979%_)
                                 (_%f109013%_ _%f109002%_))
                            (__foldl1 _%f109013%_ _%iv109005%_ _%lst109008%_))
                          (_%lp108976%_
                           _%rest108999%_
                           (cons _%hd109000%_ _%r108979%_))))))
              (if (pair? _%rest108980108988%_)
                  (let ((_%hd108985109037%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest108980108988%_)))
                        (_%tl108986109039%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest108980108988%_))))
                    (let* ((_%hd109042%_ _%hd108985109037%_)
                           (_%rest109044%_ _%tl108986109039%_))
                      (_%K108984109034%_ _%rest109044%_ _%hd109042%_)))
                  (_%else108982108996%_)))))))
    (define remf
      (lambda (_%proc104390%_ _%lst104391%_)
        (if (procedure? _%proc104390%_)
            (let ((_%proc104395%_ _%proc104390%_))
              (__remf _%proc104395%_ _%lst104391%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@577.13-577.17"
               'contract:
               'procedure?
               'value:
               _%proc104390%_)
              '#!void))))
    (define __1+
      (lambda (_%x108951%_)
        (let ((_%x108954%_ _%x108951%_)) (+ _%x108954%_ '1))))
    (define 1+
      (lambda (_%x104525%_)
        (if (number? _%x104525%_)
            (let ((_%x104529%_ _%x104525%_)) (__1+ _%x104529%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@586.11-586.12"
               'contract:
               'number?
               'value:
               _%x104525%_)
              '#!void))))
    (define __1-
      (lambda (_%x108939%_)
        (let ((_%x108942%_ _%x108939%_)) (- _%x108942%_ '1))))
    (define 1-
      (lambda (_%x104659%_)
        (if (number? _%x104659%_)
            (let ((_%x104663%_ _%x104659%_)) (__1- _%x104663%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@594.11-594.12"
               'contract:
               'number?
               'value:
               _%x104659%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x108927%_)
        (let ((_%x108930%_ _%x108927%_))
          (declare (not safe))
          (##fx+ _%x108930%_ '1))))
    (define fx1+
      (lambda (_%x104793%_)
        (if (fixnum? _%x104793%_)
            (let ((_%x104797%_ _%x104793%_)) (__fx1+ _%x104797%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@602.13-602.14"
               'contract:
               'fixnum?
               'value:
               _%x104793%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x108915%_)
        (let ((_%x108918%_ _%x108915%_))
          (declare (not safe))
          (##fx- _%x108918%_ '1))))
    (define fx1-
      (lambda (_%x104927%_)
        (if (fixnum? _%x104927%_)
            (let ((_%x104931%_ _%x104927%_)) (__fx1- _%x104931%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@610.13-610.14"
               'contract:
               'fixnum?
               'value:
               _%x104927%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x108912%_)
        (if (fixnum? _%x108912%_)
            (let () (declare (not safe)) (##fx>= _%x108912%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x108909%_)
        (if (fixnum? _%x108909%_)
            (let () (declare (not safe)) (##fx> _%x108909%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x108906%_)
        (let () (declare (not safe)) (##fx= _%x108906%_ '0))))
    (define fx<0?
      (lambda (_%x108903%_)
        (if (fixnum? _%x108903%_)
            (let () (declare (not safe)) (##fx< _%x108903%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x108900%_)
        (if (fixnum? _%x108900%_)
            (let () (declare (not safe)) (##fx<= _%x108900%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x108897%_)
        (if (symbol? _%x108897%_) (not (uninterned-symbol? _%x108897%_)) '#f)))
    (define __display-as-string
      (lambda (_%x108791%_ _%port108792%_)
        (let ((_%port108795%_ _%port108792%_))
          (if (or (string? _%x108791%_)
                  (symbol? _%x108791%_)
                  (keyword? _%x108791%_)
                  (number? _%x108791%_)
                  (char? _%x108791%_))
              (display _%x108791%_ _%port108795%_)
              (if (pair? _%x108791%_)
                  (let ()
                    (let* ((_%x108818%_
                            (let () (declare (not safe)) (##car _%x108791%_)))
                           (_%port108821%_ _%port108795%_))
                      (if (output-port? _%port108821%_)
                          (let ((_%port108826%_ _%port108821%_))
                            (__display-as-string _%x108818%_ _%port108826%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port108821%_)
                            '#!void)))
                    (let* ((_%x108841%_
                            (let () (declare (not safe)) (##cdr _%x108791%_)))
                           (_%port108844%_ _%port108795%_))
                      (if (output-port? _%port108844%_)
                          (let ((_%port108849%_ _%port108844%_))
                            (__display-as-string _%x108841%_ _%port108849%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port108844%_)
                            '#!void))))
                  (if (vector? _%x108791%_)
                      (vector-for-each
                       (lambda (_%g108860108862%_)
                         (let* ((_%x108865%_ _%g108860108862%_)
                                (_%port108868%_ _%port108795%_))
                           (if (output-port? _%port108868%_)
                               (let ((_%port108873%_ _%port108868%_))
                                 (__display-as-string
                                  _%x108865%_
                                  _%port108873%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port108868%_)
                                 '#!void))))
                       _%x108791%_)
                      (if (or (null? _%x108791%_)
                              (eq? _%x108791%_ '#!void)
                              (eof-object? _%x108791%_)
                              (boolean? _%x108791%_))
                          '#!void
                          (let ()
                            (error '"cannot convert as string" _%x108791%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x105061%_ _%port105062%_)
        (if (output-port? _%port105062%_)
            (let ((_%port105066%_ _%port105062%_))
              (__display-as-string _%x105061%_ _%port105066%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@640.28-640.32"
               'contract:
               'output-port?
               'value:
               _%port105062%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x108731%_)
        (if (string? _%x108731%_)
            _%x108731%_
            (if (symbol? _%x108731%_)
                (let () (declare (not safe)) (##symbol->string _%x108731%_))
                (if (keyword? _%x108731%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x108731%_))
                    (if (number? _%x108731%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x108731%_))
                        (call-with-output-string
                         '()
                         (lambda (_%g108737108739%_)
                           (let* ((_%x108742%_ _%x108731%_)
                                  (_%port108745%_ _%g108737108739%_))
                             (if (output-port? _%port108745%_)
                                 (let ((_%port108750%_ _%port108745%_))
                                   (__display-as-string
                                    _%x108742%_
                                    _%port108750%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port108745%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args108764%_
        (call-with-output-string
         '()
         (lambda (_%g108765108767%_)
           (let* ((_%x108770%_ _%args108764%_)
                  (_%port108773%_ _%g108765108767%_))
             (if (output-port? _%port108773%_)
                 (let ((_%port108778%_ _%port108773%_))
                   (__display-as-string _%x108770%_ _%port108778%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port108773%_)
                   '#!void)))))))
    (define as-string
      (lambda _g114548_
        (let ((_g114549_ (let () (declare (not safe)) (##length _g114548_))))
          (cond ((let () (declare (not safe)) (##fx= _g114549_ 1))
                 (apply as-string__0 _g114548_))
                (#t
                 (apply (lambda _%args108764%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args108764%_)))
                        _g114548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g114548_))))))
    (define make-symbol__0
      (lambda (_%x108727%_)
        (if (interned-symbol? _%x108727%_)
            _%x108727%_
            (let ((__tmp114550 (as-string__0 _%x108727%_)))
              (declare (not safe))
              (##string->symbol __tmp114550)))))
    (define make-symbol__1
      (lambda _%args108729%_
        (let ((__tmp114551
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args108729%_))))
          (declare (not safe))
          (##string->symbol __tmp114551))))
    (define make-symbol
      (lambda _g114552_
        (let ((_g114553_ (let () (declare (not safe)) (##length _g114552_))))
          (cond ((let () (declare (not safe)) (##fx= _g114553_ 1))
                 (apply make-symbol__0 _g114552_))
                (#t
                 (apply (lambda _%args108729%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args108729%_)))
                        _g114552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g114552_))))))
    (define make-keyword__0
      (lambda (_%x108723%_)
        (if (interned-keyword? _%x108723%_)
            _%x108723%_
            (let ((__tmp114554 (as-string__0 _%x108723%_)))
              (declare (not safe))
              (##string->keyword __tmp114554)))))
    (define make-keyword__1
      (lambda _%args108725%_
        (let ((__tmp114555
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args108725%_))))
          (declare (not safe))
          (##string->keyword __tmp114555))))
    (define make-keyword
      (lambda _g114556_
        (let ((_g114557_ (let () (declare (not safe)) (##length _g114556_))))
          (cond ((let () (declare (not safe)) (##fx= _g114557_ 1))
                 (apply make-keyword__0 _g114556_))
                (#t
                 (apply (lambda _%args108725%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args108725%_)))
                        _g114556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g114556_))))))
    (define interned-keyword?
      (lambda (_%x108720%_)
        (if (keyword? _%x108720%_)
            (not (uninterned-keyword? _%x108720%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym108708%_)
        (let ((_%sym108711%_ _%sym108708%_))
          (if (uninterned-symbol? _%sym108711%_)
              (let ((__tmp114558
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym108711%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp114558))
              (let ((__tmp114559
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym108711%_))))
                (declare (not safe))
                (##string->keyword __tmp114559))))))
    (define symbol->keyword
      (lambda (_%sym105196%_)
        (if (symbol? _%sym105196%_)
            (let ((_%sym105200%_ _%sym105196%_))
              (__symbol->keyword _%sym105200%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@683.24-683.27"
               'contract:
               'symbol?
               'value:
               _%sym105196%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym108696%_)
        (let ((_%sym108699%_ _%sym108696%_))
          (if (uninterned-keyword? _%sym108699%_)
              (let ((__tmp114560
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym108699%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp114560))
              (let ((__tmp114561
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym108699%_))))
                (declare (not safe))
                (##string->symbol __tmp114561))))))
    (define keyword->symbol
      (lambda (_%sym105330%_)
        (if (keyword? _%sym105330%_)
            (let ((_%sym105334%_ _%sym105330%_))
              (__keyword->symbol _%sym105334%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@689.24-689.27"
               'contract:
               'keyword?
               'value:
               _%sym105330%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr108656%_ _%enc108657%_)
        (let* ((_%bstr108660%_ _%bstr108656%_) (_%enc108668%_ _%enc108657%_))
          (if (eq? _%enc108668%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr108660%_))
              (let* ((_%in108677%_
                      (open-input-u8vector
                       (cons 'char-encoding:
                             (cons _%enc108668%_
                                   (cons 'init: (cons _%bstr108660%_ '()))))))
                     (_%len108679%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr108660%_)))
                     (_%out108681%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len108679%_)))
                     (_%n108683%_
                      (read-substring
                       _%out108681%_
                       '0
                       _%len108679%_
                       _%in108677%_)))
                (string-shrink! _%out108681%_ _%n108683%_)
                _%out108681%_)))))
    (define __bytes->string__0
      (lambda (_%bstr108689%_)
        (let ((_%enc108691%_ 'UTF-8))
          (__bytes->string__% _%bstr108689%_ _%enc108691%_))))
    (define __bytes->string
      (lambda _g114562_
        (let ((_g114563_ (let () (declare (not safe)) (##length _g114562_))))
          (cond ((let () (declare (not safe)) (##fx= _g114563_ 1))
                 (apply __bytes->string__0 _g114562_))
                ((let () (declare (not safe)) (##fx= _g114563_ 2))
                 (apply __bytes->string__% _g114562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g114562_))))))
    (define bytes->string__%
      (lambda (_%bstr105465%_ _%enc105466%_)
        (if (u8vector? _%bstr105465%_)
            (let ((_%bstr105470%_ _%bstr105465%_))
              (if (symbol? _%enc105466%_)
                  (let ((_%enc105480%_ _%enc105466%_))
                    (__bytes->string__% _%bstr105470%_ _%enc105480%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@696.25-696.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc105466%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@695.22-695.26"
               'contract:
               'u8vector?
               'value:
               _%bstr105465%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr105493%_)
        (let ((_%enc105495%_ 'UTF-8))
          (bytes->string__% _%bstr105493%_ _%enc105495%_))))
    (define bytes->string
      (lambda _g114564_
        (let ((_g114565_ (let () (declare (not safe)) (##length _g114564_))))
          (cond ((let () (declare (not safe)) (##fx= _g114565_ 1))
                 (apply bytes->string__0 _g114564_))
                ((let () (declare (not safe)) (##fx= _g114565_ 2))
                 (apply bytes->string__% _g114564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g114564_))))))
    (define __string->bytes__%
      (lambda (_%str108574%_ _%enc108575%_)
        (let* ((_%str108578%_ _%str108574%_) (_%enc108586%_ _%enc108575%_))
          (if (eq? _%enc108586%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str108578%_))
              (let* ((_%str108595%_ _%str108578%_)
                     (_%start108598%_ '0)
                     (_%end108601%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str108578%_)))
                     (_%enc108604%_ _%enc108586%_)
                     (_%str108609%_ _%str108595%_))
                (if (nonnegative-fixnum? _%start108598%_)
                    (let ((_%start108625%_ _%start108598%_))
                      (if (nonnegative-fixnum? _%end108601%_)
                          (let ((_%end108635%_ _%end108601%_))
                            (__substring->bytes__%
                             _%str108609%_
                             _%start108625%_
                             _%end108635%_
                             _%enc108604%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end108601%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start108598%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str108648%_)
        (let ((_%enc108650%_ 'UTF-8))
          (__string->bytes__% _%str108648%_ _%enc108650%_))))
    (define __string->bytes
      (lambda _g114566_
        (let ((_g114567_ (let () (declare (not safe)) (##length _g114566_))))
          (cond ((let () (declare (not safe)) (##fx= _g114567_ 1))
                 (apply __string->bytes__0 _g114566_))
                ((let () (declare (not safe)) (##fx= _g114567_ 2))
                 (apply __string->bytes__% _g114566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g114566_))))))
    (define string->bytes__%
      (lambda (_%str105621%_ _%enc105622%_)
        (if (string? _%str105621%_)
            (let ((_%str105626%_ _%str105621%_))
              (if (symbol? _%enc105622%_)
                  (let ((_%enc105636%_ _%enc105622%_))
                    (__string->bytes__% _%str105626%_ _%enc105636%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@708.25-708.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc105622%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@707.22-707.25"
               'contract:
               'string?
               'value:
               _%str105621%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str105649%_)
        (let ((_%enc105651%_ 'UTF-8))
          (string->bytes__% _%str105649%_ _%enc105651%_))))
    (define string->bytes
      (lambda _g114568_
        (let ((_g114569_ (let () (declare (not safe)) (##length _g114568_))))
          (cond ((let () (declare (not safe)) (##fx= _g114569_ 1))
                 (apply string->bytes__0 _g114568_))
                ((let () (declare (not safe)) (##fx= _g114569_ 2))
                 (apply string->bytes__% _g114568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g114568_))))))
    (define __substring->bytes__%
      (lambda (_%str108526%_ _%start108527%_ _%end108528%_ _%enc108529%_)
        (let* ((_%str108532%_ _%str108526%_)
               (_%start108540%_ _%start108527%_)
               (_%end108548%_ _%end108528%_))
          (if (eq? _%enc108529%_ 'UTF-8)
              (string->utf8 _%str108532%_ _%start108540%_ _%end108548%_)
              (let ((_%out108557%_
                     (open-output-u8vector
                      (cons 'char-encoding: (cons _%enc108529%_ '())))))
                (write-substring
                 _%str108532%_
                 _%start108540%_
                 _%end108548%_
                 _%out108557%_)
                (get-output-u8vector _%out108557%_))))))
    (define __substring->bytes__0
      (lambda (_%str108562%_ _%start108563%_ _%end108564%_)
        (let ((_%enc108566%_ 'UTF-8))
          (__substring->bytes__%
           _%str108562%_
           _%start108563%_
           _%end108564%_
           _%enc108566%_))))
    (define __substring->bytes
      (lambda _g114570_
        (let ((_g114571_ (let () (declare (not safe)) (##length _g114570_))))
          (cond ((let () (declare (not safe)) (##fx= _g114571_ 3))
                 (apply __substring->bytes__0 _g114570_))
                ((let () (declare (not safe)) (##fx= _g114571_ 4))
                 (apply __substring->bytes__% _g114570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g114570_))))))
    (define substring->bytes__%
      (lambda (_%str105777%_ _%start105778%_ _%end105779%_ _%enc105780%_)
        (if (string? _%str105777%_)
            (let ((_%str105784%_ _%str105777%_))
              (if (nonnegative-fixnum? _%start105778%_)
                  (let ((_%start105794%_ _%start105778%_))
                    (if (nonnegative-fixnum? _%end105779%_)
                        (let ((_%end105804%_ _%end105779%_))
                          (__substring->bytes__%
                           _%str105784%_
                           _%start105794%_
                           _%end105804%_
                           _%enc105780%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@716.25-716.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end105779%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@715.25-715.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start105778%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@714.25-714.28"
               'contract:
               'string?
               'value:
               _%str105777%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str105817%_ _%start105818%_ _%end105819%_)
        (let ((_%enc105821%_ 'UTF-8))
          (substring->bytes__%
           _%str105817%_
           _%start105818%_
           _%end105819%_
           _%enc105821%_))))
    (define substring->bytes
      (lambda _g114572_
        (let ((_g114573_ (let () (declare (not safe)) (##length _g114572_))))
          (cond ((let () (declare (not safe)) (##fx= _g114573_ 3))
                 (apply substring->bytes__0 _g114572_))
                ((let () (declare (not safe)) (##fx= _g114573_ 4))
                 (apply substring->bytes__% _g114572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g114572_))))))
    (define __string-empty?
      (lambda (_%str108513%_)
        (let* ((_%str108516%_ _%str108513%_)
               (__tmp114574
                (let () (declare (not safe)) (##string-length _%str108516%_))))
          (declare (not safe))
          (##fxzero? __tmp114574))))
    (define string-empty?
      (lambda (_%str105948%_)
        (if (string? _%str105948%_)
            (let ((_%str105952%_ _%str105948%_))
              (__string-empty? _%str105952%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@725.22-725.25"
               'contract:
               'string?
               'value:
               _%str105948%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str108453%_ _%char108454%_ _%start108455%_)
        (let* ((_%str108458%_ _%str108453%_)
               (_%char108466%_ _%char108454%_)
               (_%start108474%_ _%start108455%_)
               (_%len108483%_
                (let () (declare (not safe)) (##string-length _%str108458%_))))
          (let _%lp108485%_ ((_%k108487%_ _%start108474%_))
            (let ((_%k108489%_ _%k108487%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k108489%_ _%len108483%_))
                  (if (eq? _%char108466%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str108458%_ _%k108489%_)))
                      _%k108489%_
                      (_%lp108485%_
                       (let () (declare (not safe)) (##fx+ _%k108489%_ '1))))
                  '#f))))))
    (define __string-index__0
      (lambda (_%str108504%_ _%char108505%_)
        (let ((_%start108507%_ '0))
          (__string-index__% _%str108504%_ _%char108505%_ _%start108507%_))))
    (define __string-index
      (lambda _g114575_
        (let ((_g114576_ (let () (declare (not safe)) (##length _g114575_))))
          (cond ((let () (declare (not safe)) (##fx= _g114576_ 2))
                 (apply __string-index__0 _g114575_))
                ((let () (declare (not safe)) (##fx= _g114576_ 3))
                 (apply __string-index__% _g114575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g114575_))))))
    (define string-index__%
      (lambda (_%str106083%_ _%char106084%_ _%start106085%_)
        (if (string? _%str106083%_)
            (let ((_%str106089%_ _%str106083%_))
              (if (char? _%char106084%_)
                  (let ((_%char106099%_ _%char106084%_))
                    (if (nonnegative-fixnum? _%start106085%_)
                        (let ((_%start106109%_ _%start106085%_))
                          (__string-index__%
                           _%str106089%_
                           _%char106099%_
                           _%start106109%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@731.21-731.26"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%start106085%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@730.21-730.25"
                     'contract:
                     'char?
                     'value:
                     _%char106084%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@729.21-729.24"
               'contract:
               'string?
               'value:
               _%str106083%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str106122%_ _%char106123%_)
        (let ((_%start106125%_ '0))
          (string-index__% _%str106122%_ _%char106123%_ _%start106125%_))))
    (define string-index
      (lambda _g114577_
        (let ((_g114578_ (let () (declare (not safe)) (##length _g114577_))))
          (cond ((let () (declare (not safe)) (##fx= _g114578_ 2))
                 (apply string-index__0 _g114577_))
                ((let () (declare (not safe)) (##fx= _g114578_ 3))
                 (apply string-index__% _g114577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g114577_))))))
    (define __string-rindex__%
      (lambda (_%str108395%_ _%char108396%_ _%start108397%_)
        (let* ((_%str108400%_ _%str108395%_)
               (_%char108408%_ _%char108396%_)
               (_%len108417%_
                (let () (declare (not safe)) (##string-length _%str108400%_)))
               (_%start108419%_
                (if (fixnum? _%start108397%_)
                    _%start108397%_
                    (let () (declare (not safe)) (##fx- _%len108417%_ '1)))))
          (let _%lp108422%_ ((_%k108424%_ _%start108419%_))
            (let ((_%k108426%_ _%k108424%_))
              (if (let () (declare (not safe)) (##fx>= _%k108426%_ '0))
                  (if (eq? _%char108408%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str108400%_ _%k108426%_)))
                      _%k108426%_
                      (_%lp108422%_
                       (let () (declare (not safe)) (##fx- _%k108426%_ '1))))
                  '#f))))))
    (define __string-rindex__0
      (lambda (_%str108443%_ _%char108444%_)
        (let ((_%start108446%_ '#f))
          (__string-rindex__% _%str108443%_ _%char108444%_ _%start108446%_))))
    (define __string-rindex
      (lambda _g114579_
        (let ((_g114580_ (let () (declare (not safe)) (##length _g114579_))))
          (cond ((let () (declare (not safe)) (##fx= _g114580_ 2))
                 (apply __string-rindex__0 _g114579_))
                ((let () (declare (not safe)) (##fx= _g114580_ 3))
                 (apply __string-rindex__% _g114579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g114579_))))))
    (define string-rindex__%
      (lambda (_%str106252%_ _%char106253%_ _%start106254%_)
        (if (string? _%str106252%_)
            (let ((_%str106258%_ _%str106252%_))
              (if (char? _%char106253%_)
                  (let ((_%char106268%_ _%char106253%_))
                    (__string-rindex__%
                     _%str106258%_
                     _%char106268%_
                     _%start106254%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@741.25-741.29"
                     'contract:
                     'char?
                     'value:
                     _%char106253%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@740.22-740.25"
               'contract:
               'string?
               'value:
               _%str106252%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str106281%_ _%char106282%_)
        (let ((_%start106284%_ '#f))
          (string-rindex__% _%str106281%_ _%char106282%_ _%start106284%_))))
    (define string-rindex
      (lambda _g114581_
        (let ((_g114582_ (let () (declare (not safe)) (##length _g114581_))))
          (cond ((let () (declare (not safe)) (##fx= _g114582_ 2))
                 (apply string-rindex__0 _g114581_))
                ((let () (declare (not safe)) (##fx= _g114582_ 3))
                 (apply string-rindex__% _g114581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g114581_))))))
    (define __string-split
      (lambda (_%str108292%_ _%char108293%_)
        (let* ((_%str108296%_ _%str108292%_)
               (_%char108304%_ _%char108293%_)
               (_%len108313%_
                (let () (declare (not safe)) (##string-length _%str108296%_))))
          (let _%lp108315%_ ((_%start108317%_ '0) (_%r108318%_ '()))
            (let* ((_%start108321%_ _%start108317%_)
                   (_%$e108379%_
                    (let* ((_%str108334%_ _%str108296%_)
                           (_%char108337%_ _%char108304%_)
                           (_%start108340%_ _%start108321%_)
                           (_%str108345%_ _%str108334%_)
                           (_%char108359%_ _%char108337%_))
                      (if (nonnegative-fixnum? _%start108340%_)
                          (let ((_%start108369%_ _%start108340%_))
                            (__string-index__%
                             _%str108345%_
                             _%char108359%_
                             _%start108369%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start108340%_)
                            '#!void)))))
              (if _%$e108379%_
                  ((lambda (_%end108382%_)
                     (let ((_%end108384%_ _%end108382%_))
                       (_%lp108315%_
                        (let () (declare (not safe)) (##fx+ _%end108384%_ '1))
                        (cons (let ()
                                (declare (not safe))
                                (##substring
                                 _%str108296%_
                                 _%start108321%_
                                 _%end108384%_))
                              _%r108318%_))))
                   _%$e108379%_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start108321%_ _%len108313%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str108296%_
                                _%start108321%_
                                _%len108313%_)))
                       _%r108318%_)
                      (reverse! _%r108318%_))))))))
    (define string-split
      (lambda (_%str106410%_ _%char106411%_)
        (if (string? _%str106410%_)
            (let ((_%str106415%_ _%str106410%_))
              (if (char? _%char106411%_)
                  (let ((_%char106425%_ _%char106411%_))
                    (__string-split _%str106415%_ _%char106425%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@752.37-752.41"
                     'contract:
                     'char?
                     'value:
                     _%char106411%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@752.21-752.24"
               'contract:
               'string?
               'value:
               _%str106410%_)
              '#!void))))
    (define string-join
      (lambda (_%strs108142%_ _%join108143%_)
        (letrec ((_%join-length108146%_
                  (lambda (_%strs108230%_ _%jlen108231%_)
                    (let _%lp108233%_ ((_%rest108235%_ _%strs108230%_)
                                       (_%len108236%_ '0))
                      (let* ((_%len108238%_ _%len108236%_)
                             (_%rest108246108254%_ _%rest108235%_)
                             (_%else108248108262%_ (lambda () '0))
                             (_%K108250108280%_
                              (lambda (_%rest108265%_ _%hd108266%_)
                                (if (string? _%hd108266%_)
                                    (let ((_%hd108268%_ _%hd108266%_))
                                      (if (pair? _%rest108265%_)
                                          (_%lp108233%_
                                           _%rest108265%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd108268%_))
                                                _%jlen108231%_
                                                _%len108238%_))
                                          (let ((__tmp114583
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd108268%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp114583
                                                   _%len108238%_))))
                                    (error '"expected string" _%hd108266%_)))))
                        (if (pair? _%rest108246108254%_)
                            (let ((_%hd108251108283%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest108246108254%_)))
                                  (_%tl108252108285%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest108246108254%_))))
                              (let* ((_%hd108288%_ _%hd108251108283%_)
                                     (_%rest108290%_ _%tl108252108285%_))
                                (_%K108250108280%_
                                 _%rest108290%_
                                 _%hd108288%_)))
                            (_%else108248108262%_)))))))
          (let* ((_%join108151%_
                  (if (char? _%join108143%_)
                      (let () (declare (not safe)) (##string _%join108143%_))
                      (if (string? _%join108143%_)
                          _%join108143%_
                          (error '"expected string or char" _%join108143%_))))
                 (_%jlen108153%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join108151%_)))
                 (_%olen108155%_
                  (_%join-length108146%_ _%strs108142%_ _%jlen108153%_))
                 (_%ostr108157%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen108155%_))))
            (let _%lp108160%_ ((_%rest108162%_ _%strs108142%_)
                               (_%k108163%_ '0))
              (let* ((_%k108166%_ _%k108163%_)
                     (_%rest108182108190%_ _%rest108162%_)
                     (_%else108184108198%_ (lambda () '""))
                     (_%K108186108218%_
                      (lambda (_%rest108201%_ _%hd108202%_)
                        (let* ((_%hd108204%_ _%hd108202%_)
                               (_%hdlen108216%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd108204%_))))
                          (if (pair? _%rest108201%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd108204%_
                                   '0
                                   _%hdlen108216%_
                                   _%ostr108157%_
                                   _%k108166%_))
                                (let ((__tmp114584
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k108166%_ _%hdlen108216%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join108151%_
                                   '0
                                   _%jlen108153%_
                                   _%ostr108157%_
                                   __tmp114584))
                                (_%lp108160%_
                                 _%rest108201%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k108166%_
                                          _%hdlen108216%_
                                          _%jlen108153%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd108204%_
                                   '0
                                   _%hdlen108216%_
                                   _%ostr108157%_
                                   _%k108166%_))
                                _%ostr108157%_))))))
                (if (pair? _%rest108182108190%_)
                    (let ((_%hd108187108221%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest108182108190%_)))
                          (_%tl108188108223%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest108182108190%_))))
                      (let* ((_%hd108226%_ _%hd108187108221%_)
                             (_%rest108228%_ _%tl108188108223%_))
                        (_%K108186108218%_ _%rest108228%_ _%hd108226%_)))
                    (_%else108184108198%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes108082%_ _%port108083%_ _%start108084%_ _%end108085%_)
        (let* ((_%bytes108088%_ _%bytes108082%_)
               (_%port108096%_ _%port108083%_)
               (_%start108104%_ _%start108084%_)
               (_%end108112%_ _%end108085%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes108088%_
           _%start108104%_
           _%end108112%_
           _%port108096%_))))
    (define __read-u8vector__0
      (lambda (_%bytes108124%_ _%port108125%_)
        (let* ((_%start108127%_ '0)
               (_%end108129%_ (u8vector-length _%bytes108124%_)))
          (__read-u8vector__%
           _%bytes108124%_
           _%port108125%_
           _%start108127%_
           _%end108129%_))))
    (define __read-u8vector__1
      (lambda (_%bytes108131%_ _%port108132%_ _%start108133%_)
        (let ((_%end108135%_ (u8vector-length _%bytes108131%_)))
          (__read-u8vector__%
           _%bytes108131%_
           _%port108132%_
           _%start108133%_
           _%end108135%_))))
    (define __read-u8vector
      (lambda _g114585_
        (let ((_g114586_ (let () (declare (not safe)) (##length _g114585_))))
          (cond ((let () (declare (not safe)) (##fx= _g114586_ 2))
                 (apply __read-u8vector__0 _g114585_))
                ((let () (declare (not safe)) (##fx= _g114586_ 3))
                 (apply __read-u8vector__1 _g114585_))
                ((let () (declare (not safe)) (##fx= _g114586_ 4))
                 (apply __read-u8vector__% _g114585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g114585_))))))
    (define read-u8vector__%
      (lambda (_%bytes106556%_ _%port106557%_ _%start106558%_ _%end106559%_)
        (if (u8vector? _%bytes106556%_)
            (let ((_%bytes106563%_ _%bytes106556%_))
              (if (input-port? _%port106557%_)
                  (let ((_%port106573%_ _%port106557%_))
                    (if ((lambda (_%o106582%_)
                           (and (fixnum? _%o106582%_)
                                (let ()
                                  (declare (not safe))
                                  (##fx>= _%o106582%_ '0))
                                (let ((__tmp114587
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes106563%_))))
                                  (declare (not safe))
                                  (##fx< _%o106582%_ __tmp114587))))
                         _%start106558%_)
                        (let ((_%start106586%_ _%start106558%_))
                          (if ((lambda (_%o106595%_)
                                 (and (fixnum? _%o106595%_)
                                      (let ((__tmp114588
                                             (let ()
                                               (declare (not safe))
                                               (##u8vector-length
                                                _%bytes106563%_))))
                                        (declare (not safe))
                                        (##fx<= _%start106586%_
                                                _%o106595%_
                                                __tmp114588))))
                               _%end106559%_)
                              (let ((_%end106599%_ _%end106559%_))
                                (__read-u8vector__%
                                 _%bytes106563%_
                                 _%port106573%_
                                 _%start106586%_
                                 _%end106599%_))
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
                                 _%end106559%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@817.22-817.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start106558%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@816.22-816.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port106557%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@815.22-815.27"
               'contract:
               'u8vector?
               'value:
               _%bytes106556%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes106612%_ _%port106613%_)
        (let* ((_%start106615%_ '0)
               (_%end106617%_ (u8vector-length _%bytes106612%_)))
          (read-u8vector__%
           _%bytes106612%_
           _%port106613%_
           _%start106615%_
           _%end106617%_))))
    (define read-u8vector__1
      (lambda (_%bytes106619%_ _%port106620%_ _%start106621%_)
        (let ((_%end106623%_ (u8vector-length _%bytes106619%_)))
          (read-u8vector__%
           _%bytes106619%_
           _%port106620%_
           _%start106621%_
           _%end106623%_))))
    (define read-u8vector
      (lambda _g114589_
        (let ((_g114590_ (let () (declare (not safe)) (##length _g114589_))))
          (cond ((let () (declare (not safe)) (##fx= _g114590_ 2))
                 (apply read-u8vector__0 _g114589_))
                ((let () (declare (not safe)) (##fx= _g114590_ 3))
                 (apply read-u8vector__1 _g114589_))
                ((let () (declare (not safe)) (##fx= _g114590_ 4))
                 (apply read-u8vector__% _g114589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g114589_))))))
    (define __write-u8vector__%
      (lambda (_%bytes108021%_ _%port108022%_ _%start108023%_ _%end108024%_)
        (let* ((_%bytes108027%_ _%bytes108021%_)
               (_%port108035%_ _%port108022%_)
               (_%start108043%_ _%start108023%_)
               (_%end108051%_ _%end108024%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes108027%_
           _%start108043%_
           _%end108051%_
           _%port108035%_))))
    (define __write-u8vector__0
      (lambda (_%bytes108063%_ _%port108064%_)
        (let* ((_%start108066%_ '0)
               (_%end108068%_ (u8vector-length _%bytes108063%_)))
          (__write-u8vector__%
           _%bytes108063%_
           _%port108064%_
           _%start108066%_
           _%end108068%_))))
    (define __write-u8vector__1
      (lambda (_%bytes108070%_ _%port108071%_ _%start108072%_)
        (let ((_%end108074%_ (u8vector-length _%bytes108070%_)))
          (__write-u8vector__%
           _%bytes108070%_
           _%port108071%_
           _%start108072%_
           _%end108074%_))))
    (define __write-u8vector
      (lambda _g114591_
        (let ((_g114592_ (let () (declare (not safe)) (##length _g114591_))))
          (cond ((let () (declare (not safe)) (##fx= _g114592_ 2))
                 (apply __write-u8vector__0 _g114591_))
                ((let () (declare (not safe)) (##fx= _g114592_ 3))
                 (apply __write-u8vector__1 _g114591_))
                ((let () (declare (not safe)) (##fx= _g114592_ 4))
                 (apply __write-u8vector__% _g114591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g114591_))))))
    (define write-u8vector__%
      (lambda (_%bytes106751%_ _%port106752%_ _%start106753%_ _%end106754%_)
        (if (u8vector? _%bytes106751%_)
            (let ((_%bytes106758%_ _%bytes106751%_))
              (if (output-port? _%port106752%_)
                  (let* ((_%port106768%_ _%port106752%_)
                         (_%start106777%_ _%start106753%_))
                    (if ((lambda (_%o106785%_)
                           (and (fixnum? _%o106785%_)
                                (let ((__tmp114593
                                       (let ()
                                         (declare (not safe))
                                         (##u8vector-length _%bytes106758%_))))
                                  (declare (not safe))
                                  (##fx<= _%start106777%_
                                          _%o106785%_
                                          __tmp114593))))
                         _%end106754%_)
                        (let ((_%end106789%_ _%end106754%_))
                          (__write-u8vector__%
                           _%bytes106758%_
                           _%port106768%_
                           _%start106777%_
                           _%end106789%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@828.23-828.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end106754%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@826.23-826.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port106752%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@825.23-825.28"
               'contract:
               'u8vector?
               'value:
               _%bytes106751%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes106802%_ _%port106803%_)
        (let* ((_%start106805%_ '0)
               (_%end106807%_ (u8vector-length _%bytes106802%_)))
          (write-u8vector__%
           _%bytes106802%_
           _%port106803%_
           _%start106805%_
           _%end106807%_))))
    (define write-u8vector__1
      (lambda (_%bytes106809%_ _%port106810%_ _%start106811%_)
        (let ((_%end106813%_ (u8vector-length _%bytes106809%_)))
          (write-u8vector__%
           _%bytes106809%_
           _%port106810%_
           _%start106811%_
           _%end106813%_))))
    (define write-u8vector
      (lambda _g114594_
        (let ((_g114595_ (let () (declare (not safe)) (##length _g114594_))))
          (cond ((let () (declare (not safe)) (##fx= _g114595_ 2))
                 (apply write-u8vector__0 _g114594_))
                ((let () (declare (not safe)) (##fx= _g114595_ 3))
                 (apply write-u8vector__1 _g114594_))
                ((let () (declare (not safe)) (##fx= _g114595_ 4))
                 (apply write-u8vector__% _g114594_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g114594_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag107989%_
               _%dbg-exprs107990%_
               _%dbg-thunks107991%_
               _%expr107992%_
               _%thunk107993%_)
        (letrec ((_%o107995%_ (current-output-port))
                 (_%e107996%_ (current-error-port))
                 (_%p107997%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f107998%_
                  (lambda ()
                    (force-output _%o107995%_)
                    (force-output _%e107996%_)))
                 (_%d107999%_
                  (lambda (_%x108006%_) (display _%x108006%_ _%e107996%_)))
                 (_%w108000%_
                  (lambda (_%x108008%_) (_%p107997%_ _%x108008%_ _%e107996%_)))
                 (_%n108001%_ (lambda () (newline _%e107996%_)))
                 (_%v108002%_
                  (lambda (_%l108011%_)
                    (for-each
                     (lambda (_%x108013%_)
                       (_%d107999%_ '" ")
                       (_%w108000%_ _%x108013%_))
                     _%l108011%_)
                    (_%n108001%_)))
                 (_%x108003%_
                  (lambda (_%expr108015%_ _%thunk108016%_)
                    (_%f107998%_)
                    (_%d107999%_ '"  ")
                    (_%w108000%_ _%expr108015%_)
                    (_%d107999%_ '" =>")
                    (call-with-values
                     _%thunk108016%_
                     (lambda _%x108018%_
                       (_%v108002%_ _%x108018%_)
                       (_%f107998%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x108018%_)))))))
          (if _%tag107989%_
              (begin
                (if (eq? _%tag107989%_ '#!void)
                    '#!void
                    (begin
                      (_%f107998%_)
                      (_%d107999%_ _%tag107989%_)
                      (_%n108001%_)))
                (for-each _%x108003%_ _%dbg-exprs107990%_ _%dbg-thunks107991%_)
                (if _%thunk107993%_
                    (_%x108003%_ _%expr107992%_ _%thunk107993%_)
                    '#!void))
              (if _%thunk107993%_ (_%thunk107993%_) '#!void)))))))
