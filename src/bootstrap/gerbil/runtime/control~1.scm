(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g104384_|
    (gx#core-deserialize-mark
     '(0
       ($%arg103722 . _%$%arg103722103780%_)
       ($%arg103723 . _%$%arg103723103794%_)
       (id . _%id103747%_)
       (arg . _%arg103810%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g104385_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g104384_|)))
  (define |[1]#_g104386_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g104387_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g104386_|)))
  (define |[1]#_g104390_|
    (gx#core-deserialize-mark
     '(0
       ($%arg103843 . _%$%arg103843103900%_)
       (id . _%id103867%_)
       ($%arg103844 . _%$%arg103844103914%_)
       (arg . _%arg103930%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g104391_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g104390_|)))
  (define |[1]#_g104392_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g104393_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g104392_|)))
  (define |[1]#_g104396_|
    (gx#core-deserialize-mark
     '(0
       ($%arg103964 . _%$%arg103964104034%_)
       (id . _%id103987%_)
       ($%arg103963 . _%$%arg103963104020%_)
       (arg . _%arg104050%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g104397_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g104396_|)))
  (define |[1]#_g104398_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g104399_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g104398_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx103704%_)
        (let* ((_%$%g103709103730%_
                (lambda (_%$%g103710103726%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g103710103726%_)))
               (_%$%g103708103749%_
                (lambda (_%$%g103710103734%_)
                  ((lambda (_%$%g103724103737%_)
                     (if (gx#identifier? _%$%g103724103737%_)
                         (gx#datum->syntax '#f 'make-promise)
                         (_%$%g103709103730%_ _%$%g103710103734%_)))
                   _%$%g103710103734%_)))
               (_%$%g103707103820%_
                (lambda (_%$%g103710103753%_)
                  (if (gx#stx-pair? _%$%g103710103753%_)
                      (let ((_%$%e103712103756%_
                             (gx#syntax-e _%$%g103710103753%_)))
                        (let ((_%$%hd103713103760%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e103712103756%_)))
                              (_%$%tl103714103763%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e103712103756%_))))
                          (if (gx#stx-pair/null? _%$%tl103714103763%_)
                              (let ((_g104382_
                                     (gx#syntax-split-splice
                                      _%$%tl103714103763%_
                                      '0)))
                                (begin
                                  (let ((_g104383_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g104382_)
                                               (##values-length _g104382_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g104383_ 2)))
                                        (error "Context expects 2 values"
                                               _g104383_)))
                                  (let ((_%$%target103715103766%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g104382_ 0)))
                                        (_%$%tl103717103769%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g104382_ 1))))
                                    (if (gx#stx-null? _%$%tl103717103769%_)
                                        (letrec ((_%$%loop103718103772%_
                                                  (lambda (_%$%hd103716103776%_
                                                           _%$%arg103722103779%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd103716103776%_)
                                                        (let ((_%$%e103719103782%_
                                                               (gx#syntax-e
                                                                _%$%hd103716103776%_)))
                                                          (let ((_%$%lp-hd103720103786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e103719103782%_)))
                        (_%$%lp-tl103721103789%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e103719103782%_))))
                    (_%$%loop103718103772%_
                     _%$%lp-tl103721103789%_
                     (cons _%$%lp-hd103720103786%_ _%$%arg103722103779%_))))
                (let ((_%$%arg103723103792%_ (reverse _%$%arg103722103779%_)))
                  ((lambda (_%$%g103711103796%_)
                     (cons (gx#datum->syntax
                            |[1]#_g104385_|
                            'with-dispatch-arguments
                            '#f
                            '#f)
                           (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                       (cons (foldr (lambda (_%$%g103811103814%_
                                                             _%$%g103812103817%_)
                                                      (cons _%$%g103811103814%_
                                                            _%$%g103812103817%_))
                                                    '()
                                                    _%$%g103711103796%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax
                                              |[1]#_g104387_|
                                              'using
                                              '#f
                                              '#f)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'thunk)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              ':)
                             (cons (gx#datum->syntax '#f ':procedure) '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '__make-promise)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'thunk)
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%$%arg103723103792%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop103718103772%_
                                           _%$%target103715103766%_
                                           '()))
                                        (_%$%g103708103749%_
                                         _%$%g103710103753%_)))))
                              (_%$%g103708103749%_ _%$%g103710103753%_))))
                      (_%$%g103708103749%_ _%$%g103710103753%_)))))
          (_%$%g103707103820%_ _%$stx103704%_))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx103825%_)
        (let* ((_%$%g103830103851%_
                (lambda (_%$%g103831103847%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g103831103847%_)))
               (_%$%g103829103869%_
                (lambda (_%$%g103831103855%_)
                  ((lambda (_%$%g103845103858%_)
                     (if (gx#identifier? _%$%g103845103858%_)
                         (gx#datum->syntax '#f 'make-atomic-promise)
                         (_%$%g103830103851%_ _%$%g103831103855%_)))
                   _%$%g103831103855%_)))
               (_%$%g103828103940%_
                (lambda (_%$%g103831103873%_)
                  (if (gx#stx-pair? _%$%g103831103873%_)
                      (let ((_%$%e103833103876%_
                             (gx#syntax-e _%$%g103831103873%_)))
                        (let ((_%$%hd103834103880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e103833103876%_)))
                              (_%$%tl103835103883%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e103833103876%_))))
                          (if (gx#stx-pair/null? _%$%tl103835103883%_)
                              (let ((_g104388_
                                     (gx#syntax-split-splice
                                      _%$%tl103835103883%_
                                      '0)))
                                (begin
                                  (let ((_g104389_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g104388_)
                                               (##values-length _g104388_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g104389_ 2)))
                                        (error "Context expects 2 values"
                                               _g104389_)))
                                  (let ((_%$%target103836103886%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g104388_ 0)))
                                        (_%$%tl103838103889%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g104388_ 1))))
                                    (if (gx#stx-null? _%$%tl103838103889%_)
                                        (letrec ((_%$%loop103839103892%_
                                                  (lambda (_%$%hd103837103896%_
                                                           _%$%arg103843103899%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd103837103896%_)
                                                        (let ((_%$%e103840103902%_
                                                               (gx#syntax-e
                                                                _%$%hd103837103896%_)))
                                                          (let ((_%$%lp-hd103841103906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e103840103902%_)))
                        (_%$%lp-tl103842103909%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e103840103902%_))))
                    (_%$%loop103839103892%_
                     _%$%lp-tl103842103909%_
                     (cons _%$%lp-hd103841103906%_ _%$%arg103843103899%_))))
                (let ((_%$%arg103844103912%_ (reverse _%$%arg103843103899%_)))
                  ((lambda (_%$%g103832103916%_)
                     (cons (gx#datum->syntax
                            |[1]#_g104391_|
                            'with-dispatch-arguments
                            '#f
                            '#f)
                           (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                       (cons (foldr (lambda (_%$%g103931103934%_
                                                             _%$%g103932103937%_)
                                                      (cons _%$%g103931103934%_
                                                            _%$%g103932103937%_))
                                                    '()
                                                    _%$%g103832103916%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax
                                              |[1]#_g104393_|
                                              'using
                                              '#f
                                              '#f)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'thunk)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              ':)
                             (cons (gx#datum->syntax '#f ':procedure) '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '__make-atomic-promise)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'thunk)
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%$%arg103844103912%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop103839103892%_
                                           _%$%target103836103886%_
                                           '()))
                                        (_%$%g103829103869%_
                                         _%$%g103831103873%_)))))
                              (_%$%g103829103869%_ _%$%g103831103873%_))))
                      (_%$%g103829103869%_ _%$%g103831103873%_)))))
          (_%$%g103828103940%_ _%$stx103825%_))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx103945%_)
        (let* ((_%$%g103950103971%_
                (lambda (_%$%g103951103967%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g103951103967%_)))
               (_%$%g103949103989%_
                (lambda (_%$%g103951103975%_)
                  ((lambda (_%$%g103965103978%_)
                     (if (gx#identifier? _%$%g103965103978%_)
                         (gx#datum->syntax '#f 'with-unwind-protect)
                         (_%$%g103950103971%_ _%$%g103951103975%_)))
                   _%$%g103951103975%_)))
               (_%$%g103948104060%_
                (lambda (_%$%g103951103993%_)
                  (if (gx#stx-pair? _%$%g103951103993%_)
                      (let ((_%$%e103953103996%_
                             (gx#syntax-e _%$%g103951103993%_)))
                        (let ((_%$%hd103954104000%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e103953103996%_)))
                              (_%$%tl103955104003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e103953103996%_))))
                          (if (gx#stx-pair/null? _%$%tl103955104003%_)
                              (let ((_g104394_
                                     (gx#syntax-split-splice
                                      _%$%tl103955104003%_
                                      '0)))
                                (begin
                                  (let ((_g104395_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g104394_)
                                               (##values-length _g104394_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g104395_ 2)))
                                        (error "Context expects 2 values"
                                               _g104395_)))
                                  (let ((_%$%target103956104006%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g104394_ 0)))
                                        (_%$%tl103958104009%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g104394_ 1))))
                                    (if (gx#stx-null? _%$%tl103958104009%_)
                                        (letrec ((_%$%loop103959104012%_
                                                  (lambda (_%$%hd103957104016%_
                                                           _%$%arg103963104019%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd103957104016%_)
                                                        (let ((_%$%e103960104022%_
                                                               (gx#syntax-e
                                                                _%$%hd103957104016%_)))
                                                          (let ((_%$%lp-hd103961104026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e103960104022%_)))
                        (_%$%lp-tl103962104029%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e103960104022%_))))
                    (_%$%loop103959104012%_
                     _%$%lp-tl103962104029%_
                     (cons _%$%lp-hd103961104026%_ _%$%arg103963104019%_))))
                (let ((_%$%arg103964104032%_ (reverse _%$%arg103963104019%_)))
                  ((lambda (_%$%g103952104036%_)
                     (cons (gx#datum->syntax
                            |[1]#_g104397_|
                            'with-dispatch-arguments
                            '#f
                            '#f)
                           (cons (cons (cons (gx#datum->syntax '#f 'K)
                                             (cons (gx#datum->syntax '#f 'fini)
                                                   '()))
                                       (cons (foldr (lambda (_%$%g104051104054%_
                                                             _%$%g104052104057%_)
                                                      (cons _%$%g104051104054%_
                                                            _%$%g104052104057%_))
                                                    '()
                                                    _%$%g103952104036%_)
                                             '()))
                                 (cons (cons (gx#datum->syntax
                                              |[1]#_g104399_|
                                              'using
                                              '#f
                                              '#f)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'K)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              ':)
                             (cons (gx#datum->syntax '#f ':procedure) '())))
                 (cons (cons (gx#datum->syntax '#f 'fini)
                             (cons (gx#datum->syntax '#f ':)
                                   (cons (gx#datum->syntax '#f ':procedure)
                                         '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '__with-unwind-protect)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'K)
                             (cons (gx#datum->syntax '#f 'fini) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%$%arg103964104032%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop103959104012%_
                                           _%$%target103956104006%_
                                           '()))
                                        (_%$%g103949103989%_
                                         _%$%g103951103993%_)))))
                              (_%$%g103949103989%_ _%$%g103951103993%_))))
                      (_%$%g103949103989%_ _%$%g103951103993%_)))))
          (_%$%g103948104060%_ _%$stx103945%_))))))
