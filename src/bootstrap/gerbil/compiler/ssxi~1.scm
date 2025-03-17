(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g210466_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210473_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210475_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210477_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210479_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210481_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210493_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210495_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210497_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210499_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210501_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx203884%_)
        (let* ((_%g203888203906%_
                (lambda (_%g203889203902%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203889203902%_))))
               (_%g203887203961%_
                (lambda (_%g203889203910%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203889203910%_))
                      (let ((_%e203892203913%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203889203910%_))))
                        (let ((_%hd203893203917%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203892203913%_)))
                              (_%tl203894203920%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203892203913%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203894203920%_))
                              (let ((_%e203895203923%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203894203920%_))))
                                (let ((_%hd203896203927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203895203923%_)))
                                      (_%tl203897203930%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203895203923%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203897203930%_))
                                      (let ((_%e203898203933%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203897203930%_))))
                                        (let ((_%hd203899203937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203898203933%_)))
                                              (_%tl203900203940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203898203933%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203900203940%_))
                                              ((lambda (_%L203943%_
                                                        _%L203945%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L203945%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L203945%_ '()))
                         (cons _%L203943%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203888203906%_
                                                      _%g203889203910%_)))
                                               _%hd203899203937%_
                                               _%hd203896203927%_)
                                              (_%g203888203906%_
                                               _%g203889203910%_))))
                                      (_%g203888203906%_ _%g203889203910%_))))
                              (_%g203888203906%_ _%g203889203910%_))))
                      (_%g203888203906%_ _%g203889203910%_)))))
          (_%g203887203961%_ _%$stx203884%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx203965%_)
        (let* ((_%g203969203987%_
                (lambda (_%g203970203983%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203970203983%_))))
               (_%g203968204042%_
                (lambda (_%g203970203991%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203970203991%_))
                      (let ((_%e203973203994%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203970203991%_))))
                        (let ((_%hd203974203998%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203973203994%_)))
                              (_%tl203975204001%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203973203994%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203975204001%_))
                              (let ((_%e203976204004%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203975204001%_))))
                                (let ((_%hd203977204008%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203976204004%_)))
                                      (_%tl203978204011%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203976204004%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203978204011%_))
                                      (let ((_%e203979204014%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203978204011%_))))
                                        (let ((_%hd203980204018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203979204014%_)))
                                              (_%tl203981204021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203979204014%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203981204021%_))
                                              ((lambda (_%L204024%_
                                                        _%L204026%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L204026%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L204026%_ '()))
                         (cons _%L204024%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203969203987%_
                                                      _%g203970203991%_)))
                                               _%hd203980204018%_
                                               _%hd203977204008%_)
                                              (_%g203969203987%_
                                               _%g203970203991%_))))
                                      (_%g203969203987%_ _%g203970203991%_))))
                              (_%g203969203987%_ _%g203970203991%_))))
                      (_%g203969203987%_ _%g203970203991%_)))))
          (_%g203968204042%_ _%$stx203965%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx204046%_)
        (let* ((_%g204050204079%_
                (lambda (_%g204051204075%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204051204075%_))))
               (_%g204049204179%_
                (lambda (_%g204051204083%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204051204083%_))
                      (let ((_%e204054204086%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204051204083%_))))
                        (let ((_%hd204055204090%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204054204086%_)))
                              (_%tl204056204093%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204054204086%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204056204093%_))
                              (let ((_g210444_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204056204093%_
                                        '0))))
                                (begin
                                  (let ((_g210445_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210444_)
                                               (##values-length _g210444_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210445_ 2)))
                                        (error "Context expects 2 values"
                                               _g210445_)))
                                  (let ((_%target204057204096%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210444_ 0)))
                                        (_%tl204059204099%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210444_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204059204099%_))
                                        (letrec ((_%loop204060204102%_
                                                  (lambda (_%hd204058204106%_
                                                           _%type204064204109%_
                                                           _%symbol204065204111%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204058204106%_))
                                                        (let ((_%e204061204114%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204058204106%_))))
                  (let ((_%lp-hd204062204118%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204061204114%_)))
                        (_%lp-tl204063204121%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204061204114%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204062204118%_))
                        (let ((_%e204068204124%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd204062204118%_))))
                          (let ((_%hd204069204128%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204068204124%_)))
                                (_%tl204070204131%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204068204124%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204070204131%_))
                                (let ((_%e204071204134%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204070204131%_))))
                                  (let ((_%hd204072204138%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204071204134%_)))
                                        (_%tl204073204141%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204071204134%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204073204141%_))
                                        (_%loop204060204102%_
                                         _%lp-tl204063204121%_
                                         (cons _%hd204072204138%_
                                               _%type204064204109%_)
                                         (cons _%hd204069204128%_
                                               _%symbol204065204111%_))
                                        (_%g204050204079%_
                                         _%g204051204083%_))))
                                (_%g204050204079%_ _%g204051204083%_))))
                        (_%g204050204079%_ _%g204051204083%_))))
                (let ((_%type204066204144%_ (reverse _%type204064204109%_))
                      (_%symbol204067204147%_
                       (reverse _%symbol204065204111%_)))
                  ((lambda (_%L204150%_ _%L204152%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L204150%_
                                _%L204152%_))
                             (let ((__tmp210446
                                    (lambda (_%g204167204171%_
                                             _%g204168204174%_
                                             _%g204169204176%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g204168204174%_
                                                        (cons _%g204167204171%_
                                                              '())))
                                            _%g204169204176%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp210446
                                '()
                                _%L204150%_
                                _%L204152%_)))))
                   _%type204066204144%_
                   _%symbol204067204147%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204060204102%_
                                           _%target204057204096%_
                                           '()
                                           '()))
                                        (_%g204050204079%_
                                         _%g204051204083%_)))))
                              (_%g204050204079%_ _%g204051204083%_))))
                      (_%g204050204079%_ _%g204051204083%_)))))
          (_%g204049204179%_ _%$stx204046%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx204184%_)
        (let* ((_%__stx209755209756%_ _%$stx204184%_)
               (_%g204189204231%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209755209756%_)))))
          (let ((_%__kont209758209759%_
                 (lambda (_%L204359%_ _%L204361%_ _%L204362%_ _%L204363%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204363%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204362%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L204361%_ '()))
                                           (cons _%L204359%_ '())))))))
                (_%__kont209760209761%_
                 (lambda (_%L204278%_ _%L204280%_ _%L204281%_ _%L204282%_)
                   (cons _%L204282%_
                         (cons _%L204281%_
                               (cons _%L204280%_
                                     (cons _%L204278%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match209794209795%_
                   (lambda (_%e204195204309%_
                            _%hd204196204313%_
                            _%tl204197204316%_
                            _%e204198204319%_
                            _%hd204199204323%_
                            _%tl204200204326%_
                            _%e204201204329%_
                            _%hd204202204333%_
                            _%tl204203204336%_
                            _%e204204204339%_
                            _%hd204205204343%_
                            _%tl204206204346%_
                            _%e204207204349%_
                            _%hd204208204353%_
                            _%tl204209204356%_)
                     (let ((_%L204359%_ _%hd204208204353%_)
                           (_%L204361%_ _%hd204205204343%_)
                           (_%L204362%_ _%hd204202204333%_)
                           (_%L204363%_ _%hd204199204323%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204363%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204362%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204361%_)))
                           (_%__kont209758209759%_
                            _%L204359%_
                            _%L204361%_
                            _%L204362%_
                            _%L204363%_)
                           (let ()
                             (declare (not safe))
                             (_%g204189204231%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209755209756%_))
                  (let ((_%e204195204309%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209755209756%_))))
                    (let ((_%tl204197204316%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204195204309%_)))
                          (_%hd204196204313%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204195204309%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204197204316%_))
                          (let ((_%e204198204319%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl204197204316%_))))
                            (let ((_%tl204200204326%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204198204319%_)))
                                  (_%hd204199204323%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204198204319%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204200204326%_))
                                  (let ((_%e204201204329%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl204200204326%_))))
                                    (let ((_%tl204203204336%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204201204329%_)))
                                          (_%hd204202204333%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204201204329%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204203204336%_))
                                          (let ((_%e204204204339%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl204203204336%_))))
                                            (let ((_%tl204206204346%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204204204339%_)))
                                                  (_%hd204205204343%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204204204339%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204206204346%_))
                                                  (let ((_%e204207204349%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204206204346%_))))
                                                    (let ((_%tl204209204356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204207204349%_)))
                                                          (_%hd204208204353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204207204349%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204209204356%_))
                                                          (_%__match209794209795%_
                                                           _%e204195204309%_
                                                           _%hd204196204313%_
                                                           _%tl204197204316%_
                                                           _%e204198204319%_
                                                           _%hd204199204323%_
                                                           _%tl204200204326%_
                                                           _%e204201204329%_
                                                           _%hd204202204333%_
                                                           _%tl204203204336%_
                                                           _%e204204204339%_
                                                           _%hd204205204343%_
                                                           _%tl204206204346%_
                                                           _%e204207204349%_
                                                           _%hd204208204353%_
                                                           _%tl204209204356%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204189204231%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204206204346%_))
                                                      (_%__kont209760209761%_
                                                       _%hd204205204343%_
                                                       _%hd204202204333%_
                                                       _%hd204199204323%_
                                                       _%hd204196204313%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204189204231%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204189204231%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204189204231%_)))))
                          (let () (declare (not safe)) (_%g204189204231%_)))))
                  (let () (declare (not safe)) (_%g204189204231%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx204388%_)
        (let* ((_%g204392204427%_
                (lambda (_%g204393204423%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204393204423%_))))
               (_%g204391204546%_
                (lambda (_%g204393204431%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204393204431%_))
                      (let ((_%e204397204434%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204393204431%_))))
                        (let ((_%hd204398204438%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204397204434%_)))
                              (_%tl204399204441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204397204434%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204399204441%_))
                              (let ((_g210447_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204399204441%_
                                        '0))))
                                (begin
                                  (let ((_g210448_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210447_)
                                               (##values-length _g210447_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210448_ 2)))
                                        (error "Context expects 2 values"
                                               _g210448_)))
                                  (let ((_%target204400204444%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210447_ 0)))
                                        (_%tl204402204447%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210447_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204402204447%_))
                                        (letrec ((_%loop204403204450%_
                                                  (lambda (_%hd204401204454%_
                                                           _%symbol204407204457%_
                                                           _%method204408204459%_
                                                           _%type-t204409204461%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204401204454%_))
                                                        (let ((_%e204404204464%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204401204454%_))))
                  (let ((_%lp-hd204405204468%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204404204464%_)))
                        (_%lp-tl204406204471%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204404204464%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204405204468%_))
                        (let ((_%e204413204474%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd204405204468%_))))
                          (let ((_%hd204414204478%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204413204474%_)))
                                (_%tl204415204481%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204413204474%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204415204481%_))
                                (let ((_%e204416204484%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204415204481%_))))
                                  (let ((_%hd204417204488%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204416204484%_)))
                                        (_%tl204418204491%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204416204484%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204418204491%_))
                                        (let ((_%e204419204494%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl204418204491%_))))
                                          (let ((_%hd204420204498%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204419204494%_)))
                                                (_%tl204421204501%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204419204494%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204421204501%_))
                                                (_%loop204403204450%_
                                                 _%lp-tl204406204471%_
                                                 (cons _%hd204420204498%_
                                                       _%symbol204407204457%_)
                                                 (cons _%hd204417204488%_
                                                       _%method204408204459%_)
                                                 (cons _%hd204414204478%_
                                                       _%type-t204409204461%_))
                                                (_%g204392204427%_
                                                 _%g204393204431%_))))
                                        (_%g204392204427%_
                                         _%g204393204431%_))))
                                (_%g204392204427%_ _%g204393204431%_))))
                        (_%g204392204427%_ _%g204393204431%_))))
                (let ((_%symbol204410204504%_ (reverse _%symbol204407204457%_))
                      (_%method204411204507%_ (reverse _%method204408204459%_))
                      (_%type-t204412204509%_
                       (reverse _%type-t204409204461%_)))
                  ((lambda (_%L204512%_ _%L204514%_ _%L204515%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L204512%_
                                _%L204514%_
                                _%L204515%_))
                             (let ((__tmp210449
                                    (lambda (_%g204531204536%_
                                             _%g204532204539%_
                                             _%g204533204541%_
                                             _%g204534204543%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g204533204541%_
                                                        (cons _%g204532204539%_
                                                              (cons _%g204531204536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g204534204543%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp210449
                                '()
                                _%L204512%_
                                _%L204514%_
                                _%L204515%_)))))
                   _%symbol204410204504%_
                   _%method204411204507%_
                   _%type-t204412204509%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204403204450%_
                                           _%target204400204444%_
                                           '()
                                           '()
                                           '()))
                                        (_%g204392204427%_
                                         _%g204393204431%_)))))
                              (_%g204392204427%_ _%g204393204431%_))))
                      (_%g204392204427%_ _%g204393204431%_)))))
          (_%g204391204546%_ _%$stx204388%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx204551%_)
        (let* ((_%g204555204588%_
                (lambda (_%g204556204584%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204556204584%_))))
               (_%g204554204702%_
                (lambda (_%g204556204592%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204556204592%_))
                      (let ((_%e204560204595%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204556204592%_))))
                        (let ((_%hd204561204599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204560204595%_)))
                              (_%tl204562204602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204560204595%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204562204602%_))
                              (let ((_%e204563204605%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204562204602%_))))
                                (let ((_%hd204564204609%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204563204605%_)))
                                      (_%tl204565204612%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204563204605%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204565204612%_))
                                      (let ((_g210450_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl204565204612%_
                                                '0))))
                                        (begin
                                          (let ((_g210451_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210450_)
                                                       (##values-length
                                                        _g210450_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210451_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210451_)))
                                          (let ((_%target204566204615%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210450_ 0)))
                                                (_%tl204568204618%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210450_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204568204618%_))
                                                (letrec ((_%loop204569204621%_
                                                          (lambda (_%hd204567204625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol204573204628%_
                           _%method204574204630%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204567204625%_))
                        (let ((_%e204570204633%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd204567204625%_))))
                          (let ((_%lp-hd204571204637%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204570204633%_)))
                                (_%lp-tl204572204640%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204570204633%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd204571204637%_))
                                (let ((_%e204577204643%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd204571204637%_))))
                                  (let ((_%hd204578204647%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204577204643%_)))
                                        (_%tl204579204650%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204577204643%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204579204650%_))
                                        (let ((_%e204580204653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl204579204650%_))))
                                          (let ((_%hd204581204657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204580204653%_)))
                                                (_%tl204582204660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204580204653%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204582204660%_))
                                                (_%loop204569204621%_
                                                 _%lp-tl204572204640%_
                                                 (cons _%hd204581204657%_
                                                       _%symbol204573204628%_)
                                                 (cons _%hd204578204647%_
                                                       _%method204574204630%_))
                                                (_%g204555204588%_
                                                 _%g204556204592%_))))
                                        (_%g204555204588%_
                                         _%g204556204592%_))))
                                (_%g204555204588%_ _%g204556204592%_))))
                        (let ((_%symbol204575204663%_
                               (reverse _%symbol204573204628%_))
                              (_%method204576204666%_
                               (reverse _%method204574204630%_)))
                          ((lambda (_%L204669%_ _%L204671%_ _%L204672%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L204669%_
                                        _%L204671%_))
                                     (let ((__tmp210452
                                            (lambda (_%g204690204694%_
                                                     _%g204691204697%_
                                                     _%g204692204699%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L204672%_
                                                                (cons _%g204691204697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g204690204694%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g204692204699%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp210452
                                        '()
                                        _%L204669%_
                                        _%L204671%_)))))
                           _%symbol204575204663%_
                           _%method204576204666%_
                           _%hd204564204609%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop204569204621%_
                                                   _%target204566204615%_
                                                   '()
                                                   '()))
                                                (_%g204555204588%_
                                                 _%g204556204592%_)))))
                                      (_%g204555204588%_ _%g204556204592%_))))
                              (_%g204555204588%_ _%g204556204592%_))))
                      (_%g204555204588%_ _%g204556204592%_)))))
          (_%g204554204702%_ _%$stx204551%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx204707%_)
        (let* ((_%g204711204725%_
                (lambda (_%g204712204721%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204712204721%_))))
               (_%g204710204766%_
                (lambda (_%g204712204729%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204712204729%_))
                      (let ((_%e204714204732%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204712204729%_))))
                        (let ((_%hd204715204736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204714204732%_)))
                              (_%tl204716204739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204714204732%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204716204739%_))
                              (let ((_%e204717204742%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204716204739%_))))
                                (let ((_%hd204718204746%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204717204742%_)))
                                      (_%tl204719204749%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204717204742%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204719204749%_))
                                      ((lambda (_%L204752%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L204752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204718204746%_)
                                      (_%g204711204725%_ _%g204712204729%_))))
                              (_%g204711204725%_ _%g204712204729%_))))
                      (_%g204711204725%_ _%g204712204729%_)))))
          (_%g204710204766%_ _%$stx204707%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx204770%_)
        (let* ((_%g204774204828%_
                (lambda (_%g204775204824%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204775204824%_))))
               (_%g204773205009%_
                (lambda (_%g204775204832%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204775204832%_))
                      (let ((_%e204787204835%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204775204832%_))))
                        (let ((_%hd204788204839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204787204835%_)))
                              (_%tl204789204842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204787204835%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204789204842%_))
                              (let ((_%e204790204845%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204789204842%_))))
                                (let ((_%hd204791204849%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204790204845%_)))
                                      (_%tl204792204852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204790204845%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204792204852%_))
                                      (let ((_%e204793204855%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204792204852%_))))
                                        (let ((_%hd204794204859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204793204855%_)))
                                              (_%tl204795204862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204793204855%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204795204862%_))
                                              (let ((_%e204796204865%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204795204862%_))))
                                                (let ((_%hd204797204869%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204796204865%_)))
                                                      (_%tl204798204872%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204796204865%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204798204872%_))
                                                      (let ((_%e204799204875%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl204798204872%_))))
                (let ((_%hd204800204879%_
                       (let () (declare (not safe)) (##car _%e204799204875%_)))
                      (_%tl204801204882%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e204799204875%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204801204882%_))
                      (let ((_%e204802204885%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204801204882%_))))
                        (let ((_%hd204803204889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204802204885%_)))
                              (_%tl204804204892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204802204885%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204804204892%_))
                              (let ((_%e204805204895%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204804204892%_))))
                                (let ((_%hd204806204899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204805204895%_)))
                                      (_%tl204807204902%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204805204895%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204807204902%_))
                                      (let ((_%e204808204905%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204807204902%_))))
                                        (let ((_%hd204809204909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204808204905%_)))
                                              (_%tl204810204912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204808204905%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204810204912%_))
                                              (let ((_%e204811204915%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204810204912%_))))
                                                (let ((_%hd204812204919%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204811204915%_)))
                                                      (_%tl204813204922%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204811204915%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204813204922%_))
                                                      (let ((_%e204814204925%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl204813204922%_))))
                (let ((_%hd204815204929%_
                       (let () (declare (not safe)) (##car _%e204814204925%_)))
                      (_%tl204816204932%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e204814204925%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204816204932%_))
                      (let ((_%e204817204935%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204816204932%_))))
                        (let ((_%hd204818204939%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204817204935%_)))
                              (_%tl204819204942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204817204935%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204819204942%_))
                              (let ((_%e204820204945%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204819204942%_))))
                                (let ((_%hd204821204949%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204820204945%_)))
                                      (_%tl204822204952%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204820204945%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204822204952%_))
                                      ((lambda (_%L204955%_
                                                _%L204957%_
                                                _%L204958%_
                                                _%L204959%_
                                                _%L204960%_
                                                _%L204961%_
                                                _%L204962%_
                                                _%L204963%_
                                                _%L204964%_
                                                _%L204965%_
                                                _%L204966%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L204966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L204965%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L204964%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204963%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204962%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L204961%_ '()))
                                           (cons _%L204960%_
                                                 (cons _%L204959%_
                                                       (cons _%L204958%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204957%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L204955%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd204821204949%_
                                       _%hd204818204939%_
                                       _%hd204815204929%_
                                       _%hd204812204919%_
                                       _%hd204809204909%_
                                       _%hd204806204899%_
                                       _%hd204803204889%_
                                       _%hd204800204879%_
                                       _%hd204797204869%_
                                       _%hd204794204859%_
                                       _%hd204791204849%_)
                                      (_%g204774204828%_ _%g204775204832%_))))
                              (_%g204774204828%_ _%g204775204832%_))))
                      (_%g204774204828%_ _%g204775204832%_))))
              (_%g204774204828%_ _%g204775204832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204774204828%_
                                               _%g204775204832%_))))
                                      (_%g204774204828%_ _%g204775204832%_))))
                              (_%g204774204828%_ _%g204775204832%_))))
                      (_%g204774204828%_ _%g204775204832%_))))
              (_%g204774204828%_ _%g204775204832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204774204828%_
                                               _%g204775204832%_))))
                                      (_%g204774204828%_ _%g204775204832%_))))
                              (_%g204774204828%_ _%g204775204832%_))))
                      (_%g204774204828%_ _%g204775204832%_)))))
          (_%g204773205009%_ _%$stx204770%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx205013%_)
        (let* ((_%g205017205031%_
                (lambda (_%g205018205027%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205018205027%_))))
               (_%g205016205072%_
                (lambda (_%g205018205035%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205018205035%_))
                      (let ((_%e205020205038%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205018205035%_))))
                        (let ((_%hd205021205042%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205020205038%_)))
                              (_%tl205022205045%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205020205038%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205022205045%_))
                              (let ((_%e205023205048%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205022205045%_))))
                                (let ((_%hd205024205052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205023205048%_)))
                                      (_%tl205025205055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205023205048%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205025205055%_))
                                      ((lambda (_%L205058%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L205058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd205024205052%_)
                                      (_%g205017205031%_ _%g205018205035%_))))
                              (_%g205017205031%_ _%g205018205035%_))))
                      (_%g205017205031%_ _%g205018205035%_)))))
          (_%g205016205072%_ _%$stx205013%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx205076%_)
        (let* ((_%g205080205094%_
                (lambda (_%g205081205090%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205081205090%_))))
               (_%g205079205135%_
                (lambda (_%g205081205098%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205081205098%_))
                      (let ((_%e205083205101%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205081205098%_))))
                        (let ((_%hd205084205105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205083205101%_)))
                              (_%tl205085205108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205083205101%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205085205108%_))
                              (let ((_%e205086205111%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205085205108%_))))
                                (let ((_%hd205087205115%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205086205111%_)))
                                      (_%tl205088205118%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205086205111%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205088205118%_))
                                      ((lambda (_%L205121%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L205121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd205087205115%_)
                                      (_%g205080205094%_ _%g205081205098%_))))
                              (_%g205080205094%_ _%g205081205098%_))))
                      (_%g205080205094%_ _%g205081205098%_)))))
          (_%g205079205135%_ _%$stx205076%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx205139%_)
        (let* ((_%g205143205165%_
                (lambda (_%g205144205161%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205144205161%_))))
               (_%g205142205234%_
                (lambda (_%g205144205169%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205144205169%_))
                      (let ((_%e205148205172%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205144205169%_))))
                        (let ((_%hd205149205176%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205148205172%_)))
                              (_%tl205150205179%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205148205172%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205150205179%_))
                              (let ((_%e205151205182%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205150205179%_))))
                                (let ((_%hd205152205186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205151205182%_)))
                                      (_%tl205153205189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205151205182%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205153205189%_))
                                      (let ((_%e205154205192%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205153205189%_))))
                                        (let ((_%hd205155205196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205154205192%_)))
                                              (_%tl205156205199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205154205192%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205156205199%_))
                                              (let ((_%e205157205202%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205156205199%_))))
                                                (let ((_%hd205158205206%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205157205202%_)))
                                                      (_%tl205159205209%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205157205202%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205159205209%_))
                                                      ((lambda (_%L205212%_
                                                                _%L205214%_
                                                                _%L205215%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205215%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L205214%_ '()))
                                   (cons _%L205212%_ '())))))
               _%hd205158205206%_
               _%hd205155205196%_
               _%hd205152205186%_)
              (_%g205143205165%_ _%g205144205169%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205143205165%_
                                               _%g205144205169%_))))
                                      (_%g205143205165%_ _%g205144205169%_))))
                              (_%g205143205165%_ _%g205144205169%_))))
                      (_%g205143205165%_ _%g205144205169%_)))))
          (_%g205142205234%_ _%$stx205139%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx205238%_)
        (let* ((_%g205242205264%_
                (lambda (_%g205243205260%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205243205260%_))))
               (_%g205241205333%_
                (lambda (_%g205243205268%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205243205268%_))
                      (let ((_%e205247205271%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205243205268%_))))
                        (let ((_%hd205248205275%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205247205271%_)))
                              (_%tl205249205278%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205247205271%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205249205278%_))
                              (let ((_%e205250205281%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205249205278%_))))
                                (let ((_%hd205251205285%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205250205281%_)))
                                      (_%tl205252205288%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205250205281%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205252205288%_))
                                      (let ((_%e205253205291%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205252205288%_))))
                                        (let ((_%hd205254205295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205253205291%_)))
                                              (_%tl205255205298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205253205291%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205255205298%_))
                                              (let ((_%e205256205301%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205255205298%_))))
                                                (let ((_%hd205257205305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205256205301%_)))
                                                      (_%tl205258205308%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205256205301%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205258205308%_))
                                                      ((lambda (_%L205311%_
                                                                _%L205313%_
                                                                _%L205314%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205314%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L205313%_ '()))
                                   (cons _%L205311%_ '())))))
               _%hd205257205305%_
               _%hd205254205295%_
               _%hd205251205285%_)
              (_%g205242205264%_ _%g205243205268%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205242205264%_
                                               _%g205243205268%_))))
                                      (_%g205242205264%_ _%g205243205268%_))))
                              (_%g205242205264%_ _%g205243205268%_))))
                      (_%g205242205264%_ _%g205243205268%_)))))
          (_%g205241205333%_ _%$stx205238%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx205337%_)
        (let* ((_%g205341205355%_
                (lambda (_%g205342205351%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205342205351%_))))
               (_%g205340205396%_
                (lambda (_%g205342205359%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205342205359%_))
                      (let ((_%e205344205362%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205342205359%_))))
                        (let ((_%hd205345205366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205344205362%_)))
                              (_%tl205346205369%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205344205362%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205346205369%_))
                              (let ((_%e205347205372%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205346205369%_))))
                                (let ((_%hd205348205376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205347205372%_)))
                                      (_%tl205349205379%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205347205372%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205349205379%_))
                                      ((lambda (_%L205382%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L205382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd205348205376%_)
                                      (_%g205341205355%_ _%g205342205359%_))))
                              (_%g205341205355%_ _%g205342205359%_))))
                      (_%g205341205355%_ _%g205342205359%_)))))
          (_%g205340205396%_ _%$stx205337%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx205400%_)
        (let* ((_%g205404205422%_
                (lambda (_%g205405205418%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205405205418%_))))
               (_%g205403205477%_
                (lambda (_%g205405205426%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205405205426%_))
                      (let ((_%e205408205429%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205405205426%_))))
                        (let ((_%hd205409205433%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205408205429%_)))
                              (_%tl205410205436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205408205429%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205410205436%_))
                              (let ((_%e205411205439%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205410205436%_))))
                                (let ((_%hd205412205443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205411205439%_)))
                                      (_%tl205413205446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205411205439%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205413205446%_))
                                      (let ((_%e205414205449%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205413205446%_))))
                                        (let ((_%hd205415205453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205414205449%_)))
                                              (_%tl205416205456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205414205449%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205416205456%_))
                                              ((lambda (_%L205459%_
                                                        _%L205461%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205461%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205459%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205415205453%_
                                               _%hd205412205443%_)
                                              (_%g205404205422%_
                                               _%g205405205426%_))))
                                      (_%g205404205422%_ _%g205405205426%_))))
                              (_%g205404205422%_ _%g205405205426%_))))
                      (_%g205404205422%_ _%g205405205426%_)))))
          (_%g205403205477%_ _%$stx205400%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx205481%_)
        (let* ((_%__stx209823209824%_ _%$stx205481%_)
               (_%g205488205549%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209823209824%_)))))
          (let ((_%__kont209826209827%_
                 (lambda (_%L205787%_ _%L205789%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205789%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L205787%_ '()))
                                     '())))))
                (_%__kont209828209829%_
                 (lambda (_%L205726%_ _%L205728%_ _%L205729%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205729%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L205728%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205726%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont209830209831%_
                 (lambda (_%L205650%_ _%L205652%_)
                   (cons _%L205652%_ (cons _%L205650%_ (cons '#f '())))))
                (_%__kont209832209833%_
                 (lambda (_%L205600%_ _%L205602%_ _%L205603%_)
                   (cons _%L205603%_
                         (cons _%L205602%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L205600%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209823209824%_))
                (let ((_%e205492205757%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209823209824%_))))
                  (let ((_%tl205494205764%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205492205757%_)))
                        (_%hd205493205761%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205492205757%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205494205764%_))
                        (let ((_%e205495205767%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205494205764%_))))
                          (let ((_%tl205497205774%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205495205767%_)))
                                (_%hd205496205771%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205495205767%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205497205774%_))
                                (let ((_%e205498205777%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205497205774%_))))
                                  (let ((_%tl205500205784%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205498205777%_)))
                                        (_%hd205499205781%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205498205777%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205500205784%_))
                                        (_%__kont209826209827%_
                                         _%hd205499205781%_
                                         _%hd205496205771%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205500205784%_))
                                            (let ((_%e205513205702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205500205784%_))))
                                              (let ((_%tl205515205709%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205513205702%_)))
                                                    (_%hd205514205706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205513205702%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205514205706%_))
                                                    (let ((_%e205516205712%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205514205706%_))))
                                                      (if (equal? _%e205516205712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205515205709%_))
                      (let ((_%e205517205716%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205515205709%_))))
                        (let ((_%tl205519205723%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205517205716%_)))
                              (_%hd205518205720%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205517205716%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205519205723%_))
                              (_%__kont209828209829%_
                               _%hd205518205720%_
                               _%hd205499205781%_
                               _%hd205496205771%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd205499205781%_))
                                  (let ((_%e205540205586%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd205499205781%_))))
                                    (declare (not safe))
                                    (_%g205488205549%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g205488205549%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd205499205781%_))
                          (let ((_%e205540205586%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd205499205781%_))))
                            (if (equal? _%e205540205586%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205515205709%_))
                                    (_%__kont209832209833%_
                                     _%hd205514205706%_
                                     _%hd205496205771%_
                                     _%hd205493205761%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g205488205549%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g205488205549%_))))
                          (let () (declare (not safe)) (_%g205488205549%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd205499205781%_))
                      (let ((_%e205540205586%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd205499205781%_))))
                        (if (equal? _%e205540205586%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl205515205709%_))
                                (_%__kont209832209833%_
                                 _%hd205514205706%_
                                 _%hd205496205771%_
                                 _%hd205493205761%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g205488205549%_)))
                            (let () (declare (not safe)) (_%g205488205549%_))))
                      (let () (declare (not safe)) (_%g205488205549%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd205499205781%_))
                                                        (let ((_%e205540205586%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd205499205781%_))))
                  (if (equal? _%e205540205586%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205515205709%_))
                          (_%__kont209832209833%_
                           _%hd205514205706%_
                           _%hd205496205771%_
                           _%hd205493205761%_)
                          (let () (declare (not safe)) (_%g205488205549%_)))
                      (let () (declare (not safe)) (_%g205488205549%_))))
                (let () (declare (not safe)) (_%g205488205549%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd205499205781%_))
                                                (let ((_%e205540205586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd205499205781%_))))
                                                  (declare (not safe))
                                                  (_%g205488205549%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g205488205549%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205497205774%_))
                                    (_%__kont209830209831%_
                                     _%hd205496205771%_
                                     _%hd205493205761%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g205488205549%_))))))
                        (let () (declare (not safe)) (_%g205488205549%_)))))
                (let () (declare (not safe)) (_%g205488205549%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx205808%_)
        (let* ((_%g205812205841%_
                (lambda (_%g205813205837%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205813205837%_))))
               (_%g205811205950%_
                (lambda (_%g205813205845%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205813205845%_))
                      (let ((_%e205815205848%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205813205845%_))))
                        (let ((_%hd205816205852%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205815205848%_)))
                              (_%tl205817205855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205815205848%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205817205855%_))
                              (let ((_g210453_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205817205855%_
                                        '0))))
                                (begin
                                  (let ((_g210454_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210453_)
                                               (##values-length _g210453_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210454_ 2)))
                                        (error "Context expects 2 values"
                                               _g210454_)))
                                  (let ((_%target205818205858%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210453_ 0)))
                                        (_%tl205820205861%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210453_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205820205861%_))
                                        (letrec ((_%loop205821205864%_
                                                  (lambda (_%hd205819205868%_
                                                           _%clause205825205871%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205819205868%_))
                                                        (let ((_%e205822205874%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205819205868%_))))
                  (let ((_%lp-hd205823205878%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205822205874%_)))
                        (_%lp-tl205824205881%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205822205874%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd205823205878%_))
                        (let ((_g210455_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd205823205878%_
                                  '0))))
                          (begin
                            (let ((_g210456_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g210455_)
                                         (##values-length _g210455_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g210456_ 2)))
                                  (error "Context expects 2 values"
                                         _g210456_)))
                            (let ((_%target205827205884%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g210455_ 0)))
                                  (_%tl205829205887%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g210455_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205829205887%_))
                                  (letrec ((_%loop205830205890%_
                                            (lambda (_%hd205828205894%_
                                                     _%clause205834205897%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd205828205894%_))
                                                  (let ((_%e205831205900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd205828205894%_))))
                                                    (let ((_%lp-hd205832205904%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205831205900%_)))
                                                          (_%lp-tl205833205907%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205831205900%_))))
                                                      (_%loop205830205890%_
                                                       _%lp-tl205833205907%_
                                                       (cons _%lp-hd205832205904%_
                                                             _%clause205834205897%_))))
                                                  (let ((_%clause205835205910%_
                                                         (reverse _%clause205834205897%_)))
                                                    (_%loop205821205864%_
                                                     _%lp-tl205824205881%_
                                                     (cons _%clause205835205910%_
                                                           _%clause205825205871%_)))))))
                                    (_%loop205830205890%_
                                     _%target205827205884%_
                                     '()))
                                  (_%g205812205841%_ _%g205813205845%_)))))
                        (_%g205812205841%_ _%g205813205845%_))))
                (let ((_%clause205826205914%_
                       (reverse _%clause205825205871%_)))
                  ((lambda (_%L205918%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp210457
                                              (lambda (_%g205933205938%_
                                                       _%g205934205941%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp210458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g205935205944%_ _%g205936205947%_)
                             (cons _%g205935205944%_ _%g205936205947%_))))
                      (declare (not safe))
                      (__foldr1 __tmp210458 '() _%g205933205938%_)))
              _%g205934205941%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp210457
                                          '()
                                          _%L205918%_)))
                                 '())))
                   _%clause205826205914%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop205821205864%_
                                           _%target205818205858%_
                                           '()))
                                        (_%g205812205841%_
                                         _%g205813205845%_)))))
                              (_%g205812205841%_ _%g205813205845%_))))
                      (_%g205812205841%_ _%g205813205845%_)))))
          (_%g205811205950%_ _%$stx205808%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx205956%_)
        (let* ((_%g205960205978%_
                (lambda (_%g205961205974%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205961205974%_))))
               (_%g205959206033%_
                (lambda (_%g205961205982%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205961205982%_))
                      (let ((_%e205964205985%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205961205982%_))))
                        (let ((_%hd205965205989%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205964205985%_)))
                              (_%tl205966205992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205964205985%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205966205992%_))
                              (let ((_%e205967205995%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205966205992%_))))
                                (let ((_%hd205968205999%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205967205995%_)))
                                      (_%tl205969206002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205967205995%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205969206002%_))
                                      (let ((_%e205970206005%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205969206002%_))))
                                        (let ((_%hd205971206009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205970206005%_)))
                                              (_%tl205972206012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205970206005%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205972206012%_))
                                              ((lambda (_%L206015%_
                                                        _%L206017%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206017%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L206015%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205971206009%_
                                               _%hd205968205999%_)
                                              (_%g205960205978%_
                                               _%g205961205982%_))))
                                      (_%g205960205978%_ _%g205961205982%_))))
                              (_%g205960205978%_ _%g205961205982%_))))
                      (_%g205960205978%_ _%g205961205982%_)))))
          (_%g205959206033%_ _%$stx205956%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx206037%_)
        (let* ((_%g206041206059%_
                (lambda (_%g206042206055%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206042206055%_))))
               (_%g206040206114%_
                (lambda (_%g206042206063%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206042206063%_))
                      (let ((_%e206045206066%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206042206063%_))))
                        (let ((_%hd206046206070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206045206066%_)))
                              (_%tl206047206073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206045206066%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206047206073%_))
                              (let ((_%e206048206076%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206047206073%_))))
                                (let ((_%hd206049206080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206048206076%_)))
                                      (_%tl206050206083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206048206076%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206050206083%_))
                                      (let ((_%e206051206086%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206050206083%_))))
                                        (let ((_%hd206052206090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206051206086%_)))
                                              (_%tl206053206093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206051206086%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206053206093%_))
                                              ((lambda (_%L206096%_
                                                        _%L206098%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206098%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L206096%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd206052206090%_
                                               _%hd206049206080%_)
                                              (_%g206041206059%_
                                               _%g206042206063%_))))
                                      (_%g206041206059%_ _%g206042206063%_))))
                              (_%g206041206059%_ _%g206042206063%_))))
                      (_%g206041206059%_ _%g206042206063%_)))))
          (_%g206040206114%_ _%$stx206037%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx206118%_)
        (let* ((_%g206122206151%_
                (lambda (_%g206123206147%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206123206147%_))))
               (_%g206121206251%_
                (lambda (_%g206123206155%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206123206155%_))
                      (let ((_%e206126206158%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206123206155%_))))
                        (let ((_%hd206127206162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206126206158%_)))
                              (_%tl206128206165%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206126206158%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206128206165%_))
                              (let ((_g210459_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl206128206165%_
                                        '0))))
                                (begin
                                  (let ((_g210460_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210459_)
                                               (##values-length _g210459_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210460_ 2)))
                                        (error "Context expects 2 values"
                                               _g210460_)))
                                  (let ((_%target206129206168%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210459_ 0)))
                                        (_%tl206131206171%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210459_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206131206171%_))
                                        (letrec ((_%loop206132206174%_
                                                  (lambda (_%hd206130206178%_
                                                           _%rule206136206181%_
                                                           _%proc206137206183%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206130206178%_))
                                                        (let ((_%e206133206186%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206130206178%_))))
                  (let ((_%lp-hd206134206190%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206133206186%_)))
                        (_%lp-tl206135206193%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206133206186%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd206134206190%_))
                        (let ((_%e206140206196%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd206134206190%_))))
                          (let ((_%hd206141206200%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206140206196%_)))
                                (_%tl206142206203%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206140206196%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206142206203%_))
                                (let ((_%e206143206206%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206142206203%_))))
                                  (let ((_%hd206144206210%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206143206206%_)))
                                        (_%tl206145206213%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206143206206%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206145206213%_))
                                        (_%loop206132206174%_
                                         _%lp-tl206135206193%_
                                         (cons _%hd206144206210%_
                                               _%rule206136206181%_)
                                         (cons _%hd206141206200%_
                                               _%proc206137206183%_))
                                        (_%g206122206151%_
                                         _%g206123206155%_))))
                                (_%g206122206151%_ _%g206123206155%_))))
                        (_%g206122206151%_ _%g206123206155%_))))
                (let ((_%rule206138206216%_ (reverse _%rule206136206181%_))
                      (_%proc206139206219%_ (reverse _%proc206137206183%_)))
                  ((lambda (_%L206222%_ _%L206224%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L206222%_
                                _%L206224%_))
                             (let ((__tmp210461
                                    (lambda (_%g206239206243%_
                                             _%g206240206246%_
                                             _%g206241206248%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g206240206246%_
                                                        (cons _%g206239206243%_
                                                              '())))
                                            _%g206241206248%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp210461
                                '()
                                _%L206222%_
                                _%L206224%_)))))
                   _%rule206138206216%_
                   _%proc206139206219%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop206132206174%_
                                           _%target206129206168%_
                                           '()
                                           '()))
                                        (_%g206122206151%_
                                         _%g206123206155%_)))))
                              (_%g206122206151%_ _%g206123206155%_))))
                      (_%g206122206151%_ _%g206123206155%_)))))
          (_%g206121206251%_ _%$stx206118%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx206256%_)
        (let* ((_%g206260206278%_
                (lambda (_%g206261206274%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206261206274%_))))
               (_%g206259206333%_
                (lambda (_%g206261206282%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206261206282%_))
                      (let ((_%e206264206285%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206261206282%_))))
                        (let ((_%hd206265206289%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206264206285%_)))
                              (_%tl206266206292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206264206285%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206266206292%_))
                              (let ((_%e206267206295%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206266206292%_))))
                                (let ((_%hd206268206299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206267206295%_)))
                                      (_%tl206269206302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206267206295%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206269206302%_))
                                      (let ((_%e206270206305%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206269206302%_))))
                                        (let ((_%hd206271206309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206270206305%_)))
                                              (_%tl206272206312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206270206305%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206272206312%_))
                                              ((lambda (_%L206315%_
                                                        _%L206317%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L206317%_ '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%L206315%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L206317%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd206271206309%_
                                               _%hd206268206299%_)
                                              (_%g206260206278%_
                                               _%g206261206282%_))))
                                      (_%g206260206278%_ _%g206261206282%_))))
                              (_%g206260206278%_ _%g206261206282%_))))
                      (_%g206260206278%_ _%g206261206282%_)))))
          (_%g206259206333%_ _%$stx206256%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx206337%_)
        (let* ((_%__stx209941209942%_ _%$stx206337%_)
               (_%g206342206367%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209941209942%_)))))
          (let ((_%__kont209944209945%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont209946209947%_
                 (lambda (_%L206414%_ _%L206416%_ _%L206417%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L206417%_ (cons _%L206416%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L206414%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209941209942%_))
                (let ((_%e206344206443%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209941209942%_))))
                  (let ((_%tl206346206450%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206344206443%_)))
                        (_%hd206345206447%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206344206443%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206346206450%_))
                        (_%__kont209944209945%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl206346206450%_))
                            (let ((_%e206353206384%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl206346206450%_))))
                              (let ((_%tl206355206391%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e206353206384%_)))
                                    (_%hd206354206388%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e206353206384%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd206354206388%_))
                                    (let ((_%e206356206394%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd206354206388%_))))
                                      (let ((_%tl206358206401%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e206356206394%_)))
                                            (_%hd206357206398%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e206356206394%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206358206401%_))
                                            (let ((_%e206359206404%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl206358206401%_))))
                                              (let ((_%tl206361206411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206359206404%_)))
                                                    (_%hd206360206408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206359206404%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl206361206411%_))
                                                    (_%__kont209946209947%_
                                                     _%tl206355206391%_
                                                     _%hd206360206408%_
                                                     _%hd206357206398%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g206342206367%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g206342206367%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g206342206367%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g206342206367%_))))))
                (let () (declare (not safe)) (_%g206342206367%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx206461%_)
        (let* ((_%__stx209985209986%_ _%$stx206461%_)
               (_%g206466206497%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209985209986%_)))))
          (let ((_%__kont209988209989%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont209990209991%_
                 (lambda (_%L206564%_ _%L206566%_ _%L206567%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L206567%_
                                           (let ((__tmp210462
                                                  (lambda (_%g206587206590%_
                                                           _%g206588206593%_)
                                                    (cons _%g206587206590%_
                                                          _%g206588206593%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp210462
                                              '()
                                              _%L206566%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L206564%_)
                                     '()))))))
            (let ((_%__match210028210029%_
                   (lambda (_%e206474206504%_
                            _%hd206475206508%_
                            _%tl206476206511%_
                            _%e206477206514%_
                            _%hd206478206518%_
                            _%tl206479206521%_
                            _%e206480206524%_
                            _%hd206481206528%_
                            _%tl206482206531%_
                            _%__splice209992209993%_
                            _%target206483206534%_
                            _%tl206485206537%_)
                     (letrec ((_%loop206486206540%_
                               (lambda (_%hd206484206544%_ _%sig206490206547%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd206484206544%_))
                                     (let ((_%e206487206550%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd206484206544%_))))
                                       (let ((_%lp-tl206489206557%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e206487206550%_)))
                                             (_%lp-hd206488206554%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e206487206550%_))))
                                         (_%loop206486206540%_
                                          _%lp-tl206489206557%_
                                          (cons _%lp-hd206488206554%_
                                                _%sig206490206547%_))))
                                     (let ((_%sig206491206560%_
                                            (reverse _%sig206490206547%_)))
                                       (_%__kont209990209991%_
                                        _%tl206479206521%_
                                        _%sig206491206560%_
                                        _%hd206481206528%_))))))
                       (_%loop206486206540%_ _%target206483206534%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209985209986%_))
                  (let ((_%e206468206603%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209985209986%_))))
                    (let ((_%tl206470206610%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206468206603%_)))
                          (_%hd206469206607%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206468206603%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206470206610%_))
                          (_%__kont209988209989%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206470206610%_))
                              (let ((_%e206477206514%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206470206610%_))))
                                (let ((_%tl206479206521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206477206514%_)))
                                      (_%hd206478206518%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206477206514%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206478206518%_))
                                      (let ((_%e206480206524%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206478206518%_))))
                                        (let ((_%tl206482206531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206480206524%_)))
                                              (_%hd206481206528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206480206524%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl206482206531%_))
                                              (let ((_%__splice209992209993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl206482206531%_
                                                        '0))))
                                                (let ((_%tl206485206537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209992209993%_
                                                          '1)))
                                                      (_%target206483206534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209992209993%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206485206537%_))
                                                      (_%__match210028210029%_
                                                       _%e206468206603%_
                                                       _%hd206469206607%_
                                                       _%tl206470206610%_
                                                       _%e206477206514%_
                                                       _%hd206478206518%_
                                                       _%tl206479206521%_
                                                       _%e206480206524%_
                                                       _%hd206481206528%_
                                                       _%tl206482206531%_
                                                       _%__splice209992209993%_
                                                       _%target206483206534%_
                                                       _%tl206485206537%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g206466206497%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206466206497%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206466206497%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g206466206497%_))))))
                  (let () (declare (not safe)) (_%g206466206497%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx206622%_)
        (let* ((_%__stx210031210032%_ _%$stx206622%_)
               (_%g206627206674%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx210031210032%_)))))
          (let ((_%__kont210034210035%_
                 (lambda (_%L206836%_ _%L206838%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L206838%_
                               (let ((__tmp210463
                                      (lambda (_%g206858206861%_
                                               _%g206859206864%_)
                                        (cons _%g206858206861%_
                                              _%g206859206864%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp210463 '() _%L206836%_))))))
                (_%__kont210038210039%_
                 (lambda (_%L206731%_ _%L206733%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L206733%_
                               (let ((__tmp210464
                                      (lambda (_%g206750206753%_
                                               _%g206751206756%_)
                                        (cons _%g206750206753%_
                                              _%g206751206756%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp210464 '() _%L206731%_)))))))
            (let* ((_%__match210098210099%_
                    (lambda (_%e206654206681%_
                             _%hd206655206685%_
                             _%tl206656206688%_
                             _%e206657206691%_
                             _%hd206658206695%_
                             _%tl206659206698%_
                             _%__splice210040210041%_
                             _%target206660206701%_
                             _%tl206662206704%_)
                      (letrec ((_%loop206663206707%_
                                (lambda (_%hd206661206711%_
                                         _%sig206667206714%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206661206711%_))
                                      (let ((_%e206664206717%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206661206711%_))))
                                        (let ((_%lp-tl206666206724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206664206717%_)))
                                              (_%lp-hd206665206721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206664206717%_))))
                                          (_%loop206663206707%_
                                           _%lp-tl206666206724%_
                                           (cons _%lp-hd206665206721%_
                                                 _%sig206667206714%_))))
                                      (let ((_%sig206668206727%_
                                             (reverse _%sig206667206714%_)))
                                        (_%__kont210038210039%_
                                         _%sig206668206727%_
                                         _%hd206658206695%_))))))
                        (_%loop206663206707%_ _%target206660206701%_ '()))))
                   (_%__match210090210091%_
                    (lambda (_%e206654206681%_
                             _%hd206655206685%_
                             _%tl206656206688%_
                             _%e206657206691%_
                             _%hd206658206695%_
                             _%tl206659206698%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl206659206698%_))
                          (let ((_%__splice210040210041%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl206659206698%_
                                    '0))))
                            (let ((_%tl206662206704%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice210040210041%_
                                      '1)))
                                  (_%target206660206701%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice210040210041%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206662206704%_))
                                  (_%__match210098210099%_
                                   _%e206654206681%_
                                   _%hd206655206685%_
                                   _%tl206656206688%_
                                   _%e206657206691%_
                                   _%hd206658206695%_
                                   _%tl206659206698%_
                                   _%__splice210040210041%_
                                   _%target206660206701%_
                                   _%tl206662206704%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g206627206674%_)))))
                          (let () (declare (not safe)) (_%g206627206674%_)))))
                   (_%__match210078210079%_
                    (lambda (_%e206631206766%_
                             _%hd206632206770%_
                             _%tl206633206773%_
                             _%e206634206776%_
                             _%hd206635206780%_
                             _%tl206636206783%_
                             _%e206637206786%_
                             _%hd206638206790%_
                             _%tl206639206793%_
                             _%e206640206796%_
                             _%hd206641206800%_
                             _%tl206642206803%_
                             _%__splice210036210037%_
                             _%target206643206806%_
                             _%tl206645206809%_)
                      (letrec ((_%loop206646206812%_
                                (lambda (_%hd206644206816%_
                                         _%sig206650206819%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206644206816%_))
                                      (let ((_%e206647206822%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206644206816%_))))
                                        (let ((_%lp-tl206649206829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206647206822%_)))
                                              (_%lp-hd206648206826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206647206822%_))))
                                          (_%loop206646206812%_
                                           _%lp-tl206649206829%_
                                           (cons _%lp-hd206648206826%_
                                                 _%sig206650206819%_))))
                                      (let ((_%sig206651206832%_
                                             (reverse _%sig206650206819%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl206639206793%_))
                                            (_%__kont210034210035%_
                                             _%sig206651206832%_
                                             _%hd206635206780%_)
                                            (_%__match210090210091%_
                                             _%e206631206766%_
                                             _%hd206632206770%_
                                             _%tl206633206773%_
                                             _%e206634206776%_
                                             _%hd206635206780%_
                                             _%tl206636206783%_)))))))
                        (_%loop206646206812%_ _%target206643206806%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx210031210032%_))
                  (let ((_%e206631206766%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx210031210032%_))))
                    (let ((_%tl206633206773%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206631206766%_)))
                          (_%hd206632206770%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206631206766%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206633206773%_))
                          (let ((_%e206634206776%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206633206773%_))))
                            (let ((_%tl206636206783%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206634206776%_)))
                                  (_%hd206635206780%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206634206776%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206636206783%_))
                                  (let ((_%e206637206786%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl206636206783%_))))
                                    (let ((_%tl206639206793%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206637206786%_)))
                                          (_%hd206638206790%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206637206786%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd206638206790%_))
                                          (let ((_%e206640206796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd206638206790%_))))
                                            (let ((_%tl206642206803%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e206640206796%_)))
                                                  (_%hd206641206800%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e206640206796%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd206641206800%_))
                                                  (if (let ((__tmp210465
                                                             |gxc[1]#_g210466_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp210465
                                                         _%hd206641206800%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl206642206803%_))
                                                          (let ((_%__splice210036210037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl206642206803%_
                            '0))))
                    (let ((_%tl206645206809%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice210036210037%_ '1)))
                          (_%target206643206806%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice210036210037%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206645206809%_))
                          (_%__match210078210079%_
                           _%e206631206766%_
                           _%hd206632206770%_
                           _%tl206633206773%_
                           _%e206634206776%_
                           _%hd206635206780%_
                           _%tl206636206783%_
                           _%e206637206786%_
                           _%hd206638206790%_
                           _%tl206639206793%_
                           _%e206640206796%_
                           _%hd206641206800%_
                           _%tl206642206803%_
                           _%__splice210036210037%_
                           _%target206643206806%_
                           _%tl206645206809%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206636206783%_))
                              (let ((_%__splice210040210041%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl206636206783%_
                                        '0))))
                                (let ((_%tl206662206704%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice210040210041%_
                                          '1)))
                                      (_%target206660206701%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice210040210041%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl206662206704%_))
                                      (_%__match210098210099%_
                                       _%e206631206766%_
                                       _%hd206632206770%_
                                       _%tl206633206773%_
                                       _%e206634206776%_
                                       _%hd206635206780%_
                                       _%tl206636206783%_
                                       _%__splice210040210041%_
                                       _%target206660206701%_
                                       _%tl206662206704%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g206627206674%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g206627206674%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl206636206783%_))
                      (let ((_%__splice210040210041%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl206636206783%_
                                '0))))
                        (let ((_%tl206662206704%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice210040210041%_ '1)))
                              (_%target206660206701%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice210040210041%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206662206704%_))
                              (_%__match210098210099%_
                               _%e206631206766%_
                               _%hd206632206770%_
                               _%tl206633206773%_
                               _%e206634206776%_
                               _%hd206635206780%_
                               _%tl206636206783%_
                               _%__splice210040210041%_
                               _%target206660206701%_
                               _%tl206662206704%_)
                              (let ()
                                (declare (not safe))
                                (_%g206627206674%_)))))
                      (let () (declare (not safe)) (_%g206627206674%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl206636206783%_))
                  (let ((_%__splice210040210041%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl206636206783%_
                            '0))))
                    (let ((_%tl206662206704%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice210040210041%_ '1)))
                          (_%target206660206701%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice210040210041%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206662206704%_))
                          (_%__match210098210099%_
                           _%e206631206766%_
                           _%hd206632206770%_
                           _%tl206633206773%_
                           _%e206634206776%_
                           _%hd206635206780%_
                           _%tl206636206783%_
                           _%__splice210040210041%_
                           _%target206660206701%_
                           _%tl206662206704%_)
                          (let () (declare (not safe)) (_%g206627206674%_)))))
                  (let () (declare (not safe)) (_%g206627206674%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl206636206783%_))
                                                      (let ((_%__splice210040210041%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl206636206783%_
                        '0))))
                (let ((_%tl206662206704%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice210040210041%_ '1)))
                      (_%target206660206701%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice210040210041%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl206662206704%_))
                      (_%__match210098210099%_
                       _%e206631206766%_
                       _%hd206632206770%_
                       _%tl206633206773%_
                       _%e206634206776%_
                       _%hd206635206780%_
                       _%tl206636206783%_
                       _%__splice210040210041%_
                       _%target206660206701%_
                       _%tl206662206704%_)
                      (let () (declare (not safe)) (_%g206627206674%_)))))
              (let () (declare (not safe)) (_%g206627206674%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl206636206783%_))
                                              (let ((_%__splice210040210041%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl206636206783%_
                                                        '0))))
                                                (let ((_%tl206662206704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice210040210041%_
                                                          '1)))
                                                      (_%target206660206701%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice210040210041%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206662206704%_))
                                                      (_%__match210098210099%_
                                                       _%e206631206766%_
                                                       _%hd206632206770%_
                                                       _%tl206633206773%_
                                                       _%e206634206776%_
                                                       _%hd206635206780%_
                                                       _%tl206636206783%_
                                                       _%__splice210040210041%_
                                                       _%target206660206701%_
                                                       _%tl206662206704%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g206627206674%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206627206674%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl206636206783%_))
                                      (let ((_%__splice210040210041%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl206636206783%_
                                                '0))))
                                        (let ((_%tl206662206704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice210040210041%_
                                                  '1)))
                                              (_%target206660206701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice210040210041%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206662206704%_))
                                              (_%__match210098210099%_
                                               _%e206631206766%_
                                               _%hd206632206770%_
                                               _%tl206633206773%_
                                               _%e206634206776%_
                                               _%hd206635206780%_
                                               _%tl206636206783%_
                                               _%__splice210040210041%_
                                               _%target206660206701%_
                                               _%tl206662206704%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g206627206674%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206627206674%_))))))
                          (let () (declare (not safe)) (_%g206627206674%_)))))
                  (let () (declare (not safe)) (_%g206627206674%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx208021%_ _%id208023%_)
        (let ((_%proc208027%_
               (let ((__tmp210467
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id208023%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp210467))))
          (if (procedure? _%proc208027%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx208021%_
                 _%id208023%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx208012%_ _%id208014%_)
        (let ((_%klass208018%_
               (let ((__tmp210468
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id208014%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp210468))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass208018%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx208012%_
                 _%id208014%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx207262%_ _%proc207264%_ _%sig207265%_)
        (letrec ((_%signature-arity207267%_
                  (lambda (_%args207944%_)
                    (let _%loop207947%_ ((_%rest207950%_ _%args207944%_)
                                         (_%count207952%_ '0))
                      (let* ((_%rest207953207964%_ _%rest207950%_)
                             (_%E207957207970%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest207953207964%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K207960208001%_
                               (lambda (_%rest207998%_)
                                 (_%loop207947%_
                                  _%rest207998%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count207952%_ '1)))))
                              (_%K207959207990%_ (lambda () _%count207952%_))
                              (_%K207958207978%_
                               (lambda () (cons _%count207952%_ '()))))
                          (let ((_%try-match207955207994%_
                                 (lambda ()
                                   (if (null? _%rest207953207964%_)
                                       (_%K207959207990%_)
                                       (_%K207958207978%_)))))
                            (if (pair? _%rest207953207964%_)
                                (let* ((_%tl207962208005%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest207953207964%_)))
                                       (_%rest208009%_ _%tl207962208005%_))
                                  (_%K207960208001%_ _%rest208009%_))
                                (_%try-match207955207994%_))))))))
                 (_%make-signature207269%_
                  (lambda (_%args207826%_
                           _%return207828%_
                           _%effect207829%_
                           _%unchecked207830%_)
                    (let ((__tmp210469
                           (lambda (_%g207831207833%_)
                             (|gxc[1]#verify-class!|
                              _%ctx207262%_
                              _%g207831207833%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp210469 _%args207826%_))
                    (|gxc[1]#verify-class!| _%ctx207262%_ _%return207828%_)
                    (if _%unchecked207830%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx207262%_
                         _%unchecked207830%_)
                        '#!void)
                    (let ((_%arity207837%_
                           (_%signature-arity207267%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args207826%_)))))
                      (if _%effect207829%_
                          (let ((_%effect207840%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect207829%_))))
                            (if (and (list? _%effect207840%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect207840%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx207262%_
                                   _%proc207264%_
                                   _%effect207840%_))))
                          '#!void)
                      (cons _%arity207837%_
                            (cons (let* ((_%g207843207866%_
                                          (lambda (_%g207844207862%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g207844207862%_))))
                                         (_%g207842207940%_
                                          (lambda (_%g207844207870%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g207844207870%_))
                                                (let ((_%e207849207873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g207844207870%_))))
                                                  (let ((_%hd207850207877%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207849207873%_)))
                                                        (_%tl207851207880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207849207873%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl207851207880%_))
                                                        (let ((_%e207852207883%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl207851207880%_))))
                  (let ((_%hd207853207887%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207852207883%_)))
                        (_%tl207854207890%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207852207883%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl207854207890%_))
                        (let ((_%e207855207893%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207854207890%_))))
                          (let ((_%hd207856207897%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207855207893%_)))
                                (_%tl207857207900%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207855207893%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl207857207900%_))
                                (let ((_%e207858207903%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl207857207900%_))))
                                  (let ((_%hd207859207907%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207858207903%_)))
                                        (_%tl207860207910%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207858207903%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207860207910%_))
                                        ((lambda (_%L207913%_
                                                  _%L207915%_
                                                  _%L207916%_
                                                  _%L207917%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-!signature))
                                                 (cons 'arguments:
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L207917%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L207916%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L207915%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L207913%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd207859207907%_
                                         _%hd207856207897%_
                                         _%hd207853207887%_
                                         _%hd207850207877%_)
                                        (_%g207843207866%_
                                         _%g207844207870%_))))
                                (_%g207843207866%_ _%g207844207870%_))))
                        (_%g207843207866%_ _%g207844207870%_))))
                (_%g207843207866%_ _%g207844207870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g207843207866%_
                                                 _%g207844207870%_)))))
                                    (_%g207842207940%_
                                     (list _%args207826%_
                                           _%return207828%_
                                           _%effect207829%_
                                           _%unchecked207830%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx207262%_ _%proc207264%_)
          (let* ((_%__stx210109210110%_ _%sig207265%_)
                 (_%g207276207379%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx210109210110%_)))))
            (let ((_%__kont210112210113%_
                   (lambda (_%L207807%_ _%L207809%_)
                     (_%make-signature207269%_
                      _%L207809%_
                      _%L207807%_
                      '#f
                      '#f)))
                  (_%__kont210114210115%_
                   (lambda (_%L207758%_ _%L207760%_ _%L207761%_)
                     (_%make-signature207269%_
                      _%L207761%_
                      _%L207760%_
                      _%L207758%_
                      '#f)))
                  (_%__kont210116210117%_
                   (lambda (_%L207682%_ _%L207684%_ _%L207685%_)
                     (_%make-signature207269%_
                      _%L207685%_
                      _%L207684%_
                      _%L207682%_
                      (let ((__tmp210470
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc207264%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp210470)))))
                  (_%__kont210118210119%_
                   (lambda (_%L207588%_ _%L207590%_ _%L207591%_ _%L207592%_)
                     (_%make-signature207269%_
                      _%L207592%_
                      _%L207591%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L207588%_)))))
                  (_%__kont210120210121%_
                   (lambda (_%L207495%_ _%L207497%_)
                     (_%make-signature207269%_
                      _%L207497%_
                      _%L207495%_
                      '#f
                      (let ((__tmp210471
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc207264%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp210471)))))
                  (_%__kont210122210123%_
                   (lambda (_%L207430%_ _%L207432%_ _%L207433%_)
                     (_%make-signature207269%_
                      _%L207433%_
                      _%L207432%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L207430%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx210109210110%_))
                  (let ((_%e207280207787%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx210109210110%_))))
                    (let ((_%tl207282207794%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207280207787%_)))
                          (_%hd207281207791%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207280207787%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207282207794%_))
                          (let ((_%e207283207797%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl207282207794%_))))
                            (let ((_%tl207285207804%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207283207797%_)))
                                  (_%hd207284207801%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207283207797%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl207285207804%_))
                                  (_%__kont210112210113%_
                                   _%hd207284207801%_
                                   _%hd207281207791%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207285207804%_))
                                      (let ((_%e207295207734%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl207285207804%_))))
                                        (let ((_%tl207297207741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207295207734%_)))
                                              (_%hd207296207738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207295207734%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd207296207738%_))
                                              (let ((_%e207298207744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd207296207738%_))))
                                                (if (equal? _%e207298207744%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl207297207741%_))
                                                        (let ((_%e207299207748%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl207297207741%_))))
                  (let ((_%tl207301207755%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207299207748%_)))
                        (_%hd207300207752%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207299207748%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl207301207755%_))
                        (_%__kont210114210115%_
                         _%hd207300207752%_
                         _%hd207284207801%_
                         _%hd207281207791%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl207301207755%_))
                            (let ((_%e207318207668%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl207301207755%_))))
                              (let ((_%tl207320207675%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207318207668%_)))
                                    (_%hd207319207672%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207318207668%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd207319207672%_))
                                    (let ((_%e207321207678%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd207319207672%_))))
                                      (if (equal? _%e207321207678%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207320207675%_))
                                              (_%__kont210116210117%_
                                               _%hd207300207752%_
                                               _%hd207284207801%_
                                               _%hd207281207791%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207320207675%_))
                                                  (let ((_%e207343207578%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl207320207675%_))))
                                                    (let ((_%tl207345207585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207343207578%_)))
                                                          (_%hd207344207582%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207343207578%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl207345207585%_))
                                                          (_%__kont210118210119%_
                                                           _%hd207344207582%_
                                                           _%hd207300207752%_
                                                           _%hd207284207801%_
                                                           _%hd207281207791%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g207276207379%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g207276207379%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g207276207379%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g207276207379%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g207276207379%_))))))
                (let () (declare (not safe)) (_%g207276207379%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e207298207744%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl207297207741%_))
                                                            (_%__kont210120210121%_
                                                             _%hd207284207801%_
                                                             _%hd207281207791%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl207297207741%_))
                        (let ((_%e207371207420%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207297207741%_))))
                          (let ((_%tl207373207427%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207371207420%_)))
                                (_%hd207372207424%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207371207420%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl207373207427%_))
                                (_%__kont210122210123%_
                                 _%hd207372207424%_
                                 _%hd207284207801%_
                                 _%hd207281207791%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g207276207379%_)))))
                        (let () (declare (not safe)) (_%g207276207379%_))))
                (let () (declare (not safe)) (_%g207276207379%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g207276207379%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g207276207379%_))))))
                          (let () (declare (not safe)) (_%g207276207379%_)))))
                  (let () (declare (not safe)) (_%g207276207379%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig206873%_)
        (let* ((_%g206876206956%_
                (lambda (_%g206877206952%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206877206952%_))))
               (_%g206875207258%_
                (lambda (_%g206877206960%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206877206960%_))
                      (let ((_%e206883206963%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206877206960%_))))
                        (let ((_%hd206884206967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206883206963%_)))
                              (_%tl206885206970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206883206963%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206885206970%_))
                              (let ((_%e206886206973%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206885206970%_))))
                                (let ((_%hd206887206977%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206886206973%_)))
                                      (_%tl206888206980%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206886206973%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd206887206977%_))
                                      (let ((_%e206889206983%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd206887206977%_))))
                                        (if (equal? _%e206889206983%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206888206980%_))
                                                (let ((_%e206890206987%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl206888206980%_))))
                                                  (let ((_%hd206891206991%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206890206987%_)))
                                                        (_%tl206892206994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206890206987%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206891206991%_))
                                                        (let ((_%e206893206997%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206891206991%_))))
                  (let ((_%hd206894207001%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206893206997%_)))
                        (_%tl206895207004%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206893206997%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd206894207001%_))
                        (if (let ((__tmp210472 |gxc[1]#_g210473_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp210472
                               _%hd206894207001%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206895207004%_))
                                (let ((_%e206896207007%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206895207004%_))))
                                  (let ((_%hd206897207011%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206896207007%_)))
                                        (_%tl206898207014%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206896207007%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206898207014%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206892206994%_))
                                            (let ((_%e206899207017%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl206892206994%_))))
                                              (let ((_%hd206900207021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206899207017%_)))
                                                    (_%tl206901207024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206899207017%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd206900207021%_))
                                                    (let ((_%e206902207027%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd206900207021%_))))
                                                      (if (equal? _%e206902207027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl206901207024%_))
                      (let ((_%e206903207031%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl206901207024%_))))
                        (let ((_%hd206904207035%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206903207031%_)))
                              (_%tl206905207038%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206903207031%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd206904207035%_))
                              (let ((_%e206906207041%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd206904207035%_))))
                                (let ((_%hd206907207045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206906207041%_)))
                                      (_%tl206908207048%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206906207041%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd206907207045%_))
                                      (if (let ((__tmp210474
                                                 |gxc[1]#_g210475_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp210474
                                             _%hd206907207045%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206908207048%_))
                                              (let ((_%e206909207051%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206908207048%_))))
                                                (let ((_%hd206910207055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206909207051%_)))
                                                      (_%tl206911207058%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206909207051%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206911207058%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl206905207038%_))
                                                          (let ((_%e206912207061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl206905207038%_))))
                    (let ((_%hd206913207065%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206912207061%_)))
                          (_%tl206914207068%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206912207061%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd206913207065%_))
                          (let ((_%e206915207071%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd206913207065%_))))
                            (if (equal? _%e206915207071%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl206914207068%_))
                                    (let ((_%e206916207075%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl206914207068%_))))
                                      (let ((_%hd206917207079%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e206916207075%_)))
                                            (_%tl206918207082%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e206916207075%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd206917207079%_))
                                            (let ((_%e206919207085%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd206917207079%_))))
                                              (let ((_%hd206920207089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206919207085%_)))
                                                    (_%tl206921207092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206919207085%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd206920207089%_))
                                                    (if (let ((__tmp210476
                                                               |gxc[1]#_g210477_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp210476
                                                           _%hd206920207089%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl206921207092%_))
                                                            (let ((_%e206922207095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl206921207092%_))))
                      (let ((_%hd206923207099%_
                             (let ()
                               (declare (not safe))
                               (##car _%e206922207095%_)))
                            (_%tl206924207102%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e206922207095%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl206924207102%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206918207082%_))
                                (let ((_%e206925207105%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206918207082%_))))
                                  (let ((_%hd206926207109%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206925207105%_)))
                                        (_%tl206927207112%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206925207105%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd206926207109%_))
                                        (let ((_%e206928207115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd206926207109%_))))
                                          (if (equal? _%e206928207115%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206927207112%_))
                                                  (let ((_%e206929207119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206927207112%_))))
                                                    (let ((_%hd206930207123%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206929207119%_)))
                                                          (_%tl206931207126%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206929207119%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd206930207123%_))
                                                          (let ((_%e206932207129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd206930207123%_))))
                    (let ((_%hd206933207133%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206932207129%_)))
                          (_%tl206934207136%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206932207129%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd206933207133%_))
                          (if (let ((__tmp210478 |gxc[1]#_g210479_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp210478
                                 _%hd206933207133%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206934207136%_))
                                  (let ((_%e206935207139%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl206934207136%_))))
                                    (let ((_%hd206936207143%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206935207139%_)))
                                          (_%tl206937207146%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206935207139%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl206937207146%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206931207126%_))
                                              (let ((_%e206938207149%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206931207126%_))))
                                                (let ((_%hd206939207153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206938207149%_)))
                                                      (_%tl206940207156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206938207149%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd206939207153%_))
                                                      (let ((_%e206941207159%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd206939207153%_))))
                (if (equal? _%e206941207159%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206940207156%_))
                        (let ((_%e206942207163%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206940207156%_))))
                          (let ((_%hd206943207167%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206942207163%_)))
                                (_%tl206944207170%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206942207163%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd206943207167%_))
                                (let ((_%e206945207173%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd206943207167%_))))
                                  (let ((_%hd206946207177%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206945207173%_)))
                                        (_%tl206947207180%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206945207173%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd206946207177%_))
                                        (if (let ((__tmp210480
                                                   |gxc[1]#_g210481_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp210480
                                               _%hd206946207177%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206947207180%_))
                                                (let ((_%e206948207183%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl206947207180%_))))
                                                  (let ((_%hd206949207187%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206948207183%_)))
                                                        (_%tl206950207190%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206948207183%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl206950207190%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl206944207170%_))
                                                            ((lambda (_%L207193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L207195%_
                              _%L207196%_
                              _%L207197%_
                              _%L207198%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L207195%_))
                           (cons _%L207195%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L207197%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L207193%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd206949207187%_
                     _%hd206936207143%_
                     _%hd206923207099%_
                     _%hd206910207055%_
                     _%hd206897207011%_)
                    (_%g206876206956%_ _%g206877206960%_))
                (_%g206876206956%_ _%g206877206960%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206876206956%_
                                                 _%g206877206960%_))
                                            (_%g206876206956%_
                                             _%g206877206960%_))
                                        (_%g206876206956%_
                                         _%g206877206960%_))))
                                (_%g206876206956%_ _%g206877206960%_))))
                        (_%g206876206956%_ _%g206877206960%_))
                    (_%g206876206956%_ _%g206877206960%_)))
              (_%g206876206956%_ _%g206877206960%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206876206956%_
                                               _%g206877206960%_))
                                          (_%g206876206956%_
                                           _%g206877206960%_))))
                                  (_%g206876206956%_ _%g206877206960%_))
                              (_%g206876206956%_ _%g206877206960%_))
                          (_%g206876206956%_ _%g206877206960%_))))
                  (_%g206876206956%_ _%g206877206960%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g206876206956%_
                                                   _%g206877206960%_))
                                              (_%g206876206956%_
                                               _%g206877206960%_)))
                                        (_%g206876206956%_
                                         _%g206877206960%_))))
                                (_%g206876206956%_ _%g206877206960%_))
                            (_%g206876206956%_ _%g206877206960%_))))
                    (_%g206876206956%_ _%g206877206960%_))
                (_%g206876206956%_ _%g206877206960%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g206876206956%_
                                                     _%g206877206960%_))))
                                            (_%g206876206956%_
                                             _%g206877206960%_))))
                                    (_%g206876206956%_ _%g206877206960%_))
                                (_%g206876206956%_ _%g206877206960%_)))
                          (_%g206876206956%_ _%g206877206960%_))))
                  (_%g206876206956%_ _%g206877206960%_))
              (_%g206876206956%_ _%g206877206960%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206876206956%_
                                               _%g206877206960%_))
                                          (_%g206876206956%_
                                           _%g206877206960%_))
                                      (_%g206876206956%_ _%g206877206960%_))))
                              (_%g206876206956%_ _%g206877206960%_))))
                      (_%g206876206956%_ _%g206877206960%_))
                  (_%g206876206956%_ _%g206877206960%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g206876206956%_
                                                     _%g206877206960%_))))
                                            (_%g206876206956%_
                                             _%g206877206960%_))
                                        (_%g206876206956%_
                                         _%g206877206960%_))))
                                (_%g206876206956%_ _%g206877206960%_))
                            (_%g206876206956%_ _%g206877206960%_))
                        (_%g206876206956%_ _%g206877206960%_))))
                (_%g206876206956%_ _%g206877206960%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206876206956%_
                                                 _%g206877206960%_))
                                            (_%g206876206956%_
                                             _%g206877206960%_)))
                                      (_%g206876206956%_ _%g206877206960%_))))
                              (_%g206876206956%_ _%g206877206960%_))))
                      (_%g206876206956%_ _%g206877206960%_)))))
          (_%g206875207258%_ _%sig206873%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx208030%_)
        (let* ((_%g208033208051%_
                (lambda (_%g208034208047%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208034208047%_))))
               (_%g208032208106%_
                (lambda (_%g208034208055%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208034208055%_))
                      (let ((_%e208037208058%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208034208055%_))))
                        (let ((_%hd208038208062%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208037208058%_)))
                              (_%tl208039208065%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208037208058%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208039208065%_))
                              (let ((_%e208040208068%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208039208065%_))))
                                (let ((_%hd208041208072%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208040208068%_)))
                                      (_%tl208042208075%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208040208068%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208042208075%_))
                                      (let ((_%e208043208078%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl208042208075%_))))
                                        (let ((_%hd208044208082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208043208078%_)))
                                              (_%tl208045208085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208043208078%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208045208085%_))
                                              ((lambda (_%L208088%_
                                                        _%L208090%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L208090%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L208088%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx208030%_
                                                        _%L208090%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx208030%_
                                                        _%L208088%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L208090%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L208088%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208033208051%_
                                                      _%g208034208055%_)))
                                               _%hd208044208082%_
                                               _%hd208041208072%_)
                                              (_%g208033208051%_
                                               _%g208034208055%_))))
                                      (_%g208033208051%_ _%g208034208055%_))))
                              (_%g208033208051%_ _%g208034208055%_))))
                      (_%g208033208051%_ _%g208034208055%_)))))
          (_%g208032208106%_ _%stx208030%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx208110%_)
        (let* ((_%g208113208137%_
                (lambda (_%g208114208133%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208114208133%_))))
               (_%g208112208420%_
                (lambda (_%g208114208141%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208114208141%_))
                      (let ((_%e208117208144%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208114208141%_))))
                        (let ((_%hd208118208148%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208117208144%_)))
                              (_%tl208119208151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208117208144%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208119208151%_))
                              (let ((_%e208120208154%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208119208151%_))))
                                (let ((_%hd208121208158%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208120208154%_)))
                                      (_%tl208122208161%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208120208154%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208122208161%_))
                                      (let ((_g210482_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl208122208161%_
                                                '0))))
                                        (begin
                                          (let ((_g210483_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210482_)
                                                       (##values-length
                                                        _g210482_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210483_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210483_)))
                                          (let ((_%target208123208164%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210482_ 0)))
                                                (_%tl208125208167%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210482_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208125208167%_))
                                                (letrec ((_%loop208126208170%_
                                                          (lambda (_%hd208124208174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature208130208177%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd208124208174%_))
                        (let ((_%e208127208180%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd208124208174%_))))
                          (let ((_%lp-hd208128208184%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208127208180%_)))
                                (_%lp-tl208129208187%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208127208180%_))))
                            (_%loop208126208170%_
                             _%lp-tl208129208187%_
                             (cons _%lp-hd208128208184%_
                                   _%signature208130208177%_))))
                        (let ((_%signature208131208190%_
                               (reverse _%signature208130208177%_)))
                          ((lambda (_%L208194%_ _%L208196%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L208196%_))
                                 (let* ((_%g208214208229%_
                                         (lambda (_%g208215208225%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208215208225%_))))
                                        (_%g208213208408%_
                                         (lambda (_%g208215208233%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g208215208233%_))
                                               (let ((_%e208218208236%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g208215208233%_))))
                                                 (let ((_%hd208219208240%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208218208236%_)))
                                                       (_%tl208220208243%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208218208236%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl208220208243%_))
                                                       (let ((_%e208221208246%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl208220208243%_))))
                 (let ((_%hd208222208250%_
                        (let ()
                          (declare (not safe))
                          (##car _%e208221208246%_)))
                       (_%tl208223208253%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e208221208246%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl208223208253%_))
                       ((lambda (_%L208256%_ _%L208258%_)
                          (let* ((_%g208274208282%_
                                  (lambda (_%g208275208278%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g208275208278%_))))
                                 (_%g208273208404%_
                                  (lambda (_%g208275208286%_)
                                    ((lambda (_%L208289%_)
                                       (let* ((_%unchecked208302%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L208256%_))
                                              (_%g208305208313%_
                                               (lambda (_%g208306208309%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g208306208309%_))))
                                              (_%g208304208336%_
                                               (lambda (_%g208306208317%_)
                                                 ((lambda (_%L208320%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L208289%_
                                                                (cons _%L208320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g208306208317%_))))
                                         (_%g208304208336%_
                                          (if _%unchecked208302%_
                                              (let* ((_%g208340208355%_
                                                      (lambda (_%g208341208351%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g208341208351%_))))
                                                     (_%g208339208400%_
                                                      (lambda (_%g208341208359%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g208341208359%_))
                                                            (let ((_%e208344208362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g208341208359%_))))
                      (let ((_%hd208345208366%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208344208362%_)))
                            (_%tl208346208369%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208344208362%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl208346208369%_))
                            (let ((_%e208347208372%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl208346208369%_))))
                              (let ((_%hd208348208376%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e208347208372%_)))
                                    (_%tl208349208379%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e208347208372%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl208349208379%_))
                                    ((lambda (_%L208382%_ _%L208384%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L208384%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L208258%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L208382%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd208348208376%_
                                     _%hd208345208366%_)
                                    (_%g208340208355%_ _%g208341208359%_))))
                            (_%g208340208355%_ _%g208341208359%_))))
                    (_%g208340208355%_ _%g208341208359%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g208339208400%_
                                                 _%unchecked208302%_))
                                              '(begin)))))
                                     _%g208275208286%_))))
                            (_%g208273208404%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L208196%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L208258%_ '()))
                   (cons '#f (cons 'signature: (cons _%L208256%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd208222208250%_
                        _%hd208219208240%_)
                       (_%g208214208229%_ _%g208215208233%_))))
               (_%g208214208229%_ _%g208215208233%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208214208229%_
                                                _%g208215208233%_)))))
                                   (_%g208213208408%_
                                    (|gxc[1]#parse-signature|
                                     _%stx208110%_
                                     _%L208196%_
                                     (let ((__tmp210484
                                            (lambda (_%g208411208414%_
                                                     _%g208412208417%_)
                                              (cons _%g208411208414%_
                                                    _%g208412208417%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp210484
                                        '()
                                        _%L208194%_)))))
                                 (_%g208113208137%_ _%g208114208141%_)))
                           _%signature208131208190%_
                           _%hd208121208158%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop208126208170%_
                                                   _%target208123208164%_
                                                   '()))
                                                (_%g208113208137%_
                                                 _%g208114208141%_)))))
                                      (_%g208113208137%_ _%g208114208141%_))))
                              (_%g208113208137%_ _%g208114208141%_))))
                      (_%g208113208137%_ _%g208114208141%_)))))
          (_%g208112208420%_ _%stx208110%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx208425%_)
        (let* ((_%g208428208452%_
                (lambda (_%g208429208448%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208429208448%_))))
               (_%g208427209335%_
                (lambda (_%g208429208456%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208429208456%_))
                      (let ((_%e208432208459%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208429208456%_))))
                        (let ((_%hd208433208463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208432208459%_)))
                              (_%tl208434208466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208432208459%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208434208466%_))
                              (let ((_%e208435208469%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208434208466%_))))
                                (let ((_%hd208436208473%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208435208469%_)))
                                      (_%tl208437208476%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208435208469%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208437208476%_))
                                      (let ((_g210485_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl208437208476%_
                                                '0))))
                                        (begin
                                          (let ((_g210486_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210485_)
                                                       (##values-length
                                                        _g210485_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210486_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210486_)))
                                          (let ((_%target208438208479%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210485_ 0)))
                                                (_%tl208440208482%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210485_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208440208482%_))
                                                (letrec ((_%loop208441208485%_
                                                          (lambda (_%hd208439208489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature208445208492%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd208439208489%_))
                        (let ((_%e208442208495%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd208439208489%_))))
                          (let ((_%lp-hd208443208499%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208442208495%_)))
                                (_%lp-tl208444208502%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208442208495%_))))
                            (_%loop208441208485%_
                             _%lp-tl208444208502%_
                             (cons _%lp-hd208443208499%_
                                   _%case-signature208445208492%_))))
                        (let ((_%case-signature208446208505%_
                               (reverse _%case-signature208445208492%_)))
                          ((lambda (_%L208509%_ _%L208511%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L208511%_))
                                 (let* ((_%signatures208542%_
                                         (map (lambda (_%g208528208530%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx208425%_
                                                 _%L208511%_
                                                 _%g208528208530%_))
                                              (let ((__tmp210487
                                                     (lambda (_%g208533208536%_
                                                              _%g208534208539%_)
                                                       (cons _%g208533208536%_
                                                             _%g208534208539%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp210487
                                                 '()
                                                 _%L208509%_))))
                                        (_%g208545208571%_
                                         (lambda (_%g208546208567%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208546208567%_))))
                                        (_%g208544209331%_
                                         (lambda (_%g208546208575%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g208546208575%_))
                                               (let ((_g210488_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g208546208575%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g210489_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g210488_)
                        (##values-length _g210488_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g210489_ 2)))
                 (error "Context expects 2 values" _g210489_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target208549208578%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g210488_
                                                             0)))
                                                         (_%tl208551208581%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g210488_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208551208581%_))
                                                         (letrec ((_%loop208552208584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd208550208588%_
                                    _%sig208556208591%_
                                    _%arity208557208593%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd208550208588%_))
                                 (let ((_%e208553208596%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd208550208588%_))))
                                   (let ((_%lp-hd208554208600%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208553208596%_)))
                                         (_%lp-tl208555208603%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208553208596%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd208554208600%_))
                                         (let ((_%e208560208606%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd208554208600%_))))
                                           (let ((_%hd208561208610%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208560208606%_)))
                                                 (_%tl208562208613%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208560208606%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208562208613%_))
                                                 (let ((_%e208563208616%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208562208613%_))))
                                                   (let ((_%hd208564208620%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208563208616%_)))
                                                         (_%tl208565208623%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208563208616%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208565208623%_))
                                                         (_%loop208552208584%_
                                                          _%lp-tl208555208603%_
                                                          (cons _%hd208564208620%_
                                                                _%sig208556208591%_)
                                                          (cons _%hd208561208610%_
                                                                _%arity208557208593%_))
                                                         (_%g208545208571%_
                                                          _%g208546208575%_))))
                                                 (_%g208545208571%_
                                                  _%g208546208575%_))))
                                         (_%g208545208571%_
                                          _%g208546208575%_))))
                                 (let ((_%sig208558208626%_
                                        (reverse _%sig208556208591%_))
                                       (_%arity208559208629%_
                                        (reverse _%arity208557208593%_)))
                                   ((lambda (_%L208632%_ _%L208634%_)
                                      (let* ((_%g208651208659%_
                                              (lambda (_%g208652208655%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g208652208655%_))))
                                             (_%g208650209316%_
                                              (lambda (_%g208652208663%_)
                                                ((lambda (_%L208666%_)
                                                   (let* ((_%g208679208687%_
                                                           (lambda (_%g208680208683%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g208680208683%_))))
                  (_%g208678208709%_
                   (lambda (_%g208680208691%_)
                     ((lambda (_%L208694%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L208666%_ (cons _%L208694%_ '()))))
                      _%g208680208691%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208678208709%_
                                                      (let ((_g210490_
                                                             (let _%loop208713%_ ((_%rest208716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures208542%_)
                                          (_%unchecked-proc208718%_ '#f)
                                          (_%unchecked-clauses208719%_ '()))
                       (let* ((_%rest208720208728%_ _%rest208716%_)
                              (_%else208722208740%_
                               (lambda ()
                                 (values _%unchecked-proc208718%_
                                         (reverse!
                                          _%unchecked-clauses208719%_))))
                              (_%K208724209181%_
                               (lambda (_%rest208744%_ _%hd208746%_)
                                 (let* ((_%g208748208835%_
                                         (lambda (_%g208749208831%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208749208831%_))))
                                        (_%g208747209177%_
                                         (lambda (_%g208749208839%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g208749208839%_))
                                               (let ((_%e208756208842%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g208749208839%_))))
                                                 (let ((_%hd208757208846%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208756208842%_)))
                                                       (_%tl208758208849%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208756208842%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl208758208849%_))
                                                       (let ((_%e208759208852%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl208758208849%_))))
                 (let ((_%hd208760208856%_
                        (let ()
                          (declare (not safe))
                          (##car _%e208759208852%_)))
                       (_%tl208761208859%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e208759208852%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd208760208856%_))
                       (let ((_%e208762208862%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd208760208856%_))))
                         (let ((_%hd208763208866%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e208762208862%_)))
                               (_%tl208764208869%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e208762208862%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl208764208869%_))
                               (let ((_%e208765208872%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl208764208869%_))))
                                 (let ((_%hd208766208876%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e208765208872%_)))
                                       (_%tl208767208879%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e208765208872%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd208766208876%_))
                                       (let ((_%e208768208882%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd208766208876%_))))
                                         (if (equal? _%e208768208882%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208767208879%_))
                                                 (let ((_%e208769208886%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208767208879%_))))
                                                   (let ((_%hd208770208890%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208769208886%_)))
                                                         (_%tl208771208893%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208769208886%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd208770208890%_))
                                                         (let ((_%e208772208896%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd208770208890%_))))
                   (let ((_%hd208773208900%_
                          (let ()
                            (declare (not safe))
                            (##car _%e208772208896%_)))
                         (_%tl208774208903%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e208772208896%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd208773208900%_))
                         (if (let ((__tmp210492 |gxc[1]#_g210493_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp210492
                                _%hd208773208900%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl208774208903%_))
                                 (let ((_%e208775208906%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl208774208903%_))))
                                   (let ((_%hd208776208910%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208775208906%_)))
                                         (_%tl208777208913%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208775208906%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl208777208913%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl208771208893%_))
                                             (let ((_%e208778208916%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl208771208893%_))))
                                               (let ((_%hd208779208920%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208778208916%_)))
                                                     (_%tl208780208923%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208778208916%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd208779208920%_))
                                                     (let ((_%e208781208926%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd208779208920%_))))
                                                       (if (equal? _%e208781208926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl208780208923%_))
                       (let ((_%e208782208930%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl208780208923%_))))
                         (let ((_%hd208783208934%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e208782208930%_)))
                               (_%tl208784208937%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e208782208930%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd208783208934%_))
                               (let ((_%e208785208940%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd208783208934%_))))
                                 (let ((_%hd208786208944%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e208785208940%_)))
                                       (_%tl208787208947%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e208785208940%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd208786208944%_))
                                       (if (let ((__tmp210494
                                                  |gxc[1]#_g210495_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp210494
                                              _%hd208786208944%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl208787208947%_))
                                               (let ((_%e208788208950%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl208787208947%_))))
                                                 (let ((_%hd208789208954%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208788208950%_)))
                                                       (_%tl208790208957%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208788208950%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl208790208957%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl208784208937%_))
                                                           (let ((_%e208791208960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl208784208937%_))))
                     (let ((_%hd208792208964%_
                            (let ()
                              (declare (not safe))
                              (##car _%e208791208960%_)))
                           (_%tl208793208967%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e208791208960%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd208792208964%_))
                           (let ((_%e208794208970%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd208792208964%_))))
                             (if (equal? _%e208794208970%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl208793208967%_))
                                     (let ((_%e208795208974%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl208793208967%_))))
                                       (let ((_%hd208796208978%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e208795208974%_)))
                                             (_%tl208797208981%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e208795208974%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd208796208978%_))
                                             (let ((_%e208798208984%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd208796208978%_))))
                                               (let ((_%hd208799208988%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208798208984%_)))
                                                     (_%tl208800208991%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208798208984%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd208799208988%_))
                                                     (if (let ((__tmp210496
                                                                |gxc[1]#_g210497_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp210496
                                                            _%hd208799208988%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl208800208991%_))
                     (let ((_%e208801208994%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl208800208991%_))))
                       (let ((_%hd208802208998%_
                              (let ()
                                (declare (not safe))
                                (##car _%e208801208994%_)))
                             (_%tl208803209001%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e208801208994%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl208803209001%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl208797208981%_))
                                 (let ((_%e208804209004%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl208797208981%_))))
                                   (let ((_%hd208805209008%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208804209004%_)))
                                         (_%tl208806209011%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208804209004%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd208805209008%_))
                                         (let ((_%e208807209014%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd208805209008%_))))
                                           (if (equal? _%e208807209014%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl208806209011%_))
                                                   (let ((_%e208808209018%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl208806209011%_))))
                                                     (let ((_%hd208809209022%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e208808209018%_)))
                                                           (_%tl208810209025%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e208808209018%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd208809209022%_))
                                                           (let ((_%e208811209028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd208809209022%_))))
                     (let ((_%hd208812209032%_
                            (let ()
                              (declare (not safe))
                              (##car _%e208811209028%_)))
                           (_%tl208813209035%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e208811209028%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd208812209032%_))
                           (if (let ((__tmp210498 |gxc[1]#_g210499_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp210498
                                  _%hd208812209032%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl208813209035%_))
                                   (let ((_%e208814209038%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl208813209035%_))))
                                     (let ((_%hd208815209042%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e208814209038%_)))
                                           (_%tl208816209045%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e208814209038%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl208816209045%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl208810209025%_))
                                               (let ((_%e208817209048%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl208810209025%_))))
                                                 (let ((_%hd208818209052%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208817209048%_)))
                                                       (_%tl208819209055%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208817209048%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd208818209052%_))
                                                       (let ((_%e208820209058%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd208818209052%_))))
                 (if (equal? _%e208820209058%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl208819209055%_))
                         (let ((_%e208821209062%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl208819209055%_))))
                           (let ((_%hd208822209066%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e208821209062%_)))
                                 (_%tl208823209069%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e208821209062%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd208822209066%_))
                                 (let ((_%e208824209072%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd208822209066%_))))
                                   (let ((_%hd208825209076%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208824209072%_)))
                                         (_%tl208826209079%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208824209072%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd208825209076%_))
                                         (if (let ((__tmp210500
                                                    |gxc[1]#_g210501_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp210500
                                                _%hd208825209076%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208826209079%_))
                                                 (let ((_%e208827209082%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208826209079%_))))
                                                   (let ((_%hd208828209086%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208827209082%_)))
                                                         (_%tl208829209089%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208827209082%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208829209089%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl208823209069%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl208761208859%_))
                         ((lambda (_%L209092%_
                                   _%L209094%_
                                   _%L209095%_
                                   _%L209096%_
                                   _%L209097%_
                                   _%L209098%_)
                            (let ((_%clause209169%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L209098%_ '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L209096%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209092%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked209171%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L209094%_))))
                              (_%loop208713%_
                               _%rest208744%_
                               (let ((_%$e209173%_ _%unchecked209171%_))
                                 (if _%$e209173%_
                                     _%$e209173%_
                                     _%unchecked-proc208718%_))
                               (cons _%clause209169%_
                                     _%unchecked-clauses208719%_))))
                          _%hd208828209086%_
                          _%hd208815209042%_
                          _%hd208802208998%_
                          _%hd208789208954%_
                          _%hd208776208910%_
                          _%hd208757208846%_)
                         (_%g208748208835%_ _%g208749208839%_))
                     (_%g208748208835%_ _%g208749208839%_))
                 (_%g208748208835%_ _%g208749208839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g208748208835%_
                                                  _%g208749208839%_))
                                             (_%g208748208835%_
                                              _%g208749208839%_))
                                         (_%g208748208835%_
                                          _%g208749208839%_))))
                                 (_%g208748208835%_ _%g208749208839%_))))
                         (_%g208748208835%_ _%g208749208839%_))
                     (_%g208748208835%_ _%g208749208839%_)))
               (_%g208748208835%_ _%g208749208839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208748208835%_
                                                _%g208749208839%_))
                                           (_%g208748208835%_
                                            _%g208749208839%_))))
                                   (_%g208748208835%_ _%g208749208839%_))
                               (_%g208748208835%_ _%g208749208839%_))
                           (_%g208748208835%_ _%g208749208839%_))))
                   (_%g208748208835%_ _%g208749208839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g208748208835%_
                                                    _%g208749208839%_))
                                               (_%g208748208835%_
                                                _%g208749208839%_)))
                                         (_%g208748208835%_
                                          _%g208749208839%_))))
                                 (_%g208748208835%_ _%g208749208839%_))
                             (_%g208748208835%_ _%g208749208839%_))))
                     (_%g208748208835%_ _%g208749208839%_))
                 (_%g208748208835%_ _%g208749208839%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208748208835%_
                                                      _%g208749208839%_))))
                                             (_%g208748208835%_
                                              _%g208749208839%_))))
                                     (_%g208748208835%_ _%g208749208839%_))
                                 (_%g208748208835%_ _%g208749208839%_)))
                           (_%g208748208835%_ _%g208749208839%_))))
                   (_%g208748208835%_ _%g208749208839%_))
               (_%g208748208835%_ _%g208749208839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208748208835%_
                                                _%g208749208839%_))
                                           (_%g208748208835%_
                                            _%g208749208839%_))
                                       (_%g208748208835%_ _%g208749208839%_))))
                               (_%g208748208835%_ _%g208749208839%_))))
                       (_%g208748208835%_ _%g208749208839%_))
                   (_%g208748208835%_ _%g208749208839%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208748208835%_
                                                      _%g208749208839%_))))
                                             (_%g208748208835%_
                                              _%g208749208839%_))
                                         (_%g208748208835%_
                                          _%g208749208839%_))))
                                 (_%g208748208835%_ _%g208749208839%_))
                             (_%g208748208835%_ _%g208749208839%_))
                         (_%g208748208835%_ _%g208749208839%_))))
                 (_%g208748208835%_ _%g208749208839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g208748208835%_
                                                  _%g208749208839%_))
                                             (_%g208748208835%_
                                              _%g208749208839%_)))
                                       (_%g208748208835%_ _%g208749208839%_))))
                               (_%g208748208835%_ _%g208749208839%_))))
                       (_%g208748208835%_ _%g208749208839%_))))
               (_%g208748208835%_ _%g208749208839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208748208835%_
                                                _%g208749208839%_)))))
                                   (_%g208747209177%_ _%hd208746%_)))))
                         (if (pair? _%rest208720208728%_)
                             (let ((_%hd208725209185%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest208720208728%_)))
                                   (_%tl208726209188%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest208720208728%_))))
                               (let* ((_%hd209191%_ _%hd208725209185%_)
                                      (_%rest209194%_ _%tl208726209188%_))
                                 (_%K208724209181%_
                                  _%rest209194%_
                                  _%hd209191%_)))
                             (_%else208722208740%_))))))
                (begin
                  (let ((_g210491_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g210490_)
                               (##values-length _g210490_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g210491_ 2)))
                        (error "Context expects 2 values" _g210491_)))
                  (let ((_%unchecked-proc209197%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210490_ 0)))
                        (_%unchecked-clauses209199%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210490_ 1))))
                    (if _%unchecked-proc209197%_
                        (let* ((_%g209201209225%_
                                (lambda (_%g209202209221%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g209202209221%_))))
                               (_%g209200209312%_
                                (lambda (_%g209202209229%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g209202209229%_))
                                      (let ((_%e209205209232%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g209202209229%_))))
                                        (let ((_%hd209206209236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209205209232%_)))
                                              (_%tl209207209239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209205209232%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl209207209239%_))
                                              (let ((_%e209208209242%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl209207209239%_))))
                                                (let ((_%hd209209209246%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e209208209242%_)))
                                                      (_%tl209210209249%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e209208209242%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd209209209246%_))
                                                      (let ((_g210502_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd209209209246%_ '0))))
                (begin
                  (let ((_g210503_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g210502_)
                               (##values-length _g210502_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g210503_ 2)))
                        (error "Context expects 2 values" _g210503_)))
                  (let ((_%target209211209252%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210502_ 0)))
                        (_%tl209213209255%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210502_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl209213209255%_))
                        (letrec ((_%loop209214209258%_
                                  (lambda (_%hd209212209262%_
                                           _%clause209218209265%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd209212209262%_))
                                        (let ((_%e209215209268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd209212209262%_))))
                                          (let ((_%lp-hd209216209272%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e209215209268%_)))
                                                (_%lp-tl209217209275%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e209215209268%_))))
                                            (_%loop209214209258%_
                                             _%lp-tl209217209275%_
                                             (cons _%lp-hd209216209272%_
                                                   _%clause209218209265%_))))
                                        (let ((_%clause209219209278%_
                                               (reverse _%clause209218209265%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl209210209249%_))
                                              ((lambda (_%L209282%_
                                                        _%L209284%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L209284%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp210504
                                                    (lambda (_%g209303209306%_
                                                             _%g209304209309%_)
                                                      (cons _%g209303209306%_
                                                            _%g209304209309%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp210504
                                                '()
                                                _%L209282%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause209219209278%_
                                               _%hd209206209236%_)
                                              (_%g209201209225%_
                                               _%g209202209229%_)))))))
                          (_%loop209214209258%_ _%target209211209252%_ '()))
                        (_%g209201209225%_ _%g209202209229%_)))))
              (_%g209201209225%_ _%g209202209229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g209201209225%_
                                               _%g209202209229%_))))
                                      (_%g209201209225%_ _%g209202209229%_)))))
                          (_%g209200209312%_
                           (list _%unchecked-proc209197%_
                                 _%unchecked-clauses209199%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g208652208663%_))))
                                        (_%g208650209316%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L208511%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%L208632%_
                                          _%L208634%_))
                                       (let ((__tmp210505
                                              (lambda (_%g209319209323%_
                                                       _%g209320209326%_
                                                       _%g209321209328%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g209320209326%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g209319209323%_ '())))))
              _%g209321209328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp210505
                                          '()
                                          _%L208632%_
                                          _%L208634%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig208558208626%_
                                    _%arity208559208629%_))))))
                   (_%loop208552208584%_ _%target208549208578%_ '() '()))
                 (_%g208545208571%_ _%g208546208575%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208545208571%_
                                                _%g208546208575%_)))))
                                   (_%g208544209331%_ _%signatures208542%_))
                                 (_%g208428208452%_ _%g208429208456%_)))
                           _%case-signature208446208505%_
                           _%hd208436208473%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop208441208485%_
                                                   _%target208438208479%_
                                                   '()))
                                                (_%g208428208452%_
                                                 _%g208429208456%_)))))
                                      (_%g208428208452%_ _%g208429208456%_))))
                              (_%g208428208452%_ _%g208429208456%_))))
                      (_%g208428208452%_ _%g208429208456%_)))))
          (_%g208427209335%_ _%stx208425%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx209343%_)
        (let* ((_%__stx210325210326%_ _%$stx209343%_)
               (_%g209349209409%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx210325210326%_)))))
          (let ((_%__kont210328210329%_
                 (lambda (_%L209631%_ _%L209633%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209633%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L209633%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209631%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont210330210331%_
                 (lambda (_%L209556%_ _%L209558%_ _%L209559%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209559%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L209559%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209558%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209556%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont210332210333%_
                 (lambda (_%L209470%_ _%L209472%_ _%L209473%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209473%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L209473%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209472%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209470%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx210325210326%_))
                (let ((_%e209353209587%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx210325210326%_))))
                  (let ((_%tl209355209594%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209353209587%_)))
                        (_%hd209354209591%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209353209587%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl209355209594%_))
                        (let ((_%e209356209597%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl209355209594%_))))
                          (let ((_%tl209358209604%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e209356209597%_)))
                                (_%hd209357209601%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e209356209597%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd209357209601%_))
                                (let ((_%e209359209607%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd209357209601%_))))
                                  (if (equal? _%e209359209607%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl209358209604%_))
                                          (let ((_%e209360209611%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl209358209604%_))))
                                            (let ((_%tl209362209618%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e209360209611%_)))
                                                  (_%hd209361209615%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e209360209611%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl209362209618%_))
                                                  (let ((_%e209363209621%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl209362209618%_))))
                                                    (let ((_%tl209365209628%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e209363209621%_)))
                                                          (_%hd209364209625%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e209363209621%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl209365209628%_))
                                                          (_%__kont210328210329%_
                                                           _%hd209364209625%_
                                                           _%hd209361209615%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g209349209409%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g209349209409%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g209349209409%_)))
                                      (if (equal? _%e209359209607%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl209358209604%_))
                                              (let ((_%e209376209526%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl209358209604%_))))
                                                (let ((_%tl209378209533%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e209376209526%_)))
                                                      (_%hd209377209530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e209376209526%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl209378209533%_))
                                                      (let ((_%e209379209536%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl209378209533%_))))
                (let ((_%tl209381209543%_
                       (let () (declare (not safe)) (##cdr _%e209379209536%_)))
                      (_%hd209380209540%_
                       (let ()
                         (declare (not safe))
                         (##car _%e209379209536%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl209381209543%_))
                      (let ((_%e209382209546%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl209381209543%_))))
                        (let ((_%tl209384209553%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209382209546%_)))
                              (_%hd209383209550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209382209546%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl209384209553%_))
                              (_%__kont210330210331%_
                               _%hd209383209550%_
                               _%hd209380209540%_
                               _%hd209377209530%_)
                              (let ()
                                (declare (not safe))
                                (_%g209349209409%_)))))
                      (let () (declare (not safe)) (_%g209349209409%_)))))
              (let () (declare (not safe)) (_%g209349209409%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g209349209409%_)))
                                          (if (equal? _%e209359209607%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl209358209604%_))
                                                  (let ((_%e209395209440%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl209358209604%_))))
                                                    (let ((_%tl209397209447%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e209395209440%_)))
                                                          (_%hd209396209444%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e209395209440%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl209397209447%_))
                                                          (let ((_%e209398209450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl209397209447%_))))
                    (let ((_%tl209400209457%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e209398209450%_)))
                          (_%hd209399209454%_
                           (let ()
                             (declare (not safe))
                             (##car _%e209398209450%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl209400209457%_))
                          (let ((_%e209401209460%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl209400209457%_))))
                            (let ((_%tl209403209467%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e209401209460%_)))
                                  (_%hd209402209464%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e209401209460%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl209403209467%_))
                                  (_%__kont210332210333%_
                                   _%hd209402209464%_
                                   _%hd209399209454%_
                                   _%hd209396209444%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g209349209409%_)))))
                          (let () (declare (not safe)) (_%g209349209409%_)))))
                  (let () (declare (not safe)) (_%g209349209409%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g209349209409%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g209349209409%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g209349209409%_)))))
                        (let () (declare (not safe)) (_%g209349209409%_)))))
                (let () (declare (not safe)) (_%g209349209409%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx209655%_)
        (let* ((_%g209659209679%_
                (lambda (_%g209660209675%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209660209675%_))))
               (_%g209658209750%_
                (lambda (_%g209660209683%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209660209683%_))
                      (let ((_%e209662209686%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g209660209683%_))))
                        (let ((_%hd209663209690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209662209686%_)))
                              (_%tl209664209693%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209662209686%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl209664209693%_))
                              (let ((_g210506_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl209664209693%_
                                        '0))))
                                (begin
                                  (let ((_g210507_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210506_)
                                               (##values-length _g210506_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210507_ 2)))
                                        (error "Context expects 2 values"
                                               _g210507_)))
                                  (let ((_%target209665209696%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210506_ 0)))
                                        (_%tl209667209699%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210506_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl209667209699%_))
                                        (letrec ((_%loop209668209702%_
                                                  (lambda (_%hd209666209706%_
                                                           _%decl209672209709%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd209666209706%_))
                                                        (let ((_%e209669209712%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd209666209706%_))))
                  (let ((_%lp-hd209670209716%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209669209712%_)))
                        (_%lp-tl209671209719%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209669209712%_))))
                    (_%loop209668209702%_
                     _%lp-tl209671209719%_
                     (cons _%lp-hd209670209716%_ _%decl209672209709%_))))
                (let ((_%decl209673209722%_ (reverse _%decl209672209709%_)))
                  ((lambda (_%L209726%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp210508
                                  (lambda (_%g209741209744%_ _%g209742209747%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g209741209744%_)
                                          _%g209742209747%_))))
                             (declare (not safe))
                             (__foldr1 __tmp210508 '() _%L209726%_))))
                   _%decl209673209722%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop209668209702%_
                                           _%target209665209696%_
                                           '()))
                                        (_%g209659209679%_
                                         _%g209660209683%_)))))
                              (_%g209659209679%_ _%g209660209683%_))))
                      (_%g209659209679%_ _%g209660209683%_)))))
          (_%g209658209750%_ _%$stx209655%_))))))
