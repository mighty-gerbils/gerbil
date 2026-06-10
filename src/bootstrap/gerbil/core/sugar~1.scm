(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-1[1]#_g17797_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g17798_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g17807_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g17808_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g17809_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrules|
      (lambda (_%$stx1432%_)
        (let* ((_%$%g14361464%_
                (lambda (_%$%g14371460%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g14371460%_)))
               (_%$%g14351563%_
                (lambda (_%$%g14371468%_)
                  (if (gx#stx-pair? _%$%g14371468%_)
                      (let ((_%$%e14411471%_ (gx#syntax-e _%$%g14371468%_)))
                        (let ((_%$%hd14421475%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e14411471%_)))
                              (_%$%tl14431478%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e14411471%_))))
                          (if (gx#stx-pair? _%$%tl14431478%_)
                              (let ((_%$%e14441481%_
                                     (gx#syntax-e _%$%tl14431478%_)))
                                (let ((_%$%hd14451485%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e14441481%_)))
                                      (_%$%tl14461488%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e14441481%_))))
                                  (if (gx#stx-pair? _%$%tl14461488%_)
                                      (let ((_%$%e14471491%_
                                             (gx#syntax-e _%$%tl14461488%_)))
                                        (let ((_%$%hd14481495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e14471491%_)))
                                              (_%$%tl14491498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e14471491%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl14491498%_)
                                              (let ((_g17775_
                                                     (gx#syntax-split-splice
                                                      _%$%tl14491498%_
                                                      '0)))
                                                (begin
                                                  (let ((_g17776_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g17775_)
                                                               (##values-length
                                                                _g17775_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g17776_ 2)))
                (error "Context expects 2 values" _g17776_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target14501501%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17775_
                                                            0)))
                                                        (_%$%tl14521504%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17775_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl14521504%_)
                                                        (letrec ((_%$%loop14531507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd14511511%_ _%$%clauses14571514%_)
                            (if (gx#stx-pair? _%$%hd14511511%_)
                                (let ((_%$%e14541516%_
                                       (gx#syntax-e _%$%hd14511511%_)))
                                  (let ((_%$%lp-hd14551520%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e14541516%_)))
                                        (_%$%lp-tl14561523%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e14541516%_))))
                                    (_%$%loop14531507%_
                                     _%$%lp-tl14561523%_
                                     (cons _%$%lp-hd14551520%_
                                           _%$%clauses14571514%_))))
                                (let ((_%$%clauses14581526%_
                                       (reverse _%$%clauses14571514%_)))
                                  ((lambda (_%$%g14381529%_
                                            _%$%g14391531%_
                                            _%$%g14401532%_)
                                     (if (gx#identifier? _%$%g14401532%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _%$%g14401532%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'syntax-rules)
                         (cons _%$%g14391531%_
                               (foldr (lambda (_%$%g15541557%_ _%$%g15551560%_)
                                        (cons _%$%g15541557%_ _%$%g15551560%_))
                                      '()
                                      _%$%g14381529%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%g14361464%_ _%$%g14371468%_)))
                                   _%$%clauses14581526%_
                                   _%$%hd14481495%_
                                   _%$%hd14451485%_))))))
                  (_%$%loop14531507%_ _%$%target14501501%_ '()))
                (_%$%g14361464%_ _%$%g14371468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g14361464%_
                                               _%$%g14371468%_))))
                                      (_%$%g14361464%_ _%$%g14371468%_))))
                              (_%$%g14361464%_ _%$%g14371468%_))))
                      (_%$%g14361464%_ _%$%g14371468%_)))))
          (_%$%g14351563%_ _%$stx1432%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrule|
      (lambda (_%$stx1568%_)
        (let* ((_%$%g15731614%_
                (lambda (_%$%g15741610%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g15741610%_)))
               (_%$%g15721697%_
                (lambda (_%$%g15741618%_)
                  (if (gx#stx-pair? _%$%g15741618%_)
                      (let ((_%$%e15941621%_ (gx#syntax-e _%$%g15741618%_)))
                        (let ((_%$%hd15951625%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e15941621%_)))
                              (_%$%tl15961628%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e15941621%_))))
                          (if (gx#stx-pair? _%$%tl15961628%_)
                              (let ((_%$%e15971631%_
                                     (gx#syntax-e _%$%tl15961628%_)))
                                (let ((_%$%hd15981635%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e15971631%_)))
                                      (_%$%tl15991638%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e15971631%_))))
                                  (if (gx#stx-pair? _%$%hd15981635%_)
                                      (let ((_%$%e16001641%_
                                             (gx#syntax-e _%$%hd15981635%_)))
                                        (let ((_%$%hd16011645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e16001641%_)))
                                              (_%$%tl16021648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e16001641%_))))
                                          (if (gx#stx-pair? _%$%tl15991638%_)
                                              (let ((_%$%e16031651%_
                                                     (gx#syntax-e
                                                      _%$%tl15991638%_)))
                                                (let ((_%$%hd16041655%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e16031651%_)))
                                                      (_%$%tl16051658%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e16031651%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl16051658%_)
                                                      (let ((_%$%e16061661%_
                                                             (gx#syntax-e
                                                              _%$%tl16051658%_)))
                                                        (let ((_%$%hd16071665%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e16061661%_)))
                      (_%$%tl16081668%_
                       (let () (declare (not safe)) (##cdr _%$%e16061661%_))))
                  (if (gx#stx-null? _%$%tl16081668%_)
                      ((lambda (_%$%g15901671%_
                                _%$%g15911673%_
                                _%$%g15921674%_
                                _%$%g15931675%_)
                         (if (gx#identifier? _%$%g15931675%_)
                             (cons (gx#datum->syntax '#f 'define-syntax)
                                   (cons _%$%g15931675%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-rules)
                                                     (cons '()
                                                           (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#f
                                      '_)
                                     _%$%g15921674%_)
                               (cons _%$%g15911673%_
                                     (cons _%$%g15901671%_ '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (_%$%g15731614%_ _%$%g15741618%_)))
                       _%$%hd16071665%_
                       _%$%hd16041655%_
                       _%$%tl16021648%_
                       _%$%hd16011645%_)
                      (_%$%g15731614%_ _%$%g15741618%_))))
              (_%$%g15731614%_ _%$%g15741618%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g15731614%_
                                               _%$%g15741618%_))))
                                      (_%$%g15731614%_ _%$%g15741618%_))))
                              (_%$%g15731614%_ _%$%g15741618%_))))
                      (_%$%g15731614%_ _%$%g15741618%_))))
               (_%$%g15711765%_
                (lambda (_%$%g15741701%_)
                  (if (gx#stx-pair? _%$%g15741701%_)
                      (let ((_%$%e15781704%_ (gx#syntax-e _%$%g15741701%_)))
                        (let ((_%$%hd15791708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e15781704%_)))
                              (_%$%tl15801711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e15781704%_))))
                          (if (gx#stx-pair? _%$%tl15801711%_)
                              (let ((_%$%e15811714%_
                                     (gx#syntax-e _%$%tl15801711%_)))
                                (let ((_%$%hd15821718%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e15811714%_)))
                                      (_%$%tl15831721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e15811714%_))))
                                  (if (gx#stx-pair? _%$%hd15821718%_)
                                      (let ((_%$%e15841724%_
                                             (gx#syntax-e _%$%hd15821718%_)))
                                        (let ((_%$%hd15851728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e15841724%_)))
                                              (_%$%tl15861731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e15841724%_))))
                                          (if (gx#stx-pair? _%$%tl15831721%_)
                                              (let ((_%$%e15871734%_
                                                     (gx#syntax-e
                                                      _%$%tl15831721%_)))
                                                (let ((_%$%hd15881738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e15871734%_)))
                                                      (_%$%tl15891741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e15871734%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl15891741%_)
                                                      ((lambda (_%$%g15751744%_
                                                                _%$%g15761746%_
                                                                _%$%g15771747%_)
                                                         (if (gx#identifier?
                                                              _%$%g15771747%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'define-syntax)
                           (cons _%$%g15771747%_
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'syntax-rules)
                                             (cons '()
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '_)
                             _%$%g15761746%_)
                       (cons _%$%g15751744%_ '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (_%$%g15721697%_ _%$%g15741701%_)))
               _%$%hd15881738%_
               _%$%tl15861731%_
               _%$%hd15851728%_)
              (_%$%g15721697%_ _%$%g15741701%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g15721697%_
                                               _%$%g15741701%_))))
                                      (_%$%g15721697%_ _%$%g15741701%_))))
                              (_%$%g15721697%_ _%$%g15741701%_))))
                      (_%$%g15721697%_ _%$%g15741701%_)))))
          (_%$%g15711765%_ _%$stx1568%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defsyntax%|
      (lambda (_%$stx1769%_)
        (let* ((_%$%g17741813%_
                (lambda (_%$%g17751809%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g17751809%_)))
               (_%$%g17731868%_
                (lambda (_%$%g17751817%_)
                  (if (gx#stx-pair? _%$%g17751817%_)
                      (let ((_%$%e17991820%_ (gx#syntax-e _%$%g17751817%_)))
                        (let ((_%$%hd18001824%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e17991820%_)))
                              (_%$%tl18011827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e17991820%_))))
                          (if (gx#stx-pair? _%$%tl18011827%_)
                              (let ((_%$%e18021830%_
                                     (gx#syntax-e _%$%tl18011827%_)))
                                (let ((_%$%hd18031834%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e18021830%_)))
                                      (_%$%tl18041837%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e18021830%_))))
                                  (if (gx#stx-pair? _%$%tl18041837%_)
                                      (let ((_%$%e18051840%_
                                             (gx#syntax-e _%$%tl18041837%_)))
                                        (let ((_%$%hd18061844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e18051840%_)))
                                              (_%$%tl18071847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e18051840%_))))
                                          (if (gx#stx-null? _%$%tl18071847%_)
                                              ((lambda (_%$%g17971850%_
                                                        _%$%g17981852%_)
                                                 (if (gx#identifier?
                                                      _%$%g17981852%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-syntax)
                                                           (cons _%$%g17981852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g17971850%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g17741813%_
                                                      _%$%g17751817%_)))
                                               _%$%hd18061844%_
                                               _%$%hd18031834%_)
                                              (_%$%g17741813%_
                                               _%$%g17751817%_))))
                                      (_%$%g17741813%_ _%$%g17751817%_))))
                              (_%$%g17741813%_ _%$%g17751817%_))))
                      (_%$%g17741813%_ _%$%g17751817%_))))
               (_%$%g17721964%_
                (lambda (_%$%g17751872%_)
                  (if (gx#stx-pair? _%$%g17751872%_)
                      (let ((_%$%e17791875%_ (gx#syntax-e _%$%g17751872%_)))
                        (let ((_%$%hd17801879%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e17791875%_)))
                              (_%$%tl17811882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e17791875%_))))
                          (if (gx#stx-pair? _%$%tl17811882%_)
                              (let ((_%$%e17821885%_
                                     (gx#syntax-e _%$%tl17811882%_)))
                                (let ((_%$%hd17831889%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e17821885%_)))
                                      (_%$%tl17841892%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e17821885%_))))
                                  (if (gx#stx-pair? _%$%hd17831889%_)
                                      (let ((_%$%e17851895%_
                                             (gx#syntax-e _%$%hd17831889%_)))
                                        (let ((_%$%hd17861899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e17851895%_)))
                                              (_%$%tl17871902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e17851895%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl17841892%_)
                                              (let ((_g17777_
                                                     (gx#syntax-split-splice
                                                      _%$%tl17841892%_
                                                      '0)))
                                                (begin
                                                  (let ((_g17778_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g17777_)
                                                               (##values-length
                                                                _g17777_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g17778_ 2)))
                (error "Context expects 2 values" _g17778_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target17881905%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17777_
                                                            0)))
                                                        (_%$%tl17901908%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17777_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl17901908%_)
                                                        (letrec ((_%$%loop17911911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd17891915%_ _%$%body17951918%_)
                            (if (gx#stx-pair? _%$%hd17891915%_)
                                (let ((_%$%e17921920%_
                                       (gx#syntax-e _%$%hd17891915%_)))
                                  (let ((_%$%lp-hd17931924%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e17921920%_)))
                                        (_%$%lp-tl17941927%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e17921920%_))))
                                    (_%$%loop17911911%_
                                     _%$%lp-tl17941927%_
                                     (cons _%$%lp-hd17931924%_
                                           _%$%body17951918%_))))
                                (let ((_%$%body17961930%_
                                       (reverse _%$%body17951918%_)))
                                  ((lambda (_%$%g17761933%_
                                            _%$%g17771935%_
                                            _%$%g17781936%_)
                                     (if (gx#identifier? _%$%g17781936%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _%$%g17781936%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda%)
                         (cons _%$%g17771935%_
                               (foldr (lambda (_%$%g19551958%_ _%$%g19561961%_)
                                        (cons _%$%g19551958%_ _%$%g19561961%_))
                                      '()
                                      _%$%g17761933%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%g17731868%_ _%$%g17751872%_)))
                                   _%$%body17961930%_
                                   _%$%tl17871902%_
                                   _%$%hd17861899%_))))))
                  (_%$%loop17911911%_ _%$%target17881905%_ '()))
                (_%$%g17731868%_ _%$%g17751872%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g17731868%_
                                               _%$%g17751872%_))))
                                      (_%$%g17731868%_ _%$%g17751872%_))))
                              (_%$%g17731868%_ _%$%g17751872%_))))
                      (_%$%g17731868%_ _%$%g17751872%_)))))
          (_%$%g17721964%_ _%$stx1769%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#define|
      (lambda (_%$stx1969%_)
        (let* ((_%$%g19742013%_
                (lambda (_%$%g19752009%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g19752009%_)))
               (_%$%g19732068%_
                (lambda (_%$%g19752017%_)
                  (if (gx#stx-pair? _%$%g19752017%_)
                      (let ((_%$%e19992020%_ (gx#syntax-e _%$%g19752017%_)))
                        (let ((_%$%hd20002024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e19992020%_)))
                              (_%$%tl20012027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e19992020%_))))
                          (if (gx#stx-pair? _%$%tl20012027%_)
                              (let ((_%$%e20022030%_
                                     (gx#syntax-e _%$%tl20012027%_)))
                                (let ((_%$%hd20032034%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e20022030%_)))
                                      (_%$%tl20042037%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e20022030%_))))
                                  (if (gx#stx-pair? _%$%tl20042037%_)
                                      (let ((_%$%e20052040%_
                                             (gx#syntax-e _%$%tl20042037%_)))
                                        (let ((_%$%hd20062044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e20052040%_)))
                                              (_%$%tl20072047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e20052040%_))))
                                          (if (gx#stx-null? _%$%tl20072047%_)
                                              ((lambda (_%$%g19972050%_
                                                        _%$%g19982052%_)
                                                 (if (gx#identifier?
                                                      _%$%g19982052%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons (cons _%$%g19982052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%$%g19972050%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g19742013%_
                                                      _%$%g19752017%_)))
                                               _%$%hd20062044%_
                                               _%$%hd20032034%_)
                                              (_%$%g19742013%_
                                               _%$%g19752017%_))))
                                      (_%$%g19742013%_ _%$%g19752017%_))))
                              (_%$%g19742013%_ _%$%g19752017%_))))
                      (_%$%g19742013%_ _%$%g19752017%_))))
               (_%$%g19722164%_
                (lambda (_%$%g19752072%_)
                  (if (gx#stx-pair? _%$%g19752072%_)
                      (let ((_%$%e19792075%_ (gx#syntax-e _%$%g19752072%_)))
                        (let ((_%$%hd19802079%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e19792075%_)))
                              (_%$%tl19812082%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e19792075%_))))
                          (if (gx#stx-pair? _%$%tl19812082%_)
                              (let ((_%$%e19822085%_
                                     (gx#syntax-e _%$%tl19812082%_)))
                                (let ((_%$%hd19832089%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e19822085%_)))
                                      (_%$%tl19842092%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e19822085%_))))
                                  (if (gx#stx-pair? _%$%hd19832089%_)
                                      (let ((_%$%e19852095%_
                                             (gx#syntax-e _%$%hd19832089%_)))
                                        (let ((_%$%hd19862099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e19852095%_)))
                                              (_%$%tl19872102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e19852095%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl19842092%_)
                                              (let ((_g17779_
                                                     (gx#syntax-split-splice
                                                      _%$%tl19842092%_
                                                      '0)))
                                                (begin
                                                  (let ((_g17780_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g17779_)
                                                               (##values-length
                                                                _g17779_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g17780_ 2)))
                (error "Context expects 2 values" _g17780_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target19882105%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17779_
                                                            0)))
                                                        (_%$%tl19902108%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17779_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl19902108%_)
                                                        (letrec ((_%$%loop19912111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd19892115%_ _%$%body19952118%_)
                            (if (gx#stx-pair? _%$%hd19892115%_)
                                (let ((_%$%e19922120%_
                                       (gx#syntax-e _%$%hd19892115%_)))
                                  (let ((_%$%lp-hd19932124%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e19922120%_)))
                                        (_%$%lp-tl19942127%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e19922120%_))))
                                    (_%$%loop19912111%_
                                     _%$%lp-tl19942127%_
                                     (cons _%$%lp-hd19932124%_
                                           _%$%body19952118%_))))
                                (let ((_%$%body19962130%_
                                       (reverse _%$%body19952118%_)))
                                  ((lambda (_%$%g19762133%_
                                            _%$%g19772135%_
                                            _%$%g19782136%_)
                                     (if (gx#identifier? _%$%g19782136%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-values)
                                               (cons (cons _%$%g19782136%_ '())
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda%)
                         (cons _%$%g19772135%_
                               (foldr (lambda (_%$%g21552158%_ _%$%g21562161%_)
                                        (cons _%$%g21552158%_ _%$%g21562161%_))
                                      '()
                                      _%$%g19762133%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%g19732068%_ _%$%g19752072%_)))
                                   _%$%body19962130%_
                                   _%$%tl19872102%_
                                   _%$%hd19862099%_))))))
                  (_%$%loop19912111%_ _%$%target19882105%_ '()))
                (_%$%g19732068%_ _%$%g19752072%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g19732068%_
                                               _%$%g19752072%_))))
                                      (_%$%g19732068%_ _%$%g19752072%_))))
                              (_%$%g19732068%_ _%$%g19752072%_))))
                      (_%$%g19732068%_ _%$%g19752072%_)))))
          (_%$%g19722164%_ _%$stx1969%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*-values|
      (lambda (_%$stx2169%_)
        (let* ((_%$%g21742219%_
                (lambda (_%$%g21752215%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g21752215%_)))
               (_%$%g21732318%_
                (lambda (_%$%g21752223%_)
                  (if (gx#stx-pair? _%$%g21752223%_)
                      (let ((_%$%e21962226%_ (gx#syntax-e _%$%g21752223%_)))
                        (let ((_%$%hd21972230%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e21962226%_)))
                              (_%$%tl21982233%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e21962226%_))))
                          (if (gx#stx-pair? _%$%tl21982233%_)
                              (let ((_%$%e21992236%_
                                     (gx#syntax-e _%$%tl21982233%_)))
                                (let ((_%$%hd22002240%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e21992236%_)))
                                      (_%$%tl22012243%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e21992236%_))))
                                  (if (gx#stx-pair? _%$%hd22002240%_)
                                      (let ((_%$%e22022246%_
                                             (gx#syntax-e _%$%hd22002240%_)))
                                        (let ((_%$%hd22032250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e22022246%_)))
                                              (_%$%tl22042253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e22022246%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl22012243%_)
                                              (let ((_g17781_
                                                     (gx#syntax-split-splice
                                                      _%$%tl22012243%_
                                                      '0)))
                                                (begin
                                                  (let ((_g17782_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g17781_)
                                                               (##values-length
                                                                _g17781_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g17782_ 2)))
                (error "Context expects 2 values" _g17782_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target22052256%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17781_
                                                            0)))
                                                        (_%$%tl22072259%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17781_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl22072259%_)
                                                        (letrec ((_%$%loop22082262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd22062266%_ _%$%body22122269%_)
                            (if (gx#stx-pair? _%$%hd22062266%_)
                                (let ((_%$%e22092271%_
                                       (gx#syntax-e _%$%hd22062266%_)))
                                  (let ((_%$%lp-hd22102275%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e22092271%_)))
                                        (_%$%lp-tl22112278%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e22092271%_))))
                                    (_%$%loop22082262%_
                                     _%$%lp-tl22112278%_
                                     (cons _%$%lp-hd22102275%_
                                           _%$%body22122269%_))))
                                (let ((_%$%body22132281%_
                                       (reverse _%$%body22122269%_)))
                                  ((lambda (_%$%g21922284%_
                                            _%$%g21932286%_
                                            _%$%g21942287%_
                                            _%$%g21952288%_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons _%$%g21942287%_ '())
                                                 (cons (cons _%$%g21952288%_
                                                             (cons _%$%g21932286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%$%g23092312%_ _%$%g23102315%_)
                                    (cons _%$%g23092312%_ _%$%g23102315%_))
                                  '()
                                  _%$%g21922284%_)))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%body22132281%_
                                   _%$%tl22042253%_
                                   _%$%hd22032250%_
                                   _%$%hd21972230%_))))))
                  (_%$%loop22082262%_ _%$%target22052256%_ '()))
                (_%$%g21742219%_ _%$%g21752223%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g21742219%_
                                               _%$%g21752223%_))))
                                      (_%$%g21742219%_ _%$%g21752223%_))))
                              (_%$%g21742219%_ _%$%g21752223%_))))
                      (_%$%g21742219%_ _%$%g21752223%_))))
               (_%$%g21722398%_
                (lambda (_%$%g21752322%_)
                  (if (gx#stx-pair? _%$%g21752322%_)
                      (let ((_%$%e21772325%_ (gx#syntax-e _%$%g21752322%_)))
                        (let ((_%$%hd21782329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e21772325%_)))
                              (_%$%tl21792332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e21772325%_))))
                          (if (gx#stx-pair? _%$%tl21792332%_)
                              (let ((_%$%e21802335%_
                                     (gx#syntax-e _%$%tl21792332%_)))
                                (let ((_%$%hd21812339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e21802335%_)))
                                      (_%$%tl21822342%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e21802335%_))))
                                  (if (gx#stx-null? _%$%hd21812339%_)
                                      (if (gx#stx-pair/null? _%$%tl21822342%_)
                                          (let ((_g17783_
                                                 (gx#syntax-split-splice
                                                  _%$%tl21822342%_
                                                  '0)))
                                            (begin
                                              (let ((_g17784_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g17783_)
                                                           (##values-length
                                                            _g17783_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g17784_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g17784_)))
                                              (let ((_%$%target21832345%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g17783_
                                                        0)))
                                                    (_%$%tl21852348%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g17783_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl21852348%_)
                                                    (letrec ((_%$%loop21862351%_
                                                              (lambda (_%$%hd21842355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body21902358%_)
                        (if (gx#stx-pair? _%$%hd21842355%_)
                            (let ((_%$%e21872360%_
                                   (gx#syntax-e _%$%hd21842355%_)))
                              (let ((_%$%lp-hd21882364%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e21872360%_)))
                                    (_%$%lp-tl21892367%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e21872360%_))))
                                (_%$%loop21862351%_
                                 _%$%lp-tl21892367%_
                                 (cons _%$%lp-hd21882364%_
                                       _%$%body21902358%_))))
                            (let ((_%$%body21912370%_
                                   (reverse _%$%body21902358%_)))
                              ((lambda (_%$%g21762373%_)
                                 (cons (gx#datum->syntax '#f 'let-values)
                                       (cons '()
                                             (foldr (lambda (_%$%g23892392%_
                                                             _%$%g23902395%_)
                                                      (cons _%$%g23892392%_
                                                            _%$%g23902395%_))
                                                    '()
                                                    _%$%g21762373%_))))
                               _%$%body21912370%_))))))
              (_%$%loop21862351%_ _%$%target21832345%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g21732318%_
                                                     _%$%g21752322%_)))))
                                          (_%$%g21732318%_ _%$%g21752322%_))
                                      (_%$%g21732318%_ _%$%g21752322%_))))
                              (_%$%g21732318%_ _%$%g21752322%_))))
                      (_%$%g21732318%_ _%$%g21752322%_)))))
          (_%$%g21722398%_ _%$stx2169%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let|
      (lambda (_%$stx2404%_)
        (let* ((_%$%g24092473%_
                (lambda (_%$%g24102469%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g24102469%_)))
               (_%$%g24082556%_
                (lambda (_%$%g24102477%_)
                  (if (gx#stx-pair? _%$%g24102477%_)
                      (let ((_%$%e24532480%_ (gx#syntax-e _%$%g24102477%_)))
                        (let ((_%$%hd24542484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e24532480%_)))
                              (_%$%tl24552487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e24532480%_))))
                          (if (gx#stx-pair? _%$%tl24552487%_)
                              (let ((_%$%e24562490%_
                                     (gx#syntax-e _%$%tl24552487%_)))
                                (let ((_%$%hd24572494%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e24562490%_)))
                                      (_%$%tl24582497%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e24562490%_))))
                                  (if (gx#stx-pair/null? _%$%tl24582497%_)
                                      (let ((_g17785_
                                             (gx#syntax-split-splice
                                              _%$%tl24582497%_
                                              '0)))
                                        (begin
                                          (let ((_g17786_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g17785_)
                                                       (##values-length
                                                        _g17785_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g17786_ 2)))
                                                (error "Context expects 2 values"
                                                       _g17786_)))
                                          (let ((_%$%target24592500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17785_ 0)))
                                                (_%$%tl24612503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17785_ 1))))
                                            (if (gx#stx-null? _%$%tl24612503%_)
                                                (letrec ((_%$%loop24622506%_
                                                          (lambda (_%$%hd24602510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body24662513%_)
                    (if (gx#stx-pair? _%$%hd24602510%_)
                        (let ((_%$%e24632515%_ (gx#syntax-e _%$%hd24602510%_)))
                          (let ((_%$%lp-hd24642519%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e24632515%_)))
                                (_%$%lp-tl24652522%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e24632515%_))))
                            (_%$%loop24622506%_
                             _%$%lp-tl24652522%_
                             (cons _%$%lp-hd24642519%_ _%$%body24662513%_))))
                        (let ((_%$%body24672525%_
                               (reverse _%$%body24662513%_)))
                          ((lambda (_%$%g24512528%_ _%$%g24522530%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'let-values)
                                         (cons _%$%g24522530%_
                                               (foldr (lambda (_%$%g25472550%_
                                                               _%$%g25482553%_)
                                                        (cons _%$%g25472550%_
                                                              _%$%g25482553%_))
                                                      '()
                                                      _%$%g24512528%_)))))
                           _%$%body24672525%_
                           _%$%hd24572494%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop24622506%_
                                                   _%$%target24592500%_
                                                   '()))
                                                (_%$%g24092473%_
                                                 _%$%g24102477%_)))))
                                      (_%$%g24092473%_ _%$%g24102477%_))))
                              (_%$%g24092473%_ _%$%g24102477%_))))
                      (_%$%g24092473%_ _%$%g24102477%_))))
               (_%$%g24072726%_
                (lambda (_%$%g24102560%_)
                  (if (gx#stx-pair? _%$%g24102560%_)
                      (let ((_%$%e24162563%_ (gx#syntax-e _%$%g24102560%_)))
                        (let ((_%$%hd24172567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e24162563%_)))
                              (_%$%tl24182570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e24162563%_))))
                          (if (gx#stx-pair? _%$%tl24182570%_)
                              (let ((_%$%e24192573%_
                                     (gx#syntax-e _%$%tl24182570%_)))
                                (let ((_%$%hd24202577%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e24192573%_)))
                                      (_%$%tl24212580%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e24192573%_))))
                                  (if (gx#stx-pair? _%$%tl24212580%_)
                                      (let ((_%$%e24222583%_
                                             (gx#syntax-e _%$%tl24212580%_)))
                                        (let ((_%$%hd24232587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e24222583%_)))
                                              (_%$%tl24242590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e24222583%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%hd24232587%_)
                                              (let ((_g17787_
                                                     (gx#syntax-split-splice
                                                      _%$%hd24232587%_
                                                      '0)))
                                                (begin
                                                  (let ((_g17788_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g17787_)
                                                               (##values-length
                                                                _g17787_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g17788_ 2)))
                (error "Context expects 2 values" _g17788_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target24252593%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17787_
                                                            0)))
                                                        (_%$%tl24272596%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17787_
                                                            1))))
                                                    (letrec ((_%$%loop24282599%_
                                                              (lambda (_%$%hd24262603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%arg24322606%_
                               _%$%var24332607%_)
                        (if (gx#stx-pair? _%$%hd24262603%_)
                            (let ((_%$%e24292609%_
                                   (gx#syntax-e _%$%hd24262603%_)))
                              (let ((_%$%lp-hd24302613%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e24292609%_)))
                                    (_%$%lp-tl24312616%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e24292609%_))))
                                (if (gx#stx-pair? _%$%lp-hd24302613%_)
                                    (let ((_%$%e24362619%_
                                           (gx#syntax-e _%$%lp-hd24302613%_)))
                                      (let ((_%$%hd24372623%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e24362619%_)))
                                            (_%$%tl24382626%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e24362619%_))))
                                        (if (gx#stx-pair? _%$%tl24382626%_)
                                            (let ((_%$%e24392629%_
                                                   (gx#syntax-e
                                                    _%$%tl24382626%_)))
                                              (let ((_%$%hd24402633%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e24392629%_)))
                                                    (_%$%tl24412636%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e24392629%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl24412636%_)
                                                    (_%$%loop24282599%_
                                                     _%$%lp-tl24312616%_
                                                     (cons _%$%hd24402633%_
                                                           _%$%arg24322606%_)
                                                     (cons _%$%hd24372623%_
                                                           _%$%var24332607%_))
                                                    (_%$%g24082556%_
                                                     _%$%g24102560%_))))
                                            (_%$%g24082556%_
                                             _%$%g24102560%_))))
                                    (_%$%g24082556%_ _%$%g24102560%_))))
                            (let ((_%$%arg24342639%_
                                   (reverse _%$%arg24322606%_))
                                  (_%$%var24352641%_
                                   (reverse _%$%var24332607%_)))
                              (if (gx#stx-pair/null? _%$%tl24242590%_)
                                  (let ((_g17789_
                                         (gx#syntax-split-splice
                                          _%$%tl24242590%_
                                          '0)))
                                    (begin
                                      (let ((_g17790_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g17789_)
                                                   (##values-length _g17789_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g17790_ 2)))
                                            (error "Context expects 2 values"
                                                   _g17790_)))
                                      (let ((_%$%target24422643%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g17789_ 0)))
                                            (_%$%tl24442646%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g17789_ 1))))
                                        (if (gx#stx-null? _%$%tl24442646%_)
                                            (letrec ((_%$%loop24452649%_
                                                      (lambda (_%$%hd24432653%_
                                                               _%$%body24492656%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd24432653%_)
                                                            (let ((_%$%e24462658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd24432653%_)))
                      (let ((_%$%lp-hd24472662%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e24462658%_)))
                            (_%$%lp-tl24482665%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e24462658%_))))
                        (_%$%loop24452649%_
                         _%$%lp-tl24482665%_
                         (cons _%$%lp-hd24472662%_ _%$%body24492656%_))))
                    (let ((_%$%body24502668%_ (reverse _%$%body24492656%_)))
                      ((lambda (_%$%g24112671%_
                                _%$%g24122673%_
                                _%$%g24132674%_
                                _%$%g24142675%_
                                _%$%g24152676%_)
                         (if (gx#identifier? _%$%g24152676%_)
                             (cons (gx#datum->syntax '#f 'begin-annotation)
                                   (cons (gx#datum->syntax '#f '@loop)
                                         (cons (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'letrec-values)
                                                           (cons (cons (cons (cons _%$%g24152676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'lambda%)
                                                 (cons (foldr (lambda (_%$%g27012708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g27022711%_)
                        (cons _%$%g27012708%_ _%$%g27022711%_))
                      _%$%g24122673%_
                      _%$%g24142675%_)
               (foldr (lambda (_%$%g27032714%_ _%$%g27042717%_)
                        (cons _%$%g27032714%_ _%$%g27042717%_))
                      '()
                      _%$%g24112671%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               '())
                         (cons _%$%g24152676%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (foldr (lambda (_%$%g27052720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g27062723%_)
                      (cons _%$%g27052720%_ _%$%g27062723%_))
                    '()
                    _%$%g24132674%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (_%$%g24082556%_ _%$%g24102560%_)))
                       _%$%body24502668%_
                       _%$%tl24272596%_
                       _%$%arg24342639%_
                       _%$%var24352641%_
                       _%$%hd24202577%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop24452649%_
                                               _%$%target24422643%_
                                               '()))
                                            (_%$%g24082556%_
                                             _%$%g24102560%_)))))
                                  (_%$%g24082556%_ _%$%g24102560%_)))))))
              (_%$%loop24282599%_ _%$%target24252593%_ '() '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g24082556%_
                                               _%$%g24102560%_))))
                                      (_%$%g24082556%_ _%$%g24102560%_))))
                              (_%$%g24082556%_ _%$%g24102560%_))))
                      (_%$%g24082556%_ _%$%g24102560%_)))))
          (_%$%g24072726%_ _%$stx2404%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*|
      (lambda (_%$stx2733%_)
        (let* ((_%$%g27372761%_
                (lambda (_%$%g27382757%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g27382757%_)))
               (_%$%g27362844%_
                (lambda (_%$%g27382765%_)
                  (if (gx#stx-pair? _%$%g27382765%_)
                      (let ((_%$%e27412768%_ (gx#syntax-e _%$%g27382765%_)))
                        (let ((_%$%hd27422772%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e27412768%_)))
                              (_%$%tl27432775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e27412768%_))))
                          (if (gx#stx-pair? _%$%tl27432775%_)
                              (let ((_%$%e27442778%_
                                     (gx#syntax-e _%$%tl27432775%_)))
                                (let ((_%$%hd27452782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e27442778%_)))
                                      (_%$%tl27462785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e27442778%_))))
                                  (if (gx#stx-pair/null? _%$%tl27462785%_)
                                      (let ((_g17791_
                                             (gx#syntax-split-splice
                                              _%$%tl27462785%_
                                              '0)))
                                        (begin
                                          (let ((_g17792_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g17791_)
                                                       (##values-length
                                                        _g17791_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g17792_ 2)))
                                                (error "Context expects 2 values"
                                                       _g17792_)))
                                          (let ((_%$%target27472788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17791_ 0)))
                                                (_%$%tl27492791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17791_ 1))))
                                            (if (gx#stx-null? _%$%tl27492791%_)
                                                (letrec ((_%$%loop27502794%_
                                                          (lambda (_%$%hd27482798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body27542801%_)
                    (if (gx#stx-pair? _%$%hd27482798%_)
                        (let ((_%$%e27512803%_ (gx#syntax-e _%$%hd27482798%_)))
                          (let ((_%$%lp-hd27522807%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e27512803%_)))
                                (_%$%lp-tl27532810%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e27512803%_))))
                            (_%$%loop27502794%_
                             _%$%lp-tl27532810%_
                             (cons _%$%lp-hd27522807%_ _%$%body27542801%_))))
                        (let ((_%$%body27552813%_
                               (reverse _%$%body27542801%_)))
                          ((lambda (_%$%g27392816%_ _%$%g27402818%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'let*-values)
                                         (cons _%$%g27402818%_
                                               (foldr (lambda (_%$%g28352838%_
                                                               _%$%g28362841%_)
                                                        (cons _%$%g28352838%_
                                                              _%$%g28362841%_))
                                                      '()
                                                      _%$%g27392816%_)))))
                           _%$%body27552813%_
                           _%$%hd27452782%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop27502794%_
                                                   _%$%target27472788%_
                                                   '()))
                                                (_%$%g27372761%_
                                                 _%$%g27382765%_)))))
                                      (_%$%g27372761%_ _%$%g27382765%_))))
                              (_%$%g27372761%_ _%$%g27382765%_))))
                      (_%$%g27372761%_ _%$%g27382765%_)))))
          (_%$%g27362844%_ _%$stx2733%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec|
      (lambda (_%$stx2849%_)
        (let* ((_%$%g28532877%_
                (lambda (_%$%g28542873%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g28542873%_)))
               (_%$%g28522960%_
                (lambda (_%$%g28542881%_)
                  (if (gx#stx-pair? _%$%g28542881%_)
                      (let ((_%$%e28572884%_ (gx#syntax-e _%$%g28542881%_)))
                        (let ((_%$%hd28582888%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e28572884%_)))
                              (_%$%tl28592891%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e28572884%_))))
                          (if (gx#stx-pair? _%$%tl28592891%_)
                              (let ((_%$%e28602894%_
                                     (gx#syntax-e _%$%tl28592891%_)))
                                (let ((_%$%hd28612898%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e28602894%_)))
                                      (_%$%tl28622901%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e28602894%_))))
                                  (if (gx#stx-pair/null? _%$%tl28622901%_)
                                      (let ((_g17793_
                                             (gx#syntax-split-splice
                                              _%$%tl28622901%_
                                              '0)))
                                        (begin
                                          (let ((_g17794_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g17793_)
                                                       (##values-length
                                                        _g17793_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g17794_ 2)))
                                                (error "Context expects 2 values"
                                                       _g17794_)))
                                          (let ((_%$%target28632904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17793_ 0)))
                                                (_%$%tl28652907%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17793_ 1))))
                                            (if (gx#stx-null? _%$%tl28652907%_)
                                                (letrec ((_%$%loop28662910%_
                                                          (lambda (_%$%hd28642914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body28702917%_)
                    (if (gx#stx-pair? _%$%hd28642914%_)
                        (let ((_%$%e28672919%_ (gx#syntax-e _%$%hd28642914%_)))
                          (let ((_%$%lp-hd28682923%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e28672919%_)))
                                (_%$%lp-tl28692926%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e28672919%_))))
                            (_%$%loop28662910%_
                             _%$%lp-tl28692926%_
                             (cons _%$%lp-hd28682923%_ _%$%body28702917%_))))
                        (let ((_%$%body28712929%_
                               (reverse _%$%body28702917%_)))
                          ((lambda (_%$%g28552932%_ _%$%g28562934%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec-values)
                                         (cons _%$%g28562934%_
                                               (foldr (lambda (_%$%g29512954%_
                                                               _%$%g29522957%_)
                                                        (cons _%$%g29512954%_
                                                              _%$%g29522957%_))
                                                      '()
                                                      _%$%g28552932%_)))))
                           _%$%body28712929%_
                           _%$%hd28612898%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop28662910%_
                                                   _%$%target28632904%_
                                                   '()))
                                                (_%$%g28532877%_
                                                 _%$%g28542881%_)))))
                                      (_%$%g28532877%_ _%$%g28542881%_))))
                              (_%$%g28532877%_ _%$%g28542881%_))))
                      (_%$%g28532877%_ _%$%g28542881%_)))))
          (_%$%g28522960%_ _%$stx2849%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec*|
      (lambda (_%$stx2965%_)
        (let* ((_%$%g29692993%_
                (lambda (_%$%g29702989%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g29702989%_)))
               (_%$%g29683076%_
                (lambda (_%$%g29702997%_)
                  (if (gx#stx-pair? _%$%g29702997%_)
                      (let ((_%$%e29733000%_ (gx#syntax-e _%$%g29702997%_)))
                        (let ((_%$%hd29743004%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e29733000%_)))
                              (_%$%tl29753007%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e29733000%_))))
                          (if (gx#stx-pair? _%$%tl29753007%_)
                              (let ((_%$%e29763010%_
                                     (gx#syntax-e _%$%tl29753007%_)))
                                (let ((_%$%hd29773014%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e29763010%_)))
                                      (_%$%tl29783017%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e29763010%_))))
                                  (if (gx#stx-pair/null? _%$%tl29783017%_)
                                      (let ((_g17795_
                                             (gx#syntax-split-splice
                                              _%$%tl29783017%_
                                              '0)))
                                        (begin
                                          (let ((_g17796_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g17795_)
                                                       (##values-length
                                                        _g17795_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g17796_ 2)))
                                                (error "Context expects 2 values"
                                                       _g17796_)))
                                          (let ((_%$%target29793020%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17795_ 0)))
                                                (_%$%tl29813023%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17795_ 1))))
                                            (if (gx#stx-null? _%$%tl29813023%_)
                                                (letrec ((_%$%loop29823026%_
                                                          (lambda (_%$%hd29803030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body29863033%_)
                    (if (gx#stx-pair? _%$%hd29803030%_)
                        (let ((_%$%e29833035%_ (gx#syntax-e _%$%hd29803030%_)))
                          (let ((_%$%lp-hd29843039%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e29833035%_)))
                                (_%$%lp-tl29853042%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e29833035%_))))
                            (_%$%loop29823026%_
                             _%$%lp-tl29853042%_
                             (cons _%$%lp-hd29843039%_ _%$%body29863033%_))))
                        (let ((_%$%body29873045%_
                               (reverse _%$%body29863033%_)))
                          ((lambda (_%$%g29713048%_ _%$%g29723050%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec*-values)
                                         (cons _%$%g29723050%_
                                               (foldr (lambda (_%$%g30673070%_
                                                               _%$%g30683073%_)
                                                        (cons _%$%g30673070%_
                                                              _%$%g30683073%_))
                                                      '()
                                                      _%$%g29713048%_)))))
                           _%$%body29873045%_
                           _%$%hd29773014%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop29823026%_
                                                   _%$%target29793020%_
                                                   '()))
                                                (_%$%g29692993%_
                                                 _%$%g29702997%_)))))
                                      (_%$%g29692993%_ _%$%g29702997%_))))
                              (_%$%g29692993%_ _%$%g29702997%_))))
                      (_%$%g29692993%_ _%$%g29702997%_)))))
          (_%$%g29683076%_ _%$stx2965%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#~let|
      (lambda (_%stx3081%_)
        (letrec ((_%let-head?3084%_
                  (lambda (_%x3556%_)
                    (let* ((_%$%g35603571%_
                            (lambda (_%$%g35613567%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g35613567%_)))
                           (_%$%g35593582%_
                            (lambda (_%$%g35613575%_)
                              ((lambda () (gx#identifier? _%x3556%_)))))
                           (_%$%g35583612%_
                            (lambda (_%$%g35613586%_)
                              (if (gx#stx-pair? _%$%g35613586%_)
                                  (let ((_%$%e35633589%_
                                         (gx#syntax-e _%$%g35613586%_)))
                                    (let ((_%$%hd35643593%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e35633589%_)))
                                          (_%$%tl35653596%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e35633589%_))))
                                      (if (gx#identifier? _%$%hd35643593%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-1[1]#_g17797_|
                                               _%$%hd35643593%_)
                                              ((lambda (_%$%g35623599%_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _%$%g35623599%_))
                                               _%$%tl35653596%_)
                                              (_%$%g35593582%_
                                               _%$%g35613586%_))
                                          (_%$%g35593582%_ _%$%g35613586%_))))
                                  (_%$%g35593582%_ _%$%g35613586%_)))))
                      (_%$%g35583612%_ _%x3556%_))))
                 (_%let-head3086%_
                  (lambda (_%x3496%_)
                    (let* ((_%$%g35003511%_
                            (lambda (_%$%g35013507%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g35013507%_)))
                           (_%$%g34993522%_
                            (lambda (_%$%g35013515%_)
                              ((lambda () (list _%x3496%_)))))
                           (_%$%g34983552%_
                            (lambda (_%$%g35013526%_)
                              (if (gx#stx-pair? _%$%g35013526%_)
                                  (let ((_%$%e35033529%_
                                         (gx#syntax-e _%$%g35013526%_)))
                                    (let ((_%$%hd35043533%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e35033529%_)))
                                          (_%$%tl35053536%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e35033529%_))))
                                      (if (gx#identifier? _%$%hd35043533%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-1[1]#_g17798_|
                                               _%$%hd35043533%_)
                                              ((lambda (_%$%g35023539%_)
                                                 _%$%g35023539%_)
                                               _%$%tl35053536%_)
                                              (_%$%g34993522%_
                                               _%$%g35013526%_))
                                          (_%$%g34993522%_ _%$%g35013526%_))))
                                  (_%$%g34993522%_ _%$%g35013526%_)))))
                      (_%$%g34983552%_ _%x3496%_)))))
          (let* ((_%$%g30893155%_
                  (lambda (_%$%g30903151%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g30903151%_)))
                 (_%$%g30883408%_
                  (lambda (_%$%g30903159%_)
                    (if (gx#stx-pair? _%$%g30903159%_)
                        (let ((_%$%e31153162%_ (gx#syntax-e _%$%g30903159%_)))
                          (let ((_%$%hd31163166%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e31153162%_)))
                                (_%$%tl31173169%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e31153162%_))))
                            (if (gx#stx-pair? _%$%tl31173169%_)
                                (let ((_%$%e31183172%_
                                       (gx#syntax-e _%$%tl31173169%_)))
                                  (let ((_%$%hd31193176%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e31183172%_)))
                                        (_%$%tl31203179%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e31183172%_))))
                                    (if (gx#stx-pair? _%$%tl31203179%_)
                                        (let ((_%$%e31213182%_
                                               (gx#syntax-e _%$%tl31203179%_)))
                                          (let ((_%$%hd31223186%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e31213182%_)))
                                                (_%$%tl31233189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e31213182%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%hd31223186%_)
                                                (let ((_g17799_
                                                       (gx#syntax-split-splice
                                                        _%$%hd31223186%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g17800_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g17799_)
                         (##values-length _g17799_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g17800_ 2)))
                  (error "Context expects 2 values" _g17800_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target31243192%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g17799_
                                                              0)))
                                                          (_%$%tl31263195%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g17799_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl31263195%_)
                                                          (letrec ((_%$%loop31273198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd31253202%_
                                     _%$%e31313205%_
                                     _%$%hd31323206%_)
                              (if (gx#stx-pair? _%$%hd31253202%_)
                                  (let ((_%$%e31283208%_
                                         (gx#syntax-e _%$%hd31253202%_)))
                                    (let ((_%$%lp-hd31293212%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e31283208%_)))
                                          (_%$%lp-tl31303215%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e31283208%_))))
                                      (if (gx#stx-pair? _%$%lp-hd31293212%_)
                                          (let ((_%$%e31353218%_
                                                 (gx#syntax-e
                                                  _%$%lp-hd31293212%_)))
                                            (let ((_%$%hd31363222%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e31353218%_)))
                                                  (_%$%tl31373225%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e31353218%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl31373225%_)
                                                  (let ((_%$%e31383228%_
                                                         (gx#syntax-e
                                                          _%$%tl31373225%_)))
                                                    (let ((_%$%hd31393232%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e31383228%_)))
                                                          (_%$%tl31403235%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e31383228%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl31403235%_)
                                                          (_%$%loop31273198%_
                                                           _%$%lp-tl31303215%_
                                                           (cons _%$%hd31393232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%e31313205%_)
                   (cons _%$%hd31363222%_ _%$%hd31323206%_))
                  (_%$%g30893155%_ _%$%g30903159%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g30893155%_
                                                   _%$%g30903159%_))))
                                          (_%$%g30893155%_ _%$%g30903159%_))))
                                  (let ((_%$%e31333238%_
                                         (reverse _%$%e31313205%_))
                                        (_%$%hd31343240%_
                                         (reverse _%$%hd31323206%_)))
                                    (if (gx#stx-pair/null? _%$%tl31233189%_)
                                        (let ((_g17801_
                                               (gx#syntax-split-splice
                                                _%$%tl31233189%_
                                                '0)))
                                          (begin
                                            (let ((_g17802_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g17801_)
                                                         (##values-length
                                                          _g17801_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g17802_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g17802_)))
                                            (let ((_%$%target31413242%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g17801_
                                                      0)))
                                                  (_%$%tl31433245%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g17801_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl31433245%_)
                                                  (letrec ((_%$%loop31443248%_
                                                            (lambda (_%$%hd31423252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%body31483255%_)
                      (if (gx#stx-pair? _%$%hd31423252%_)
                          (let ((_%$%e31453257%_
                                 (gx#syntax-e _%$%hd31423252%_)))
                            (let ((_%$%lp-hd31463261%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e31453257%_)))
                                  (_%$%lp-tl31473264%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e31453257%_))))
                              (_%$%loop31443248%_
                               _%$%lp-tl31473264%_
                               (cons _%$%lp-hd31463261%_ _%$%body31483255%_))))
                          (let ((_%$%body31493267%_
                                 (reverse _%$%body31483255%_)))
                            ((lambda (_%$%g31113270%_
                                      _%$%g31123272%_
                                      _%$%g31133273%_
                                      _%$%g31143274%_)
                               (if (gx#stx-andmap
                                    _%let-head?3084%_
                                    (foldr (lambda (_%$%g33003303%_
                                                    _%$%g33013306%_)
                                             (cons _%$%g33003303%_
                                                   _%$%g33013306%_))
                                           '()
                                           _%$%g31133273%_))
                                   (let* ((_%$%g33093326%_
                                           (lambda (_%$%g33103322%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g33103322%_)))
                                          (_%$%g33083396%_
                                           (lambda (_%$%g33103330%_)
                                             (if (gx#stx-pair/null?
                                                  _%$%g33103330%_)
                                                 (let ((_g17803_
                                                        (gx#syntax-split-splice
                                                         _%$%g33103330%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g17804_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g17803_)
                          (##values-length _g17803_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g17804_ 2)))
                   (error "Context expects 2 values" _g17804_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target33123333%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g17803_
                                                               0)))
                                                           (_%$%tl33143336%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g17803_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%$%tl33143336%_)
                                                           (letrec ((_%$%loop33153339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd33133343%_ _%$%hd-bind33193346%_)
                               (if (gx#stx-pair? _%$%hd33133343%_)
                                   (let ((_%$%e33163348%_
                                          (gx#syntax-e _%$%hd33133343%_)))
                                     (let ((_%$%lp-hd33173352%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e33163348%_)))
                                           (_%$%lp-tl33183355%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e33163348%_))))
                                       (_%$%loop33153339%_
                                        _%$%lp-tl33183355%_
                                        (cons _%$%lp-hd33173352%_
                                              _%$%hd-bind33193346%_))))
                                   (let ((_%$%hd-bind33203358%_
                                          (reverse _%$%hd-bind33193346%_)))
                                     ((lambda (_%$%g33113361%_)
                                        (cons _%$%g31143274%_
                                              (cons (begin
                                                      (gx#syntax-check-splice-targets
                                                       _%$%g31123272%_
                                                       _%$%g33113361%_)
                                                      (foldr (lambda (_%$%g33763382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g33773385%_
                              _%$%g33783387%_)
                       (cons (cons _%$%g33773385%_ (cons _%$%g33763382%_ '()))
                             _%$%g33783387%_))
                     '()
                     _%$%g31123272%_
                     _%$%g33113361%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (foldr (lambda (_%$%g33793390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g33803393%_)
                     (cons _%$%g33793390%_ _%$%g33803393%_))
                   '()
                   _%$%g31113270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _%$%hd-bind33203358%_))))))
                     (_%$%loop33153339%_ _%$%target33123333%_ '()))
                   (_%$%g33093326%_ _%$%g33103330%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g33093326%_
                                                  _%$%g33103330%_)))))
                                     (_%$%g33083396%_
                                      (gx#stx-map
                                       _%let-head3086%_
                                       (foldr (lambda (_%$%g33993402%_
                                                       _%$%g34003405%_)
                                                (cons _%$%g33993402%_
                                                      _%$%g34003405%_))
                                              '()
                                              _%$%g31133273%_))))
                                   (_%$%g30893155%_ _%$%g30903159%_)))
                             _%$%body31493267%_
                             _%$%e31333238%_
                             _%$%hd31343240%_
                             _%$%hd31193176%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop31443248%_
                                                     _%$%target31413242%_
                                                     '()))
                                                  (_%$%g30893155%_
                                                   _%$%g30903159%_)))))
                                        (_%$%g30893155%_ _%$%g30903159%_)))))))
                    (_%$%loop31273198%_ _%$%target31243192%_ '() '()))
                  (_%$%g30893155%_ _%$%g30903159%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g30893155%_
                                                 _%$%g30903159%_))))
                                        (_%$%g30893155%_ _%$%g30903159%_))))
                                (_%$%g30893155%_ _%$%g30903159%_))))
                        (_%$%g30893155%_ _%$%g30903159%_))))
                 (_%$%g30873492%_
                  (lambda (_%$%g30903412%_)
                    (if (gx#stx-pair? _%$%g30903412%_)
                        (let ((_%$%e30963415%_ (gx#syntax-e _%$%g30903412%_)))
                          (let ((_%$%hd30973419%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e30963415%_)))
                                (_%$%tl30983422%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e30963415%_))))
                            (if (gx#stx-pair? _%$%tl30983422%_)
                                (let ((_%$%e30993425%_
                                       (gx#syntax-e _%$%tl30983422%_)))
                                  (let ((_%$%hd31003429%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e30993425%_)))
                                        (_%$%tl31013432%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e30993425%_))))
                                    (if (gx#stx-pair? _%$%tl31013432%_)
                                        (let ((_%$%e31023435%_
                                               (gx#syntax-e _%$%tl31013432%_)))
                                          (let ((_%$%hd31033439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e31023435%_)))
                                                (_%$%tl31043442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e31023435%_))))
                                            (if (gx#stx-pair? _%$%hd31033439%_)
                                                (let ((_%$%e31053445%_
                                                       (gx#syntax-e
                                                        _%$%hd31033439%_)))
                                                  (let ((_%$%hd31063449%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e31053445%_)))
                                                        (_%$%tl31073452%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e31053445%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl31073452%_)
                                                        (let ((_%$%e31083455%_
                                                               (gx#syntax-e
                                                                _%$%tl31073452%_)))
                                                          (let ((_%$%hd31093459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%$%e31083455%_)))
                        (_%$%tl31103462%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e31083455%_))))
                    (if (gx#stx-null? _%$%tl31103462%_)
                        ((lambda (_%$%g30913465%_
                                  _%$%g30923467%_
                                  _%$%g30933468%_
                                  _%$%g30943469%_
                                  _%$%g30953470%_)
                           (if (_%let-head?3084%_ _%$%g30933468%_)
                               (cons _%$%g30953470%_
                                     (cons _%$%g30943469%_
                                           (cons (cons (cons _%$%g30933468%_
                                                             (cons _%$%g30923467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g30913465%_)))
                               (_%$%g30883408%_ _%$%g30903412%_)))
                         _%$%tl31043442%_
                         _%$%hd31093459%_
                         _%$%hd31063449%_
                         _%$%hd31003429%_
                         _%$%hd30973419%_)
                        (_%$%g30883408%_ _%$%g30903412%_))))
                (_%$%g30883408%_ _%$%g30903412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g30883408%_
                                                 _%$%g30903412%_))))
                                        (_%$%g30883408%_ _%$%g30903412%_))))
                                (_%$%g30883408%_ _%$%g30903412%_))))
                        (_%$%g30883408%_ _%$%g30903412%_)))))
            (_%$%g30873492%_ _%stx3081%_)))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#and|
      (lambda (_%$stx3619%_)
        (let* ((_%$%g36253651%_
                (lambda (_%$%g36263647%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g36263647%_)))
               (_%$%g36243696%_
                (lambda (_%$%g36263655%_)
                  (if (gx#stx-pair? _%$%g36263655%_)
                      (let ((_%$%e36403658%_ (gx#syntax-e _%$%g36263655%_)))
                        (let ((_%$%hd36413662%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e36403658%_)))
                              (_%$%tl36423665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e36403658%_))))
                          (if (gx#stx-pair? _%$%tl36423665%_)
                              (let ((_%$%e36433668%_
                                     (gx#syntax-e _%$%tl36423665%_)))
                                (let ((_%$%hd36443672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e36433668%_)))
                                      (_%$%tl36453675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e36433668%_))))
                                  ((lambda (_%$%g36373678%_
                                            _%$%g36383680%_
                                            _%$%g36393681%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%$%g36383680%_
                                                 (cons (cons _%$%g36393681%_
                                                             _%$%g36373678%_)
                                                       (cons '#f '())))))
                                   _%$%tl36453675%_
                                   _%$%hd36443672%_
                                   _%$%hd36413662%_)))
                              (_%$%g36253651%_ _%$%g36263655%_))))
                      (_%$%g36253651%_ _%$%g36263655%_))))
               (_%$%g36233736%_
                (lambda (_%$%g36263700%_)
                  (if (gx#stx-pair? _%$%g36263700%_)
                      (let ((_%$%e36313703%_ (gx#syntax-e _%$%g36263700%_)))
                        (let ((_%$%hd36323707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e36313703%_)))
                              (_%$%tl36333710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e36313703%_))))
                          (if (gx#stx-pair? _%$%tl36333710%_)
                              (let ((_%$%e36343713%_
                                     (gx#syntax-e _%$%tl36333710%_)))
                                (let ((_%$%hd36353717%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e36343713%_)))
                                      (_%$%tl36363720%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e36343713%_))))
                                  (if (gx#stx-null? _%$%tl36363720%_)
                                      ((lambda (_%$%g36303723%_)
                                         _%$%g36303723%_)
                                       _%$%hd36353717%_)
                                      (_%$%g36243696%_ _%$%g36263700%_))))
                              (_%$%g36243696%_ _%$%g36263700%_))))
                      (_%$%g36243696%_ _%$%g36263700%_))))
               (_%$%g36223757%_
                (lambda (_%$%g36263740%_)
                  (if (gx#stx-pair? _%$%g36263740%_)
                      (let ((_%$%e36273743%_ (gx#syntax-e _%$%g36263740%_)))
                        (let ((_%$%hd36283747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e36273743%_)))
                              (_%$%tl36293750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e36273743%_))))
                          (if (gx#stx-null? _%$%tl36293750%_)
                              ((lambda () '#t))
                              (_%$%g36233736%_ _%$%g36263740%_))))
                      (_%$%g36233736%_ _%$%g36263740%_)))))
          (_%$%g36223757%_ _%$stx3619%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#or|
      (lambda (_%$stx3761%_)
        (let* ((_%$%g37673793%_
                (lambda (_%$%g37683789%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g37683789%_)))
               (_%$%g37663838%_
                (lambda (_%$%g37683797%_)
                  (if (gx#stx-pair? _%$%g37683797%_)
                      (let ((_%$%e37823800%_ (gx#syntax-e _%$%g37683797%_)))
                        (let ((_%$%hd37833804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e37823800%_)))
                              (_%$%tl37843807%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e37823800%_))))
                          (if (gx#stx-pair? _%$%tl37843807%_)
                              (let ((_%$%e37853810%_
                                     (gx#syntax-e _%$%tl37843807%_)))
                                (let ((_%$%hd37863814%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e37853810%_)))
                                      (_%$%tl37873817%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e37853810%_))))
                                  ((lambda (_%$%g37793820%_
                                            _%$%g37803822%_
                                            _%$%g37813823%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons _%$%g37803822%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           (cons (gx#datum->syntax '#f '$e)
                                 (cons (cons _%$%g37813823%_ _%$%g37793820%_)
                                       '()))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%tl37873817%_
                                   _%$%hd37863814%_
                                   _%$%hd37833804%_)))
                              (_%$%g37673793%_ _%$%g37683797%_))))
                      (_%$%g37673793%_ _%$%g37683797%_))))
               (_%$%g37653878%_
                (lambda (_%$%g37683842%_)
                  (if (gx#stx-pair? _%$%g37683842%_)
                      (let ((_%$%e37733845%_ (gx#syntax-e _%$%g37683842%_)))
                        (let ((_%$%hd37743849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e37733845%_)))
                              (_%$%tl37753852%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e37733845%_))))
                          (if (gx#stx-pair? _%$%tl37753852%_)
                              (let ((_%$%e37763855%_
                                     (gx#syntax-e _%$%tl37753852%_)))
                                (let ((_%$%hd37773859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e37763855%_)))
                                      (_%$%tl37783862%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e37763855%_))))
                                  (if (gx#stx-null? _%$%tl37783862%_)
                                      ((lambda (_%$%g37723865%_)
                                         _%$%g37723865%_)
                                       _%$%hd37773859%_)
                                      (_%$%g37663838%_ _%$%g37683842%_))))
                              (_%$%g37663838%_ _%$%g37683842%_))))
                      (_%$%g37663838%_ _%$%g37683842%_))))
               (_%$%g37643899%_
                (lambda (_%$%g37683882%_)
                  (if (gx#stx-pair? _%$%g37683882%_)
                      (let ((_%$%e37693885%_ (gx#syntax-e _%$%g37683882%_)))
                        (let ((_%$%hd37703889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e37693885%_)))
                              (_%$%tl37713892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e37693885%_))))
                          (if (gx#stx-null? _%$%tl37713892%_)
                              ((lambda () '#f))
                              (_%$%g37653878%_ _%$%g37683882%_))))
                      (_%$%g37653878%_ _%$%g37683882%_)))))
          (_%$%g37643899%_ _%$stx3761%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#cond|
      (lambda (_%$stx3903%_)
        (let* ((_%$%g39124003%_
                (lambda (_%$%g39133999%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g39133999%_)))
               (_%$%g39114102%_
                (lambda (_%$%g39134007%_)
                  (if (gx#stx-pair? _%$%g39134007%_)
                      (let ((_%$%e39804010%_ (gx#syntax-e _%$%g39134007%_)))
                        (let ((_%$%hd39814014%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e39804010%_)))
                              (_%$%tl39824017%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e39804010%_))))
                          (if (gx#stx-pair? _%$%tl39824017%_)
                              (let ((_%$%e39834020%_
                                     (gx#syntax-e _%$%tl39824017%_)))
                                (let ((_%$%hd39844024%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e39834020%_)))
                                      (_%$%tl39854027%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e39834020%_))))
                                  (if (gx#stx-pair? _%$%hd39844024%_)
                                      (let ((_%$%e39864030%_
                                             (gx#syntax-e _%$%hd39844024%_)))
                                        (let ((_%$%hd39874034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e39864030%_)))
                                              (_%$%tl39884037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e39864030%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl39884037%_)
                                              (let ((_g17805_
                                                     (gx#syntax-split-splice
                                                      _%$%tl39884037%_
                                                      '0)))
                                                (begin
                                                  (let ((_g17806_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g17805_)
                                                               (##values-length
                                                                _g17805_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g17806_ 2)))
                (error "Context expects 2 values" _g17806_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target39894040%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17805_
                                                            0)))
                                                        (_%$%tl39914043%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17805_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl39914043%_)
                                                        (letrec ((_%$%loop39924046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd39904050%_ _%$%body39964053%_)
                            (if (gx#stx-pair? _%$%hd39904050%_)
                                (let ((_%$%e39934055%_
                                       (gx#syntax-e _%$%hd39904050%_)))
                                  (let ((_%$%lp-hd39944059%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e39934055%_)))
                                        (_%$%lp-tl39954062%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e39934055%_))))
                                    (_%$%loop39924046%_
                                     _%$%lp-tl39954062%_
                                     (cons _%$%lp-hd39944059%_
                                           _%$%body39964053%_))))
                                (let ((_%$%body39974065%_
                                       (reverse _%$%body39964053%_)))
                                  ((lambda (_%$%g39764068%_
                                            _%$%g39774070%_
                                            _%$%g39784071%_
                                            _%$%g39794072%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%$%g39784071%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%$%g40934096%_ _%$%g40944099%_)
                                    (cons _%$%g40934096%_ _%$%g40944099%_))
                                  '()
                                  _%$%g39774070%_)))
               (cons (cons _%$%g39794072%_ _%$%g39764068%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%tl39854027%_
                                   _%$%body39974065%_
                                   _%$%hd39874034%_
                                   _%$%hd39814014%_))))))
                  (_%$%loop39924046%_ _%$%target39894040%_ '()))
                (_%$%g39124003%_ _%$%g39134007%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g39124003%_
                                               _%$%g39134007%_))))
                                      (_%$%g39124003%_ _%$%g39134007%_))))
                              (_%$%g39124003%_ _%$%g39134007%_))))
                      (_%$%g39124003%_ _%$%g39134007%_))))
               (_%$%g39104184%_
                (lambda (_%$%g39134106%_)
                  (if (gx#stx-pair? _%$%g39134106%_)
                      (let ((_%$%e39614109%_ (gx#syntax-e _%$%g39134106%_)))
                        (let ((_%$%hd39624113%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e39614109%_)))
                              (_%$%tl39634116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e39614109%_))))
                          (if (gx#stx-pair? _%$%tl39634116%_)
                              (let ((_%$%e39644119%_
                                     (gx#syntax-e _%$%tl39634116%_)))
                                (let ((_%$%hd39654123%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e39644119%_)))
                                      (_%$%tl39664126%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e39644119%_))))
                                  (if (gx#stx-pair? _%$%hd39654123%_)
                                      (let ((_%$%e39674129%_
                                             (gx#syntax-e _%$%hd39654123%_)))
                                        (let ((_%$%hd39684133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e39674129%_)))
                                              (_%$%tl39694136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e39674129%_))))
                                          (if (gx#stx-pair? _%$%tl39694136%_)
                                              (let ((_%$%e39704139%_
                                                     (gx#syntax-e
                                                      _%$%tl39694136%_)))
                                                (let ((_%$%hd39714143%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e39704139%_)))
                                                      (_%$%tl39724146%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e39704139%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd39714143%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/sugar~Sugar-1[1]#_g17807_|
                                                           _%$%hd39714143%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl39724146%_)
                                                              (let ((_%$%e39734149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl39724146%_)))
                        (let ((_%$%hd39744153%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e39734149%_)))
                              (_%$%tl39754156%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e39734149%_))))
                          (if (gx#stx-null? _%$%tl39754156%_)
                              ((lambda (_%$%g39574159%_
                                        _%$%g39584161%_
                                        _%$%g39594162%_
                                        _%$%g39604163%_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$e)
                                                   (cons _%$%g39594162%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$e)
                                                               (cons (cons _%$%g39584161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (gx#datum->syntax '#f '$e) '()))
                             (cons (cons _%$%g39604163%_ _%$%g39574159%_)
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                               _%$%tl39664126%_
                               _%$%hd39744153%_
                               _%$%hd39684133%_
                               _%$%hd39624113%_)
                              (_%$%g39114102%_ _%$%g39134106%_))))
                      (_%$%g39114102%_ _%$%g39134106%_))
                  (_%$%g39114102%_ _%$%g39134106%_))
              (_%$%g39114102%_ _%$%g39134106%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g39114102%_
                                               _%$%g39134106%_))))
                                      (_%$%g39114102%_ _%$%g39134106%_))))
                              (_%$%g39114102%_ _%$%g39134106%_))))
                      (_%$%g39114102%_ _%$%g39134106%_))))
               (_%$%g39094240%_
                (lambda (_%$%g39134188%_)
                  (if (gx#stx-pair? _%$%g39134188%_)
                      (let ((_%$%e39484191%_ (gx#syntax-e _%$%g39134188%_)))
                        (let ((_%$%hd39494195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e39484191%_)))
                              (_%$%tl39504198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e39484191%_))))
                          (if (gx#stx-pair? _%$%tl39504198%_)
                              (let ((_%$%e39514201%_
                                     (gx#syntax-e _%$%tl39504198%_)))
                                (let ((_%$%hd39524205%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e39514201%_)))
                                      (_%$%tl39534208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e39514201%_))))
                                  (if (gx#stx-pair? _%$%hd39524205%_)
                                      (let ((_%$%e39544211%_
                                             (gx#syntax-e _%$%hd39524205%_)))
                                        (let ((_%$%hd39554215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e39544211%_)))
                                              (_%$%tl39564218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e39544211%_))))
                                          (if (gx#stx-null? _%$%tl39564218%_)
                                              ((lambda (_%$%g39454221%_
                                                        _%$%g39464223%_
                                                        _%$%g39474224%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           (cons _%$%g39464223%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (gx#datum->syntax '#f '$e)
                                       (cons (gx#datum->syntax '#f '$e)
                                             (cons (cons _%$%g39474224%_
                                                         _%$%g39454221%_)
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%tl39534208%_
                                               _%$%hd39554215%_
                                               _%$%hd39494195%_)
                                              (_%$%g39104184%_
                                               _%$%g39134188%_))))
                                      (_%$%g39104184%_ _%$%g39134188%_))))
                              (_%$%g39104184%_ _%$%g39134188%_))))
                      (_%$%g39104184%_ _%$%g39134188%_))))
               (_%$%g39084281%_
                (lambda (_%$%g39134244%_)
                  (if (gx#stx-pair? _%$%g39134244%_)
                      (let ((_%$%e39364247%_ (gx#syntax-e _%$%g39134244%_)))
                        (let ((_%$%hd39374251%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e39364247%_)))
                              (_%$%tl39384254%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e39364247%_))))
                          (if (gx#stx-pair? _%$%tl39384254%_)
                              (let ((_%$%e39394257%_
                                     (gx#syntax-e _%$%tl39384254%_)))
                                (let ((_%$%hd39404261%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e39394257%_)))
                                      (_%$%tl39414264%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e39394257%_))))
                                  (if (gx#stx-pair? _%$%hd39404261%_)
                                      (let ((_%$%e39424267%_
                                             (gx#syntax-e _%$%hd39404261%_)))
                                        (let ((_%$%hd39434271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e39424267%_)))
                                              (_%$%tl39444274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e39424267%_))))
                                          (if (gx#identifier? _%$%hd39434271%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-1[1]#_g17808_|
                                                   _%$%hd39434271%_)
                                                  ((lambda ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'syntax-error)
                                                           (cons '"bad syntax; misplaced else"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g39094240%_
                                                   _%$%g39134244%_))
                                              (_%$%g39094240%_
                                               _%$%g39134244%_))))
                                      (_%$%g39094240%_ _%$%g39134244%_))))
                              (_%$%g39094240%_ _%$%g39134244%_))))
                      (_%$%g39094240%_ _%$%g39134244%_))))
               (_%$%g39074374%_
                (lambda (_%$%g39134285%_)
                  (if (gx#stx-pair? _%$%g39134285%_)
                      (let ((_%$%e39184288%_ (gx#syntax-e _%$%g39134285%_)))
                        (let ((_%$%hd39194292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e39184288%_)))
                              (_%$%tl39204295%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e39184288%_))))
                          (if (gx#stx-pair? _%$%tl39204295%_)
                              (let ((_%$%e39214298%_
                                     (gx#syntax-e _%$%tl39204295%_)))
                                (let ((_%$%hd39224302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e39214298%_)))
                                      (_%$%tl39234305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e39214298%_))))
                                  (if (gx#stx-pair? _%$%hd39224302%_)
                                      (let ((_%$%e39244308%_
                                             (gx#syntax-e _%$%hd39224302%_)))
                                        (let ((_%$%hd39254312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e39244308%_)))
                                              (_%$%tl39264315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e39244308%_))))
                                          (if (gx#identifier? _%$%hd39254312%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-1[1]#_g17809_|
                                                   _%$%hd39254312%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl39264315%_)
                                                      (let ((_g17810_
                                                             (gx#syntax-split-splice
                                                              _%$%tl39264315%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g17811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g17810_)
                               (##values-length _g17810_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g17811_ 2)))
                        (error "Context expects 2 values" _g17811_)))
                  (let ((_%$%target39274318%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g17810_ 0)))
                        (_%$%tl39294321%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g17810_ 1))))
                    (if (gx#stx-null? _%$%tl39294321%_)
                        (letrec ((_%$%loop39304324%_
                                  (lambda (_%$%hd39284328%_ _%$%body39344331%_)
                                    (if (gx#stx-pair? _%$%hd39284328%_)
                                        (let ((_%$%e39314333%_
                                               (gx#syntax-e _%$%hd39284328%_)))
                                          (let ((_%$%lp-hd39324337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e39314333%_)))
                                                (_%$%lp-tl39334340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e39314333%_))))
                                            (_%$%loop39304324%_
                                             _%$%lp-tl39334340%_
                                             (cons _%$%lp-hd39324337%_
                                                   _%$%body39344331%_))))
                                        (let ((_%$%body39354343%_
                                               (reverse _%$%body39344331%_)))
                                          (if (gx#stx-null? _%$%tl39234305%_)
                                              ((lambda (_%$%g39174346%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons '()
                                                             (foldr (lambda (_%$%g43654368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g43664371%_)
                              (cons _%$%g43654368%_ _%$%g43664371%_))
                            '()
                            _%$%g39174346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%body39354343%_)
                                              (_%$%g39084281%_
                                               _%$%g39134285%_)))))))
                          (_%$%loop39304324%_ _%$%target39274318%_ '()))
                        (_%$%g39084281%_ _%$%g39134285%_)))))
              (_%$%g39084281%_ _%$%g39134285%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g39084281%_
                                                   _%$%g39134285%_))
                                              (_%$%g39084281%_
                                               _%$%g39134285%_))))
                                      (_%$%g39084281%_ _%$%g39134285%_))))
                              (_%$%g39084281%_ _%$%g39134285%_))))
                      (_%$%g39084281%_ _%$%g39134285%_))))
               (_%$%g39064395%_
                (lambda (_%$%g39134378%_)
                  (if (gx#stx-pair? _%$%g39134378%_)
                      (let ((_%$%e39144381%_ (gx#syntax-e _%$%g39134378%_)))
                        (let ((_%$%hd39154385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e39144381%_)))
                              (_%$%tl39164388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e39144381%_))))
                          (if (gx#stx-null? _%$%tl39164388%_)
                              ((lambda () '#!void))
                              (_%$%g39074374%_ _%$%g39134378%_))))
                      (_%$%g39074374%_ _%$%g39134378%_)))))
          (_%$%g39064395%_ _%$stx3903%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#when|
      (lambda (_%$stx4401%_)
        (let* ((_%$%g44054433%_
                (lambda (_%$%g44064429%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g44064429%_)))
               (_%$%g44044530%_
                (lambda (_%$%g44064437%_)
                  (if (gx#stx-pair? _%$%g44064437%_)
                      (let ((_%$%e44104440%_ (gx#syntax-e _%$%g44064437%_)))
                        (let ((_%$%hd44114444%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e44104440%_)))
                              (_%$%tl44124447%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e44104440%_))))
                          (if (gx#stx-pair? _%$%tl44124447%_)
                              (let ((_%$%e44134450%_
                                     (gx#syntax-e _%$%tl44124447%_)))
                                (let ((_%$%hd44144454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e44134450%_)))
                                      (_%$%tl44154457%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e44134450%_))))
                                  (if (gx#stx-pair? _%$%tl44154457%_)
                                      (let ((_%$%e44164460%_
                                             (gx#syntax-e _%$%tl44154457%_)))
                                        (let ((_%$%hd44174464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e44164460%_)))
                                              (_%$%tl44184467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e44164460%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl44184467%_)
                                              (let ((_g17812_
                                                     (gx#syntax-split-splice
                                                      _%$%tl44184467%_
                                                      '0)))
                                                (begin
                                                  (let ((_g17813_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g17812_)
                                                               (##values-length
                                                                _g17812_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g17813_ 2)))
                (error "Context expects 2 values" _g17813_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target44194470%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17812_
                                                            0)))
                                                        (_%$%tl44214473%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17812_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl44214473%_)
                                                        (letrec ((_%$%loop44224476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd44204480%_ _%$%rest44264483%_)
                            (if (gx#stx-pair? _%$%hd44204480%_)
                                (let ((_%$%e44234485%_
                                       (gx#syntax-e _%$%hd44204480%_)))
                                  (let ((_%$%lp-hd44244489%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e44234485%_)))
                                        (_%$%lp-tl44254492%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e44234485%_))))
                                    (_%$%loop44224476%_
                                     _%$%lp-tl44254492%_
                                     (cons _%$%lp-hd44244489%_
                                           _%$%rest44264483%_))))
                                (let ((_%$%rest44274495%_
                                       (reverse _%$%rest44264483%_)))
                                  ((lambda (_%$%g44074498%_
                                            _%$%g44084500%_
                                            _%$%g44094501%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%$%g44094501%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (cons _%$%g44084500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%$%g45214524%_ _%$%g45224527%_)
                                    (cons _%$%g45214524%_ _%$%g45224527%_))
                                  '()
                                  _%$%g44074498%_)))
               (cons '#!void '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%rest44274495%_
                                   _%$%hd44174464%_
                                   _%$%hd44144454%_))))))
                  (_%$%loop44224476%_ _%$%target44194470%_ '()))
                (_%$%g44054433%_ _%$%g44064437%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g44054433%_
                                               _%$%g44064437%_))))
                                      (_%$%g44054433%_ _%$%g44064437%_))))
                              (_%$%g44054433%_ _%$%g44064437%_))))
                      (_%$%g44054433%_ _%$%g44064437%_)))))
          (_%$%g44044530%_ _%$stx4401%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#unless|
      (lambda (_%$stx4535%_)
        (let* ((_%$%g45394567%_
                (lambda (_%$%g45404563%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g45404563%_)))
               (_%$%g45384664%_
                (lambda (_%$%g45404571%_)
                  (if (gx#stx-pair? _%$%g45404571%_)
                      (let ((_%$%e45444574%_ (gx#syntax-e _%$%g45404571%_)))
                        (let ((_%$%hd45454578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e45444574%_)))
                              (_%$%tl45464581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e45444574%_))))
                          (if (gx#stx-pair? _%$%tl45464581%_)
                              (let ((_%$%e45474584%_
                                     (gx#syntax-e _%$%tl45464581%_)))
                                (let ((_%$%hd45484588%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e45474584%_)))
                                      (_%$%tl45494591%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e45474584%_))))
                                  (if (gx#stx-pair? _%$%tl45494591%_)
                                      (let ((_%$%e45504594%_
                                             (gx#syntax-e _%$%tl45494591%_)))
                                        (let ((_%$%hd45514598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e45504594%_)))
                                              (_%$%tl45524601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e45504594%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl45524601%_)
                                              (let ((_g17814_
                                                     (gx#syntax-split-splice
                                                      _%$%tl45524601%_
                                                      '0)))
                                                (begin
                                                  (let ((_g17815_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g17814_)
                                                               (##values-length
                                                                _g17814_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g17815_ 2)))
                (error "Context expects 2 values" _g17815_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target45534604%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17814_
                                                            0)))
                                                        (_%$%tl45554607%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17814_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl45554607%_)
                                                        (letrec ((_%$%loop45564610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd45544614%_ _%$%rest45604617%_)
                            (if (gx#stx-pair? _%$%hd45544614%_)
                                (let ((_%$%e45574619%_
                                       (gx#syntax-e _%$%hd45544614%_)))
                                  (let ((_%$%lp-hd45584623%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e45574619%_)))
                                        (_%$%lp-tl45594626%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e45574619%_))))
                                    (_%$%loop45564610%_
                                     _%$%lp-tl45594626%_
                                     (cons _%$%lp-hd45584623%_
                                           _%$%rest45604617%_))))
                                (let ((_%$%rest45614629%_
                                       (reverse _%$%rest45604617%_)))
                                  ((lambda (_%$%g45414632%_
                                            _%$%g45424634%_
                                            _%$%g45434635%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%$%g45434635%_
                                                 (cons '#!void
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           (cons _%$%g45424634%_
                                 (foldr (lambda (_%$%g46554658%_
                                                 _%$%g46564661%_)
                                          (cons _%$%g46554658%_
                                                _%$%g46564661%_))
                                        '()
                                        _%$%g45414632%_)))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%rest45614629%_
                                   _%$%hd45514598%_
                                   _%$%hd45484588%_))))))
                  (_%$%loop45564610%_ _%$%target45534604%_ '()))
                (_%$%g45394567%_ _%$%g45404571%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g45394567%_
                                               _%$%g45404571%_))))
                                      (_%$%g45394567%_ _%$%g45404571%_))))
                              (_%$%g45394567%_ _%$%g45404571%_))))
                      (_%$%g45394567%_ _%$%g45404571%_)))))
          (_%$%g45384664%_ _%$stx4535%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#syntax-error|
      (lambda (_%stx4669%_)
        (let* ((_%$%g46724696%_
                (lambda (_%$%g46734692%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g46734692%_)))
               (_%$%g46714779%_
                (lambda (_%$%g46734700%_)
                  (if (gx#stx-pair? _%$%g46734700%_)
                      (let ((_%$%e46764703%_ (gx#syntax-e _%$%g46734700%_)))
                        (let ((_%$%hd46774707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e46764703%_)))
                              (_%$%tl46784710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e46764703%_))))
                          (if (gx#stx-pair? _%$%tl46784710%_)
                              (let ((_%$%e46794713%_
                                     (gx#syntax-e _%$%tl46784710%_)))
                                (let ((_%$%hd46804717%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e46794713%_)))
                                      (_%$%tl46814720%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e46794713%_))))
                                  (if (gx#stx-pair/null? _%$%tl46814720%_)
                                      (let ((_g17816_
                                             (gx#syntax-split-splice
                                              _%$%tl46814720%_
                                              '0)))
                                        (begin
                                          (let ((_g17817_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g17816_)
                                                       (##values-length
                                                        _g17816_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g17817_ 2)))
                                                (error "Context expects 2 values"
                                                       _g17817_)))
                                          (let ((_%$%target46824723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17816_ 0)))
                                                (_%$%tl46844726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17816_ 1))))
                                            (if (gx#stx-null? _%$%tl46844726%_)
                                                (letrec ((_%$%loop46854729%_
                                                          (lambda (_%$%hd46834733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%detail46894736%_)
                    (if (gx#stx-pair? _%$%hd46834733%_)
                        (let ((_%$%e46864738%_ (gx#syntax-e _%$%hd46834733%_)))
                          (let ((_%$%lp-hd46874742%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e46864738%_)))
                                (_%$%lp-tl46884745%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e46864738%_))))
                            (_%$%loop46854729%_
                             _%$%lp-tl46884745%_
                             (cons _%$%lp-hd46874742%_ _%$%detail46894736%_))))
                        (let ((_%$%detail46904748%_
                               (reverse _%$%detail46894736%_)))
                          ((lambda (_%$%g46744751%_ _%$%g46754753%_)
                             (if (gx#stx-string? _%$%g46754753%_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _%$%g46754753%_)
                                        _%stx4669%_
                                        (gx#syntax->list
                                         (foldr (lambda (_%$%g47704773%_
                                                         _%$%g47714776%_)
                                                  (cons _%$%g47704773%_
                                                        _%$%g47714776%_))
                                                '()
                                                _%$%g46744751%_)))
                                 (_%$%g46724696%_ _%$%g46734700%_)))
                           _%$%detail46904748%_
                           _%$%hd46804717%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop46854729%_
                                                   _%$%target46824723%_
                                                   '()))
                                                (_%$%g46724696%_
                                                 _%$%g46734700%_)))))
                                      (_%$%g46724696%_ _%$%g46734700%_))))
                              (_%$%g46724696%_ _%$%g46734700%_))))
                      (_%$%g46724696%_ _%$%g46734700%_)))))
          (_%$%g46714779%_ _%stx4669%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#compilation-target?|
      (lambda (_%$stx4784%_)
        (let* ((_%$%g47884802%_
                (lambda (_%$%g47894798%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g47894798%_)))
               (_%$%g47874843%_
                (lambda (_%$%g47894806%_)
                  (if (gx#stx-pair? _%$%g47894806%_)
                      (let ((_%$%e47914809%_ (gx#syntax-e _%$%g47894806%_)))
                        (let ((_%$%hd47924813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e47914809%_)))
                              (_%$%tl47934816%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e47914809%_))))
                          (if (gx#stx-pair? _%$%tl47934816%_)
                              (let ((_%$%e47944819%_
                                     (gx#syntax-e _%$%tl47934816%_)))
                                (let ((_%$%hd47954823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e47944819%_)))
                                      (_%$%tl47964826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e47944819%_))))
                                  (if (gx#stx-null? _%$%tl47964826%_)
                                      ((lambda (_%$%g47904829%_)
                                         (cons (gx#datum->syntax '#f 'eq?)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'current-compilation-target)
                                                           '())
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%$%g47904829%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%$%hd47954823%_)
                                      (_%$%g47884802%_ _%$%g47894806%_))))
                              (_%$%g47884802%_ _%$%g47894806%_))))
                      (_%$%g47884802%_ _%$%g47894806%_)))))
          (_%$%g47874843%_ _%$stx4784%_))))))
