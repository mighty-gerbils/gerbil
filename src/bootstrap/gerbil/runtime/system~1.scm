(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g118100_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id117228%_)
       (arg117203 . _%arg117203117261%_)
       (arg . _%arg117291%_)
       (arg117204 . _%arg117204117275%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g118101_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g118100_|)))
  (define |[1]#_g118102_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value117307%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118103_|
    (##structure
     gx#syntax-quote::t
     '_%new-value117307%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g118102_|)))
  (define |[1]#_g118105_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118106_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g118105_|)))
  (define |[1]#_g118107_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id117363%_)
       (arg117340 . _%arg117340117410%_)
       (arg . _%arg117426%_)
       (arg117339 . _%arg117339117396%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g118108_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g118107_|)))
  (define |[1]#_g118110_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118111_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g118110_|)))
  (define |[1]#_g118112_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id117524%_)
       (arg117501 . _%arg117501117571%_)
       (arg . _%arg117587%_)
       (arg117500 . _%arg117500117557%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g118113_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g118112_|)))
  (define |[1]#_g118115_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118116_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g118115_|)))
  (define |[1]#_g118117_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id117667%_)
       (arg117644 . _%arg117644117714%_)
       (arg . _%arg117730%_)
       (arg117643 . _%arg117643117700%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g118118_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g118117_|)))
  (define |[1]#_g118119_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value117746%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118120_|
    (##structure
     gx#syntax-quote::t
     '_%new-value117746%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g118119_|)))
  (define |[1]#_g118122_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118123_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g118122_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx117185%_)
        (let* ((_%__stx117986117987%_ _%$stx117185%_)
               (_%g117190117211%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117986117987%_))))
          (let ((_%__kont117989117990%_
                 (lambda (_%g117192117277%_)
                   (cons (gx#datum->syntax
                          |[1]#_g118101_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g118103_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp118104
                                                  (lambda (_%g117292117295%_
                                                           _%g117293117298%_)
                                                    (cons _%g117292117295%_
                                                          _%g117293117298%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp118104
                                              '()
                                              _%g117192117277%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g118106_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g118103_|
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
                            |[1]#_g118103_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont117993117994%_
                 (lambda (_%g117205117218%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%g117189117230%_
                    (lambda ()
                      (let ((_%g117205117218%_ _%__stx117986117987%_))
                        (if (gx#identifier? _%g117205117218%_)
                            (_%__kont117993117994%_ _%g117205117218%_)
                            (let ()
                              (declare (not safe))
                              (_%g117190117211%_))))))
                   (_%__match118009118010%_
                    (lambda (_%e117193117237%_
                             _%hd117194117241%_
                             _%tl117195117244%_
                             _%__splice117991117992%_
                             _%target117196117247%_
                             _%tl117198117250%_)
                      (letrec ((_%loop117199117253%_
                                (lambda (_%hd117197117257%_
                                         _%arg117203117260%_)
                                  (if (gx#stx-pair? _%hd117197117257%_)
                                      (let ((_%e117200117263%_
                                             (gx#syntax-e _%hd117197117257%_)))
                                        (let ((_%lp-tl117202117270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e117200117263%_)))
                                              (_%lp-hd117201117267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e117200117263%_))))
                                          (_%loop117199117253%_
                                           _%lp-tl117202117270%_
                                           (cons _%lp-hd117201117267%_
                                                 _%arg117203117260%_))))
                                      (let ((_%arg117204117273%_
                                             (reverse _%arg117203117260%_)))
                                        (_%__kont117989117990%_
                                         _%arg117204117273%_))))))
                        (_%loop117199117253%_ _%target117196117247%_ '())))))
              (if (gx#stx-pair? _%__stx117986117987%_)
                  (let ((_%e117193117237%_
                         (gx#syntax-e _%__stx117986117987%_)))
                    (let ((_%tl117195117244%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e117193117237%_)))
                          (_%hd117194117241%_
                           (let ()
                             (declare (not safe))
                             (##car _%e117193117237%_))))
                      (if (gx#stx-pair/null? _%tl117195117244%_)
                          (let ((_%__splice117991117992%_
                                 (gx#syntax-split-splice->vector
                                  _%tl117195117244%_
                                  '0)))
                            (let ((_%tl117198117250%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117991117992%_
                                      '1)))
                                  (_%target117196117247%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117991117992%_
                                      '0))))
                              (if (gx#stx-null? _%tl117198117250%_)
                                  (_%__match118009118010%_
                                   _%e117193117237%_
                                   _%hd117194117241%_
                                   _%tl117195117244%_
                                   _%__splice117991117992%_
                                   _%target117196117247%_
                                   _%tl117198117250%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g117189117230%_)))))
                          (let () (declare (not safe)) (_%g117189117230%_)))))
                  (let () (declare (not safe)) (_%g117189117230%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx117321%_)
        (let* ((_%__stx118012118013%_ _%$stx117321%_)
               (_%g117326117347%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx118012118013%_))))
          (let ((_%__kont118015118016%_
                 (lambda (_%g117328117412%_)
                   (cons (gx#datum->syntax
                          |[1]#_g118108_|
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
                                     (cons (let ((__tmp118109
                                                  (lambda (_%g117427117430%_
                                                           _%g117428117433%_)
                                                    (cons _%g117427117430%_
                                                          _%g117428117433%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp118109
                                              '()
                                              _%g117328117412%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g118111_|
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
                (_%__kont118019118020%_
                 (lambda (_%g117341117354%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%g117325117365%_
                    (lambda ()
                      (let ((_%g117341117354%_ _%__stx118012118013%_))
                        (if (gx#identifier? _%g117341117354%_)
                            (_%__kont118019118020%_ _%g117341117354%_)
                            (let ()
                              (declare (not safe))
                              (_%g117326117347%_))))))
                   (_%__match118035118036%_
                    (lambda (_%e117329117372%_
                             _%hd117330117376%_
                             _%tl117331117379%_
                             _%__splice118017118018%_
                             _%target117332117382%_
                             _%tl117334117385%_)
                      (letrec ((_%loop117335117388%_
                                (lambda (_%hd117333117392%_
                                         _%arg117339117395%_)
                                  (if (gx#stx-pair? _%hd117333117392%_)
                                      (let ((_%e117336117398%_
                                             (gx#syntax-e _%hd117333117392%_)))
                                        (let ((_%lp-tl117338117405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e117336117398%_)))
                                              (_%lp-hd117337117402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e117336117398%_))))
                                          (_%loop117335117388%_
                                           _%lp-tl117338117405%_
                                           (cons _%lp-hd117337117402%_
                                                 _%arg117339117395%_))))
                                      (let ((_%arg117340117408%_
                                             (reverse _%arg117339117395%_)))
                                        (_%__kont118015118016%_
                                         _%arg117340117408%_))))))
                        (_%loop117335117388%_ _%target117332117382%_ '())))))
              (if (gx#stx-pair? _%__stx118012118013%_)
                  (let ((_%e117329117372%_
                         (gx#syntax-e _%__stx118012118013%_)))
                    (let ((_%tl117331117379%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e117329117372%_)))
                          (_%hd117330117376%_
                           (let ()
                             (declare (not safe))
                             (##car _%e117329117372%_))))
                      (if (gx#stx-pair/null? _%tl117331117379%_)
                          (let ((_%__splice118017118018%_
                                 (gx#syntax-split-splice->vector
                                  _%tl117331117379%_
                                  '0)))
                            (let ((_%tl117334117385%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118017118018%_
                                      '1)))
                                  (_%target117332117382%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118017118018%_
                                      '0))))
                              (if (gx#stx-null? _%tl117334117385%_)
                                  (_%__match118035118036%_
                                   _%e117329117372%_
                                   _%hd117330117376%_
                                   _%tl117331117379%_
                                   _%__splice118017118018%_
                                   _%target117332117382%_
                                   _%tl117334117385%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g117325117365%_)))))
                          (let () (declare (not safe)) (_%g117325117365%_)))))
                  (let () (declare (not safe)) (_%g117325117365%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx117482%_)
        (let* ((_%__stx118038118039%_ _%$stx117482%_)
               (_%g117487117508%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx118038118039%_))))
          (let ((_%__kont118041118042%_
                 (lambda (_%g117489117573%_)
                   (cons (gx#datum->syntax
                          |[1]#_g118113_|
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
                                     (cons (let ((__tmp118114
                                                  (lambda (_%g117588117591%_
                                                           _%g117589117594%_)
                                                    (cons _%g117588117591%_
                                                          _%g117589117594%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp118114
                                              '()
                                              _%g117489117573%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g118116_|
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
                (_%__kont118045118046%_
                 (lambda (_%g117502117515%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%g117486117526%_
                    (lambda ()
                      (let ((_%g117502117515%_ _%__stx118038118039%_))
                        (if (gx#identifier? _%g117502117515%_)
                            (_%__kont118045118046%_ _%g117502117515%_)
                            (let ()
                              (declare (not safe))
                              (_%g117487117508%_))))))
                   (_%__match118061118062%_
                    (lambda (_%e117490117533%_
                             _%hd117491117537%_
                             _%tl117492117540%_
                             _%__splice118043118044%_
                             _%target117493117543%_
                             _%tl117495117546%_)
                      (letrec ((_%loop117496117549%_
                                (lambda (_%hd117494117553%_
                                         _%arg117500117556%_)
                                  (if (gx#stx-pair? _%hd117494117553%_)
                                      (let ((_%e117497117559%_
                                             (gx#syntax-e _%hd117494117553%_)))
                                        (let ((_%lp-tl117499117566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e117497117559%_)))
                                              (_%lp-hd117498117563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e117497117559%_))))
                                          (_%loop117496117549%_
                                           _%lp-tl117499117566%_
                                           (cons _%lp-hd117498117563%_
                                                 _%arg117500117556%_))))
                                      (let ((_%arg117501117569%_
                                             (reverse _%arg117500117556%_)))
                                        (_%__kont118041118042%_
                                         _%arg117501117569%_))))))
                        (_%loop117496117549%_ _%target117493117543%_ '())))))
              (if (gx#stx-pair? _%__stx118038118039%_)
                  (let ((_%e117490117533%_
                         (gx#syntax-e _%__stx118038118039%_)))
                    (let ((_%tl117492117540%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e117490117533%_)))
                          (_%hd117491117537%_
                           (let ()
                             (declare (not safe))
                             (##car _%e117490117533%_))))
                      (if (gx#stx-pair/null? _%tl117492117540%_)
                          (let ((_%__splice118043118044%_
                                 (gx#syntax-split-splice->vector
                                  _%tl117492117540%_
                                  '0)))
                            (let ((_%tl117495117546%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118043118044%_
                                      '1)))
                                  (_%target117493117543%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118043118044%_
                                      '0))))
                              (if (gx#stx-null? _%tl117495117546%_)
                                  (_%__match118061118062%_
                                   _%e117490117533%_
                                   _%hd117491117537%_
                                   _%tl117492117540%_
                                   _%__splice118043118044%_
                                   _%target117493117543%_
                                   _%tl117495117546%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g117486117526%_)))))
                          (let () (declare (not safe)) (_%g117486117526%_)))))
                  (let () (declare (not safe)) (_%g117486117526%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx117625%_)
        (let* ((_%__stx118064118065%_ _%$stx117625%_)
               (_%g117630117651%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx118064118065%_))))
          (let ((_%__kont118067118068%_
                 (lambda (_%g117632117716%_)
                   (cons (gx#datum->syntax
                          |[1]#_g118118_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g118120_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp118121
                                                  (lambda (_%g117731117734%_
                                                           _%g117732117737%_)
                                                    (cons _%g117731117734%_
                                                          _%g117732117737%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp118121
                                              '()
                                              _%g117632117716%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g118123_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g118120_|
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
                            |[1]#_g118120_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont118071118072%_
                 (lambda (_%g117645117658%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%g117629117669%_
                    (lambda ()
                      (let ((_%g117645117658%_ _%__stx118064118065%_))
                        (if (gx#identifier? _%g117645117658%_)
                            (_%__kont118071118072%_ _%g117645117658%_)
                            (let ()
                              (declare (not safe))
                              (_%g117630117651%_))))))
                   (_%__match118087118088%_
                    (lambda (_%e117633117676%_
                             _%hd117634117680%_
                             _%tl117635117683%_
                             _%__splice118069118070%_
                             _%target117636117686%_
                             _%tl117638117689%_)
                      (letrec ((_%loop117639117692%_
                                (lambda (_%hd117637117696%_
                                         _%arg117643117699%_)
                                  (if (gx#stx-pair? _%hd117637117696%_)
                                      (let ((_%e117640117702%_
                                             (gx#syntax-e _%hd117637117696%_)))
                                        (let ((_%lp-tl117642117709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e117640117702%_)))
                                              (_%lp-hd117641117706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e117640117702%_))))
                                          (_%loop117639117692%_
                                           _%lp-tl117642117709%_
                                           (cons _%lp-hd117641117706%_
                                                 _%arg117643117699%_))))
                                      (let ((_%arg117644117712%_
                                             (reverse _%arg117643117699%_)))
                                        (_%__kont118067118068%_
                                         _%arg117644117712%_))))))
                        (_%loop117639117692%_ _%target117636117686%_ '())))))
              (if (gx#stx-pair? _%__stx118064118065%_)
                  (let ((_%e117633117676%_
                         (gx#syntax-e _%__stx118064118065%_)))
                    (let ((_%tl117635117683%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e117633117676%_)))
                          (_%hd117634117680%_
                           (let ()
                             (declare (not safe))
                             (##car _%e117633117676%_))))
                      (if (gx#stx-pair/null? _%tl117635117683%_)
                          (let ((_%__splice118069118070%_
                                 (gx#syntax-split-splice->vector
                                  _%tl117635117683%_
                                  '0)))
                            (let ((_%tl117638117689%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118069118070%_
                                      '1)))
                                  (_%target117636117686%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice118069118070%_
                                      '0))))
                              (if (gx#stx-null? _%tl117638117689%_)
                                  (_%__match118087118088%_
                                   _%e117633117676%_
                                   _%hd117634117680%_
                                   _%tl117635117683%_
                                   _%__splice118069118070%_
                                   _%target117636117686%_
                                   _%tl117638117689%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g117629117669%_)))))
                          (let () (declare (not safe)) (_%g117629117669%_)))))
                  (let () (declare (not safe)) (_%g117629117669%_))))))))))
