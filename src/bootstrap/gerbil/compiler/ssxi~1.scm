(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g255887_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g255894_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g255896_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g255898_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g255900_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g255902_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g255914_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g255916_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g255918_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g255920_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g255922_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx249345%_)
        (let* ((_%g249349249367%_
                (lambda (_%g249350249363%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g249350249363%_))))
               (_%g249348249422%_
                (lambda (_%g249350249371%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g249350249371%_))
                      (let ((_%e249353249374%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g249350249371%_))))
                        (let ((_%hd249354249378%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249353249374%_)))
                              (_%tl249355249381%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249353249374%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl249355249381%_))
                              (let ((_%e249356249384%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl249355249381%_))))
                                (let ((_%hd249357249388%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e249356249384%_)))
                                      (_%tl249358249391%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e249356249384%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249358249391%_))
                                      (let ((_%e249359249394%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl249358249391%_))))
                                        (let ((_%hd249360249398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249359249394%_)))
                                              (_%tl249361249401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249359249394%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249361249401%_))
                                              ((lambda (_%g249351249404%_
                                                        _%g249352249406%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g249352249406%_))
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
                               (cons _%g249352249406%_ '()))
                         (cons _%g249351249404%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g249349249367%_
                                                      _%g249350249371%_)))
                                               _%hd249360249398%_
                                               _%hd249357249388%_)
                                              (_%g249349249367%_
                                               _%g249350249371%_))))
                                      (_%g249349249367%_ _%g249350249371%_))))
                              (_%g249349249367%_ _%g249350249371%_))))
                      (_%g249349249367%_ _%g249350249371%_)))))
          (_%g249348249422%_ _%$stx249345%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx249426%_)
        (let* ((_%g249430249448%_
                (lambda (_%g249431249444%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g249431249444%_))))
               (_%g249429249503%_
                (lambda (_%g249431249452%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g249431249452%_))
                      (let ((_%e249434249455%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g249431249452%_))))
                        (let ((_%hd249435249459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249434249455%_)))
                              (_%tl249436249462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249434249455%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl249436249462%_))
                              (let ((_%e249437249465%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl249436249462%_))))
                                (let ((_%hd249438249469%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e249437249465%_)))
                                      (_%tl249439249472%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e249437249465%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249439249472%_))
                                      (let ((_%e249440249475%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl249439249472%_))))
                                        (let ((_%hd249441249479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249440249475%_)))
                                              (_%tl249442249482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249440249475%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249442249482%_))
                                              ((lambda (_%g249432249485%_
                                                        _%g249433249487%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g249433249487%_))
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
                               (cons _%g249433249487%_ '()))
                         (cons _%g249432249485%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g249430249448%_
                                                      _%g249431249452%_)))
                                               _%hd249441249479%_
                                               _%hd249438249469%_)
                                              (_%g249430249448%_
                                               _%g249431249452%_))))
                                      (_%g249430249448%_ _%g249431249452%_))))
                              (_%g249430249448%_ _%g249431249452%_))))
                      (_%g249430249448%_ _%g249431249452%_)))))
          (_%g249429249503%_ _%$stx249426%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx249507%_)
        (let* ((_%g249511249540%_
                (lambda (_%g249512249536%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g249512249536%_))))
               (_%g249510249636%_
                (lambda (_%g249512249544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g249512249544%_))
                      (let ((_%e249515249547%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g249512249544%_))))
                        (let ((_%hd249516249551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249515249547%_)))
                              (_%tl249517249554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249515249547%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl249517249554%_))
                              (let ((_g255865_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl249517249554%_
                                        '0))))
                                (begin
                                  (let ((_g255866_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g255865_)
                                               (##values-length _g255865_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g255866_ 2)))
                                        (error "Context expects 2 values"
                                               _g255866_)))
                                  (let ((_%target249518249557%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g255865_ 0)))
                                        (_%tl249520249560%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g255865_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl249520249560%_))
                                        (letrec ((_%loop249521249563%_
                                                  (lambda (_%hd249519249567%_
                                                           _%type249525249570%_
                                                           _%symbol249526249571%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd249519249567%_))
                                                        (let ((_%e249522249573%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd249519249567%_))))
                  (let ((_%lp-hd249523249577%_
                         (let ()
                           (declare (not safe))
                           (##car _%e249522249573%_)))
                        (_%lp-tl249524249580%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e249522249573%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd249523249577%_))
                        (let ((_%e249529249583%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd249523249577%_))))
                          (let ((_%hd249530249587%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e249529249583%_)))
                                (_%tl249531249590%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e249529249583%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl249531249590%_))
                                (let ((_%e249532249593%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl249531249590%_))))
                                  (let ((_%hd249533249597%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e249532249593%_)))
                                        (_%tl249534249600%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e249532249593%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl249534249600%_))
                                        (_%loop249521249563%_
                                         _%lp-tl249524249580%_
                                         (cons _%hd249533249597%_
                                               _%type249525249570%_)
                                         (cons _%hd249530249587%_
                                               _%symbol249526249571%_))
                                        (_%g249511249540%_
                                         _%g249512249544%_))))
                                (_%g249511249540%_ _%g249512249544%_))))
                        (_%g249511249540%_ _%g249512249544%_))))
                (let ((_%type249527249603%_ (reverse _%type249525249570%_))
                      (_%symbol249528249605%_
                       (reverse _%symbol249526249571%_)))
                  ((lambda (_%g249513249607%_ _%g249514249609%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g249513249607%_
                                _%g249514249609%_))
                             (let ((__tmp255867
                                    (lambda (_%g249624249628%_
                                             _%g249625249631%_
                                             _%g249626249633%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g249625249631%_
                                                        (cons _%g249624249628%_
                                                              '())))
                                            _%g249626249633%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp255867
                                '()
                                _%g249513249607%_
                                _%g249514249609%_)))))
                   _%type249527249603%_
                   _%symbol249528249605%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop249521249563%_
                                           _%target249518249557%_
                                           '()
                                           '()))
                                        (_%g249511249540%_
                                         _%g249512249544%_)))))
                              (_%g249511249540%_ _%g249512249544%_))))
                      (_%g249511249540%_ _%g249512249544%_)))))
          (_%g249510249636%_ _%$stx249507%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx249641%_)
        (let* ((_%__stx255176255177%_ _%$stx249641%_)
               (_%g249646249688%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255176255177%_)))))
          (let ((_%__kont255179255180%_
                 (lambda (_%g249648249816%_
                          _%g249649249818%_
                          _%g249650249819%_
                          _%g249651249820%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g249651249820%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g249650249819%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g249649249818%_ '()))
                                           (cons _%g249648249816%_ '())))))))
                (_%__kont255181255182%_
                 (lambda (_%g249667249735%_
                          _%g249668249737%_
                          _%g249669249738%_
                          _%g249670249739%_)
                   (cons _%g249670249739%_
                         (cons _%g249669249738%_
                               (cons _%g249668249737%_
                                     (cons _%g249667249735%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match255215255216%_
                   (lambda (_%e249652249766%_
                            _%hd249653249770%_
                            _%tl249654249773%_
                            _%e249655249776%_
                            _%hd249656249780%_
                            _%tl249657249783%_
                            _%e249658249786%_
                            _%hd249659249790%_
                            _%tl249660249793%_
                            _%e249661249796%_
                            _%hd249662249800%_
                            _%tl249663249803%_
                            _%e249664249806%_
                            _%hd249665249810%_
                            _%tl249666249813%_)
                     (let ((_%g249648249816%_ _%hd249665249810%_)
                           (_%g249649249818%_ _%hd249662249800%_)
                           (_%g249650249819%_ _%hd249659249790%_)
                           (_%g249651249820%_ _%hd249656249780%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g249651249820%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g249650249819%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g249649249818%_)))
                           (_%__kont255179255180%_
                            _%g249648249816%_
                            _%g249649249818%_
                            _%g249650249819%_
                            _%g249651249820%_)
                           (let ()
                             (declare (not safe))
                             (_%g249646249688%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx255176255177%_))
                  (let ((_%e249652249766%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx255176255177%_))))
                    (let ((_%tl249654249773%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249652249766%_)))
                          (_%hd249653249770%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249652249766%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249654249773%_))
                          (let ((_%e249655249776%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl249654249773%_))))
                            (let ((_%tl249657249783%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249655249776%_)))
                                  (_%hd249656249780%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249655249776%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249657249783%_))
                                  (let ((_%e249658249786%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl249657249783%_))))
                                    (let ((_%tl249660249793%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249658249786%_)))
                                          (_%hd249659249790%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249658249786%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249660249793%_))
                                          (let ((_%e249661249796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl249660249793%_))))
                                            (let ((_%tl249663249803%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249661249796%_)))
                                                  (_%hd249662249800%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249661249796%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249663249803%_))
                                                  (let ((_%e249664249806%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl249663249803%_))))
                                                    (let ((_%tl249666249813%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249664249806%_)))
                                                          (_%hd249665249810%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249664249806%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249666249813%_))
                                                          (_%__match255215255216%_
                                                           _%e249652249766%_
                                                           _%hd249653249770%_
                                                           _%tl249654249773%_
                                                           _%e249655249776%_
                                                           _%hd249656249780%_
                                                           _%tl249657249783%_
                                                           _%e249658249786%_
                                                           _%hd249659249790%_
                                                           _%tl249660249793%_
                                                           _%e249661249796%_
                                                           _%hd249662249800%_
                                                           _%tl249663249803%_
                                                           _%e249664249806%_
                                                           _%hd249665249810%_
                                                           _%tl249666249813%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g249646249688%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249663249803%_))
                                                      (_%__kont255181255182%_
                                                       _%hd249662249800%_
                                                       _%hd249659249790%_
                                                       _%hd249656249780%_
                                                       _%hd249653249770%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249646249688%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249646249688%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249646249688%_)))))
                          (let () (declare (not safe)) (_%g249646249688%_)))))
                  (let () (declare (not safe)) (_%g249646249688%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx249845%_)
        (let* ((_%g249849249884%_
                (lambda (_%g249850249880%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g249850249880%_))))
               (_%g249848249997%_
                (lambda (_%g249850249888%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g249850249888%_))
                      (let ((_%e249854249891%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g249850249888%_))))
                        (let ((_%hd249855249895%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249854249891%_)))
                              (_%tl249856249898%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249854249891%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl249856249898%_))
                              (let ((_g255868_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl249856249898%_
                                        '0))))
                                (begin
                                  (let ((_g255869_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g255868_)
                                               (##values-length _g255868_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g255869_ 2)))
                                        (error "Context expects 2 values"
                                               _g255869_)))
                                  (let ((_%target249857249901%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g255868_ 0)))
                                        (_%tl249859249904%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g255868_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl249859249904%_))
                                        (letrec ((_%loop249860249907%_
                                                  (lambda (_%hd249858249911%_
                                                           _%symbol249864249914%_
                                                           _%method249865249915%_
                                                           _%type-t249866249916%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd249858249911%_))
                                                        (let ((_%e249861249918%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd249858249911%_))))
                  (let ((_%lp-hd249862249922%_
                         (let ()
                           (declare (not safe))
                           (##car _%e249861249918%_)))
                        (_%lp-tl249863249925%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e249861249918%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd249862249922%_))
                        (let ((_%e249870249928%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd249862249922%_))))
                          (let ((_%hd249871249932%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e249870249928%_)))
                                (_%tl249872249935%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e249870249928%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl249872249935%_))
                                (let ((_%e249873249938%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl249872249935%_))))
                                  (let ((_%hd249874249942%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e249873249938%_)))
                                        (_%tl249875249945%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e249873249938%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl249875249945%_))
                                        (let ((_%e249876249948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl249875249945%_))))
                                          (let ((_%hd249877249952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e249876249948%_)))
                                                (_%tl249878249955%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e249876249948%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl249878249955%_))
                                                (_%loop249860249907%_
                                                 _%lp-tl249863249925%_
                                                 (cons _%hd249877249952%_
                                                       _%symbol249864249914%_)
                                                 (cons _%hd249874249942%_
                                                       _%method249865249915%_)
                                                 (cons _%hd249871249932%_
                                                       _%type-t249866249916%_))
                                                (_%g249849249884%_
                                                 _%g249850249888%_))))
                                        (_%g249849249884%_
                                         _%g249850249888%_))))
                                (_%g249849249884%_ _%g249850249888%_))))
                        (_%g249849249884%_ _%g249850249888%_))))
                (let ((_%symbol249867249958%_ (reverse _%symbol249864249914%_))
                      (_%method249868249960%_ (reverse _%method249865249915%_))
                      (_%type-t249869249961%_
                       (reverse _%type-t249866249916%_)))
                  ((lambda (_%g249851249963%_
                            _%g249852249965%_
                            _%g249853249966%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g249851249963%_
                                _%g249852249965%_
                                _%g249853249966%_))
                             (let ((__tmp255870
                                    (lambda (_%g249982249987%_
                                             _%g249983249990%_
                                             _%g249984249992%_
                                             _%g249985249994%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g249984249992%_
                                                        (cons _%g249983249990%_
                                                              (cons _%g249982249987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g249985249994%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp255870
                                '()
                                _%g249851249963%_
                                _%g249852249965%_
                                _%g249853249966%_)))))
                   _%symbol249867249958%_
                   _%method249868249960%_
                   _%type-t249869249961%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop249860249907%_
                                           _%target249857249901%_
                                           '()
                                           '()
                                           '()))
                                        (_%g249849249884%_
                                         _%g249850249888%_)))))
                              (_%g249849249884%_ _%g249850249888%_))))
                      (_%g249849249884%_ _%g249850249888%_)))))
          (_%g249848249997%_ _%$stx249845%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx250002%_)
        (let* ((_%g250006250039%_
                (lambda (_%g250007250035%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g250007250035%_))))
               (_%g250005250149%_
                (lambda (_%g250007250043%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g250007250043%_))
                      (let ((_%e250011250046%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g250007250043%_))))
                        (let ((_%hd250012250050%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250011250046%_)))
                              (_%tl250013250053%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250011250046%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250013250053%_))
                              (let ((_%e250014250056%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl250013250053%_))))
                                (let ((_%hd250015250060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250014250056%_)))
                                      (_%tl250016250063%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250014250056%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl250016250063%_))
                                      (let ((_g255871_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl250016250063%_
                                                '0))))
                                        (begin
                                          (let ((_g255872_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g255871_)
                                                       (##values-length
                                                        _g255871_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g255872_ 2)))
                                                (error "Context expects 2 values"
                                                       _g255872_)))
                                          (let ((_%target250017250066%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g255871_ 0)))
                                                (_%tl250019250069%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g255871_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl250019250069%_))
                                                (letrec ((_%loop250020250072%_
                                                          (lambda (_%hd250018250076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol250024250079%_
                           _%method250025250080%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd250018250076%_))
                        (let ((_%e250021250082%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd250018250076%_))))
                          (let ((_%lp-hd250022250086%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e250021250082%_)))
                                (_%lp-tl250023250089%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e250021250082%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd250022250086%_))
                                (let ((_%e250028250092%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd250022250086%_))))
                                  (let ((_%hd250029250096%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e250028250092%_)))
                                        (_%tl250030250099%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e250028250092%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl250030250099%_))
                                        (let ((_%e250031250102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl250030250099%_))))
                                          (let ((_%hd250032250106%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e250031250102%_)))
                                                (_%tl250033250109%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e250031250102%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl250033250109%_))
                                                (_%loop250020250072%_
                                                 _%lp-tl250023250089%_
                                                 (cons _%hd250032250106%_
                                                       _%symbol250024250079%_)
                                                 (cons _%hd250029250096%_
                                                       _%method250025250080%_))
                                                (_%g250006250039%_
                                                 _%g250007250043%_))))
                                        (_%g250006250039%_
                                         _%g250007250043%_))))
                                (_%g250006250039%_ _%g250007250043%_))))
                        (let ((_%symbol250026250112%_
                               (reverse _%symbol250024250079%_))
                              (_%method250027250114%_
                               (reverse _%method250025250080%_)))
                          ((lambda (_%g250008250116%_
                                    _%g250009250118%_
                                    _%g250010250119%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g250008250116%_
                                        _%g250009250118%_))
                                     (let ((__tmp255873
                                            (lambda (_%g250137250141%_
                                                     _%g250138250144%_
                                                     _%g250139250146%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g250010250119%_
                                                                (cons _%g250138250144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g250137250141%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g250139250146%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp255873
                                        '()
                                        _%g250008250116%_
                                        _%g250009250118%_)))))
                           _%symbol250026250112%_
                           _%method250027250114%_
                           _%hd250015250060%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop250020250072%_
                                                   _%target250017250066%_
                                                   '()
                                                   '()))
                                                (_%g250006250039%_
                                                 _%g250007250043%_)))))
                                      (_%g250006250039%_ _%g250007250043%_))))
                              (_%g250006250039%_ _%g250007250043%_))))
                      (_%g250006250039%_ _%g250007250043%_)))))
          (_%g250005250149%_ _%$stx250002%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx250154%_)
        (let* ((_%g250158250172%_
                (lambda (_%g250159250168%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g250159250168%_))))
               (_%g250157250213%_
                (lambda (_%g250159250176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g250159250176%_))
                      (let ((_%e250161250179%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g250159250176%_))))
                        (let ((_%hd250162250183%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250161250179%_)))
                              (_%tl250163250186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250161250179%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250163250186%_))
                              (let ((_%e250164250189%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl250163250186%_))))
                                (let ((_%hd250165250193%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250164250189%_)))
                                      (_%tl250166250196%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250164250189%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250166250196%_))
                                      ((lambda (_%g250160250199%_)
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
                                                           (cons _%g250160250199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd250165250193%_)
                                      (_%g250158250172%_ _%g250159250176%_))))
                              (_%g250158250172%_ _%g250159250176%_))))
                      (_%g250158250172%_ _%g250159250176%_)))))
          (_%g250157250213%_ _%$stx250154%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx250217%_)
        (let* ((_%g250221250275%_
                (lambda (_%g250222250271%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g250222250271%_))))
               (_%g250220250456%_
                (lambda (_%g250222250279%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g250222250279%_))
                      (let ((_%e250234250282%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g250222250279%_))))
                        (let ((_%hd250235250286%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250234250282%_)))
                              (_%tl250236250289%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250234250282%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250236250289%_))
                              (let ((_%e250237250292%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl250236250289%_))))
                                (let ((_%hd250238250296%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250237250292%_)))
                                      (_%tl250239250299%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250237250292%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250239250299%_))
                                      (let ((_%e250240250302%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl250239250299%_))))
                                        (let ((_%hd250241250306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250240250302%_)))
                                              (_%tl250242250309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250240250302%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250242250309%_))
                                              (let ((_%e250243250312%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl250242250309%_))))
                                                (let ((_%hd250244250316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250243250312%_)))
                                                      (_%tl250245250319%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250243250312%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250245250319%_))
                                                      (let ((_%e250246250322%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl250245250319%_))))
                (let ((_%hd250247250326%_
                       (let () (declare (not safe)) (##car _%e250246250322%_)))
                      (_%tl250248250329%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e250246250322%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250248250329%_))
                      (let ((_%e250249250332%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl250248250329%_))))
                        (let ((_%hd250250250336%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250249250332%_)))
                              (_%tl250251250339%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250249250332%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250251250339%_))
                              (let ((_%e250252250342%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl250251250339%_))))
                                (let ((_%hd250253250346%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250252250342%_)))
                                      (_%tl250254250349%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250252250342%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250254250349%_))
                                      (let ((_%e250255250352%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl250254250349%_))))
                                        (let ((_%hd250256250356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250255250352%_)))
                                              (_%tl250257250359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250255250352%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250257250359%_))
                                              (let ((_%e250258250362%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl250257250359%_))))
                                                (let ((_%hd250259250366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250258250362%_)))
                                                      (_%tl250260250369%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250258250362%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250260250369%_))
                                                      (let ((_%e250261250372%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl250260250369%_))))
                (let ((_%hd250262250376%_
                       (let () (declare (not safe)) (##car _%e250261250372%_)))
                      (_%tl250263250379%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e250261250372%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250263250379%_))
                      (let ((_%e250264250382%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl250263250379%_))))
                        (let ((_%hd250265250386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250264250382%_)))
                              (_%tl250266250389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250264250382%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250266250389%_))
                              (let ((_%e250267250392%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl250266250389%_))))
                                (let ((_%hd250268250396%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250267250392%_)))
                                      (_%tl250269250399%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250267250392%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250269250399%_))
                                      ((lambda (_%g250223250402%_
                                                _%g250224250404%_
                                                _%g250225250405%_
                                                _%g250226250406%_
                                                _%g250227250407%_
                                                _%g250228250408%_
                                                _%g250229250409%_
                                                _%g250230250410%_
                                                _%g250231250411%_
                                                _%g250232250412%_
                                                _%g250233250413%_)
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
                                                           (cons _%g250233250413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g250232250412%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g250231250411%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g250230250410%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g250229250409%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g250228250408%_ '()))
                                           (cons _%g250227250407%_
                                                 (cons _%g250226250406%_
                                                       (cons _%g250225250405%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g250224250404%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g250223250402%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd250268250396%_
                                       _%hd250265250386%_
                                       _%hd250262250376%_
                                       _%hd250259250366%_
                                       _%hd250256250356%_
                                       _%hd250253250346%_
                                       _%hd250250250336%_
                                       _%hd250247250326%_
                                       _%hd250244250316%_
                                       _%hd250241250306%_
                                       _%hd250238250296%_)
                                      (_%g250221250275%_ _%g250222250279%_))))
                              (_%g250221250275%_ _%g250222250279%_))))
                      (_%g250221250275%_ _%g250222250279%_))))
              (_%g250221250275%_ _%g250222250279%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g250221250275%_
                                               _%g250222250279%_))))
                                      (_%g250221250275%_ _%g250222250279%_))))
                              (_%g250221250275%_ _%g250222250279%_))))
                      (_%g250221250275%_ _%g250222250279%_))))
              (_%g250221250275%_ _%g250222250279%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g250221250275%_
                                               _%g250222250279%_))))
                                      (_%g250221250275%_ _%g250222250279%_))))
                              (_%g250221250275%_ _%g250222250279%_))))
                      (_%g250221250275%_ _%g250222250279%_)))))
          (_%g250220250456%_ _%$stx250217%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx250460%_)
        (let* ((_%g250464250478%_
                (lambda (_%g250465250474%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g250465250474%_))))
               (_%g250463250519%_
                (lambda (_%g250465250482%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g250465250482%_))
                      (let ((_%e250467250485%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g250465250482%_))))
                        (let ((_%hd250468250489%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250467250485%_)))
                              (_%tl250469250492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250467250485%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250469250492%_))
                              (let ((_%e250470250495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl250469250492%_))))
                                (let ((_%hd250471250499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250470250495%_)))
                                      (_%tl250472250502%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250470250495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250472250502%_))
                                      ((lambda (_%g250466250505%_)
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
                                                           (cons _%g250466250505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd250471250499%_)
                                      (_%g250464250478%_ _%g250465250482%_))))
                              (_%g250464250478%_ _%g250465250482%_))))
                      (_%g250464250478%_ _%g250465250482%_)))))
          (_%g250463250519%_ _%$stx250460%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx250523%_)
        (let* ((_%g250527250541%_
                (lambda (_%g250528250537%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g250528250537%_))))
               (_%g250526250582%_
                (lambda (_%g250528250545%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g250528250545%_))
                      (let ((_%e250530250548%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g250528250545%_))))
                        (let ((_%hd250531250552%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250530250548%_)))
                              (_%tl250532250555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250530250548%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250532250555%_))
                              (let ((_%e250533250558%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl250532250555%_))))
                                (let ((_%hd250534250562%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250533250558%_)))
                                      (_%tl250535250565%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250533250558%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250535250565%_))
                                      ((lambda (_%g250529250568%_)
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
                                                           (cons _%g250529250568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd250534250562%_)
                                      (_%g250527250541%_ _%g250528250545%_))))
                              (_%g250527250541%_ _%g250528250545%_))))
                      (_%g250527250541%_ _%g250528250545%_)))))
          (_%g250526250582%_ _%$stx250523%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx250586%_)
        (let* ((_%g250590250612%_
                (lambda (_%g250591250608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g250591250608%_))))
               (_%g250589250681%_
                (lambda (_%g250591250616%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g250591250616%_))
                      (let ((_%e250595250619%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g250591250616%_))))
                        (let ((_%hd250596250623%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250595250619%_)))
                              (_%tl250597250626%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250595250619%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250597250626%_))
                              (let ((_%e250598250629%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl250597250626%_))))
                                (let ((_%hd250599250633%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250598250629%_)))
                                      (_%tl250600250636%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250598250629%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250600250636%_))
                                      (let ((_%e250601250639%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl250600250636%_))))
                                        (let ((_%hd250602250643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250601250639%_)))
                                              (_%tl250603250646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250601250639%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250603250646%_))
                                              (let ((_%e250604250649%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl250603250646%_))))
                                                (let ((_%hd250605250653%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250604250649%_)))
                                                      (_%tl250606250656%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250604250649%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250606250656%_))
                                                      ((lambda (_%g250592250659%_
                                                                _%g250593250661%_
                                                                _%g250594250662%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g250594250662%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g250593250661%_ '()))
                                   (cons _%g250592250659%_ '())))))
               _%hd250605250653%_
               _%hd250602250643%_
               _%hd250599250633%_)
              (_%g250590250612%_ _%g250591250616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g250590250612%_
                                               _%g250591250616%_))))
                                      (_%g250590250612%_ _%g250591250616%_))))
                              (_%g250590250612%_ _%g250591250616%_))))
                      (_%g250590250612%_ _%g250591250616%_)))))
          (_%g250589250681%_ _%$stx250586%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx250685%_)
        (let* ((_%g250689250711%_
                (lambda (_%g250690250707%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g250690250707%_))))
               (_%g250688250780%_
                (lambda (_%g250690250715%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g250690250715%_))
                      (let ((_%e250694250718%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g250690250715%_))))
                        (let ((_%hd250695250722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250694250718%_)))
                              (_%tl250696250725%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250694250718%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250696250725%_))
                              (let ((_%e250697250728%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl250696250725%_))))
                                (let ((_%hd250698250732%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250697250728%_)))
                                      (_%tl250699250735%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250697250728%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250699250735%_))
                                      (let ((_%e250700250738%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl250699250735%_))))
                                        (let ((_%hd250701250742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250700250738%_)))
                                              (_%tl250702250745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250700250738%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250702250745%_))
                                              (let ((_%e250703250748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl250702250745%_))))
                                                (let ((_%hd250704250752%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250703250748%_)))
                                                      (_%tl250705250755%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250703250748%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250705250755%_))
                                                      ((lambda (_%g250691250758%_
                                                                _%g250692250760%_
                                                                _%g250693250761%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g250693250761%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g250692250760%_ '()))
                                   (cons _%g250691250758%_ '())))))
               _%hd250704250752%_
               _%hd250701250742%_
               _%hd250698250732%_)
              (_%g250689250711%_ _%g250690250715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g250689250711%_
                                               _%g250690250715%_))))
                                      (_%g250689250711%_ _%g250690250715%_))))
                              (_%g250689250711%_ _%g250690250715%_))))
                      (_%g250689250711%_ _%g250690250715%_)))))
          (_%g250688250780%_ _%$stx250685%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx250784%_)
        (let* ((_%g250788250802%_
                (lambda (_%g250789250798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g250789250798%_))))
               (_%g250787250843%_
                (lambda (_%g250789250806%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g250789250806%_))
                      (let ((_%e250791250809%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g250789250806%_))))
                        (let ((_%hd250792250813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250791250809%_)))
                              (_%tl250793250816%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250791250809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250793250816%_))
                              (let ((_%e250794250819%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl250793250816%_))))
                                (let ((_%hd250795250823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250794250819%_)))
                                      (_%tl250796250826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250794250819%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250796250826%_))
                                      ((lambda (_%g250790250829%_)
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
                                                           (cons _%g250790250829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd250795250823%_)
                                      (_%g250788250802%_ _%g250789250806%_))))
                              (_%g250788250802%_ _%g250789250806%_))))
                      (_%g250788250802%_ _%g250789250806%_)))))
          (_%g250787250843%_ _%$stx250784%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx250847%_)
        (let* ((_%g250851250869%_
                (lambda (_%g250852250865%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g250852250865%_))))
               (_%g250850250924%_
                (lambda (_%g250852250873%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g250852250873%_))
                      (let ((_%e250855250876%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g250852250873%_))))
                        (let ((_%hd250856250880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250855250876%_)))
                              (_%tl250857250883%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250855250876%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250857250883%_))
                              (let ((_%e250858250886%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl250857250883%_))))
                                (let ((_%hd250859250890%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250858250886%_)))
                                      (_%tl250860250893%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250858250886%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250860250893%_))
                                      (let ((_%e250861250896%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl250860250893%_))))
                                        (let ((_%hd250862250900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250861250896%_)))
                                              (_%tl250863250903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250861250896%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250863250903%_))
                                              ((lambda (_%g250853250906%_
                                                        _%g250854250908%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g250854250908%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g250853250906%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd250862250900%_
                                               _%hd250859250890%_)
                                              (_%g250851250869%_
                                               _%g250852250873%_))))
                                      (_%g250851250869%_ _%g250852250873%_))))
                              (_%g250851250869%_ _%g250852250873%_))))
                      (_%g250851250869%_ _%g250852250873%_)))))
          (_%g250850250924%_ _%$stx250847%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx250928%_)
        (let* ((_%__stx255244255245%_ _%$stx250928%_)
               (_%g250935250996%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255244255245%_)))))
          (let ((_%__kont255247255248%_
                 (lambda (_%g250937251234%_ _%g250938251236%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g250938251236%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g250937251234%_ '()))
                                     '())))))
                (_%__kont255249255250%_
                 (lambda (_%g250948251173%_
                          _%g250949251175%_
                          _%g250950251176%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g250950251176%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g250949251175%_ '()))
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
                                 (cons _%g250948251173%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont255251255252%_
                 (lambda (_%g250967251097%_ _%g250968251099%_)
                   (cons _%g250968251099%_
                         (cons _%g250967251097%_ (cons '#f '())))))
                (_%__kont255253255254%_
                 (lambda (_%g250975251047%_
                          _%g250976251049%_
                          _%g250977251050%_)
                   (cons _%g250977251050%_
                         (cons _%g250976251049%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g250975251047%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx255244255245%_))
                (let ((_%e250939251204%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx255244255245%_))))
                  (let ((_%tl250941251211%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e250939251204%_)))
                        (_%hd250940251208%_
                         (let ()
                           (declare (not safe))
                           (##car _%e250939251204%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl250941251211%_))
                        (let ((_%e250942251214%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl250941251211%_))))
                          (let ((_%tl250944251221%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e250942251214%_)))
                                (_%hd250943251218%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e250942251214%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl250944251221%_))
                                (let ((_%e250945251224%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl250944251221%_))))
                                  (let ((_%tl250947251231%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e250945251224%_)))
                                        (_%hd250946251228%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e250945251224%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl250947251231%_))
                                        (_%__kont255247255248%_
                                         _%hd250946251228%_
                                         _%hd250943251218%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl250947251231%_))
                                            (let ((_%e250960251149%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl250947251231%_))))
                                              (let ((_%tl250962251156%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e250960251149%_)))
                                                    (_%hd250961251153%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e250960251149%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd250961251153%_))
                                                    (let ((_%e250963251159%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd250961251153%_))))
                                                      (if (equal? _%e250963251159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250962251156%_))
                      (let ((_%e250964251163%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl250962251156%_))))
                        (let ((_%tl250966251170%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250964251163%_)))
                              (_%hd250965251167%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250964251163%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250966251170%_))
                              (_%__kont255249255250%_
                               _%hd250965251167%_
                               _%hd250946251228%_
                               _%hd250943251218%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd250946251228%_))
                                  (let ((_%e250987251033%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd250946251228%_))))
                                    (declare (not safe))
                                    (_%g250935250996%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250935250996%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd250946251228%_))
                          (let ((_%e250987251033%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd250946251228%_))))
                            (if (equal? _%e250987251033%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl250962251156%_))
                                    (_%__kont255253255254%_
                                     _%hd250961251153%_
                                     _%hd250943251218%_
                                     _%hd250940251208%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g250935250996%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g250935250996%_))))
                          (let () (declare (not safe)) (_%g250935250996%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd250946251228%_))
                      (let ((_%e250987251033%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd250946251228%_))))
                        (if (equal? _%e250987251033%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl250962251156%_))
                                (_%__kont255253255254%_
                                 _%hd250961251153%_
                                 _%hd250943251218%_
                                 _%hd250940251208%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g250935250996%_)))
                            (let () (declare (not safe)) (_%g250935250996%_))))
                      (let () (declare (not safe)) (_%g250935250996%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd250946251228%_))
                                                        (let ((_%e250987251033%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd250946251228%_))))
                  (if (equal? _%e250987251033%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250962251156%_))
                          (_%__kont255253255254%_
                           _%hd250961251153%_
                           _%hd250943251218%_
                           _%hd250940251208%_)
                          (let () (declare (not safe)) (_%g250935250996%_)))
                      (let () (declare (not safe)) (_%g250935250996%_))))
                (let () (declare (not safe)) (_%g250935250996%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd250946251228%_))
                                                (let ((_%e250987251033%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd250946251228%_))))
                                                  (declare (not safe))
                                                  (_%g250935250996%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g250935250996%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl250944251221%_))
                                    (_%__kont255251255252%_
                                     _%hd250943251218%_
                                     _%hd250940251208%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g250935250996%_))))))
                        (let () (declare (not safe)) (_%g250935250996%_)))))
                (let () (declare (not safe)) (_%g250935250996%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx251255%_)
        (let* ((_%g251259251288%_
                (lambda (_%g251260251284%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g251260251284%_))))
               (_%g251258251393%_
                (lambda (_%g251260251292%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g251260251292%_))
                      (let ((_%e251262251295%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g251260251292%_))))
                        (let ((_%hd251263251299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251262251295%_)))
                              (_%tl251264251302%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251262251295%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl251264251302%_))
                              (let ((_g255874_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl251264251302%_
                                        '0))))
                                (begin
                                  (let ((_g255875_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g255874_)
                                               (##values-length _g255874_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g255875_ 2)))
                                        (error "Context expects 2 values"
                                               _g255875_)))
                                  (let ((_%target251265251305%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g255874_ 0)))
                                        (_%tl251267251308%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g255874_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl251267251308%_))
                                        (letrec ((_%loop251268251311%_
                                                  (lambda (_%hd251266251315%_
                                                           _%clause251272251318%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd251266251315%_))
                                                        (let ((_%e251269251320%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd251266251315%_))))
                  (let ((_%lp-hd251270251324%_
                         (let ()
                           (declare (not safe))
                           (##car _%e251269251320%_)))
                        (_%lp-tl251271251327%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e251269251320%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd251270251324%_))
                        (let ((_g255876_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd251270251324%_
                                  '0))))
                          (begin
                            (let ((_g255877_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g255876_)
                                         (##values-length _g255876_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g255877_ 2)))
                                  (error "Context expects 2 values"
                                         _g255877_)))
                            (let ((_%target251274251330%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g255876_ 0)))
                                  (_%tl251276251333%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g255876_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl251276251333%_))
                                  (letrec ((_%loop251277251336%_
                                            (lambda (_%hd251275251340%_
                                                     _%clause251281251343%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd251275251340%_))
                                                  (let ((_%e251278251345%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd251275251340%_))))
                                                    (let ((_%lp-hd251279251349%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251278251345%_)))
                                                          (_%lp-tl251280251352%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251278251345%_))))
                                                      (_%loop251277251336%_
                                                       _%lp-tl251280251352%_
                                                       (cons _%lp-hd251279251349%_
                                                             _%clause251281251343%_))))
                                                  (let ((_%clause251282251355%_
                                                         (reverse _%clause251281251343%_)))
                                                    (_%loop251268251311%_
                                                     _%lp-tl251271251327%_
                                                     (cons _%clause251282251355%_
                                                           _%clause251272251318%_)))))))
                                    (_%loop251277251336%_
                                     _%target251274251330%_
                                     '()))
                                  (_%g251259251288%_ _%g251260251292%_)))))
                        (_%g251259251288%_ _%g251260251292%_))))
                (let ((_%clause251273251358%_
                       (reverse _%clause251272251318%_)))
                  ((lambda (_%g251261251361%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp255878
                                              (lambda (_%g251376251381%_
                                                       _%g251377251384%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp255879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g251378251387%_ _%g251379251390%_)
                             (cons _%g251378251387%_ _%g251379251390%_))))
                      (declare (not safe))
                      (__foldr1 __tmp255879 '() _%g251376251381%_)))
              _%g251377251384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp255878
                                          '()
                                          _%g251261251361%_)))
                                 '())))
                   _%clause251273251358%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop251268251311%_
                                           _%target251265251305%_
                                           '()))
                                        (_%g251259251288%_
                                         _%g251260251292%_)))))
                              (_%g251259251288%_ _%g251260251292%_))))
                      (_%g251259251288%_ _%g251260251292%_)))))
          (_%g251258251393%_ _%$stx251255%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx251399%_)
        (let* ((_%g251403251421%_
                (lambda (_%g251404251417%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g251404251417%_))))
               (_%g251402251476%_
                (lambda (_%g251404251425%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g251404251425%_))
                      (let ((_%e251407251428%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g251404251425%_))))
                        (let ((_%hd251408251432%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251407251428%_)))
                              (_%tl251409251435%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251407251428%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl251409251435%_))
                              (let ((_%e251410251438%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl251409251435%_))))
                                (let ((_%hd251411251442%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e251410251438%_)))
                                      (_%tl251412251445%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e251410251438%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl251412251445%_))
                                      (let ((_%e251413251448%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl251412251445%_))))
                                        (let ((_%hd251414251452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251413251448%_)))
                                              (_%tl251415251455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251413251448%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl251415251455%_))
                                              ((lambda (_%g251405251458%_
                                                        _%g251406251460%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g251406251460%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g251405251458%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd251414251452%_
                                               _%hd251411251442%_)
                                              (_%g251403251421%_
                                               _%g251404251425%_))))
                                      (_%g251403251421%_ _%g251404251425%_))))
                              (_%g251403251421%_ _%g251404251425%_))))
                      (_%g251403251421%_ _%g251404251425%_)))))
          (_%g251402251476%_ _%$stx251399%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx251480%_)
        (let* ((_%g251484251502%_
                (lambda (_%g251485251498%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g251485251498%_))))
               (_%g251483251557%_
                (lambda (_%g251485251506%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g251485251506%_))
                      (let ((_%e251488251509%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g251485251506%_))))
                        (let ((_%hd251489251513%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251488251509%_)))
                              (_%tl251490251516%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251488251509%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl251490251516%_))
                              (let ((_%e251491251519%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl251490251516%_))))
                                (let ((_%hd251492251523%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e251491251519%_)))
                                      (_%tl251493251526%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e251491251519%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl251493251526%_))
                                      (let ((_%e251494251529%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl251493251526%_))))
                                        (let ((_%hd251495251533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251494251529%_)))
                                              (_%tl251496251536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251494251529%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl251496251536%_))
                                              ((lambda (_%g251486251539%_
                                                        _%g251487251541%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g251487251541%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g251486251539%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd251495251533%_
                                               _%hd251492251523%_)
                                              (_%g251484251502%_
                                               _%g251485251506%_))))
                                      (_%g251484251502%_ _%g251485251506%_))))
                              (_%g251484251502%_ _%g251485251506%_))))
                      (_%g251484251502%_ _%g251485251506%_)))))
          (_%g251483251557%_ _%$stx251480%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx251561%_)
        (let* ((_%g251565251594%_
                (lambda (_%g251566251590%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g251566251590%_))))
               (_%g251564251690%_
                (lambda (_%g251566251598%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g251566251598%_))
                      (let ((_%e251569251601%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g251566251598%_))))
                        (let ((_%hd251570251605%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251569251601%_)))
                              (_%tl251571251608%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251569251601%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl251571251608%_))
                              (let ((_g255880_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl251571251608%_
                                        '0))))
                                (begin
                                  (let ((_g255881_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g255880_)
                                               (##values-length _g255880_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g255881_ 2)))
                                        (error "Context expects 2 values"
                                               _g255881_)))
                                  (let ((_%target251572251611%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g255880_ 0)))
                                        (_%tl251574251614%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g255880_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl251574251614%_))
                                        (letrec ((_%loop251575251617%_
                                                  (lambda (_%hd251573251621%_
                                                           _%rule251579251624%_
                                                           _%proc251580251625%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd251573251621%_))
                                                        (let ((_%e251576251627%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd251573251621%_))))
                  (let ((_%lp-hd251577251631%_
                         (let ()
                           (declare (not safe))
                           (##car _%e251576251627%_)))
                        (_%lp-tl251578251634%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e251576251627%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd251577251631%_))
                        (let ((_%e251583251637%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd251577251631%_))))
                          (let ((_%hd251584251641%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e251583251637%_)))
                                (_%tl251585251644%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e251583251637%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl251585251644%_))
                                (let ((_%e251586251647%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl251585251644%_))))
                                  (let ((_%hd251587251651%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e251586251647%_)))
                                        (_%tl251588251654%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e251586251647%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl251588251654%_))
                                        (_%loop251575251617%_
                                         _%lp-tl251578251634%_
                                         (cons _%hd251587251651%_
                                               _%rule251579251624%_)
                                         (cons _%hd251584251641%_
                                               _%proc251580251625%_))
                                        (_%g251565251594%_
                                         _%g251566251598%_))))
                                (_%g251565251594%_ _%g251566251598%_))))
                        (_%g251565251594%_ _%g251566251598%_))))
                (let ((_%rule251581251657%_ (reverse _%rule251579251624%_))
                      (_%proc251582251659%_ (reverse _%proc251580251625%_)))
                  ((lambda (_%g251567251661%_ _%g251568251663%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g251567251661%_
                                _%g251568251663%_))
                             (let ((__tmp255882
                                    (lambda (_%g251678251682%_
                                             _%g251679251685%_
                                             _%g251680251687%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g251679251685%_
                                                        (cons _%g251678251682%_
                                                              '())))
                                            _%g251680251687%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp255882
                                '()
                                _%g251567251661%_
                                _%g251568251663%_)))))
                   _%rule251581251657%_
                   _%proc251582251659%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop251575251617%_
                                           _%target251572251611%_
                                           '()
                                           '()))
                                        (_%g251565251594%_
                                         _%g251566251598%_)))))
                              (_%g251565251594%_ _%g251566251598%_))))
                      (_%g251565251594%_ _%g251566251598%_)))))
          (_%g251564251690%_ _%$stx251561%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx251695%_)
        (let* ((_%g251699251717%_
                (lambda (_%g251700251713%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g251700251713%_))))
               (_%g251698251772%_
                (lambda (_%g251700251721%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g251700251721%_))
                      (let ((_%e251703251724%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g251700251721%_))))
                        (let ((_%hd251704251728%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251703251724%_)))
                              (_%tl251705251731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251703251724%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl251705251731%_))
                              (let ((_%e251706251734%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl251705251731%_))))
                                (let ((_%hd251707251738%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e251706251734%_)))
                                      (_%tl251708251741%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e251706251734%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl251708251741%_))
                                      (let ((_%e251709251744%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl251708251741%_))))
                                        (let ((_%hd251710251748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251709251744%_)))
                                              (_%tl251711251751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251709251744%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl251711251751%_))
                                              ((lambda (_%g251701251754%_
                                                        _%g251702251756%_)
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
                                                   (cons _%g251702251756%_
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
                 (cons _%g251701251754%_ '())))
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
                                   (cons _%g251702251756%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd251710251748%_
                                               _%hd251707251738%_)
                                              (_%g251699251717%_
                                               _%g251700251721%_))))
                                      (_%g251699251717%_ _%g251700251721%_))))
                              (_%g251699251717%_ _%g251700251721%_))))
                      (_%g251699251717%_ _%g251700251721%_)))))
          (_%g251698251772%_ _%$stx251695%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx251776%_)
        (let* ((_%__stx255362255363%_ _%$stx251776%_)
               (_%g251781251806%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255362255363%_)))))
          (let ((_%__kont255365255366%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont255367255368%_
                 (lambda (_%g251786251853%_
                          _%g251787251855%_
                          _%g251788251856%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g251788251856%_
                                           (cons _%g251787251855%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g251786251853%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx255362255363%_))
                (let ((_%e251783251882%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx255362255363%_))))
                  (let ((_%tl251785251889%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e251783251882%_)))
                        (_%hd251784251886%_
                         (let ()
                           (declare (not safe))
                           (##car _%e251783251882%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl251785251889%_))
                        (_%__kont255365255366%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl251785251889%_))
                            (let ((_%e251792251823%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl251785251889%_))))
                              (let ((_%tl251794251830%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e251792251823%_)))
                                    (_%hd251793251827%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e251792251823%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd251793251827%_))
                                    (let ((_%e251795251833%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd251793251827%_))))
                                      (let ((_%tl251797251840%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e251795251833%_)))
                                            (_%hd251796251837%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e251795251833%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl251797251840%_))
                                            (let ((_%e251798251843%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl251797251840%_))))
                                              (let ((_%tl251800251850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e251798251843%_)))
                                                    (_%hd251799251847%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e251798251843%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl251800251850%_))
                                                    (_%__kont255367255368%_
                                                     _%tl251794251830%_
                                                     _%hd251799251847%_
                                                     _%hd251796251837%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g251781251806%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g251781251806%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g251781251806%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g251781251806%_))))))
                (let () (declare (not safe)) (_%g251781251806%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx251900%_)
        (let* ((_%__stx255406255407%_ _%$stx251900%_)
               (_%g251905251936%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255406255407%_)))))
          (let ((_%__kont255409255410%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont255411255412%_
                 (lambda (_%g251910252001%_
                          _%g251911252003%_
                          _%g251912252004%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g251912252004%_
                                           (let ((__tmp255883
                                                  (lambda (_%g252024252027%_
                                                           _%g252025252030%_)
                                                    (cons _%g252024252027%_
                                                          _%g252025252030%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp255883
                                              '()
                                              _%g251911252003%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g251910252001%_)
                                     '()))))))
            (let ((_%__match255449255450%_
                   (lambda (_%e251913251943%_
                            _%hd251914251947%_
                            _%tl251915251950%_
                            _%e251916251953%_
                            _%hd251917251957%_
                            _%tl251918251960%_
                            _%e251919251963%_
                            _%hd251920251967%_
                            _%tl251921251970%_
                            _%__splice255413255414%_
                            _%target251922251973%_
                            _%tl251924251976%_)
                     (letrec ((_%loop251925251979%_
                               (lambda (_%hd251923251983%_ _%sig251929251986%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd251923251983%_))
                                     (let ((_%e251926251988%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd251923251983%_))))
                                       (let ((_%lp-tl251928251995%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e251926251988%_)))
                                             (_%lp-hd251927251992%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e251926251988%_))))
                                         (_%loop251925251979%_
                                          _%lp-tl251928251995%_
                                          (cons _%lp-hd251927251992%_
                                                _%sig251929251986%_))))
                                     (let ((_%sig251930251998%_
                                            (reverse _%sig251929251986%_)))
                                       (_%__kont255411255412%_
                                        _%tl251918251960%_
                                        _%sig251930251998%_
                                        _%hd251920251967%_))))))
                       (_%loop251925251979%_ _%target251922251973%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx255406255407%_))
                  (let ((_%e251907252040%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx255406255407%_))))
                    (let ((_%tl251909252047%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251907252040%_)))
                          (_%hd251908252044%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251907252040%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251909252047%_))
                          (_%__kont255409255410%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl251909252047%_))
                              (let ((_%e251916251953%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl251909252047%_))))
                                (let ((_%tl251918251960%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e251916251953%_)))
                                      (_%hd251917251957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e251916251953%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd251917251957%_))
                                      (let ((_%e251919251963%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd251917251957%_))))
                                        (let ((_%tl251921251970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251919251963%_)))
                                              (_%hd251920251967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251919251963%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl251921251970%_))
                                              (let ((_%__splice255413255414%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl251921251970%_
                                                        '0))))
                                                (let ((_%tl251924251976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice255413255414%_
                                                          '1)))
                                                      (_%target251922251973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice255413255414%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl251924251976%_))
                                                      (_%__match255449255450%_
                                                       _%e251907252040%_
                                                       _%hd251908252044%_
                                                       _%tl251909252047%_
                                                       _%e251916251953%_
                                                       _%hd251917251957%_
                                                       _%tl251918251960%_
                                                       _%e251919251963%_
                                                       _%hd251920251967%_
                                                       _%tl251921251970%_
                                                       _%__splice255413255414%_
                                                       _%target251922251973%_
                                                       _%tl251924251976%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g251905251936%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g251905251936%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g251905251936%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g251905251936%_))))))
                  (let () (declare (not safe)) (_%g251905251936%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx252059%_)
        (let* ((_%__stx255452255453%_ _%$stx252059%_)
               (_%g252064252111%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255452255453%_)))))
          (let ((_%__kont255455255456%_
                 (lambda (_%g252066252269%_ _%g252067252271%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g252067252271%_
                               (let ((__tmp255884
                                      (lambda (_%g252291252294%_
                                               _%g252292252297%_)
                                        (cons _%g252291252294%_
                                              _%g252292252297%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp255884
                                  '()
                                  _%g252066252269%_))))))
                (_%__kont255459255460%_
                 (lambda (_%g252089252166%_ _%g252090252168%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g252090252168%_
                               (let ((__tmp255885
                                      (lambda (_%g252185252188%_
                                               _%g252186252191%_)
                                        (cons _%g252185252188%_
                                              _%g252186252191%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp255885
                                  '()
                                  _%g252089252166%_)))))))
            (let* ((_%__match255519255520%_
                    (lambda (_%e252091252118%_
                             _%hd252092252122%_
                             _%tl252093252125%_
                             _%e252094252128%_
                             _%hd252095252132%_
                             _%tl252096252135%_
                             _%__splice255461255462%_
                             _%target252097252138%_
                             _%tl252099252141%_)
                      (letrec ((_%loop252100252144%_
                                (lambda (_%hd252098252148%_
                                         _%sig252104252151%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd252098252148%_))
                                      (let ((_%e252101252153%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd252098252148%_))))
                                        (let ((_%lp-tl252103252160%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252101252153%_)))
                                              (_%lp-hd252102252157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252101252153%_))))
                                          (_%loop252100252144%_
                                           _%lp-tl252103252160%_
                                           (cons _%lp-hd252102252157%_
                                                 _%sig252104252151%_))))
                                      (let ((_%sig252105252163%_
                                             (reverse _%sig252104252151%_)))
                                        (_%__kont255459255460%_
                                         _%sig252105252163%_
                                         _%hd252095252132%_))))))
                        (_%loop252100252144%_ _%target252097252138%_ '()))))
                   (_%__match255511255512%_
                    (lambda (_%e252091252118%_
                             _%hd252092252122%_
                             _%tl252093252125%_
                             _%e252094252128%_
                             _%hd252095252132%_
                             _%tl252096252135%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl252096252135%_))
                          (let ((_%__splice255461255462%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl252096252135%_
                                    '0))))
                            (let ((_%tl252099252141%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice255461255462%_
                                      '1)))
                                  (_%target252097252138%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice255461255462%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl252099252141%_))
                                  (_%__match255519255520%_
                                   _%e252091252118%_
                                   _%hd252092252122%_
                                   _%tl252093252125%_
                                   _%e252094252128%_
                                   _%hd252095252132%_
                                   _%tl252096252135%_
                                   _%__splice255461255462%_
                                   _%target252097252138%_
                                   _%tl252099252141%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g252064252111%_)))))
                          (let () (declare (not safe)) (_%g252064252111%_)))))
                   (_%__match255499255500%_
                    (lambda (_%e252068252201%_
                             _%hd252069252205%_
                             _%tl252070252208%_
                             _%e252071252211%_
                             _%hd252072252215%_
                             _%tl252073252218%_
                             _%e252074252221%_
                             _%hd252075252225%_
                             _%tl252076252228%_
                             _%e252077252231%_
                             _%hd252078252235%_
                             _%tl252079252238%_
                             _%__splice255457255458%_
                             _%target252080252241%_
                             _%tl252082252244%_)
                      (letrec ((_%loop252083252247%_
                                (lambda (_%hd252081252251%_
                                         _%sig252087252254%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd252081252251%_))
                                      (let ((_%e252084252256%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd252081252251%_))))
                                        (let ((_%lp-tl252086252263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252084252256%_)))
                                              (_%lp-hd252085252260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252084252256%_))))
                                          (_%loop252083252247%_
                                           _%lp-tl252086252263%_
                                           (cons _%lp-hd252085252260%_
                                                 _%sig252087252254%_))))
                                      (let ((_%sig252088252266%_
                                             (reverse _%sig252087252254%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl252076252228%_))
                                            (_%__kont255455255456%_
                                             _%sig252088252266%_
                                             _%hd252072252215%_)
                                            (_%__match255511255512%_
                                             _%e252068252201%_
                                             _%hd252069252205%_
                                             _%tl252070252208%_
                                             _%e252071252211%_
                                             _%hd252072252215%_
                                             _%tl252073252218%_)))))))
                        (_%loop252083252247%_ _%target252080252241%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx255452255453%_))
                  (let ((_%e252068252201%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx255452255453%_))))
                    (let ((_%tl252070252208%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e252068252201%_)))
                          (_%hd252069252205%_
                           (let ()
                             (declare (not safe))
                             (##car _%e252068252201%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl252070252208%_))
                          (let ((_%e252071252211%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl252070252208%_))))
                            (let ((_%tl252073252218%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252071252211%_)))
                                  (_%hd252072252215%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252071252211%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252073252218%_))
                                  (let ((_%e252074252221%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl252073252218%_))))
                                    (let ((_%tl252076252228%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252074252221%_)))
                                          (_%hd252075252225%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252074252221%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd252075252225%_))
                                          (let ((_%e252077252231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd252075252225%_))))
                                            (let ((_%tl252079252238%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e252077252231%_)))
                                                  (_%hd252078252235%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e252077252231%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd252078252235%_))
                                                  (if (let ((__tmp255886
                                                             |gxc[1]#_g255887_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp255886
                                                         _%hd252078252235%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl252079252238%_))
                                                          (let ((_%__splice255457255458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl252079252238%_
                            '0))))
                    (let ((_%tl252082252244%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice255457255458%_ '1)))
                          (_%target252080252241%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice255457255458%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl252082252244%_))
                          (_%__match255499255500%_
                           _%e252068252201%_
                           _%hd252069252205%_
                           _%tl252070252208%_
                           _%e252071252211%_
                           _%hd252072252215%_
                           _%tl252073252218%_
                           _%e252074252221%_
                           _%hd252075252225%_
                           _%tl252076252228%_
                           _%e252077252231%_
                           _%hd252078252235%_
                           _%tl252079252238%_
                           _%__splice255457255458%_
                           _%target252080252241%_
                           _%tl252082252244%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl252073252218%_))
                              (let ((_%__splice255461255462%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl252073252218%_
                                        '0))))
                                (let ((_%tl252099252141%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice255461255462%_
                                          '1)))
                                      (_%target252097252138%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice255461255462%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl252099252141%_))
                                      (_%__match255519255520%_
                                       _%e252068252201%_
                                       _%hd252069252205%_
                                       _%tl252070252208%_
                                       _%e252071252211%_
                                       _%hd252072252215%_
                                       _%tl252073252218%_
                                       _%__splice255461255462%_
                                       _%target252097252138%_
                                       _%tl252099252141%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g252064252111%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g252064252111%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl252073252218%_))
                      (let ((_%__splice255461255462%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl252073252218%_
                                '0))))
                        (let ((_%tl252099252141%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice255461255462%_ '1)))
                              (_%target252097252138%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice255461255462%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252099252141%_))
                              (_%__match255519255520%_
                               _%e252068252201%_
                               _%hd252069252205%_
                               _%tl252070252208%_
                               _%e252071252211%_
                               _%hd252072252215%_
                               _%tl252073252218%_
                               _%__splice255461255462%_
                               _%target252097252138%_
                               _%tl252099252141%_)
                              (let ()
                                (declare (not safe))
                                (_%g252064252111%_)))))
                      (let () (declare (not safe)) (_%g252064252111%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl252073252218%_))
                  (let ((_%__splice255461255462%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl252073252218%_
                            '0))))
                    (let ((_%tl252099252141%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice255461255462%_ '1)))
                          (_%target252097252138%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice255461255462%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl252099252141%_))
                          (_%__match255519255520%_
                           _%e252068252201%_
                           _%hd252069252205%_
                           _%tl252070252208%_
                           _%e252071252211%_
                           _%hd252072252215%_
                           _%tl252073252218%_
                           _%__splice255461255462%_
                           _%target252097252138%_
                           _%tl252099252141%_)
                          (let () (declare (not safe)) (_%g252064252111%_)))))
                  (let () (declare (not safe)) (_%g252064252111%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl252073252218%_))
                                                      (let ((_%__splice255461255462%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl252073252218%_
                        '0))))
                (let ((_%tl252099252141%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice255461255462%_ '1)))
                      (_%target252097252138%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice255461255462%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl252099252141%_))
                      (_%__match255519255520%_
                       _%e252068252201%_
                       _%hd252069252205%_
                       _%tl252070252208%_
                       _%e252071252211%_
                       _%hd252072252215%_
                       _%tl252073252218%_
                       _%__splice255461255462%_
                       _%target252097252138%_
                       _%tl252099252141%_)
                      (let () (declare (not safe)) (_%g252064252111%_)))))
              (let () (declare (not safe)) (_%g252064252111%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl252073252218%_))
                                              (let ((_%__splice255461255462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl252073252218%_
                                                        '0))))
                                                (let ((_%tl252099252141%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice255461255462%_
                                                          '1)))
                                                      (_%target252097252138%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice255461255462%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl252099252141%_))
                                                      (_%__match255519255520%_
                                                       _%e252068252201%_
                                                       _%hd252069252205%_
                                                       _%tl252070252208%_
                                                       _%e252071252211%_
                                                       _%hd252072252215%_
                                                       _%tl252073252218%_
                                                       _%__splice255461255462%_
                                                       _%target252097252138%_
                                                       _%tl252099252141%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g252064252111%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g252064252111%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl252073252218%_))
                                      (let ((_%__splice255461255462%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl252073252218%_
                                                '0))))
                                        (let ((_%tl252099252141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice255461255462%_
                                                  '1)))
                                              (_%target252097252138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice255461255462%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252099252141%_))
                                              (_%__match255519255520%_
                                               _%e252068252201%_
                                               _%hd252069252205%_
                                               _%tl252070252208%_
                                               _%e252071252211%_
                                               _%hd252072252215%_
                                               _%tl252073252218%_
                                               _%__splice255461255462%_
                                               _%target252097252138%_
                                               _%tl252099252141%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g252064252111%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g252064252111%_))))))
                          (let () (declare (not safe)) (_%g252064252111%_)))))
                  (let () (declare (not safe)) (_%g252064252111%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx253454%_ _%id253456%_)
        (let ((_%proc253460%_
               (let ((__tmp255888
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id253456%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp255888))))
          (if (procedure? _%proc253460%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx253454%_
                 _%id253456%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx253445%_ _%id253447%_)
        (let ((_%klass253451%_
               (let ((__tmp255889
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id253447%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp255889))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass253451%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx253445%_
                 _%id253447%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx252695%_ _%proc252697%_ _%sig252698%_)
        (letrec ((_%signature-arity252700%_
                  (lambda (_%args253377%_)
                    (let _%loop253380%_ ((_%rest253383%_ _%args253377%_)
                                         (_%count253385%_ '0))
                      (let* ((_%rest253386253397%_ _%rest253383%_)
                             (_%E253390253403%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest253386253397%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K253393253434%_
                               (lambda (_%rest253431%_)
                                 (_%loop253380%_
                                  _%rest253431%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count253385%_ '1)))))
                              (_%K253392253423%_ (lambda () _%count253385%_))
                              (_%K253391253411%_
                               (lambda () (cons _%count253385%_ '()))))
                          (let ((_%try-match253388253427%_
                                 (lambda ()
                                   (if (null? _%rest253386253397%_)
                                       (_%K253392253423%_)
                                       (_%K253391253411%_)))))
                            (if (pair? _%rest253386253397%_)
                                (let* ((_%tl253395253438%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest253386253397%_)))
                                       (_%rest253442%_ _%tl253395253438%_))
                                  (_%K253393253434%_ _%rest253442%_))
                                (_%try-match253388253427%_))))))))
                 (_%make-signature252702%_
                  (lambda (_%args253259%_
                           _%return253261%_
                           _%effect253262%_
                           _%unchecked253263%_)
                    (let ((__tmp255890
                           (lambda (_%g253264253266%_)
                             (|gxc[1]#verify-class!|
                              _%ctx252695%_
                              _%g253264253266%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp255890 _%args253259%_))
                    (|gxc[1]#verify-class!| _%ctx252695%_ _%return253261%_)
                    (if _%unchecked253263%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx252695%_
                         _%unchecked253263%_)
                        '#!void)
                    (let ((_%arity253270%_
                           (_%signature-arity252700%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args253259%_)))))
                      (if _%effect253262%_
                          (let ((_%effect253273%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect253262%_))))
                            (if (and (list? _%effect253273%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect253273%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx252695%_
                                   _%proc252697%_
                                   _%effect253273%_))))
                          '#!void)
                      (cons _%arity253270%_
                            (cons (let* ((_%g253276253299%_
                                          (lambda (_%g253277253295%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g253277253295%_))))
                                         (_%g253275253373%_
                                          (lambda (_%g253277253303%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g253277253303%_))
                                                (let ((_%e253282253306%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g253277253303%_))))
                                                  (let ((_%hd253283253310%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e253282253306%_)))
                                                        (_%tl253284253313%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e253282253306%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl253284253313%_))
                                                        (let ((_%e253285253316%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl253284253313%_))))
                  (let ((_%hd253286253320%_
                         (let ()
                           (declare (not safe))
                           (##car _%e253285253316%_)))
                        (_%tl253287253323%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e253285253316%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl253287253323%_))
                        (let ((_%e253288253326%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl253287253323%_))))
                          (let ((_%hd253289253330%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e253288253326%_)))
                                (_%tl253290253333%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e253288253326%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl253290253333%_))
                                (let ((_%e253291253336%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl253290253333%_))))
                                  (let ((_%hd253292253340%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e253291253336%_)))
                                        (_%tl253293253343%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e253291253336%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl253293253343%_))
                                        ((lambda (_%g253278253346%_
                                                  _%g253279253348%_
                                                  _%g253280253349%_
                                                  _%g253281253350%_)
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
                           (cons _%g253281253350%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g253280253349%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g253279253348%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g253278253346%_ '()))
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
                                         _%hd253292253340%_
                                         _%hd253289253330%_
                                         _%hd253286253320%_
                                         _%hd253283253310%_)
                                        (_%g253276253299%_
                                         _%g253277253303%_))))
                                (_%g253276253299%_ _%g253277253303%_))))
                        (_%g253276253299%_ _%g253277253303%_))))
                (_%g253276253299%_ _%g253277253303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g253276253299%_
                                                 _%g253277253303%_)))))
                                    (_%g253275253373%_
                                     (list _%args253259%_
                                           _%return253261%_
                                           _%effect253262%_
                                           _%unchecked253263%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx252695%_ _%proc252697%_)
          (let* ((_%__stx255530255531%_ _%sig252698%_)
                 (_%g252709252812%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx255530255531%_)))))
            (let ((_%__kont255533255534%_
                   (lambda (_%g252711253240%_ _%g252712253242%_)
                     (_%make-signature252702%_
                      _%g252712253242%_
                      _%g252711253240%_
                      '#f
                      '#f)))
                  (_%__kont255535255536%_
                   (lambda (_%g252719253191%_
                            _%g252720253193%_
                            _%g252721253194%_)
                     (_%make-signature252702%_
                      _%g252721253194%_
                      _%g252720253193%_
                      _%g252719253191%_
                      '#f)))
                  (_%__kont255537255538%_
                   (lambda (_%g252735253115%_
                            _%g252736253117%_
                            _%g252737253118%_)
                     (_%make-signature252702%_
                      _%g252737253118%_
                      _%g252736253117%_
                      _%g252735253115%_
                      (let ((__tmp255891
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc252697%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp255891)))))
                  (_%__kont255539255540%_
                   (lambda (_%g252755253021%_
                            _%g252756253023%_
                            _%g252757253024%_
                            _%g252758253025%_)
                     (_%make-signature252702%_
                      _%g252758253025%_
                      _%g252757253024%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g252755253021%_)))))
                  (_%__kont255541255542%_
                   (lambda (_%g252779252928%_ _%g252780252930%_)
                     (_%make-signature252702%_
                      _%g252780252930%_
                      _%g252779252928%_
                      '#f
                      (let ((__tmp255892
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc252697%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp255892)))))
                  (_%__kont255543255544%_
                   (lambda (_%g252791252863%_
                            _%g252792252865%_
                            _%g252793252866%_)
                     (_%make-signature252702%_
                      _%g252793252866%_
                      _%g252792252865%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g252791252863%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx255530255531%_))
                  (let ((_%e252713253220%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx255530255531%_))))
                    (let ((_%tl252715253227%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e252713253220%_)))
                          (_%hd252714253224%_
                           (let ()
                             (declare (not safe))
                             (##car _%e252713253220%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl252715253227%_))
                          (let ((_%e252716253230%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl252715253227%_))))
                            (let ((_%tl252718253237%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252716253230%_)))
                                  (_%hd252717253234%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252716253230%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl252718253237%_))
                                  (_%__kont255533255534%_
                                   _%hd252717253234%_
                                   _%hd252714253224%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl252718253237%_))
                                      (let ((_%e252728253167%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl252718253237%_))))
                                        (let ((_%tl252730253174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252728253167%_)))
                                              (_%hd252729253171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252728253167%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd252729253171%_))
                                              (let ((_%e252731253177%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd252729253171%_))))
                                                (if (equal? _%e252731253177%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl252730253174%_))
                                                        (let ((_%e252732253181%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl252730253174%_))))
                  (let ((_%tl252734253188%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e252732253181%_)))
                        (_%hd252733253185%_
                         (let ()
                           (declare (not safe))
                           (##car _%e252732253181%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl252734253188%_))
                        (_%__kont255535255536%_
                         _%hd252733253185%_
                         _%hd252717253234%_
                         _%hd252714253224%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl252734253188%_))
                            (let ((_%e252751253101%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl252734253188%_))))
                              (let ((_%tl252753253108%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e252751253101%_)))
                                    (_%hd252752253105%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e252751253101%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd252752253105%_))
                                    (let ((_%e252754253111%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd252752253105%_))))
                                      (if (equal? _%e252754253111%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252753253108%_))
                                              (_%__kont255537255538%_
                                               _%hd252733253185%_
                                               _%hd252717253234%_
                                               _%hd252714253224%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl252753253108%_))
                                                  (let ((_%e252776253011%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl252753253108%_))))
                                                    (let ((_%tl252778253018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e252776253011%_)))
                                                          (_%hd252777253015%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e252776253011%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl252778253018%_))
                                                          (_%__kont255539255540%_
                                                           _%hd252777253015%_
                                                           _%hd252733253185%_
                                                           _%hd252717253234%_
                                                           _%hd252714253224%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g252709252812%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g252709252812%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g252709252812%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g252709252812%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g252709252812%_))))))
                (let () (declare (not safe)) (_%g252709252812%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e252731253177%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl252730253174%_))
                                                            (_%__kont255541255542%_
                                                             _%hd252717253234%_
                                                             _%hd252714253224%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl252730253174%_))
                        (let ((_%e252804252853%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl252730253174%_))))
                          (let ((_%tl252806252860%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e252804252853%_)))
                                (_%hd252805252857%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e252804252853%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl252806252860%_))
                                (_%__kont255543255544%_
                                 _%hd252805252857%_
                                 _%hd252717253234%_
                                 _%hd252714253224%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g252709252812%_)))))
                        (let () (declare (not safe)) (_%g252709252812%_))))
                (let () (declare (not safe)) (_%g252709252812%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g252709252812%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g252709252812%_))))))
                          (let () (declare (not safe)) (_%g252709252812%_)))))
                  (let () (declare (not safe)) (_%g252709252812%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig252306%_)
        (let* ((_%g252309252389%_
                (lambda (_%g252310252385%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252310252385%_))))
               (_%g252308252691%_
                (lambda (_%g252310252393%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252310252393%_))
                      (let ((_%e252316252396%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g252310252393%_))))
                        (let ((_%hd252317252400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252316252396%_)))
                              (_%tl252318252403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252316252396%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl252318252403%_))
                              (let ((_%e252319252406%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl252318252403%_))))
                                (let ((_%hd252320252410%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e252319252406%_)))
                                      (_%tl252321252413%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e252319252406%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd252320252410%_))
                                      (let ((_%e252322252416%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd252320252410%_))))
                                        (if (equal? _%e252322252416%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl252321252413%_))
                                                (let ((_%e252323252420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl252321252413%_))))
                                                  (let ((_%hd252324252424%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e252323252420%_)))
                                                        (_%tl252325252427%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e252323252420%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd252324252424%_))
                                                        (let ((_%e252326252430%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd252324252424%_))))
                  (let ((_%hd252327252434%_
                         (let ()
                           (declare (not safe))
                           (##car _%e252326252430%_)))
                        (_%tl252328252437%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e252326252430%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd252327252434%_))
                        (if (let ((__tmp255893 |gxc[1]#_g255894_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp255893
                               _%hd252327252434%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl252328252437%_))
                                (let ((_%e252329252440%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl252328252437%_))))
                                  (let ((_%hd252330252444%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e252329252440%_)))
                                        (_%tl252331252447%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e252329252440%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl252331252447%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl252325252427%_))
                                            (let ((_%e252332252450%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl252325252427%_))))
                                              (let ((_%hd252333252454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e252332252450%_)))
                                                    (_%tl252334252457%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e252332252450%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd252333252454%_))
                                                    (let ((_%e252335252460%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd252333252454%_))))
                                                      (if (equal? _%e252335252460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl252334252457%_))
                      (let ((_%e252336252464%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl252334252457%_))))
                        (let ((_%hd252337252468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252336252464%_)))
                              (_%tl252338252471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252336252464%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd252337252468%_))
                              (let ((_%e252339252474%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd252337252468%_))))
                                (let ((_%hd252340252478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e252339252474%_)))
                                      (_%tl252341252481%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e252339252474%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd252340252478%_))
                                      (if (let ((__tmp255895
                                                 |gxc[1]#_g255896_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp255895
                                             _%hd252340252478%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl252341252481%_))
                                              (let ((_%e252342252484%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl252341252481%_))))
                                                (let ((_%hd252343252488%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e252342252484%_)))
                                                      (_%tl252344252491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e252342252484%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl252344252491%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl252338252471%_))
                                                          (let ((_%e252345252494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl252338252471%_))))
                    (let ((_%hd252346252498%_
                           (let ()
                             (declare (not safe))
                             (##car _%e252345252494%_)))
                          (_%tl252347252501%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e252345252494%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd252346252498%_))
                          (let ((_%e252348252504%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd252346252498%_))))
                            (if (equal? _%e252348252504%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl252347252501%_))
                                    (let ((_%e252349252508%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl252347252501%_))))
                                      (let ((_%hd252350252512%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e252349252508%_)))
                                            (_%tl252351252515%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e252349252508%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd252350252512%_))
                                            (let ((_%e252352252518%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd252350252512%_))))
                                              (let ((_%hd252353252522%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e252352252518%_)))
                                                    (_%tl252354252525%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e252352252518%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd252353252522%_))
                                                    (if (let ((__tmp255897
                                                               |gxc[1]#_g255898_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp255897
                                                           _%hd252353252522%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl252354252525%_))
                                                            (let ((_%e252355252528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl252354252525%_))))
                      (let ((_%hd252356252532%_
                             (let ()
                               (declare (not safe))
                               (##car _%e252355252528%_)))
                            (_%tl252357252535%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e252355252528%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl252357252535%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl252351252515%_))
                                (let ((_%e252358252538%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl252351252515%_))))
                                  (let ((_%hd252359252542%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e252358252538%_)))
                                        (_%tl252360252545%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e252358252538%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd252359252542%_))
                                        (let ((_%e252361252548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd252359252542%_))))
                                          (if (equal? _%e252361252548%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl252360252545%_))
                                                  (let ((_%e252362252552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl252360252545%_))))
                                                    (let ((_%hd252363252556%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e252362252552%_)))
                                                          (_%tl252364252559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e252362252552%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd252363252556%_))
                                                          (let ((_%e252365252562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd252363252556%_))))
                    (let ((_%hd252366252566%_
                           (let ()
                             (declare (not safe))
                             (##car _%e252365252562%_)))
                          (_%tl252367252569%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e252365252562%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd252366252566%_))
                          (if (let ((__tmp255899 |gxc[1]#_g255900_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp255899
                                 _%hd252366252566%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252367252569%_))
                                  (let ((_%e252368252572%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl252367252569%_))))
                                    (let ((_%hd252369252576%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252368252572%_)))
                                          (_%tl252370252579%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252368252572%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl252370252579%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl252364252559%_))
                                              (let ((_%e252371252582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl252364252559%_))))
                                                (let ((_%hd252372252586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e252371252582%_)))
                                                      (_%tl252373252589%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e252371252582%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd252372252586%_))
                                                      (let ((_%e252374252592%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd252372252586%_))))
                (if (equal? _%e252374252592%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl252373252589%_))
                        (let ((_%e252375252596%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl252373252589%_))))
                          (let ((_%hd252376252600%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e252375252596%_)))
                                (_%tl252377252603%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e252375252596%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd252376252600%_))
                                (let ((_%e252378252606%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd252376252600%_))))
                                  (let ((_%hd252379252610%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e252378252606%_)))
                                        (_%tl252380252613%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e252378252606%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd252379252610%_))
                                        (if (let ((__tmp255901
                                                   |gxc[1]#_g255902_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp255901
                                               _%hd252379252610%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl252380252613%_))
                                                (let ((_%e252381252616%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl252380252613%_))))
                                                  (let ((_%hd252382252620%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e252381252616%_)))
                                                        (_%tl252383252623%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e252381252616%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl252383252623%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl252377252603%_))
                                                            ((lambda (_%g252311252626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g252312252628%_
                              _%g252313252629%_
                              _%g252314252630%_
                              _%g252315252631%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g252312252628%_))
                           (cons _%g252312252628%_
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
                       (cons _%g252314252630%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g252311252626%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd252382252620%_
                     _%hd252369252576%_
                     _%hd252356252532%_
                     _%hd252343252488%_
                     _%hd252330252444%_)
                    (_%g252309252389%_ _%g252310252393%_))
                (_%g252309252389%_ _%g252310252393%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g252309252389%_
                                                 _%g252310252393%_))
                                            (_%g252309252389%_
                                             _%g252310252393%_))
                                        (_%g252309252389%_
                                         _%g252310252393%_))))
                                (_%g252309252389%_ _%g252310252393%_))))
                        (_%g252309252389%_ _%g252310252393%_))
                    (_%g252309252389%_ _%g252310252393%_)))
              (_%g252309252389%_ _%g252310252393%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g252309252389%_
                                               _%g252310252393%_))
                                          (_%g252309252389%_
                                           _%g252310252393%_))))
                                  (_%g252309252389%_ _%g252310252393%_))
                              (_%g252309252389%_ _%g252310252393%_))
                          (_%g252309252389%_ _%g252310252393%_))))
                  (_%g252309252389%_ _%g252310252393%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g252309252389%_
                                                   _%g252310252393%_))
                                              (_%g252309252389%_
                                               _%g252310252393%_)))
                                        (_%g252309252389%_
                                         _%g252310252393%_))))
                                (_%g252309252389%_ _%g252310252393%_))
                            (_%g252309252389%_ _%g252310252393%_))))
                    (_%g252309252389%_ _%g252310252393%_))
                (_%g252309252389%_ _%g252310252393%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g252309252389%_
                                                     _%g252310252393%_))))
                                            (_%g252309252389%_
                                             _%g252310252393%_))))
                                    (_%g252309252389%_ _%g252310252393%_))
                                (_%g252309252389%_ _%g252310252393%_)))
                          (_%g252309252389%_ _%g252310252393%_))))
                  (_%g252309252389%_ _%g252310252393%_))
              (_%g252309252389%_ _%g252310252393%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g252309252389%_
                                               _%g252310252393%_))
                                          (_%g252309252389%_
                                           _%g252310252393%_))
                                      (_%g252309252389%_ _%g252310252393%_))))
                              (_%g252309252389%_ _%g252310252393%_))))
                      (_%g252309252389%_ _%g252310252393%_))
                  (_%g252309252389%_ _%g252310252393%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g252309252389%_
                                                     _%g252310252393%_))))
                                            (_%g252309252389%_
                                             _%g252310252393%_))
                                        (_%g252309252389%_
                                         _%g252310252393%_))))
                                (_%g252309252389%_ _%g252310252393%_))
                            (_%g252309252389%_ _%g252310252393%_))
                        (_%g252309252389%_ _%g252310252393%_))))
                (_%g252309252389%_ _%g252310252393%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g252309252389%_
                                                 _%g252310252393%_))
                                            (_%g252309252389%_
                                             _%g252310252393%_)))
                                      (_%g252309252389%_ _%g252310252393%_))))
                              (_%g252309252389%_ _%g252310252393%_))))
                      (_%g252309252389%_ _%g252310252393%_)))))
          (_%g252308252691%_ _%sig252306%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx253463%_)
        (let* ((_%g253466253484%_
                (lambda (_%g253467253480%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253467253480%_))))
               (_%g253465253539%_
                (lambda (_%g253467253488%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253467253488%_))
                      (let ((_%e253470253491%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g253467253488%_))))
                        (let ((_%hd253471253495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253470253491%_)))
                              (_%tl253472253498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253470253491%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl253472253498%_))
                              (let ((_%e253473253501%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl253472253498%_))))
                                (let ((_%hd253474253505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e253473253501%_)))
                                      (_%tl253475253508%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e253473253501%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl253475253508%_))
                                      (let ((_%e253476253511%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl253475253508%_))))
                                        (let ((_%hd253477253515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253476253511%_)))
                                              (_%tl253478253518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253476253511%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253478253518%_))
                                              ((lambda (_%g253468253521%_
                                                        _%g253469253523%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g253469253523%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g253468253521%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx253463%_
                                                        _%g253469253523%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx253463%_
                                                        _%g253468253521%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g253469253523%_
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
                                                   (cons _%g253468253521%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g253466253484%_
                                                      _%g253467253488%_)))
                                               _%hd253477253515%_
                                               _%hd253474253505%_)
                                              (_%g253466253484%_
                                               _%g253467253488%_))))
                                      (_%g253466253484%_ _%g253467253488%_))))
                              (_%g253466253484%_ _%g253467253488%_))))
                      (_%g253466253484%_ _%g253467253488%_)))))
          (_%g253465253539%_ _%stx253463%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx253543%_)
        (let* ((_%g253546253570%_
                (lambda (_%g253547253566%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253547253566%_))))
               (_%g253545253851%_
                (lambda (_%g253547253574%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253547253574%_))
                      (let ((_%e253550253577%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g253547253574%_))))
                        (let ((_%hd253551253581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253550253577%_)))
                              (_%tl253552253584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253550253577%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl253552253584%_))
                              (let ((_%e253553253587%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl253552253584%_))))
                                (let ((_%hd253554253591%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e253553253587%_)))
                                      (_%tl253555253594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e253553253587%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl253555253594%_))
                                      (let ((_g255903_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl253555253594%_
                                                '0))))
                                        (begin
                                          (let ((_g255904_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g255903_)
                                                       (##values-length
                                                        _g255903_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g255904_ 2)))
                                                (error "Context expects 2 values"
                                                       _g255904_)))
                                          (let ((_%target253556253597%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g255903_ 0)))
                                                (_%tl253558253600%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g255903_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl253558253600%_))
                                                (letrec ((_%loop253559253603%_
                                                          (lambda (_%hd253557253607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature253563253610%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd253557253607%_))
                        (let ((_%e253560253612%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd253557253607%_))))
                          (let ((_%lp-hd253561253616%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e253560253612%_)))
                                (_%lp-tl253562253619%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e253560253612%_))))
                            (_%loop253559253603%_
                             _%lp-tl253562253619%_
                             (cons _%lp-hd253561253616%_
                                   _%signature253563253610%_))))
                        (let ((_%signature253564253622%_
                               (reverse _%signature253563253610%_)))
                          ((lambda (_%g253548253625%_ _%g253549253627%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g253549253627%_))
                                 (let* ((_%g253645253660%_
                                         (lambda (_%g253646253656%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g253646253656%_))))
                                        (_%g253644253839%_
                                         (lambda (_%g253646253664%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g253646253664%_))
                                               (let ((_%e253649253667%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g253646253664%_))))
                                                 (let ((_%hd253650253671%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e253649253667%_)))
                                                       (_%tl253651253674%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e253649253667%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl253651253674%_))
                                                       (let ((_%e253652253677%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl253651253674%_))))
                 (let ((_%hd253653253681%_
                        (let ()
                          (declare (not safe))
                          (##car _%e253652253677%_)))
                       (_%tl253654253684%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e253652253677%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl253654253684%_))
                       ((lambda (_%g253647253687%_ _%g253648253689%_)
                          (let* ((_%g253705253713%_
                                  (lambda (_%g253706253709%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g253706253709%_))))
                                 (_%g253704253835%_
                                  (lambda (_%g253706253717%_)
                                    ((lambda (_%g253707253720%_)
                                       (let* ((_%unchecked253733%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g253647253687%_))
                                              (_%g253736253744%_
                                               (lambda (_%g253737253740%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g253737253740%_))))
                                              (_%g253735253767%_
                                               (lambda (_%g253737253748%_)
                                                 ((lambda (_%g253738253751%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g253707253720%_
                                                                (cons _%g253738253751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g253737253748%_))))
                                         (_%g253735253767%_
                                          (if _%unchecked253733%_
                                              (let* ((_%g253771253786%_
                                                      (lambda (_%g253772253782%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g253772253782%_))))
                                                     (_%g253770253831%_
                                                      (lambda (_%g253772253790%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g253772253790%_))
                                                            (let ((_%e253775253793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g253772253790%_))))
                      (let ((_%hd253776253797%_
                             (let ()
                               (declare (not safe))
                               (##car _%e253775253793%_)))
                            (_%tl253777253800%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e253775253793%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl253777253800%_))
                            (let ((_%e253778253803%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl253777253800%_))))
                              (let ((_%hd253779253807%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e253778253803%_)))
                                    (_%tl253780253810%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e253778253803%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl253780253810%_))
                                    ((lambda (_%g253773253813%_
                                              _%g253774253815%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g253774253815%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g253648253689%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g253773253813%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd253779253807%_
                                     _%hd253776253797%_)
                                    (_%g253771253786%_ _%g253772253790%_))))
                            (_%g253771253786%_ _%g253772253790%_))))
                    (_%g253771253786%_ _%g253772253790%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g253770253831%_
                                                 _%unchecked253733%_))
                                              '(begin)))))
                                     _%g253706253717%_))))
                            (_%g253704253835%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g253549253627%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g253648253689%_ '()))
                   (cons '#f (cons 'signature: (cons _%g253647253687%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd253653253681%_
                        _%hd253650253671%_)
                       (_%g253645253660%_ _%g253646253664%_))))
               (_%g253645253660%_ _%g253646253664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g253645253660%_
                                                _%g253646253664%_)))))
                                   (_%g253644253839%_
                                    (|gxc[1]#parse-signature|
                                     _%stx253543%_
                                     _%g253549253627%_
                                     (let ((__tmp255905
                                            (lambda (_%g253842253845%_
                                                     _%g253843253848%_)
                                              (cons _%g253842253845%_
                                                    _%g253843253848%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp255905
                                        '()
                                        _%g253548253625%_)))))
                                 (_%g253546253570%_ _%g253547253574%_)))
                           _%signature253564253622%_
                           _%hd253554253591%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop253559253603%_
                                                   _%target253556253597%_
                                                   '()))
                                                (_%g253546253570%_
                                                 _%g253547253574%_)))))
                                      (_%g253546253570%_ _%g253547253574%_))))
                              (_%g253546253570%_ _%g253547253574%_))))
                      (_%g253546253570%_ _%g253547253574%_)))))
          (_%g253545253851%_ _%stx253543%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx253856%_)
        (let* ((_%g253859253883%_
                (lambda (_%g253860253879%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253860253879%_))))
               (_%g253858254758%_
                (lambda (_%g253860253887%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253860253887%_))
                      (let ((_%e253863253890%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g253860253887%_))))
                        (let ((_%hd253864253894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253863253890%_)))
                              (_%tl253865253897%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253863253890%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl253865253897%_))
                              (let ((_%e253866253900%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl253865253897%_))))
                                (let ((_%hd253867253904%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e253866253900%_)))
                                      (_%tl253868253907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e253866253900%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl253868253907%_))
                                      (let ((_g255906_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl253868253907%_
                                                '0))))
                                        (begin
                                          (let ((_g255907_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g255906_)
                                                       (##values-length
                                                        _g255906_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g255907_ 2)))
                                                (error "Context expects 2 values"
                                                       _g255907_)))
                                          (let ((_%target253869253910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g255906_ 0)))
                                                (_%tl253871253913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g255906_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl253871253913%_))
                                                (letrec ((_%loop253872253916%_
                                                          (lambda (_%hd253870253920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature253876253923%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd253870253920%_))
                        (let ((_%e253873253925%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd253870253920%_))))
                          (let ((_%lp-hd253874253929%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e253873253925%_)))
                                (_%lp-tl253875253932%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e253873253925%_))))
                            (_%loop253872253916%_
                             _%lp-tl253875253932%_
                             (cons _%lp-hd253874253929%_
                                   _%case-signature253876253923%_))))
                        (let ((_%case-signature253877253935%_
                               (reverse _%case-signature253876253923%_)))
                          ((lambda (_%g253861253938%_ _%g253862253940%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g253862253940%_))
                                 (let* ((_%signatures253971%_
                                         (map (lambda (_%g253957253959%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx253856%_
                                                 _%g253862253940%_
                                                 _%g253957253959%_))
                                              (let ((__tmp255908
                                                     (lambda (_%g253962253965%_
                                                              _%g253963253968%_)
                                                       (cons _%g253962253965%_
                                                             _%g253963253968%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp255908
                                                 '()
                                                 _%g253861253938%_))))
                                        (_%g253974254000%_
                                         (lambda (_%g253975253996%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g253975253996%_))))
                                        (_%g253973254754%_
                                         (lambda (_%g253975254004%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g253975254004%_))
                                               (let ((_g255909_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g253975254004%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g255910_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g255909_)
                        (##values-length _g255909_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g255910_ 2)))
                 (error "Context expects 2 values" _g255910_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target253978254007%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g255909_
                                                             0)))
                                                         (_%tl253980254010%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g255909_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl253980254010%_))
                                                         (letrec ((_%loop253981254013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd253979254017%_
                                    _%sig253985254020%_
                                    _%arity253986254021%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd253979254017%_))
                                 (let ((_%e253982254023%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd253979254017%_))))
                                   (let ((_%lp-hd253983254027%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e253982254023%_)))
                                         (_%lp-tl253984254030%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e253982254023%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd253983254027%_))
                                         (let ((_%e253989254033%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd253983254027%_))))
                                           (let ((_%hd253990254037%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e253989254033%_)))
                                                 (_%tl253991254040%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e253989254033%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl253991254040%_))
                                                 (let ((_%e253992254043%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl253991254040%_))))
                                                   (let ((_%hd253993254047%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e253992254043%_)))
                                                         (_%tl253994254050%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e253992254043%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl253994254050%_))
                                                         (_%loop253981254013%_
                                                          _%lp-tl253984254030%_
                                                          (cons _%hd253993254047%_
                                                                _%sig253985254020%_)
                                                          (cons _%hd253990254037%_
                                                                _%arity253986254021%_))
                                                         (_%g253974254000%_
                                                          _%g253975254004%_))))
                                                 (_%g253974254000%_
                                                  _%g253975254004%_))))
                                         (_%g253974254000%_
                                          _%g253975254004%_))))
                                 (let ((_%sig253987254053%_
                                        (reverse _%sig253985254020%_))
                                       (_%arity253988254055%_
                                        (reverse _%arity253986254021%_)))
                                   ((lambda (_%g253976254057%_
                                             _%g253977254059%_)
                                      (let* ((_%g254076254084%_
                                              (lambda (_%g254077254080%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g254077254080%_))))
                                             (_%g254075254739%_
                                              (lambda (_%g254077254088%_)
                                                ((lambda (_%g254078254091%_)
                                                   (let* ((_%g254104254112%_
                                                           (lambda (_%g254105254108%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g254105254108%_))))
                  (_%g254103254134%_
                   (lambda (_%g254105254116%_)
                     ((lambda (_%g254106254119%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g254078254091%_
                                    (cons _%g254106254119%_ '()))))
                      _%g254105254116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g254103254134%_
                                                      (let ((_g255911_
                                                             (let _%loop254138%_ ((_%rest254141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures253971%_)
                                          (_%unchecked-proc254143%_ '#f)
                                          (_%unchecked-clauses254144%_ '()))
                       (let* ((_%rest254145254153%_ _%rest254141%_)
                              (_%else254147254165%_
                               (lambda ()
                                 (values _%unchecked-proc254143%_
                                         (reverse!
                                          _%unchecked-clauses254144%_))))
                              (_%K254149254606%_
                               (lambda (_%rest254169%_ _%hd254171%_)
                                 (let* ((_%g254173254260%_
                                         (lambda (_%g254174254256%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g254174254256%_))))
                                        (_%g254172254602%_
                                         (lambda (_%g254174254264%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g254174254264%_))
                                               (let ((_%e254181254267%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g254174254264%_))))
                                                 (let ((_%hd254182254271%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e254181254267%_)))
                                                       (_%tl254183254274%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e254181254267%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl254183254274%_))
                                                       (let ((_%e254184254277%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl254183254274%_))))
                 (let ((_%hd254185254281%_
                        (let ()
                          (declare (not safe))
                          (##car _%e254184254277%_)))
                       (_%tl254186254284%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e254184254277%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd254185254281%_))
                       (let ((_%e254187254287%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd254185254281%_))))
                         (let ((_%hd254188254291%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e254187254287%_)))
                               (_%tl254189254294%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e254187254287%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl254189254294%_))
                               (let ((_%e254190254297%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl254189254294%_))))
                                 (let ((_%hd254191254301%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e254190254297%_)))
                                       (_%tl254192254304%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e254190254297%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd254191254301%_))
                                       (let ((_%e254193254307%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd254191254301%_))))
                                         (if (equal? _%e254193254307%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl254192254304%_))
                                                 (let ((_%e254194254311%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl254192254304%_))))
                                                   (let ((_%hd254195254315%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e254194254311%_)))
                                                         (_%tl254196254318%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e254194254311%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd254195254315%_))
                                                         (let ((_%e254197254321%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd254195254315%_))))
                   (let ((_%hd254198254325%_
                          (let ()
                            (declare (not safe))
                            (##car _%e254197254321%_)))
                         (_%tl254199254328%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e254197254321%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd254198254325%_))
                         (if (let ((__tmp255913 |gxc[1]#_g255914_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp255913
                                _%hd254198254325%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl254199254328%_))
                                 (let ((_%e254200254331%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl254199254328%_))))
                                   (let ((_%hd254201254335%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e254200254331%_)))
                                         (_%tl254202254338%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e254200254331%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl254202254338%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl254196254318%_))
                                             (let ((_%e254203254341%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl254196254318%_))))
                                               (let ((_%hd254204254345%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e254203254341%_)))
                                                     (_%tl254205254348%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e254203254341%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd254204254345%_))
                                                     (let ((_%e254206254351%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd254204254345%_))))
                                                       (if (equal? _%e254206254351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl254205254348%_))
                       (let ((_%e254207254355%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl254205254348%_))))
                         (let ((_%hd254208254359%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e254207254355%_)))
                               (_%tl254209254362%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e254207254355%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd254208254359%_))
                               (let ((_%e254210254365%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd254208254359%_))))
                                 (let ((_%hd254211254369%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e254210254365%_)))
                                       (_%tl254212254372%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e254210254365%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd254211254369%_))
                                       (if (let ((__tmp255915
                                                  |gxc[1]#_g255916_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp255915
                                              _%hd254211254369%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl254212254372%_))
                                               (let ((_%e254213254375%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl254212254372%_))))
                                                 (let ((_%hd254214254379%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e254213254375%_)))
                                                       (_%tl254215254382%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e254213254375%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl254215254382%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl254209254362%_))
                                                           (let ((_%e254216254385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl254209254362%_))))
                     (let ((_%hd254217254389%_
                            (let ()
                              (declare (not safe))
                              (##car _%e254216254385%_)))
                           (_%tl254218254392%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e254216254385%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd254217254389%_))
                           (let ((_%e254219254395%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd254217254389%_))))
                             (if (equal? _%e254219254395%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl254218254392%_))
                                     (let ((_%e254220254399%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl254218254392%_))))
                                       (let ((_%hd254221254403%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e254220254399%_)))
                                             (_%tl254222254406%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e254220254399%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd254221254403%_))
                                             (let ((_%e254223254409%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd254221254403%_))))
                                               (let ((_%hd254224254413%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e254223254409%_)))
                                                     (_%tl254225254416%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e254223254409%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd254224254413%_))
                                                     (if (let ((__tmp255917
                                                                |gxc[1]#_g255918_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp255917
                                                            _%hd254224254413%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl254225254416%_))
                     (let ((_%e254226254419%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl254225254416%_))))
                       (let ((_%hd254227254423%_
                              (let ()
                                (declare (not safe))
                                (##car _%e254226254419%_)))
                             (_%tl254228254426%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e254226254419%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl254228254426%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl254222254406%_))
                                 (let ((_%e254229254429%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl254222254406%_))))
                                   (let ((_%hd254230254433%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e254229254429%_)))
                                         (_%tl254231254436%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e254229254429%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd254230254433%_))
                                         (let ((_%e254232254439%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd254230254433%_))))
                                           (if (equal? _%e254232254439%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl254231254436%_))
                                                   (let ((_%e254233254443%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl254231254436%_))))
                                                     (let ((_%hd254234254447%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e254233254443%_)))
                                                           (_%tl254235254450%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e254233254443%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd254234254447%_))
                                                           (let ((_%e254236254453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd254234254447%_))))
                     (let ((_%hd254237254457%_
                            (let ()
                              (declare (not safe))
                              (##car _%e254236254453%_)))
                           (_%tl254238254460%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e254236254453%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd254237254457%_))
                           (if (let ((__tmp255919 |gxc[1]#_g255920_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp255919
                                  _%hd254237254457%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl254238254460%_))
                                   (let ((_%e254239254463%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl254238254460%_))))
                                     (let ((_%hd254240254467%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e254239254463%_)))
                                           (_%tl254241254470%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e254239254463%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl254241254470%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl254235254450%_))
                                               (let ((_%e254242254473%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl254235254450%_))))
                                                 (let ((_%hd254243254477%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e254242254473%_)))
                                                       (_%tl254244254480%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e254242254473%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd254243254477%_))
                                                       (let ((_%e254245254483%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd254243254477%_))))
                 (if (equal? _%e254245254483%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl254244254480%_))
                         (let ((_%e254246254487%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl254244254480%_))))
                           (let ((_%hd254247254491%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e254246254487%_)))
                                 (_%tl254248254494%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e254246254487%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd254247254491%_))
                                 (let ((_%e254249254497%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd254247254491%_))))
                                   (let ((_%hd254250254501%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e254249254497%_)))
                                         (_%tl254251254504%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e254249254497%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd254250254501%_))
                                         (if (let ((__tmp255921
                                                    |gxc[1]#_g255922_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp255921
                                                _%hd254250254501%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl254251254504%_))
                                                 (let ((_%e254252254507%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl254251254504%_))))
                                                   (let ((_%hd254253254511%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e254252254507%_)))
                                                         (_%tl254254254514%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e254252254507%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl254254254514%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl254248254494%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl254186254284%_))
                         ((lambda (_%g254175254517%_
                                   _%g254176254519%_
                                   _%g254177254520%_
                                   _%g254178254521%_
                                   _%g254179254522%_
                                   _%g254180254523%_)
                            (let ((_%clause254594%_
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
                                                     (cons _%g254180254523%_
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
                                                 (cons _%g254178254521%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g254175254517%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked254596%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g254176254519%_))))
                              (_%loop254138%_
                               _%rest254169%_
                               (let ((_%$e254598%_ _%unchecked254596%_))
                                 (if _%$e254598%_
                                     _%$e254598%_
                                     _%unchecked-proc254143%_))
                               (cons _%clause254594%_
                                     _%unchecked-clauses254144%_))))
                          _%hd254253254511%_
                          _%hd254240254467%_
                          _%hd254227254423%_
                          _%hd254214254379%_
                          _%hd254201254335%_
                          _%hd254182254271%_)
                         (_%g254173254260%_ _%g254174254264%_))
                     (_%g254173254260%_ _%g254174254264%_))
                 (_%g254173254260%_ _%g254174254264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g254173254260%_
                                                  _%g254174254264%_))
                                             (_%g254173254260%_
                                              _%g254174254264%_))
                                         (_%g254173254260%_
                                          _%g254174254264%_))))
                                 (_%g254173254260%_ _%g254174254264%_))))
                         (_%g254173254260%_ _%g254174254264%_))
                     (_%g254173254260%_ _%g254174254264%_)))
               (_%g254173254260%_ _%g254174254264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g254173254260%_
                                                _%g254174254264%_))
                                           (_%g254173254260%_
                                            _%g254174254264%_))))
                                   (_%g254173254260%_ _%g254174254264%_))
                               (_%g254173254260%_ _%g254174254264%_))
                           (_%g254173254260%_ _%g254174254264%_))))
                   (_%g254173254260%_ _%g254174254264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g254173254260%_
                                                    _%g254174254264%_))
                                               (_%g254173254260%_
                                                _%g254174254264%_)))
                                         (_%g254173254260%_
                                          _%g254174254264%_))))
                                 (_%g254173254260%_ _%g254174254264%_))
                             (_%g254173254260%_ _%g254174254264%_))))
                     (_%g254173254260%_ _%g254174254264%_))
                 (_%g254173254260%_ _%g254174254264%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g254173254260%_
                                                      _%g254174254264%_))))
                                             (_%g254173254260%_
                                              _%g254174254264%_))))
                                     (_%g254173254260%_ _%g254174254264%_))
                                 (_%g254173254260%_ _%g254174254264%_)))
                           (_%g254173254260%_ _%g254174254264%_))))
                   (_%g254173254260%_ _%g254174254264%_))
               (_%g254173254260%_ _%g254174254264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g254173254260%_
                                                _%g254174254264%_))
                                           (_%g254173254260%_
                                            _%g254174254264%_))
                                       (_%g254173254260%_ _%g254174254264%_))))
                               (_%g254173254260%_ _%g254174254264%_))))
                       (_%g254173254260%_ _%g254174254264%_))
                   (_%g254173254260%_ _%g254174254264%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g254173254260%_
                                                      _%g254174254264%_))))
                                             (_%g254173254260%_
                                              _%g254174254264%_))
                                         (_%g254173254260%_
                                          _%g254174254264%_))))
                                 (_%g254173254260%_ _%g254174254264%_))
                             (_%g254173254260%_ _%g254174254264%_))
                         (_%g254173254260%_ _%g254174254264%_))))
                 (_%g254173254260%_ _%g254174254264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g254173254260%_
                                                  _%g254174254264%_))
                                             (_%g254173254260%_
                                              _%g254174254264%_)))
                                       (_%g254173254260%_ _%g254174254264%_))))
                               (_%g254173254260%_ _%g254174254264%_))))
                       (_%g254173254260%_ _%g254174254264%_))))
               (_%g254173254260%_ _%g254174254264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g254173254260%_
                                                _%g254174254264%_)))))
                                   (_%g254172254602%_ _%hd254171%_)))))
                         (if (pair? _%rest254145254153%_)
                             (let ((_%hd254150254610%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest254145254153%_)))
                                   (_%tl254151254613%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest254145254153%_))))
                               (let* ((_%hd254616%_ _%hd254150254610%_)
                                      (_%rest254619%_ _%tl254151254613%_))
                                 (_%K254149254606%_
                                  _%rest254619%_
                                  _%hd254616%_)))
                             (_%else254147254165%_))))))
                (begin
                  (let ((_g255912_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g255911_)
                               (##values-length _g255911_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g255912_ 2)))
                        (error "Context expects 2 values" _g255912_)))
                  (let ((_%unchecked-proc254622%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g255911_ 0)))
                        (_%unchecked-clauses254624%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g255911_ 1))))
                    (if _%unchecked-proc254622%_
                        (let* ((_%g254626254650%_
                                (lambda (_%g254627254646%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g254627254646%_))))
                               (_%g254625254735%_
                                (lambda (_%g254627254654%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g254627254654%_))
                                      (let ((_%e254630254657%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g254627254654%_))))
                                        (let ((_%hd254631254661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e254630254657%_)))
                                              (_%tl254632254664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e254630254657%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl254632254664%_))
                                              (let ((_%e254633254667%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl254632254664%_))))
                                                (let ((_%hd254634254671%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e254633254667%_)))
                                                      (_%tl254635254674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e254633254667%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd254634254671%_))
                                                      (let ((_g255923_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd254634254671%_ '0))))
                (begin
                  (let ((_g255924_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g255923_)
                               (##values-length _g255923_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g255924_ 2)))
                        (error "Context expects 2 values" _g255924_)))
                  (let ((_%target254636254677%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g255923_ 0)))
                        (_%tl254638254680%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g255923_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl254638254680%_))
                        (letrec ((_%loop254639254683%_
                                  (lambda (_%hd254637254687%_
                                           _%clause254643254690%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd254637254687%_))
                                        (let ((_%e254640254692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd254637254687%_))))
                                          (let ((_%lp-hd254641254696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e254640254692%_)))
                                                (_%lp-tl254642254699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e254640254692%_))))
                                            (_%loop254639254683%_
                                             _%lp-tl254642254699%_
                                             (cons _%lp-hd254641254696%_
                                                   _%clause254643254690%_))))
                                        (let ((_%clause254644254702%_
                                               (reverse _%clause254643254690%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl254635254674%_))
                                              ((lambda (_%g254628254705%_
                                                        _%g254629254707%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g254629254707%_
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
                                             (let ((__tmp255925
                                                    (lambda (_%g254726254729%_
                                                             _%g254727254732%_)
                                                      (cons _%g254726254729%_
                                                            _%g254727254732%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp255925
                                                '()
                                                _%g254628254705%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause254644254702%_
                                               _%hd254631254661%_)
                                              (_%g254626254650%_
                                               _%g254627254654%_)))))))
                          (_%loop254639254683%_ _%target254636254677%_ '()))
                        (_%g254626254650%_ _%g254627254654%_)))))
              (_%g254626254650%_ _%g254627254654%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g254626254650%_
                                               _%g254627254654%_))))
                                      (_%g254626254650%_ _%g254627254654%_)))))
                          (_%g254625254735%_
                           (list _%unchecked-proc254622%_
                                 _%unchecked-clauses254624%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g254077254088%_))))
                                        (_%g254075254739%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g253862253940%_
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
                                          _%g253976254057%_
                                          _%g253977254059%_))
                                       (let ((__tmp255926
                                              (lambda (_%g254742254746%_
                                                       _%g254743254749%_
                                                       _%g254744254751%_)
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
                                (cons _%g254743254749%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g254742254746%_ '())))))
              _%g254744254751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp255926
                                          '()
                                          _%g253976254057%_
                                          _%g253977254059%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig253987254053%_
                                    _%arity253988254055%_))))))
                   (_%loop253981254013%_ _%target253978254007%_ '() '()))
                 (_%g253974254000%_ _%g253975254004%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g253974254000%_
                                                _%g253975254004%_)))))
                                   (_%g253973254754%_ _%signatures253971%_))
                                 (_%g253859253883%_ _%g253860253887%_)))
                           _%case-signature253877253935%_
                           _%hd253867253904%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop253872253916%_
                                                   _%target253869253910%_
                                                   '()))
                                                (_%g253859253883%_
                                                 _%g253860253887%_)))))
                                      (_%g253859253883%_ _%g253860253887%_))))
                              (_%g253859253883%_ _%g253860253887%_))))
                      (_%g253859253883%_ _%g253860253887%_)))))
          (_%g253858254758%_ _%stx253856%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx254766%_)
        (let* ((_%__stx255746255747%_ _%$stx254766%_)
               (_%g254772254832%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255746255747%_)))))
          (let ((_%__kont255749255750%_
                 (lambda (_%g254774255054%_ _%g254775255056%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g254775255056%_ '()))
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
                                                       (cons _%g254775255056%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g254774255054%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont255751255752%_
                 (lambda (_%g254789254979%_
                          _%g254790254981%_
                          _%g254791254982%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g254791254982%_ '()))
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
                                                       (cons _%g254791254982%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g254790254981%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g254789254979%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont255753255754%_
                 (lambda (_%g254808254893%_
                          _%g254809254895%_
                          _%g254810254896%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g254810254896%_ '()))
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
                                                       (cons _%g254810254896%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g254809254895%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g254808254893%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx255746255747%_))
                (let ((_%e254776255010%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx255746255747%_))))
                  (let ((_%tl254778255017%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e254776255010%_)))
                        (_%hd254777255014%_
                         (let ()
                           (declare (not safe))
                           (##car _%e254776255010%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl254778255017%_))
                        (let ((_%e254779255020%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl254778255017%_))))
                          (let ((_%tl254781255027%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e254779255020%_)))
                                (_%hd254780255024%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e254779255020%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd254780255024%_))
                                (let ((_%e254782255030%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd254780255024%_))))
                                  (if (equal? _%e254782255030%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl254781255027%_))
                                          (let ((_%e254783255034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl254781255027%_))))
                                            (let ((_%tl254785255041%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e254783255034%_)))
                                                  (_%hd254784255038%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e254783255034%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl254785255041%_))
                                                  (let ((_%e254786255044%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl254785255041%_))))
                                                    (let ((_%tl254788255051%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e254786255044%_)))
                                                          (_%hd254787255048%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e254786255044%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl254788255051%_))
                                                          (_%__kont255749255750%_
                                                           _%hd254787255048%_
                                                           _%hd254784255038%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g254772254832%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g254772254832%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g254772254832%_)))
                                      (if (equal? _%e254782255030%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl254781255027%_))
                                              (let ((_%e254799254949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl254781255027%_))))
                                                (let ((_%tl254801254956%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e254799254949%_)))
                                                      (_%hd254800254953%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e254799254949%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl254801254956%_))
                                                      (let ((_%e254802254959%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl254801254956%_))))
                (let ((_%tl254804254966%_
                       (let () (declare (not safe)) (##cdr _%e254802254959%_)))
                      (_%hd254803254963%_
                       (let ()
                         (declare (not safe))
                         (##car _%e254802254959%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl254804254966%_))
                      (let ((_%e254805254969%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl254804254966%_))))
                        (let ((_%tl254807254976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254805254969%_)))
                              (_%hd254806254973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254805254969%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254807254976%_))
                              (_%__kont255751255752%_
                               _%hd254806254973%_
                               _%hd254803254963%_
                               _%hd254800254953%_)
                              (let ()
                                (declare (not safe))
                                (_%g254772254832%_)))))
                      (let () (declare (not safe)) (_%g254772254832%_)))))
              (let () (declare (not safe)) (_%g254772254832%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g254772254832%_)))
                                          (if (equal? _%e254782255030%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl254781255027%_))
                                                  (let ((_%e254818254863%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl254781255027%_))))
                                                    (let ((_%tl254820254870%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e254818254863%_)))
                                                          (_%hd254819254867%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e254818254863%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl254820254870%_))
                                                          (let ((_%e254821254873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl254820254870%_))))
                    (let ((_%tl254823254880%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e254821254873%_)))
                          (_%hd254822254877%_
                           (let ()
                             (declare (not safe))
                             (##car _%e254821254873%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl254823254880%_))
                          (let ((_%e254824254883%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl254823254880%_))))
                            (let ((_%tl254826254890%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254824254883%_)))
                                  (_%hd254825254887%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254824254883%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl254826254890%_))
                                  (_%__kont255753255754%_
                                   _%hd254825254887%_
                                   _%hd254822254877%_
                                   _%hd254819254867%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g254772254832%_)))))
                          (let () (declare (not safe)) (_%g254772254832%_)))))
                  (let () (declare (not safe)) (_%g254772254832%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g254772254832%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g254772254832%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g254772254832%_)))))
                        (let () (declare (not safe)) (_%g254772254832%_)))))
                (let () (declare (not safe)) (_%g254772254832%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx255078%_)
        (let* ((_%g255082255102%_
                (lambda (_%g255083255098%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g255083255098%_))))
               (_%g255081255171%_
                (lambda (_%g255083255106%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g255083255106%_))
                      (let ((_%e255085255109%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g255083255106%_))))
                        (let ((_%hd255086255113%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e255085255109%_)))
                              (_%tl255087255116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e255085255109%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl255087255116%_))
                              (let ((_g255927_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl255087255116%_
                                        '0))))
                                (begin
                                  (let ((_g255928_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g255927_)
                                               (##values-length _g255927_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g255928_ 2)))
                                        (error "Context expects 2 values"
                                               _g255928_)))
                                  (let ((_%target255088255119%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g255927_ 0)))
                                        (_%tl255090255122%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g255927_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl255090255122%_))
                                        (letrec ((_%loop255091255125%_
                                                  (lambda (_%hd255089255129%_
                                                           _%decl255095255132%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd255089255129%_))
                                                        (let ((_%e255092255134%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd255089255129%_))))
                  (let ((_%lp-hd255093255138%_
                         (let ()
                           (declare (not safe))
                           (##car _%e255092255134%_)))
                        (_%lp-tl255094255141%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e255092255134%_))))
                    (_%loop255091255125%_
                     _%lp-tl255094255141%_
                     (cons _%lp-hd255093255138%_ _%decl255095255132%_))))
                (let ((_%decl255096255144%_ (reverse _%decl255095255132%_)))
                  ((lambda (_%g255084255147%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp255929
                                  (lambda (_%g255162255165%_ _%g255163255168%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g255162255165%_)
                                          _%g255163255168%_))))
                             (declare (not safe))
                             (__foldr1 __tmp255929 '() _%g255084255147%_))))
                   _%decl255096255144%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop255091255125%_
                                           _%target255088255119%_
                                           '()))
                                        (_%g255082255102%_
                                         _%g255083255106%_)))))
                              (_%g255082255102%_ _%g255083255106%_))))
                      (_%g255082255102%_ _%g255083255106%_)))))
          (_%g255081255171%_ _%$stx255078%_))))))
