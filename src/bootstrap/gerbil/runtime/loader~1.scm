(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g170152_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg169054%_)
       (arg168967 . _%arg168967169038%_)
       (id . _%id168991%_)
       (arg168966 . _%arg168966169024%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170153_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170152_|)))
  (define |[1]#_g170155_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170156_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170155_|)))
  (define |[1]#_g170157_|
    (gx#core-deserialize-mark
     '(0
       (arg169101 . _%arg169101169158%_)
       (arg . _%arg169188%_)
       (arg169102 . _%arg169102169172%_)
       (id . _%id169125%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170158_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170157_|)))
  (define |[1]#_g170160_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170161_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170160_|)))
  (define |[1]#_g170162_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg169322%_)
       (arg169235 . _%arg169235169292%_)
       (id . _%id169259%_)
       (arg169236 . _%arg169236169306%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170163_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170162_|)))
  (define |[1]#_g170165_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170166_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170165_|)))
  (define |[1]#_g170167_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg169456%_)
       (arg169370 . _%arg169370169440%_)
       (arg169369 . _%arg169369169426%_)
       (id . _%id169393%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170168_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170167_|)))
  (define |[1]#_g170170_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170171_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170170_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx168948%_)
        (let* ((_%__stx170043170044%_ _%$stx168948%_)
               (_%g168953168974%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170043170044%_))))
          (let ((_%__kont170046170047%_
                 (lambda (_%g168955169040%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170153_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp170154
                                                  (lambda (_%g169055169058%_
                                                           _%g169056169061%_)
                                                    (cons _%g169055169058%_
                                                          _%g169056169061%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170154
                                              '()
                                              _%g168955169040%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170156_|
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
                (_%__kont170050170051%_
                 (lambda (_%g168968168981%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g168952168993%_
                    (lambda ()
                      (let ((_%g168968168981%_ _%__stx170043170044%_))
                        (if (gx#identifier? _%g168968168981%_)
                            (_%__kont170050170051%_ _%g168968168981%_)
                            (let ()
                              (declare (not safe))
                              (_%g168953168974%_))))))
                   (_%__match170066170067%_
                    (lambda (_%e168956169000%_
                             _%hd168957169004%_
                             _%tl168958169007%_
                             _%__splice170048170049%_
                             _%target168959169010%_
                             _%tl168961169013%_)
                      (letrec ((_%loop168962169016%_
                                (lambda (_%hd168960169020%_
                                         _%arg168966169023%_)
                                  (if (gx#stx-pair? _%hd168960169020%_)
                                      (let ((_%e168963169026%_
                                             (gx#syntax-e _%hd168960169020%_)))
                                        (let ((_%lp-tl168965169033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168963169026%_)))
                                              (_%lp-hd168964169030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168963169026%_))))
                                          (_%loop168962169016%_
                                           _%lp-tl168965169033%_
                                           (cons _%lp-hd168964169030%_
                                                 _%arg168966169023%_))))
                                      (let ((_%arg168967169036%_
                                             (reverse _%arg168966169023%_)))
                                        (_%__kont170046170047%_
                                         _%arg168967169036%_))))))
                        (_%loop168962169016%_ _%target168959169010%_ '())))))
              (if (gx#stx-pair? _%__stx170043170044%_)
                  (let ((_%e168956169000%_
                         (gx#syntax-e _%__stx170043170044%_)))
                    (let ((_%tl168958169007%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168956169000%_)))
                          (_%hd168957169004%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168956169000%_))))
                      (if (gx#stx-pair/null? _%tl168958169007%_)
                          (let ((_%__splice170048170049%_
                                 (gx#syntax-split-splice->vector
                                  _%tl168958169007%_
                                  '0)))
                            (let ((_%tl168961169013%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170048170049%_
                                      '1)))
                                  (_%target168959169010%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170048170049%_
                                      '0))))
                              (if (gx#stx-null? _%tl168961169013%_)
                                  (_%__match170066170067%_
                                   _%e168956169000%_
                                   _%hd168957169004%_
                                   _%tl168958169007%_
                                   _%__splice170048170049%_
                                   _%target168959169010%_
                                   _%tl168961169013%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g168952168993%_)))))
                          (let () (declare (not safe)) (_%g168952168993%_)))))
                  (let () (declare (not safe)) (_%g168952168993%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx169083%_)
        (let* ((_%__stx170069170070%_ _%$stx169083%_)
               (_%g169088169109%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170069170070%_))))
          (let ((_%__kont170072170073%_
                 (lambda (_%g169090169174%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170158_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp170159
                                                  (lambda (_%g169189169192%_
                                                           _%g169190169195%_)
                                                    (cons _%g169189169192%_
                                                          _%g169190169195%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170159
                                              '()
                                              _%g169090169174%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170161_|
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
                (_%__kont170076170077%_
                 (lambda (_%g169103169116%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g169087169127%_
                    (lambda ()
                      (let ((_%g169103169116%_ _%__stx170069170070%_))
                        (if (gx#identifier? _%g169103169116%_)
                            (_%__kont170076170077%_ _%g169103169116%_)
                            (let ()
                              (declare (not safe))
                              (_%g169088169109%_))))))
                   (_%__match170092170093%_
                    (lambda (_%e169091169134%_
                             _%hd169092169138%_
                             _%tl169093169141%_
                             _%__splice170074170075%_
                             _%target169094169144%_
                             _%tl169096169147%_)
                      (letrec ((_%loop169097169150%_
                                (lambda (_%hd169095169154%_
                                         _%arg169101169157%_)
                                  (if (gx#stx-pair? _%hd169095169154%_)
                                      (let ((_%e169098169160%_
                                             (gx#syntax-e _%hd169095169154%_)))
                                        (let ((_%lp-tl169100169167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169098169160%_)))
                                              (_%lp-hd169099169164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169098169160%_))))
                                          (_%loop169097169150%_
                                           _%lp-tl169100169167%_
                                           (cons _%lp-hd169099169164%_
                                                 _%arg169101169157%_))))
                                      (let ((_%arg169102169170%_
                                             (reverse _%arg169101169157%_)))
                                        (_%__kont170072170073%_
                                         _%arg169102169170%_))))))
                        (_%loop169097169150%_ _%target169094169144%_ '())))))
              (if (gx#stx-pair? _%__stx170069170070%_)
                  (let ((_%e169091169134%_
                         (gx#syntax-e _%__stx170069170070%_)))
                    (let ((_%tl169093169141%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169091169134%_)))
                          (_%hd169092169138%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169091169134%_))))
                      (if (gx#stx-pair/null? _%tl169093169141%_)
                          (let ((_%__splice170074170075%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169093169141%_
                                  '0)))
                            (let ((_%tl169096169147%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170074170075%_
                                      '1)))
                                  (_%target169094169144%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170074170075%_
                                      '0))))
                              (if (gx#stx-null? _%tl169096169147%_)
                                  (_%__match170092170093%_
                                   _%e169091169134%_
                                   _%hd169092169138%_
                                   _%tl169093169141%_
                                   _%__splice170074170075%_
                                   _%target169094169144%_
                                   _%tl169096169147%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169087169127%_)))))
                          (let () (declare (not safe)) (_%g169087169127%_)))))
                  (let () (declare (not safe)) (_%g169087169127%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx169217%_)
        (let* ((_%__stx170095170096%_ _%$stx169217%_)
               (_%g169222169243%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170095170096%_))))
          (let ((_%__kont170098170099%_
                 (lambda (_%g169224169308%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170163_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp170164
                                                  (lambda (_%g169323169326%_
                                                           _%g169324169329%_)
                                                    (cons _%g169323169326%_
                                                          _%g169324169329%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170164
                                              '()
                                              _%g169224169308%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170166_|
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
                (_%__kont170102170103%_
                 (lambda (_%g169237169250%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g169221169261%_
                    (lambda ()
                      (let ((_%g169237169250%_ _%__stx170095170096%_))
                        (if (gx#identifier? _%g169237169250%_)
                            (_%__kont170102170103%_ _%g169237169250%_)
                            (let ()
                              (declare (not safe))
                              (_%g169222169243%_))))))
                   (_%__match170118170119%_
                    (lambda (_%e169225169268%_
                             _%hd169226169272%_
                             _%tl169227169275%_
                             _%__splice170100170101%_
                             _%target169228169278%_
                             _%tl169230169281%_)
                      (letrec ((_%loop169231169284%_
                                (lambda (_%hd169229169288%_
                                         _%arg169235169291%_)
                                  (if (gx#stx-pair? _%hd169229169288%_)
                                      (let ((_%e169232169294%_
                                             (gx#syntax-e _%hd169229169288%_)))
                                        (let ((_%lp-tl169234169301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169232169294%_)))
                                              (_%lp-hd169233169298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169232169294%_))))
                                          (_%loop169231169284%_
                                           _%lp-tl169234169301%_
                                           (cons _%lp-hd169233169298%_
                                                 _%arg169235169291%_))))
                                      (let ((_%arg169236169304%_
                                             (reverse _%arg169235169291%_)))
                                        (_%__kont170098170099%_
                                         _%arg169236169304%_))))))
                        (_%loop169231169284%_ _%target169228169278%_ '())))))
              (if (gx#stx-pair? _%__stx170095170096%_)
                  (let ((_%e169225169268%_
                         (gx#syntax-e _%__stx170095170096%_)))
                    (let ((_%tl169227169275%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169225169268%_)))
                          (_%hd169226169272%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169225169268%_))))
                      (if (gx#stx-pair/null? _%tl169227169275%_)
                          (let ((_%__splice170100170101%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169227169275%_
                                  '0)))
                            (let ((_%tl169230169281%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170100170101%_
                                      '1)))
                                  (_%target169228169278%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170100170101%_
                                      '0))))
                              (if (gx#stx-null? _%tl169230169281%_)
                                  (_%__match170118170119%_
                                   _%e169225169268%_
                                   _%hd169226169272%_
                                   _%tl169227169275%_
                                   _%__splice170100170101%_
                                   _%target169228169278%_
                                   _%tl169230169281%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169221169261%_)))))
                          (let () (declare (not safe)) (_%g169221169261%_)))))
                  (let () (declare (not safe)) (_%g169221169261%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx169351%_)
        (let* ((_%__stx170121170122%_ _%$stx169351%_)
               (_%g169356169377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170121170122%_))))
          (let ((_%__kont170124170125%_
                 (lambda (_%g169358169442%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170168_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp170169
                                                  (lambda (_%g169457169460%_
                                                           _%g169458169463%_)
                                                    (cons _%g169457169460%_
                                                          _%g169458169463%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170169
                                              '()
                                              _%g169358169442%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170171_|
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
                (_%__kont170128170129%_
                 (lambda (_%g169371169384%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g169355169395%_
                    (lambda ()
                      (let ((_%g169371169384%_ _%__stx170121170122%_))
                        (if (gx#identifier? _%g169371169384%_)
                            (_%__kont170128170129%_ _%g169371169384%_)
                            (let ()
                              (declare (not safe))
                              (_%g169356169377%_))))))
                   (_%__match170144170145%_
                    (lambda (_%e169359169402%_
                             _%hd169360169406%_
                             _%tl169361169409%_
                             _%__splice170126170127%_
                             _%target169362169412%_
                             _%tl169364169415%_)
                      (letrec ((_%loop169365169418%_
                                (lambda (_%hd169363169422%_
                                         _%arg169369169425%_)
                                  (if (gx#stx-pair? _%hd169363169422%_)
                                      (let ((_%e169366169428%_
                                             (gx#syntax-e _%hd169363169422%_)))
                                        (let ((_%lp-tl169368169435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169366169428%_)))
                                              (_%lp-hd169367169432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169366169428%_))))
                                          (_%loop169365169418%_
                                           _%lp-tl169368169435%_
                                           (cons _%lp-hd169367169432%_
                                                 _%arg169369169425%_))))
                                      (let ((_%arg169370169438%_
                                             (reverse _%arg169369169425%_)))
                                        (_%__kont170124170125%_
                                         _%arg169370169438%_))))))
                        (_%loop169365169418%_ _%target169362169412%_ '())))))
              (if (gx#stx-pair? _%__stx170121170122%_)
                  (let ((_%e169359169402%_
                         (gx#syntax-e _%__stx170121170122%_)))
                    (let ((_%tl169361169409%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169359169402%_)))
                          (_%hd169360169406%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169359169402%_))))
                      (if (gx#stx-pair/null? _%tl169361169409%_)
                          (let ((_%__splice170126170127%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169361169409%_
                                  '0)))
                            (let ((_%tl169364169415%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170126170127%_
                                      '1)))
                                  (_%target169362169412%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170126170127%_
                                      '0))))
                              (if (gx#stx-null? _%tl169364169415%_)
                                  (_%__match170144170145%_
                                   _%e169359169402%_
                                   _%hd169360169406%_
                                   _%tl169361169409%_
                                   _%__splice170126170127%_
                                   _%target169362169412%_
                                   _%tl169364169415%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169355169395%_)))))
                          (let () (declare (not safe)) (_%g169355169395%_)))))
                  (let () (declare (not safe)) (_%g169355169395%_))))))))))
