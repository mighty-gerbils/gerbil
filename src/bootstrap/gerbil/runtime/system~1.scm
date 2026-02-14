(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g120580_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg119771%_)
       (arg119684 . _%arg119684119755%_)
       (arg119683 . _%arg119683119741%_)
       (id . _%id119708%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120581_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120580_|)))
  (define |[1]#_g120582_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value119787%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120583_|
    (##structure
     gx#syntax-quote::t
     '_%new-value119787%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g120582_|)))
  (define |[1]#_g120585_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120586_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120585_|)))
  (define |[1]#_g120587_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg119906%_)
       (arg119820 . _%arg119820119890%_)
       (id . _%id119843%_)
       (arg119819 . _%arg119819119876%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120588_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120587_|)))
  (define |[1]#_g120590_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120591_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120590_|)))
  (define |[1]#_g120592_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg120067%_)
       (arg119981 . _%arg119981120051%_)
       (id . _%id120004%_)
       (arg119980 . _%arg119980120037%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120593_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120592_|)))
  (define |[1]#_g120595_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120596_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120595_|)))
  (define |[1]#_g120597_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg120210%_)
       (arg120123 . _%arg120123120180%_)
       (arg120124 . _%arg120124120194%_)
       (id . _%id120147%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120598_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120597_|)))
  (define |[1]#_g120599_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value120226%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120600_|
    (##structure
     gx#syntax-quote::t
     '_%new-value120226%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g120599_|)))
  (define |[1]#_g120602_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120603_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120602_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx119665%_)
        (let* ((_%__stx120466120467%_ _%$stx119665%_)
               (_%g119670119691%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120466120467%_))))
          (let ((_%__kont120469120470%_
                 (lambda (_%g119672119757%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120581_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g120583_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp120584
                                                  (lambda (_%g119772119775%_
                                                           _%g119773119778%_)
                                                    (cons _%g119772119775%_
                                                          _%g119773119778%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120584
                                              '()
                                              _%g119672119757%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120586_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g120583_|
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
                            |[1]#_g120583_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont120473120474%_
                 (lambda (_%g119685119698%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%g119669119710%_
                    (lambda ()
                      (let ((_%g119685119698%_ _%__stx120466120467%_))
                        (if (gx#identifier? _%g119685119698%_)
                            (_%__kont120473120474%_ _%g119685119698%_)
                            (let ()
                              (declare (not safe))
                              (_%g119670119691%_))))))
                   (_%__match120489120490%_
                    (lambda (_%e119673119717%_
                             _%hd119674119721%_
                             _%tl119675119724%_
                             _%__splice120471120472%_
                             _%target119676119727%_
                             _%tl119678119730%_)
                      (letrec ((_%loop119679119733%_
                                (lambda (_%hd119677119737%_
                                         _%arg119683119740%_)
                                  (if (gx#stx-pair? _%hd119677119737%_)
                                      (let ((_%e119680119743%_
                                             (gx#syntax-e _%hd119677119737%_)))
                                        (let ((_%lp-tl119682119750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119680119743%_)))
                                              (_%lp-hd119681119747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119680119743%_))))
                                          (_%loop119679119733%_
                                           _%lp-tl119682119750%_
                                           (cons _%lp-hd119681119747%_
                                                 _%arg119683119740%_))))
                                      (let ((_%arg119684119753%_
                                             (reverse _%arg119683119740%_)))
                                        (_%__kont120469120470%_
                                         _%arg119684119753%_))))))
                        (_%loop119679119733%_ _%target119676119727%_ '())))))
              (if (gx#stx-pair? _%__stx120466120467%_)
                  (let ((_%e119673119717%_
                         (gx#syntax-e _%__stx120466120467%_)))
                    (let ((_%tl119675119724%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119673119717%_)))
                          (_%hd119674119721%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119673119717%_))))
                      (if (gx#stx-pair/null? _%tl119675119724%_)
                          (let ((_%__splice120471120472%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119675119724%_
                                  '0)))
                            (let ((_%tl119678119730%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120471120472%_
                                      '1)))
                                  (_%target119676119727%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120471120472%_
                                      '0))))
                              (if (gx#stx-null? _%tl119678119730%_)
                                  (_%__match120489120490%_
                                   _%e119673119717%_
                                   _%hd119674119721%_
                                   _%tl119675119724%_
                                   _%__splice120471120472%_
                                   _%target119676119727%_
                                   _%tl119678119730%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119669119710%_)))))
                          (let () (declare (not safe)) (_%g119669119710%_)))))
                  (let () (declare (not safe)) (_%g119669119710%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx119801%_)
        (let* ((_%__stx120492120493%_ _%$stx119801%_)
               (_%g119806119827%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120492120493%_))))
          (let ((_%__kont120495120496%_
                 (lambda (_%g119808119892%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120588_|
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
                                     (cons (let ((__tmp120589
                                                  (lambda (_%g119907119910%_
                                                           _%g119908119913%_)
                                                    (cons _%g119907119910%_
                                                          _%g119908119913%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120589
                                              '()
                                              _%g119808119892%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120591_|
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
                (_%__kont120499120500%_
                 (lambda (_%g119821119834%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%g119805119845%_
                    (lambda ()
                      (let ((_%g119821119834%_ _%__stx120492120493%_))
                        (if (gx#identifier? _%g119821119834%_)
                            (_%__kont120499120500%_ _%g119821119834%_)
                            (let ()
                              (declare (not safe))
                              (_%g119806119827%_))))))
                   (_%__match120515120516%_
                    (lambda (_%e119809119852%_
                             _%hd119810119856%_
                             _%tl119811119859%_
                             _%__splice120497120498%_
                             _%target119812119862%_
                             _%tl119814119865%_)
                      (letrec ((_%loop119815119868%_
                                (lambda (_%hd119813119872%_
                                         _%arg119819119875%_)
                                  (if (gx#stx-pair? _%hd119813119872%_)
                                      (let ((_%e119816119878%_
                                             (gx#syntax-e _%hd119813119872%_)))
                                        (let ((_%lp-tl119818119885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119816119878%_)))
                                              (_%lp-hd119817119882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119816119878%_))))
                                          (_%loop119815119868%_
                                           _%lp-tl119818119885%_
                                           (cons _%lp-hd119817119882%_
                                                 _%arg119819119875%_))))
                                      (let ((_%arg119820119888%_
                                             (reverse _%arg119819119875%_)))
                                        (_%__kont120495120496%_
                                         _%arg119820119888%_))))))
                        (_%loop119815119868%_ _%target119812119862%_ '())))))
              (if (gx#stx-pair? _%__stx120492120493%_)
                  (let ((_%e119809119852%_
                         (gx#syntax-e _%__stx120492120493%_)))
                    (let ((_%tl119811119859%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119809119852%_)))
                          (_%hd119810119856%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119809119852%_))))
                      (if (gx#stx-pair/null? _%tl119811119859%_)
                          (let ((_%__splice120497120498%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119811119859%_
                                  '0)))
                            (let ((_%tl119814119865%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120497120498%_
                                      '1)))
                                  (_%target119812119862%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120497120498%_
                                      '0))))
                              (if (gx#stx-null? _%tl119814119865%_)
                                  (_%__match120515120516%_
                                   _%e119809119852%_
                                   _%hd119810119856%_
                                   _%tl119811119859%_
                                   _%__splice120497120498%_
                                   _%target119812119862%_
                                   _%tl119814119865%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119805119845%_)))))
                          (let () (declare (not safe)) (_%g119805119845%_)))))
                  (let () (declare (not safe)) (_%g119805119845%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx119962%_)
        (let* ((_%__stx120518120519%_ _%$stx119962%_)
               (_%g119967119988%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120518120519%_))))
          (let ((_%__kont120521120522%_
                 (lambda (_%g119969120053%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120593_|
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
                                     (cons (let ((__tmp120594
                                                  (lambda (_%g120068120071%_
                                                           _%g120069120074%_)
                                                    (cons _%g120068120071%_
                                                          _%g120069120074%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120594
                                              '()
                                              _%g119969120053%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120596_|
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
                (_%__kont120525120526%_
                 (lambda (_%g119982119995%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%g119966120006%_
                    (lambda ()
                      (let ((_%g119982119995%_ _%__stx120518120519%_))
                        (if (gx#identifier? _%g119982119995%_)
                            (_%__kont120525120526%_ _%g119982119995%_)
                            (let ()
                              (declare (not safe))
                              (_%g119967119988%_))))))
                   (_%__match120541120542%_
                    (lambda (_%e119970120013%_
                             _%hd119971120017%_
                             _%tl119972120020%_
                             _%__splice120523120524%_
                             _%target119973120023%_
                             _%tl119975120026%_)
                      (letrec ((_%loop119976120029%_
                                (lambda (_%hd119974120033%_
                                         _%arg119980120036%_)
                                  (if (gx#stx-pair? _%hd119974120033%_)
                                      (let ((_%e119977120039%_
                                             (gx#syntax-e _%hd119974120033%_)))
                                        (let ((_%lp-tl119979120046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119977120039%_)))
                                              (_%lp-hd119978120043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119977120039%_))))
                                          (_%loop119976120029%_
                                           _%lp-tl119979120046%_
                                           (cons _%lp-hd119978120043%_
                                                 _%arg119980120036%_))))
                                      (let ((_%arg119981120049%_
                                             (reverse _%arg119980120036%_)))
                                        (_%__kont120521120522%_
                                         _%arg119981120049%_))))))
                        (_%loop119976120029%_ _%target119973120023%_ '())))))
              (if (gx#stx-pair? _%__stx120518120519%_)
                  (let ((_%e119970120013%_
                         (gx#syntax-e _%__stx120518120519%_)))
                    (let ((_%tl119972120020%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119970120013%_)))
                          (_%hd119971120017%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119970120013%_))))
                      (if (gx#stx-pair/null? _%tl119972120020%_)
                          (let ((_%__splice120523120524%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119972120020%_
                                  '0)))
                            (let ((_%tl119975120026%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120523120524%_
                                      '1)))
                                  (_%target119973120023%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120523120524%_
                                      '0))))
                              (if (gx#stx-null? _%tl119975120026%_)
                                  (_%__match120541120542%_
                                   _%e119970120013%_
                                   _%hd119971120017%_
                                   _%tl119972120020%_
                                   _%__splice120523120524%_
                                   _%target119973120023%_
                                   _%tl119975120026%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119966120006%_)))))
                          (let () (declare (not safe)) (_%g119966120006%_)))))
                  (let () (declare (not safe)) (_%g119966120006%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx120105%_)
        (let* ((_%__stx120544120545%_ _%$stx120105%_)
               (_%g120110120131%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120544120545%_))))
          (let ((_%__kont120547120548%_
                 (lambda (_%g120112120196%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120598_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g120600_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp120601
                                                  (lambda (_%g120211120214%_
                                                           _%g120212120217%_)
                                                    (cons _%g120211120214%_
                                                          _%g120212120217%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120601
                                              '()
                                              _%g120112120196%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120603_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g120600_|
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
                            |[1]#_g120600_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont120551120552%_
                 (lambda (_%g120125120138%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%g120109120149%_
                    (lambda ()
                      (let ((_%g120125120138%_ _%__stx120544120545%_))
                        (if (gx#identifier? _%g120125120138%_)
                            (_%__kont120551120552%_ _%g120125120138%_)
                            (let ()
                              (declare (not safe))
                              (_%g120110120131%_))))))
                   (_%__match120567120568%_
                    (lambda (_%e120113120156%_
                             _%hd120114120160%_
                             _%tl120115120163%_
                             _%__splice120549120550%_
                             _%target120116120166%_
                             _%tl120118120169%_)
                      (letrec ((_%loop120119120172%_
                                (lambda (_%hd120117120176%_
                                         _%arg120123120179%_)
                                  (if (gx#stx-pair? _%hd120117120176%_)
                                      (let ((_%e120120120182%_
                                             (gx#syntax-e _%hd120117120176%_)))
                                        (let ((_%lp-tl120122120189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120120120182%_)))
                                              (_%lp-hd120121120186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120120120182%_))))
                                          (_%loop120119120172%_
                                           _%lp-tl120122120189%_
                                           (cons _%lp-hd120121120186%_
                                                 _%arg120123120179%_))))
                                      (let ((_%arg120124120192%_
                                             (reverse _%arg120123120179%_)))
                                        (_%__kont120547120548%_
                                         _%arg120124120192%_))))))
                        (_%loop120119120172%_ _%target120116120166%_ '())))))
              (if (gx#stx-pair? _%__stx120544120545%_)
                  (let ((_%e120113120156%_
                         (gx#syntax-e _%__stx120544120545%_)))
                    (let ((_%tl120115120163%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120113120156%_)))
                          (_%hd120114120160%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120113120156%_))))
                      (if (gx#stx-pair/null? _%tl120115120163%_)
                          (let ((_%__splice120549120550%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120115120163%_
                                  '0)))
                            (let ((_%tl120118120169%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120549120550%_
                                      '1)))
                                  (_%target120116120166%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120549120550%_
                                      '0))))
                              (if (gx#stx-null? _%tl120118120169%_)
                                  (_%__match120567120568%_
                                   _%e120113120156%_
                                   _%hd120114120160%_
                                   _%tl120115120163%_
                                   _%__splice120549120550%_
                                   _%target120116120166%_
                                   _%tl120118120169%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120109120149%_)))))
                          (let () (declare (not safe)) (_%g120109120149%_)))))
                  (let () (declare (not safe)) (_%g120109120149%_))))))))))
