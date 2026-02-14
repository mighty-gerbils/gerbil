(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g170156_|
    (gx#core-deserialize-mark
     '(0
       (arg168971 . _%arg168971169042%_)
       (arg . _%arg169058%_)
       (arg168970 . _%arg168970169028%_)
       (id . _%id168995%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170157_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170156_|)))
  (define |[1]#_g170159_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170160_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170159_|)))
  (define |[1]#_g170161_|
    (gx#core-deserialize-mark
     '(0
       (arg169105 . _%arg169105169162%_)
       (arg . _%arg169192%_)
       (arg169106 . _%arg169106169176%_)
       (id . _%id169129%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170162_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170161_|)))
  (define |[1]#_g170164_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170165_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170164_|)))
  (define |[1]#_g170166_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg169326%_)
       (arg169240 . _%arg169240169310%_)
       (arg169239 . _%arg169239169296%_)
       (id . _%id169263%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170167_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170166_|)))
  (define |[1]#_g170169_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170170_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170169_|)))
  (define |[1]#_g170171_|
    (gx#core-deserialize-mark
     '(0
       (arg169373 . _%arg169373169430%_)
       (arg169374 . _%arg169374169444%_)
       (arg . _%arg169460%_)
       (id . _%id169397%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170172_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170171_|)))
  (define |[1]#_g170174_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170175_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170174_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx168952%_)
        (let* ((_%__stx170047170048%_ _%$stx168952%_)
               (_%g168957168978%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170047170048%_))))
          (let ((_%__kont170050170051%_
                 (lambda (_%g168959169044%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170157_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp170158
                                                  (lambda (_%g169059169062%_
                                                           _%g169060169065%_)
                                                    (cons _%g169059169062%_
                                                          _%g169060169065%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170158
                                              '()
                                              _%g168959169044%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170160_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'paths)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__set-load-path!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'paths)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont170054170055%_
                 (lambda (_%g168972168985%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g168956168997%_
                    (lambda ()
                      (let ((_%g168972168985%_ _%__stx170047170048%_))
                        (if (gx#identifier? _%g168972168985%_)
                            (_%__kont170054170055%_ _%g168972168985%_)
                            (let ()
                              (declare (not safe))
                              (_%g168957168978%_))))))
                   (_%__match170070170071%_
                    (lambda (_%e168960169004%_
                             _%hd168961169008%_
                             _%tl168962169011%_
                             _%__splice170052170053%_
                             _%target168963169014%_
                             _%tl168965169017%_)
                      (letrec ((_%loop168966169020%_
                                (lambda (_%hd168964169024%_
                                         _%arg168970169027%_)
                                  (if (gx#stx-pair? _%hd168964169024%_)
                                      (let ((_%e168967169030%_
                                             (gx#syntax-e _%hd168964169024%_)))
                                        (let ((_%lp-tl168969169037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168967169030%_)))
                                              (_%lp-hd168968169034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168967169030%_))))
                                          (_%loop168966169020%_
                                           _%lp-tl168969169037%_
                                           (cons _%lp-hd168968169034%_
                                                 _%arg168970169027%_))))
                                      (let ((_%arg168971169040%_
                                             (reverse _%arg168970169027%_)))
                                        (_%__kont170050170051%_
                                         _%arg168971169040%_))))))
                        (_%loop168966169020%_ _%target168963169014%_ '())))))
              (if (gx#stx-pair? _%__stx170047170048%_)
                  (let ((_%e168960169004%_
                         (gx#syntax-e _%__stx170047170048%_)))
                    (let ((_%tl168962169011%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168960169004%_)))
                          (_%hd168961169008%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168960169004%_))))
                      (if (gx#stx-pair/null? _%tl168962169011%_)
                          (let ((_%__splice170052170053%_
                                 (gx#syntax-split-splice->vector
                                  _%tl168962169011%_
                                  '0)))
                            (let ((_%tl168965169017%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170052170053%_
                                      '1)))
                                  (_%target168963169014%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170052170053%_
                                      '0))))
                              (if (gx#stx-null? _%tl168965169017%_)
                                  (_%__match170070170071%_
                                   _%e168960169004%_
                                   _%hd168961169008%_
                                   _%tl168962169011%_
                                   _%__splice170052170053%_
                                   _%target168963169014%_
                                   _%tl168965169017%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g168956168997%_)))))
                          (let () (declare (not safe)) (_%g168956168997%_)))))
                  (let () (declare (not safe)) (_%g168956168997%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx169087%_)
        (let* ((_%__stx170073170074%_ _%$stx169087%_)
               (_%g169092169113%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170073170074%_))))
          (let ((_%__kont170076170077%_
                 (lambda (_%g169094169178%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170162_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp170163
                                                  (lambda (_%g169193169196%_
                                                           _%g169194169199%_)
                                                    (cons _%g169193169196%_
                                                          _%g169194169199%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170163
                                              '()
                                              _%g169094169178%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170165_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__load-module)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont170080170081%_
                 (lambda (_%g169107169120%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g169091169131%_
                    (lambda ()
                      (let ((_%g169107169120%_ _%__stx170073170074%_))
                        (if (gx#identifier? _%g169107169120%_)
                            (_%__kont170080170081%_ _%g169107169120%_)
                            (let ()
                              (declare (not safe))
                              (_%g169092169113%_))))))
                   (_%__match170096170097%_
                    (lambda (_%e169095169138%_
                             _%hd169096169142%_
                             _%tl169097169145%_
                             _%__splice170078170079%_
                             _%target169098169148%_
                             _%tl169100169151%_)
                      (letrec ((_%loop169101169154%_
                                (lambda (_%hd169099169158%_
                                         _%arg169105169161%_)
                                  (if (gx#stx-pair? _%hd169099169158%_)
                                      (let ((_%e169102169164%_
                                             (gx#syntax-e _%hd169099169158%_)))
                                        (let ((_%lp-tl169104169171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169102169164%_)))
                                              (_%lp-hd169103169168%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169102169164%_))))
                                          (_%loop169101169154%_
                                           _%lp-tl169104169171%_
                                           (cons _%lp-hd169103169168%_
                                                 _%arg169105169161%_))))
                                      (let ((_%arg169106169174%_
                                             (reverse _%arg169105169161%_)))
                                        (_%__kont170076170077%_
                                         _%arg169106169174%_))))))
                        (_%loop169101169154%_ _%target169098169148%_ '())))))
              (if (gx#stx-pair? _%__stx170073170074%_)
                  (let ((_%e169095169138%_
                         (gx#syntax-e _%__stx170073170074%_)))
                    (let ((_%tl169097169145%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169095169138%_)))
                          (_%hd169096169142%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169095169138%_))))
                      (if (gx#stx-pair/null? _%tl169097169145%_)
                          (let ((_%__splice170078170079%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169097169145%_
                                  '0)))
                            (let ((_%tl169100169151%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170078170079%_
                                      '1)))
                                  (_%target169098169148%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170078170079%_
                                      '0))))
                              (if (gx#stx-null? _%tl169100169151%_)
                                  (_%__match170096170097%_
                                   _%e169095169138%_
                                   _%hd169096169142%_
                                   _%tl169097169145%_
                                   _%__splice170078170079%_
                                   _%target169098169148%_
                                   _%tl169100169151%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169091169131%_)))))
                          (let () (declare (not safe)) (_%g169091169131%_)))))
                  (let () (declare (not safe)) (_%g169091169131%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx169221%_)
        (let* ((_%__stx170099170100%_ _%$stx169221%_)
               (_%g169226169247%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170099170100%_))))
          (let ((_%__kont170102170103%_
                 (lambda (_%g169228169312%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170167_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp170168
                                                  (lambda (_%g169327169330%_
                                                           _%g169328169333%_)
                                                    (cons _%g169327169330%_
                                                          _%g169328169333%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170168
                                              '()
                                              _%g169228169312%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170170_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__reload-module!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont170106170107%_
                 (lambda (_%g169241169254%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g169225169265%_
                    (lambda ()
                      (let ((_%g169241169254%_ _%__stx170099170100%_))
                        (if (gx#identifier? _%g169241169254%_)
                            (_%__kont170106170107%_ _%g169241169254%_)
                            (let ()
                              (declare (not safe))
                              (_%g169226169247%_))))))
                   (_%__match170122170123%_
                    (lambda (_%e169229169272%_
                             _%hd169230169276%_
                             _%tl169231169279%_
                             _%__splice170104170105%_
                             _%target169232169282%_
                             _%tl169234169285%_)
                      (letrec ((_%loop169235169288%_
                                (lambda (_%hd169233169292%_
                                         _%arg169239169295%_)
                                  (if (gx#stx-pair? _%hd169233169292%_)
                                      (let ((_%e169236169298%_
                                             (gx#syntax-e _%hd169233169292%_)))
                                        (let ((_%lp-tl169238169305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169236169298%_)))
                                              (_%lp-hd169237169302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169236169298%_))))
                                          (_%loop169235169288%_
                                           _%lp-tl169238169305%_
                                           (cons _%lp-hd169237169302%_
                                                 _%arg169239169295%_))))
                                      (let ((_%arg169240169308%_
                                             (reverse _%arg169239169295%_)))
                                        (_%__kont170102170103%_
                                         _%arg169240169308%_))))))
                        (_%loop169235169288%_ _%target169232169282%_ '())))))
              (if (gx#stx-pair? _%__stx170099170100%_)
                  (let ((_%e169229169272%_
                         (gx#syntax-e _%__stx170099170100%_)))
                    (let ((_%tl169231169279%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169229169272%_)))
                          (_%hd169230169276%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169229169272%_))))
                      (if (gx#stx-pair/null? _%tl169231169279%_)
                          (let ((_%__splice170104170105%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169231169279%_
                                  '0)))
                            (let ((_%tl169234169285%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170104170105%_
                                      '1)))
                                  (_%target169232169282%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170104170105%_
                                      '0))))
                              (if (gx#stx-null? _%tl169234169285%_)
                                  (_%__match170122170123%_
                                   _%e169229169272%_
                                   _%hd169230169276%_
                                   _%tl169231169279%_
                                   _%__splice170104170105%_
                                   _%target169232169282%_
                                   _%tl169234169285%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169225169265%_)))))
                          (let () (declare (not safe)) (_%g169225169265%_)))))
                  (let () (declare (not safe)) (_%g169225169265%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx169355%_)
        (let* ((_%__stx170125170126%_ _%$stx169355%_)
               (_%g169360169381%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170125170126%_))))
          (let ((_%__kont170128170129%_
                 (lambda (_%g169362169446%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170172_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp170173
                                                  (lambda (_%g169461169464%_
                                                           _%g169462169467%_)
                                                    (cons _%g169461169464%_
                                                          _%g169462169467%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170173
                                              '()
                                              _%g169362169446%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170175_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__module-load-order)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont170132170133%_
                 (lambda (_%g169375169388%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g169359169399%_
                    (lambda ()
                      (let ((_%g169375169388%_ _%__stx170125170126%_))
                        (if (gx#identifier? _%g169375169388%_)
                            (_%__kont170132170133%_ _%g169375169388%_)
                            (let ()
                              (declare (not safe))
                              (_%g169360169381%_))))))
                   (_%__match170148170149%_
                    (lambda (_%e169363169406%_
                             _%hd169364169410%_
                             _%tl169365169413%_
                             _%__splice170130170131%_
                             _%target169366169416%_
                             _%tl169368169419%_)
                      (letrec ((_%loop169369169422%_
                                (lambda (_%hd169367169426%_
                                         _%arg169373169429%_)
                                  (if (gx#stx-pair? _%hd169367169426%_)
                                      (let ((_%e169370169432%_
                                             (gx#syntax-e _%hd169367169426%_)))
                                        (let ((_%lp-tl169372169439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169370169432%_)))
                                              (_%lp-hd169371169436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169370169432%_))))
                                          (_%loop169369169422%_
                                           _%lp-tl169372169439%_
                                           (cons _%lp-hd169371169436%_
                                                 _%arg169373169429%_))))
                                      (let ((_%arg169374169442%_
                                             (reverse _%arg169373169429%_)))
                                        (_%__kont170128170129%_
                                         _%arg169374169442%_))))))
                        (_%loop169369169422%_ _%target169366169416%_ '())))))
              (if (gx#stx-pair? _%__stx170125170126%_)
                  (let ((_%e169363169406%_
                         (gx#syntax-e _%__stx170125170126%_)))
                    (let ((_%tl169365169413%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169363169406%_)))
                          (_%hd169364169410%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169363169406%_))))
                      (if (gx#stx-pair/null? _%tl169365169413%_)
                          (let ((_%__splice170130170131%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169365169413%_
                                  '0)))
                            (let ((_%tl169368169419%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170130170131%_
                                      '1)))
                                  (_%target169366169416%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170130170131%_
                                      '0))))
                              (if (gx#stx-null? _%tl169368169419%_)
                                  (_%__match170148170149%_
                                   _%e169363169406%_
                                   _%hd169364169410%_
                                   _%tl169365169413%_
                                   _%__splice170130170131%_
                                   _%target169366169416%_
                                   _%tl169368169419%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169359169399%_)))))
                          (let () (declare (not safe)) (_%g169359169399%_)))))
                  (let () (declare (not safe)) (_%g169359169399%_))))))))))
