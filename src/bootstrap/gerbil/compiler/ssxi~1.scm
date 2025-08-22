(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g213937_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g213944_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g213946_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g213948_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g213950_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g213952_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g213964_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g213966_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g213968_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g213970_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g213972_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx207355%_)
        (let* ((_%g207359207377%_
                (lambda (_%g207360207373%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207360207373%_))))
               (_%g207358207432%_
                (lambda (_%g207360207381%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207360207381%_))
                      (let ((_%e207363207384%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207360207381%_))))
                        (let ((_%hd207364207388%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207363207384%_)))
                              (_%tl207365207391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207363207384%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207365207391%_))
                              (let ((_%e207366207394%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207365207391%_))))
                                (let ((_%hd207367207398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207366207394%_)))
                                      (_%tl207368207401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207366207394%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207368207401%_))
                                      (let ((_%e207369207404%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl207368207401%_))))
                                        (let ((_%hd207370207408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207369207404%_)))
                                              (_%tl207371207411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207369207404%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207371207411%_))
                                              ((lambda (_%L207414%_
                                                        _%L207416%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L207416%_))
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
                               (cons _%L207416%_ '()))
                         (cons _%L207414%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207359207377%_
                                                      _%g207360207381%_)))
                                               _%hd207370207408%_
                                               _%hd207367207398%_)
                                              (_%g207359207377%_
                                               _%g207360207381%_))))
                                      (_%g207359207377%_ _%g207360207381%_))))
                              (_%g207359207377%_ _%g207360207381%_))))
                      (_%g207359207377%_ _%g207360207381%_)))))
          (_%g207358207432%_ _%$stx207355%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx207436%_)
        (let* ((_%g207440207458%_
                (lambda (_%g207441207454%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207441207454%_))))
               (_%g207439207513%_
                (lambda (_%g207441207462%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207441207462%_))
                      (let ((_%e207444207465%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207441207462%_))))
                        (let ((_%hd207445207469%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207444207465%_)))
                              (_%tl207446207472%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207444207465%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207446207472%_))
                              (let ((_%e207447207475%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207446207472%_))))
                                (let ((_%hd207448207479%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207447207475%_)))
                                      (_%tl207449207482%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207447207475%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207449207482%_))
                                      (let ((_%e207450207485%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl207449207482%_))))
                                        (let ((_%hd207451207489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207450207485%_)))
                                              (_%tl207452207492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207450207485%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207452207492%_))
                                              ((lambda (_%L207495%_
                                                        _%L207497%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L207497%_))
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
                               (cons _%L207497%_ '()))
                         (cons _%L207495%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207440207458%_
                                                      _%g207441207462%_)))
                                               _%hd207451207489%_
                                               _%hd207448207479%_)
                                              (_%g207440207458%_
                                               _%g207441207462%_))))
                                      (_%g207440207458%_ _%g207441207462%_))))
                              (_%g207440207458%_ _%g207441207462%_))))
                      (_%g207440207458%_ _%g207441207462%_)))))
          (_%g207439207513%_ _%$stx207436%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx207517%_)
        (let* ((_%g207521207550%_
                (lambda (_%g207522207546%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207522207546%_))))
               (_%g207520207650%_
                (lambda (_%g207522207554%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207522207554%_))
                      (let ((_%e207525207557%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207522207554%_))))
                        (let ((_%hd207526207561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207525207557%_)))
                              (_%tl207527207564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207525207557%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl207527207564%_))
                              (let ((_g213915_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl207527207564%_
                                        '0))))
                                (begin
                                  (let ((_g213916_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g213915_)
                                               (##values-length _g213915_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g213916_ 2)))
                                        (error "Context expects 2 values"
                                               _g213916_)))
                                  (let ((_%target207528207567%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213915_ 0)))
                                        (_%tl207530207570%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213915_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207530207570%_))
                                        (letrec ((_%loop207531207573%_
                                                  (lambda (_%hd207529207577%_
                                                           _%type207535207580%_
                                                           _%symbol207536207582%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd207529207577%_))
                                                        (let ((_%e207532207585%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd207529207577%_))))
                  (let ((_%lp-hd207533207589%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207532207585%_)))
                        (_%lp-tl207534207592%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207532207585%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd207533207589%_))
                        (let ((_%e207539207595%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd207533207589%_))))
                          (let ((_%hd207540207599%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207539207595%_)))
                                (_%tl207541207602%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207539207595%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl207541207602%_))
                                (let ((_%e207542207605%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl207541207602%_))))
                                  (let ((_%hd207543207609%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207542207605%_)))
                                        (_%tl207544207612%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207542207605%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207544207612%_))
                                        (_%loop207531207573%_
                                         _%lp-tl207534207592%_
                                         (cons _%hd207543207609%_
                                               _%type207535207580%_)
                                         (cons _%hd207540207599%_
                                               _%symbol207536207582%_))
                                        (_%g207521207550%_
                                         _%g207522207554%_))))
                                (_%g207521207550%_ _%g207522207554%_))))
                        (_%g207521207550%_ _%g207522207554%_))))
                (let ((_%type207537207615%_ (reverse _%type207535207580%_))
                      (_%symbol207538207618%_
                       (reverse _%symbol207536207582%_)))
                  ((lambda (_%L207621%_ _%L207623%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L207621%_
                                _%L207623%_))
                             (let ((__tmp213917
                                    (lambda (_%g207638207642%_
                                             _%g207639207645%_
                                             _%g207640207647%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g207639207645%_
                                                        (cons _%g207638207642%_
                                                              '())))
                                            _%g207640207647%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp213917
                                '()
                                _%L207621%_
                                _%L207623%_)))))
                   _%type207537207615%_
                   _%symbol207538207618%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop207531207573%_
                                           _%target207528207567%_
                                           '()
                                           '()))
                                        (_%g207521207550%_
                                         _%g207522207554%_)))))
                              (_%g207521207550%_ _%g207522207554%_))))
                      (_%g207521207550%_ _%g207522207554%_)))))
          (_%g207520207650%_ _%$stx207517%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx207655%_)
        (let* ((_%__stx213226213227%_ _%$stx207655%_)
               (_%g207660207702%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx213226213227%_)))))
          (let ((_%__kont213229213230%_
                 (lambda (_%L207830%_ _%L207832%_ _%L207833%_ _%L207834%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L207834%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L207833%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L207832%_ '()))
                                           (cons _%L207830%_ '())))))))
                (_%__kont213231213232%_
                 (lambda (_%L207749%_ _%L207751%_ _%L207752%_ _%L207753%_)
                   (cons _%L207753%_
                         (cons _%L207752%_
                               (cons _%L207751%_
                                     (cons _%L207749%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match213265213266%_
                   (lambda (_%e207666207780%_
                            _%hd207667207784%_
                            _%tl207668207787%_
                            _%e207669207790%_
                            _%hd207670207794%_
                            _%tl207671207797%_
                            _%e207672207800%_
                            _%hd207673207804%_
                            _%tl207674207807%_
                            _%e207675207810%_
                            _%hd207676207814%_
                            _%tl207677207817%_
                            _%e207678207820%_
                            _%hd207679207824%_
                            _%tl207680207827%_)
                     (let ((_%L207830%_ _%hd207679207824%_)
                           (_%L207832%_ _%hd207676207814%_)
                           (_%L207833%_ _%hd207673207804%_)
                           (_%L207834%_ _%hd207670207794%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L207834%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L207833%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L207832%_)))
                           (_%__kont213229213230%_
                            _%L207830%_
                            _%L207832%_
                            _%L207833%_
                            _%L207834%_)
                           (let ()
                             (declare (not safe))
                             (_%g207660207702%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx213226213227%_))
                  (let ((_%e207666207780%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx213226213227%_))))
                    (let ((_%tl207668207787%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207666207780%_)))
                          (_%hd207667207784%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207666207780%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207668207787%_))
                          (let ((_%e207669207790%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl207668207787%_))))
                            (let ((_%tl207671207797%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207669207790%_)))
                                  (_%hd207670207794%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207669207790%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl207671207797%_))
                                  (let ((_%e207672207800%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl207671207797%_))))
                                    (let ((_%tl207674207807%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207672207800%_)))
                                          (_%hd207673207804%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207672207800%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl207674207807%_))
                                          (let ((_%e207675207810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl207674207807%_))))
                                            (let ((_%tl207677207817%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e207675207810%_)))
                                                  (_%hd207676207814%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e207675207810%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207677207817%_))
                                                  (let ((_%e207678207820%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl207677207817%_))))
                                                    (let ((_%tl207680207827%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207678207820%_)))
                                                          (_%hd207679207824%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207678207820%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl207680207827%_))
                                                          (_%__match213265213266%_
                                                           _%e207666207780%_
                                                           _%hd207667207784%_
                                                           _%tl207668207787%_
                                                           _%e207669207790%_
                                                           _%hd207670207794%_
                                                           _%tl207671207797%_
                                                           _%e207672207800%_
                                                           _%hd207673207804%_
                                                           _%tl207674207807%_
                                                           _%e207675207810%_
                                                           _%hd207676207814%_
                                                           _%tl207677207817%_
                                                           _%e207678207820%_
                                                           _%hd207679207824%_
                                                           _%tl207680207827%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g207660207702%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl207677207817%_))
                                                      (_%__kont213231213232%_
                                                       _%hd207676207814%_
                                                       _%hd207673207804%_
                                                       _%hd207670207794%_
                                                       _%hd207667207784%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g207660207702%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g207660207702%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g207660207702%_)))))
                          (let () (declare (not safe)) (_%g207660207702%_)))))
                  (let () (declare (not safe)) (_%g207660207702%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx207859%_)
        (let* ((_%g207863207898%_
                (lambda (_%g207864207894%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207864207894%_))))
               (_%g207862208017%_
                (lambda (_%g207864207902%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207864207902%_))
                      (let ((_%e207868207905%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207864207902%_))))
                        (let ((_%hd207869207909%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207868207905%_)))
                              (_%tl207870207912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207868207905%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl207870207912%_))
                              (let ((_g213918_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl207870207912%_
                                        '0))))
                                (begin
                                  (let ((_g213919_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g213918_)
                                               (##values-length _g213918_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g213919_ 2)))
                                        (error "Context expects 2 values"
                                               _g213919_)))
                                  (let ((_%target207871207915%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213918_ 0)))
                                        (_%tl207873207918%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213918_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207873207918%_))
                                        (letrec ((_%loop207874207921%_
                                                  (lambda (_%hd207872207925%_
                                                           _%symbol207878207928%_
                                                           _%method207879207930%_
                                                           _%type-t207880207932%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd207872207925%_))
                                                        (let ((_%e207875207935%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd207872207925%_))))
                  (let ((_%lp-hd207876207939%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207875207935%_)))
                        (_%lp-tl207877207942%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207875207935%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd207876207939%_))
                        (let ((_%e207884207945%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd207876207939%_))))
                          (let ((_%hd207885207949%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207884207945%_)))
                                (_%tl207886207952%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207884207945%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl207886207952%_))
                                (let ((_%e207887207955%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl207886207952%_))))
                                  (let ((_%hd207888207959%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207887207955%_)))
                                        (_%tl207889207962%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207887207955%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl207889207962%_))
                                        (let ((_%e207890207965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl207889207962%_))))
                                          (let ((_%hd207891207969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e207890207965%_)))
                                                (_%tl207892207972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e207890207965%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207892207972%_))
                                                (_%loop207874207921%_
                                                 _%lp-tl207877207942%_
                                                 (cons _%hd207891207969%_
                                                       _%symbol207878207928%_)
                                                 (cons _%hd207888207959%_
                                                       _%method207879207930%_)
                                                 (cons _%hd207885207949%_
                                                       _%type-t207880207932%_))
                                                (_%g207863207898%_
                                                 _%g207864207902%_))))
                                        (_%g207863207898%_
                                         _%g207864207902%_))))
                                (_%g207863207898%_ _%g207864207902%_))))
                        (_%g207863207898%_ _%g207864207902%_))))
                (let ((_%symbol207881207975%_ (reverse _%symbol207878207928%_))
                      (_%method207882207978%_ (reverse _%method207879207930%_))
                      (_%type-t207883207980%_
                       (reverse _%type-t207880207932%_)))
                  ((lambda (_%L207983%_ _%L207985%_ _%L207986%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L207983%_
                                _%L207985%_
                                _%L207986%_))
                             (let ((__tmp213920
                                    (lambda (_%g208002208007%_
                                             _%g208003208010%_
                                             _%g208004208012%_
                                             _%g208005208014%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g208004208012%_
                                                        (cons _%g208003208010%_
                                                              (cons _%g208002208007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g208005208014%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp213920
                                '()
                                _%L207983%_
                                _%L207985%_
                                _%L207986%_)))))
                   _%symbol207881207975%_
                   _%method207882207978%_
                   _%type-t207883207980%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop207874207921%_
                                           _%target207871207915%_
                                           '()
                                           '()
                                           '()))
                                        (_%g207863207898%_
                                         _%g207864207902%_)))))
                              (_%g207863207898%_ _%g207864207902%_))))
                      (_%g207863207898%_ _%g207864207902%_)))))
          (_%g207862208017%_ _%$stx207859%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx208022%_)
        (let* ((_%g208026208059%_
                (lambda (_%g208027208055%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208027208055%_))))
               (_%g208025208173%_
                (lambda (_%g208027208063%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208027208063%_))
                      (let ((_%e208031208066%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208027208063%_))))
                        (let ((_%hd208032208070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208031208066%_)))
                              (_%tl208033208073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208031208066%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208033208073%_))
                              (let ((_%e208034208076%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208033208073%_))))
                                (let ((_%hd208035208080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208034208076%_)))
                                      (_%tl208036208083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208034208076%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208036208083%_))
                                      (let ((_g213921_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl208036208083%_
                                                '0))))
                                        (begin
                                          (let ((_g213922_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g213921_)
                                                       (##values-length
                                                        _g213921_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g213922_ 2)))
                                                (error "Context expects 2 values"
                                                       _g213922_)))
                                          (let ((_%target208037208086%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g213921_ 0)))
                                                (_%tl208039208089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g213921_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208039208089%_))
                                                (letrec ((_%loop208040208092%_
                                                          (lambda (_%hd208038208096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol208044208099%_
                           _%method208045208101%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd208038208096%_))
                        (let ((_%e208041208104%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd208038208096%_))))
                          (let ((_%lp-hd208042208108%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208041208104%_)))
                                (_%lp-tl208043208111%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208041208104%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd208042208108%_))
                                (let ((_%e208048208114%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd208042208108%_))))
                                  (let ((_%hd208049208118%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e208048208114%_)))
                                        (_%tl208050208121%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e208048208114%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl208050208121%_))
                                        (let ((_%e208051208124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl208050208121%_))))
                                          (let ((_%hd208052208128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e208051208124%_)))
                                                (_%tl208053208131%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e208051208124%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208053208131%_))
                                                (_%loop208040208092%_
                                                 _%lp-tl208043208111%_
                                                 (cons _%hd208052208128%_
                                                       _%symbol208044208099%_)
                                                 (cons _%hd208049208118%_
                                                       _%method208045208101%_))
                                                (_%g208026208059%_
                                                 _%g208027208063%_))))
                                        (_%g208026208059%_
                                         _%g208027208063%_))))
                                (_%g208026208059%_ _%g208027208063%_))))
                        (let ((_%symbol208046208134%_
                               (reverse _%symbol208044208099%_))
                              (_%method208047208137%_
                               (reverse _%method208045208101%_)))
                          ((lambda (_%L208140%_ _%L208142%_ _%L208143%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L208140%_
                                        _%L208142%_))
                                     (let ((__tmp213923
                                            (lambda (_%g208161208165%_
                                                     _%g208162208168%_
                                                     _%g208163208170%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L208143%_
                                                                (cons _%g208162208168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g208161208165%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g208163208170%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp213923
                                        '()
                                        _%L208140%_
                                        _%L208142%_)))))
                           _%symbol208046208134%_
                           _%method208047208137%_
                           _%hd208035208080%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop208040208092%_
                                                   _%target208037208086%_
                                                   '()
                                                   '()))
                                                (_%g208026208059%_
                                                 _%g208027208063%_)))))
                                      (_%g208026208059%_ _%g208027208063%_))))
                              (_%g208026208059%_ _%g208027208063%_))))
                      (_%g208026208059%_ _%g208027208063%_)))))
          (_%g208025208173%_ _%$stx208022%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx208178%_)
        (let* ((_%g208182208196%_
                (lambda (_%g208183208192%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208183208192%_))))
               (_%g208181208237%_
                (lambda (_%g208183208200%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208183208200%_))
                      (let ((_%e208185208203%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208183208200%_))))
                        (let ((_%hd208186208207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208185208203%_)))
                              (_%tl208187208210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208185208203%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208187208210%_))
                              (let ((_%e208188208213%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208187208210%_))))
                                (let ((_%hd208189208217%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208188208213%_)))
                                      (_%tl208190208220%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208188208213%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl208190208220%_))
                                      ((lambda (_%L208223%_)
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
                                                           (cons _%L208223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd208189208217%_)
                                      (_%g208182208196%_ _%g208183208200%_))))
                              (_%g208182208196%_ _%g208183208200%_))))
                      (_%g208182208196%_ _%g208183208200%_)))))
          (_%g208181208237%_ _%$stx208178%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx208241%_)
        (let* ((_%g208245208299%_
                (lambda (_%g208246208295%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208246208295%_))))
               (_%g208244208480%_
                (lambda (_%g208246208303%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208246208303%_))
                      (let ((_%e208258208306%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208246208303%_))))
                        (let ((_%hd208259208310%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208258208306%_)))
                              (_%tl208260208313%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208258208306%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208260208313%_))
                              (let ((_%e208261208316%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208260208313%_))))
                                (let ((_%hd208262208320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208261208316%_)))
                                      (_%tl208263208323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208261208316%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208263208323%_))
                                      (let ((_%e208264208326%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl208263208323%_))))
                                        (let ((_%hd208265208330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208264208326%_)))
                                              (_%tl208266208333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208264208326%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl208266208333%_))
                                              (let ((_%e208267208336%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl208266208333%_))))
                                                (let ((_%hd208268208340%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e208267208336%_)))
                                                      (_%tl208269208343%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e208267208336%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl208269208343%_))
                                                      (let ((_%e208270208346%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl208269208343%_))))
                (let ((_%hd208271208350%_
                       (let () (declare (not safe)) (##car _%e208270208346%_)))
                      (_%tl208272208353%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e208270208346%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl208272208353%_))
                      (let ((_%e208273208356%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl208272208353%_))))
                        (let ((_%hd208274208360%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208273208356%_)))
                              (_%tl208275208363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208273208356%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208275208363%_))
                              (let ((_%e208276208366%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208275208363%_))))
                                (let ((_%hd208277208370%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208276208366%_)))
                                      (_%tl208278208373%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208276208366%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208278208373%_))
                                      (let ((_%e208279208376%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl208278208373%_))))
                                        (let ((_%hd208280208380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208279208376%_)))
                                              (_%tl208281208383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208279208376%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl208281208383%_))
                                              (let ((_%e208282208386%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl208281208383%_))))
                                                (let ((_%hd208283208390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e208282208386%_)))
                                                      (_%tl208284208393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e208282208386%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl208284208393%_))
                                                      (let ((_%e208285208396%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl208284208393%_))))
                (let ((_%hd208286208400%_
                       (let () (declare (not safe)) (##car _%e208285208396%_)))
                      (_%tl208287208403%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e208285208396%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl208287208403%_))
                      (let ((_%e208288208406%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl208287208403%_))))
                        (let ((_%hd208289208410%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208288208406%_)))
                              (_%tl208290208413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208288208406%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208290208413%_))
                              (let ((_%e208291208416%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208290208413%_))))
                                (let ((_%hd208292208420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208291208416%_)))
                                      (_%tl208293208423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208291208416%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl208293208423%_))
                                      ((lambda (_%L208426%_
                                                _%L208428%_
                                                _%L208429%_
                                                _%L208430%_
                                                _%L208431%_
                                                _%L208432%_
                                                _%L208433%_
                                                _%L208434%_
                                                _%L208435%_
                                                _%L208436%_
                                                _%L208437%_)
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
                                                           (cons _%L208437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L208436%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L208435%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L208434%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L208433%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L208432%_ '()))
                                           (cons _%L208431%_
                                                 (cons _%L208430%_
                                                       (cons _%L208429%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L208428%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L208426%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd208292208420%_
                                       _%hd208289208410%_
                                       _%hd208286208400%_
                                       _%hd208283208390%_
                                       _%hd208280208380%_
                                       _%hd208277208370%_
                                       _%hd208274208360%_
                                       _%hd208271208350%_
                                       _%hd208268208340%_
                                       _%hd208265208330%_
                                       _%hd208262208320%_)
                                      (_%g208245208299%_ _%g208246208303%_))))
                              (_%g208245208299%_ _%g208246208303%_))))
                      (_%g208245208299%_ _%g208246208303%_))))
              (_%g208245208299%_ _%g208246208303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g208245208299%_
                                               _%g208246208303%_))))
                                      (_%g208245208299%_ _%g208246208303%_))))
                              (_%g208245208299%_ _%g208246208303%_))))
                      (_%g208245208299%_ _%g208246208303%_))))
              (_%g208245208299%_ _%g208246208303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g208245208299%_
                                               _%g208246208303%_))))
                                      (_%g208245208299%_ _%g208246208303%_))))
                              (_%g208245208299%_ _%g208246208303%_))))
                      (_%g208245208299%_ _%g208246208303%_)))))
          (_%g208244208480%_ _%$stx208241%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx208484%_)
        (let* ((_%g208488208502%_
                (lambda (_%g208489208498%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208489208498%_))))
               (_%g208487208543%_
                (lambda (_%g208489208506%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208489208506%_))
                      (let ((_%e208491208509%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208489208506%_))))
                        (let ((_%hd208492208513%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208491208509%_)))
                              (_%tl208493208516%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208491208509%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208493208516%_))
                              (let ((_%e208494208519%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208493208516%_))))
                                (let ((_%hd208495208523%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208494208519%_)))
                                      (_%tl208496208526%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208494208519%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl208496208526%_))
                                      ((lambda (_%L208529%_)
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
                                                           (cons _%L208529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd208495208523%_)
                                      (_%g208488208502%_ _%g208489208506%_))))
                              (_%g208488208502%_ _%g208489208506%_))))
                      (_%g208488208502%_ _%g208489208506%_)))))
          (_%g208487208543%_ _%$stx208484%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx208547%_)
        (let* ((_%g208551208565%_
                (lambda (_%g208552208561%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208552208561%_))))
               (_%g208550208606%_
                (lambda (_%g208552208569%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208552208569%_))
                      (let ((_%e208554208572%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208552208569%_))))
                        (let ((_%hd208555208576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208554208572%_)))
                              (_%tl208556208579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208554208572%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208556208579%_))
                              (let ((_%e208557208582%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208556208579%_))))
                                (let ((_%hd208558208586%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208557208582%_)))
                                      (_%tl208559208589%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208557208582%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl208559208589%_))
                                      ((lambda (_%L208592%_)
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
                                                           (cons _%L208592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd208558208586%_)
                                      (_%g208551208565%_ _%g208552208569%_))))
                              (_%g208551208565%_ _%g208552208569%_))))
                      (_%g208551208565%_ _%g208552208569%_)))))
          (_%g208550208606%_ _%$stx208547%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx208610%_)
        (let* ((_%g208614208636%_
                (lambda (_%g208615208632%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208615208632%_))))
               (_%g208613208705%_
                (lambda (_%g208615208640%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208615208640%_))
                      (let ((_%e208619208643%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208615208640%_))))
                        (let ((_%hd208620208647%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208619208643%_)))
                              (_%tl208621208650%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208619208643%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208621208650%_))
                              (let ((_%e208622208653%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208621208650%_))))
                                (let ((_%hd208623208657%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208622208653%_)))
                                      (_%tl208624208660%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208622208653%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208624208660%_))
                                      (let ((_%e208625208663%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl208624208660%_))))
                                        (let ((_%hd208626208667%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208625208663%_)))
                                              (_%tl208627208670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208625208663%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl208627208670%_))
                                              (let ((_%e208628208673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl208627208670%_))))
                                                (let ((_%hd208629208677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e208628208673%_)))
                                                      (_%tl208630208680%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e208628208673%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl208630208680%_))
                                                      ((lambda (_%L208683%_
                                                                _%L208685%_
                                                                _%L208686%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L208686%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L208685%_ '()))
                                   (cons _%L208683%_ '())))))
               _%hd208629208677%_
               _%hd208626208667%_
               _%hd208623208657%_)
              (_%g208614208636%_ _%g208615208640%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g208614208636%_
                                               _%g208615208640%_))))
                                      (_%g208614208636%_ _%g208615208640%_))))
                              (_%g208614208636%_ _%g208615208640%_))))
                      (_%g208614208636%_ _%g208615208640%_)))))
          (_%g208613208705%_ _%$stx208610%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx208709%_)
        (let* ((_%g208713208735%_
                (lambda (_%g208714208731%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208714208731%_))))
               (_%g208712208804%_
                (lambda (_%g208714208739%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208714208739%_))
                      (let ((_%e208718208742%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208714208739%_))))
                        (let ((_%hd208719208746%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208718208742%_)))
                              (_%tl208720208749%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208718208742%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208720208749%_))
                              (let ((_%e208721208752%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208720208749%_))))
                                (let ((_%hd208722208756%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208721208752%_)))
                                      (_%tl208723208759%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208721208752%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208723208759%_))
                                      (let ((_%e208724208762%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl208723208759%_))))
                                        (let ((_%hd208725208766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208724208762%_)))
                                              (_%tl208726208769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208724208762%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl208726208769%_))
                                              (let ((_%e208727208772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl208726208769%_))))
                                                (let ((_%hd208728208776%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e208727208772%_)))
                                                      (_%tl208729208779%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e208727208772%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl208729208779%_))
                                                      ((lambda (_%L208782%_
                                                                _%L208784%_
                                                                _%L208785%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L208785%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L208784%_ '()))
                                   (cons _%L208782%_ '())))))
               _%hd208728208776%_
               _%hd208725208766%_
               _%hd208722208756%_)
              (_%g208713208735%_ _%g208714208739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g208713208735%_
                                               _%g208714208739%_))))
                                      (_%g208713208735%_ _%g208714208739%_))))
                              (_%g208713208735%_ _%g208714208739%_))))
                      (_%g208713208735%_ _%g208714208739%_)))))
          (_%g208712208804%_ _%$stx208709%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx208808%_)
        (let* ((_%g208812208826%_
                (lambda (_%g208813208822%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208813208822%_))))
               (_%g208811208867%_
                (lambda (_%g208813208830%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208813208830%_))
                      (let ((_%e208815208833%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208813208830%_))))
                        (let ((_%hd208816208837%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208815208833%_)))
                              (_%tl208817208840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208815208833%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208817208840%_))
                              (let ((_%e208818208843%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208817208840%_))))
                                (let ((_%hd208819208847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208818208843%_)))
                                      (_%tl208820208850%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208818208843%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl208820208850%_))
                                      ((lambda (_%L208853%_)
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
                                                           (cons _%L208853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd208819208847%_)
                                      (_%g208812208826%_ _%g208813208830%_))))
                              (_%g208812208826%_ _%g208813208830%_))))
                      (_%g208812208826%_ _%g208813208830%_)))))
          (_%g208811208867%_ _%$stx208808%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx208871%_)
        (let* ((_%g208875208893%_
                (lambda (_%g208876208889%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208876208889%_))))
               (_%g208874208948%_
                (lambda (_%g208876208897%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208876208897%_))
                      (let ((_%e208879208900%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208876208897%_))))
                        (let ((_%hd208880208904%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208879208900%_)))
                              (_%tl208881208907%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208879208900%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208881208907%_))
                              (let ((_%e208882208910%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208881208907%_))))
                                (let ((_%hd208883208914%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208882208910%_)))
                                      (_%tl208884208917%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208882208910%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208884208917%_))
                                      (let ((_%e208885208920%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl208884208917%_))))
                                        (let ((_%hd208886208924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208885208920%_)))
                                              (_%tl208887208927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208885208920%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208887208927%_))
                                              ((lambda (_%L208930%_
                                                        _%L208932%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L208932%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L208930%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd208886208924%_
                                               _%hd208883208914%_)
                                              (_%g208875208893%_
                                               _%g208876208897%_))))
                                      (_%g208875208893%_ _%g208876208897%_))))
                              (_%g208875208893%_ _%g208876208897%_))))
                      (_%g208875208893%_ _%g208876208897%_)))))
          (_%g208874208948%_ _%$stx208871%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx208952%_)
        (let* ((_%__stx213294213295%_ _%$stx208952%_)
               (_%g208959209020%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx213294213295%_)))))
          (let ((_%__kont213297213298%_
                 (lambda (_%L209258%_ _%L209260%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209260%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L209258%_ '()))
                                     '())))))
                (_%__kont213299213300%_
                 (lambda (_%L209197%_ _%L209199%_ _%L209200%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209200%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L209199%_ '()))
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
                                 (cons _%L209197%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont213301213302%_
                 (lambda (_%L209121%_ _%L209123%_)
                   (cons _%L209123%_ (cons _%L209121%_ (cons '#f '())))))
                (_%__kont213303213304%_
                 (lambda (_%L209071%_ _%L209073%_ _%L209074%_)
                   (cons _%L209074%_
                         (cons _%L209073%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L209071%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx213294213295%_))
                (let ((_%e208963209228%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx213294213295%_))))
                  (let ((_%tl208965209235%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e208963209228%_)))
                        (_%hd208964209232%_
                         (let ()
                           (declare (not safe))
                           (##car _%e208963209228%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl208965209235%_))
                        (let ((_%e208966209238%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl208965209235%_))))
                          (let ((_%tl208968209245%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208966209238%_)))
                                (_%hd208967209242%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208966209238%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl208968209245%_))
                                (let ((_%e208969209248%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl208968209245%_))))
                                  (let ((_%tl208971209255%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e208969209248%_)))
                                        (_%hd208970209252%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e208969209248%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl208971209255%_))
                                        (_%__kont213297213298%_
                                         _%hd208970209252%_
                                         _%hd208967209242%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl208971209255%_))
                                            (let ((_%e208984209173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl208971209255%_))))
                                              (let ((_%tl208986209180%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e208984209173%_)))
                                                    (_%hd208985209177%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e208984209173%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd208985209177%_))
                                                    (let ((_%e208987209183%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd208985209177%_))))
                                                      (if (equal? _%e208987209183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl208986209180%_))
                      (let ((_%e208988209187%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl208986209180%_))))
                        (let ((_%tl208990209194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208988209187%_)))
                              (_%hd208989209191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208988209187%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl208990209194%_))
                              (_%__kont213299213300%_
                               _%hd208989209191%_
                               _%hd208970209252%_
                               _%hd208967209242%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd208970209252%_))
                                  (let ((_%e209011209057%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd208970209252%_))))
                                    (declare (not safe))
                                    (_%g208959209020%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g208959209020%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd208970209252%_))
                          (let ((_%e209011209057%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd208970209252%_))))
                            (if (equal? _%e209011209057%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl208986209180%_))
                                    (_%__kont213303213304%_
                                     _%hd208985209177%_
                                     _%hd208967209242%_
                                     _%hd208964209232%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g208959209020%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g208959209020%_))))
                          (let () (declare (not safe)) (_%g208959209020%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd208970209252%_))
                      (let ((_%e209011209057%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd208970209252%_))))
                        (if (equal? _%e209011209057%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl208986209180%_))
                                (_%__kont213303213304%_
                                 _%hd208985209177%_
                                 _%hd208967209242%_
                                 _%hd208964209232%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g208959209020%_)))
                            (let () (declare (not safe)) (_%g208959209020%_))))
                      (let () (declare (not safe)) (_%g208959209020%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd208970209252%_))
                                                        (let ((_%e209011209057%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd208970209252%_))))
                  (if (equal? _%e209011209057%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl208986209180%_))
                          (_%__kont213303213304%_
                           _%hd208985209177%_
                           _%hd208967209242%_
                           _%hd208964209232%_)
                          (let () (declare (not safe)) (_%g208959209020%_)))
                      (let () (declare (not safe)) (_%g208959209020%_))))
                (let () (declare (not safe)) (_%g208959209020%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd208970209252%_))
                                                (let ((_%e209011209057%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd208970209252%_))))
                                                  (declare (not safe))
                                                  (_%g208959209020%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g208959209020%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl208968209245%_))
                                    (_%__kont213301213302%_
                                     _%hd208967209242%_
                                     _%hd208964209232%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g208959209020%_))))))
                        (let () (declare (not safe)) (_%g208959209020%_)))))
                (let () (declare (not safe)) (_%g208959209020%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx209279%_)
        (let* ((_%g209283209312%_
                (lambda (_%g209284209308%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209284209308%_))))
               (_%g209282209421%_
                (lambda (_%g209284209316%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209284209316%_))
                      (let ((_%e209286209319%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g209284209316%_))))
                        (let ((_%hd209287209323%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209286209319%_)))
                              (_%tl209288209326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209286209319%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl209288209326%_))
                              (let ((_g213924_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl209288209326%_
                                        '0))))
                                (begin
                                  (let ((_g213925_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g213924_)
                                               (##values-length _g213924_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g213925_ 2)))
                                        (error "Context expects 2 values"
                                               _g213925_)))
                                  (let ((_%target209289209329%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213924_ 0)))
                                        (_%tl209291209332%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213924_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl209291209332%_))
                                        (letrec ((_%loop209292209335%_
                                                  (lambda (_%hd209290209339%_
                                                           _%clause209296209342%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd209290209339%_))
                                                        (let ((_%e209293209345%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd209290209339%_))))
                  (let ((_%lp-hd209294209349%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209293209345%_)))
                        (_%lp-tl209295209352%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209293209345%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd209294209349%_))
                        (let ((_g213926_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd209294209349%_
                                  '0))))
                          (begin
                            (let ((_g213927_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g213926_)
                                         (##values-length _g213926_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g213927_ 2)))
                                  (error "Context expects 2 values"
                                         _g213927_)))
                            (let ((_%target209298209355%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g213926_ 0)))
                                  (_%tl209300209358%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g213926_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl209300209358%_))
                                  (letrec ((_%loop209301209361%_
                                            (lambda (_%hd209299209365%_
                                                     _%clause209305209368%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd209299209365%_))
                                                  (let ((_%e209302209371%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd209299209365%_))))
                                                    (let ((_%lp-hd209303209375%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e209302209371%_)))
                                                          (_%lp-tl209304209378%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e209302209371%_))))
                                                      (_%loop209301209361%_
                                                       _%lp-tl209304209378%_
                                                       (cons _%lp-hd209303209375%_
                                                             _%clause209305209368%_))))
                                                  (let ((_%clause209306209381%_
                                                         (reverse _%clause209305209368%_)))
                                                    (_%loop209292209335%_
                                                     _%lp-tl209295209352%_
                                                     (cons _%clause209306209381%_
                                                           _%clause209296209342%_)))))))
                                    (_%loop209301209361%_
                                     _%target209298209355%_
                                     '()))
                                  (_%g209283209312%_ _%g209284209316%_)))))
                        (_%g209283209312%_ _%g209284209316%_))))
                (let ((_%clause209297209385%_
                       (reverse _%clause209296209342%_)))
                  ((lambda (_%L209389%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp213928
                                              (lambda (_%g209404209409%_
                                                       _%g209405209412%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp213929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g209406209415%_ _%g209407209418%_)
                             (cons _%g209406209415%_ _%g209407209418%_))))
                      (declare (not safe))
                      (__foldr1 __tmp213929 '() _%g209404209409%_)))
              _%g209405209412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp213928
                                          '()
                                          _%L209389%_)))
                                 '())))
                   _%clause209297209385%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop209292209335%_
                                           _%target209289209329%_
                                           '()))
                                        (_%g209283209312%_
                                         _%g209284209316%_)))))
                              (_%g209283209312%_ _%g209284209316%_))))
                      (_%g209283209312%_ _%g209284209316%_)))))
          (_%g209282209421%_ _%$stx209279%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx209427%_)
        (let* ((_%g209431209449%_
                (lambda (_%g209432209445%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209432209445%_))))
               (_%g209430209504%_
                (lambda (_%g209432209453%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209432209453%_))
                      (let ((_%e209435209456%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g209432209453%_))))
                        (let ((_%hd209436209460%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209435209456%_)))
                              (_%tl209437209463%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209435209456%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209437209463%_))
                              (let ((_%e209438209466%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl209437209463%_))))
                                (let ((_%hd209439209470%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209438209466%_)))
                                      (_%tl209440209473%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209438209466%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl209440209473%_))
                                      (let ((_%e209441209476%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl209440209473%_))))
                                        (let ((_%hd209442209480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209441209476%_)))
                                              (_%tl209443209483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209441209476%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl209443209483%_))
                                              ((lambda (_%L209486%_
                                                        _%L209488%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209488%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L209486%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd209442209480%_
                                               _%hd209439209470%_)
                                              (_%g209431209449%_
                                               _%g209432209453%_))))
                                      (_%g209431209449%_ _%g209432209453%_))))
                              (_%g209431209449%_ _%g209432209453%_))))
                      (_%g209431209449%_ _%g209432209453%_)))))
          (_%g209430209504%_ _%$stx209427%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx209508%_)
        (let* ((_%g209512209530%_
                (lambda (_%g209513209526%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209513209526%_))))
               (_%g209511209585%_
                (lambda (_%g209513209534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209513209534%_))
                      (let ((_%e209516209537%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g209513209534%_))))
                        (let ((_%hd209517209541%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209516209537%_)))
                              (_%tl209518209544%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209516209537%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209518209544%_))
                              (let ((_%e209519209547%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl209518209544%_))))
                                (let ((_%hd209520209551%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209519209547%_)))
                                      (_%tl209521209554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209519209547%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl209521209554%_))
                                      (let ((_%e209522209557%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl209521209554%_))))
                                        (let ((_%hd209523209561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209522209557%_)))
                                              (_%tl209524209564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209522209557%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl209524209564%_))
                                              ((lambda (_%L209567%_
                                                        _%L209569%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209569%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L209567%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd209523209561%_
                                               _%hd209520209551%_)
                                              (_%g209512209530%_
                                               _%g209513209534%_))))
                                      (_%g209512209530%_ _%g209513209534%_))))
                              (_%g209512209530%_ _%g209513209534%_))))
                      (_%g209512209530%_ _%g209513209534%_)))))
          (_%g209511209585%_ _%$stx209508%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx209589%_)
        (let* ((_%g209593209622%_
                (lambda (_%g209594209618%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209594209618%_))))
               (_%g209592209722%_
                (lambda (_%g209594209626%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209594209626%_))
                      (let ((_%e209597209629%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g209594209626%_))))
                        (let ((_%hd209598209633%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209597209629%_)))
                              (_%tl209599209636%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209597209629%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl209599209636%_))
                              (let ((_g213930_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl209599209636%_
                                        '0))))
                                (begin
                                  (let ((_g213931_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g213930_)
                                               (##values-length _g213930_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g213931_ 2)))
                                        (error "Context expects 2 values"
                                               _g213931_)))
                                  (let ((_%target209600209639%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213930_ 0)))
                                        (_%tl209602209642%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213930_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl209602209642%_))
                                        (letrec ((_%loop209603209645%_
                                                  (lambda (_%hd209601209649%_
                                                           _%rule209607209652%_
                                                           _%proc209608209654%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd209601209649%_))
                                                        (let ((_%e209604209657%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd209601209649%_))))
                  (let ((_%lp-hd209605209661%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209604209657%_)))
                        (_%lp-tl209606209664%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209604209657%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd209605209661%_))
                        (let ((_%e209611209667%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd209605209661%_))))
                          (let ((_%hd209612209671%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e209611209667%_)))
                                (_%tl209613209674%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e209611209667%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl209613209674%_))
                                (let ((_%e209614209677%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl209613209674%_))))
                                  (let ((_%hd209615209681%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e209614209677%_)))
                                        (_%tl209616209684%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e209614209677%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl209616209684%_))
                                        (_%loop209603209645%_
                                         _%lp-tl209606209664%_
                                         (cons _%hd209615209681%_
                                               _%rule209607209652%_)
                                         (cons _%hd209612209671%_
                                               _%proc209608209654%_))
                                        (_%g209593209622%_
                                         _%g209594209626%_))))
                                (_%g209593209622%_ _%g209594209626%_))))
                        (_%g209593209622%_ _%g209594209626%_))))
                (let ((_%rule209609209687%_ (reverse _%rule209607209652%_))
                      (_%proc209610209690%_ (reverse _%proc209608209654%_)))
                  ((lambda (_%L209693%_ _%L209695%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L209693%_
                                _%L209695%_))
                             (let ((__tmp213932
                                    (lambda (_%g209710209714%_
                                             _%g209711209717%_
                                             _%g209712209719%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g209711209717%_
                                                        (cons _%g209710209714%_
                                                              '())))
                                            _%g209712209719%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp213932
                                '()
                                _%L209693%_
                                _%L209695%_)))))
                   _%rule209609209687%_
                   _%proc209610209690%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop209603209645%_
                                           _%target209600209639%_
                                           '()
                                           '()))
                                        (_%g209593209622%_
                                         _%g209594209626%_)))))
                              (_%g209593209622%_ _%g209594209626%_))))
                      (_%g209593209622%_ _%g209594209626%_)))))
          (_%g209592209722%_ _%$stx209589%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx209727%_)
        (let* ((_%g209731209749%_
                (lambda (_%g209732209745%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209732209745%_))))
               (_%g209730209804%_
                (lambda (_%g209732209753%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209732209753%_))
                      (let ((_%e209735209756%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g209732209753%_))))
                        (let ((_%hd209736209760%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209735209756%_)))
                              (_%tl209737209763%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209735209756%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209737209763%_))
                              (let ((_%e209738209766%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl209737209763%_))))
                                (let ((_%hd209739209770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209738209766%_)))
                                      (_%tl209740209773%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209738209766%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl209740209773%_))
                                      (let ((_%e209741209776%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl209740209773%_))))
                                        (let ((_%hd209742209780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209741209776%_)))
                                              (_%tl209743209783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209741209776%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl209743209783%_))
                                              ((lambda (_%L209786%_
                                                        _%L209788%_)
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
                                                   (cons _%L209788%_ '()))
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
                 (cons _%L209786%_ '())))
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
                                   (cons _%L209788%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd209742209780%_
                                               _%hd209739209770%_)
                                              (_%g209731209749%_
                                               _%g209732209753%_))))
                                      (_%g209731209749%_ _%g209732209753%_))))
                              (_%g209731209749%_ _%g209732209753%_))))
                      (_%g209731209749%_ _%g209732209753%_)))))
          (_%g209730209804%_ _%$stx209727%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx209808%_)
        (let* ((_%__stx213412213413%_ _%$stx209808%_)
               (_%g209813209838%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx213412213413%_)))))
          (let ((_%__kont213415213416%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont213417213418%_
                 (lambda (_%L209885%_ _%L209887%_ _%L209888%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L209888%_ (cons _%L209887%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L209885%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx213412213413%_))
                (let ((_%e209815209914%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx213412213413%_))))
                  (let ((_%tl209817209921%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209815209914%_)))
                        (_%hd209816209918%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209815209914%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl209817209921%_))
                        (_%__kont213415213416%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl209817209921%_))
                            (let ((_%e209824209855%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl209817209921%_))))
                              (let ((_%tl209826209862%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e209824209855%_)))
                                    (_%hd209825209859%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e209824209855%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd209825209859%_))
                                    (let ((_%e209827209865%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd209825209859%_))))
                                      (let ((_%tl209829209872%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e209827209865%_)))
                                            (_%hd209828209869%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e209827209865%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl209829209872%_))
                                            (let ((_%e209830209875%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl209829209872%_))))
                                              (let ((_%tl209832209882%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e209830209875%_)))
                                                    (_%hd209831209879%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e209830209875%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl209832209882%_))
                                                    (_%__kont213417213418%_
                                                     _%tl209826209862%_
                                                     _%hd209831209879%_
                                                     _%hd209828209869%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g209813209838%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g209813209838%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g209813209838%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g209813209838%_))))))
                (let () (declare (not safe)) (_%g209813209838%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx209932%_)
        (let* ((_%__stx213456213457%_ _%$stx209932%_)
               (_%g209937209968%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx213456213457%_)))))
          (let ((_%__kont213459213460%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont213461213462%_
                 (lambda (_%L210035%_ _%L210037%_ _%L210038%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L210038%_
                                           (let ((__tmp213933
                                                  (lambda (_%g210058210061%_
                                                           _%g210059210064%_)
                                                    (cons _%g210058210061%_
                                                          _%g210059210064%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp213933
                                              '()
                                              _%L210037%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L210035%_)
                                     '()))))))
            (let ((_%__match213499213500%_
                   (lambda (_%e209945209975%_
                            _%hd209946209979%_
                            _%tl209947209982%_
                            _%e209948209985%_
                            _%hd209949209989%_
                            _%tl209950209992%_
                            _%e209951209995%_
                            _%hd209952209999%_
                            _%tl209953210002%_
                            _%__splice213463213464%_
                            _%target209954210005%_
                            _%tl209956210008%_)
                     (letrec ((_%loop209957210011%_
                               (lambda (_%hd209955210015%_ _%sig209961210018%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd209955210015%_))
                                     (let ((_%e209958210021%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd209955210015%_))))
                                       (let ((_%lp-tl209960210028%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e209958210021%_)))
                                             (_%lp-hd209959210025%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e209958210021%_))))
                                         (_%loop209957210011%_
                                          _%lp-tl209960210028%_
                                          (cons _%lp-hd209959210025%_
                                                _%sig209961210018%_))))
                                     (let ((_%sig209962210031%_
                                            (reverse _%sig209961210018%_)))
                                       (_%__kont213461213462%_
                                        _%tl209950209992%_
                                        _%sig209962210031%_
                                        _%hd209952209999%_))))))
                       (_%loop209957210011%_ _%target209954210005%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx213456213457%_))
                  (let ((_%e209939210074%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx213456213457%_))))
                    (let ((_%tl209941210081%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e209939210074%_)))
                          (_%hd209940210078%_
                           (let ()
                             (declare (not safe))
                             (##car _%e209939210074%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl209941210081%_))
                          (_%__kont213459213460%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209941210081%_))
                              (let ((_%e209948209985%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl209941210081%_))))
                                (let ((_%tl209950209992%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209948209985%_)))
                                      (_%hd209949209989%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209948209985%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd209949209989%_))
                                      (let ((_%e209951209995%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd209949209989%_))))
                                        (let ((_%tl209953210002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209951209995%_)))
                                              (_%hd209952209999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209951209995%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl209953210002%_))
                                              (let ((_%__splice213463213464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl209953210002%_
                                                        '0))))
                                                (let ((_%tl209956210008%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice213463213464%_
                                                          '1)))
                                                      (_%target209954210005%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice213463213464%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl209956210008%_))
                                                      (_%__match213499213500%_
                                                       _%e209939210074%_
                                                       _%hd209940210078%_
                                                       _%tl209941210081%_
                                                       _%e209948209985%_
                                                       _%hd209949209989%_
                                                       _%tl209950209992%_
                                                       _%e209951209995%_
                                                       _%hd209952209999%_
                                                       _%tl209953210002%_
                                                       _%__splice213463213464%_
                                                       _%target209954210005%_
                                                       _%tl209956210008%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g209937209968%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g209937209968%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g209937209968%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g209937209968%_))))))
                  (let () (declare (not safe)) (_%g209937209968%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx210093%_)
        (let* ((_%__stx213502213503%_ _%$stx210093%_)
               (_%g210098210145%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx213502213503%_)))))
          (let ((_%__kont213505213506%_
                 (lambda (_%L210307%_ _%L210309%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L210309%_
                               (let ((__tmp213934
                                      (lambda (_%g210329210332%_
                                               _%g210330210335%_)
                                        (cons _%g210329210332%_
                                              _%g210330210335%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp213934 '() _%L210307%_))))))
                (_%__kont213509213510%_
                 (lambda (_%L210202%_ _%L210204%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L210204%_
                               (let ((__tmp213935
                                      (lambda (_%g210221210224%_
                                               _%g210222210227%_)
                                        (cons _%g210221210224%_
                                              _%g210222210227%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp213935 '() _%L210202%_)))))))
            (let* ((_%__match213569213570%_
                    (lambda (_%e210125210152%_
                             _%hd210126210156%_
                             _%tl210127210159%_
                             _%e210128210162%_
                             _%hd210129210166%_
                             _%tl210130210169%_
                             _%__splice213511213512%_
                             _%target210131210172%_
                             _%tl210133210175%_)
                      (letrec ((_%loop210134210178%_
                                (lambda (_%hd210132210182%_
                                         _%sig210138210185%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd210132210182%_))
                                      (let ((_%e210135210188%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd210132210182%_))))
                                        (let ((_%lp-tl210137210195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210135210188%_)))
                                              (_%lp-hd210136210192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210135210188%_))))
                                          (_%loop210134210178%_
                                           _%lp-tl210137210195%_
                                           (cons _%lp-hd210136210192%_
                                                 _%sig210138210185%_))))
                                      (let ((_%sig210139210198%_
                                             (reverse _%sig210138210185%_)))
                                        (_%__kont213509213510%_
                                         _%sig210139210198%_
                                         _%hd210129210166%_))))))
                        (_%loop210134210178%_ _%target210131210172%_ '()))))
                   (_%__match213561213562%_
                    (lambda (_%e210125210152%_
                             _%hd210126210156%_
                             _%tl210127210159%_
                             _%e210128210162%_
                             _%hd210129210166%_
                             _%tl210130210169%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl210130210169%_))
                          (let ((_%__splice213511213512%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl210130210169%_
                                    '0))))
                            (let ((_%tl210133210175%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice213511213512%_
                                      '1)))
                                  (_%target210131210172%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice213511213512%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl210133210175%_))
                                  (_%__match213569213570%_
                                   _%e210125210152%_
                                   _%hd210126210156%_
                                   _%tl210127210159%_
                                   _%e210128210162%_
                                   _%hd210129210166%_
                                   _%tl210130210169%_
                                   _%__splice213511213512%_
                                   _%target210131210172%_
                                   _%tl210133210175%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g210098210145%_)))))
                          (let () (declare (not safe)) (_%g210098210145%_)))))
                   (_%__match213549213550%_
                    (lambda (_%e210102210237%_
                             _%hd210103210241%_
                             _%tl210104210244%_
                             _%e210105210247%_
                             _%hd210106210251%_
                             _%tl210107210254%_
                             _%e210108210257%_
                             _%hd210109210261%_
                             _%tl210110210264%_
                             _%e210111210267%_
                             _%hd210112210271%_
                             _%tl210113210274%_
                             _%__splice213507213508%_
                             _%target210114210277%_
                             _%tl210116210280%_)
                      (letrec ((_%loop210117210283%_
                                (lambda (_%hd210115210287%_
                                         _%sig210121210290%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd210115210287%_))
                                      (let ((_%e210118210293%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd210115210287%_))))
                                        (let ((_%lp-tl210120210300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210118210293%_)))
                                              (_%lp-hd210119210297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210118210293%_))))
                                          (_%loop210117210283%_
                                           _%lp-tl210120210300%_
                                           (cons _%lp-hd210119210297%_
                                                 _%sig210121210290%_))))
                                      (let ((_%sig210122210303%_
                                             (reverse _%sig210121210290%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl210110210264%_))
                                            (_%__kont213505213506%_
                                             _%sig210122210303%_
                                             _%hd210106210251%_)
                                            (_%__match213561213562%_
                                             _%e210102210237%_
                                             _%hd210103210241%_
                                             _%tl210104210244%_
                                             _%e210105210247%_
                                             _%hd210106210251%_
                                             _%tl210107210254%_)))))))
                        (_%loop210117210283%_ _%target210114210277%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx213502213503%_))
                  (let ((_%e210102210237%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx213502213503%_))))
                    (let ((_%tl210104210244%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e210102210237%_)))
                          (_%hd210103210241%_
                           (let ()
                             (declare (not safe))
                             (##car _%e210102210237%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl210104210244%_))
                          (let ((_%e210105210247%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl210104210244%_))))
                            (let ((_%tl210107210254%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e210105210247%_)))
                                  (_%hd210106210251%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e210105210247%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl210107210254%_))
                                  (let ((_%e210108210257%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl210107210254%_))))
                                    (let ((_%tl210110210264%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e210108210257%_)))
                                          (_%hd210109210261%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e210108210257%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd210109210261%_))
                                          (let ((_%e210111210267%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd210109210261%_))))
                                            (let ((_%tl210113210274%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e210111210267%_)))
                                                  (_%hd210112210271%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e210111210267%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd210112210271%_))
                                                  (if (let ((__tmp213936
                                                             |gxc[1]#_g213937_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp213936
                                                         _%hd210112210271%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl210113210274%_))
                                                          (let ((_%__splice213507213508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl210113210274%_
                            '0))))
                    (let ((_%tl210116210280%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice213507213508%_ '1)))
                          (_%target210114210277%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice213507213508%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl210116210280%_))
                          (_%__match213549213550%_
                           _%e210102210237%_
                           _%hd210103210241%_
                           _%tl210104210244%_
                           _%e210105210247%_
                           _%hd210106210251%_
                           _%tl210107210254%_
                           _%e210108210257%_
                           _%hd210109210261%_
                           _%tl210110210264%_
                           _%e210111210267%_
                           _%hd210112210271%_
                           _%tl210113210274%_
                           _%__splice213507213508%_
                           _%target210114210277%_
                           _%tl210116210280%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl210107210254%_))
                              (let ((_%__splice213511213512%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl210107210254%_
                                        '0))))
                                (let ((_%tl210133210175%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice213511213512%_
                                          '1)))
                                      (_%target210131210172%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice213511213512%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210133210175%_))
                                      (_%__match213569213570%_
                                       _%e210102210237%_
                                       _%hd210103210241%_
                                       _%tl210104210244%_
                                       _%e210105210247%_
                                       _%hd210106210251%_
                                       _%tl210107210254%_
                                       _%__splice213511213512%_
                                       _%target210131210172%_
                                       _%tl210133210175%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g210098210145%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g210098210145%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl210107210254%_))
                      (let ((_%__splice213511213512%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl210107210254%_
                                '0))))
                        (let ((_%tl210133210175%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice213511213512%_ '1)))
                              (_%target210131210172%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice213511213512%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl210133210175%_))
                              (_%__match213569213570%_
                               _%e210102210237%_
                               _%hd210103210241%_
                               _%tl210104210244%_
                               _%e210105210247%_
                               _%hd210106210251%_
                               _%tl210107210254%_
                               _%__splice213511213512%_
                               _%target210131210172%_
                               _%tl210133210175%_)
                              (let ()
                                (declare (not safe))
                                (_%g210098210145%_)))))
                      (let () (declare (not safe)) (_%g210098210145%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl210107210254%_))
                  (let ((_%__splice213511213512%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl210107210254%_
                            '0))))
                    (let ((_%tl210133210175%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice213511213512%_ '1)))
                          (_%target210131210172%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice213511213512%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl210133210175%_))
                          (_%__match213569213570%_
                           _%e210102210237%_
                           _%hd210103210241%_
                           _%tl210104210244%_
                           _%e210105210247%_
                           _%hd210106210251%_
                           _%tl210107210254%_
                           _%__splice213511213512%_
                           _%target210131210172%_
                           _%tl210133210175%_)
                          (let () (declare (not safe)) (_%g210098210145%_)))))
                  (let () (declare (not safe)) (_%g210098210145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl210107210254%_))
                                                      (let ((_%__splice213511213512%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl210107210254%_
                        '0))))
                (let ((_%tl210133210175%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice213511213512%_ '1)))
                      (_%target210131210172%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice213511213512%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl210133210175%_))
                      (_%__match213569213570%_
                       _%e210102210237%_
                       _%hd210103210241%_
                       _%tl210104210244%_
                       _%e210105210247%_
                       _%hd210106210251%_
                       _%tl210107210254%_
                       _%__splice213511213512%_
                       _%target210131210172%_
                       _%tl210133210175%_)
                      (let () (declare (not safe)) (_%g210098210145%_)))))
              (let () (declare (not safe)) (_%g210098210145%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl210107210254%_))
                                              (let ((_%__splice213511213512%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl210107210254%_
                                                        '0))))
                                                (let ((_%tl210133210175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice213511213512%_
                                                          '1)))
                                                      (_%target210131210172%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice213511213512%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl210133210175%_))
                                                      (_%__match213569213570%_
                                                       _%e210102210237%_
                                                       _%hd210103210241%_
                                                       _%tl210104210244%_
                                                       _%e210105210247%_
                                                       _%hd210106210251%_
                                                       _%tl210107210254%_
                                                       _%__splice213511213512%_
                                                       _%target210131210172%_
                                                       _%tl210133210175%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g210098210145%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g210098210145%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl210107210254%_))
                                      (let ((_%__splice213511213512%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl210107210254%_
                                                '0))))
                                        (let ((_%tl210133210175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice213511213512%_
                                                  '1)))
                                              (_%target210131210172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice213511213512%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210133210175%_))
                                              (_%__match213569213570%_
                                               _%e210102210237%_
                                               _%hd210103210241%_
                                               _%tl210104210244%_
                                               _%e210105210247%_
                                               _%hd210106210251%_
                                               _%tl210107210254%_
                                               _%__splice213511213512%_
                                               _%target210131210172%_
                                               _%tl210133210175%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g210098210145%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g210098210145%_))))))
                          (let () (declare (not safe)) (_%g210098210145%_)))))
                  (let () (declare (not safe)) (_%g210098210145%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx211492%_ _%id211494%_)
        (let ((_%proc211498%_
               (let ((__tmp213938
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id211494%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp213938))))
          (if (procedure? _%proc211498%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx211492%_
                 _%id211494%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx211483%_ _%id211485%_)
        (let ((_%klass211489%_
               (let ((__tmp213939
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id211485%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp213939))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass211489%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx211483%_
                 _%id211485%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx210733%_ _%proc210735%_ _%sig210736%_)
        (letrec ((_%signature-arity210738%_
                  (lambda (_%args211415%_)
                    (let _%loop211418%_ ((_%rest211421%_ _%args211415%_)
                                         (_%count211423%_ '0))
                      (let* ((_%rest211424211435%_ _%rest211421%_)
                             (_%E211428211441%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest211424211435%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K211431211472%_
                               (lambda (_%rest211469%_)
                                 (_%loop211418%_
                                  _%rest211469%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count211423%_ '1)))))
                              (_%K211430211461%_ (lambda () _%count211423%_))
                              (_%K211429211449%_
                               (lambda () (cons _%count211423%_ '()))))
                          (let ((_%try-match211426211465%_
                                 (lambda ()
                                   (if (null? _%rest211424211435%_)
                                       (_%K211430211461%_)
                                       (_%K211429211449%_)))))
                            (if (pair? _%rest211424211435%_)
                                (let* ((_%tl211433211476%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest211424211435%_)))
                                       (_%rest211480%_ _%tl211433211476%_))
                                  (_%K211431211472%_ _%rest211480%_))
                                (_%try-match211426211465%_))))))))
                 (_%make-signature210740%_
                  (lambda (_%args211297%_
                           _%return211299%_
                           _%effect211300%_
                           _%unchecked211301%_)
                    (let ((__tmp213940
                           (lambda (_%g211302211304%_)
                             (|gxc[1]#verify-class!|
                              _%ctx210733%_
                              _%g211302211304%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp213940 _%args211297%_))
                    (|gxc[1]#verify-class!| _%ctx210733%_ _%return211299%_)
                    (if _%unchecked211301%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx210733%_
                         _%unchecked211301%_)
                        '#!void)
                    (let ((_%arity211308%_
                           (_%signature-arity210738%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args211297%_)))))
                      (if _%effect211300%_
                          (let ((_%effect211311%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect211300%_))))
                            (if (and (list? _%effect211311%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect211311%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx210733%_
                                   _%proc210735%_
                                   _%effect211311%_))))
                          '#!void)
                      (cons _%arity211308%_
                            (cons (let* ((_%g211314211337%_
                                          (lambda (_%g211315211333%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g211315211333%_))))
                                         (_%g211313211411%_
                                          (lambda (_%g211315211341%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g211315211341%_))
                                                (let ((_%e211320211344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g211315211341%_))))
                                                  (let ((_%hd211321211348%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211320211344%_)))
                                                        (_%tl211322211351%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211320211344%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl211322211351%_))
                                                        (let ((_%e211323211354%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl211322211351%_))))
                  (let ((_%hd211324211358%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211323211354%_)))
                        (_%tl211325211361%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211323211354%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl211325211361%_))
                        (let ((_%e211326211364%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl211325211361%_))))
                          (let ((_%hd211327211368%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211326211364%_)))
                                (_%tl211328211371%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211326211364%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl211328211371%_))
                                (let ((_%e211329211374%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl211328211371%_))))
                                  (let ((_%hd211330211378%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211329211374%_)))
                                        (_%tl211331211381%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211329211374%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211331211381%_))
                                        ((lambda (_%L211384%_
                                                  _%L211386%_
                                                  _%L211387%_
                                                  _%L211388%_)
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
                           (cons _%L211388%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L211387%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L211386%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L211384%_ '()))
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
                                         _%hd211330211378%_
                                         _%hd211327211368%_
                                         _%hd211324211358%_
                                         _%hd211321211348%_)
                                        (_%g211314211337%_
                                         _%g211315211341%_))))
                                (_%g211314211337%_ _%g211315211341%_))))
                        (_%g211314211337%_ _%g211315211341%_))))
                (_%g211314211337%_ _%g211315211341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g211314211337%_
                                                 _%g211315211341%_)))))
                                    (_%g211313211411%_
                                     (list _%args211297%_
                                           _%return211299%_
                                           _%effect211300%_
                                           _%unchecked211301%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx210733%_ _%proc210735%_)
          (let* ((_%__stx213580213581%_ _%sig210736%_)
                 (_%g210747210850%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx213580213581%_)))))
            (let ((_%__kont213583213584%_
                   (lambda (_%L211278%_ _%L211280%_)
                     (_%make-signature210740%_
                      _%L211280%_
                      _%L211278%_
                      '#f
                      '#f)))
                  (_%__kont213585213586%_
                   (lambda (_%L211229%_ _%L211231%_ _%L211232%_)
                     (_%make-signature210740%_
                      _%L211232%_
                      _%L211231%_
                      _%L211229%_
                      '#f)))
                  (_%__kont213587213588%_
                   (lambda (_%L211153%_ _%L211155%_ _%L211156%_)
                     (_%make-signature210740%_
                      _%L211156%_
                      _%L211155%_
                      _%L211153%_
                      (let ((__tmp213941
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc210735%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp213941)))))
                  (_%__kont213589213590%_
                   (lambda (_%L211059%_ _%L211061%_ _%L211062%_ _%L211063%_)
                     (_%make-signature210740%_
                      _%L211063%_
                      _%L211062%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L211059%_)))))
                  (_%__kont213591213592%_
                   (lambda (_%L210966%_ _%L210968%_)
                     (_%make-signature210740%_
                      _%L210968%_
                      _%L210966%_
                      '#f
                      (let ((__tmp213942
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc210735%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp213942)))))
                  (_%__kont213593213594%_
                   (lambda (_%L210901%_ _%L210903%_ _%L210904%_)
                     (_%make-signature210740%_
                      _%L210904%_
                      _%L210903%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L210901%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx213580213581%_))
                  (let ((_%e210751211258%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx213580213581%_))))
                    (let ((_%tl210753211265%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e210751211258%_)))
                          (_%hd210752211262%_
                           (let ()
                             (declare (not safe))
                             (##car _%e210751211258%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl210753211265%_))
                          (let ((_%e210754211268%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl210753211265%_))))
                            (let ((_%tl210756211275%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e210754211268%_)))
                                  (_%hd210755211272%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e210754211268%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl210756211275%_))
                                  (_%__kont213583213584%_
                                   _%hd210755211272%_
                                   _%hd210752211262%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210756211275%_))
                                      (let ((_%e210766211205%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl210756211275%_))))
                                        (let ((_%tl210768211212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210766211205%_)))
                                              (_%hd210767211209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210766211205%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd210767211209%_))
                                              (let ((_%e210769211215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd210767211209%_))))
                                                (if (equal? _%e210769211215%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl210768211212%_))
                                                        (let ((_%e210770211219%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl210768211212%_))))
                  (let ((_%tl210772211226%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e210770211219%_)))
                        (_%hd210771211223%_
                         (let ()
                           (declare (not safe))
                           (##car _%e210770211219%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl210772211226%_))
                        (_%__kont213585213586%_
                         _%hd210771211223%_
                         _%hd210755211272%_
                         _%hd210752211262%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl210772211226%_))
                            (let ((_%e210789211139%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl210772211226%_))))
                              (let ((_%tl210791211146%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e210789211139%_)))
                                    (_%hd210790211143%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e210789211139%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd210790211143%_))
                                    (let ((_%e210792211149%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd210790211143%_))))
                                      (if (equal? _%e210792211149%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210791211146%_))
                                              (_%__kont213587213588%_
                                               _%hd210771211223%_
                                               _%hd210755211272%_
                                               _%hd210752211262%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl210791211146%_))
                                                  (let ((_%e210814211049%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl210791211146%_))))
                                                    (let ((_%tl210816211056%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e210814211049%_)))
                                                          (_%hd210815211053%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e210814211049%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl210816211056%_))
                                                          (_%__kont213589213590%_
                                                           _%hd210815211053%_
                                                           _%hd210771211223%_
                                                           _%hd210755211272%_
                                                           _%hd210752211262%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g210747210850%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g210747210850%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g210747210850%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g210747210850%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g210747210850%_))))))
                (let () (declare (not safe)) (_%g210747210850%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e210769211215%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl210768211212%_))
                                                            (_%__kont213591213592%_
                                                             _%hd210755211272%_
                                                             _%hd210752211262%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl210768211212%_))
                        (let ((_%e210842210891%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl210768211212%_))))
                          (let ((_%tl210844210898%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e210842210891%_)))
                                (_%hd210843210895%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e210842210891%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl210844210898%_))
                                (_%__kont213593213594%_
                                 _%hd210843210895%_
                                 _%hd210755211272%_
                                 _%hd210752211262%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g210747210850%_)))))
                        (let () (declare (not safe)) (_%g210747210850%_))))
                (let () (declare (not safe)) (_%g210747210850%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g210747210850%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g210747210850%_))))))
                          (let () (declare (not safe)) (_%g210747210850%_)))))
                  (let () (declare (not safe)) (_%g210747210850%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig210344%_)
        (let* ((_%g210347210427%_
                (lambda (_%g210348210423%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210348210423%_))))
               (_%g210346210729%_
                (lambda (_%g210348210431%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210348210431%_))
                      (let ((_%e210354210434%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g210348210431%_))))
                        (let ((_%hd210355210438%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210354210434%_)))
                              (_%tl210356210441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210354210434%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210356210441%_))
                              (let ((_%e210357210444%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl210356210441%_))))
                                (let ((_%hd210358210448%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210357210444%_)))
                                      (_%tl210359210451%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210357210444%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd210358210448%_))
                                      (let ((_%e210360210454%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd210358210448%_))))
                                        (if (equal? _%e210360210454%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl210359210451%_))
                                                (let ((_%e210361210458%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl210359210451%_))))
                                                  (let ((_%hd210362210462%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e210361210458%_)))
                                                        (_%tl210363210465%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e210361210458%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd210362210462%_))
                                                        (let ((_%e210364210468%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd210362210462%_))))
                  (let ((_%hd210365210472%_
                         (let ()
                           (declare (not safe))
                           (##car _%e210364210468%_)))
                        (_%tl210366210475%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e210364210468%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd210365210472%_))
                        (if (let ((__tmp213943 |gxc[1]#_g213944_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp213943
                               _%hd210365210472%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl210366210475%_))
                                (let ((_%e210367210478%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl210366210475%_))))
                                  (let ((_%hd210368210482%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e210367210478%_)))
                                        (_%tl210369210485%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e210367210478%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl210369210485%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl210363210465%_))
                                            (let ((_%e210370210488%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl210363210465%_))))
                                              (let ((_%hd210371210492%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e210370210488%_)))
                                                    (_%tl210372210495%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e210370210488%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd210371210492%_))
                                                    (let ((_%e210373210498%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd210371210492%_))))
                                                      (if (equal? _%e210373210498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl210372210495%_))
                      (let ((_%e210374210502%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl210372210495%_))))
                        (let ((_%hd210375210506%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210374210502%_)))
                              (_%tl210376210509%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210374210502%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd210375210506%_))
                              (let ((_%e210377210512%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd210375210506%_))))
                                (let ((_%hd210378210516%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210377210512%_)))
                                      (_%tl210379210519%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210377210512%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd210378210516%_))
                                      (if (let ((__tmp213945
                                                 |gxc[1]#_g213946_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp213945
                                             _%hd210378210516%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl210379210519%_))
                                              (let ((_%e210380210522%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl210379210519%_))))
                                                (let ((_%hd210381210526%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e210380210522%_)))
                                                      (_%tl210382210529%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e210380210522%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl210382210529%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl210376210509%_))
                                                          (let ((_%e210383210532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl210376210509%_))))
                    (let ((_%hd210384210536%_
                           (let ()
                             (declare (not safe))
                             (##car _%e210383210532%_)))
                          (_%tl210385210539%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e210383210532%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd210384210536%_))
                          (let ((_%e210386210542%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd210384210536%_))))
                            (if (equal? _%e210386210542%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl210385210539%_))
                                    (let ((_%e210387210546%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl210385210539%_))))
                                      (let ((_%hd210388210550%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e210387210546%_)))
                                            (_%tl210389210553%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e210387210546%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd210388210550%_))
                                            (let ((_%e210390210556%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd210388210550%_))))
                                              (let ((_%hd210391210560%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e210390210556%_)))
                                                    (_%tl210392210563%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e210390210556%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd210391210560%_))
                                                    (if (let ((__tmp213947
                                                               |gxc[1]#_g213948_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp213947
                                                           _%hd210391210560%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl210392210563%_))
                                                            (let ((_%e210393210566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl210392210563%_))))
                      (let ((_%hd210394210570%_
                             (let ()
                               (declare (not safe))
                               (##car _%e210393210566%_)))
                            (_%tl210395210573%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e210393210566%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl210395210573%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl210389210553%_))
                                (let ((_%e210396210576%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl210389210553%_))))
                                  (let ((_%hd210397210580%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e210396210576%_)))
                                        (_%tl210398210583%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e210396210576%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd210397210580%_))
                                        (let ((_%e210399210586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd210397210580%_))))
                                          (if (equal? _%e210399210586%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl210398210583%_))
                                                  (let ((_%e210400210590%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl210398210583%_))))
                                                    (let ((_%hd210401210594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e210400210590%_)))
                                                          (_%tl210402210597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e210400210590%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd210401210594%_))
                                                          (let ((_%e210403210600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd210401210594%_))))
                    (let ((_%hd210404210604%_
                           (let ()
                             (declare (not safe))
                             (##car _%e210403210600%_)))
                          (_%tl210405210607%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e210403210600%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd210404210604%_))
                          (if (let ((__tmp213949 |gxc[1]#_g213950_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp213949
                                 _%hd210404210604%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl210405210607%_))
                                  (let ((_%e210406210610%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl210405210607%_))))
                                    (let ((_%hd210407210614%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e210406210610%_)))
                                          (_%tl210408210617%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e210406210610%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl210408210617%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl210402210597%_))
                                              (let ((_%e210409210620%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl210402210597%_))))
                                                (let ((_%hd210410210624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e210409210620%_)))
                                                      (_%tl210411210627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e210409210620%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd210410210624%_))
                                                      (let ((_%e210412210630%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd210410210624%_))))
                (if (equal? _%e210412210630%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl210411210627%_))
                        (let ((_%e210413210634%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl210411210627%_))))
                          (let ((_%hd210414210638%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e210413210634%_)))
                                (_%tl210415210641%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e210413210634%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd210414210638%_))
                                (let ((_%e210416210644%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd210414210638%_))))
                                  (let ((_%hd210417210648%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e210416210644%_)))
                                        (_%tl210418210651%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e210416210644%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd210417210648%_))
                                        (if (let ((__tmp213951
                                                   |gxc[1]#_g213952_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp213951
                                               _%hd210417210648%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl210418210651%_))
                                                (let ((_%e210419210654%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl210418210651%_))))
                                                  (let ((_%hd210420210658%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e210419210654%_)))
                                                        (_%tl210421210661%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e210419210654%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl210421210661%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl210415210641%_))
                                                            ((lambda (_%L210664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L210666%_
                              _%L210667%_
                              _%L210668%_
                              _%L210669%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L210666%_))
                           (cons _%L210666%_
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
                       (cons _%L210668%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L210664%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd210420210658%_
                     _%hd210407210614%_
                     _%hd210394210570%_
                     _%hd210381210526%_
                     _%hd210368210482%_)
                    (_%g210347210427%_ _%g210348210431%_))
                (_%g210347210427%_ _%g210348210431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g210347210427%_
                                                 _%g210348210431%_))
                                            (_%g210347210427%_
                                             _%g210348210431%_))
                                        (_%g210347210427%_
                                         _%g210348210431%_))))
                                (_%g210347210427%_ _%g210348210431%_))))
                        (_%g210347210427%_ _%g210348210431%_))
                    (_%g210347210427%_ _%g210348210431%_)))
              (_%g210347210427%_ _%g210348210431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g210347210427%_
                                               _%g210348210431%_))
                                          (_%g210347210427%_
                                           _%g210348210431%_))))
                                  (_%g210347210427%_ _%g210348210431%_))
                              (_%g210347210427%_ _%g210348210431%_))
                          (_%g210347210427%_ _%g210348210431%_))))
                  (_%g210347210427%_ _%g210348210431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g210347210427%_
                                                   _%g210348210431%_))
                                              (_%g210347210427%_
                                               _%g210348210431%_)))
                                        (_%g210347210427%_
                                         _%g210348210431%_))))
                                (_%g210347210427%_ _%g210348210431%_))
                            (_%g210347210427%_ _%g210348210431%_))))
                    (_%g210347210427%_ _%g210348210431%_))
                (_%g210347210427%_ _%g210348210431%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g210347210427%_
                                                     _%g210348210431%_))))
                                            (_%g210347210427%_
                                             _%g210348210431%_))))
                                    (_%g210347210427%_ _%g210348210431%_))
                                (_%g210347210427%_ _%g210348210431%_)))
                          (_%g210347210427%_ _%g210348210431%_))))
                  (_%g210347210427%_ _%g210348210431%_))
              (_%g210347210427%_ _%g210348210431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g210347210427%_
                                               _%g210348210431%_))
                                          (_%g210347210427%_
                                           _%g210348210431%_))
                                      (_%g210347210427%_ _%g210348210431%_))))
                              (_%g210347210427%_ _%g210348210431%_))))
                      (_%g210347210427%_ _%g210348210431%_))
                  (_%g210347210427%_ _%g210348210431%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g210347210427%_
                                                     _%g210348210431%_))))
                                            (_%g210347210427%_
                                             _%g210348210431%_))
                                        (_%g210347210427%_
                                         _%g210348210431%_))))
                                (_%g210347210427%_ _%g210348210431%_))
                            (_%g210347210427%_ _%g210348210431%_))
                        (_%g210347210427%_ _%g210348210431%_))))
                (_%g210347210427%_ _%g210348210431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g210347210427%_
                                                 _%g210348210431%_))
                                            (_%g210347210427%_
                                             _%g210348210431%_)))
                                      (_%g210347210427%_ _%g210348210431%_))))
                              (_%g210347210427%_ _%g210348210431%_))))
                      (_%g210347210427%_ _%g210348210431%_)))))
          (_%g210346210729%_ _%sig210344%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx211501%_)
        (let* ((_%g211504211522%_
                (lambda (_%g211505211518%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211505211518%_))))
               (_%g211503211577%_
                (lambda (_%g211505211526%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211505211526%_))
                      (let ((_%e211508211529%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211505211526%_))))
                        (let ((_%hd211509211533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211508211529%_)))
                              (_%tl211510211536%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211508211529%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211510211536%_))
                              (let ((_%e211511211539%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211510211536%_))))
                                (let ((_%hd211512211543%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211511211539%_)))
                                      (_%tl211513211546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211511211539%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211513211546%_))
                                      (let ((_%e211514211549%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211513211546%_))))
                                        (let ((_%hd211515211553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211514211549%_)))
                                              (_%tl211516211556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211514211549%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211516211556%_))
                                              ((lambda (_%L211559%_
                                                        _%L211561%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L211561%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L211559%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx211501%_
                                                        _%L211561%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx211501%_
                                                        _%L211559%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L211561%_
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
                                                   (cons _%L211559%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g211504211522%_
                                                      _%g211505211526%_)))
                                               _%hd211515211553%_
                                               _%hd211512211543%_)
                                              (_%g211504211522%_
                                               _%g211505211526%_))))
                                      (_%g211504211522%_ _%g211505211526%_))))
                              (_%g211504211522%_ _%g211505211526%_))))
                      (_%g211504211522%_ _%g211505211526%_)))))
          (_%g211503211577%_ _%stx211501%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx211581%_)
        (let* ((_%g211584211608%_
                (lambda (_%g211585211604%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211585211604%_))))
               (_%g211583211891%_
                (lambda (_%g211585211612%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211585211612%_))
                      (let ((_%e211588211615%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211585211612%_))))
                        (let ((_%hd211589211619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211588211615%_)))
                              (_%tl211590211622%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211588211615%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211590211622%_))
                              (let ((_%e211591211625%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211590211622%_))))
                                (let ((_%hd211592211629%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211591211625%_)))
                                      (_%tl211593211632%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211591211625%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl211593211632%_))
                                      (let ((_g213953_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl211593211632%_
                                                '0))))
                                        (begin
                                          (let ((_g213954_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g213953_)
                                                       (##values-length
                                                        _g213953_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g213954_ 2)))
                                                (error "Context expects 2 values"
                                                       _g213954_)))
                                          (let ((_%target211594211635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g213953_ 0)))
                                                (_%tl211596211638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g213953_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211596211638%_))
                                                (letrec ((_%loop211597211641%_
                                                          (lambda (_%hd211595211645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature211601211648%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd211595211645%_))
                        (let ((_%e211598211651%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd211595211645%_))))
                          (let ((_%lp-hd211599211655%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211598211651%_)))
                                (_%lp-tl211600211658%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211598211651%_))))
                            (_%loop211597211641%_
                             _%lp-tl211600211658%_
                             (cons _%lp-hd211599211655%_
                                   _%signature211601211648%_))))
                        (let ((_%signature211602211661%_
                               (reverse _%signature211601211648%_)))
                          ((lambda (_%L211665%_ _%L211667%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L211667%_))
                                 (let* ((_%g211685211700%_
                                         (lambda (_%g211686211696%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g211686211696%_))))
                                        (_%g211684211879%_
                                         (lambda (_%g211686211704%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g211686211704%_))
                                               (let ((_%e211689211707%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g211686211704%_))))
                                                 (let ((_%hd211690211711%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e211689211707%_)))
                                                       (_%tl211691211714%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e211689211707%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl211691211714%_))
                                                       (let ((_%e211692211717%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl211691211714%_))))
                 (let ((_%hd211693211721%_
                        (let ()
                          (declare (not safe))
                          (##car _%e211692211717%_)))
                       (_%tl211694211724%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e211692211717%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl211694211724%_))
                       ((lambda (_%L211727%_ _%L211729%_)
                          (let* ((_%g211745211753%_
                                  (lambda (_%g211746211749%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g211746211749%_))))
                                 (_%g211744211875%_
                                  (lambda (_%g211746211757%_)
                                    ((lambda (_%L211760%_)
                                       (let* ((_%unchecked211773%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L211727%_))
                                              (_%g211776211784%_
                                               (lambda (_%g211777211780%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g211777211780%_))))
                                              (_%g211775211807%_
                                               (lambda (_%g211777211788%_)
                                                 ((lambda (_%L211791%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L211760%_
                                                                (cons _%L211791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g211777211788%_))))
                                         (_%g211775211807%_
                                          (if _%unchecked211773%_
                                              (let* ((_%g211811211826%_
                                                      (lambda (_%g211812211822%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g211812211822%_))))
                                                     (_%g211810211871%_
                                                      (lambda (_%g211812211830%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g211812211830%_))
                                                            (let ((_%e211815211833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g211812211830%_))))
                      (let ((_%hd211816211837%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211815211833%_)))
                            (_%tl211817211840%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211815211833%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl211817211840%_))
                            (let ((_%e211818211843%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl211817211840%_))))
                              (let ((_%hd211819211847%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e211818211843%_)))
                                    (_%tl211820211850%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e211818211843%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl211820211850%_))
                                    ((lambda (_%L211853%_ _%L211855%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L211855%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L211729%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L211853%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd211819211847%_
                                     _%hd211816211837%_)
                                    (_%g211811211826%_ _%g211812211830%_))))
                            (_%g211811211826%_ _%g211812211830%_))))
                    (_%g211811211826%_ _%g211812211830%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g211810211871%_
                                                 _%unchecked211773%_))
                                              '(begin)))))
                                     _%g211746211757%_))))
                            (_%g211744211875%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L211667%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L211729%_ '()))
                   (cons '#f (cons 'signature: (cons _%L211727%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd211693211721%_
                        _%hd211690211711%_)
                       (_%g211685211700%_ _%g211686211704%_))))
               (_%g211685211700%_ _%g211686211704%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g211685211700%_
                                                _%g211686211704%_)))))
                                   (_%g211684211879%_
                                    (|gxc[1]#parse-signature|
                                     _%stx211581%_
                                     _%L211667%_
                                     (let ((__tmp213955
                                            (lambda (_%g211882211885%_
                                                     _%g211883211888%_)
                                              (cons _%g211882211885%_
                                                    _%g211883211888%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp213955
                                        '()
                                        _%L211665%_)))))
                                 (_%g211584211608%_ _%g211585211612%_)))
                           _%signature211602211661%_
                           _%hd211592211629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop211597211641%_
                                                   _%target211594211635%_
                                                   '()))
                                                (_%g211584211608%_
                                                 _%g211585211612%_)))))
                                      (_%g211584211608%_ _%g211585211612%_))))
                              (_%g211584211608%_ _%g211585211612%_))))
                      (_%g211584211608%_ _%g211585211612%_)))))
          (_%g211583211891%_ _%stx211581%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx211896%_)
        (let* ((_%g211899211923%_
                (lambda (_%g211900211919%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211900211919%_))))
               (_%g211898212806%_
                (lambda (_%g211900211927%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211900211927%_))
                      (let ((_%e211903211930%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211900211927%_))))
                        (let ((_%hd211904211934%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211903211930%_)))
                              (_%tl211905211937%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211903211930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211905211937%_))
                              (let ((_%e211906211940%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211905211937%_))))
                                (let ((_%hd211907211944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211906211940%_)))
                                      (_%tl211908211947%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211906211940%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl211908211947%_))
                                      (let ((_g213956_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl211908211947%_
                                                '0))))
                                        (begin
                                          (let ((_g213957_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g213956_)
                                                       (##values-length
                                                        _g213956_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g213957_ 2)))
                                                (error "Context expects 2 values"
                                                       _g213957_)))
                                          (let ((_%target211909211950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g213956_ 0)))
                                                (_%tl211911211953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g213956_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211911211953%_))
                                                (letrec ((_%loop211912211956%_
                                                          (lambda (_%hd211910211960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature211916211963%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd211910211960%_))
                        (let ((_%e211913211966%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd211910211960%_))))
                          (let ((_%lp-hd211914211970%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211913211966%_)))
                                (_%lp-tl211915211973%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211913211966%_))))
                            (_%loop211912211956%_
                             _%lp-tl211915211973%_
                             (cons _%lp-hd211914211970%_
                                   _%case-signature211916211963%_))))
                        (let ((_%case-signature211917211976%_
                               (reverse _%case-signature211916211963%_)))
                          ((lambda (_%L211980%_ _%L211982%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L211982%_))
                                 (let* ((_%signatures212013%_
                                         (map (lambda (_%g211999212001%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx211896%_
                                                 _%L211982%_
                                                 _%g211999212001%_))
                                              (let ((__tmp213958
                                                     (lambda (_%g212004212007%_
                                                              _%g212005212010%_)
                                                       (cons _%g212004212007%_
                                                             _%g212005212010%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp213958
                                                 '()
                                                 _%L211980%_))))
                                        (_%g212016212042%_
                                         (lambda (_%g212017212038%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g212017212038%_))))
                                        (_%g212015212802%_
                                         (lambda (_%g212017212046%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g212017212046%_))
                                               (let ((_g213959_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g212017212046%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g213960_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g213959_)
                        (##values-length _g213959_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g213960_ 2)))
                 (error "Context expects 2 values" _g213960_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target212020212049%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g213959_
                                                             0)))
                                                         (_%tl212022212052%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g213959_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl212022212052%_))
                                                         (letrec ((_%loop212023212055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd212021212059%_
                                    _%sig212027212062%_
                                    _%arity212028212064%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd212021212059%_))
                                 (let ((_%e212024212067%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd212021212059%_))))
                                   (let ((_%lp-hd212025212071%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e212024212067%_)))
                                         (_%lp-tl212026212074%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e212024212067%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd212025212071%_))
                                         (let ((_%e212031212077%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd212025212071%_))))
                                           (let ((_%hd212032212081%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e212031212077%_)))
                                                 (_%tl212033212084%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e212031212077%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl212033212084%_))
                                                 (let ((_%e212034212087%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl212033212084%_))))
                                                   (let ((_%hd212035212091%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e212034212087%_)))
                                                         (_%tl212036212094%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e212034212087%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl212036212094%_))
                                                         (_%loop212023212055%_
                                                          _%lp-tl212026212074%_
                                                          (cons _%hd212035212091%_
                                                                _%sig212027212062%_)
                                                          (cons _%hd212032212081%_
                                                                _%arity212028212064%_))
                                                         (_%g212016212042%_
                                                          _%g212017212046%_))))
                                                 (_%g212016212042%_
                                                  _%g212017212046%_))))
                                         (_%g212016212042%_
                                          _%g212017212046%_))))
                                 (let ((_%sig212029212097%_
                                        (reverse _%sig212027212062%_))
                                       (_%arity212030212100%_
                                        (reverse _%arity212028212064%_)))
                                   ((lambda (_%L212103%_ _%L212105%_)
                                      (let* ((_%g212122212130%_
                                              (lambda (_%g212123212126%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g212123212126%_))))
                                             (_%g212121212787%_
                                              (lambda (_%g212123212134%_)
                                                ((lambda (_%L212137%_)
                                                   (let* ((_%g212150212158%_
                                                           (lambda (_%g212151212154%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g212151212154%_))))
                  (_%g212149212180%_
                   (lambda (_%g212151212162%_)
                     ((lambda (_%L212165%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L212137%_ (cons _%L212165%_ '()))))
                      _%g212151212162%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g212149212180%_
                                                      (let ((_g213961_
                                                             (let _%loop212184%_ ((_%rest212187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures212013%_)
                                          (_%unchecked-proc212189%_ '#f)
                                          (_%unchecked-clauses212190%_ '()))
                       (let* ((_%rest212191212199%_ _%rest212187%_)
                              (_%else212193212211%_
                               (lambda ()
                                 (values _%unchecked-proc212189%_
                                         (reverse!
                                          _%unchecked-clauses212190%_))))
                              (_%K212195212652%_
                               (lambda (_%rest212215%_ _%hd212217%_)
                                 (let* ((_%g212219212306%_
                                         (lambda (_%g212220212302%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g212220212302%_))))
                                        (_%g212218212648%_
                                         (lambda (_%g212220212310%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g212220212310%_))
                                               (let ((_%e212227212313%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g212220212310%_))))
                                                 (let ((_%hd212228212317%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e212227212313%_)))
                                                       (_%tl212229212320%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e212227212313%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl212229212320%_))
                                                       (let ((_%e212230212323%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl212229212320%_))))
                 (let ((_%hd212231212327%_
                        (let ()
                          (declare (not safe))
                          (##car _%e212230212323%_)))
                       (_%tl212232212330%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e212230212323%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd212231212327%_))
                       (let ((_%e212233212333%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd212231212327%_))))
                         (let ((_%hd212234212337%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e212233212333%_)))
                               (_%tl212235212340%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e212233212333%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl212235212340%_))
                               (let ((_%e212236212343%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl212235212340%_))))
                                 (let ((_%hd212237212347%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e212236212343%_)))
                                       (_%tl212238212350%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e212236212343%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd212237212347%_))
                                       (let ((_%e212239212353%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd212237212347%_))))
                                         (if (equal? _%e212239212353%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl212238212350%_))
                                                 (let ((_%e212240212357%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl212238212350%_))))
                                                   (let ((_%hd212241212361%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e212240212357%_)))
                                                         (_%tl212242212364%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e212240212357%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd212241212361%_))
                                                         (let ((_%e212243212367%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd212241212361%_))))
                   (let ((_%hd212244212371%_
                          (let ()
                            (declare (not safe))
                            (##car _%e212243212367%_)))
                         (_%tl212245212374%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e212243212367%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd212244212371%_))
                         (if (let ((__tmp213963 |gxc[1]#_g213964_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp213963
                                _%hd212244212371%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl212245212374%_))
                                 (let ((_%e212246212377%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl212245212374%_))))
                                   (let ((_%hd212247212381%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e212246212377%_)))
                                         (_%tl212248212384%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e212246212377%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl212248212384%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl212242212364%_))
                                             (let ((_%e212249212387%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl212242212364%_))))
                                               (let ((_%hd212250212391%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e212249212387%_)))
                                                     (_%tl212251212394%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e212249212387%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd212250212391%_))
                                                     (let ((_%e212252212397%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd212250212391%_))))
                                                       (if (equal? _%e212252212397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl212251212394%_))
                       (let ((_%e212253212401%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl212251212394%_))))
                         (let ((_%hd212254212405%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e212253212401%_)))
                               (_%tl212255212408%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e212253212401%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd212254212405%_))
                               (let ((_%e212256212411%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd212254212405%_))))
                                 (let ((_%hd212257212415%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e212256212411%_)))
                                       (_%tl212258212418%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e212256212411%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd212257212415%_))
                                       (if (let ((__tmp213965
                                                  |gxc[1]#_g213966_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp213965
                                              _%hd212257212415%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl212258212418%_))
                                               (let ((_%e212259212421%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl212258212418%_))))
                                                 (let ((_%hd212260212425%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e212259212421%_)))
                                                       (_%tl212261212428%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e212259212421%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl212261212428%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl212255212408%_))
                                                           (let ((_%e212262212431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl212255212408%_))))
                     (let ((_%hd212263212435%_
                            (let ()
                              (declare (not safe))
                              (##car _%e212262212431%_)))
                           (_%tl212264212438%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e212262212431%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd212263212435%_))
                           (let ((_%e212265212441%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd212263212435%_))))
                             (if (equal? _%e212265212441%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl212264212438%_))
                                     (let ((_%e212266212445%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl212264212438%_))))
                                       (let ((_%hd212267212449%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e212266212445%_)))
                                             (_%tl212268212452%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e212266212445%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd212267212449%_))
                                             (let ((_%e212269212455%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd212267212449%_))))
                                               (let ((_%hd212270212459%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e212269212455%_)))
                                                     (_%tl212271212462%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e212269212455%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd212270212459%_))
                                                     (if (let ((__tmp213967
                                                                |gxc[1]#_g213968_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp213967
                                                            _%hd212270212459%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl212271212462%_))
                     (let ((_%e212272212465%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl212271212462%_))))
                       (let ((_%hd212273212469%_
                              (let ()
                                (declare (not safe))
                                (##car _%e212272212465%_)))
                             (_%tl212274212472%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e212272212465%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl212274212472%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl212268212452%_))
                                 (let ((_%e212275212475%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl212268212452%_))))
                                   (let ((_%hd212276212479%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e212275212475%_)))
                                         (_%tl212277212482%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e212275212475%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd212276212479%_))
                                         (let ((_%e212278212485%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd212276212479%_))))
                                           (if (equal? _%e212278212485%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl212277212482%_))
                                                   (let ((_%e212279212489%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl212277212482%_))))
                                                     (let ((_%hd212280212493%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e212279212489%_)))
                                                           (_%tl212281212496%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e212279212489%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd212280212493%_))
                                                           (let ((_%e212282212499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd212280212493%_))))
                     (let ((_%hd212283212503%_
                            (let ()
                              (declare (not safe))
                              (##car _%e212282212499%_)))
                           (_%tl212284212506%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e212282212499%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd212283212503%_))
                           (if (let ((__tmp213969 |gxc[1]#_g213970_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp213969
                                  _%hd212283212503%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl212284212506%_))
                                   (let ((_%e212285212509%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl212284212506%_))))
                                     (let ((_%hd212286212513%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e212285212509%_)))
                                           (_%tl212287212516%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e212285212509%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl212287212516%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl212281212496%_))
                                               (let ((_%e212288212519%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl212281212496%_))))
                                                 (let ((_%hd212289212523%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e212288212519%_)))
                                                       (_%tl212290212526%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e212288212519%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd212289212523%_))
                                                       (let ((_%e212291212529%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd212289212523%_))))
                 (if (equal? _%e212291212529%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl212290212526%_))
                         (let ((_%e212292212533%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl212290212526%_))))
                           (let ((_%hd212293212537%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e212292212533%_)))
                                 (_%tl212294212540%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e212292212533%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd212293212537%_))
                                 (let ((_%e212295212543%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd212293212537%_))))
                                   (let ((_%hd212296212547%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e212295212543%_)))
                                         (_%tl212297212550%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e212295212543%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd212296212547%_))
                                         (if (let ((__tmp213971
                                                    |gxc[1]#_g213972_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp213971
                                                _%hd212296212547%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl212297212550%_))
                                                 (let ((_%e212298212553%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl212297212550%_))))
                                                   (let ((_%hd212299212557%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e212298212553%_)))
                                                         (_%tl212300212560%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e212298212553%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl212300212560%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl212294212540%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl212232212330%_))
                         ((lambda (_%L212563%_
                                   _%L212565%_
                                   _%L212566%_
                                   _%L212567%_
                                   _%L212568%_
                                   _%L212569%_)
                            (let ((_%clause212640%_
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
                                                     (cons _%L212569%_ '()))
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
                                                 (cons _%L212567%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L212563%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked212642%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L212565%_))))
                              (_%loop212184%_
                               _%rest212215%_
                               (let ((_%$e212644%_ _%unchecked212642%_))
                                 (if _%$e212644%_
                                     _%$e212644%_
                                     _%unchecked-proc212189%_))
                               (cons _%clause212640%_
                                     _%unchecked-clauses212190%_))))
                          _%hd212299212557%_
                          _%hd212286212513%_
                          _%hd212273212469%_
                          _%hd212260212425%_
                          _%hd212247212381%_
                          _%hd212228212317%_)
                         (_%g212219212306%_ _%g212220212310%_))
                     (_%g212219212306%_ _%g212220212310%_))
                 (_%g212219212306%_ _%g212220212310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g212219212306%_
                                                  _%g212220212310%_))
                                             (_%g212219212306%_
                                              _%g212220212310%_))
                                         (_%g212219212306%_
                                          _%g212220212310%_))))
                                 (_%g212219212306%_ _%g212220212310%_))))
                         (_%g212219212306%_ _%g212220212310%_))
                     (_%g212219212306%_ _%g212220212310%_)))
               (_%g212219212306%_ _%g212220212310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g212219212306%_
                                                _%g212220212310%_))
                                           (_%g212219212306%_
                                            _%g212220212310%_))))
                                   (_%g212219212306%_ _%g212220212310%_))
                               (_%g212219212306%_ _%g212220212310%_))
                           (_%g212219212306%_ _%g212220212310%_))))
                   (_%g212219212306%_ _%g212220212310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g212219212306%_
                                                    _%g212220212310%_))
                                               (_%g212219212306%_
                                                _%g212220212310%_)))
                                         (_%g212219212306%_
                                          _%g212220212310%_))))
                                 (_%g212219212306%_ _%g212220212310%_))
                             (_%g212219212306%_ _%g212220212310%_))))
                     (_%g212219212306%_ _%g212220212310%_))
                 (_%g212219212306%_ _%g212220212310%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g212219212306%_
                                                      _%g212220212310%_))))
                                             (_%g212219212306%_
                                              _%g212220212310%_))))
                                     (_%g212219212306%_ _%g212220212310%_))
                                 (_%g212219212306%_ _%g212220212310%_)))
                           (_%g212219212306%_ _%g212220212310%_))))
                   (_%g212219212306%_ _%g212220212310%_))
               (_%g212219212306%_ _%g212220212310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g212219212306%_
                                                _%g212220212310%_))
                                           (_%g212219212306%_
                                            _%g212220212310%_))
                                       (_%g212219212306%_ _%g212220212310%_))))
                               (_%g212219212306%_ _%g212220212310%_))))
                       (_%g212219212306%_ _%g212220212310%_))
                   (_%g212219212306%_ _%g212220212310%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g212219212306%_
                                                      _%g212220212310%_))))
                                             (_%g212219212306%_
                                              _%g212220212310%_))
                                         (_%g212219212306%_
                                          _%g212220212310%_))))
                                 (_%g212219212306%_ _%g212220212310%_))
                             (_%g212219212306%_ _%g212220212310%_))
                         (_%g212219212306%_ _%g212220212310%_))))
                 (_%g212219212306%_ _%g212220212310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g212219212306%_
                                                  _%g212220212310%_))
                                             (_%g212219212306%_
                                              _%g212220212310%_)))
                                       (_%g212219212306%_ _%g212220212310%_))))
                               (_%g212219212306%_ _%g212220212310%_))))
                       (_%g212219212306%_ _%g212220212310%_))))
               (_%g212219212306%_ _%g212220212310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g212219212306%_
                                                _%g212220212310%_)))))
                                   (_%g212218212648%_ _%hd212217%_)))))
                         (if (pair? _%rest212191212199%_)
                             (let ((_%hd212196212656%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest212191212199%_)))
                                   (_%tl212197212659%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest212191212199%_))))
                               (let* ((_%hd212662%_ _%hd212196212656%_)
                                      (_%rest212665%_ _%tl212197212659%_))
                                 (_%K212195212652%_
                                  _%rest212665%_
                                  _%hd212662%_)))
                             (_%else212193212211%_))))))
                (begin
                  (let ((_g213962_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g213961_)
                               (##values-length _g213961_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g213962_ 2)))
                        (error "Context expects 2 values" _g213962_)))
                  (let ((_%unchecked-proc212668%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g213961_ 0)))
                        (_%unchecked-clauses212670%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g213961_ 1))))
                    (if _%unchecked-proc212668%_
                        (let* ((_%g212672212696%_
                                (lambda (_%g212673212692%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g212673212692%_))))
                               (_%g212671212783%_
                                (lambda (_%g212673212700%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g212673212700%_))
                                      (let ((_%e212676212703%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g212673212700%_))))
                                        (let ((_%hd212677212707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212676212703%_)))
                                              (_%tl212678212710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212676212703%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212678212710%_))
                                              (let ((_%e212679212713%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212678212710%_))))
                                                (let ((_%hd212680212717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212679212713%_)))
                                                      (_%tl212681212720%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212679212713%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd212680212717%_))
                                                      (let ((_g213973_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd212680212717%_ '0))))
                (begin
                  (let ((_g213974_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g213973_)
                               (##values-length _g213973_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g213974_ 2)))
                        (error "Context expects 2 values" _g213974_)))
                  (let ((_%target212682212723%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g213973_ 0)))
                        (_%tl212684212726%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g213973_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl212684212726%_))
                        (letrec ((_%loop212685212729%_
                                  (lambda (_%hd212683212733%_
                                           _%clause212689212736%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd212683212733%_))
                                        (let ((_%e212686212739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd212683212733%_))))
                                          (let ((_%lp-hd212687212743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e212686212739%_)))
                                                (_%lp-tl212688212746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e212686212739%_))))
                                            (_%loop212685212729%_
                                             _%lp-tl212688212746%_
                                             (cons _%lp-hd212687212743%_
                                                   _%clause212689212736%_))))
                                        (let ((_%clause212690212749%_
                                               (reverse _%clause212689212736%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212681212720%_))
                                              ((lambda (_%L212753%_
                                                        _%L212755%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L212755%_
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
                                             (let ((__tmp213975
                                                    (lambda (_%g212774212777%_
                                                             _%g212775212780%_)
                                                      (cons _%g212774212777%_
                                                            _%g212775212780%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp213975
                                                '()
                                                _%L212753%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause212690212749%_
                                               _%hd212677212707%_)
                                              (_%g212672212696%_
                                               _%g212673212700%_)))))))
                          (_%loop212685212729%_ _%target212682212723%_ '()))
                        (_%g212672212696%_ _%g212673212700%_)))))
              (_%g212672212696%_ _%g212673212700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g212672212696%_
                                               _%g212673212700%_))))
                                      (_%g212672212696%_ _%g212673212700%_)))))
                          (_%g212671212783%_
                           (list _%unchecked-proc212668%_
                                 _%unchecked-clauses212670%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g212123212134%_))))
                                        (_%g212121212787%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L211982%_
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
                                          _%L212103%_
                                          _%L212105%_))
                                       (let ((__tmp213976
                                              (lambda (_%g212790212794%_
                                                       _%g212791212797%_
                                                       _%g212792212799%_)
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
                                (cons _%g212791212797%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g212790212794%_ '())))))
              _%g212792212799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp213976
                                          '()
                                          _%L212103%_
                                          _%L212105%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig212029212097%_
                                    _%arity212030212100%_))))))
                   (_%loop212023212055%_ _%target212020212049%_ '() '()))
                 (_%g212016212042%_ _%g212017212046%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g212016212042%_
                                                _%g212017212046%_)))))
                                   (_%g212015212802%_ _%signatures212013%_))
                                 (_%g211899211923%_ _%g211900211927%_)))
                           _%case-signature211917211976%_
                           _%hd211907211944%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop211912211956%_
                                                   _%target211909211950%_
                                                   '()))
                                                (_%g211899211923%_
                                                 _%g211900211927%_)))))
                                      (_%g211899211923%_ _%g211900211927%_))))
                              (_%g211899211923%_ _%g211900211927%_))))
                      (_%g211899211923%_ _%g211900211927%_)))))
          (_%g211898212806%_ _%stx211896%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx212814%_)
        (let* ((_%__stx213796213797%_ _%$stx212814%_)
               (_%g212820212880%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx213796213797%_)))))
          (let ((_%__kont213799213800%_
                 (lambda (_%L213102%_ _%L213104%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L213104%_ '()))
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
                                                       (cons _%L213104%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L213102%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont213801213802%_
                 (lambda (_%L213027%_ _%L213029%_ _%L213030%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L213030%_ '()))
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
                                                       (cons _%L213030%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L213029%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L213027%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont213803213804%_
                 (lambda (_%L212941%_ _%L212943%_ _%L212944%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L212944%_ '()))
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
                                                       (cons _%L212944%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L212943%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L212941%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx213796213797%_))
                (let ((_%e212824213058%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx213796213797%_))))
                  (let ((_%tl212826213065%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e212824213058%_)))
                        (_%hd212825213062%_
                         (let ()
                           (declare (not safe))
                           (##car _%e212824213058%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl212826213065%_))
                        (let ((_%e212827213068%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl212826213065%_))))
                          (let ((_%tl212829213075%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e212827213068%_)))
                                (_%hd212828213072%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e212827213068%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd212828213072%_))
                                (let ((_%e212830213078%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd212828213072%_))))
                                  (if (equal? _%e212830213078%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl212829213075%_))
                                          (let ((_%e212831213082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl212829213075%_))))
                                            (let ((_%tl212833213089%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e212831213082%_)))
                                                  (_%hd212832213086%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e212831213082%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl212833213089%_))
                                                  (let ((_%e212834213092%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl212833213089%_))))
                                                    (let ((_%tl212836213099%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e212834213092%_)))
                                                          (_%hd212835213096%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e212834213092%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl212836213099%_))
                                                          (_%__kont213799213800%_
                                                           _%hd212835213096%_
                                                           _%hd212832213086%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g212820212880%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g212820212880%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g212820212880%_)))
                                      (if (equal? _%e212830213078%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212829213075%_))
                                              (let ((_%e212847212997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212829213075%_))))
                                                (let ((_%tl212849213004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212847212997%_)))
                                                      (_%hd212848213001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212847212997%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl212849213004%_))
                                                      (let ((_%e212850213007%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl212849213004%_))))
                (let ((_%tl212852213014%_
                       (let () (declare (not safe)) (##cdr _%e212850213007%_)))
                      (_%hd212851213011%_
                       (let ()
                         (declare (not safe))
                         (##car _%e212850213007%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl212852213014%_))
                      (let ((_%e212853213017%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl212852213014%_))))
                        (let ((_%tl212855213024%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212853213017%_)))
                              (_%hd212854213021%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212853213017%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl212855213024%_))
                              (_%__kont213801213802%_
                               _%hd212854213021%_
                               _%hd212851213011%_
                               _%hd212848213001%_)
                              (let ()
                                (declare (not safe))
                                (_%g212820212880%_)))))
                      (let () (declare (not safe)) (_%g212820212880%_)))))
              (let () (declare (not safe)) (_%g212820212880%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g212820212880%_)))
                                          (if (equal? _%e212830213078%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl212829213075%_))
                                                  (let ((_%e212866212911%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl212829213075%_))))
                                                    (let ((_%tl212868212918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e212866212911%_)))
                                                          (_%hd212867212915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e212866212911%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl212868212918%_))
                                                          (let ((_%e212869212921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl212868212918%_))))
                    (let ((_%tl212871212928%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e212869212921%_)))
                          (_%hd212870212925%_
                           (let ()
                             (declare (not safe))
                             (##car _%e212869212921%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl212871212928%_))
                          (let ((_%e212872212931%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl212871212928%_))))
                            (let ((_%tl212874212938%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e212872212931%_)))
                                  (_%hd212873212935%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e212872212931%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl212874212938%_))
                                  (_%__kont213803213804%_
                                   _%hd212873212935%_
                                   _%hd212870212925%_
                                   _%hd212867212915%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g212820212880%_)))))
                          (let () (declare (not safe)) (_%g212820212880%_)))))
                  (let () (declare (not safe)) (_%g212820212880%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g212820212880%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g212820212880%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g212820212880%_)))))
                        (let () (declare (not safe)) (_%g212820212880%_)))))
                (let () (declare (not safe)) (_%g212820212880%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx213126%_)
        (let* ((_%g213130213150%_
                (lambda (_%g213131213146%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g213131213146%_))))
               (_%g213129213221%_
                (lambda (_%g213131213154%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g213131213154%_))
                      (let ((_%e213133213157%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g213131213154%_))))
                        (let ((_%hd213134213161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e213133213157%_)))
                              (_%tl213135213164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e213133213157%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl213135213164%_))
                              (let ((_g213977_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl213135213164%_
                                        '0))))
                                (begin
                                  (let ((_g213978_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g213977_)
                                               (##values-length _g213977_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g213978_ 2)))
                                        (error "Context expects 2 values"
                                               _g213978_)))
                                  (let ((_%target213136213167%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213977_ 0)))
                                        (_%tl213138213170%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213977_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl213138213170%_))
                                        (letrec ((_%loop213139213173%_
                                                  (lambda (_%hd213137213177%_
                                                           _%decl213143213180%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd213137213177%_))
                                                        (let ((_%e213140213183%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd213137213177%_))))
                  (let ((_%lp-hd213141213187%_
                         (let ()
                           (declare (not safe))
                           (##car _%e213140213183%_)))
                        (_%lp-tl213142213190%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e213140213183%_))))
                    (_%loop213139213173%_
                     _%lp-tl213142213190%_
                     (cons _%lp-hd213141213187%_ _%decl213143213180%_))))
                (let ((_%decl213144213193%_ (reverse _%decl213143213180%_)))
                  ((lambda (_%L213197%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp213979
                                  (lambda (_%g213212213215%_ _%g213213213218%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g213212213215%_)
                                          _%g213213213218%_))))
                             (declare (not safe))
                             (__foldr1 __tmp213979 '() _%L213197%_))))
                   _%decl213144213193%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop213139213173%_
                                           _%target213136213167%_
                                           '()))
                                        (_%g213130213150%_
                                         _%g213131213154%_)))))
                              (_%g213130213150%_ _%g213131213154%_))))
                      (_%g213130213150%_ _%g213131213154%_)))))
          (_%g213129213221%_ _%$stx213126%_))))))
