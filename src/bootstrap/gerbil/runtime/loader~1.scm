(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g167096_|
    (gx#core-deserialize-mark
     '(0
       (arg165910 . _%arg165910165968%_)
       (arg . _%arg165998%_)
       (id . _%id165935%_)
       (arg165911 . _%arg165911165982%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g167097_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g167096_|)))
  (define |[1]#_g167099_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g167100_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g167099_|)))
  (define |[1]#_g167101_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg166132%_)
       (id . _%id166069%_)
       (arg166045 . _%arg166045166102%_)
       (arg166046 . _%arg166046166116%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g167102_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g167101_|)))
  (define |[1]#_g167104_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g167105_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g167104_|)))
  (define |[1]#_g167106_|
    (gx#core-deserialize-mark
     '(0
       (arg166180 . _%arg166180166250%_)
       (arg . _%arg166266%_)
       (id . _%id166203%_)
       (arg166179 . _%arg166179166236%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g167107_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g167106_|)))
  (define |[1]#_g167109_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g167110_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g167109_|)))
  (define |[1]#_g167111_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg166400%_)
       (id . _%id166337%_)
       (arg166314 . _%arg166314166384%_)
       (arg166313 . _%arg166313166370%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g167112_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g167111_|)))
  (define |[1]#_g167114_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g167115_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g167114_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx165892%_)
        (let* ((_%__stx166987166988%_ _%$stx165892%_)
               (_%g165897165918%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx166987166988%_))))
          (let ((_%__kont166990166991%_
                 (lambda (_%g165899165984%_)
                   (cons (gx#datum->syntax
                          |[1]#_g167097_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp167098
                                                  (lambda (_%g165999166002%_
                                                           _%g166000166005%_)
                                                    (cons _%g165999166002%_
                                                          _%g166000166005%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp167098
                                              '()
                                              _%g165899165984%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g167100_|
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
                (_%__kont166994166995%_
                 (lambda (_%g165912165925%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g165896165937%_
                    (lambda ()
                      (let ((_%g165912165925%_ _%__stx166987166988%_))
                        (if (gx#identifier? _%g165912165925%_)
                            (_%__kont166994166995%_ _%g165912165925%_)
                            (let ()
                              (declare (not safe))
                              (_%g165897165918%_))))))
                   (_%__match167010167011%_
                    (lambda (_%e165900165944%_
                             _%hd165901165948%_
                             _%tl165902165951%_
                             _%__splice166992166993%_
                             _%target165903165954%_
                             _%tl165905165957%_)
                      (letrec ((_%loop165906165960%_
                                (lambda (_%hd165904165964%_
                                         _%arg165910165967%_)
                                  (if (gx#stx-pair? _%hd165904165964%_)
                                      (let ((_%e165907165970%_
                                             (gx#syntax-e _%hd165904165964%_)))
                                        (let ((_%lp-tl165909165977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165907165970%_)))
                                              (_%lp-hd165908165974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165907165970%_))))
                                          (_%loop165906165960%_
                                           _%lp-tl165909165977%_
                                           (cons _%lp-hd165908165974%_
                                                 _%arg165910165967%_))))
                                      (let ((_%arg165911165980%_
                                             (reverse _%arg165910165967%_)))
                                        (_%__kont166990166991%_
                                         _%arg165911165980%_))))))
                        (_%loop165906165960%_ _%target165903165954%_ '())))))
              (if (gx#stx-pair? _%__stx166987166988%_)
                  (let ((_%e165900165944%_
                         (gx#syntax-e _%__stx166987166988%_)))
                    (let ((_%tl165902165951%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e165900165944%_)))
                          (_%hd165901165948%_
                           (let ()
                             (declare (not safe))
                             (##car _%e165900165944%_))))
                      (if (gx#stx-pair/null? _%tl165902165951%_)
                          (let ((_%__splice166992166993%_
                                 (gx#syntax-split-splice->vector
                                  _%tl165902165951%_
                                  '0)))
                            (let ((_%tl165905165957%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice166992166993%_
                                      '1)))
                                  (_%target165903165954%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice166992166993%_
                                      '0))))
                              (if (gx#stx-null? _%tl165905165957%_)
                                  (_%__match167010167011%_
                                   _%e165900165944%_
                                   _%hd165901165948%_
                                   _%tl165902165951%_
                                   _%__splice166992166993%_
                                   _%target165903165954%_
                                   _%tl165905165957%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g165896165937%_)))))
                          (let () (declare (not safe)) (_%g165896165937%_)))))
                  (let () (declare (not safe)) (_%g165896165937%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx166027%_)
        (let* ((_%__stx167013167014%_ _%$stx166027%_)
               (_%g166032166053%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx167013167014%_))))
          (let ((_%__kont167016167017%_
                 (lambda (_%g166034166118%_)
                   (cons (gx#datum->syntax
                          |[1]#_g167102_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp167103
                                                  (lambda (_%g166133166136%_
                                                           _%g166134166139%_)
                                                    (cons _%g166133166136%_
                                                          _%g166134166139%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp167103
                                              '()
                                              _%g166034166118%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g167105_|
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
                (_%__kont167020167021%_
                 (lambda (_%g166047166060%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g166031166071%_
                    (lambda ()
                      (let ((_%g166047166060%_ _%__stx167013167014%_))
                        (if (gx#identifier? _%g166047166060%_)
                            (_%__kont167020167021%_ _%g166047166060%_)
                            (let ()
                              (declare (not safe))
                              (_%g166032166053%_))))))
                   (_%__match167036167037%_
                    (lambda (_%e166035166078%_
                             _%hd166036166082%_
                             _%tl166037166085%_
                             _%__splice167018167019%_
                             _%target166038166088%_
                             _%tl166040166091%_)
                      (letrec ((_%loop166041166094%_
                                (lambda (_%hd166039166098%_
                                         _%arg166045166101%_)
                                  (if (gx#stx-pair? _%hd166039166098%_)
                                      (let ((_%e166042166104%_
                                             (gx#syntax-e _%hd166039166098%_)))
                                        (let ((_%lp-tl166044166111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166042166104%_)))
                                              (_%lp-hd166043166108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166042166104%_))))
                                          (_%loop166041166094%_
                                           _%lp-tl166044166111%_
                                           (cons _%lp-hd166043166108%_
                                                 _%arg166045166101%_))))
                                      (let ((_%arg166046166114%_
                                             (reverse _%arg166045166101%_)))
                                        (_%__kont167016167017%_
                                         _%arg166046166114%_))))))
                        (_%loop166041166094%_ _%target166038166088%_ '())))))
              (if (gx#stx-pair? _%__stx167013167014%_)
                  (let ((_%e166035166078%_
                         (gx#syntax-e _%__stx167013167014%_)))
                    (let ((_%tl166037166085%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166035166078%_)))
                          (_%hd166036166082%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166035166078%_))))
                      (if (gx#stx-pair/null? _%tl166037166085%_)
                          (let ((_%__splice167018167019%_
                                 (gx#syntax-split-splice->vector
                                  _%tl166037166085%_
                                  '0)))
                            (let ((_%tl166040166091%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167018167019%_
                                      '1)))
                                  (_%target166038166088%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167018167019%_
                                      '0))))
                              (if (gx#stx-null? _%tl166040166091%_)
                                  (_%__match167036167037%_
                                   _%e166035166078%_
                                   _%hd166036166082%_
                                   _%tl166037166085%_
                                   _%__splice167018167019%_
                                   _%target166038166088%_
                                   _%tl166040166091%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g166031166071%_)))))
                          (let () (declare (not safe)) (_%g166031166071%_)))))
                  (let () (declare (not safe)) (_%g166031166071%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx166161%_)
        (let* ((_%__stx167039167040%_ _%$stx166161%_)
               (_%g166166166187%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx167039167040%_))))
          (let ((_%__kont167042167043%_
                 (lambda (_%g166168166252%_)
                   (cons (gx#datum->syntax
                          |[1]#_g167107_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp167108
                                                  (lambda (_%g166267166270%_
                                                           _%g166268166273%_)
                                                    (cons _%g166267166270%_
                                                          _%g166268166273%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp167108
                                              '()
                                              _%g166168166252%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g167110_|
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
                (_%__kont167046167047%_
                 (lambda (_%g166181166194%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g166165166205%_
                    (lambda ()
                      (let ((_%g166181166194%_ _%__stx167039167040%_))
                        (if (gx#identifier? _%g166181166194%_)
                            (_%__kont167046167047%_ _%g166181166194%_)
                            (let ()
                              (declare (not safe))
                              (_%g166166166187%_))))))
                   (_%__match167062167063%_
                    (lambda (_%e166169166212%_
                             _%hd166170166216%_
                             _%tl166171166219%_
                             _%__splice167044167045%_
                             _%target166172166222%_
                             _%tl166174166225%_)
                      (letrec ((_%loop166175166228%_
                                (lambda (_%hd166173166232%_
                                         _%arg166179166235%_)
                                  (if (gx#stx-pair? _%hd166173166232%_)
                                      (let ((_%e166176166238%_
                                             (gx#syntax-e _%hd166173166232%_)))
                                        (let ((_%lp-tl166178166245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166176166238%_)))
                                              (_%lp-hd166177166242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166176166238%_))))
                                          (_%loop166175166228%_
                                           _%lp-tl166178166245%_
                                           (cons _%lp-hd166177166242%_
                                                 _%arg166179166235%_))))
                                      (let ((_%arg166180166248%_
                                             (reverse _%arg166179166235%_)))
                                        (_%__kont167042167043%_
                                         _%arg166180166248%_))))))
                        (_%loop166175166228%_ _%target166172166222%_ '())))))
              (if (gx#stx-pair? _%__stx167039167040%_)
                  (let ((_%e166169166212%_
                         (gx#syntax-e _%__stx167039167040%_)))
                    (let ((_%tl166171166219%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166169166212%_)))
                          (_%hd166170166216%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166169166212%_))))
                      (if (gx#stx-pair/null? _%tl166171166219%_)
                          (let ((_%__splice167044167045%_
                                 (gx#syntax-split-splice->vector
                                  _%tl166171166219%_
                                  '0)))
                            (let ((_%tl166174166225%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167044167045%_
                                      '1)))
                                  (_%target166172166222%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167044167045%_
                                      '0))))
                              (if (gx#stx-null? _%tl166174166225%_)
                                  (_%__match167062167063%_
                                   _%e166169166212%_
                                   _%hd166170166216%_
                                   _%tl166171166219%_
                                   _%__splice167044167045%_
                                   _%target166172166222%_
                                   _%tl166174166225%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g166165166205%_)))))
                          (let () (declare (not safe)) (_%g166165166205%_)))))
                  (let () (declare (not safe)) (_%g166165166205%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx166295%_)
        (let* ((_%__stx167065167066%_ _%$stx166295%_)
               (_%g166300166321%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx167065167066%_))))
          (let ((_%__kont167068167069%_
                 (lambda (_%g166302166386%_)
                   (cons (gx#datum->syntax
                          |[1]#_g167112_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp167113
                                                  (lambda (_%g166401166404%_
                                                           _%g166402166407%_)
                                                    (cons _%g166401166404%_
                                                          _%g166402166407%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp167113
                                              '()
                                              _%g166302166386%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g167115_|
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
                (_%__kont167072167073%_
                 (lambda (_%g166315166328%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g166299166339%_
                    (lambda ()
                      (let ((_%g166315166328%_ _%__stx167065167066%_))
                        (if (gx#identifier? _%g166315166328%_)
                            (_%__kont167072167073%_ _%g166315166328%_)
                            (let ()
                              (declare (not safe))
                              (_%g166300166321%_))))))
                   (_%__match167088167089%_
                    (lambda (_%e166303166346%_
                             _%hd166304166350%_
                             _%tl166305166353%_
                             _%__splice167070167071%_
                             _%target166306166356%_
                             _%tl166308166359%_)
                      (letrec ((_%loop166309166362%_
                                (lambda (_%hd166307166366%_
                                         _%arg166313166369%_)
                                  (if (gx#stx-pair? _%hd166307166366%_)
                                      (let ((_%e166310166372%_
                                             (gx#syntax-e _%hd166307166366%_)))
                                        (let ((_%lp-tl166312166379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166310166372%_)))
                                              (_%lp-hd166311166376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166310166372%_))))
                                          (_%loop166309166362%_
                                           _%lp-tl166312166379%_
                                           (cons _%lp-hd166311166376%_
                                                 _%arg166313166369%_))))
                                      (let ((_%arg166314166382%_
                                             (reverse _%arg166313166369%_)))
                                        (_%__kont167068167069%_
                                         _%arg166314166382%_))))))
                        (_%loop166309166362%_ _%target166306166356%_ '())))))
              (if (gx#stx-pair? _%__stx167065167066%_)
                  (let ((_%e166303166346%_
                         (gx#syntax-e _%__stx167065167066%_)))
                    (let ((_%tl166305166353%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166303166346%_)))
                          (_%hd166304166350%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166303166346%_))))
                      (if (gx#stx-pair/null? _%tl166305166353%_)
                          (let ((_%__splice167070167071%_
                                 (gx#syntax-split-splice->vector
                                  _%tl166305166353%_
                                  '0)))
                            (let ((_%tl166308166359%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167070167071%_
                                      '1)))
                                  (_%target166306166356%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167070167071%_
                                      '0))))
                              (if (gx#stx-null? _%tl166308166359%_)
                                  (_%__match167088167089%_
                                   _%e166303166346%_
                                   _%hd166304166350%_
                                   _%tl166305166353%_
                                   _%__splice167070167071%_
                                   _%target166306166356%_
                                   _%tl166308166359%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g166299166339%_)))))
                          (let () (declare (not safe)) (_%g166299166339%_)))))
                  (let () (declare (not safe)) (_%g166299166339%_))))))))))
