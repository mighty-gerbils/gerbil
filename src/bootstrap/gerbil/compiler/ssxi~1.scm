(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g221288_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221295_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221297_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221299_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221301_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221303_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221315_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221317_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221319_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221321_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221323_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx214706%_)
        (let* ((_%g214710214728%_
                (lambda (_%g214711214724%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214711214724%_))))
               (_%g214709214783%_
                (lambda (_%g214711214732%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214711214732%_))
                      (let ((_%e214714214735%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214711214732%_))))
                        (let ((_%hd214715214739%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214714214735%_)))
                              (_%tl214716214742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214714214735%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214716214742%_))
                              (let ((_%e214717214745%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214716214742%_))))
                                (let ((_%hd214718214749%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214717214745%_)))
                                      (_%tl214719214752%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214717214745%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214719214752%_))
                                      (let ((_%e214720214755%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl214719214752%_))))
                                        (let ((_%hd214721214759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214720214755%_)))
                                              (_%tl214722214762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214720214755%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214722214762%_))
                                              ((lambda (_%L214765%_
                                                        _%L214767%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L214767%_))
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
                               (cons _%L214767%_ '()))
                         (cons _%L214765%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g214710214728%_
                                                      _%g214711214732%_)))
                                               _%hd214721214759%_
                                               _%hd214718214749%_)
                                              (_%g214710214728%_
                                               _%g214711214732%_))))
                                      (_%g214710214728%_ _%g214711214732%_))))
                              (_%g214710214728%_ _%g214711214732%_))))
                      (_%g214710214728%_ _%g214711214732%_)))))
          (_%g214709214783%_ _%$stx214706%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx214787%_)
        (let* ((_%g214791214809%_
                (lambda (_%g214792214805%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214792214805%_))))
               (_%g214790214864%_
                (lambda (_%g214792214813%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214792214813%_))
                      (let ((_%e214795214816%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214792214813%_))))
                        (let ((_%hd214796214820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214795214816%_)))
                              (_%tl214797214823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214795214816%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214797214823%_))
                              (let ((_%e214798214826%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214797214823%_))))
                                (let ((_%hd214799214830%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214798214826%_)))
                                      (_%tl214800214833%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214798214826%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214800214833%_))
                                      (let ((_%e214801214836%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl214800214833%_))))
                                        (let ((_%hd214802214840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214801214836%_)))
                                              (_%tl214803214843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214801214836%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214803214843%_))
                                              ((lambda (_%L214846%_
                                                        _%L214848%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L214848%_))
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
                               (cons _%L214848%_ '()))
                         (cons _%L214846%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g214791214809%_
                                                      _%g214792214813%_)))
                                               _%hd214802214840%_
                                               _%hd214799214830%_)
                                              (_%g214791214809%_
                                               _%g214792214813%_))))
                                      (_%g214791214809%_ _%g214792214813%_))))
                              (_%g214791214809%_ _%g214792214813%_))))
                      (_%g214791214809%_ _%g214792214813%_)))))
          (_%g214790214864%_ _%$stx214787%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx214868%_)
        (let* ((_%g214872214901%_
                (lambda (_%g214873214897%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214873214897%_))))
               (_%g214871215001%_
                (lambda (_%g214873214905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214873214905%_))
                      (let ((_%e214876214908%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214873214905%_))))
                        (let ((_%hd214877214912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214876214908%_)))
                              (_%tl214878214915%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214876214908%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl214878214915%_))
                              (let ((_g221266_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl214878214915%_
                                        '0))))
                                (begin
                                  (let ((_g221267_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221266_)
                                               (##values-length _g221266_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221267_ 2)))
                                        (error "Context expects 2 values"
                                               _g221267_)))
                                  (let ((_%target214879214918%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221266_ 0)))
                                        (_%tl214881214921%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221266_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl214881214921%_))
                                        (letrec ((_%loop214882214924%_
                                                  (lambda (_%hd214880214928%_
                                                           _%type214886214931%_
                                                           _%symbol214887214933%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd214880214928%_))
                                                        (let ((_%e214883214936%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd214880214928%_))))
                  (let ((_%lp-hd214884214940%_
                         (let ()
                           (declare (not safe))
                           (##car _%e214883214936%_)))
                        (_%lp-tl214885214943%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e214883214936%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd214884214940%_))
                        (let ((_%e214890214946%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd214884214940%_))))
                          (let ((_%hd214891214950%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214890214946%_)))
                                (_%tl214892214953%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214890214946%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl214892214953%_))
                                (let ((_%e214893214956%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl214892214953%_))))
                                  (let ((_%hd214894214960%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214893214956%_)))
                                        (_%tl214895214963%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214893214956%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl214895214963%_))
                                        (_%loop214882214924%_
                                         _%lp-tl214885214943%_
                                         (cons _%hd214894214960%_
                                               _%type214886214931%_)
                                         (cons _%hd214891214950%_
                                               _%symbol214887214933%_))
                                        (_%g214872214901%_
                                         _%g214873214905%_))))
                                (_%g214872214901%_ _%g214873214905%_))))
                        (_%g214872214901%_ _%g214873214905%_))))
                (let ((_%type214888214966%_ (reverse _%type214886214931%_))
                      (_%symbol214889214969%_
                       (reverse _%symbol214887214933%_)))
                  ((lambda (_%L214972%_ _%L214974%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L214972%_
                                _%L214974%_))
                             (let ((__tmp221268
                                    (lambda (_%g214989214993%_
                                             _%g214990214996%_
                                             _%g214991214998%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g214990214996%_
                                                        (cons _%g214989214993%_
                                                              '())))
                                            _%g214991214998%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp221268
                                '()
                                _%L214972%_
                                _%L214974%_)))))
                   _%type214888214966%_
                   _%symbol214889214969%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop214882214924%_
                                           _%target214879214918%_
                                           '()
                                           '()))
                                        (_%g214872214901%_
                                         _%g214873214905%_)))))
                              (_%g214872214901%_ _%g214873214905%_))))
                      (_%g214872214901%_ _%g214873214905%_)))))
          (_%g214871215001%_ _%$stx214868%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx215006%_)
        (let* ((_%__stx220577220578%_ _%$stx215006%_)
               (_%g215011215053%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220577220578%_)))))
          (let ((_%__kont220580220581%_
                 (lambda (_%L215181%_ _%L215183%_ _%L215184%_ _%L215185%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L215185%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L215184%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L215183%_ '()))
                                           (cons _%L215181%_ '())))))))
                (_%__kont220582220583%_
                 (lambda (_%L215100%_ _%L215102%_ _%L215103%_ _%L215104%_)
                   (cons _%L215104%_
                         (cons _%L215103%_
                               (cons _%L215102%_
                                     (cons _%L215100%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match220616220617%_
                   (lambda (_%e215017215131%_
                            _%hd215018215135%_
                            _%tl215019215138%_
                            _%e215020215141%_
                            _%hd215021215145%_
                            _%tl215022215148%_
                            _%e215023215151%_
                            _%hd215024215155%_
                            _%tl215025215158%_
                            _%e215026215161%_
                            _%hd215027215165%_
                            _%tl215028215168%_
                            _%e215029215171%_
                            _%hd215030215175%_
                            _%tl215031215178%_)
                     (let ((_%L215181%_ _%hd215030215175%_)
                           (_%L215183%_ _%hd215027215165%_)
                           (_%L215184%_ _%hd215024215155%_)
                           (_%L215185%_ _%hd215021215145%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L215185%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L215184%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L215183%_)))
                           (_%__kont220580220581%_
                            _%L215181%_
                            _%L215183%_
                            _%L215184%_
                            _%L215185%_)
                           (let ()
                             (declare (not safe))
                             (_%g215011215053%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220577220578%_))
                  (let ((_%e215017215131%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220577220578%_))))
                    (let ((_%tl215019215138%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e215017215131%_)))
                          (_%hd215018215135%_
                           (let ()
                             (declare (not safe))
                             (##car _%e215017215131%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl215019215138%_))
                          (let ((_%e215020215141%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl215019215138%_))))
                            (let ((_%tl215022215148%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e215020215141%_)))
                                  (_%hd215021215145%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e215020215141%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl215022215148%_))
                                  (let ((_%e215023215151%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl215022215148%_))))
                                    (let ((_%tl215025215158%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e215023215151%_)))
                                          (_%hd215024215155%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e215023215151%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl215025215158%_))
                                          (let ((_%e215026215161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl215025215158%_))))
                                            (let ((_%tl215028215168%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e215026215161%_)))
                                                  (_%hd215027215165%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e215026215161%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl215028215168%_))
                                                  (let ((_%e215029215171%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl215028215168%_))))
                                                    (let ((_%tl215031215178%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e215029215171%_)))
                                                          (_%hd215030215175%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e215029215171%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl215031215178%_))
                                                          (_%__match220616220617%_
                                                           _%e215017215131%_
                                                           _%hd215018215135%_
                                                           _%tl215019215138%_
                                                           _%e215020215141%_
                                                           _%hd215021215145%_
                                                           _%tl215022215148%_
                                                           _%e215023215151%_
                                                           _%hd215024215155%_
                                                           _%tl215025215158%_
                                                           _%e215026215161%_
                                                           _%hd215027215165%_
                                                           _%tl215028215168%_
                                                           _%e215029215171%_
                                                           _%hd215030215175%_
                                                           _%tl215031215178%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g215011215053%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl215028215168%_))
                                                      (_%__kont220582220583%_
                                                       _%hd215027215165%_
                                                       _%hd215024215155%_
                                                       _%hd215021215145%_
                                                       _%hd215018215135%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g215011215053%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g215011215053%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g215011215053%_)))))
                          (let () (declare (not safe)) (_%g215011215053%_)))))
                  (let () (declare (not safe)) (_%g215011215053%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx215210%_)
        (let* ((_%g215214215249%_
                (lambda (_%g215215215245%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215215215245%_))))
               (_%g215213215368%_
                (lambda (_%g215215215253%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215215215253%_))
                      (let ((_%e215219215256%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215215215253%_))))
                        (let ((_%hd215220215260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215219215256%_)))
                              (_%tl215221215263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215219215256%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl215221215263%_))
                              (let ((_g221269_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl215221215263%_
                                        '0))))
                                (begin
                                  (let ((_g221270_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221269_)
                                               (##values-length _g221269_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221270_ 2)))
                                        (error "Context expects 2 values"
                                               _g221270_)))
                                  (let ((_%target215222215266%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221269_ 0)))
                                        (_%tl215224215269%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221269_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl215224215269%_))
                                        (letrec ((_%loop215225215272%_
                                                  (lambda (_%hd215223215276%_
                                                           _%symbol215229215279%_
                                                           _%method215230215281%_
                                                           _%type-t215231215283%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd215223215276%_))
                                                        (let ((_%e215226215286%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd215223215276%_))))
                  (let ((_%lp-hd215227215290%_
                         (let ()
                           (declare (not safe))
                           (##car _%e215226215286%_)))
                        (_%lp-tl215228215293%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e215226215286%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd215227215290%_))
                        (let ((_%e215235215296%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd215227215290%_))))
                          (let ((_%hd215236215300%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215235215296%_)))
                                (_%tl215237215303%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215235215296%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl215237215303%_))
                                (let ((_%e215238215306%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl215237215303%_))))
                                  (let ((_%hd215239215310%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e215238215306%_)))
                                        (_%tl215240215313%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e215238215306%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl215240215313%_))
                                        (let ((_%e215241215316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl215240215313%_))))
                                          (let ((_%hd215242215320%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e215241215316%_)))
                                                (_%tl215243215323%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e215241215316%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215243215323%_))
                                                (_%loop215225215272%_
                                                 _%lp-tl215228215293%_
                                                 (cons _%hd215242215320%_
                                                       _%symbol215229215279%_)
                                                 (cons _%hd215239215310%_
                                                       _%method215230215281%_)
                                                 (cons _%hd215236215300%_
                                                       _%type-t215231215283%_))
                                                (_%g215214215249%_
                                                 _%g215215215253%_))))
                                        (_%g215214215249%_
                                         _%g215215215253%_))))
                                (_%g215214215249%_ _%g215215215253%_))))
                        (_%g215214215249%_ _%g215215215253%_))))
                (let ((_%symbol215232215326%_ (reverse _%symbol215229215279%_))
                      (_%method215233215329%_ (reverse _%method215230215281%_))
                      (_%type-t215234215331%_
                       (reverse _%type-t215231215283%_)))
                  ((lambda (_%L215334%_ _%L215336%_ _%L215337%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L215334%_
                                _%L215336%_
                                _%L215337%_))
                             (let ((__tmp221271
                                    (lambda (_%g215353215358%_
                                             _%g215354215361%_
                                             _%g215355215363%_
                                             _%g215356215365%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g215355215363%_
                                                        (cons _%g215354215361%_
                                                              (cons _%g215353215358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g215356215365%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp221271
                                '()
                                _%L215334%_
                                _%L215336%_
                                _%L215337%_)))))
                   _%symbol215232215326%_
                   _%method215233215329%_
                   _%type-t215234215331%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop215225215272%_
                                           _%target215222215266%_
                                           '()
                                           '()
                                           '()))
                                        (_%g215214215249%_
                                         _%g215215215253%_)))))
                              (_%g215214215249%_ _%g215215215253%_))))
                      (_%g215214215249%_ _%g215215215253%_)))))
          (_%g215213215368%_ _%$stx215210%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx215373%_)
        (let* ((_%g215377215410%_
                (lambda (_%g215378215406%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215378215406%_))))
               (_%g215376215524%_
                (lambda (_%g215378215414%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215378215414%_))
                      (let ((_%e215382215417%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215378215414%_))))
                        (let ((_%hd215383215421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215382215417%_)))
                              (_%tl215384215424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215382215417%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215384215424%_))
                              (let ((_%e215385215427%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215384215424%_))))
                                (let ((_%hd215386215431%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215385215427%_)))
                                      (_%tl215387215434%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215385215427%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl215387215434%_))
                                      (let ((_g221272_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl215387215434%_
                                                '0))))
                                        (begin
                                          (let ((_g221273_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221272_)
                                                       (##values-length
                                                        _g221272_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221273_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221273_)))
                                          (let ((_%target215388215437%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g221272_ 0)))
                                                (_%tl215390215440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g221272_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215390215440%_))
                                                (letrec ((_%loop215391215443%_
                                                          (lambda (_%hd215389215447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol215395215450%_
                           _%method215396215452%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd215389215447%_))
                        (let ((_%e215392215455%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd215389215447%_))))
                          (let ((_%lp-hd215393215459%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215392215455%_)))
                                (_%lp-tl215394215462%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215392215455%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd215393215459%_))
                                (let ((_%e215399215465%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd215393215459%_))))
                                  (let ((_%hd215400215469%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e215399215465%_)))
                                        (_%tl215401215472%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e215399215465%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl215401215472%_))
                                        (let ((_%e215402215475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl215401215472%_))))
                                          (let ((_%hd215403215479%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e215402215475%_)))
                                                (_%tl215404215482%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e215402215475%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215404215482%_))
                                                (_%loop215391215443%_
                                                 _%lp-tl215394215462%_
                                                 (cons _%hd215403215479%_
                                                       _%symbol215395215450%_)
                                                 (cons _%hd215400215469%_
                                                       _%method215396215452%_))
                                                (_%g215377215410%_
                                                 _%g215378215414%_))))
                                        (_%g215377215410%_
                                         _%g215378215414%_))))
                                (_%g215377215410%_ _%g215378215414%_))))
                        (let ((_%symbol215397215485%_
                               (reverse _%symbol215395215450%_))
                              (_%method215398215488%_
                               (reverse _%method215396215452%_)))
                          ((lambda (_%L215491%_ _%L215493%_ _%L215494%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L215491%_
                                        _%L215493%_))
                                     (let ((__tmp221274
                                            (lambda (_%g215512215516%_
                                                     _%g215513215519%_
                                                     _%g215514215521%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L215494%_
                                                                (cons _%g215513215519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g215512215516%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g215514215521%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp221274
                                        '()
                                        _%L215491%_
                                        _%L215493%_)))))
                           _%symbol215397215485%_
                           _%method215398215488%_
                           _%hd215386215431%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop215391215443%_
                                                   _%target215388215437%_
                                                   '()
                                                   '()))
                                                (_%g215377215410%_
                                                 _%g215378215414%_)))))
                                      (_%g215377215410%_ _%g215378215414%_))))
                              (_%g215377215410%_ _%g215378215414%_))))
                      (_%g215377215410%_ _%g215378215414%_)))))
          (_%g215376215524%_ _%$stx215373%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx215529%_)
        (let* ((_%g215533215547%_
                (lambda (_%g215534215543%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215534215543%_))))
               (_%g215532215588%_
                (lambda (_%g215534215551%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215534215551%_))
                      (let ((_%e215536215554%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215534215551%_))))
                        (let ((_%hd215537215558%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215536215554%_)))
                              (_%tl215538215561%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215536215554%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215538215561%_))
                              (let ((_%e215539215564%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215538215561%_))))
                                (let ((_%hd215540215568%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215539215564%_)))
                                      (_%tl215541215571%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215539215564%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215541215571%_))
                                      ((lambda (_%L215574%_)
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
                                                           (cons _%L215574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd215540215568%_)
                                      (_%g215533215547%_ _%g215534215551%_))))
                              (_%g215533215547%_ _%g215534215551%_))))
                      (_%g215533215547%_ _%g215534215551%_)))))
          (_%g215532215588%_ _%$stx215529%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx215592%_)
        (let* ((_%g215596215650%_
                (lambda (_%g215597215646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215597215646%_))))
               (_%g215595215831%_
                (lambda (_%g215597215654%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215597215654%_))
                      (let ((_%e215609215657%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215597215654%_))))
                        (let ((_%hd215610215661%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215609215657%_)))
                              (_%tl215611215664%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215609215657%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215611215664%_))
                              (let ((_%e215612215667%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215611215664%_))))
                                (let ((_%hd215613215671%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215612215667%_)))
                                      (_%tl215614215674%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215612215667%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215614215674%_))
                                      (let ((_%e215615215677%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215614215674%_))))
                                        (let ((_%hd215616215681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215615215677%_)))
                                              (_%tl215617215684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215615215677%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215617215684%_))
                                              (let ((_%e215618215687%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl215617215684%_))))
                                                (let ((_%hd215619215691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215618215687%_)))
                                                      (_%tl215620215694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215618215687%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl215620215694%_))
                                                      (let ((_%e215621215697%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl215620215694%_))))
                (let ((_%hd215622215701%_
                       (let () (declare (not safe)) (##car _%e215621215697%_)))
                      (_%tl215623215704%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e215621215697%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl215623215704%_))
                      (let ((_%e215624215707%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl215623215704%_))))
                        (let ((_%hd215625215711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215624215707%_)))
                              (_%tl215626215714%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215624215707%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215626215714%_))
                              (let ((_%e215627215717%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215626215714%_))))
                                (let ((_%hd215628215721%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215627215717%_)))
                                      (_%tl215629215724%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215627215717%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215629215724%_))
                                      (let ((_%e215630215727%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215629215724%_))))
                                        (let ((_%hd215631215731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215630215727%_)))
                                              (_%tl215632215734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215630215727%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215632215734%_))
                                              (let ((_%e215633215737%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl215632215734%_))))
                                                (let ((_%hd215634215741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215633215737%_)))
                                                      (_%tl215635215744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215633215737%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl215635215744%_))
                                                      (let ((_%e215636215747%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl215635215744%_))))
                (let ((_%hd215637215751%_
                       (let () (declare (not safe)) (##car _%e215636215747%_)))
                      (_%tl215638215754%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e215636215747%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl215638215754%_))
                      (let ((_%e215639215757%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl215638215754%_))))
                        (let ((_%hd215640215761%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215639215757%_)))
                              (_%tl215641215764%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215639215757%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215641215764%_))
                              (let ((_%e215642215767%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215641215764%_))))
                                (let ((_%hd215643215771%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215642215767%_)))
                                      (_%tl215644215774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215642215767%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215644215774%_))
                                      ((lambda (_%L215777%_
                                                _%L215779%_
                                                _%L215780%_
                                                _%L215781%_
                                                _%L215782%_
                                                _%L215783%_
                                                _%L215784%_
                                                _%L215785%_
                                                _%L215786%_
                                                _%L215787%_
                                                _%L215788%_)
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
                                                           (cons _%L215788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L215787%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L215786%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L215785%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L215784%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L215783%_ '()))
                                           (cons _%L215782%_
                                                 (cons _%L215781%_
                                                       (cons _%L215780%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L215779%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L215777%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd215643215771%_
                                       _%hd215640215761%_
                                       _%hd215637215751%_
                                       _%hd215634215741%_
                                       _%hd215631215731%_
                                       _%hd215628215721%_
                                       _%hd215625215711%_
                                       _%hd215622215701%_
                                       _%hd215619215691%_
                                       _%hd215616215681%_
                                       _%hd215613215671%_)
                                      (_%g215596215650%_ _%g215597215654%_))))
                              (_%g215596215650%_ _%g215597215654%_))))
                      (_%g215596215650%_ _%g215597215654%_))))
              (_%g215596215650%_ _%g215597215654%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g215596215650%_
                                               _%g215597215654%_))))
                                      (_%g215596215650%_ _%g215597215654%_))))
                              (_%g215596215650%_ _%g215597215654%_))))
                      (_%g215596215650%_ _%g215597215654%_))))
              (_%g215596215650%_ _%g215597215654%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g215596215650%_
                                               _%g215597215654%_))))
                                      (_%g215596215650%_ _%g215597215654%_))))
                              (_%g215596215650%_ _%g215597215654%_))))
                      (_%g215596215650%_ _%g215597215654%_)))))
          (_%g215595215831%_ _%$stx215592%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx215835%_)
        (let* ((_%g215839215853%_
                (lambda (_%g215840215849%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215840215849%_))))
               (_%g215838215894%_
                (lambda (_%g215840215857%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215840215857%_))
                      (let ((_%e215842215860%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215840215857%_))))
                        (let ((_%hd215843215864%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215842215860%_)))
                              (_%tl215844215867%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215842215860%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215844215867%_))
                              (let ((_%e215845215870%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215844215867%_))))
                                (let ((_%hd215846215874%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215845215870%_)))
                                      (_%tl215847215877%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215845215870%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215847215877%_))
                                      ((lambda (_%L215880%_)
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
                                                           (cons _%L215880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd215846215874%_)
                                      (_%g215839215853%_ _%g215840215857%_))))
                              (_%g215839215853%_ _%g215840215857%_))))
                      (_%g215839215853%_ _%g215840215857%_)))))
          (_%g215838215894%_ _%$stx215835%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx215898%_)
        (let* ((_%g215902215916%_
                (lambda (_%g215903215912%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215903215912%_))))
               (_%g215901215957%_
                (lambda (_%g215903215920%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215903215920%_))
                      (let ((_%e215905215923%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215903215920%_))))
                        (let ((_%hd215906215927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215905215923%_)))
                              (_%tl215907215930%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215905215923%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215907215930%_))
                              (let ((_%e215908215933%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215907215930%_))))
                                (let ((_%hd215909215937%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215908215933%_)))
                                      (_%tl215910215940%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215908215933%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215910215940%_))
                                      ((lambda (_%L215943%_)
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
                                                           (cons _%L215943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd215909215937%_)
                                      (_%g215902215916%_ _%g215903215920%_))))
                              (_%g215902215916%_ _%g215903215920%_))))
                      (_%g215902215916%_ _%g215903215920%_)))))
          (_%g215901215957%_ _%$stx215898%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx215961%_)
        (let* ((_%g215965215987%_
                (lambda (_%g215966215983%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215966215983%_))))
               (_%g215964216056%_
                (lambda (_%g215966215991%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215966215991%_))
                      (let ((_%e215970215994%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215966215991%_))))
                        (let ((_%hd215971215998%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215970215994%_)))
                              (_%tl215972216001%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215970215994%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215972216001%_))
                              (let ((_%e215973216004%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215972216001%_))))
                                (let ((_%hd215974216008%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215973216004%_)))
                                      (_%tl215975216011%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215973216004%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215975216011%_))
                                      (let ((_%e215976216014%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215975216011%_))))
                                        (let ((_%hd215977216018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215976216014%_)))
                                              (_%tl215978216021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215976216014%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215978216021%_))
                                              (let ((_%e215979216024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl215978216021%_))))
                                                (let ((_%hd215980216028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215979216024%_)))
                                                      (_%tl215981216031%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215979216024%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl215981216031%_))
                                                      ((lambda (_%L216034%_
                                                                _%L216036%_
                                                                _%L216037%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L216037%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L216036%_ '()))
                                   (cons _%L216034%_ '())))))
               _%hd215980216028%_
               _%hd215977216018%_
               _%hd215974216008%_)
              (_%g215965215987%_ _%g215966215991%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g215965215987%_
                                               _%g215966215991%_))))
                                      (_%g215965215987%_ _%g215966215991%_))))
                              (_%g215965215987%_ _%g215966215991%_))))
                      (_%g215965215987%_ _%g215966215991%_)))))
          (_%g215964216056%_ _%$stx215961%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx216060%_)
        (let* ((_%g216064216086%_
                (lambda (_%g216065216082%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216065216082%_))))
               (_%g216063216155%_
                (lambda (_%g216065216090%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216065216090%_))
                      (let ((_%e216069216093%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216065216090%_))))
                        (let ((_%hd216070216097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216069216093%_)))
                              (_%tl216071216100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216069216093%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216071216100%_))
                              (let ((_%e216072216103%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216071216100%_))))
                                (let ((_%hd216073216107%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216072216103%_)))
                                      (_%tl216074216110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216072216103%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216074216110%_))
                                      (let ((_%e216075216113%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216074216110%_))))
                                        (let ((_%hd216076216117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216075216113%_)))
                                              (_%tl216077216120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216075216113%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216077216120%_))
                                              (let ((_%e216078216123%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl216077216120%_))))
                                                (let ((_%hd216079216127%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216078216123%_)))
                                                      (_%tl216080216130%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216078216123%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216080216130%_))
                                                      ((lambda (_%L216133%_
                                                                _%L216135%_
                                                                _%L216136%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L216136%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L216135%_ '()))
                                   (cons _%L216133%_ '())))))
               _%hd216079216127%_
               _%hd216076216117%_
               _%hd216073216107%_)
              (_%g216064216086%_ _%g216065216090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g216064216086%_
                                               _%g216065216090%_))))
                                      (_%g216064216086%_ _%g216065216090%_))))
                              (_%g216064216086%_ _%g216065216090%_))))
                      (_%g216064216086%_ _%g216065216090%_)))))
          (_%g216063216155%_ _%$stx216060%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx216159%_)
        (let* ((_%g216163216177%_
                (lambda (_%g216164216173%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216164216173%_))))
               (_%g216162216218%_
                (lambda (_%g216164216181%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216164216181%_))
                      (let ((_%e216166216184%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216164216181%_))))
                        (let ((_%hd216167216188%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216166216184%_)))
                              (_%tl216168216191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216166216184%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216168216191%_))
                              (let ((_%e216169216194%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216168216191%_))))
                                (let ((_%hd216170216198%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216169216194%_)))
                                      (_%tl216171216201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216169216194%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216171216201%_))
                                      ((lambda (_%L216204%_)
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
                                                           (cons _%L216204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd216170216198%_)
                                      (_%g216163216177%_ _%g216164216181%_))))
                              (_%g216163216177%_ _%g216164216181%_))))
                      (_%g216163216177%_ _%g216164216181%_)))))
          (_%g216162216218%_ _%$stx216159%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx216222%_)
        (let* ((_%g216226216244%_
                (lambda (_%g216227216240%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216227216240%_))))
               (_%g216225216299%_
                (lambda (_%g216227216248%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216227216248%_))
                      (let ((_%e216230216251%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216227216248%_))))
                        (let ((_%hd216231216255%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216230216251%_)))
                              (_%tl216232216258%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216230216251%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216232216258%_))
                              (let ((_%e216233216261%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216232216258%_))))
                                (let ((_%hd216234216265%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216233216261%_)))
                                      (_%tl216235216268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216233216261%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216235216268%_))
                                      (let ((_%e216236216271%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216235216268%_))))
                                        (let ((_%hd216237216275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216236216271%_)))
                                              (_%tl216238216278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216236216271%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216238216278%_))
                                              ((lambda (_%L216281%_
                                                        _%L216283%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L216283%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L216281%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd216237216275%_
                                               _%hd216234216265%_)
                                              (_%g216226216244%_
                                               _%g216227216248%_))))
                                      (_%g216226216244%_ _%g216227216248%_))))
                              (_%g216226216244%_ _%g216227216248%_))))
                      (_%g216226216244%_ _%g216227216248%_)))))
          (_%g216225216299%_ _%$stx216222%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx216303%_)
        (let* ((_%__stx220645220646%_ _%$stx216303%_)
               (_%g216310216371%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220645220646%_)))))
          (let ((_%__kont220648220649%_
                 (lambda (_%L216609%_ _%L216611%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L216611%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L216609%_ '()))
                                     '())))))
                (_%__kont220650220651%_
                 (lambda (_%L216548%_ _%L216550%_ _%L216551%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L216551%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L216550%_ '()))
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
                                 (cons _%L216548%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont220652220653%_
                 (lambda (_%L216472%_ _%L216474%_)
                   (cons _%L216474%_ (cons _%L216472%_ (cons '#f '())))))
                (_%__kont220654220655%_
                 (lambda (_%L216422%_ _%L216424%_ _%L216425%_)
                   (cons _%L216425%_
                         (cons _%L216424%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L216422%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx220645220646%_))
                (let ((_%e216314216579%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx220645220646%_))))
                  (let ((_%tl216316216586%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216314216579%_)))
                        (_%hd216315216583%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216314216579%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl216316216586%_))
                        (let ((_%e216317216589%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl216316216586%_))))
                          (let ((_%tl216319216596%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e216317216589%_)))
                                (_%hd216318216593%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e216317216589%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl216319216596%_))
                                (let ((_%e216320216599%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl216319216596%_))))
                                  (let ((_%tl216322216606%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e216320216599%_)))
                                        (_%hd216321216603%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e216320216599%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216322216606%_))
                                        (_%__kont220648220649%_
                                         _%hd216321216603%_
                                         _%hd216318216593%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl216322216606%_))
                                            (let ((_%e216335216524%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl216322216606%_))))
                                              (let ((_%tl216337216531%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e216335216524%_)))
                                                    (_%hd216336216528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e216335216524%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd216336216528%_))
                                                    (let ((_%e216338216534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd216336216528%_))))
                                                      (if (equal? _%e216338216534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216337216531%_))
                      (let ((_%e216339216538%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl216337216531%_))))
                        (let ((_%tl216341216545%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216339216538%_)))
                              (_%hd216340216542%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216339216538%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216341216545%_))
                              (_%__kont220650220651%_
                               _%hd216340216542%_
                               _%hd216321216603%_
                               _%hd216318216593%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd216321216603%_))
                                  (let ((_%e216362216408%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216321216603%_))))
                                    (declare (not safe))
                                    (_%g216310216371%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216310216371%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd216321216603%_))
                          (let ((_%e216362216408%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd216321216603%_))))
                            (if (equal? _%e216362216408%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl216337216531%_))
                                    (_%__kont220654220655%_
                                     _%hd216336216528%_
                                     _%hd216318216593%_
                                     _%hd216315216583%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g216310216371%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g216310216371%_))))
                          (let () (declare (not safe)) (_%g216310216371%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd216321216603%_))
                      (let ((_%e216362216408%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd216321216603%_))))
                        (if (equal? _%e216362216408%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl216337216531%_))
                                (_%__kont220654220655%_
                                 _%hd216336216528%_
                                 _%hd216318216593%_
                                 _%hd216315216583%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g216310216371%_)))
                            (let () (declare (not safe)) (_%g216310216371%_))))
                      (let () (declare (not safe)) (_%g216310216371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd216321216603%_))
                                                        (let ((_%e216362216408%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd216321216603%_))))
                  (if (equal? _%e216362216408%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216337216531%_))
                          (_%__kont220654220655%_
                           _%hd216336216528%_
                           _%hd216318216593%_
                           _%hd216315216583%_)
                          (let () (declare (not safe)) (_%g216310216371%_)))
                      (let () (declare (not safe)) (_%g216310216371%_))))
                (let () (declare (not safe)) (_%g216310216371%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd216321216603%_))
                                                (let ((_%e216362216408%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd216321216603%_))))
                                                  (declare (not safe))
                                                  (_%g216310216371%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g216310216371%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl216319216596%_))
                                    (_%__kont220652220653%_
                                     _%hd216318216593%_
                                     _%hd216315216583%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g216310216371%_))))))
                        (let () (declare (not safe)) (_%g216310216371%_)))))
                (let () (declare (not safe)) (_%g216310216371%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx216630%_)
        (let* ((_%g216634216663%_
                (lambda (_%g216635216659%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216635216659%_))))
               (_%g216633216772%_
                (lambda (_%g216635216667%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216635216667%_))
                      (let ((_%e216637216670%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216635216667%_))))
                        (let ((_%hd216638216674%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216637216670%_)))
                              (_%tl216639216677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216637216670%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl216639216677%_))
                              (let ((_g221275_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl216639216677%_
                                        '0))))
                                (begin
                                  (let ((_g221276_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221275_)
                                               (##values-length _g221275_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221276_ 2)))
                                        (error "Context expects 2 values"
                                               _g221276_)))
                                  (let ((_%target216640216680%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221275_ 0)))
                                        (_%tl216642216683%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221275_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216642216683%_))
                                        (letrec ((_%loop216643216686%_
                                                  (lambda (_%hd216641216690%_
                                                           _%clause216647216693%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd216641216690%_))
                                                        (let ((_%e216644216696%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd216641216690%_))))
                  (let ((_%lp-hd216645216700%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216644216696%_)))
                        (_%lp-tl216646216703%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216644216696%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd216645216700%_))
                        (let ((_g221277_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd216645216700%_
                                  '0))))
                          (begin
                            (let ((_g221278_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g221277_)
                                         (##values-length _g221277_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g221278_ 2)))
                                  (error "Context expects 2 values"
                                         _g221278_)))
                            (let ((_%target216649216706%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g221277_ 0)))
                                  (_%tl216651216709%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g221277_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216651216709%_))
                                  (letrec ((_%loop216652216712%_
                                            (lambda (_%hd216650216716%_
                                                     _%clause216656216719%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd216650216716%_))
                                                  (let ((_%e216653216722%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd216650216716%_))))
                                                    (let ((_%lp-hd216654216726%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216653216722%_)))
                                                          (_%lp-tl216655216729%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216653216722%_))))
                                                      (_%loop216652216712%_
                                                       _%lp-tl216655216729%_
                                                       (cons _%lp-hd216654216726%_
                                                             _%clause216656216719%_))))
                                                  (let ((_%clause216657216732%_
                                                         (reverse _%clause216656216719%_)))
                                                    (_%loop216643216686%_
                                                     _%lp-tl216646216703%_
                                                     (cons _%clause216657216732%_
                                                           _%clause216647216693%_)))))))
                                    (_%loop216652216712%_
                                     _%target216649216706%_
                                     '()))
                                  (_%g216634216663%_ _%g216635216667%_)))))
                        (_%g216634216663%_ _%g216635216667%_))))
                (let ((_%clause216648216736%_
                       (reverse _%clause216647216693%_)))
                  ((lambda (_%L216740%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp221279
                                              (lambda (_%g216755216760%_
                                                       _%g216756216763%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp221280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g216757216766%_ _%g216758216769%_)
                             (cons _%g216757216766%_ _%g216758216769%_))))
                      (declare (not safe))
                      (__foldr1 __tmp221280 '() _%g216755216760%_)))
              _%g216756216763%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp221279
                                          '()
                                          _%L216740%_)))
                                 '())))
                   _%clause216648216736%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop216643216686%_
                                           _%target216640216680%_
                                           '()))
                                        (_%g216634216663%_
                                         _%g216635216667%_)))))
                              (_%g216634216663%_ _%g216635216667%_))))
                      (_%g216634216663%_ _%g216635216667%_)))))
          (_%g216633216772%_ _%$stx216630%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx216778%_)
        (let* ((_%g216782216800%_
                (lambda (_%g216783216796%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216783216796%_))))
               (_%g216781216855%_
                (lambda (_%g216783216804%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216783216804%_))
                      (let ((_%e216786216807%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216783216804%_))))
                        (let ((_%hd216787216811%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216786216807%_)))
                              (_%tl216788216814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216786216807%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216788216814%_))
                              (let ((_%e216789216817%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216788216814%_))))
                                (let ((_%hd216790216821%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216789216817%_)))
                                      (_%tl216791216824%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216789216817%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216791216824%_))
                                      (let ((_%e216792216827%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216791216824%_))))
                                        (let ((_%hd216793216831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216792216827%_)))
                                              (_%tl216794216834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216792216827%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216794216834%_))
                                              ((lambda (_%L216837%_
                                                        _%L216839%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L216839%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L216837%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd216793216831%_
                                               _%hd216790216821%_)
                                              (_%g216782216800%_
                                               _%g216783216804%_))))
                                      (_%g216782216800%_ _%g216783216804%_))))
                              (_%g216782216800%_ _%g216783216804%_))))
                      (_%g216782216800%_ _%g216783216804%_)))))
          (_%g216781216855%_ _%$stx216778%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx216859%_)
        (let* ((_%g216863216881%_
                (lambda (_%g216864216877%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216864216877%_))))
               (_%g216862216936%_
                (lambda (_%g216864216885%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216864216885%_))
                      (let ((_%e216867216888%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216864216885%_))))
                        (let ((_%hd216868216892%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216867216888%_)))
                              (_%tl216869216895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216867216888%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216869216895%_))
                              (let ((_%e216870216898%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216869216895%_))))
                                (let ((_%hd216871216902%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216870216898%_)))
                                      (_%tl216872216905%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216870216898%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216872216905%_))
                                      (let ((_%e216873216908%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216872216905%_))))
                                        (let ((_%hd216874216912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216873216908%_)))
                                              (_%tl216875216915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216873216908%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216875216915%_))
                                              ((lambda (_%L216918%_
                                                        _%L216920%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L216920%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L216918%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd216874216912%_
                                               _%hd216871216902%_)
                                              (_%g216863216881%_
                                               _%g216864216885%_))))
                                      (_%g216863216881%_ _%g216864216885%_))))
                              (_%g216863216881%_ _%g216864216885%_))))
                      (_%g216863216881%_ _%g216864216885%_)))))
          (_%g216862216936%_ _%$stx216859%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx216940%_)
        (let* ((_%g216944216973%_
                (lambda (_%g216945216969%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216945216969%_))))
               (_%g216943217073%_
                (lambda (_%g216945216977%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216945216977%_))
                      (let ((_%e216948216980%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216945216977%_))))
                        (let ((_%hd216949216984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216948216980%_)))
                              (_%tl216950216987%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216948216980%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl216950216987%_))
                              (let ((_g221281_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl216950216987%_
                                        '0))))
                                (begin
                                  (let ((_g221282_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221281_)
                                               (##values-length _g221281_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221282_ 2)))
                                        (error "Context expects 2 values"
                                               _g221282_)))
                                  (let ((_%target216951216990%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221281_ 0)))
                                        (_%tl216953216993%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221281_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216953216993%_))
                                        (letrec ((_%loop216954216996%_
                                                  (lambda (_%hd216952217000%_
                                                           _%rule216958217003%_
                                                           _%proc216959217005%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd216952217000%_))
                                                        (let ((_%e216955217008%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd216952217000%_))))
                  (let ((_%lp-hd216956217012%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216955217008%_)))
                        (_%lp-tl216957217015%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216955217008%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd216956217012%_))
                        (let ((_%e216962217018%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd216956217012%_))))
                          (let ((_%hd216963217022%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e216962217018%_)))
                                (_%tl216964217025%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e216962217018%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl216964217025%_))
                                (let ((_%e216965217028%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl216964217025%_))))
                                  (let ((_%hd216966217032%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e216965217028%_)))
                                        (_%tl216967217035%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e216965217028%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216967217035%_))
                                        (_%loop216954216996%_
                                         _%lp-tl216957217015%_
                                         (cons _%hd216966217032%_
                                               _%rule216958217003%_)
                                         (cons _%hd216963217022%_
                                               _%proc216959217005%_))
                                        (_%g216944216973%_
                                         _%g216945216977%_))))
                                (_%g216944216973%_ _%g216945216977%_))))
                        (_%g216944216973%_ _%g216945216977%_))))
                (let ((_%rule216960217038%_ (reverse _%rule216958217003%_))
                      (_%proc216961217041%_ (reverse _%proc216959217005%_)))
                  ((lambda (_%L217044%_ _%L217046%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L217044%_
                                _%L217046%_))
                             (let ((__tmp221283
                                    (lambda (_%g217061217065%_
                                             _%g217062217068%_
                                             _%g217063217070%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g217062217068%_
                                                        (cons _%g217061217065%_
                                                              '())))
                                            _%g217063217070%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp221283
                                '()
                                _%L217044%_
                                _%L217046%_)))))
                   _%rule216960217038%_
                   _%proc216961217041%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop216954216996%_
                                           _%target216951216990%_
                                           '()
                                           '()))
                                        (_%g216944216973%_
                                         _%g216945216977%_)))))
                              (_%g216944216973%_ _%g216945216977%_))))
                      (_%g216944216973%_ _%g216945216977%_)))))
          (_%g216943217073%_ _%$stx216940%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx217078%_)
        (let* ((_%g217082217100%_
                (lambda (_%g217083217096%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217083217096%_))))
               (_%g217081217155%_
                (lambda (_%g217083217104%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217083217104%_))
                      (let ((_%e217086217107%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g217083217104%_))))
                        (let ((_%hd217087217111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217086217107%_)))
                              (_%tl217088217114%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217086217107%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217088217114%_))
                              (let ((_%e217089217117%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl217088217114%_))))
                                (let ((_%hd217090217121%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217089217117%_)))
                                      (_%tl217091217124%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217089217117%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl217091217124%_))
                                      (let ((_%e217092217127%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl217091217124%_))))
                                        (let ((_%hd217093217131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217092217127%_)))
                                              (_%tl217094217134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217092217127%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl217094217134%_))
                                              ((lambda (_%L217137%_
                                                        _%L217139%_)
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
                                                   (cons _%L217139%_ '()))
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
                 (cons _%L217137%_ '())))
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
                                   (cons _%L217139%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd217093217131%_
                                               _%hd217090217121%_)
                                              (_%g217082217100%_
                                               _%g217083217104%_))))
                                      (_%g217082217100%_ _%g217083217104%_))))
                              (_%g217082217100%_ _%g217083217104%_))))
                      (_%g217082217100%_ _%g217083217104%_)))))
          (_%g217081217155%_ _%$stx217078%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx217159%_)
        (let* ((_%__stx220763220764%_ _%$stx217159%_)
               (_%g217164217189%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220763220764%_)))))
          (let ((_%__kont220766220767%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont220768220769%_
                 (lambda (_%L217236%_ _%L217238%_ _%L217239%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L217239%_ (cons _%L217238%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L217236%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx220763220764%_))
                (let ((_%e217166217265%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx220763220764%_))))
                  (let ((_%tl217168217272%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e217166217265%_)))
                        (_%hd217167217269%_
                         (let ()
                           (declare (not safe))
                           (##car _%e217166217265%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl217168217272%_))
                        (_%__kont220766220767%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl217168217272%_))
                            (let ((_%e217175217206%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl217168217272%_))))
                              (let ((_%tl217177217213%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e217175217206%_)))
                                    (_%hd217176217210%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e217175217206%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd217176217210%_))
                                    (let ((_%e217178217216%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd217176217210%_))))
                                      (let ((_%tl217180217223%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e217178217216%_)))
                                            (_%hd217179217220%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e217178217216%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217180217223%_))
                                            (let ((_%e217181217226%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl217180217223%_))))
                                              (let ((_%tl217183217233%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217181217226%_)))
                                                    (_%hd217182217230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217181217226%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl217183217233%_))
                                                    (_%__kont220768220769%_
                                                     _%tl217177217213%_
                                                     _%hd217182217230%_
                                                     _%hd217179217220%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g217164217189%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g217164217189%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g217164217189%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g217164217189%_))))))
                (let () (declare (not safe)) (_%g217164217189%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx217283%_)
        (let* ((_%__stx220807220808%_ _%$stx217283%_)
               (_%g217288217319%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220807220808%_)))))
          (let ((_%__kont220810220811%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont220812220813%_
                 (lambda (_%L217386%_ _%L217388%_ _%L217389%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L217389%_
                                           (let ((__tmp221284
                                                  (lambda (_%g217409217412%_
                                                           _%g217410217415%_)
                                                    (cons _%g217409217412%_
                                                          _%g217410217415%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp221284
                                              '()
                                              _%L217388%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L217386%_)
                                     '()))))))
            (let ((_%__match220850220851%_
                   (lambda (_%e217296217326%_
                            _%hd217297217330%_
                            _%tl217298217333%_
                            _%e217299217336%_
                            _%hd217300217340%_
                            _%tl217301217343%_
                            _%e217302217346%_
                            _%hd217303217350%_
                            _%tl217304217353%_
                            _%__splice220814220815%_
                            _%target217305217356%_
                            _%tl217307217359%_)
                     (letrec ((_%loop217308217362%_
                               (lambda (_%hd217306217366%_ _%sig217312217369%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd217306217366%_))
                                     (let ((_%e217309217372%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd217306217366%_))))
                                       (let ((_%lp-tl217311217379%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e217309217372%_)))
                                             (_%lp-hd217310217376%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e217309217372%_))))
                                         (_%loop217308217362%_
                                          _%lp-tl217311217379%_
                                          (cons _%lp-hd217310217376%_
                                                _%sig217312217369%_))))
                                     (let ((_%sig217313217382%_
                                            (reverse _%sig217312217369%_)))
                                       (_%__kont220812220813%_
                                        _%tl217301217343%_
                                        _%sig217313217382%_
                                        _%hd217303217350%_))))))
                       (_%loop217308217362%_ _%target217305217356%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220807220808%_))
                  (let ((_%e217290217425%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220807220808%_))))
                    (let ((_%tl217292217432%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217290217425%_)))
                          (_%hd217291217429%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217290217425%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217292217432%_))
                          (_%__kont220810220811%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217292217432%_))
                              (let ((_%e217299217336%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl217292217432%_))))
                                (let ((_%tl217301217343%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217299217336%_)))
                                      (_%hd217300217340%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217299217336%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd217300217340%_))
                                      (let ((_%e217302217346%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd217300217340%_))))
                                        (let ((_%tl217304217353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217302217346%_)))
                                              (_%hd217303217350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217302217346%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl217304217353%_))
                                              (let ((_%__splice220814220815%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl217304217353%_
                                                        '0))))
                                                (let ((_%tl217307217359%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220814220815%_
                                                          '1)))
                                                      (_%target217305217356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220814220815%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl217307217359%_))
                                                      (_%__match220850220851%_
                                                       _%e217290217425%_
                                                       _%hd217291217429%_
                                                       _%tl217292217432%_
                                                       _%e217299217336%_
                                                       _%hd217300217340%_
                                                       _%tl217301217343%_
                                                       _%e217302217346%_
                                                       _%hd217303217350%_
                                                       _%tl217304217353%_
                                                       _%__splice220814220815%_
                                                       _%target217305217356%_
                                                       _%tl217307217359%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g217288217319%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g217288217319%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g217288217319%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g217288217319%_))))))
                  (let () (declare (not safe)) (_%g217288217319%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx217444%_)
        (let* ((_%__stx220853220854%_ _%$stx217444%_)
               (_%g217449217496%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220853220854%_)))))
          (let ((_%__kont220856220857%_
                 (lambda (_%L217658%_ _%L217660%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L217660%_
                               (let ((__tmp221285
                                      (lambda (_%g217680217683%_
                                               _%g217681217686%_)
                                        (cons _%g217680217683%_
                                              _%g217681217686%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp221285 '() _%L217658%_))))))
                (_%__kont220860220861%_
                 (lambda (_%L217553%_ _%L217555%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L217555%_
                               (let ((__tmp221286
                                      (lambda (_%g217572217575%_
                                               _%g217573217578%_)
                                        (cons _%g217572217575%_
                                              _%g217573217578%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp221286 '() _%L217553%_)))))))
            (let* ((_%__match220920220921%_
                    (lambda (_%e217476217503%_
                             _%hd217477217507%_
                             _%tl217478217510%_
                             _%e217479217513%_
                             _%hd217480217517%_
                             _%tl217481217520%_
                             _%__splice220862220863%_
                             _%target217482217523%_
                             _%tl217484217526%_)
                      (letrec ((_%loop217485217529%_
                                (lambda (_%hd217483217533%_
                                         _%sig217489217536%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd217483217533%_))
                                      (let ((_%e217486217539%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd217483217533%_))))
                                        (let ((_%lp-tl217488217546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217486217539%_)))
                                              (_%lp-hd217487217543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217486217539%_))))
                                          (_%loop217485217529%_
                                           _%lp-tl217488217546%_
                                           (cons _%lp-hd217487217543%_
                                                 _%sig217489217536%_))))
                                      (let ((_%sig217490217549%_
                                             (reverse _%sig217489217536%_)))
                                        (_%__kont220860220861%_
                                         _%sig217490217549%_
                                         _%hd217480217517%_))))))
                        (_%loop217485217529%_ _%target217482217523%_ '()))))
                   (_%__match220912220913%_
                    (lambda (_%e217476217503%_
                             _%hd217477217507%_
                             _%tl217478217510%_
                             _%e217479217513%_
                             _%hd217480217517%_
                             _%tl217481217520%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl217481217520%_))
                          (let ((_%__splice220862220863%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl217481217520%_
                                    '0))))
                            (let ((_%tl217484217526%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice220862220863%_
                                      '1)))
                                  (_%target217482217523%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice220862220863%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl217484217526%_))
                                  (_%__match220920220921%_
                                   _%e217476217503%_
                                   _%hd217477217507%_
                                   _%tl217478217510%_
                                   _%e217479217513%_
                                   _%hd217480217517%_
                                   _%tl217481217520%_
                                   _%__splice220862220863%_
                                   _%target217482217523%_
                                   _%tl217484217526%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g217449217496%_)))))
                          (let () (declare (not safe)) (_%g217449217496%_)))))
                   (_%__match220900220901%_
                    (lambda (_%e217453217588%_
                             _%hd217454217592%_
                             _%tl217455217595%_
                             _%e217456217598%_
                             _%hd217457217602%_
                             _%tl217458217605%_
                             _%e217459217608%_
                             _%hd217460217612%_
                             _%tl217461217615%_
                             _%e217462217618%_
                             _%hd217463217622%_
                             _%tl217464217625%_
                             _%__splice220858220859%_
                             _%target217465217628%_
                             _%tl217467217631%_)
                      (letrec ((_%loop217468217634%_
                                (lambda (_%hd217466217638%_
                                         _%sig217472217641%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd217466217638%_))
                                      (let ((_%e217469217644%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd217466217638%_))))
                                        (let ((_%lp-tl217471217651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217469217644%_)))
                                              (_%lp-hd217470217648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217469217644%_))))
                                          (_%loop217468217634%_
                                           _%lp-tl217471217651%_
                                           (cons _%lp-hd217470217648%_
                                                 _%sig217472217641%_))))
                                      (let ((_%sig217473217654%_
                                             (reverse _%sig217472217641%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl217461217615%_))
                                            (_%__kont220856220857%_
                                             _%sig217473217654%_
                                             _%hd217457217602%_)
                                            (_%__match220912220913%_
                                             _%e217453217588%_
                                             _%hd217454217592%_
                                             _%tl217455217595%_
                                             _%e217456217598%_
                                             _%hd217457217602%_
                                             _%tl217458217605%_)))))))
                        (_%loop217468217634%_ _%target217465217628%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220853220854%_))
                  (let ((_%e217453217588%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220853220854%_))))
                    (let ((_%tl217455217595%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217453217588%_)))
                          (_%hd217454217592%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217453217588%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl217455217595%_))
                          (let ((_%e217456217598%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl217455217595%_))))
                            (let ((_%tl217458217605%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e217456217598%_)))
                                  (_%hd217457217602%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e217456217598%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl217458217605%_))
                                  (let ((_%e217459217608%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl217458217605%_))))
                                    (let ((_%tl217461217615%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e217459217608%_)))
                                          (_%hd217460217612%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e217459217608%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd217460217612%_))
                                          (let ((_%e217462217618%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd217460217612%_))))
                                            (let ((_%tl217464217625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e217462217618%_)))
                                                  (_%hd217463217622%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e217462217618%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd217463217622%_))
                                                  (if (let ((__tmp221287
                                                             |gxc[1]#_g221288_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp221287
                                                         _%hd217463217622%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl217464217625%_))
                                                          (let ((_%__splice220858220859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl217464217625%_
                            '0))))
                    (let ((_%tl217467217631%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220858220859%_ '1)))
                          (_%target217465217628%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220858220859%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217467217631%_))
                          (_%__match220900220901%_
                           _%e217453217588%_
                           _%hd217454217592%_
                           _%tl217455217595%_
                           _%e217456217598%_
                           _%hd217457217602%_
                           _%tl217458217605%_
                           _%e217459217608%_
                           _%hd217460217612%_
                           _%tl217461217615%_
                           _%e217462217618%_
                           _%hd217463217622%_
                           _%tl217464217625%_
                           _%__splice220858220859%_
                           _%target217465217628%_
                           _%tl217467217631%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl217458217605%_))
                              (let ((_%__splice220862220863%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl217458217605%_
                                        '0))))
                                (let ((_%tl217484217526%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice220862220863%_
                                          '1)))
                                      (_%target217482217523%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice220862220863%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl217484217526%_))
                                      (_%__match220920220921%_
                                       _%e217453217588%_
                                       _%hd217454217592%_
                                       _%tl217455217595%_
                                       _%e217456217598%_
                                       _%hd217457217602%_
                                       _%tl217458217605%_
                                       _%__splice220862220863%_
                                       _%target217482217523%_
                                       _%tl217484217526%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g217449217496%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g217449217496%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl217458217605%_))
                      (let ((_%__splice220862220863%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl217458217605%_
                                '0))))
                        (let ((_%tl217484217526%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220862220863%_ '1)))
                              (_%target217482217523%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220862220863%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl217484217526%_))
                              (_%__match220920220921%_
                               _%e217453217588%_
                               _%hd217454217592%_
                               _%tl217455217595%_
                               _%e217456217598%_
                               _%hd217457217602%_
                               _%tl217458217605%_
                               _%__splice220862220863%_
                               _%target217482217523%_
                               _%tl217484217526%_)
                              (let ()
                                (declare (not safe))
                                (_%g217449217496%_)))))
                      (let () (declare (not safe)) (_%g217449217496%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl217458217605%_))
                  (let ((_%__splice220862220863%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl217458217605%_
                            '0))))
                    (let ((_%tl217484217526%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220862220863%_ '1)))
                          (_%target217482217523%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220862220863%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217484217526%_))
                          (_%__match220920220921%_
                           _%e217453217588%_
                           _%hd217454217592%_
                           _%tl217455217595%_
                           _%e217456217598%_
                           _%hd217457217602%_
                           _%tl217458217605%_
                           _%__splice220862220863%_
                           _%target217482217523%_
                           _%tl217484217526%_)
                          (let () (declare (not safe)) (_%g217449217496%_)))))
                  (let () (declare (not safe)) (_%g217449217496%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl217458217605%_))
                                                      (let ((_%__splice220862220863%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl217458217605%_
                        '0))))
                (let ((_%tl217484217526%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220862220863%_ '1)))
                      (_%target217482217523%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220862220863%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl217484217526%_))
                      (_%__match220920220921%_
                       _%e217453217588%_
                       _%hd217454217592%_
                       _%tl217455217595%_
                       _%e217456217598%_
                       _%hd217457217602%_
                       _%tl217458217605%_
                       _%__splice220862220863%_
                       _%target217482217523%_
                       _%tl217484217526%_)
                      (let () (declare (not safe)) (_%g217449217496%_)))))
              (let () (declare (not safe)) (_%g217449217496%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl217458217605%_))
                                              (let ((_%__splice220862220863%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl217458217605%_
                                                        '0))))
                                                (let ((_%tl217484217526%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220862220863%_
                                                          '1)))
                                                      (_%target217482217523%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220862220863%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl217484217526%_))
                                                      (_%__match220920220921%_
                                                       _%e217453217588%_
                                                       _%hd217454217592%_
                                                       _%tl217455217595%_
                                                       _%e217456217598%_
                                                       _%hd217457217602%_
                                                       _%tl217458217605%_
                                                       _%__splice220862220863%_
                                                       _%target217482217523%_
                                                       _%tl217484217526%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g217449217496%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g217449217496%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl217458217605%_))
                                      (let ((_%__splice220862220863%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl217458217605%_
                                                '0))))
                                        (let ((_%tl217484217526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220862220863%_
                                                  '1)))
                                              (_%target217482217523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220862220863%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl217484217526%_))
                                              (_%__match220920220921%_
                                               _%e217453217588%_
                                               _%hd217454217592%_
                                               _%tl217455217595%_
                                               _%e217456217598%_
                                               _%hd217457217602%_
                                               _%tl217458217605%_
                                               _%__splice220862220863%_
                                               _%target217482217523%_
                                               _%tl217484217526%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g217449217496%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g217449217496%_))))))
                          (let () (declare (not safe)) (_%g217449217496%_)))))
                  (let () (declare (not safe)) (_%g217449217496%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx218843%_ _%id218845%_)
        (let ((_%proc218849%_
               (let ((__tmp221289
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id218845%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp221289))))
          (if (procedure? _%proc218849%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx218843%_
                 _%id218845%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx218834%_ _%id218836%_)
        (let ((_%klass218840%_
               (let ((__tmp221290
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id218836%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp221290))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass218840%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx218834%_
                 _%id218836%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx218084%_ _%proc218086%_ _%sig218087%_)
        (letrec ((_%signature-arity218089%_
                  (lambda (_%args218766%_)
                    (let _%loop218769%_ ((_%rest218772%_ _%args218766%_)
                                         (_%count218774%_ '0))
                      (let* ((_%rest218775218786%_ _%rest218772%_)
                             (_%E218779218792%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest218775218786%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K218782218823%_
                               (lambda (_%rest218820%_)
                                 (_%loop218769%_
                                  _%rest218820%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count218774%_ '1)))))
                              (_%K218781218812%_ (lambda () _%count218774%_))
                              (_%K218780218800%_
                               (lambda () (cons _%count218774%_ '()))))
                          (let ((_%try-match218777218816%_
                                 (lambda ()
                                   (if (null? _%rest218775218786%_)
                                       (_%K218781218812%_)
                                       (_%K218780218800%_)))))
                            (if (pair? _%rest218775218786%_)
                                (let* ((_%tl218784218827%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest218775218786%_)))
                                       (_%rest218831%_ _%tl218784218827%_))
                                  (_%K218782218823%_ _%rest218831%_))
                                (_%try-match218777218816%_))))))))
                 (_%make-signature218091%_
                  (lambda (_%args218648%_
                           _%return218650%_
                           _%effect218651%_
                           _%unchecked218652%_)
                    (let ((__tmp221291
                           (lambda (_%g218653218655%_)
                             (|gxc[1]#verify-class!|
                              _%ctx218084%_
                              _%g218653218655%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp221291 _%args218648%_))
                    (|gxc[1]#verify-class!| _%ctx218084%_ _%return218650%_)
                    (if _%unchecked218652%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx218084%_
                         _%unchecked218652%_)
                        '#!void)
                    (let ((_%arity218659%_
                           (_%signature-arity218089%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args218648%_)))))
                      (if _%effect218651%_
                          (let ((_%effect218662%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect218651%_))))
                            (if (and (list? _%effect218662%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect218662%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx218084%_
                                   _%proc218086%_
                                   _%effect218662%_))))
                          '#!void)
                      (cons _%arity218659%_
                            (cons (let* ((_%g218665218688%_
                                          (lambda (_%g218666218684%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g218666218684%_))))
                                         (_%g218664218762%_
                                          (lambda (_%g218666218692%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g218666218692%_))
                                                (let ((_%e218671218695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g218666218692%_))))
                                                  (let ((_%hd218672218699%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e218671218695%_)))
                                                        (_%tl218673218702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e218671218695%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl218673218702%_))
                                                        (let ((_%e218674218705%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl218673218702%_))))
                  (let ((_%hd218675218709%_
                         (let ()
                           (declare (not safe))
                           (##car _%e218674218705%_)))
                        (_%tl218676218712%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e218674218705%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl218676218712%_))
                        (let ((_%e218677218715%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl218676218712%_))))
                          (let ((_%hd218678218719%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e218677218715%_)))
                                (_%tl218679218722%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e218677218715%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl218679218722%_))
                                (let ((_%e218680218725%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl218679218722%_))))
                                  (let ((_%hd218681218729%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e218680218725%_)))
                                        (_%tl218682218732%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e218680218725%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl218682218732%_))
                                        ((lambda (_%L218735%_
                                                  _%L218737%_
                                                  _%L218738%_
                                                  _%L218739%_)
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
                           (cons _%L218739%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L218738%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L218737%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L218735%_ '()))
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
                                         _%hd218681218729%_
                                         _%hd218678218719%_
                                         _%hd218675218709%_
                                         _%hd218672218699%_)
                                        (_%g218665218688%_
                                         _%g218666218692%_))))
                                (_%g218665218688%_ _%g218666218692%_))))
                        (_%g218665218688%_ _%g218666218692%_))))
                (_%g218665218688%_ _%g218666218692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g218665218688%_
                                                 _%g218666218692%_)))))
                                    (_%g218664218762%_
                                     (list _%args218648%_
                                           _%return218650%_
                                           _%effect218651%_
                                           _%unchecked218652%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx218084%_ _%proc218086%_)
          (let* ((_%__stx220931220932%_ _%sig218087%_)
                 (_%g218098218201%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx220931220932%_)))))
            (let ((_%__kont220934220935%_
                   (lambda (_%L218629%_ _%L218631%_)
                     (_%make-signature218091%_
                      _%L218631%_
                      _%L218629%_
                      '#f
                      '#f)))
                  (_%__kont220936220937%_
                   (lambda (_%L218580%_ _%L218582%_ _%L218583%_)
                     (_%make-signature218091%_
                      _%L218583%_
                      _%L218582%_
                      _%L218580%_
                      '#f)))
                  (_%__kont220938220939%_
                   (lambda (_%L218504%_ _%L218506%_ _%L218507%_)
                     (_%make-signature218091%_
                      _%L218507%_
                      _%L218506%_
                      _%L218504%_
                      (let ((__tmp221292
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc218086%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp221292)))))
                  (_%__kont220940220941%_
                   (lambda (_%L218410%_ _%L218412%_ _%L218413%_ _%L218414%_)
                     (_%make-signature218091%_
                      _%L218414%_
                      _%L218413%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L218410%_)))))
                  (_%__kont220942220943%_
                   (lambda (_%L218317%_ _%L218319%_)
                     (_%make-signature218091%_
                      _%L218319%_
                      _%L218317%_
                      '#f
                      (let ((__tmp221293
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc218086%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp221293)))))
                  (_%__kont220944220945%_
                   (lambda (_%L218252%_ _%L218254%_ _%L218255%_)
                     (_%make-signature218091%_
                      _%L218255%_
                      _%L218254%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L218252%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220931220932%_))
                  (let ((_%e218102218609%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220931220932%_))))
                    (let ((_%tl218104218616%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e218102218609%_)))
                          (_%hd218103218613%_
                           (let ()
                             (declare (not safe))
                             (##car _%e218102218609%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl218104218616%_))
                          (let ((_%e218105218619%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl218104218616%_))))
                            (let ((_%tl218107218626%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218105218619%_)))
                                  (_%hd218106218623%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218105218619%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218107218626%_))
                                  (_%__kont220934220935%_
                                   _%hd218106218623%_
                                   _%hd218103218613%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218107218626%_))
                                      (let ((_%e218117218556%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl218107218626%_))))
                                        (let ((_%tl218119218563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218117218556%_)))
                                              (_%hd218118218560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218117218556%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd218118218560%_))
                                              (let ((_%e218120218566%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd218118218560%_))))
                                                (if (equal? _%e218120218566%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl218119218563%_))
                                                        (let ((_%e218121218570%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl218119218563%_))))
                  (let ((_%tl218123218577%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e218121218570%_)))
                        (_%hd218122218574%_
                         (let ()
                           (declare (not safe))
                           (##car _%e218121218570%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl218123218577%_))
                        (_%__kont220936220937%_
                         _%hd218122218574%_
                         _%hd218106218623%_
                         _%hd218103218613%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl218123218577%_))
                            (let ((_%e218140218490%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl218123218577%_))))
                              (let ((_%tl218142218497%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e218140218490%_)))
                                    (_%hd218141218494%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e218140218490%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd218141218494%_))
                                    (let ((_%e218143218500%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd218141218494%_))))
                                      (if (equal? _%e218143218500%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218142218497%_))
                                              (_%__kont220938220939%_
                                               _%hd218122218574%_
                                               _%hd218106218623%_
                                               _%hd218103218613%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl218142218497%_))
                                                  (let ((_%e218165218400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl218142218497%_))))
                                                    (let ((_%tl218167218407%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e218165218400%_)))
                                                          (_%hd218166218404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e218165218400%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl218167218407%_))
                                                          (_%__kont220940220941%_
                                                           _%hd218166218404%_
                                                           _%hd218122218574%_
                                                           _%hd218106218623%_
                                                           _%hd218103218613%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g218098218201%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g218098218201%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g218098218201%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g218098218201%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g218098218201%_))))))
                (let () (declare (not safe)) (_%g218098218201%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e218120218566%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl218119218563%_))
                                                            (_%__kont220942220943%_
                                                             _%hd218106218623%_
                                                             _%hd218103218613%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl218119218563%_))
                        (let ((_%e218193218242%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl218119218563%_))))
                          (let ((_%tl218195218249%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e218193218242%_)))
                                (_%hd218194218246%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e218193218242%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl218195218249%_))
                                (_%__kont220944220945%_
                                 _%hd218194218246%_
                                 _%hd218106218623%_
                                 _%hd218103218613%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g218098218201%_)))))
                        (let () (declare (not safe)) (_%g218098218201%_))))
                (let () (declare (not safe)) (_%g218098218201%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g218098218201%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g218098218201%_))))))
                          (let () (declare (not safe)) (_%g218098218201%_)))))
                  (let () (declare (not safe)) (_%g218098218201%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig217695%_)
        (let* ((_%g217698217778%_
                (lambda (_%g217699217774%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217699217774%_))))
               (_%g217697218080%_
                (lambda (_%g217699217782%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217699217782%_))
                      (let ((_%e217705217785%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g217699217782%_))))
                        (let ((_%hd217706217789%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217705217785%_)))
                              (_%tl217707217792%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217705217785%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217707217792%_))
                              (let ((_%e217708217795%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl217707217792%_))))
                                (let ((_%hd217709217799%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217708217795%_)))
                                      (_%tl217710217802%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217708217795%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd217709217799%_))
                                      (let ((_%e217711217805%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd217709217799%_))))
                                        (if (equal? _%e217711217805%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl217710217802%_))
                                                (let ((_%e217712217809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl217710217802%_))))
                                                  (let ((_%hd217713217813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e217712217809%_)))
                                                        (_%tl217714217816%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e217712217809%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd217713217813%_))
                                                        (let ((_%e217715217819%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd217713217813%_))))
                  (let ((_%hd217716217823%_
                         (let ()
                           (declare (not safe))
                           (##car _%e217715217819%_)))
                        (_%tl217717217826%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e217715217819%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd217716217823%_))
                        (if (let ((__tmp221294 |gxc[1]#_g221295_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp221294
                               _%hd217716217823%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl217717217826%_))
                                (let ((_%e217718217829%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl217717217826%_))))
                                  (let ((_%hd217719217833%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217718217829%_)))
                                        (_%tl217720217836%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217718217829%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl217720217836%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217714217816%_))
                                            (let ((_%e217721217839%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl217714217816%_))))
                                              (let ((_%hd217722217843%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217721217839%_)))
                                                    (_%tl217723217846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217721217839%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd217722217843%_))
                                                    (let ((_%e217724217849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd217722217843%_))))
                                                      (if (equal? _%e217724217849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl217723217846%_))
                      (let ((_%e217725217853%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl217723217846%_))))
                        (let ((_%hd217726217857%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217725217853%_)))
                              (_%tl217727217860%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217725217853%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd217726217857%_))
                              (let ((_%e217728217863%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd217726217857%_))))
                                (let ((_%hd217729217867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217728217863%_)))
                                      (_%tl217730217870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217728217863%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd217729217867%_))
                                      (if (let ((__tmp221296
                                                 |gxc[1]#_g221297_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp221296
                                             _%hd217729217867%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl217730217870%_))
                                              (let ((_%e217731217873%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl217730217870%_))))
                                                (let ((_%hd217732217877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e217731217873%_)))
                                                      (_%tl217733217880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e217731217873%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl217733217880%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl217727217860%_))
                                                          (let ((_%e217734217883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl217727217860%_))))
                    (let ((_%hd217735217887%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217734217883%_)))
                          (_%tl217736217890%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217734217883%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd217735217887%_))
                          (let ((_%e217737217893%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd217735217887%_))))
                            (if (equal? _%e217737217893%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl217736217890%_))
                                    (let ((_%e217738217897%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl217736217890%_))))
                                      (let ((_%hd217739217901%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e217738217897%_)))
                                            (_%tl217740217904%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e217738217897%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd217739217901%_))
                                            (let ((_%e217741217907%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd217739217901%_))))
                                              (let ((_%hd217742217911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217741217907%_)))
                                                    (_%tl217743217914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217741217907%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd217742217911%_))
                                                    (if (let ((__tmp221298
                                                               |gxc[1]#_g221299_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp221298
                                                           _%hd217742217911%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl217743217914%_))
                                                            (let ((_%e217744217917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl217743217914%_))))
                      (let ((_%hd217745217921%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217744217917%_)))
                            (_%tl217746217924%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217744217917%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl217746217924%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl217740217904%_))
                                (let ((_%e217747217927%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl217740217904%_))))
                                  (let ((_%hd217748217931%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217747217927%_)))
                                        (_%tl217749217934%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217747217927%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd217748217931%_))
                                        (let ((_%e217750217937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd217748217931%_))))
                                          (if (equal? _%e217750217937%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl217749217934%_))
                                                  (let ((_%e217751217941%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl217749217934%_))))
                                                    (let ((_%hd217752217945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e217751217941%_)))
                                                          (_%tl217753217948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e217751217941%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd217752217945%_))
                                                          (let ((_%e217754217951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd217752217945%_))))
                    (let ((_%hd217755217955%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217754217951%_)))
                          (_%tl217756217958%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217754217951%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd217755217955%_))
                          (if (let ((__tmp221300 |gxc[1]#_g221301_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp221300
                                 _%hd217755217955%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl217756217958%_))
                                  (let ((_%e217757217961%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl217756217958%_))))
                                    (let ((_%hd217758217965%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e217757217961%_)))
                                          (_%tl217759217968%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e217757217961%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl217759217968%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl217753217948%_))
                                              (let ((_%e217760217971%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl217753217948%_))))
                                                (let ((_%hd217761217975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e217760217971%_)))
                                                      (_%tl217762217978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e217760217971%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd217761217975%_))
                                                      (let ((_%e217763217981%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd217761217975%_))))
                (if (equal? _%e217763217981%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl217762217978%_))
                        (let ((_%e217764217985%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl217762217978%_))))
                          (let ((_%hd217765217989%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e217764217985%_)))
                                (_%tl217766217992%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e217764217985%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd217765217989%_))
                                (let ((_%e217767217995%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd217765217989%_))))
                                  (let ((_%hd217768217999%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217767217995%_)))
                                        (_%tl217769218002%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217767217995%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd217768217999%_))
                                        (if (let ((__tmp221302
                                                   |gxc[1]#_g221303_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp221302
                                               _%hd217768217999%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl217769218002%_))
                                                (let ((_%e217770218005%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl217769218002%_))))
                                                  (let ((_%hd217771218009%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e217770218005%_)))
                                                        (_%tl217772218012%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e217770218005%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl217772218012%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl217766217992%_))
                                                            ((lambda (_%L218015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L218017%_
                              _%L218018%_
                              _%L218019%_
                              _%L218020%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L218017%_))
                           (cons _%L218017%_
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
                       (cons _%L218019%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L218015%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd217771218009%_
                     _%hd217758217965%_
                     _%hd217745217921%_
                     _%hd217732217877%_
                     _%hd217719217833%_)
                    (_%g217698217778%_ _%g217699217782%_))
                (_%g217698217778%_ _%g217699217782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g217698217778%_
                                                 _%g217699217782%_))
                                            (_%g217698217778%_
                                             _%g217699217782%_))
                                        (_%g217698217778%_
                                         _%g217699217782%_))))
                                (_%g217698217778%_ _%g217699217782%_))))
                        (_%g217698217778%_ _%g217699217782%_))
                    (_%g217698217778%_ _%g217699217782%_)))
              (_%g217698217778%_ _%g217699217782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g217698217778%_
                                               _%g217699217782%_))
                                          (_%g217698217778%_
                                           _%g217699217782%_))))
                                  (_%g217698217778%_ _%g217699217782%_))
                              (_%g217698217778%_ _%g217699217782%_))
                          (_%g217698217778%_ _%g217699217782%_))))
                  (_%g217698217778%_ _%g217699217782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g217698217778%_
                                                   _%g217699217782%_))
                                              (_%g217698217778%_
                                               _%g217699217782%_)))
                                        (_%g217698217778%_
                                         _%g217699217782%_))))
                                (_%g217698217778%_ _%g217699217782%_))
                            (_%g217698217778%_ _%g217699217782%_))))
                    (_%g217698217778%_ _%g217699217782%_))
                (_%g217698217778%_ _%g217699217782%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g217698217778%_
                                                     _%g217699217782%_))))
                                            (_%g217698217778%_
                                             _%g217699217782%_))))
                                    (_%g217698217778%_ _%g217699217782%_))
                                (_%g217698217778%_ _%g217699217782%_)))
                          (_%g217698217778%_ _%g217699217782%_))))
                  (_%g217698217778%_ _%g217699217782%_))
              (_%g217698217778%_ _%g217699217782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g217698217778%_
                                               _%g217699217782%_))
                                          (_%g217698217778%_
                                           _%g217699217782%_))
                                      (_%g217698217778%_ _%g217699217782%_))))
                              (_%g217698217778%_ _%g217699217782%_))))
                      (_%g217698217778%_ _%g217699217782%_))
                  (_%g217698217778%_ _%g217699217782%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g217698217778%_
                                                     _%g217699217782%_))))
                                            (_%g217698217778%_
                                             _%g217699217782%_))
                                        (_%g217698217778%_
                                         _%g217699217782%_))))
                                (_%g217698217778%_ _%g217699217782%_))
                            (_%g217698217778%_ _%g217699217782%_))
                        (_%g217698217778%_ _%g217699217782%_))))
                (_%g217698217778%_ _%g217699217782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g217698217778%_
                                                 _%g217699217782%_))
                                            (_%g217698217778%_
                                             _%g217699217782%_)))
                                      (_%g217698217778%_ _%g217699217782%_))))
                              (_%g217698217778%_ _%g217699217782%_))))
                      (_%g217698217778%_ _%g217699217782%_)))))
          (_%g217697218080%_ _%sig217695%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx218852%_)
        (let* ((_%g218855218873%_
                (lambda (_%g218856218869%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218856218869%_))))
               (_%g218854218928%_
                (lambda (_%g218856218877%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218856218877%_))
                      (let ((_%e218859218880%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g218856218877%_))))
                        (let ((_%hd218860218884%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218859218880%_)))
                              (_%tl218861218887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218859218880%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl218861218887%_))
                              (let ((_%e218862218890%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl218861218887%_))))
                                (let ((_%hd218863218894%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e218862218890%_)))
                                      (_%tl218864218897%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e218862218890%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218864218897%_))
                                      (let ((_%e218865218900%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl218864218897%_))))
                                        (let ((_%hd218866218904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218865218900%_)))
                                              (_%tl218867218907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218865218900%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218867218907%_))
                                              ((lambda (_%L218910%_
                                                        _%L218912%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L218912%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L218910%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx218852%_
                                                        _%L218912%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx218852%_
                                                        _%L218910%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L218912%_
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
                                                   (cons _%L218910%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g218855218873%_
                                                      _%g218856218877%_)))
                                               _%hd218866218904%_
                                               _%hd218863218894%_)
                                              (_%g218855218873%_
                                               _%g218856218877%_))))
                                      (_%g218855218873%_ _%g218856218877%_))))
                              (_%g218855218873%_ _%g218856218877%_))))
                      (_%g218855218873%_ _%g218856218877%_)))))
          (_%g218854218928%_ _%stx218852%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx218932%_)
        (let* ((_%g218935218959%_
                (lambda (_%g218936218955%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218936218955%_))))
               (_%g218934219242%_
                (lambda (_%g218936218963%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218936218963%_))
                      (let ((_%e218939218966%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g218936218963%_))))
                        (let ((_%hd218940218970%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218939218966%_)))
                              (_%tl218941218973%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218939218966%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl218941218973%_))
                              (let ((_%e218942218976%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl218941218973%_))))
                                (let ((_%hd218943218980%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e218942218976%_)))
                                      (_%tl218944218983%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e218942218976%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl218944218983%_))
                                      (let ((_g221304_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl218944218983%_
                                                '0))))
                                        (begin
                                          (let ((_g221305_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221304_)
                                                       (##values-length
                                                        _g221304_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221305_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221305_)))
                                          (let ((_%target218945218986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g221304_ 0)))
                                                (_%tl218947218989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g221304_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl218947218989%_))
                                                (letrec ((_%loop218948218992%_
                                                          (lambda (_%hd218946218996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature218952218999%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd218946218996%_))
                        (let ((_%e218949219002%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd218946218996%_))))
                          (let ((_%lp-hd218950219006%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e218949219002%_)))
                                (_%lp-tl218951219009%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e218949219002%_))))
                            (_%loop218948218992%_
                             _%lp-tl218951219009%_
                             (cons _%lp-hd218950219006%_
                                   _%signature218952218999%_))))
                        (let ((_%signature218953219012%_
                               (reverse _%signature218952218999%_)))
                          ((lambda (_%L219016%_ _%L219018%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L219018%_))
                                 (let* ((_%g219036219051%_
                                         (lambda (_%g219037219047%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g219037219047%_))))
                                        (_%g219035219230%_
                                         (lambda (_%g219037219055%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g219037219055%_))
                                               (let ((_%e219040219058%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g219037219055%_))))
                                                 (let ((_%hd219041219062%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219040219058%_)))
                                                       (_%tl219042219065%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219040219058%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl219042219065%_))
                                                       (let ((_%e219043219068%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl219042219065%_))))
                 (let ((_%hd219044219072%_
                        (let ()
                          (declare (not safe))
                          (##car _%e219043219068%_)))
                       (_%tl219045219075%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e219043219068%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl219045219075%_))
                       ((lambda (_%L219078%_ _%L219080%_)
                          (let* ((_%g219096219104%_
                                  (lambda (_%g219097219100%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g219097219100%_))))
                                 (_%g219095219226%_
                                  (lambda (_%g219097219108%_)
                                    ((lambda (_%L219111%_)
                                       (let* ((_%unchecked219124%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L219078%_))
                                              (_%g219127219135%_
                                               (lambda (_%g219128219131%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g219128219131%_))))
                                              (_%g219126219158%_
                                               (lambda (_%g219128219139%_)
                                                 ((lambda (_%L219142%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L219111%_
                                                                (cons _%L219142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g219128219139%_))))
                                         (_%g219126219158%_
                                          (if _%unchecked219124%_
                                              (let* ((_%g219162219177%_
                                                      (lambda (_%g219163219173%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g219163219173%_))))
                                                     (_%g219161219222%_
                                                      (lambda (_%g219163219181%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g219163219181%_))
                                                            (let ((_%e219166219184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g219163219181%_))))
                      (let ((_%hd219167219188%_
                             (let ()
                               (declare (not safe))
                               (##car _%e219166219184%_)))
                            (_%tl219168219191%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e219166219184%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl219168219191%_))
                            (let ((_%e219169219194%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl219168219191%_))))
                              (let ((_%hd219170219198%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e219169219194%_)))
                                    (_%tl219171219201%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e219169219194%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl219171219201%_))
                                    ((lambda (_%L219204%_ _%L219206%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L219206%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L219080%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L219204%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd219170219198%_
                                     _%hd219167219188%_)
                                    (_%g219162219177%_ _%g219163219181%_))))
                            (_%g219162219177%_ _%g219163219181%_))))
                    (_%g219162219177%_ _%g219163219181%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g219161219222%_
                                                 _%unchecked219124%_))
                                              '(begin)))))
                                     _%g219097219108%_))))
                            (_%g219095219226%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L219018%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L219080%_ '()))
                   (cons '#f (cons 'signature: (cons _%L219078%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd219044219072%_
                        _%hd219041219062%_)
                       (_%g219036219051%_ _%g219037219055%_))))
               (_%g219036219051%_ _%g219037219055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219036219051%_
                                                _%g219037219055%_)))))
                                   (_%g219035219230%_
                                    (|gxc[1]#parse-signature|
                                     _%stx218932%_
                                     _%L219018%_
                                     (let ((__tmp221306
                                            (lambda (_%g219233219236%_
                                                     _%g219234219239%_)
                                              (cons _%g219233219236%_
                                                    _%g219234219239%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp221306
                                        '()
                                        _%L219016%_)))))
                                 (_%g218935218959%_ _%g218936218963%_)))
                           _%signature218953219012%_
                           _%hd218943218980%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop218948218992%_
                                                   _%target218945218986%_
                                                   '()))
                                                (_%g218935218959%_
                                                 _%g218936218963%_)))))
                                      (_%g218935218959%_ _%g218936218963%_))))
                              (_%g218935218959%_ _%g218936218963%_))))
                      (_%g218935218959%_ _%g218936218963%_)))))
          (_%g218934219242%_ _%stx218932%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx219247%_)
        (let* ((_%g219250219274%_
                (lambda (_%g219251219270%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219251219270%_))))
               (_%g219249220157%_
                (lambda (_%g219251219278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219251219278%_))
                      (let ((_%e219254219281%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g219251219278%_))))
                        (let ((_%hd219255219285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219254219281%_)))
                              (_%tl219256219288%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219254219281%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219256219288%_))
                              (let ((_%e219257219291%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl219256219288%_))))
                                (let ((_%hd219258219295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219257219291%_)))
                                      (_%tl219259219298%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219257219291%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl219259219298%_))
                                      (let ((_g221307_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl219259219298%_
                                                '0))))
                                        (begin
                                          (let ((_g221308_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221307_)
                                                       (##values-length
                                                        _g221307_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221308_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221308_)))
                                          (let ((_%target219260219301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g221307_ 0)))
                                                (_%tl219262219304%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g221307_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl219262219304%_))
                                                (letrec ((_%loop219263219307%_
                                                          (lambda (_%hd219261219311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature219267219314%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd219261219311%_))
                        (let ((_%e219264219317%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd219261219311%_))))
                          (let ((_%lp-hd219265219321%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e219264219317%_)))
                                (_%lp-tl219266219324%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e219264219317%_))))
                            (_%loop219263219307%_
                             _%lp-tl219266219324%_
                             (cons _%lp-hd219265219321%_
                                   _%case-signature219267219314%_))))
                        (let ((_%case-signature219268219327%_
                               (reverse _%case-signature219267219314%_)))
                          ((lambda (_%L219331%_ _%L219333%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L219333%_))
                                 (let* ((_%signatures219364%_
                                         (map (lambda (_%g219350219352%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx219247%_
                                                 _%L219333%_
                                                 _%g219350219352%_))
                                              (let ((__tmp221309
                                                     (lambda (_%g219355219358%_
                                                              _%g219356219361%_)
                                                       (cons _%g219355219358%_
                                                             _%g219356219361%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp221309
                                                 '()
                                                 _%L219331%_))))
                                        (_%g219367219393%_
                                         (lambda (_%g219368219389%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g219368219389%_))))
                                        (_%g219366220153%_
                                         (lambda (_%g219368219397%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g219368219397%_))
                                               (let ((_g221310_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g219368219397%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g221311_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g221310_)
                        (##values-length _g221310_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g221311_ 2)))
                 (error "Context expects 2 values" _g221311_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target219371219400%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g221310_
                                                             0)))
                                                         (_%tl219373219403%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g221310_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl219373219403%_))
                                                         (letrec ((_%loop219374219406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd219372219410%_
                                    _%sig219378219413%_
                                    _%arity219379219415%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd219372219410%_))
                                 (let ((_%e219375219418%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd219372219410%_))))
                                   (let ((_%lp-hd219376219422%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219375219418%_)))
                                         (_%lp-tl219377219425%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219375219418%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd219376219422%_))
                                         (let ((_%e219382219428%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd219376219422%_))))
                                           (let ((_%hd219383219432%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e219382219428%_)))
                                                 (_%tl219384219435%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e219382219428%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl219384219435%_))
                                                 (let ((_%e219385219438%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl219384219435%_))))
                                                   (let ((_%hd219386219442%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e219385219438%_)))
                                                         (_%tl219387219445%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e219385219438%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl219387219445%_))
                                                         (_%loop219374219406%_
                                                          _%lp-tl219377219425%_
                                                          (cons _%hd219386219442%_
                                                                _%sig219378219413%_)
                                                          (cons _%hd219383219432%_
                                                                _%arity219379219415%_))
                                                         (_%g219367219393%_
                                                          _%g219368219397%_))))
                                                 (_%g219367219393%_
                                                  _%g219368219397%_))))
                                         (_%g219367219393%_
                                          _%g219368219397%_))))
                                 (let ((_%sig219380219448%_
                                        (reverse _%sig219378219413%_))
                                       (_%arity219381219451%_
                                        (reverse _%arity219379219415%_)))
                                   ((lambda (_%L219454%_ _%L219456%_)
                                      (let* ((_%g219473219481%_
                                              (lambda (_%g219474219477%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g219474219477%_))))
                                             (_%g219472220138%_
                                              (lambda (_%g219474219485%_)
                                                ((lambda (_%L219488%_)
                                                   (let* ((_%g219501219509%_
                                                           (lambda (_%g219502219505%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g219502219505%_))))
                  (_%g219500219531%_
                   (lambda (_%g219502219513%_)
                     ((lambda (_%L219516%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L219488%_ (cons _%L219516%_ '()))))
                      _%g219502219513%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g219500219531%_
                                                      (let ((_g221312_
                                                             (let _%loop219535%_ ((_%rest219538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures219364%_)
                                          (_%unchecked-proc219540%_ '#f)
                                          (_%unchecked-clauses219541%_ '()))
                       (let* ((_%rest219542219550%_ _%rest219538%_)
                              (_%else219544219562%_
                               (lambda ()
                                 (values _%unchecked-proc219540%_
                                         (reverse!
                                          _%unchecked-clauses219541%_))))
                              (_%K219546220003%_
                               (lambda (_%rest219566%_ _%hd219568%_)
                                 (let* ((_%g219570219657%_
                                         (lambda (_%g219571219653%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g219571219653%_))))
                                        (_%g219569219999%_
                                         (lambda (_%g219571219661%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g219571219661%_))
                                               (let ((_%e219578219664%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g219571219661%_))))
                                                 (let ((_%hd219579219668%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219578219664%_)))
                                                       (_%tl219580219671%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219578219664%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl219580219671%_))
                                                       (let ((_%e219581219674%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl219580219671%_))))
                 (let ((_%hd219582219678%_
                        (let ()
                          (declare (not safe))
                          (##car _%e219581219674%_)))
                       (_%tl219583219681%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e219581219674%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd219582219678%_))
                       (let ((_%e219584219684%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd219582219678%_))))
                         (let ((_%hd219585219688%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e219584219684%_)))
                               (_%tl219586219691%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e219584219684%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl219586219691%_))
                               (let ((_%e219587219694%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl219586219691%_))))
                                 (let ((_%hd219588219698%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e219587219694%_)))
                                       (_%tl219589219701%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e219587219694%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd219588219698%_))
                                       (let ((_%e219590219704%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd219588219698%_))))
                                         (if (equal? _%e219590219704%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl219589219701%_))
                                                 (let ((_%e219591219708%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl219589219701%_))))
                                                   (let ((_%hd219592219712%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e219591219708%_)))
                                                         (_%tl219593219715%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e219591219708%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd219592219712%_))
                                                         (let ((_%e219594219718%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd219592219712%_))))
                   (let ((_%hd219595219722%_
                          (let ()
                            (declare (not safe))
                            (##car _%e219594219718%_)))
                         (_%tl219596219725%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e219594219718%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd219595219722%_))
                         (if (let ((__tmp221314 |gxc[1]#_g221315_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp221314
                                _%hd219595219722%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl219596219725%_))
                                 (let ((_%e219597219728%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl219596219725%_))))
                                   (let ((_%hd219598219732%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219597219728%_)))
                                         (_%tl219599219735%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219597219728%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl219599219735%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl219593219715%_))
                                             (let ((_%e219600219738%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl219593219715%_))))
                                               (let ((_%hd219601219742%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e219600219738%_)))
                                                     (_%tl219602219745%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e219600219738%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd219601219742%_))
                                                     (let ((_%e219603219748%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd219601219742%_))))
                                                       (if (equal? _%e219603219748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl219602219745%_))
                       (let ((_%e219604219752%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl219602219745%_))))
                         (let ((_%hd219605219756%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e219604219752%_)))
                               (_%tl219606219759%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e219604219752%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd219605219756%_))
                               (let ((_%e219607219762%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd219605219756%_))))
                                 (let ((_%hd219608219766%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e219607219762%_)))
                                       (_%tl219609219769%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e219607219762%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd219608219766%_))
                                       (if (let ((__tmp221316
                                                  |gxc[1]#_g221317_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp221316
                                              _%hd219608219766%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl219609219769%_))
                                               (let ((_%e219610219772%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl219609219769%_))))
                                                 (let ((_%hd219611219776%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219610219772%_)))
                                                       (_%tl219612219779%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219610219772%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl219612219779%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl219606219759%_))
                                                           (let ((_%e219613219782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl219606219759%_))))
                     (let ((_%hd219614219786%_
                            (let ()
                              (declare (not safe))
                              (##car _%e219613219782%_)))
                           (_%tl219615219789%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e219613219782%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd219614219786%_))
                           (let ((_%e219616219792%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd219614219786%_))))
                             (if (equal? _%e219616219792%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl219615219789%_))
                                     (let ((_%e219617219796%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl219615219789%_))))
                                       (let ((_%hd219618219800%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e219617219796%_)))
                                             (_%tl219619219803%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e219617219796%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd219618219800%_))
                                             (let ((_%e219620219806%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd219618219800%_))))
                                               (let ((_%hd219621219810%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e219620219806%_)))
                                                     (_%tl219622219813%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e219620219806%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd219621219810%_))
                                                     (if (let ((__tmp221318
                                                                |gxc[1]#_g221319_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp221318
                                                            _%hd219621219810%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl219622219813%_))
                     (let ((_%e219623219816%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl219622219813%_))))
                       (let ((_%hd219624219820%_
                              (let ()
                                (declare (not safe))
                                (##car _%e219623219816%_)))
                             (_%tl219625219823%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e219623219816%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl219625219823%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl219619219803%_))
                                 (let ((_%e219626219826%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl219619219803%_))))
                                   (let ((_%hd219627219830%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219626219826%_)))
                                         (_%tl219628219833%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219626219826%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd219627219830%_))
                                         (let ((_%e219629219836%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd219627219830%_))))
                                           (if (equal? _%e219629219836%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl219628219833%_))
                                                   (let ((_%e219630219840%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl219628219833%_))))
                                                     (let ((_%hd219631219844%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e219630219840%_)))
                                                           (_%tl219632219847%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e219630219840%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd219631219844%_))
                                                           (let ((_%e219633219850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd219631219844%_))))
                     (let ((_%hd219634219854%_
                            (let ()
                              (declare (not safe))
                              (##car _%e219633219850%_)))
                           (_%tl219635219857%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e219633219850%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd219634219854%_))
                           (if (let ((__tmp221320 |gxc[1]#_g221321_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp221320
                                  _%hd219634219854%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl219635219857%_))
                                   (let ((_%e219636219860%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl219635219857%_))))
                                     (let ((_%hd219637219864%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e219636219860%_)))
                                           (_%tl219638219867%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e219636219860%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl219638219867%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl219632219847%_))
                                               (let ((_%e219639219870%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl219632219847%_))))
                                                 (let ((_%hd219640219874%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219639219870%_)))
                                                       (_%tl219641219877%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219639219870%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd219640219874%_))
                                                       (let ((_%e219642219880%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd219640219874%_))))
                 (if (equal? _%e219642219880%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl219641219877%_))
                         (let ((_%e219643219884%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl219641219877%_))))
                           (let ((_%hd219644219888%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e219643219884%_)))
                                 (_%tl219645219891%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e219643219884%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd219644219888%_))
                                 (let ((_%e219646219894%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd219644219888%_))))
                                   (let ((_%hd219647219898%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219646219894%_)))
                                         (_%tl219648219901%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219646219894%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd219647219898%_))
                                         (if (let ((__tmp221322
                                                    |gxc[1]#_g221323_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp221322
                                                _%hd219647219898%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl219648219901%_))
                                                 (let ((_%e219649219904%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl219648219901%_))))
                                                   (let ((_%hd219650219908%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e219649219904%_)))
                                                         (_%tl219651219911%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e219649219904%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl219651219911%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl219645219891%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl219583219681%_))
                         ((lambda (_%L219914%_
                                   _%L219916%_
                                   _%L219917%_
                                   _%L219918%_
                                   _%L219919%_
                                   _%L219920%_)
                            (let ((_%clause219991%_
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
                                                     (cons _%L219920%_ '()))
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
                                                 (cons _%L219918%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L219914%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked219993%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L219916%_))))
                              (_%loop219535%_
                               _%rest219566%_
                               (let ((_%$e219995%_ _%unchecked219993%_))
                                 (if _%$e219995%_
                                     _%$e219995%_
                                     _%unchecked-proc219540%_))
                               (cons _%clause219991%_
                                     _%unchecked-clauses219541%_))))
                          _%hd219650219908%_
                          _%hd219637219864%_
                          _%hd219624219820%_
                          _%hd219611219776%_
                          _%hd219598219732%_
                          _%hd219579219668%_)
                         (_%g219570219657%_ _%g219571219661%_))
                     (_%g219570219657%_ _%g219571219661%_))
                 (_%g219570219657%_ _%g219571219661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g219570219657%_
                                                  _%g219571219661%_))
                                             (_%g219570219657%_
                                              _%g219571219661%_))
                                         (_%g219570219657%_
                                          _%g219571219661%_))))
                                 (_%g219570219657%_ _%g219571219661%_))))
                         (_%g219570219657%_ _%g219571219661%_))
                     (_%g219570219657%_ _%g219571219661%_)))
               (_%g219570219657%_ _%g219571219661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219570219657%_
                                                _%g219571219661%_))
                                           (_%g219570219657%_
                                            _%g219571219661%_))))
                                   (_%g219570219657%_ _%g219571219661%_))
                               (_%g219570219657%_ _%g219571219661%_))
                           (_%g219570219657%_ _%g219571219661%_))))
                   (_%g219570219657%_ _%g219571219661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g219570219657%_
                                                    _%g219571219661%_))
                                               (_%g219570219657%_
                                                _%g219571219661%_)))
                                         (_%g219570219657%_
                                          _%g219571219661%_))))
                                 (_%g219570219657%_ _%g219571219661%_))
                             (_%g219570219657%_ _%g219571219661%_))))
                     (_%g219570219657%_ _%g219571219661%_))
                 (_%g219570219657%_ _%g219571219661%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g219570219657%_
                                                      _%g219571219661%_))))
                                             (_%g219570219657%_
                                              _%g219571219661%_))))
                                     (_%g219570219657%_ _%g219571219661%_))
                                 (_%g219570219657%_ _%g219571219661%_)))
                           (_%g219570219657%_ _%g219571219661%_))))
                   (_%g219570219657%_ _%g219571219661%_))
               (_%g219570219657%_ _%g219571219661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219570219657%_
                                                _%g219571219661%_))
                                           (_%g219570219657%_
                                            _%g219571219661%_))
                                       (_%g219570219657%_ _%g219571219661%_))))
                               (_%g219570219657%_ _%g219571219661%_))))
                       (_%g219570219657%_ _%g219571219661%_))
                   (_%g219570219657%_ _%g219571219661%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g219570219657%_
                                                      _%g219571219661%_))))
                                             (_%g219570219657%_
                                              _%g219571219661%_))
                                         (_%g219570219657%_
                                          _%g219571219661%_))))
                                 (_%g219570219657%_ _%g219571219661%_))
                             (_%g219570219657%_ _%g219571219661%_))
                         (_%g219570219657%_ _%g219571219661%_))))
                 (_%g219570219657%_ _%g219571219661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g219570219657%_
                                                  _%g219571219661%_))
                                             (_%g219570219657%_
                                              _%g219571219661%_)))
                                       (_%g219570219657%_ _%g219571219661%_))))
                               (_%g219570219657%_ _%g219571219661%_))))
                       (_%g219570219657%_ _%g219571219661%_))))
               (_%g219570219657%_ _%g219571219661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219570219657%_
                                                _%g219571219661%_)))))
                                   (_%g219569219999%_ _%hd219568%_)))))
                         (if (pair? _%rest219542219550%_)
                             (let ((_%hd219547220007%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest219542219550%_)))
                                   (_%tl219548220010%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest219542219550%_))))
                               (let* ((_%hd220013%_ _%hd219547220007%_)
                                      (_%rest220016%_ _%tl219548220010%_))
                                 (_%K219546220003%_
                                  _%rest220016%_
                                  _%hd220013%_)))
                             (_%else219544219562%_))))))
                (begin
                  (let ((_g221313_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g221312_)
                               (##values-length _g221312_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g221313_ 2)))
                        (error "Context expects 2 values" _g221313_)))
                  (let ((_%unchecked-proc220019%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221312_ 0)))
                        (_%unchecked-clauses220021%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221312_ 1))))
                    (if _%unchecked-proc220019%_
                        (let* ((_%g220023220047%_
                                (lambda (_%g220024220043%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g220024220043%_))))
                               (_%g220022220134%_
                                (lambda (_%g220024220051%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g220024220051%_))
                                      (let ((_%e220027220054%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g220024220051%_))))
                                        (let ((_%hd220028220058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e220027220054%_)))
                                              (_%tl220029220061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e220027220054%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl220029220061%_))
                                              (let ((_%e220030220064%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl220029220061%_))))
                                                (let ((_%hd220031220068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e220030220064%_)))
                                                      (_%tl220032220071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e220030220064%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd220031220068%_))
                                                      (let ((_g221324_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd220031220068%_ '0))))
                (begin
                  (let ((_g221325_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g221324_)
                               (##values-length _g221324_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g221325_ 2)))
                        (error "Context expects 2 values" _g221325_)))
                  (let ((_%target220033220074%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221324_ 0)))
                        (_%tl220035220077%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221324_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl220035220077%_))
                        (letrec ((_%loop220036220080%_
                                  (lambda (_%hd220034220084%_
                                           _%clause220040220087%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd220034220084%_))
                                        (let ((_%e220037220090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd220034220084%_))))
                                          (let ((_%lp-hd220038220094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e220037220090%_)))
                                                (_%lp-tl220039220097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e220037220090%_))))
                                            (_%loop220036220080%_
                                             _%lp-tl220039220097%_
                                             (cons _%lp-hd220038220094%_
                                                   _%clause220040220087%_))))
                                        (let ((_%clause220041220100%_
                                               (reverse _%clause220040220087%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl220032220071%_))
                                              ((lambda (_%L220104%_
                                                        _%L220106%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L220106%_
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
                                             (let ((__tmp221326
                                                    (lambda (_%g220125220128%_
                                                             _%g220126220131%_)
                                                      (cons _%g220125220128%_
                                                            _%g220126220131%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp221326
                                                '()
                                                _%L220104%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause220041220100%_
                                               _%hd220028220058%_)
                                              (_%g220023220047%_
                                               _%g220024220051%_)))))))
                          (_%loop220036220080%_ _%target220033220074%_ '()))
                        (_%g220023220047%_ _%g220024220051%_)))))
              (_%g220023220047%_ _%g220024220051%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g220023220047%_
                                               _%g220024220051%_))))
                                      (_%g220023220047%_ _%g220024220051%_)))))
                          (_%g220022220134%_
                           (list _%unchecked-proc220019%_
                                 _%unchecked-clauses220021%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g219474219485%_))))
                                        (_%g219472220138%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L219333%_
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
                                          _%L219454%_
                                          _%L219456%_))
                                       (let ((__tmp221327
                                              (lambda (_%g220141220145%_
                                                       _%g220142220148%_
                                                       _%g220143220150%_)
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
                                (cons _%g220142220148%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g220141220145%_ '())))))
              _%g220143220150%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp221327
                                          '()
                                          _%L219454%_
                                          _%L219456%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig219380219448%_
                                    _%arity219381219451%_))))))
                   (_%loop219374219406%_ _%target219371219400%_ '() '()))
                 (_%g219367219393%_ _%g219368219397%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219367219393%_
                                                _%g219368219397%_)))))
                                   (_%g219366220153%_ _%signatures219364%_))
                                 (_%g219250219274%_ _%g219251219278%_)))
                           _%case-signature219268219327%_
                           _%hd219258219295%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop219263219307%_
                                                   _%target219260219301%_
                                                   '()))
                                                (_%g219250219274%_
                                                 _%g219251219278%_)))))
                                      (_%g219250219274%_ _%g219251219278%_))))
                              (_%g219250219274%_ _%g219251219278%_))))
                      (_%g219250219274%_ _%g219251219278%_)))))
          (_%g219249220157%_ _%stx219247%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx220165%_)
        (let* ((_%__stx221147221148%_ _%$stx220165%_)
               (_%g220171220231%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx221147221148%_)))))
          (let ((_%__kont221150221151%_
                 (lambda (_%L220453%_ _%L220455%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L220455%_ '()))
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
                                                       (cons _%L220455%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L220453%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont221152221153%_
                 (lambda (_%L220378%_ _%L220380%_ _%L220381%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L220381%_ '()))
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
                                                       (cons _%L220381%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L220380%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L220378%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont221154221155%_
                 (lambda (_%L220292%_ _%L220294%_ _%L220295%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L220295%_ '()))
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
                                                       (cons _%L220295%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L220294%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L220292%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx221147221148%_))
                (let ((_%e220175220409%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx221147221148%_))))
                  (let ((_%tl220177220416%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e220175220409%_)))
                        (_%hd220176220413%_
                         (let ()
                           (declare (not safe))
                           (##car _%e220175220409%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl220177220416%_))
                        (let ((_%e220178220419%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl220177220416%_))))
                          (let ((_%tl220180220426%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e220178220419%_)))
                                (_%hd220179220423%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e220178220419%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd220179220423%_))
                                (let ((_%e220181220429%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd220179220423%_))))
                                  (if (equal? _%e220181220429%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl220180220426%_))
                                          (let ((_%e220182220433%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl220180220426%_))))
                                            (let ((_%tl220184220440%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e220182220433%_)))
                                                  (_%hd220183220437%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e220182220433%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl220184220440%_))
                                                  (let ((_%e220185220443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl220184220440%_))))
                                                    (let ((_%tl220187220450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e220185220443%_)))
                                                          (_%hd220186220447%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e220185220443%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl220187220450%_))
                                                          (_%__kont221150221151%_
                                                           _%hd220186220447%_
                                                           _%hd220183220437%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g220171220231%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220171220231%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g220171220231%_)))
                                      (if (equal? _%e220181220429%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl220180220426%_))
                                              (let ((_%e220198220348%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl220180220426%_))))
                                                (let ((_%tl220200220355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e220198220348%_)))
                                                      (_%hd220199220352%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e220198220348%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl220200220355%_))
                                                      (let ((_%e220201220358%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl220200220355%_))))
                (let ((_%tl220203220365%_
                       (let () (declare (not safe)) (##cdr _%e220201220358%_)))
                      (_%hd220202220362%_
                       (let ()
                         (declare (not safe))
                         (##car _%e220201220358%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl220203220365%_))
                      (let ((_%e220204220368%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl220203220365%_))))
                        (let ((_%tl220206220375%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e220204220368%_)))
                              (_%hd220205220372%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e220204220368%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl220206220375%_))
                              (_%__kont221152221153%_
                               _%hd220205220372%_
                               _%hd220202220362%_
                               _%hd220199220352%_)
                              (let ()
                                (declare (not safe))
                                (_%g220171220231%_)))))
                      (let () (declare (not safe)) (_%g220171220231%_)))))
              (let () (declare (not safe)) (_%g220171220231%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g220171220231%_)))
                                          (if (equal? _%e220181220429%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl220180220426%_))
                                                  (let ((_%e220217220262%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl220180220426%_))))
                                                    (let ((_%tl220219220269%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e220217220262%_)))
                                                          (_%hd220218220266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e220217220262%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl220219220269%_))
                                                          (let ((_%e220220220272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl220219220269%_))))
                    (let ((_%tl220222220279%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e220220220272%_)))
                          (_%hd220221220276%_
                           (let ()
                             (declare (not safe))
                             (##car _%e220220220272%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl220222220279%_))
                          (let ((_%e220223220282%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl220222220279%_))))
                            (let ((_%tl220225220289%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e220223220282%_)))
                                  (_%hd220224220286%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e220223220282%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl220225220289%_))
                                  (_%__kont221154221155%_
                                   _%hd220224220286%_
                                   _%hd220221220276%_
                                   _%hd220218220266%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g220171220231%_)))))
                          (let () (declare (not safe)) (_%g220171220231%_)))))
                  (let () (declare (not safe)) (_%g220171220231%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220171220231%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g220171220231%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g220171220231%_)))))
                        (let () (declare (not safe)) (_%g220171220231%_)))))
                (let () (declare (not safe)) (_%g220171220231%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx220477%_)
        (let* ((_%g220481220501%_
                (lambda (_%g220482220497%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g220482220497%_))))
               (_%g220480220572%_
                (lambda (_%g220482220505%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g220482220505%_))
                      (let ((_%e220484220508%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g220482220505%_))))
                        (let ((_%hd220485220512%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e220484220508%_)))
                              (_%tl220486220515%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e220484220508%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl220486220515%_))
                              (let ((_g221328_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl220486220515%_
                                        '0))))
                                (begin
                                  (let ((_g221329_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221328_)
                                               (##values-length _g221328_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221329_ 2)))
                                        (error "Context expects 2 values"
                                               _g221329_)))
                                  (let ((_%target220487220518%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221328_ 0)))
                                        (_%tl220489220521%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221328_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl220489220521%_))
                                        (letrec ((_%loop220490220524%_
                                                  (lambda (_%hd220488220528%_
                                                           _%decl220494220531%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd220488220528%_))
                                                        (let ((_%e220491220534%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd220488220528%_))))
                  (let ((_%lp-hd220492220538%_
                         (let ()
                           (declare (not safe))
                           (##car _%e220491220534%_)))
                        (_%lp-tl220493220541%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e220491220534%_))))
                    (_%loop220490220524%_
                     _%lp-tl220493220541%_
                     (cons _%lp-hd220492220538%_ _%decl220494220531%_))))
                (let ((_%decl220495220544%_ (reverse _%decl220494220531%_)))
                  ((lambda (_%L220548%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp221330
                                  (lambda (_%g220563220566%_ _%g220564220569%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g220563220566%_)
                                          _%g220564220569%_))))
                             (declare (not safe))
                             (__foldr1 __tmp221330 '() _%L220548%_))))
                   _%decl220495220544%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop220490220524%_
                                           _%target220487220518%_
                                           '()))
                                        (_%g220481220501%_
                                         _%g220482220505%_)))))
                              (_%g220481220501%_ _%g220482220505%_))))
                      (_%g220481220501%_ _%g220482220505%_)))))
          (_%g220480220572%_ _%$stx220477%_))))))
