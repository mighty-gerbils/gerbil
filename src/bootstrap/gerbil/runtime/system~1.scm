(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g121660_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg120851%_)
       (arg120764 . _%arg120764120835%_)
       (id . _%id120788%_)
       (arg120763 . _%arg120763120821%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121661_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121660_|)))
  (define |[1]#_g121662_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value120867%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121663_|
    (##structure
     gx#syntax-quote::t
     '_%new-value120867%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g121662_|)))
  (define |[1]#_g121665_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121666_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121665_|)))
  (define |[1]#_g121667_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg120986%_)
       (arg120899 . _%arg120899120956%_)
       (arg120900 . _%arg120900120970%_)
       (id . _%id120923%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121668_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121667_|)))
  (define |[1]#_g121670_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121671_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121670_|)))
  (define |[1]#_g121672_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg121147%_)
       (id . _%id121084%_)
       (arg121060 . _%arg121060121117%_)
       (arg121061 . _%arg121061121131%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121673_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121672_|)))
  (define |[1]#_g121675_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121676_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121675_|)))
  (define |[1]#_g121677_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg121290%_)
       (id . _%id121227%_)
       (arg121203 . _%arg121203121260%_)
       (arg121204 . _%arg121204121274%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121678_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121677_|)))
  (define |[1]#_g121679_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value121306%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121680_|
    (##structure
     gx#syntax-quote::t
     '_%new-value121306%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g121679_|)))
  (define |[1]#_g121682_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121683_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121682_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx120745%_)
        (let* ((_%__stx121546121547%_ _%$stx120745%_)
               (_%g120750120771%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121546121547%_))))
          (let ((_%__kont121549121550%_
                 (lambda (_%g120752120837%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121661_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g121663_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp121664
                                                  (lambda (_%g120852120855%_
                                                           _%g120853120858%_)
                                                    (cons _%g120852120855%_
                                                          _%g120853120858%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121664
                                              '()
                                              _%g120752120837%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121666_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g121663_|
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
                            |[1]#_g121663_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont121553121554%_
                 (lambda (_%g120765120778%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%g120749120790%_
                    (lambda ()
                      (let ((_%g120765120778%_ _%__stx121546121547%_))
                        (if (gx#identifier? _%g120765120778%_)
                            (_%__kont121553121554%_ _%g120765120778%_)
                            (let ()
                              (declare (not safe))
                              (_%g120750120771%_))))))
                   (_%__match121569121570%_
                    (lambda (_%e120753120797%_
                             _%hd120754120801%_
                             _%tl120755120804%_
                             _%__splice121551121552%_
                             _%target120756120807%_
                             _%tl120758120810%_)
                      (letrec ((_%loop120759120813%_
                                (lambda (_%hd120757120817%_
                                         _%arg120763120820%_)
                                  (if (gx#stx-pair? _%hd120757120817%_)
                                      (let ((_%e120760120823%_
                                             (gx#syntax-e _%hd120757120817%_)))
                                        (let ((_%lp-tl120762120830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120760120823%_)))
                                              (_%lp-hd120761120827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120760120823%_))))
                                          (_%loop120759120813%_
                                           _%lp-tl120762120830%_
                                           (cons _%lp-hd120761120827%_
                                                 _%arg120763120820%_))))
                                      (let ((_%arg120764120833%_
                                             (reverse _%arg120763120820%_)))
                                        (_%__kont121549121550%_
                                         _%arg120764120833%_))))))
                        (_%loop120759120813%_ _%target120756120807%_ '())))))
              (if (gx#stx-pair? _%__stx121546121547%_)
                  (let ((_%e120753120797%_
                         (gx#syntax-e _%__stx121546121547%_)))
                    (let ((_%tl120755120804%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120753120797%_)))
                          (_%hd120754120801%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120753120797%_))))
                      (if (gx#stx-pair/null? _%tl120755120804%_)
                          (let ((_%__splice121551121552%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120755120804%_
                                  '0)))
                            (let ((_%tl120758120810%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121551121552%_
                                      '1)))
                                  (_%target120756120807%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121551121552%_
                                      '0))))
                              (if (gx#stx-null? _%tl120758120810%_)
                                  (_%__match121569121570%_
                                   _%e120753120797%_
                                   _%hd120754120801%_
                                   _%tl120755120804%_
                                   _%__splice121551121552%_
                                   _%target120756120807%_
                                   _%tl120758120810%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120749120790%_)))))
                          (let () (declare (not safe)) (_%g120749120790%_)))))
                  (let () (declare (not safe)) (_%g120749120790%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx120881%_)
        (let* ((_%__stx121572121573%_ _%$stx120881%_)
               (_%g120886120907%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121572121573%_))))
          (let ((_%__kont121575121576%_
                 (lambda (_%g120888120972%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121668_|
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
                                     (cons (let ((__tmp121669
                                                  (lambda (_%g120987120990%_
                                                           _%g120988120993%_)
                                                    (cons _%g120987120990%_
                                                          _%g120988120993%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121669
                                              '()
                                              _%g120888120972%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121671_|
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
                (_%__kont121579121580%_
                 (lambda (_%g120901120914%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%g120885120925%_
                    (lambda ()
                      (let ((_%g120901120914%_ _%__stx121572121573%_))
                        (if (gx#identifier? _%g120901120914%_)
                            (_%__kont121579121580%_ _%g120901120914%_)
                            (let ()
                              (declare (not safe))
                              (_%g120886120907%_))))))
                   (_%__match121595121596%_
                    (lambda (_%e120889120932%_
                             _%hd120890120936%_
                             _%tl120891120939%_
                             _%__splice121577121578%_
                             _%target120892120942%_
                             _%tl120894120945%_)
                      (letrec ((_%loop120895120948%_
                                (lambda (_%hd120893120952%_
                                         _%arg120899120955%_)
                                  (if (gx#stx-pair? _%hd120893120952%_)
                                      (let ((_%e120896120958%_
                                             (gx#syntax-e _%hd120893120952%_)))
                                        (let ((_%lp-tl120898120965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120896120958%_)))
                                              (_%lp-hd120897120962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120896120958%_))))
                                          (_%loop120895120948%_
                                           _%lp-tl120898120965%_
                                           (cons _%lp-hd120897120962%_
                                                 _%arg120899120955%_))))
                                      (let ((_%arg120900120968%_
                                             (reverse _%arg120899120955%_)))
                                        (_%__kont121575121576%_
                                         _%arg120900120968%_))))))
                        (_%loop120895120948%_ _%target120892120942%_ '())))))
              (if (gx#stx-pair? _%__stx121572121573%_)
                  (let ((_%e120889120932%_
                         (gx#syntax-e _%__stx121572121573%_)))
                    (let ((_%tl120891120939%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120889120932%_)))
                          (_%hd120890120936%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120889120932%_))))
                      (if (gx#stx-pair/null? _%tl120891120939%_)
                          (let ((_%__splice121577121578%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120891120939%_
                                  '0)))
                            (let ((_%tl120894120945%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121577121578%_
                                      '1)))
                                  (_%target120892120942%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121577121578%_
                                      '0))))
                              (if (gx#stx-null? _%tl120894120945%_)
                                  (_%__match121595121596%_
                                   _%e120889120932%_
                                   _%hd120890120936%_
                                   _%tl120891120939%_
                                   _%__splice121577121578%_
                                   _%target120892120942%_
                                   _%tl120894120945%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120885120925%_)))))
                          (let () (declare (not safe)) (_%g120885120925%_)))))
                  (let () (declare (not safe)) (_%g120885120925%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx121042%_)
        (let* ((_%__stx121598121599%_ _%$stx121042%_)
               (_%g121047121068%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121598121599%_))))
          (let ((_%__kont121601121602%_
                 (lambda (_%g121049121133%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121673_|
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
                                     (cons (let ((__tmp121674
                                                  (lambda (_%g121148121151%_
                                                           _%g121149121154%_)
                                                    (cons _%g121148121151%_
                                                          _%g121149121154%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121674
                                              '()
                                              _%g121049121133%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121676_|
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
                (_%__kont121605121606%_
                 (lambda (_%g121062121075%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%g121046121086%_
                    (lambda ()
                      (let ((_%g121062121075%_ _%__stx121598121599%_))
                        (if (gx#identifier? _%g121062121075%_)
                            (_%__kont121605121606%_ _%g121062121075%_)
                            (let ()
                              (declare (not safe))
                              (_%g121047121068%_))))))
                   (_%__match121621121622%_
                    (lambda (_%e121050121093%_
                             _%hd121051121097%_
                             _%tl121052121100%_
                             _%__splice121603121604%_
                             _%target121053121103%_
                             _%tl121055121106%_)
                      (letrec ((_%loop121056121109%_
                                (lambda (_%hd121054121113%_
                                         _%arg121060121116%_)
                                  (if (gx#stx-pair? _%hd121054121113%_)
                                      (let ((_%e121057121119%_
                                             (gx#syntax-e _%hd121054121113%_)))
                                        (let ((_%lp-tl121059121126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e121057121119%_)))
                                              (_%lp-hd121058121123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e121057121119%_))))
                                          (_%loop121056121109%_
                                           _%lp-tl121059121126%_
                                           (cons _%lp-hd121058121123%_
                                                 _%arg121060121116%_))))
                                      (let ((_%arg121061121129%_
                                             (reverse _%arg121060121116%_)))
                                        (_%__kont121601121602%_
                                         _%arg121061121129%_))))))
                        (_%loop121056121109%_ _%target121053121103%_ '())))))
              (if (gx#stx-pair? _%__stx121598121599%_)
                  (let ((_%e121050121093%_
                         (gx#syntax-e _%__stx121598121599%_)))
                    (let ((_%tl121052121100%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e121050121093%_)))
                          (_%hd121051121097%_
                           (let ()
                             (declare (not safe))
                             (##car _%e121050121093%_))))
                      (if (gx#stx-pair/null? _%tl121052121100%_)
                          (let ((_%__splice121603121604%_
                                 (gx#syntax-split-splice->vector
                                  _%tl121052121100%_
                                  '0)))
                            (let ((_%tl121055121106%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121603121604%_
                                      '1)))
                                  (_%target121053121103%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121603121604%_
                                      '0))))
                              (if (gx#stx-null? _%tl121055121106%_)
                                  (_%__match121621121622%_
                                   _%e121050121093%_
                                   _%hd121051121097%_
                                   _%tl121052121100%_
                                   _%__splice121603121604%_
                                   _%target121053121103%_
                                   _%tl121055121106%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g121046121086%_)))))
                          (let () (declare (not safe)) (_%g121046121086%_)))))
                  (let () (declare (not safe)) (_%g121046121086%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx121185%_)
        (let* ((_%__stx121624121625%_ _%$stx121185%_)
               (_%g121190121211%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121624121625%_))))
          (let ((_%__kont121627121628%_
                 (lambda (_%g121192121276%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121678_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g121680_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp121681
                                                  (lambda (_%g121291121294%_
                                                           _%g121292121297%_)
                                                    (cons _%g121291121294%_
                                                          _%g121292121297%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121681
                                              '()
                                              _%g121192121276%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121683_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g121680_|
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
                            |[1]#_g121680_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont121631121632%_
                 (lambda (_%g121205121218%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%g121189121229%_
                    (lambda ()
                      (let ((_%g121205121218%_ _%__stx121624121625%_))
                        (if (gx#identifier? _%g121205121218%_)
                            (_%__kont121631121632%_ _%g121205121218%_)
                            (let ()
                              (declare (not safe))
                              (_%g121190121211%_))))))
                   (_%__match121647121648%_
                    (lambda (_%e121193121236%_
                             _%hd121194121240%_
                             _%tl121195121243%_
                             _%__splice121629121630%_
                             _%target121196121246%_
                             _%tl121198121249%_)
                      (letrec ((_%loop121199121252%_
                                (lambda (_%hd121197121256%_
                                         _%arg121203121259%_)
                                  (if (gx#stx-pair? _%hd121197121256%_)
                                      (let ((_%e121200121262%_
                                             (gx#syntax-e _%hd121197121256%_)))
                                        (let ((_%lp-tl121202121269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e121200121262%_)))
                                              (_%lp-hd121201121266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e121200121262%_))))
                                          (_%loop121199121252%_
                                           _%lp-tl121202121269%_
                                           (cons _%lp-hd121201121266%_
                                                 _%arg121203121259%_))))
                                      (let ((_%arg121204121272%_
                                             (reverse _%arg121203121259%_)))
                                        (_%__kont121627121628%_
                                         _%arg121204121272%_))))))
                        (_%loop121199121252%_ _%target121196121246%_ '())))))
              (if (gx#stx-pair? _%__stx121624121625%_)
                  (let ((_%e121193121236%_
                         (gx#syntax-e _%__stx121624121625%_)))
                    (let ((_%tl121195121243%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e121193121236%_)))
                          (_%hd121194121240%_
                           (let ()
                             (declare (not safe))
                             (##car _%e121193121236%_))))
                      (if (gx#stx-pair/null? _%tl121195121243%_)
                          (let ((_%__splice121629121630%_
                                 (gx#syntax-split-splice->vector
                                  _%tl121195121243%_
                                  '0)))
                            (let ((_%tl121198121249%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121629121630%_
                                      '1)))
                                  (_%target121196121246%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121629121630%_
                                      '0))))
                              (if (gx#stx-null? _%tl121198121249%_)
                                  (_%__match121647121648%_
                                   _%e121193121236%_
                                   _%hd121194121240%_
                                   _%tl121195121243%_
                                   _%__splice121629121630%_
                                   _%target121196121246%_
                                   _%tl121198121249%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g121189121229%_)))))
                          (let () (declare (not safe)) (_%g121189121229%_)))))
                  (let () (declare (not safe)) (_%g121189121229%_))))))))))
