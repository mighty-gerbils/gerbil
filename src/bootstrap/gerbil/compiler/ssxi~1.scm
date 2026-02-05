(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g232907_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232914_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232916_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232918_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232920_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232922_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232934_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232936_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232938_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232940_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232942_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx226365%_)
        (let* ((_%g226369226387%_
                (lambda (_%g226370226383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226370226383%_))))
               (_%g226368226442%_
                (lambda (_%g226370226391%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226370226391%_))
                      (let ((_%e226373226394%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226370226391%_))))
                        (let ((_%hd226374226398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226373226394%_)))
                              (_%tl226375226401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226373226394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226375226401%_))
                              (let ((_%e226376226404%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226375226401%_))))
                                (let ((_%hd226377226408%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226376226404%_)))
                                      (_%tl226378226411%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226376226404%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226378226411%_))
                                      (let ((_%e226379226414%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226378226411%_))))
                                        (let ((_%hd226380226418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226379226414%_)))
                                              (_%tl226381226421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226379226414%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226381226421%_))
                                              ((lambda (_%g226371226424%_
                                                        _%g226372226426%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g226372226426%_))
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
                               (cons _%g226372226426%_ '()))
                         (cons _%g226371226424%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g226369226387%_
                                                      _%g226370226391%_)))
                                               _%hd226380226418%_
                                               _%hd226377226408%_)
                                              (_%g226369226387%_
                                               _%g226370226391%_))))
                                      (_%g226369226387%_ _%g226370226391%_))))
                              (_%g226369226387%_ _%g226370226391%_))))
                      (_%g226369226387%_ _%g226370226391%_)))))
          (_%g226368226442%_ _%$stx226365%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx226446%_)
        (let* ((_%g226450226468%_
                (lambda (_%g226451226464%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226451226464%_))))
               (_%g226449226523%_
                (lambda (_%g226451226472%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226451226472%_))
                      (let ((_%e226454226475%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226451226472%_))))
                        (let ((_%hd226455226479%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226454226475%_)))
                              (_%tl226456226482%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226454226475%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226456226482%_))
                              (let ((_%e226457226485%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226456226482%_))))
                                (let ((_%hd226458226489%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226457226485%_)))
                                      (_%tl226459226492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226457226485%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226459226492%_))
                                      (let ((_%e226460226495%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226459226492%_))))
                                        (let ((_%hd226461226499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226460226495%_)))
                                              (_%tl226462226502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226460226495%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226462226502%_))
                                              ((lambda (_%g226452226505%_
                                                        _%g226453226507%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g226453226507%_))
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
                               (cons _%g226453226507%_ '()))
                         (cons _%g226452226505%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g226450226468%_
                                                      _%g226451226472%_)))
                                               _%hd226461226499%_
                                               _%hd226458226489%_)
                                              (_%g226450226468%_
                                               _%g226451226472%_))))
                                      (_%g226450226468%_ _%g226451226472%_))))
                              (_%g226450226468%_ _%g226451226472%_))))
                      (_%g226450226468%_ _%g226451226472%_)))))
          (_%g226449226523%_ _%$stx226446%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx226527%_)
        (let* ((_%g226531226560%_
                (lambda (_%g226532226556%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226532226556%_))))
               (_%g226530226656%_
                (lambda (_%g226532226564%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226532226564%_))
                      (let ((_%e226535226567%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226532226564%_))))
                        (let ((_%hd226536226571%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226535226567%_)))
                              (_%tl226537226574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226535226567%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl226537226574%_))
                              (let ((_g232885_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl226537226574%_
                                        '0))))
                                (begin
                                  (let ((_g232886_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232885_)
                                               (##values-length _g232885_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232886_ 2)))
                                        (error "Context expects 2 values"
                                               _g232886_)))
                                  (let ((_%target226538226577%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232885_ 0)))
                                        (_%tl226540226580%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232885_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226540226580%_))
                                        (letrec ((_%loop226541226583%_
                                                  (lambda (_%hd226539226587%_
                                                           _%type226545226590%_
                                                           _%symbol226546226591%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd226539226587%_))
                                                        (let ((_%e226542226593%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd226539226587%_))))
                  (let ((_%lp-hd226543226597%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226542226593%_)))
                        (_%lp-tl226544226600%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226542226593%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd226543226597%_))
                        (let ((_%e226549226603%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd226543226597%_))))
                          (let ((_%hd226550226607%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226549226603%_)))
                                (_%tl226551226610%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226549226603%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226551226610%_))
                                (let ((_%e226552226613%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl226551226610%_))))
                                  (let ((_%hd226553226617%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226552226613%_)))
                                        (_%tl226554226620%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226552226613%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226554226620%_))
                                        (_%loop226541226583%_
                                         _%lp-tl226544226600%_
                                         (cons _%hd226553226617%_
                                               _%type226545226590%_)
                                         (cons _%hd226550226607%_
                                               _%symbol226546226591%_))
                                        (_%g226531226560%_
                                         _%g226532226564%_))))
                                (_%g226531226560%_ _%g226532226564%_))))
                        (_%g226531226560%_ _%g226532226564%_))))
                (let ((_%type226547226623%_ (reverse _%type226545226590%_))
                      (_%symbol226548226625%_
                       (reverse _%symbol226546226591%_)))
                  ((lambda (_%g226533226627%_ _%g226534226629%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g226533226627%_
                                _%g226534226629%_))
                             (let ((__tmp232887
                                    (lambda (_%g226644226648%_
                                             _%g226645226651%_
                                             _%g226646226653%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g226645226651%_
                                                        (cons _%g226644226648%_
                                                              '())))
                                            _%g226646226653%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp232887
                                '()
                                _%g226533226627%_
                                _%g226534226629%_)))))
                   _%type226547226623%_
                   _%symbol226548226625%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop226541226583%_
                                           _%target226538226577%_
                                           '()
                                           '()))
                                        (_%g226531226560%_
                                         _%g226532226564%_)))))
                              (_%g226531226560%_ _%g226532226564%_))))
                      (_%g226531226560%_ _%g226532226564%_)))))
          (_%g226530226656%_ _%$stx226527%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx226661%_)
        (let* ((_%__stx232196232197%_ _%$stx226661%_)
               (_%g226666226708%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232196232197%_)))))
          (let ((_%__kont232199232200%_
                 (lambda (_%g226668226836%_
                          _%g226669226838%_
                          _%g226670226839%_
                          _%g226671226840%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g226671226840%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g226670226839%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g226669226838%_ '()))
                                           (cons _%g226668226836%_ '())))))))
                (_%__kont232201232202%_
                 (lambda (_%g226687226755%_
                          _%g226688226757%_
                          _%g226689226758%_
                          _%g226690226759%_)
                   (cons _%g226690226759%_
                         (cons _%g226689226758%_
                               (cons _%g226688226757%_
                                     (cons _%g226687226755%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match232235232236%_
                   (lambda (_%e226672226786%_
                            _%hd226673226790%_
                            _%tl226674226793%_
                            _%e226675226796%_
                            _%hd226676226800%_
                            _%tl226677226803%_
                            _%e226678226806%_
                            _%hd226679226810%_
                            _%tl226680226813%_
                            _%e226681226816%_
                            _%hd226682226820%_
                            _%tl226683226823%_
                            _%e226684226826%_
                            _%hd226685226830%_
                            _%tl226686226833%_)
                     (let ((_%g226668226836%_ _%hd226685226830%_)
                           (_%g226669226838%_ _%hd226682226820%_)
                           (_%g226670226839%_ _%hd226679226810%_)
                           (_%g226671226840%_ _%hd226676226800%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226671226840%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226670226839%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226669226838%_)))
                           (_%__kont232199232200%_
                            _%g226668226836%_
                            _%g226669226838%_
                            _%g226670226839%_
                            _%g226671226840%_)
                           (let ()
                             (declare (not safe))
                             (_%g226666226708%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232196232197%_))
                  (let ((_%e226672226786%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232196232197%_))))
                    (let ((_%tl226674226793%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e226672226786%_)))
                          (_%hd226673226790%_
                           (let ()
                             (declare (not safe))
                             (##car _%e226672226786%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226674226793%_))
                          (let ((_%e226675226796%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl226674226793%_))))
                            (let ((_%tl226677226803%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226675226796%_)))
                                  (_%hd226676226800%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226675226796%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl226677226803%_))
                                  (let ((_%e226678226806%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl226677226803%_))))
                                    (let ((_%tl226680226813%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e226678226806%_)))
                                          (_%hd226679226810%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e226678226806%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl226680226813%_))
                                          (let ((_%e226681226816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl226680226813%_))))
                                            (let ((_%tl226683226823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e226681226816%_)))
                                                  (_%hd226682226820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e226681226816%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl226683226823%_))
                                                  (let ((_%e226684226826%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl226683226823%_))))
                                                    (let ((_%tl226686226833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e226684226826%_)))
                                                          (_%hd226685226830%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e226684226826%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl226686226833%_))
                                                          (_%__match232235232236%_
                                                           _%e226672226786%_
                                                           _%hd226673226790%_
                                                           _%tl226674226793%_
                                                           _%e226675226796%_
                                                           _%hd226676226800%_
                                                           _%tl226677226803%_
                                                           _%e226678226806%_
                                                           _%hd226679226810%_
                                                           _%tl226680226813%_
                                                           _%e226681226816%_
                                                           _%hd226682226820%_
                                                           _%tl226683226823%_
                                                           _%e226684226826%_
                                                           _%hd226685226830%_
                                                           _%tl226686226833%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g226666226708%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl226683226823%_))
                                                      (_%__kont232201232202%_
                                                       _%hd226682226820%_
                                                       _%hd226679226810%_
                                                       _%hd226676226800%_
                                                       _%hd226673226790%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g226666226708%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g226666226708%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g226666226708%_)))))
                          (let () (declare (not safe)) (_%g226666226708%_)))))
                  (let () (declare (not safe)) (_%g226666226708%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx226865%_)
        (let* ((_%g226869226904%_
                (lambda (_%g226870226900%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226870226900%_))))
               (_%g226868227017%_
                (lambda (_%g226870226908%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226870226908%_))
                      (let ((_%e226874226911%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226870226908%_))))
                        (let ((_%hd226875226915%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226874226911%_)))
                              (_%tl226876226918%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226874226911%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl226876226918%_))
                              (let ((_g232888_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl226876226918%_
                                        '0))))
                                (begin
                                  (let ((_g232889_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232888_)
                                               (##values-length _g232888_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232889_ 2)))
                                        (error "Context expects 2 values"
                                               _g232889_)))
                                  (let ((_%target226877226921%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232888_ 0)))
                                        (_%tl226879226924%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232888_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226879226924%_))
                                        (letrec ((_%loop226880226927%_
                                                  (lambda (_%hd226878226931%_
                                                           _%symbol226884226934%_
                                                           _%method226885226935%_
                                                           _%type-t226886226936%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd226878226931%_))
                                                        (let ((_%e226881226938%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd226878226931%_))))
                  (let ((_%lp-hd226882226942%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226881226938%_)))
                        (_%lp-tl226883226945%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226881226938%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd226882226942%_))
                        (let ((_%e226890226948%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd226882226942%_))))
                          (let ((_%hd226891226952%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226890226948%_)))
                                (_%tl226892226955%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226890226948%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226892226955%_))
                                (let ((_%e226893226958%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl226892226955%_))))
                                  (let ((_%hd226894226962%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226893226958%_)))
                                        (_%tl226895226965%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226893226958%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl226895226965%_))
                                        (let ((_%e226896226968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl226895226965%_))))
                                          (let ((_%hd226897226972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e226896226968%_)))
                                                (_%tl226898226975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e226896226968%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl226898226975%_))
                                                (_%loop226880226927%_
                                                 _%lp-tl226883226945%_
                                                 (cons _%hd226897226972%_
                                                       _%symbol226884226934%_)
                                                 (cons _%hd226894226962%_
                                                       _%method226885226935%_)
                                                 (cons _%hd226891226952%_
                                                       _%type-t226886226936%_))
                                                (_%g226869226904%_
                                                 _%g226870226908%_))))
                                        (_%g226869226904%_
                                         _%g226870226908%_))))
                                (_%g226869226904%_ _%g226870226908%_))))
                        (_%g226869226904%_ _%g226870226908%_))))
                (let ((_%symbol226887226978%_ (reverse _%symbol226884226934%_))
                      (_%method226888226980%_ (reverse _%method226885226935%_))
                      (_%type-t226889226981%_
                       (reverse _%type-t226886226936%_)))
                  ((lambda (_%g226871226983%_
                            _%g226872226985%_
                            _%g226873226986%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g226871226983%_
                                _%g226872226985%_
                                _%g226873226986%_))
                             (let ((__tmp232890
                                    (lambda (_%g227002227007%_
                                             _%g227003227010%_
                                             _%g227004227012%_
                                             _%g227005227014%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g227004227012%_
                                                        (cons _%g227003227010%_
                                                              (cons _%g227002227007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g227005227014%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp232890
                                '()
                                _%g226871226983%_
                                _%g226872226985%_
                                _%g226873226986%_)))))
                   _%symbol226887226978%_
                   _%method226888226980%_
                   _%type-t226889226981%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop226880226927%_
                                           _%target226877226921%_
                                           '()
                                           '()
                                           '()))
                                        (_%g226869226904%_
                                         _%g226870226908%_)))))
                              (_%g226869226904%_ _%g226870226908%_))))
                      (_%g226869226904%_ _%g226870226908%_)))))
          (_%g226868227017%_ _%$stx226865%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx227022%_)
        (let* ((_%g227026227059%_
                (lambda (_%g227027227055%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227027227055%_))))
               (_%g227025227169%_
                (lambda (_%g227027227063%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227027227063%_))
                      (let ((_%e227031227066%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227027227063%_))))
                        (let ((_%hd227032227070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227031227066%_)))
                              (_%tl227033227073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227031227066%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227033227073%_))
                              (let ((_%e227034227076%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227033227073%_))))
                                (let ((_%hd227035227080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227034227076%_)))
                                      (_%tl227036227083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227034227076%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl227036227083%_))
                                      (let ((_g232891_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl227036227083%_
                                                '0))))
                                        (begin
                                          (let ((_g232892_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232891_)
                                                       (##values-length
                                                        _g232891_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232892_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232892_)))
                                          (let ((_%target227037227086%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232891_ 0)))
                                                (_%tl227039227089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232891_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl227039227089%_))
                                                (letrec ((_%loop227040227092%_
                                                          (lambda (_%hd227038227096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol227044227099%_
                           _%method227045227100%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd227038227096%_))
                        (let ((_%e227041227102%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd227038227096%_))))
                          (let ((_%lp-hd227042227106%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227041227102%_)))
                                (_%lp-tl227043227109%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227041227102%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd227042227106%_))
                                (let ((_%e227048227112%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd227042227106%_))))
                                  (let ((_%hd227049227116%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227048227112%_)))
                                        (_%tl227050227119%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227048227112%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl227050227119%_))
                                        (let ((_%e227051227122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl227050227119%_))))
                                          (let ((_%hd227052227126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e227051227122%_)))
                                                (_%tl227053227129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e227051227122%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl227053227129%_))
                                                (_%loop227040227092%_
                                                 _%lp-tl227043227109%_
                                                 (cons _%hd227052227126%_
                                                       _%symbol227044227099%_)
                                                 (cons _%hd227049227116%_
                                                       _%method227045227100%_))
                                                (_%g227026227059%_
                                                 _%g227027227063%_))))
                                        (_%g227026227059%_
                                         _%g227027227063%_))))
                                (_%g227026227059%_ _%g227027227063%_))))
                        (let ((_%symbol227046227132%_
                               (reverse _%symbol227044227099%_))
                              (_%method227047227134%_
                               (reverse _%method227045227100%_)))
                          ((lambda (_%g227028227136%_
                                    _%g227029227138%_
                                    _%g227030227139%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g227028227136%_
                                        _%g227029227138%_))
                                     (let ((__tmp232893
                                            (lambda (_%g227157227161%_
                                                     _%g227158227164%_
                                                     _%g227159227166%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g227030227139%_
                                                                (cons _%g227158227164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g227157227161%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g227159227166%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp232893
                                        '()
                                        _%g227028227136%_
                                        _%g227029227138%_)))))
                           _%symbol227046227132%_
                           _%method227047227134%_
                           _%hd227035227080%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop227040227092%_
                                                   _%target227037227086%_
                                                   '()
                                                   '()))
                                                (_%g227026227059%_
                                                 _%g227027227063%_)))))
                                      (_%g227026227059%_ _%g227027227063%_))))
                              (_%g227026227059%_ _%g227027227063%_))))
                      (_%g227026227059%_ _%g227027227063%_)))))
          (_%g227025227169%_ _%$stx227022%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx227174%_)
        (let* ((_%g227178227192%_
                (lambda (_%g227179227188%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227179227188%_))))
               (_%g227177227233%_
                (lambda (_%g227179227196%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227179227196%_))
                      (let ((_%e227181227199%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227179227196%_))))
                        (let ((_%hd227182227203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227181227199%_)))
                              (_%tl227183227206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227181227199%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227183227206%_))
                              (let ((_%e227184227209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227183227206%_))))
                                (let ((_%hd227185227213%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227184227209%_)))
                                      (_%tl227186227216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227184227209%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227186227216%_))
                                      ((lambda (_%g227180227219%_)
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
                                                           (cons _%g227180227219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227185227213%_)
                                      (_%g227178227192%_ _%g227179227196%_))))
                              (_%g227178227192%_ _%g227179227196%_))))
                      (_%g227178227192%_ _%g227179227196%_)))))
          (_%g227177227233%_ _%$stx227174%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx227237%_)
        (let* ((_%g227241227295%_
                (lambda (_%g227242227291%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227242227291%_))))
               (_%g227240227476%_
                (lambda (_%g227242227299%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227242227299%_))
                      (let ((_%e227254227302%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227242227299%_))))
                        (let ((_%hd227255227306%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227254227302%_)))
                              (_%tl227256227309%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227254227302%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227256227309%_))
                              (let ((_%e227257227312%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227256227309%_))))
                                (let ((_%hd227258227316%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227257227312%_)))
                                      (_%tl227259227319%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227257227312%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227259227319%_))
                                      (let ((_%e227260227322%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227259227319%_))))
                                        (let ((_%hd227261227326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227260227322%_)))
                                              (_%tl227262227329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227260227322%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227262227329%_))
                                              (let ((_%e227263227332%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227262227329%_))))
                                                (let ((_%hd227264227336%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227263227332%_)))
                                                      (_%tl227265227339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227263227332%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl227265227339%_))
                                                      (let ((_%e227266227342%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl227265227339%_))))
                (let ((_%hd227267227346%_
                       (let () (declare (not safe)) (##car _%e227266227342%_)))
                      (_%tl227268227349%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e227266227342%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227268227349%_))
                      (let ((_%e227269227352%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227268227349%_))))
                        (let ((_%hd227270227356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227269227352%_)))
                              (_%tl227271227359%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227269227352%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227271227359%_))
                              (let ((_%e227272227362%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227271227359%_))))
                                (let ((_%hd227273227366%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227272227362%_)))
                                      (_%tl227274227369%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227272227362%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227274227369%_))
                                      (let ((_%e227275227372%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227274227369%_))))
                                        (let ((_%hd227276227376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227275227372%_)))
                                              (_%tl227277227379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227275227372%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227277227379%_))
                                              (let ((_%e227278227382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227277227379%_))))
                                                (let ((_%hd227279227386%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227278227382%_)))
                                                      (_%tl227280227389%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227278227382%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl227280227389%_))
                                                      (let ((_%e227281227392%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl227280227389%_))))
                (let ((_%hd227282227396%_
                       (let () (declare (not safe)) (##car _%e227281227392%_)))
                      (_%tl227283227399%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e227281227392%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227283227399%_))
                      (let ((_%e227284227402%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227283227399%_))))
                        (let ((_%hd227285227406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227284227402%_)))
                              (_%tl227286227409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227284227402%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227286227409%_))
                              (let ((_%e227287227412%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227286227409%_))))
                                (let ((_%hd227288227416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227287227412%_)))
                                      (_%tl227289227419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227287227412%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227289227419%_))
                                      ((lambda (_%g227243227422%_
                                                _%g227244227424%_
                                                _%g227245227425%_
                                                _%g227246227426%_
                                                _%g227247227427%_
                                                _%g227248227428%_
                                                _%g227249227429%_
                                                _%g227250227430%_
                                                _%g227251227431%_
                                                _%g227252227432%_
                                                _%g227253227433%_)
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
                                                           (cons _%g227253227433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g227252227432%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g227251227431%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227250227430%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227249227429%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g227248227428%_ '()))
                                           (cons _%g227247227427%_
                                                 (cons _%g227246227426%_
                                                       (cons _%g227245227425%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g227244227424%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g227243227422%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd227288227416%_
                                       _%hd227285227406%_
                                       _%hd227282227396%_
                                       _%hd227279227386%_
                                       _%hd227276227376%_
                                       _%hd227273227366%_
                                       _%hd227270227356%_
                                       _%hd227267227346%_
                                       _%hd227264227336%_
                                       _%hd227261227326%_
                                       _%hd227258227316%_)
                                      (_%g227241227295%_ _%g227242227299%_))))
                              (_%g227241227295%_ _%g227242227299%_))))
                      (_%g227241227295%_ _%g227242227299%_))))
              (_%g227241227295%_ _%g227242227299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227241227295%_
                                               _%g227242227299%_))))
                                      (_%g227241227295%_ _%g227242227299%_))))
                              (_%g227241227295%_ _%g227242227299%_))))
                      (_%g227241227295%_ _%g227242227299%_))))
              (_%g227241227295%_ _%g227242227299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227241227295%_
                                               _%g227242227299%_))))
                                      (_%g227241227295%_ _%g227242227299%_))))
                              (_%g227241227295%_ _%g227242227299%_))))
                      (_%g227241227295%_ _%g227242227299%_)))))
          (_%g227240227476%_ _%$stx227237%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx227480%_)
        (let* ((_%g227484227498%_
                (lambda (_%g227485227494%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227485227494%_))))
               (_%g227483227539%_
                (lambda (_%g227485227502%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227485227502%_))
                      (let ((_%e227487227505%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227485227502%_))))
                        (let ((_%hd227488227509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227487227505%_)))
                              (_%tl227489227512%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227487227505%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227489227512%_))
                              (let ((_%e227490227515%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227489227512%_))))
                                (let ((_%hd227491227519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227490227515%_)))
                                      (_%tl227492227522%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227490227515%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227492227522%_))
                                      ((lambda (_%g227486227525%_)
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
                                                           (cons _%g227486227525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227491227519%_)
                                      (_%g227484227498%_ _%g227485227502%_))))
                              (_%g227484227498%_ _%g227485227502%_))))
                      (_%g227484227498%_ _%g227485227502%_)))))
          (_%g227483227539%_ _%$stx227480%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx227543%_)
        (let* ((_%g227547227561%_
                (lambda (_%g227548227557%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227548227557%_))))
               (_%g227546227602%_
                (lambda (_%g227548227565%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227548227565%_))
                      (let ((_%e227550227568%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227548227565%_))))
                        (let ((_%hd227551227572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227550227568%_)))
                              (_%tl227552227575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227550227568%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227552227575%_))
                              (let ((_%e227553227578%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227552227575%_))))
                                (let ((_%hd227554227582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227553227578%_)))
                                      (_%tl227555227585%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227553227578%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227555227585%_))
                                      ((lambda (_%g227549227588%_)
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
                                                           (cons _%g227549227588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227554227582%_)
                                      (_%g227547227561%_ _%g227548227565%_))))
                              (_%g227547227561%_ _%g227548227565%_))))
                      (_%g227547227561%_ _%g227548227565%_)))))
          (_%g227546227602%_ _%$stx227543%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx227606%_)
        (let* ((_%g227610227632%_
                (lambda (_%g227611227628%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227611227628%_))))
               (_%g227609227701%_
                (lambda (_%g227611227636%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227611227636%_))
                      (let ((_%e227615227639%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227611227636%_))))
                        (let ((_%hd227616227643%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227615227639%_)))
                              (_%tl227617227646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227615227639%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227617227646%_))
                              (let ((_%e227618227649%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227617227646%_))))
                                (let ((_%hd227619227653%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227618227649%_)))
                                      (_%tl227620227656%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227618227649%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227620227656%_))
                                      (let ((_%e227621227659%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227620227656%_))))
                                        (let ((_%hd227622227663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227621227659%_)))
                                              (_%tl227623227666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227621227659%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227623227666%_))
                                              (let ((_%e227624227669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227623227666%_))))
                                                (let ((_%hd227625227673%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227624227669%_)))
                                                      (_%tl227626227676%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227624227669%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227626227676%_))
                                                      ((lambda (_%g227612227679%_
                                                                _%g227613227681%_
                                                                _%g227614227682%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227614227682%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g227613227681%_ '()))
                                   (cons _%g227612227679%_ '())))))
               _%hd227625227673%_
               _%hd227622227663%_
               _%hd227619227653%_)
              (_%g227610227632%_ _%g227611227636%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227610227632%_
                                               _%g227611227636%_))))
                                      (_%g227610227632%_ _%g227611227636%_))))
                              (_%g227610227632%_ _%g227611227636%_))))
                      (_%g227610227632%_ _%g227611227636%_)))))
          (_%g227609227701%_ _%$stx227606%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx227705%_)
        (let* ((_%g227709227731%_
                (lambda (_%g227710227727%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227710227727%_))))
               (_%g227708227800%_
                (lambda (_%g227710227735%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227710227735%_))
                      (let ((_%e227714227738%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227710227735%_))))
                        (let ((_%hd227715227742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227714227738%_)))
                              (_%tl227716227745%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227714227738%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227716227745%_))
                              (let ((_%e227717227748%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227716227745%_))))
                                (let ((_%hd227718227752%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227717227748%_)))
                                      (_%tl227719227755%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227717227748%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227719227755%_))
                                      (let ((_%e227720227758%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227719227755%_))))
                                        (let ((_%hd227721227762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227720227758%_)))
                                              (_%tl227722227765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227720227758%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227722227765%_))
                                              (let ((_%e227723227768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227722227765%_))))
                                                (let ((_%hd227724227772%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227723227768%_)))
                                                      (_%tl227725227775%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227723227768%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227725227775%_))
                                                      ((lambda (_%g227711227778%_
                                                                _%g227712227780%_
                                                                _%g227713227781%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227713227781%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g227712227780%_ '()))
                                   (cons _%g227711227778%_ '())))))
               _%hd227724227772%_
               _%hd227721227762%_
               _%hd227718227752%_)
              (_%g227709227731%_ _%g227710227735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227709227731%_
                                               _%g227710227735%_))))
                                      (_%g227709227731%_ _%g227710227735%_))))
                              (_%g227709227731%_ _%g227710227735%_))))
                      (_%g227709227731%_ _%g227710227735%_)))))
          (_%g227708227800%_ _%$stx227705%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx227804%_)
        (let* ((_%g227808227822%_
                (lambda (_%g227809227818%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227809227818%_))))
               (_%g227807227863%_
                (lambda (_%g227809227826%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227809227826%_))
                      (let ((_%e227811227829%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227809227826%_))))
                        (let ((_%hd227812227833%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227811227829%_)))
                              (_%tl227813227836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227811227829%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227813227836%_))
                              (let ((_%e227814227839%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227813227836%_))))
                                (let ((_%hd227815227843%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227814227839%_)))
                                      (_%tl227816227846%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227814227839%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227816227846%_))
                                      ((lambda (_%g227810227849%_)
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
                                                           (cons _%g227810227849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227815227843%_)
                                      (_%g227808227822%_ _%g227809227826%_))))
                              (_%g227808227822%_ _%g227809227826%_))))
                      (_%g227808227822%_ _%g227809227826%_)))))
          (_%g227807227863%_ _%$stx227804%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx227867%_)
        (let* ((_%g227871227889%_
                (lambda (_%g227872227885%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227872227885%_))))
               (_%g227870227944%_
                (lambda (_%g227872227893%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227872227893%_))
                      (let ((_%e227875227896%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227872227893%_))))
                        (let ((_%hd227876227900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227875227896%_)))
                              (_%tl227877227903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227875227896%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227877227903%_))
                              (let ((_%e227878227906%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227877227903%_))))
                                (let ((_%hd227879227910%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227878227906%_)))
                                      (_%tl227880227913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227878227906%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227880227913%_))
                                      (let ((_%e227881227916%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227880227913%_))))
                                        (let ((_%hd227882227920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227881227916%_)))
                                              (_%tl227883227923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227881227916%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl227883227923%_))
                                              ((lambda (_%g227873227926%_
                                                        _%g227874227928%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g227874227928%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g227873227926%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd227882227920%_
                                               _%hd227879227910%_)
                                              (_%g227871227889%_
                                               _%g227872227893%_))))
                                      (_%g227871227889%_ _%g227872227893%_))))
                              (_%g227871227889%_ _%g227872227893%_))))
                      (_%g227871227889%_ _%g227872227893%_)))))
          (_%g227870227944%_ _%$stx227867%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx227948%_)
        (let* ((_%__stx232264232265%_ _%$stx227948%_)
               (_%g227955228016%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232264232265%_)))))
          (let ((_%__kont232267232268%_
                 (lambda (_%g227957228254%_ _%g227958228256%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227958228256%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227957228254%_ '()))
                                     '())))))
                (_%__kont232269232270%_
                 (lambda (_%g227968228193%_
                          _%g227969228195%_
                          _%g227970228196%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227970228196%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227969228195%_ '()))
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
                                 (cons _%g227968228193%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont232271232272%_
                 (lambda (_%g227987228117%_ _%g227988228119%_)
                   (cons _%g227988228119%_
                         (cons _%g227987228117%_ (cons '#f '())))))
                (_%__kont232273232274%_
                 (lambda (_%g227995228067%_
                          _%g227996228069%_
                          _%g227997228070%_)
                   (cons _%g227997228070%_
                         (cons _%g227996228069%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g227995228067%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232264232265%_))
                (let ((_%e227959228224%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232264232265%_))))
                  (let ((_%tl227961228231%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227959228224%_)))
                        (_%hd227960228228%_
                         (let ()
                           (declare (not safe))
                           (##car _%e227959228224%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl227961228231%_))
                        (let ((_%e227962228234%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl227961228231%_))))
                          (let ((_%tl227964228241%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227962228234%_)))
                                (_%hd227963228238%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227962228234%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl227964228241%_))
                                (let ((_%e227965228244%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl227964228241%_))))
                                  (let ((_%tl227967228251%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227965228244%_)))
                                        (_%hd227966228248%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227965228244%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl227967228251%_))
                                        (_%__kont232267232268%_
                                         _%hd227966228248%_
                                         _%hd227963228238%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl227967228251%_))
                                            (let ((_%e227980228169%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl227967228251%_))))
                                              (let ((_%tl227982228176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e227980228169%_)))
                                                    (_%hd227981228173%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e227980228169%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd227981228173%_))
                                                    (let ((_%e227983228179%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd227981228173%_))))
                                                      (if (equal? _%e227983228179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227982228176%_))
                      (let ((_%e227984228183%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227982228176%_))))
                        (let ((_%tl227986228190%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227984228183%_)))
                              (_%hd227985228187%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227984228183%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl227986228190%_))
                              (_%__kont232269232270%_
                               _%hd227985228187%_
                               _%hd227966228248%_
                               _%hd227963228238%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd227966228248%_))
                                  (let ((_%e228007228053%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd227966228248%_))))
                                    (declare (not safe))
                                    (_%g227955228016%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g227955228016%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd227966228248%_))
                          (let ((_%e228007228053%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd227966228248%_))))
                            (if (equal? _%e228007228053%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227982228176%_))
                                    (_%__kont232273232274%_
                                     _%hd227981228173%_
                                     _%hd227963228238%_
                                     _%hd227960228228%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g227955228016%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g227955228016%_))))
                          (let () (declare (not safe)) (_%g227955228016%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd227966228248%_))
                      (let ((_%e228007228053%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd227966228248%_))))
                        (if (equal? _%e228007228053%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl227982228176%_))
                                (_%__kont232273232274%_
                                 _%hd227981228173%_
                                 _%hd227963228238%_
                                 _%hd227960228228%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g227955228016%_)))
                            (let () (declare (not safe)) (_%g227955228016%_))))
                      (let () (declare (not safe)) (_%g227955228016%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd227966228248%_))
                                                        (let ((_%e228007228053%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd227966228248%_))))
                  (if (equal? _%e228007228053%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl227982228176%_))
                          (_%__kont232273232274%_
                           _%hd227981228173%_
                           _%hd227963228238%_
                           _%hd227960228228%_)
                          (let () (declare (not safe)) (_%g227955228016%_)))
                      (let () (declare (not safe)) (_%g227955228016%_))))
                (let () (declare (not safe)) (_%g227955228016%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd227966228248%_))
                                                (let ((_%e228007228053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd227966228248%_))))
                                                  (declare (not safe))
                                                  (_%g227955228016%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g227955228016%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227964228241%_))
                                    (_%__kont232271232272%_
                                     _%hd227963228238%_
                                     _%hd227960228228%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g227955228016%_))))))
                        (let () (declare (not safe)) (_%g227955228016%_)))))
                (let () (declare (not safe)) (_%g227955228016%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx228275%_)
        (let* ((_%g228279228308%_
                (lambda (_%g228280228304%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228280228304%_))))
               (_%g228278228413%_
                (lambda (_%g228280228312%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228280228312%_))
                      (let ((_%e228282228315%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228280228312%_))))
                        (let ((_%hd228283228319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228282228315%_)))
                              (_%tl228284228322%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228282228315%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228284228322%_))
                              (let ((_g232894_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl228284228322%_
                                        '0))))
                                (begin
                                  (let ((_g232895_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232894_)
                                               (##values-length _g232894_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232895_ 2)))
                                        (error "Context expects 2 values"
                                               _g232895_)))
                                  (let ((_%target228285228325%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232894_ 0)))
                                        (_%tl228287228328%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232894_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228287228328%_))
                                        (letrec ((_%loop228288228331%_
                                                  (lambda (_%hd228286228335%_
                                                           _%clause228292228338%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd228286228335%_))
                                                        (let ((_%e228289228340%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd228286228335%_))))
                  (let ((_%lp-hd228290228344%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228289228340%_)))
                        (_%lp-tl228291228347%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228289228340%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd228290228344%_))
                        (let ((_g232896_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd228290228344%_
                                  '0))))
                          (begin
                            (let ((_g232897_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g232896_)
                                         (##values-length _g232896_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g232897_ 2)))
                                  (error "Context expects 2 values"
                                         _g232897_)))
                            (let ((_%target228294228350%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232896_ 0)))
                                  (_%tl228296228353%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232896_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl228296228353%_))
                                  (letrec ((_%loop228297228356%_
                                            (lambda (_%hd228295228360%_
                                                     _%clause228301228363%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd228295228360%_))
                                                  (let ((_%e228298228365%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd228295228360%_))))
                                                    (let ((_%lp-hd228299228369%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e228298228365%_)))
                                                          (_%lp-tl228300228372%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e228298228365%_))))
                                                      (_%loop228297228356%_
                                                       _%lp-tl228300228372%_
                                                       (cons _%lp-hd228299228369%_
                                                             _%clause228301228363%_))))
                                                  (let ((_%clause228302228375%_
                                                         (reverse _%clause228301228363%_)))
                                                    (_%loop228288228331%_
                                                     _%lp-tl228291228347%_
                                                     (cons _%clause228302228375%_
                                                           _%clause228292228338%_)))))))
                                    (_%loop228297228356%_
                                     _%target228294228350%_
                                     '()))
                                  (_%g228279228308%_ _%g228280228312%_)))))
                        (_%g228279228308%_ _%g228280228312%_))))
                (let ((_%clause228293228378%_
                       (reverse _%clause228292228338%_)))
                  ((lambda (_%g228281228381%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp232898
                                              (lambda (_%g228396228401%_
                                                       _%g228397228404%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp232899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g228398228407%_ _%g228399228410%_)
                             (cons _%g228398228407%_ _%g228399228410%_))))
                      (declare (not safe))
                      (__foldr1 __tmp232899 '() _%g228396228401%_)))
              _%g228397228404%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp232898
                                          '()
                                          _%g228281228381%_)))
                                 '())))
                   _%clause228293228378%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop228288228331%_
                                           _%target228285228325%_
                                           '()))
                                        (_%g228279228308%_
                                         _%g228280228312%_)))))
                              (_%g228279228308%_ _%g228280228312%_))))
                      (_%g228279228308%_ _%g228280228312%_)))))
          (_%g228278228413%_ _%$stx228275%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx228419%_)
        (let* ((_%g228423228441%_
                (lambda (_%g228424228437%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228424228437%_))))
               (_%g228422228496%_
                (lambda (_%g228424228445%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228424228445%_))
                      (let ((_%e228427228448%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228424228445%_))))
                        (let ((_%hd228428228452%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228427228448%_)))
                              (_%tl228429228455%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228427228448%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228429228455%_))
                              (let ((_%e228430228458%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228429228455%_))))
                                (let ((_%hd228431228462%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228430228458%_)))
                                      (_%tl228432228465%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228430228458%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228432228465%_))
                                      (let ((_%e228433228468%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228432228465%_))))
                                        (let ((_%hd228434228472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228433228468%_)))
                                              (_%tl228435228475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228433228468%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228435228475%_))
                                              ((lambda (_%g228425228478%_
                                                        _%g228426228480%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g228426228480%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g228425228478%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228434228472%_
                                               _%hd228431228462%_)
                                              (_%g228423228441%_
                                               _%g228424228445%_))))
                                      (_%g228423228441%_ _%g228424228445%_))))
                              (_%g228423228441%_ _%g228424228445%_))))
                      (_%g228423228441%_ _%g228424228445%_)))))
          (_%g228422228496%_ _%$stx228419%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx228500%_)
        (let* ((_%g228504228522%_
                (lambda (_%g228505228518%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228505228518%_))))
               (_%g228503228577%_
                (lambda (_%g228505228526%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228505228526%_))
                      (let ((_%e228508228529%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228505228526%_))))
                        (let ((_%hd228509228533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228508228529%_)))
                              (_%tl228510228536%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228508228529%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228510228536%_))
                              (let ((_%e228511228539%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228510228536%_))))
                                (let ((_%hd228512228543%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228511228539%_)))
                                      (_%tl228513228546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228511228539%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228513228546%_))
                                      (let ((_%e228514228549%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228513228546%_))))
                                        (let ((_%hd228515228553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228514228549%_)))
                                              (_%tl228516228556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228514228549%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228516228556%_))
                                              ((lambda (_%g228506228559%_
                                                        _%g228507228561%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g228507228561%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g228506228559%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228515228553%_
                                               _%hd228512228543%_)
                                              (_%g228504228522%_
                                               _%g228505228526%_))))
                                      (_%g228504228522%_ _%g228505228526%_))))
                              (_%g228504228522%_ _%g228505228526%_))))
                      (_%g228504228522%_ _%g228505228526%_)))))
          (_%g228503228577%_ _%$stx228500%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx228581%_)
        (let* ((_%g228585228614%_
                (lambda (_%g228586228610%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228586228610%_))))
               (_%g228584228710%_
                (lambda (_%g228586228618%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228586228618%_))
                      (let ((_%e228589228621%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228586228618%_))))
                        (let ((_%hd228590228625%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228589228621%_)))
                              (_%tl228591228628%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228589228621%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228591228628%_))
                              (let ((_g232900_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl228591228628%_
                                        '0))))
                                (begin
                                  (let ((_g232901_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232900_)
                                               (##values-length _g232900_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232901_ 2)))
                                        (error "Context expects 2 values"
                                               _g232901_)))
                                  (let ((_%target228592228631%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232900_ 0)))
                                        (_%tl228594228634%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232900_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228594228634%_))
                                        (letrec ((_%loop228595228637%_
                                                  (lambda (_%hd228593228641%_
                                                           _%rule228599228644%_
                                                           _%proc228600228645%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd228593228641%_))
                                                        (let ((_%e228596228647%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd228593228641%_))))
                  (let ((_%lp-hd228597228651%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228596228647%_)))
                        (_%lp-tl228598228654%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228596228647%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd228597228651%_))
                        (let ((_%e228603228657%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd228597228651%_))))
                          (let ((_%hd228604228661%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e228603228657%_)))
                                (_%tl228605228664%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e228603228657%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl228605228664%_))
                                (let ((_%e228606228667%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl228605228664%_))))
                                  (let ((_%hd228607228671%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228606228667%_)))
                                        (_%tl228608228674%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228606228667%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228608228674%_))
                                        (_%loop228595228637%_
                                         _%lp-tl228598228654%_
                                         (cons _%hd228607228671%_
                                               _%rule228599228644%_)
                                         (cons _%hd228604228661%_
                                               _%proc228600228645%_))
                                        (_%g228585228614%_
                                         _%g228586228618%_))))
                                (_%g228585228614%_ _%g228586228618%_))))
                        (_%g228585228614%_ _%g228586228618%_))))
                (let ((_%rule228601228677%_ (reverse _%rule228599228644%_))
                      (_%proc228602228679%_ (reverse _%proc228600228645%_)))
                  ((lambda (_%g228587228681%_ _%g228588228683%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g228587228681%_
                                _%g228588228683%_))
                             (let ((__tmp232902
                                    (lambda (_%g228698228702%_
                                             _%g228699228705%_
                                             _%g228700228707%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g228699228705%_
                                                        (cons _%g228698228702%_
                                                              '())))
                                            _%g228700228707%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp232902
                                '()
                                _%g228587228681%_
                                _%g228588228683%_)))))
                   _%rule228601228677%_
                   _%proc228602228679%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop228595228637%_
                                           _%target228592228631%_
                                           '()
                                           '()))
                                        (_%g228585228614%_
                                         _%g228586228618%_)))))
                              (_%g228585228614%_ _%g228586228618%_))))
                      (_%g228585228614%_ _%g228586228618%_)))))
          (_%g228584228710%_ _%$stx228581%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx228715%_)
        (let* ((_%g228719228737%_
                (lambda (_%g228720228733%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228720228733%_))))
               (_%g228718228792%_
                (lambda (_%g228720228741%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228720228741%_))
                      (let ((_%e228723228744%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228720228741%_))))
                        (let ((_%hd228724228748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228723228744%_)))
                              (_%tl228725228751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228723228744%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228725228751%_))
                              (let ((_%e228726228754%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228725228751%_))))
                                (let ((_%hd228727228758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228726228754%_)))
                                      (_%tl228728228761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228726228754%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228728228761%_))
                                      (let ((_%e228729228764%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228728228761%_))))
                                        (let ((_%hd228730228768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228729228764%_)))
                                              (_%tl228731228771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228729228764%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228731228771%_))
                                              ((lambda (_%g228721228774%_
                                                        _%g228722228776%_)
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
                                                   (cons _%g228722228776%_
                                                         '()))
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
                 (cons _%g228721228774%_ '())))
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
                                   (cons _%g228722228776%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228730228768%_
                                               _%hd228727228758%_)
                                              (_%g228719228737%_
                                               _%g228720228741%_))))
                                      (_%g228719228737%_ _%g228720228741%_))))
                              (_%g228719228737%_ _%g228720228741%_))))
                      (_%g228719228737%_ _%g228720228741%_)))))
          (_%g228718228792%_ _%$stx228715%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx228796%_)
        (let* ((_%__stx232382232383%_ _%$stx228796%_)
               (_%g228801228826%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232382232383%_)))))
          (let ((_%__kont232385232386%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont232387232388%_
                 (lambda (_%g228806228873%_
                          _%g228807228875%_
                          _%g228808228876%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g228808228876%_
                                           (cons _%g228807228875%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g228806228873%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232382232383%_))
                (let ((_%e228803228902%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232382232383%_))))
                  (let ((_%tl228805228909%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228803228902%_)))
                        (_%hd228804228906%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228803228902%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl228805228909%_))
                        (_%__kont232385232386%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228805228909%_))
                            (let ((_%e228812228843%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl228805228909%_))))
                              (let ((_%tl228814228850%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228812228843%_)))
                                    (_%hd228813228847%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228812228843%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd228813228847%_))
                                    (let ((_%e228815228853%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd228813228847%_))))
                                      (let ((_%tl228817228860%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e228815228853%_)))
                                            (_%hd228816228857%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e228815228853%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl228817228860%_))
                                            (let ((_%e228818228863%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl228817228860%_))))
                                              (let ((_%tl228820228870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e228818228863%_)))
                                                    (_%hd228819228867%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e228818228863%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl228820228870%_))
                                                    (_%__kont232387232388%_
                                                     _%tl228814228850%_
                                                     _%hd228819228867%_
                                                     _%hd228816228857%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g228801228826%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g228801228826%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g228801228826%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g228801228826%_))))))
                (let () (declare (not safe)) (_%g228801228826%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx228920%_)
        (let* ((_%__stx232426232427%_ _%$stx228920%_)
               (_%g228925228956%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232426232427%_)))))
          (let ((_%__kont232429232430%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont232431232432%_
                 (lambda (_%g228930229021%_
                          _%g228931229023%_
                          _%g228932229024%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g228932229024%_
                                           (let ((__tmp232903
                                                  (lambda (_%g229044229047%_
                                                           _%g229045229050%_)
                                                    (cons _%g229044229047%_
                                                          _%g229045229050%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp232903
                                              '()
                                              _%g228931229023%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g228930229021%_)
                                     '()))))))
            (let ((_%__match232469232470%_
                   (lambda (_%e228933228963%_
                            _%hd228934228967%_
                            _%tl228935228970%_
                            _%e228936228973%_
                            _%hd228937228977%_
                            _%tl228938228980%_
                            _%e228939228983%_
                            _%hd228940228987%_
                            _%tl228941228990%_
                            _%__splice232433232434%_
                            _%target228942228993%_
                            _%tl228944228996%_)
                     (letrec ((_%loop228945228999%_
                               (lambda (_%hd228943229003%_ _%sig228949229006%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd228943229003%_))
                                     (let ((_%e228946229008%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd228943229003%_))))
                                       (let ((_%lp-tl228948229015%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e228946229008%_)))
                                             (_%lp-hd228947229012%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e228946229008%_))))
                                         (_%loop228945228999%_
                                          _%lp-tl228948229015%_
                                          (cons _%lp-hd228947229012%_
                                                _%sig228949229006%_))))
                                     (let ((_%sig228950229018%_
                                            (reverse _%sig228949229006%_)))
                                       (_%__kont232431232432%_
                                        _%tl228938228980%_
                                        _%sig228950229018%_
                                        _%hd228940228987%_))))))
                       (_%loop228945228999%_ _%target228942228993%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232426232427%_))
                  (let ((_%e228927229060%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232426232427%_))))
                    (let ((_%tl228929229067%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e228927229060%_)))
                          (_%hd228928229064%_
                           (let ()
                             (declare (not safe))
                             (##car _%e228927229060%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228929229067%_))
                          (_%__kont232429232430%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228929229067%_))
                              (let ((_%e228936228973%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228929229067%_))))
                                (let ((_%tl228938228980%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228936228973%_)))
                                      (_%hd228937228977%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228936228973%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd228937228977%_))
                                      (let ((_%e228939228983%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd228937228977%_))))
                                        (let ((_%tl228941228990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228939228983%_)))
                                              (_%hd228940228987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228939228983%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl228941228990%_))
                                              (let ((_%__splice232433232434%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl228941228990%_
                                                        '0))))
                                                (let ((_%tl228944228996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232433232434%_
                                                          '1)))
                                                      (_%target228942228993%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232433232434%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl228944228996%_))
                                                      (_%__match232469232470%_
                                                       _%e228927229060%_
                                                       _%hd228928229064%_
                                                       _%tl228929229067%_
                                                       _%e228936228973%_
                                                       _%hd228937228977%_
                                                       _%tl228938228980%_
                                                       _%e228939228983%_
                                                       _%hd228940228987%_
                                                       _%tl228941228990%_
                                                       _%__splice232433232434%_
                                                       _%target228942228993%_
                                                       _%tl228944228996%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g228925228956%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g228925228956%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g228925228956%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g228925228956%_))))))
                  (let () (declare (not safe)) (_%g228925228956%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx229079%_)
        (let* ((_%__stx232472232473%_ _%$stx229079%_)
               (_%g229084229131%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232472232473%_)))))
          (let ((_%__kont232475232476%_
                 (lambda (_%g229086229289%_ _%g229087229291%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g229087229291%_
                               (let ((__tmp232904
                                      (lambda (_%g229311229314%_
                                               _%g229312229317%_)
                                        (cons _%g229311229314%_
                                              _%g229312229317%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp232904
                                  '()
                                  _%g229086229289%_))))))
                (_%__kont232479232480%_
                 (lambda (_%g229109229186%_ _%g229110229188%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g229110229188%_
                               (let ((__tmp232905
                                      (lambda (_%g229205229208%_
                                               _%g229206229211%_)
                                        (cons _%g229205229208%_
                                              _%g229206229211%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp232905
                                  '()
                                  _%g229109229186%_)))))))
            (let* ((_%__match232539232540%_
                    (lambda (_%e229111229138%_
                             _%hd229112229142%_
                             _%tl229113229145%_
                             _%e229114229148%_
                             _%hd229115229152%_
                             _%tl229116229155%_
                             _%__splice232481232482%_
                             _%target229117229158%_
                             _%tl229119229161%_)
                      (letrec ((_%loop229120229164%_
                                (lambda (_%hd229118229168%_
                                         _%sig229124229171%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229118229168%_))
                                      (let ((_%e229121229173%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd229118229168%_))))
                                        (let ((_%lp-tl229123229180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229121229173%_)))
                                              (_%lp-hd229122229177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229121229173%_))))
                                          (_%loop229120229164%_
                                           _%lp-tl229123229180%_
                                           (cons _%lp-hd229122229177%_
                                                 _%sig229124229171%_))))
                                      (let ((_%sig229125229183%_
                                             (reverse _%sig229124229171%_)))
                                        (_%__kont232479232480%_
                                         _%sig229125229183%_
                                         _%hd229115229152%_))))))
                        (_%loop229120229164%_ _%target229117229158%_ '()))))
                   (_%__match232531232532%_
                    (lambda (_%e229111229138%_
                             _%hd229112229142%_
                             _%tl229113229145%_
                             _%e229114229148%_
                             _%hd229115229152%_
                             _%tl229116229155%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl229116229155%_))
                          (let ((_%__splice232481232482%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl229116229155%_
                                    '0))))
                            (let ((_%tl229119229161%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice232481232482%_
                                      '1)))
                                  (_%target229117229158%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice232481232482%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229119229161%_))
                                  (_%__match232539232540%_
                                   _%e229111229138%_
                                   _%hd229112229142%_
                                   _%tl229113229145%_
                                   _%e229114229148%_
                                   _%hd229115229152%_
                                   _%tl229116229155%_
                                   _%__splice232481232482%_
                                   _%target229117229158%_
                                   _%tl229119229161%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g229084229131%_)))))
                          (let () (declare (not safe)) (_%g229084229131%_)))))
                   (_%__match232519232520%_
                    (lambda (_%e229088229221%_
                             _%hd229089229225%_
                             _%tl229090229228%_
                             _%e229091229231%_
                             _%hd229092229235%_
                             _%tl229093229238%_
                             _%e229094229241%_
                             _%hd229095229245%_
                             _%tl229096229248%_
                             _%e229097229251%_
                             _%hd229098229255%_
                             _%tl229099229258%_
                             _%__splice232477232478%_
                             _%target229100229261%_
                             _%tl229102229264%_)
                      (letrec ((_%loop229103229267%_
                                (lambda (_%hd229101229271%_
                                         _%sig229107229274%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229101229271%_))
                                      (let ((_%e229104229276%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd229101229271%_))))
                                        (let ((_%lp-tl229106229283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229104229276%_)))
                                              (_%lp-hd229105229280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229104229276%_))))
                                          (_%loop229103229267%_
                                           _%lp-tl229106229283%_
                                           (cons _%lp-hd229105229280%_
                                                 _%sig229107229274%_))))
                                      (let ((_%sig229108229286%_
                                             (reverse _%sig229107229274%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl229096229248%_))
                                            (_%__kont232475232476%_
                                             _%sig229108229286%_
                                             _%hd229092229235%_)
                                            (_%__match232531232532%_
                                             _%e229088229221%_
                                             _%hd229089229225%_
                                             _%tl229090229228%_
                                             _%e229091229231%_
                                             _%hd229092229235%_
                                             _%tl229093229238%_)))))))
                        (_%loop229103229267%_ _%target229100229261%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232472232473%_))
                  (let ((_%e229088229221%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232472232473%_))))
                    (let ((_%tl229090229228%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229088229221%_)))
                          (_%hd229089229225%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229088229221%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229090229228%_))
                          (let ((_%e229091229231%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl229090229228%_))))
                            (let ((_%tl229093229238%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229091229231%_)))
                                  (_%hd229092229235%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229091229231%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl229093229238%_))
                                  (let ((_%e229094229241%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl229093229238%_))))
                                    (let ((_%tl229096229248%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e229094229241%_)))
                                          (_%hd229095229245%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e229094229241%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd229095229245%_))
                                          (let ((_%e229097229251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd229095229245%_))))
                                            (let ((_%tl229099229258%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e229097229251%_)))
                                                  (_%hd229098229255%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e229097229251%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd229098229255%_))
                                                  (if (let ((__tmp232906
                                                             |gxc[1]#_g232907_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp232906
                                                         _%hd229098229255%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl229099229258%_))
                                                          (let ((_%__splice232477232478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl229099229258%_
                            '0))))
                    (let ((_%tl229102229264%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232477232478%_ '1)))
                          (_%target229100229261%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232477232478%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229102229264%_))
                          (_%__match232519232520%_
                           _%e229088229221%_
                           _%hd229089229225%_
                           _%tl229090229228%_
                           _%e229091229231%_
                           _%hd229092229235%_
                           _%tl229093229238%_
                           _%e229094229241%_
                           _%hd229095229245%_
                           _%tl229096229248%_
                           _%e229097229251%_
                           _%hd229098229255%_
                           _%tl229099229258%_
                           _%__splice232477232478%_
                           _%target229100229261%_
                           _%tl229102229264%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl229093229238%_))
                              (let ((_%__splice232481232482%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl229093229238%_
                                        '0))))
                                (let ((_%tl229119229161%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice232481232482%_
                                          '1)))
                                      (_%target229117229158%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice232481232482%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl229119229161%_))
                                      (_%__match232539232540%_
                                       _%e229088229221%_
                                       _%hd229089229225%_
                                       _%tl229090229228%_
                                       _%e229091229231%_
                                       _%hd229092229235%_
                                       _%tl229093229238%_
                                       _%__splice232481232482%_
                                       _%target229117229158%_
                                       _%tl229119229161%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g229084229131%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g229084229131%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl229093229238%_))
                      (let ((_%__splice232481232482%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl229093229238%_
                                '0))))
                        (let ((_%tl229119229161%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice232481232482%_ '1)))
                              (_%target229117229158%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice232481232482%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl229119229161%_))
                              (_%__match232539232540%_
                               _%e229088229221%_
                               _%hd229089229225%_
                               _%tl229090229228%_
                               _%e229091229231%_
                               _%hd229092229235%_
                               _%tl229093229238%_
                               _%__splice232481232482%_
                               _%target229117229158%_
                               _%tl229119229161%_)
                              (let ()
                                (declare (not safe))
                                (_%g229084229131%_)))))
                      (let () (declare (not safe)) (_%g229084229131%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl229093229238%_))
                  (let ((_%__splice232481232482%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl229093229238%_
                            '0))))
                    (let ((_%tl229119229161%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232481232482%_ '1)))
                          (_%target229117229158%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232481232482%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229119229161%_))
                          (_%__match232539232540%_
                           _%e229088229221%_
                           _%hd229089229225%_
                           _%tl229090229228%_
                           _%e229091229231%_
                           _%hd229092229235%_
                           _%tl229093229238%_
                           _%__splice232481232482%_
                           _%target229117229158%_
                           _%tl229119229161%_)
                          (let () (declare (not safe)) (_%g229084229131%_)))))
                  (let () (declare (not safe)) (_%g229084229131%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl229093229238%_))
                                                      (let ((_%__splice232481232482%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl229093229238%_
                        '0))))
                (let ((_%tl229119229161%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232481232482%_ '1)))
                      (_%target229117229158%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232481232482%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl229119229161%_))
                      (_%__match232539232540%_
                       _%e229088229221%_
                       _%hd229089229225%_
                       _%tl229090229228%_
                       _%e229091229231%_
                       _%hd229092229235%_
                       _%tl229093229238%_
                       _%__splice232481232482%_
                       _%target229117229158%_
                       _%tl229119229161%_)
                      (let () (declare (not safe)) (_%g229084229131%_)))))
              (let () (declare (not safe)) (_%g229084229131%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl229093229238%_))
                                              (let ((_%__splice232481232482%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl229093229238%_
                                                        '0))))
                                                (let ((_%tl229119229161%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232481232482%_
                                                          '1)))
                                                      (_%target229117229158%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232481232482%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl229119229161%_))
                                                      (_%__match232539232540%_
                                                       _%e229088229221%_
                                                       _%hd229089229225%_
                                                       _%tl229090229228%_
                                                       _%e229091229231%_
                                                       _%hd229092229235%_
                                                       _%tl229093229238%_
                                                       _%__splice232481232482%_
                                                       _%target229117229158%_
                                                       _%tl229119229161%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g229084229131%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g229084229131%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl229093229238%_))
                                      (let ((_%__splice232481232482%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl229093229238%_
                                                '0))))
                                        (let ((_%tl229119229161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232481232482%_
                                                  '1)))
                                              (_%target229117229158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232481232482%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229119229161%_))
                                              (_%__match232539232540%_
                                               _%e229088229221%_
                                               _%hd229089229225%_
                                               _%tl229090229228%_
                                               _%e229091229231%_
                                               _%hd229092229235%_
                                               _%tl229093229238%_
                                               _%__splice232481232482%_
                                               _%target229117229158%_
                                               _%tl229119229161%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g229084229131%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g229084229131%_))))))
                          (let () (declare (not safe)) (_%g229084229131%_)))))
                  (let () (declare (not safe)) (_%g229084229131%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx230474%_ _%id230476%_)
        (let ((_%proc230480%_
               (let ((__tmp232908
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id230476%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp232908))))
          (if (procedure? _%proc230480%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx230474%_
                 _%id230476%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx230465%_ _%id230467%_)
        (let ((_%klass230471%_
               (let ((__tmp232909
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id230467%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp232909))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass230471%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx230465%_
                 _%id230467%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx229715%_ _%proc229717%_ _%sig229718%_)
        (letrec ((_%signature-arity229720%_
                  (lambda (_%args230397%_)
                    (let _%loop230400%_ ((_%rest230403%_ _%args230397%_)
                                         (_%count230405%_ '0))
                      (let* ((_%rest230406230417%_ _%rest230403%_)
                             (_%E230410230423%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest230406230417%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K230413230454%_
                               (lambda (_%rest230451%_)
                                 (_%loop230400%_
                                  _%rest230451%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count230405%_ '1)))))
                              (_%K230412230443%_ (lambda () _%count230405%_))
                              (_%K230411230431%_
                               (lambda () (cons _%count230405%_ '()))))
                          (let ((_%try-match230408230447%_
                                 (lambda ()
                                   (if (null? _%rest230406230417%_)
                                       (_%K230412230443%_)
                                       (_%K230411230431%_)))))
                            (if (pair? _%rest230406230417%_)
                                (let* ((_%tl230415230458%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest230406230417%_)))
                                       (_%rest230462%_ _%tl230415230458%_))
                                  (_%K230413230454%_ _%rest230462%_))
                                (_%try-match230408230447%_))))))))
                 (_%make-signature229722%_
                  (lambda (_%args230279%_
                           _%return230281%_
                           _%effect230282%_
                           _%unchecked230283%_)
                    (let ((__tmp232910
                           (lambda (_%g230284230286%_)
                             (|gxc[1]#verify-class!|
                              _%ctx229715%_
                              _%g230284230286%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp232910 _%args230279%_))
                    (|gxc[1]#verify-class!| _%ctx229715%_ _%return230281%_)
                    (if _%unchecked230283%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx229715%_
                         _%unchecked230283%_)
                        '#!void)
                    (let ((_%arity230290%_
                           (_%signature-arity229720%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args230279%_)))))
                      (if _%effect230282%_
                          (let ((_%effect230293%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect230282%_))))
                            (if (and (list? _%effect230293%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect230293%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx229715%_
                                   _%proc229717%_
                                   _%effect230293%_))))
                          '#!void)
                      (cons _%arity230290%_
                            (cons (let* ((_%g230296230319%_
                                          (lambda (_%g230297230315%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g230297230315%_))))
                                         (_%g230295230393%_
                                          (lambda (_%g230297230323%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g230297230323%_))
                                                (let ((_%e230302230326%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g230297230323%_))))
                                                  (let ((_%hd230303230330%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230302230326%_)))
                                                        (_%tl230304230333%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230302230326%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl230304230333%_))
                                                        (let ((_%e230305230336%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl230304230333%_))))
                  (let ((_%hd230306230340%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230305230336%_)))
                        (_%tl230307230343%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230305230336%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl230307230343%_))
                        (let ((_%e230308230346%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl230307230343%_))))
                          (let ((_%hd230309230350%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230308230346%_)))
                                (_%tl230310230353%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230308230346%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl230310230353%_))
                                (let ((_%e230311230356%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl230310230353%_))))
                                  (let ((_%hd230312230360%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230311230356%_)))
                                        (_%tl230313230363%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230311230356%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl230313230363%_))
                                        ((lambda (_%g230298230366%_
                                                  _%g230299230368%_
                                                  _%g230300230369%_
                                                  _%g230301230370%_)
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
                           (cons _%g230301230370%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g230300230369%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g230299230368%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g230298230366%_ '()))
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
                                         _%hd230312230360%_
                                         _%hd230309230350%_
                                         _%hd230306230340%_
                                         _%hd230303230330%_)
                                        (_%g230296230319%_
                                         _%g230297230323%_))))
                                (_%g230296230319%_ _%g230297230323%_))))
                        (_%g230296230319%_ _%g230297230323%_))))
                (_%g230296230319%_ _%g230297230323%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230296230319%_
                                                 _%g230297230323%_)))))
                                    (_%g230295230393%_
                                     (list _%args230279%_
                                           _%return230281%_
                                           _%effect230282%_
                                           _%unchecked230283%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx229715%_ _%proc229717%_)
          (let* ((_%__stx232550232551%_ _%sig229718%_)
                 (_%g229729229832%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx232550232551%_)))))
            (let ((_%__kont232553232554%_
                   (lambda (_%g229731230260%_ _%g229732230262%_)
                     (_%make-signature229722%_
                      _%g229732230262%_
                      _%g229731230260%_
                      '#f
                      '#f)))
                  (_%__kont232555232556%_
                   (lambda (_%g229739230211%_
                            _%g229740230213%_
                            _%g229741230214%_)
                     (_%make-signature229722%_
                      _%g229741230214%_
                      _%g229740230213%_
                      _%g229739230211%_
                      '#f)))
                  (_%__kont232557232558%_
                   (lambda (_%g229755230135%_
                            _%g229756230137%_
                            _%g229757230138%_)
                     (_%make-signature229722%_
                      _%g229757230138%_
                      _%g229756230137%_
                      _%g229755230135%_
                      (let ((__tmp232911
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc229717%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp232911)))))
                  (_%__kont232559232560%_
                   (lambda (_%g229775230041%_
                            _%g229776230043%_
                            _%g229777230044%_
                            _%g229778230045%_)
                     (_%make-signature229722%_
                      _%g229778230045%_
                      _%g229777230044%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g229775230041%_)))))
                  (_%__kont232561232562%_
                   (lambda (_%g229799229948%_ _%g229800229950%_)
                     (_%make-signature229722%_
                      _%g229800229950%_
                      _%g229799229948%_
                      '#f
                      (let ((__tmp232912
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc229717%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp232912)))))
                  (_%__kont232563232564%_
                   (lambda (_%g229811229883%_
                            _%g229812229885%_
                            _%g229813229886%_)
                     (_%make-signature229722%_
                      _%g229813229886%_
                      _%g229812229885%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g229811229883%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232550232551%_))
                  (let ((_%e229733230240%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232550232551%_))))
                    (let ((_%tl229735230247%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229733230240%_)))
                          (_%hd229734230244%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229733230240%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229735230247%_))
                          (let ((_%e229736230250%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl229735230247%_))))
                            (let ((_%tl229738230257%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229736230250%_)))
                                  (_%hd229737230254%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229736230250%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229738230257%_))
                                  (_%__kont232553232554%_
                                   _%hd229737230254%_
                                   _%hd229734230244%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl229738230257%_))
                                      (let ((_%e229748230187%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl229738230257%_))))
                                        (let ((_%tl229750230194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229748230187%_)))
                                              (_%hd229749230191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229748230187%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd229749230191%_))
                                              (let ((_%e229751230197%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd229749230191%_))))
                                                (if (equal? _%e229751230197%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl229750230194%_))
                                                        (let ((_%e229752230201%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl229750230194%_))))
                  (let ((_%tl229754230208%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229752230201%_)))
                        (_%hd229753230205%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229752230201%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl229754230208%_))
                        (_%__kont232555232556%_
                         _%hd229753230205%_
                         _%hd229737230254%_
                         _%hd229734230244%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229754230208%_))
                            (let ((_%e229771230121%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl229754230208%_))))
                              (let ((_%tl229773230128%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229771230121%_)))
                                    (_%hd229772230125%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229771230121%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd229772230125%_))
                                    (let ((_%e229774230131%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229772230125%_))))
                                      (if (equal? _%e229774230131%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229773230128%_))
                                              (_%__kont232557232558%_
                                               _%hd229753230205%_
                                               _%hd229737230254%_
                                               _%hd229734230244%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229773230128%_))
                                                  (let ((_%e229796230031%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl229773230128%_))))
                                                    (let ((_%tl229798230038%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229796230031%_)))
                                                          (_%hd229797230035%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229796230031%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl229798230038%_))
                                                          (_%__kont232559232560%_
                                                           _%hd229797230035%_
                                                           _%hd229753230205%_
                                                           _%hd229737230254%_
                                                           _%hd229734230244%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g229729229832%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g229729229832%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g229729229832%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g229729229832%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g229729229832%_))))))
                (let () (declare (not safe)) (_%g229729229832%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e229751230197%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl229750230194%_))
                                                            (_%__kont232561232562%_
                                                             _%hd229737230254%_
                                                             _%hd229734230244%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl229750230194%_))
                        (let ((_%e229824229873%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl229750230194%_))))
                          (let ((_%tl229826229880%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229824229873%_)))
                                (_%hd229825229877%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229824229873%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl229826229880%_))
                                (_%__kont232563232564%_
                                 _%hd229825229877%_
                                 _%hd229737230254%_
                                 _%hd229734230244%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g229729229832%_)))))
                        (let () (declare (not safe)) (_%g229729229832%_))))
                (let () (declare (not safe)) (_%g229729229832%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g229729229832%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g229729229832%_))))))
                          (let () (declare (not safe)) (_%g229729229832%_)))))
                  (let () (declare (not safe)) (_%g229729229832%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig229326%_)
        (let* ((_%g229329229409%_
                (lambda (_%g229330229405%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g229330229405%_))))
               (_%g229328229711%_
                (lambda (_%g229330229413%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g229330229413%_))
                      (let ((_%e229336229416%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g229330229413%_))))
                        (let ((_%hd229337229420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229336229416%_)))
                              (_%tl229338229423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229336229416%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl229338229423%_))
                              (let ((_%e229339229426%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl229338229423%_))))
                                (let ((_%hd229340229430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229339229426%_)))
                                      (_%tl229341229433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229339229426%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd229340229430%_))
                                      (let ((_%e229342229436%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd229340229430%_))))
                                        (if (equal? _%e229342229436%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229341229433%_))
                                                (let ((_%e229343229440%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl229341229433%_))))
                                                  (let ((_%hd229344229444%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229343229440%_)))
                                                        (_%tl229345229447%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229343229440%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd229344229444%_))
                                                        (let ((_%e229346229450%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd229344229444%_))))
                  (let ((_%hd229347229454%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229346229450%_)))
                        (_%tl229348229457%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229346229450%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd229347229454%_))
                        (if (let ((__tmp232913 |gxc[1]#_g232914_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp232913
                               _%hd229347229454%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229348229457%_))
                                (let ((_%e229349229460%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl229348229457%_))))
                                  (let ((_%hd229350229464%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229349229460%_)))
                                        (_%tl229351229467%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229349229460%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229351229467%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229345229447%_))
                                            (let ((_%e229352229470%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl229345229447%_))))
                                              (let ((_%hd229353229474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229352229470%_)))
                                                    (_%tl229354229477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229352229470%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd229353229474%_))
                                                    (let ((_%e229355229480%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd229353229474%_))))
                                                      (if (equal? _%e229355229480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl229354229477%_))
                      (let ((_%e229356229484%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl229354229477%_))))
                        (let ((_%hd229357229488%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229356229484%_)))
                              (_%tl229358229491%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229356229484%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd229357229488%_))
                              (let ((_%e229359229494%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd229357229488%_))))
                                (let ((_%hd229360229498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229359229494%_)))
                                      (_%tl229361229501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229359229494%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd229360229498%_))
                                      (if (let ((__tmp232915
                                                 |gxc[1]#_g232916_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp232915
                                             _%hd229360229498%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229361229501%_))
                                              (let ((_%e229362229504%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl229361229501%_))))
                                                (let ((_%hd229363229508%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229362229504%_)))
                                                      (_%tl229364229511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229362229504%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl229364229511%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl229358229491%_))
                                                          (let ((_%e229365229514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl229358229491%_))))
                    (let ((_%hd229366229518%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229365229514%_)))
                          (_%tl229367229521%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229365229514%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd229366229518%_))
                          (let ((_%e229368229524%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd229366229518%_))))
                            (if (equal? _%e229368229524%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl229367229521%_))
                                    (let ((_%e229369229528%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl229367229521%_))))
                                      (let ((_%hd229370229532%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229369229528%_)))
                                            (_%tl229371229535%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229369229528%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd229370229532%_))
                                            (let ((_%e229372229538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd229370229532%_))))
                                              (let ((_%hd229373229542%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229372229538%_)))
                                                    (_%tl229374229545%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229372229538%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd229373229542%_))
                                                    (if (let ((__tmp232917
                                                               |gxc[1]#_g232918_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp232917
                                                           _%hd229373229542%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229374229545%_))
                                                            (let ((_%e229375229548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl229374229545%_))))
                      (let ((_%hd229376229552%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229375229548%_)))
                            (_%tl229377229555%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229375229548%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229377229555%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229371229535%_))
                                (let ((_%e229378229558%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl229371229535%_))))
                                  (let ((_%hd229379229562%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229378229558%_)))
                                        (_%tl229380229565%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229378229558%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd229379229562%_))
                                        (let ((_%e229381229568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229379229562%_))))
                                          (if (equal? _%e229381229568%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229380229565%_))
                                                  (let ((_%e229382229572%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl229380229565%_))))
                                                    (let ((_%hd229383229576%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229382229572%_)))
                                                          (_%tl229384229579%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229382229572%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd229383229576%_))
                                                          (let ((_%e229385229582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd229383229576%_))))
                    (let ((_%hd229386229586%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229385229582%_)))
                          (_%tl229387229589%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229385229582%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd229386229586%_))
                          (if (let ((__tmp232919 |gxc[1]#_g232920_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp232919
                                 _%hd229386229586%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl229387229589%_))
                                  (let ((_%e229388229592%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl229387229589%_))))
                                    (let ((_%hd229389229596%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e229388229592%_)))
                                          (_%tl229390229599%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e229388229592%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl229390229599%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229384229579%_))
                                              (let ((_%e229391229602%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl229384229579%_))))
                                                (let ((_%hd229392229606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229391229602%_)))
                                                      (_%tl229393229609%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229391229602%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd229392229606%_))
                                                      (let ((_%e229394229612%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd229392229606%_))))
                (if (equal? _%e229394229612%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229393229609%_))
                        (let ((_%e229395229616%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl229393229609%_))))
                          (let ((_%hd229396229620%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229395229616%_)))
                                (_%tl229397229623%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229395229616%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229396229620%_))
                                (let ((_%e229398229626%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd229396229620%_))))
                                  (let ((_%hd229399229630%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229398229626%_)))
                                        (_%tl229400229633%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229398229626%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd229399229630%_))
                                        (if (let ((__tmp232921
                                                   |gxc[1]#_g232922_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp232921
                                               _%hd229399229630%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229400229633%_))
                                                (let ((_%e229401229636%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl229400229633%_))))
                                                  (let ((_%hd229402229640%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229401229636%_)))
                                                        (_%tl229403229643%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229401229636%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229403229643%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl229397229623%_))
                                                            ((lambda (_%g229331229646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229332229648%_
                              _%g229333229649%_
                              _%g229334229650%_
                              _%g229335229651%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g229332229648%_))
                           (cons _%g229332229648%_
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
                       (cons _%g229334229650%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g229331229646%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd229402229640%_
                     _%hd229389229596%_
                     _%hd229376229552%_
                     _%hd229363229508%_
                     _%hd229350229464%_)
                    (_%g229329229409%_ _%g229330229413%_))
                (_%g229329229409%_ _%g229330229413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g229329229409%_
                                                 _%g229330229413%_))
                                            (_%g229329229409%_
                                             _%g229330229413%_))
                                        (_%g229329229409%_
                                         _%g229330229413%_))))
                                (_%g229329229409%_ _%g229330229413%_))))
                        (_%g229329229409%_ _%g229330229413%_))
                    (_%g229329229409%_ _%g229330229413%_)))
              (_%g229329229409%_ _%g229330229413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g229329229409%_
                                               _%g229330229413%_))
                                          (_%g229329229409%_
                                           _%g229330229413%_))))
                                  (_%g229329229409%_ _%g229330229413%_))
                              (_%g229329229409%_ _%g229330229413%_))
                          (_%g229329229409%_ _%g229330229413%_))))
                  (_%g229329229409%_ _%g229330229413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g229329229409%_
                                                   _%g229330229413%_))
                                              (_%g229329229409%_
                                               _%g229330229413%_)))
                                        (_%g229329229409%_
                                         _%g229330229413%_))))
                                (_%g229329229409%_ _%g229330229413%_))
                            (_%g229329229409%_ _%g229330229413%_))))
                    (_%g229329229409%_ _%g229330229413%_))
                (_%g229329229409%_ _%g229330229413%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229329229409%_
                                                     _%g229330229413%_))))
                                            (_%g229329229409%_
                                             _%g229330229413%_))))
                                    (_%g229329229409%_ _%g229330229413%_))
                                (_%g229329229409%_ _%g229330229413%_)))
                          (_%g229329229409%_ _%g229330229413%_))))
                  (_%g229329229409%_ _%g229330229413%_))
              (_%g229329229409%_ _%g229330229413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g229329229409%_
                                               _%g229330229413%_))
                                          (_%g229329229409%_
                                           _%g229330229413%_))
                                      (_%g229329229409%_ _%g229330229413%_))))
                              (_%g229329229409%_ _%g229330229413%_))))
                      (_%g229329229409%_ _%g229330229413%_))
                  (_%g229329229409%_ _%g229330229413%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229329229409%_
                                                     _%g229330229413%_))))
                                            (_%g229329229409%_
                                             _%g229330229413%_))
                                        (_%g229329229409%_
                                         _%g229330229413%_))))
                                (_%g229329229409%_ _%g229330229413%_))
                            (_%g229329229409%_ _%g229330229413%_))
                        (_%g229329229409%_ _%g229330229413%_))))
                (_%g229329229409%_ _%g229330229413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g229329229409%_
                                                 _%g229330229413%_))
                                            (_%g229329229409%_
                                             _%g229330229413%_)))
                                      (_%g229329229409%_ _%g229330229413%_))))
                              (_%g229329229409%_ _%g229330229413%_))))
                      (_%g229329229409%_ _%g229330229413%_)))))
          (_%g229328229711%_ _%sig229326%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx230483%_)
        (let* ((_%g230486230504%_
                (lambda (_%g230487230500%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230487230500%_))))
               (_%g230485230559%_
                (lambda (_%g230487230508%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230487230508%_))
                      (let ((_%e230490230511%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230487230508%_))))
                        (let ((_%hd230491230515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230490230511%_)))
                              (_%tl230492230518%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230490230511%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230492230518%_))
                              (let ((_%e230493230521%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230492230518%_))))
                                (let ((_%hd230494230525%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230493230521%_)))
                                      (_%tl230495230528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230493230521%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl230495230528%_))
                                      (let ((_%e230496230531%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl230495230528%_))))
                                        (let ((_%hd230497230535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230496230531%_)))
                                              (_%tl230498230538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230496230531%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl230498230538%_))
                                              ((lambda (_%g230488230541%_
                                                        _%g230489230543%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g230489230543%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g230488230541%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx230483%_
                                                        _%g230489230543%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx230483%_
                                                        _%g230488230541%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g230489230543%_
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
                                                   (cons _%g230488230541%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g230486230504%_
                                                      _%g230487230508%_)))
                                               _%hd230497230535%_
                                               _%hd230494230525%_)
                                              (_%g230486230504%_
                                               _%g230487230508%_))))
                                      (_%g230486230504%_ _%g230487230508%_))))
                              (_%g230486230504%_ _%g230487230508%_))))
                      (_%g230486230504%_ _%g230487230508%_)))))
          (_%g230485230559%_ _%stx230483%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx230563%_)
        (let* ((_%g230566230590%_
                (lambda (_%g230567230586%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230567230586%_))))
               (_%g230565230871%_
                (lambda (_%g230567230594%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230567230594%_))
                      (let ((_%e230570230597%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230567230594%_))))
                        (let ((_%hd230571230601%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230570230597%_)))
                              (_%tl230572230604%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230570230597%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230572230604%_))
                              (let ((_%e230573230607%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230572230604%_))))
                                (let ((_%hd230574230611%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230573230607%_)))
                                      (_%tl230575230614%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230573230607%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230575230614%_))
                                      (let ((_g232923_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl230575230614%_
                                                '0))))
                                        (begin
                                          (let ((_g232924_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232923_)
                                                       (##values-length
                                                        _g232923_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232924_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232924_)))
                                          (let ((_%target230576230617%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232923_ 0)))
                                                (_%tl230578230620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232923_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230578230620%_))
                                                (letrec ((_%loop230579230623%_
                                                          (lambda (_%hd230577230627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature230583230630%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd230577230627%_))
                        (let ((_%e230580230632%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd230577230627%_))))
                          (let ((_%lp-hd230581230636%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230580230632%_)))
                                (_%lp-tl230582230639%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230580230632%_))))
                            (_%loop230579230623%_
                             _%lp-tl230582230639%_
                             (cons _%lp-hd230581230636%_
                                   _%signature230583230630%_))))
                        (let ((_%signature230584230642%_
                               (reverse _%signature230583230630%_)))
                          ((lambda (_%g230568230645%_ _%g230569230647%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g230569230647%_))
                                 (let* ((_%g230665230680%_
                                         (lambda (_%g230666230676%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g230666230676%_))))
                                        (_%g230664230859%_
                                         (lambda (_%g230666230684%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g230666230684%_))
                                               (let ((_%e230669230687%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g230666230684%_))))
                                                 (let ((_%hd230670230691%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e230669230687%_)))
                                                       (_%tl230671230694%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e230669230687%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl230671230694%_))
                                                       (let ((_%e230672230697%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl230671230694%_))))
                 (let ((_%hd230673230701%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230672230697%_)))
                       (_%tl230674230704%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230672230697%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl230674230704%_))
                       ((lambda (_%g230667230707%_ _%g230668230709%_)
                          (let* ((_%g230725230733%_
                                  (lambda (_%g230726230729%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g230726230729%_))))
                                 (_%g230724230855%_
                                  (lambda (_%g230726230737%_)
                                    ((lambda (_%g230727230740%_)
                                       (let* ((_%unchecked230753%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g230667230707%_))
                                              (_%g230756230764%_
                                               (lambda (_%g230757230760%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g230757230760%_))))
                                              (_%g230755230787%_
                                               (lambda (_%g230757230768%_)
                                                 ((lambda (_%g230758230771%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g230727230740%_
                                                                (cons _%g230758230771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g230757230768%_))))
                                         (_%g230755230787%_
                                          (if _%unchecked230753%_
                                              (let* ((_%g230791230806%_
                                                      (lambda (_%g230792230802%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230792230802%_))))
                                                     (_%g230790230851%_
                                                      (lambda (_%g230792230810%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230792230810%_))
                                                            (let ((_%e230795230813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g230792230810%_))))
                      (let ((_%hd230796230817%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230795230813%_)))
                            (_%tl230797230820%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230795230813%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230797230820%_))
                            (let ((_%e230798230823%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl230797230820%_))))
                              (let ((_%hd230799230827%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230798230823%_)))
                                    (_%tl230800230830%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230798230823%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl230800230830%_))
                                    ((lambda (_%g230793230833%_
                                              _%g230794230835%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g230794230835%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g230668230709%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g230793230833%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd230799230827%_
                                     _%hd230796230817%_)
                                    (_%g230791230806%_ _%g230792230810%_))))
                            (_%g230791230806%_ _%g230792230810%_))))
                    (_%g230791230806%_ _%g230792230810%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230790230851%_
                                                 _%unchecked230753%_))
                                              '(begin)))))
                                     _%g230726230737%_))))
                            (_%g230724230855%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g230569230647%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g230668230709%_ '()))
                   (cons '#f (cons 'signature: (cons _%g230667230707%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd230673230701%_
                        _%hd230670230691%_)
                       (_%g230665230680%_ _%g230666230684%_))))
               (_%g230665230680%_ _%g230666230684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230665230680%_
                                                _%g230666230684%_)))))
                                   (_%g230664230859%_
                                    (|gxc[1]#parse-signature|
                                     _%stx230563%_
                                     _%g230569230647%_
                                     (let ((__tmp232925
                                            (lambda (_%g230862230865%_
                                                     _%g230863230868%_)
                                              (cons _%g230862230865%_
                                                    _%g230863230868%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp232925
                                        '()
                                        _%g230568230645%_)))))
                                 (_%g230566230590%_ _%g230567230594%_)))
                           _%signature230584230642%_
                           _%hd230574230611%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop230579230623%_
                                                   _%target230576230617%_
                                                   '()))
                                                (_%g230566230590%_
                                                 _%g230567230594%_)))))
                                      (_%g230566230590%_ _%g230567230594%_))))
                              (_%g230566230590%_ _%g230567230594%_))))
                      (_%g230566230590%_ _%g230567230594%_)))))
          (_%g230565230871%_ _%stx230563%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx230876%_)
        (let* ((_%g230879230903%_
                (lambda (_%g230880230899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230880230899%_))))
               (_%g230878231778%_
                (lambda (_%g230880230907%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230880230907%_))
                      (let ((_%e230883230910%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230880230907%_))))
                        (let ((_%hd230884230914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230883230910%_)))
                              (_%tl230885230917%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230883230910%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230885230917%_))
                              (let ((_%e230886230920%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230885230917%_))))
                                (let ((_%hd230887230924%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230886230920%_)))
                                      (_%tl230888230927%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230886230920%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230888230927%_))
                                      (let ((_g232926_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl230888230927%_
                                                '0))))
                                        (begin
                                          (let ((_g232927_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232926_)
                                                       (##values-length
                                                        _g232926_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232927_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232927_)))
                                          (let ((_%target230889230930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232926_ 0)))
                                                (_%tl230891230933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232926_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230891230933%_))
                                                (letrec ((_%loop230892230936%_
                                                          (lambda (_%hd230890230940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature230896230943%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd230890230940%_))
                        (let ((_%e230893230945%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd230890230940%_))))
                          (let ((_%lp-hd230894230949%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230893230945%_)))
                                (_%lp-tl230895230952%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230893230945%_))))
                            (_%loop230892230936%_
                             _%lp-tl230895230952%_
                             (cons _%lp-hd230894230949%_
                                   _%case-signature230896230943%_))))
                        (let ((_%case-signature230897230955%_
                               (reverse _%case-signature230896230943%_)))
                          ((lambda (_%g230881230958%_ _%g230882230960%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g230882230960%_))
                                 (let* ((_%signatures230991%_
                                         (map (lambda (_%g230977230979%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx230876%_
                                                 _%g230882230960%_
                                                 _%g230977230979%_))
                                              (let ((__tmp232928
                                                     (lambda (_%g230982230985%_
                                                              _%g230983230988%_)
                                                       (cons _%g230982230985%_
                                                             _%g230983230988%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp232928
                                                 '()
                                                 _%g230881230958%_))))
                                        (_%g230994231020%_
                                         (lambda (_%g230995231016%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g230995231016%_))))
                                        (_%g230993231774%_
                                         (lambda (_%g230995231024%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g230995231024%_))
                                               (let ((_g232929_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g230995231024%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g232930_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g232929_)
                        (##values-length _g232929_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g232930_ 2)))
                 (error "Context expects 2 values" _g232930_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target230998231027%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g232929_
                                                             0)))
                                                         (_%tl231000231030%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g232929_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl231000231030%_))
                                                         (letrec ((_%loop231001231033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd230999231037%_
                                    _%sig231005231040%_
                                    _%arity231006231041%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd230999231037%_))
                                 (let ((_%e231002231043%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd230999231037%_))))
                                   (let ((_%lp-hd231003231047%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231002231043%_)))
                                         (_%lp-tl231004231050%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231002231043%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd231003231047%_))
                                         (let ((_%e231009231053%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd231003231047%_))))
                                           (let ((_%hd231010231057%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e231009231053%_)))
                                                 (_%tl231011231060%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e231009231053%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl231011231060%_))
                                                 (let ((_%e231012231063%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl231011231060%_))))
                                                   (let ((_%hd231013231067%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231012231063%_)))
                                                         (_%tl231014231070%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231012231063%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl231014231070%_))
                                                         (_%loop231001231033%_
                                                          _%lp-tl231004231050%_
                                                          (cons _%hd231013231067%_
                                                                _%sig231005231040%_)
                                                          (cons _%hd231010231057%_
                                                                _%arity231006231041%_))
                                                         (_%g230994231020%_
                                                          _%g230995231024%_))))
                                                 (_%g230994231020%_
                                                  _%g230995231024%_))))
                                         (_%g230994231020%_
                                          _%g230995231024%_))))
                                 (let ((_%sig231007231073%_
                                        (reverse _%sig231005231040%_))
                                       (_%arity231008231075%_
                                        (reverse _%arity231006231041%_)))
                                   ((lambda (_%g230996231077%_
                                             _%g230997231079%_)
                                      (let* ((_%g231096231104%_
                                              (lambda (_%g231097231100%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g231097231100%_))))
                                             (_%g231095231759%_
                                              (lambda (_%g231097231108%_)
                                                ((lambda (_%g231098231111%_)
                                                   (let* ((_%g231124231132%_
                                                           (lambda (_%g231125231128%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g231125231128%_))))
                  (_%g231123231154%_
                   (lambda (_%g231125231136%_)
                     ((lambda (_%g231126231139%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g231098231111%_
                                    (cons _%g231126231139%_ '()))))
                      _%g231125231136%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231123231154%_
                                                      (let ((_g232931_
                                                             (let _%loop231158%_ ((_%rest231161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures230991%_)
                                          (_%unchecked-proc231163%_ '#f)
                                          (_%unchecked-clauses231164%_ '()))
                       (let* ((_%rest231165231173%_ _%rest231161%_)
                              (_%else231167231185%_
                               (lambda ()
                                 (values _%unchecked-proc231163%_
                                         (reverse!
                                          _%unchecked-clauses231164%_))))
                              (_%K231169231626%_
                               (lambda (_%rest231189%_ _%hd231191%_)
                                 (let* ((_%g231193231280%_
                                         (lambda (_%g231194231276%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g231194231276%_))))
                                        (_%g231192231622%_
                                         (lambda (_%g231194231284%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g231194231284%_))
                                               (let ((_%e231201231287%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g231194231284%_))))
                                                 (let ((_%hd231202231291%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231201231287%_)))
                                                       (_%tl231203231294%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231201231287%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl231203231294%_))
                                                       (let ((_%e231204231297%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl231203231294%_))))
                 (let ((_%hd231205231301%_
                        (let ()
                          (declare (not safe))
                          (##car _%e231204231297%_)))
                       (_%tl231206231304%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e231204231297%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd231205231301%_))
                       (let ((_%e231207231307%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd231205231301%_))))
                         (let ((_%hd231208231311%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231207231307%_)))
                               (_%tl231209231314%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231207231307%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl231209231314%_))
                               (let ((_%e231210231317%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl231209231314%_))))
                                 (let ((_%hd231211231321%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231210231317%_)))
                                       (_%tl231212231324%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231210231317%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd231211231321%_))
                                       (let ((_%e231213231327%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd231211231321%_))))
                                         (if (equal? _%e231213231327%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl231212231324%_))
                                                 (let ((_%e231214231331%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl231212231324%_))))
                                                   (let ((_%hd231215231335%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231214231331%_)))
                                                         (_%tl231216231338%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231214231331%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd231215231335%_))
                                                         (let ((_%e231217231341%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd231215231335%_))))
                   (let ((_%hd231218231345%_
                          (let ()
                            (declare (not safe))
                            (##car _%e231217231341%_)))
                         (_%tl231219231348%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e231217231341%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd231218231345%_))
                         (if (let ((__tmp232933 |gxc[1]#_g232934_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp232933
                                _%hd231218231345%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl231219231348%_))
                                 (let ((_%e231220231351%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl231219231348%_))))
                                   (let ((_%hd231221231355%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231220231351%_)))
                                         (_%tl231222231358%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231220231351%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl231222231358%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl231216231338%_))
                                             (let ((_%e231223231361%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl231216231338%_))))
                                               (let ((_%hd231224231365%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231223231361%_)))
                                                     (_%tl231225231368%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231223231361%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd231224231365%_))
                                                     (let ((_%e231226231371%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd231224231365%_))))
                                                       (if (equal? _%e231226231371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl231225231368%_))
                       (let ((_%e231227231375%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl231225231368%_))))
                         (let ((_%hd231228231379%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231227231375%_)))
                               (_%tl231229231382%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231227231375%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd231228231379%_))
                               (let ((_%e231230231385%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd231228231379%_))))
                                 (let ((_%hd231231231389%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231230231385%_)))
                                       (_%tl231232231392%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231230231385%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd231231231389%_))
                                       (if (let ((__tmp232935
                                                  |gxc[1]#_g232936_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp232935
                                              _%hd231231231389%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl231232231392%_))
                                               (let ((_%e231233231395%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl231232231392%_))))
                                                 (let ((_%hd231234231399%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231233231395%_)))
                                                       (_%tl231235231402%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231233231395%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl231235231402%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl231229231382%_))
                                                           (let ((_%e231236231405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl231229231382%_))))
                     (let ((_%hd231237231409%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231236231405%_)))
                           (_%tl231238231412%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231236231405%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd231237231409%_))
                           (let ((_%e231239231415%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd231237231409%_))))
                             (if (equal? _%e231239231415%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl231238231412%_))
                                     (let ((_%e231240231419%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl231238231412%_))))
                                       (let ((_%hd231241231423%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e231240231419%_)))
                                             (_%tl231242231426%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e231240231419%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd231241231423%_))
                                             (let ((_%e231243231429%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd231241231423%_))))
                                               (let ((_%hd231244231433%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231243231429%_)))
                                                     (_%tl231245231436%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231243231429%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd231244231433%_))
                                                     (if (let ((__tmp232937
                                                                |gxc[1]#_g232938_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp232937
                                                            _%hd231244231433%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl231245231436%_))
                     (let ((_%e231246231439%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl231245231436%_))))
                       (let ((_%hd231247231443%_
                              (let ()
                                (declare (not safe))
                                (##car _%e231246231439%_)))
                             (_%tl231248231446%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e231246231439%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl231248231446%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl231242231426%_))
                                 (let ((_%e231249231449%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl231242231426%_))))
                                   (let ((_%hd231250231453%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231249231449%_)))
                                         (_%tl231251231456%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231249231449%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd231250231453%_))
                                         (let ((_%e231252231459%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd231250231453%_))))
                                           (if (equal? _%e231252231459%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl231251231456%_))
                                                   (let ((_%e231253231463%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl231251231456%_))))
                                                     (let ((_%hd231254231467%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e231253231463%_)))
                                                           (_%tl231255231470%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e231253231463%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd231254231467%_))
                                                           (let ((_%e231256231473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd231254231467%_))))
                     (let ((_%hd231257231477%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231256231473%_)))
                           (_%tl231258231480%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231256231473%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd231257231477%_))
                           (if (let ((__tmp232939 |gxc[1]#_g232940_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp232939
                                  _%hd231257231477%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl231258231480%_))
                                   (let ((_%e231259231483%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl231258231480%_))))
                                     (let ((_%hd231260231487%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e231259231483%_)))
                                           (_%tl231261231490%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e231259231483%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl231261231490%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl231255231470%_))
                                               (let ((_%e231262231493%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl231255231470%_))))
                                                 (let ((_%hd231263231497%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231262231493%_)))
                                                       (_%tl231264231500%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231262231493%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd231263231497%_))
                                                       (let ((_%e231265231503%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd231263231497%_))))
                 (if (equal? _%e231265231503%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl231264231500%_))
                         (let ((_%e231266231507%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl231264231500%_))))
                           (let ((_%hd231267231511%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e231266231507%_)))
                                 (_%tl231268231514%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e231266231507%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd231267231511%_))
                                 (let ((_%e231269231517%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd231267231511%_))))
                                   (let ((_%hd231270231521%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231269231517%_)))
                                         (_%tl231271231524%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231269231517%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd231270231521%_))
                                         (if (let ((__tmp232941
                                                    |gxc[1]#_g232942_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp232941
                                                _%hd231270231521%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl231271231524%_))
                                                 (let ((_%e231272231527%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl231271231524%_))))
                                                   (let ((_%hd231273231531%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231272231527%_)))
                                                         (_%tl231274231534%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231272231527%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl231274231534%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl231268231514%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl231206231304%_))
                         ((lambda (_%g231195231537%_
                                   _%g231196231539%_
                                   _%g231197231540%_
                                   _%g231198231541%_
                                   _%g231199231542%_
                                   _%g231200231543%_)
                            (let ((_%clause231614%_
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
                                                     (cons _%g231200231543%_
                                                           '()))
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
                                                 (cons _%g231198231541%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231195231537%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked231616%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g231196231539%_))))
                              (_%loop231158%_
                               _%rest231189%_
                               (let ((_%$e231618%_ _%unchecked231616%_))
                                 (if _%$e231618%_
                                     _%$e231618%_
                                     _%unchecked-proc231163%_))
                               (cons _%clause231614%_
                                     _%unchecked-clauses231164%_))))
                          _%hd231273231531%_
                          _%hd231260231487%_
                          _%hd231247231443%_
                          _%hd231234231399%_
                          _%hd231221231355%_
                          _%hd231202231291%_)
                         (_%g231193231280%_ _%g231194231284%_))
                     (_%g231193231280%_ _%g231194231284%_))
                 (_%g231193231280%_ _%g231194231284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g231193231280%_
                                                  _%g231194231284%_))
                                             (_%g231193231280%_
                                              _%g231194231284%_))
                                         (_%g231193231280%_
                                          _%g231194231284%_))))
                                 (_%g231193231280%_ _%g231194231284%_))))
                         (_%g231193231280%_ _%g231194231284%_))
                     (_%g231193231280%_ _%g231194231284%_)))
               (_%g231193231280%_ _%g231194231284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231193231280%_
                                                _%g231194231284%_))
                                           (_%g231193231280%_
                                            _%g231194231284%_))))
                                   (_%g231193231280%_ _%g231194231284%_))
                               (_%g231193231280%_ _%g231194231284%_))
                           (_%g231193231280%_ _%g231194231284%_))))
                   (_%g231193231280%_ _%g231194231284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g231193231280%_
                                                    _%g231194231284%_))
                                               (_%g231193231280%_
                                                _%g231194231284%_)))
                                         (_%g231193231280%_
                                          _%g231194231284%_))))
                                 (_%g231193231280%_ _%g231194231284%_))
                             (_%g231193231280%_ _%g231194231284%_))))
                     (_%g231193231280%_ _%g231194231284%_))
                 (_%g231193231280%_ _%g231194231284%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231193231280%_
                                                      _%g231194231284%_))))
                                             (_%g231193231280%_
                                              _%g231194231284%_))))
                                     (_%g231193231280%_ _%g231194231284%_))
                                 (_%g231193231280%_ _%g231194231284%_)))
                           (_%g231193231280%_ _%g231194231284%_))))
                   (_%g231193231280%_ _%g231194231284%_))
               (_%g231193231280%_ _%g231194231284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231193231280%_
                                                _%g231194231284%_))
                                           (_%g231193231280%_
                                            _%g231194231284%_))
                                       (_%g231193231280%_ _%g231194231284%_))))
                               (_%g231193231280%_ _%g231194231284%_))))
                       (_%g231193231280%_ _%g231194231284%_))
                   (_%g231193231280%_ _%g231194231284%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231193231280%_
                                                      _%g231194231284%_))))
                                             (_%g231193231280%_
                                              _%g231194231284%_))
                                         (_%g231193231280%_
                                          _%g231194231284%_))))
                                 (_%g231193231280%_ _%g231194231284%_))
                             (_%g231193231280%_ _%g231194231284%_))
                         (_%g231193231280%_ _%g231194231284%_))))
                 (_%g231193231280%_ _%g231194231284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g231193231280%_
                                                  _%g231194231284%_))
                                             (_%g231193231280%_
                                              _%g231194231284%_)))
                                       (_%g231193231280%_ _%g231194231284%_))))
                               (_%g231193231280%_ _%g231194231284%_))))
                       (_%g231193231280%_ _%g231194231284%_))))
               (_%g231193231280%_ _%g231194231284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231193231280%_
                                                _%g231194231284%_)))))
                                   (_%g231192231622%_ _%hd231191%_)))))
                         (if (pair? _%rest231165231173%_)
                             (let ((_%hd231170231630%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest231165231173%_)))
                                   (_%tl231171231633%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest231165231173%_))))
                               (let* ((_%hd231636%_ _%hd231170231630%_)
                                      (_%rest231639%_ _%tl231171231633%_))
                                 (_%K231169231626%_
                                  _%rest231639%_
                                  _%hd231636%_)))
                             (_%else231167231185%_))))))
                (begin
                  (let ((_g232932_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g232931_)
                               (##values-length _g232931_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g232932_ 2)))
                        (error "Context expects 2 values" _g232932_)))
                  (let ((_%unchecked-proc231642%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232931_ 0)))
                        (_%unchecked-clauses231644%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232931_ 1))))
                    (if _%unchecked-proc231642%_
                        (let* ((_%g231646231670%_
                                (lambda (_%g231647231666%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g231647231666%_))))
                               (_%g231645231755%_
                                (lambda (_%g231647231674%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g231647231674%_))
                                      (let ((_%e231650231677%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g231647231674%_))))
                                        (let ((_%hd231651231681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231650231677%_)))
                                              (_%tl231652231684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231650231677%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231652231684%_))
                                              (let ((_%e231653231687%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl231652231684%_))))
                                                (let ((_%hd231654231691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231653231687%_)))
                                                      (_%tl231655231694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231653231687%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd231654231691%_))
                                                      (let ((_g232943_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd231654231691%_ '0))))
                (begin
                  (let ((_g232944_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g232943_)
                               (##values-length _g232943_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g232944_ 2)))
                        (error "Context expects 2 values" _g232944_)))
                  (let ((_%target231656231697%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232943_ 0)))
                        (_%tl231658231700%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232943_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl231658231700%_))
                        (letrec ((_%loop231659231703%_
                                  (lambda (_%hd231657231707%_
                                           _%clause231663231710%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd231657231707%_))
                                        (let ((_%e231660231712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd231657231707%_))))
                                          (let ((_%lp-hd231661231716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e231660231712%_)))
                                                (_%lp-tl231662231719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e231660231712%_))))
                                            (_%loop231659231703%_
                                             _%lp-tl231662231719%_
                                             (cons _%lp-hd231661231716%_
                                                   _%clause231663231710%_))))
                                        (let ((_%clause231664231722%_
                                               (reverse _%clause231663231710%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl231655231694%_))
                                              ((lambda (_%g231648231725%_
                                                        _%g231649231727%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g231649231727%_
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
                                             (let ((__tmp232945
                                                    (lambda (_%g231746231749%_
                                                             _%g231747231752%_)
                                                      (cons _%g231746231749%_
                                                            _%g231747231752%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp232945
                                                '()
                                                _%g231648231725%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause231664231722%_
                                               _%hd231651231681%_)
                                              (_%g231646231670%_
                                               _%g231647231674%_)))))))
                          (_%loop231659231703%_ _%target231656231697%_ '()))
                        (_%g231646231670%_ _%g231647231674%_)))))
              (_%g231646231670%_ _%g231647231674%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g231646231670%_
                                               _%g231647231674%_))))
                                      (_%g231646231670%_ _%g231647231674%_)))))
                          (_%g231645231755%_
                           (list _%unchecked-proc231642%_
                                 _%unchecked-clauses231644%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g231097231108%_))))
                                        (_%g231095231759%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g230882230960%_
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
                                          _%g230996231077%_
                                          _%g230997231079%_))
                                       (let ((__tmp232946
                                              (lambda (_%g231762231766%_
                                                       _%g231763231769%_
                                                       _%g231764231771%_)
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
                                (cons _%g231763231769%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g231762231766%_ '())))))
              _%g231764231771%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp232946
                                          '()
                                          _%g230996231077%_
                                          _%g230997231079%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig231007231073%_
                                    _%arity231008231075%_))))))
                   (_%loop231001231033%_ _%target230998231027%_ '() '()))
                 (_%g230994231020%_ _%g230995231024%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230994231020%_
                                                _%g230995231024%_)))))
                                   (_%g230993231774%_ _%signatures230991%_))
                                 (_%g230879230903%_ _%g230880230907%_)))
                           _%case-signature230897230955%_
                           _%hd230887230924%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop230892230936%_
                                                   _%target230889230930%_
                                                   '()))
                                                (_%g230879230903%_
                                                 _%g230880230907%_)))))
                                      (_%g230879230903%_ _%g230880230907%_))))
                              (_%g230879230903%_ _%g230880230907%_))))
                      (_%g230879230903%_ _%g230880230907%_)))))
          (_%g230878231778%_ _%stx230876%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx231786%_)
        (let* ((_%__stx232766232767%_ _%$stx231786%_)
               (_%g231792231852%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232766232767%_)))))
          (let ((_%__kont232769232770%_
                 (lambda (_%g231794232074%_ _%g231795232076%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231795232076%_ '()))
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
                                                       (cons _%g231795232076%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231794232074%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont232771232772%_
                 (lambda (_%g231809231999%_
                          _%g231810232001%_
                          _%g231811232002%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231811232002%_ '()))
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
                                                       (cons _%g231811232002%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231810232001%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g231809231999%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont232773232774%_
                 (lambda (_%g231828231913%_
                          _%g231829231915%_
                          _%g231830231916%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231830231916%_ '()))
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
                                                       (cons _%g231830231916%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231829231915%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g231828231913%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232766232767%_))
                (let ((_%e231796232030%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232766232767%_))))
                  (let ((_%tl231798232037%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231796232030%_)))
                        (_%hd231797232034%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231796232030%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl231798232037%_))
                        (let ((_%e231799232040%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl231798232037%_))))
                          (let ((_%tl231801232047%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e231799232040%_)))
                                (_%hd231800232044%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e231799232040%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd231800232044%_))
                                (let ((_%e231802232050%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd231800232044%_))))
                                  (if (equal? _%e231802232050%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl231801232047%_))
                                          (let ((_%e231803232054%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl231801232047%_))))
                                            (let ((_%tl231805232061%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e231803232054%_)))
                                                  (_%hd231804232058%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e231803232054%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231805232061%_))
                                                  (let ((_%e231806232064%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl231805232061%_))))
                                                    (let ((_%tl231808232071%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231806232064%_)))
                                                          (_%hd231807232068%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231806232064%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl231808232071%_))
                                                          (_%__kont232769232770%_
                                                           _%hd231807232068%_
                                                           _%hd231804232058%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g231792231852%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g231792231852%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g231792231852%_)))
                                      (if (equal? _%e231802232050%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231801232047%_))
                                              (let ((_%e231819231969%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl231801232047%_))))
                                                (let ((_%tl231821231976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231819231969%_)))
                                                      (_%hd231820231973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231819231969%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl231821231976%_))
                                                      (let ((_%e231822231979%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl231821231976%_))))
                (let ((_%tl231824231986%_
                       (let () (declare (not safe)) (##cdr _%e231822231979%_)))
                      (_%hd231823231983%_
                       (let ()
                         (declare (not safe))
                         (##car _%e231822231979%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl231824231986%_))
                      (let ((_%e231825231989%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl231824231986%_))))
                        (let ((_%tl231827231996%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231825231989%_)))
                              (_%hd231826231993%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231825231989%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl231827231996%_))
                              (_%__kont232771232772%_
                               _%hd231826231993%_
                               _%hd231823231983%_
                               _%hd231820231973%_)
                              (let ()
                                (declare (not safe))
                                (_%g231792231852%_)))))
                      (let () (declare (not safe)) (_%g231792231852%_)))))
              (let () (declare (not safe)) (_%g231792231852%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g231792231852%_)))
                                          (if (equal? _%e231802232050%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231801232047%_))
                                                  (let ((_%e231838231883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl231801232047%_))))
                                                    (let ((_%tl231840231890%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231838231883%_)))
                                                          (_%hd231839231887%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231838231883%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl231840231890%_))
                                                          (let ((_%e231841231893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl231840231890%_))))
                    (let ((_%tl231843231900%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e231841231893%_)))
                          (_%hd231842231897%_
                           (let ()
                             (declare (not safe))
                             (##car _%e231841231893%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231843231900%_))
                          (let ((_%e231844231903%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl231843231900%_))))
                            (let ((_%tl231846231910%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231844231903%_)))
                                  (_%hd231845231907%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231844231903%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231846231910%_))
                                  (_%__kont232773232774%_
                                   _%hd231845231907%_
                                   _%hd231842231897%_
                                   _%hd231839231887%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g231792231852%_)))))
                          (let () (declare (not safe)) (_%g231792231852%_)))))
                  (let () (declare (not safe)) (_%g231792231852%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g231792231852%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g231792231852%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g231792231852%_)))))
                        (let () (declare (not safe)) (_%g231792231852%_)))))
                (let () (declare (not safe)) (_%g231792231852%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx232098%_)
        (let* ((_%g232102232122%_
                (lambda (_%g232103232118%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g232103232118%_))))
               (_%g232101232191%_
                (lambda (_%g232103232126%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g232103232126%_))
                      (let ((_%e232105232129%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g232103232126%_))))
                        (let ((_%hd232106232133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e232105232129%_)))
                              (_%tl232107232136%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e232105232129%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl232107232136%_))
                              (let ((_g232947_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl232107232136%_
                                        '0))))
                                (begin
                                  (let ((_g232948_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232947_)
                                               (##values-length _g232947_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232948_ 2)))
                                        (error "Context expects 2 values"
                                               _g232948_)))
                                  (let ((_%target232108232139%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232947_ 0)))
                                        (_%tl232110232142%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232947_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl232110232142%_))
                                        (letrec ((_%loop232111232145%_
                                                  (lambda (_%hd232109232149%_
                                                           _%decl232115232152%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd232109232149%_))
                                                        (let ((_%e232112232154%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd232109232149%_))))
                  (let ((_%lp-hd232113232158%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232112232154%_)))
                        (_%lp-tl232114232161%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232112232154%_))))
                    (_%loop232111232145%_
                     _%lp-tl232114232161%_
                     (cons _%lp-hd232113232158%_ _%decl232115232152%_))))
                (let ((_%decl232116232164%_ (reverse _%decl232115232152%_)))
                  ((lambda (_%g232104232167%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp232949
                                  (lambda (_%g232182232185%_ _%g232183232188%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g232182232185%_)
                                          _%g232183232188%_))))
                             (declare (not safe))
                             (__foldr1 __tmp232949 '() _%g232104232167%_))))
                   _%decl232116232164%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop232111232145%_
                                           _%target232108232139%_
                                           '()))
                                        (_%g232102232122%_
                                         _%g232103232126%_)))))
                              (_%g232102232122%_ _%g232103232126%_))))
                      (_%g232102232122%_ _%g232103232126%_)))))
          (_%g232101232191%_ _%$stx232098%_))))))
