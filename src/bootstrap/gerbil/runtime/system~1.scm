(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g303402_|
    (gx#core-deserialize-mark
     '(0
       (arg302505 . _%arg302505302563%_)
       (arg . _%arg302593%_)
       (id . _%id302530%_)
       (arg302506 . _%arg302506302577%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g303403_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g303402_|)))
  (define |[1]#_g303404_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value302609%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g303405_|
    (##structure
     gx#syntax-quote::t
     '_%new-value302609%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g303404_|)))
  (define |[1]#_g303407_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g303408_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g303407_|)))
  (define |[1]#_g303409_|
    (gx#core-deserialize-mark
     '(0
       (arg302642 . _%arg302642302712%_)
       (arg . _%arg302728%_)
       (id . _%id302665%_)
       (arg302641 . _%arg302641302698%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g303410_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g303409_|)))
  (define |[1]#_g303412_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g303413_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g303412_|)))
  (define |[1]#_g303414_|
    (gx#core-deserialize-mark
     '(0
       (arg302803 . _%arg302803302873%_)
       (arg . _%arg302889%_)
       (arg302802 . _%arg302802302859%_)
       (id . _%id302826%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g303415_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g303414_|)))
  (define |[1]#_g303417_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g303418_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g303417_|)))
  (define |[1]#_g303419_|
    (gx#core-deserialize-mark
     '(0
       (arg302946 . _%arg302946303016%_)
       (arg . _%arg303032%_)
       (arg302945 . _%arg302945303002%_)
       (id . _%id302969%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g303420_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g303419_|)))
  (define |[1]#_g303421_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value303048%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g303422_|
    (##structure
     gx#syntax-quote::t
     '_%new-value303048%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g303421_|)))
  (define |[1]#_g303424_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g303425_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g303424_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx302487%_)
        (let* ((_%__stx303288303289%_ _%$stx302487%_)
               (_%g302492302513%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx303288303289%_))))
          (let ((_%__kont303291303292%_
                 (lambda (_%g302494302579%_)
                   (cons (gx#datum->syntax
                          |[1]#_g303403_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g303405_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp303406
                                                  (lambda (_%g302594302597%_
                                                           _%g302595302600%_)
                                                    (cons _%g302594302597%_
                                                          _%g302595302600%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp303406
                                              '()
                                              _%g302494302579%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g303408_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g303405_|
                                                              'new-value
                                                              '#f
                                                              '#f)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__build-manifest-set!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |[1]#_g303405_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont303295303296%_
                 (lambda (_%g302507302520%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%g302491302532%_
                    (lambda ()
                      (let ((_%g302507302520%_ _%__stx303288303289%_))
                        (if (gx#identifier? _%g302507302520%_)
                            (_%__kont303295303296%_ _%g302507302520%_)
                            (let ()
                              (declare (not safe))
                              (_%g302492302513%_))))))
                   (_%__match303311303312%_
                    (lambda (_%e302495302539%_
                             _%hd302496302543%_
                             _%tl302497302546%_
                             _%__splice303293303294%_
                             _%target302498302549%_
                             _%tl302500302552%_)
                      (letrec ((_%loop302501302555%_
                                (lambda (_%hd302499302559%_
                                         _%arg302505302562%_)
                                  (if (gx#stx-pair? _%hd302499302559%_)
                                      (let ((_%e302502302565%_
                                             (gx#syntax-e _%hd302499302559%_)))
                                        (let ((_%lp-tl302504302572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e302502302565%_)))
                                              (_%lp-hd302503302569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e302502302565%_))))
                                          (_%loop302501302555%_
                                           _%lp-tl302504302572%_
                                           (cons _%lp-hd302503302569%_
                                                 _%arg302505302562%_))))
                                      (let ((_%arg302506302575%_
                                             (reverse _%arg302505302562%_)))
                                        (_%__kont303291303292%_
                                         _%arg302506302575%_))))))
                        (_%loop302501302555%_ _%target302498302549%_ '())))))
              (if (gx#stx-pair? _%__stx303288303289%_)
                  (let ((_%e302495302539%_
                         (gx#syntax-e _%__stx303288303289%_)))
                    (let ((_%tl302497302546%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e302495302539%_)))
                          (_%hd302496302543%_
                           (let ()
                             (declare (not safe))
                             (##car _%e302495302539%_))))
                      (if (gx#stx-pair/null? _%tl302497302546%_)
                          (let ((_%__splice303293303294%_
                                 (gx#syntax-split-splice->vector
                                  _%tl302497302546%_
                                  '0)))
                            (let ((_%tl302500302552%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice303293303294%_
                                      '1)))
                                  (_%target302498302549%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice303293303294%_
                                      '0))))
                              (if (gx#stx-null? _%tl302500302552%_)
                                  (_%__match303311303312%_
                                   _%e302495302539%_
                                   _%hd302496302543%_
                                   _%tl302497302546%_
                                   _%__splice303293303294%_
                                   _%target302498302549%_
                                   _%tl302500302552%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g302491302532%_)))))
                          (let () (declare (not safe)) (_%g302491302532%_)))))
                  (let () (declare (not safe)) (_%g302491302532%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx302623%_)
        (let* ((_%__stx303314303315%_ _%$stx302623%_)
               (_%g302628302649%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx303314303315%_))))
          (let ((_%__kont303317303318%_
                 (lambda (_%g302630302714%_)
                   (cons (gx#datum->syntax
                          |[1]#_g303410_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'manifest)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '__build-manifest)
                                                       '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'port)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'current-output-port)
                           '())
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (let ((__tmp303411
                                                  (lambda (_%g302729302732%_
                                                           _%g302730302735%_)
                                                    (cons _%g302729302732%_
                                                          _%g302730302735%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp303411
                                              '()
                                              _%g302630302714%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g303413_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               (cons (cons (gx#datum->syntax '#f 'port)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':port) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__display-build-manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'manifest)
                           (cons (gx#datum->syntax '#f 'port) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont303321303322%_
                 (lambda (_%g302643302656%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%g302627302667%_
                    (lambda ()
                      (let ((_%g302643302656%_ _%__stx303314303315%_))
                        (if (gx#identifier? _%g302643302656%_)
                            (_%__kont303321303322%_ _%g302643302656%_)
                            (let ()
                              (declare (not safe))
                              (_%g302628302649%_))))))
                   (_%__match303337303338%_
                    (lambda (_%e302631302674%_
                             _%hd302632302678%_
                             _%tl302633302681%_
                             _%__splice303319303320%_
                             _%target302634302684%_
                             _%tl302636302687%_)
                      (letrec ((_%loop302637302690%_
                                (lambda (_%hd302635302694%_
                                         _%arg302641302697%_)
                                  (if (gx#stx-pair? _%hd302635302694%_)
                                      (let ((_%e302638302700%_
                                             (gx#syntax-e _%hd302635302694%_)))
                                        (let ((_%lp-tl302640302707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e302638302700%_)))
                                              (_%lp-hd302639302704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e302638302700%_))))
                                          (_%loop302637302690%_
                                           _%lp-tl302640302707%_
                                           (cons _%lp-hd302639302704%_
                                                 _%arg302641302697%_))))
                                      (let ((_%arg302642302710%_
                                             (reverse _%arg302641302697%_)))
                                        (_%__kont303317303318%_
                                         _%arg302642302710%_))))))
                        (_%loop302637302690%_ _%target302634302684%_ '())))))
              (if (gx#stx-pair? _%__stx303314303315%_)
                  (let ((_%e302631302674%_
                         (gx#syntax-e _%__stx303314303315%_)))
                    (let ((_%tl302633302681%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e302631302674%_)))
                          (_%hd302632302678%_
                           (let ()
                             (declare (not safe))
                             (##car _%e302631302674%_))))
                      (if (gx#stx-pair/null? _%tl302633302681%_)
                          (let ((_%__splice303319303320%_
                                 (gx#syntax-split-splice->vector
                                  _%tl302633302681%_
                                  '0)))
                            (let ((_%tl302636302687%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice303319303320%_
                                      '1)))
                                  (_%target302634302684%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice303319303320%_
                                      '0))))
                              (if (gx#stx-null? _%tl302636302687%_)
                                  (_%__match303337303338%_
                                   _%e302631302674%_
                                   _%hd302632302678%_
                                   _%tl302633302681%_
                                   _%__splice303319303320%_
                                   _%target302634302684%_
                                   _%tl302636302687%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g302627302667%_)))))
                          (let () (declare (not safe)) (_%g302627302667%_)))))
                  (let () (declare (not safe)) (_%g302627302667%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx302784%_)
        (let* ((_%__stx303340303341%_ _%$stx302784%_)
               (_%g302789302810%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx303340303341%_))))
          (let ((_%__kont303343303344%_
                 (lambda (_%g302791302875%_)
                   (cons (gx#datum->syntax
                          |[1]#_g303415_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'manifest)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '__build-manifest)
                                                       '()))
                                           '())
                                     (cons (let ((__tmp303416
                                                  (lambda (_%g302890302893%_
                                                           _%g302891302896%_)
                                                    (cons _%g302890302893%_
                                                          _%g302891302896%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp303416
                                              '()
                                              _%g302791302875%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g303418_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__build-manifest-string)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'manifest)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont303347303348%_
                 (lambda (_%g302804302817%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%g302788302828%_
                    (lambda ()
                      (let ((_%g302804302817%_ _%__stx303340303341%_))
                        (if (gx#identifier? _%g302804302817%_)
                            (_%__kont303347303348%_ _%g302804302817%_)
                            (let ()
                              (declare (not safe))
                              (_%g302789302810%_))))))
                   (_%__match303363303364%_
                    (lambda (_%e302792302835%_
                             _%hd302793302839%_
                             _%tl302794302842%_
                             _%__splice303345303346%_
                             _%target302795302845%_
                             _%tl302797302848%_)
                      (letrec ((_%loop302798302851%_
                                (lambda (_%hd302796302855%_
                                         _%arg302802302858%_)
                                  (if (gx#stx-pair? _%hd302796302855%_)
                                      (let ((_%e302799302861%_
                                             (gx#syntax-e _%hd302796302855%_)))
                                        (let ((_%lp-tl302801302868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e302799302861%_)))
                                              (_%lp-hd302800302865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e302799302861%_))))
                                          (_%loop302798302851%_
                                           _%lp-tl302801302868%_
                                           (cons _%lp-hd302800302865%_
                                                 _%arg302802302858%_))))
                                      (let ((_%arg302803302871%_
                                             (reverse _%arg302802302858%_)))
                                        (_%__kont303343303344%_
                                         _%arg302803302871%_))))))
                        (_%loop302798302851%_ _%target302795302845%_ '())))))
              (if (gx#stx-pair? _%__stx303340303341%_)
                  (let ((_%e302792302835%_
                         (gx#syntax-e _%__stx303340303341%_)))
                    (let ((_%tl302794302842%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e302792302835%_)))
                          (_%hd302793302839%_
                           (let ()
                             (declare (not safe))
                             (##car _%e302792302835%_))))
                      (if (gx#stx-pair/null? _%tl302794302842%_)
                          (let ((_%__splice303345303346%_
                                 (gx#syntax-split-splice->vector
                                  _%tl302794302842%_
                                  '0)))
                            (let ((_%tl302797302848%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice303345303346%_
                                      '1)))
                                  (_%target302795302845%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice303345303346%_
                                      '0))))
                              (if (gx#stx-null? _%tl302797302848%_)
                                  (_%__match303363303364%_
                                   _%e302792302835%_
                                   _%hd302793302839%_
                                   _%tl302794302842%_
                                   _%__splice303345303346%_
                                   _%target302795302845%_
                                   _%tl302797302848%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g302788302828%_)))))
                          (let () (declare (not safe)) (_%g302788302828%_)))))
                  (let () (declare (not safe)) (_%g302788302828%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx302927%_)
        (let* ((_%__stx303366303367%_ _%$stx302927%_)
               (_%g302932302953%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx303366303367%_))))
          (let ((_%__kont303369303370%_
                 (lambda (_%g302934303018%_)
                   (cons (gx#datum->syntax
                          |[1]#_g303420_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g303422_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp303423
                                                  (lambda (_%g303033303036%_
                                                           _%g303034303039%_)
                                                    (cons _%g303033303036%_
                                                          _%g303034303039%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp303423
                                              '()
                                              _%g302934303018%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g303425_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g303422_|
                                                              'new-value
                                                              '#f
                                                              '#f)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__gerbil-greeting-set!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |[1]#_g303422_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont303373303374%_
                 (lambda (_%g302947302960%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%g302931302971%_
                    (lambda ()
                      (let ((_%g302947302960%_ _%__stx303366303367%_))
                        (if (gx#identifier? _%g302947302960%_)
                            (_%__kont303373303374%_ _%g302947302960%_)
                            (let ()
                              (declare (not safe))
                              (_%g302932302953%_))))))
                   (_%__match303389303390%_
                    (lambda (_%e302935302978%_
                             _%hd302936302982%_
                             _%tl302937302985%_
                             _%__splice303371303372%_
                             _%target302938302988%_
                             _%tl302940302991%_)
                      (letrec ((_%loop302941302994%_
                                (lambda (_%hd302939302998%_
                                         _%arg302945303001%_)
                                  (if (gx#stx-pair? _%hd302939302998%_)
                                      (let ((_%e302942303004%_
                                             (gx#syntax-e _%hd302939302998%_)))
                                        (let ((_%lp-tl302944303011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e302942303004%_)))
                                              (_%lp-hd302943303008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e302942303004%_))))
                                          (_%loop302941302994%_
                                           _%lp-tl302944303011%_
                                           (cons _%lp-hd302943303008%_
                                                 _%arg302945303001%_))))
                                      (let ((_%arg302946303014%_
                                             (reverse _%arg302945303001%_)))
                                        (_%__kont303369303370%_
                                         _%arg302946303014%_))))))
                        (_%loop302941302994%_ _%target302938302988%_ '())))))
              (if (gx#stx-pair? _%__stx303366303367%_)
                  (let ((_%e302935302978%_
                         (gx#syntax-e _%__stx303366303367%_)))
                    (let ((_%tl302937302985%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e302935302978%_)))
                          (_%hd302936302982%_
                           (let ()
                             (declare (not safe))
                             (##car _%e302935302978%_))))
                      (if (gx#stx-pair/null? _%tl302937302985%_)
                          (let ((_%__splice303371303372%_
                                 (gx#syntax-split-splice->vector
                                  _%tl302937302985%_
                                  '0)))
                            (let ((_%tl302940302991%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice303371303372%_
                                      '1)))
                                  (_%target302938302988%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice303371303372%_
                                      '0))))
                              (if (gx#stx-null? _%tl302940302991%_)
                                  (_%__match303389303390%_
                                   _%e302935302978%_
                                   _%hd302936302982%_
                                   _%tl302937302985%_
                                   _%__splice303371303372%_
                                   _%target302938302988%_
                                   _%tl302940302991%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g302931302971%_)))))
                          (let () (declare (not safe)) (_%g302931302971%_)))))
                  (let () (declare (not safe)) (_%g302931302971%_))))))))))
