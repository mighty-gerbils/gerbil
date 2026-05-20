(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g173364_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173366_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173368_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173370_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173371_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173373_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173374_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173376_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173377_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173379_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173380_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173382_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj173360
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 '#f '13 '#f '#f))
        (let ((__tmp173363 |gx[1]#_g173364_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 __tmp173363 '4 '#f '#f))
        (let ((__tmp173365 |gx[1]#_g173366_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 __tmp173365 '14 '#f '#f))
        (let ((__tmp173367 |gx[1]#_g173368_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 __tmp173367 '15 '#f '#f))
        (let ((__tmp173369
               (cons (cons 'e |gx[1]#_g173370_|)
                     (cons (cons 'source |gx[1]#_g173371_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 __tmp173369 '16 '#f '#f))
        (let ((__tmp173372
               (cons (cons 'e |gx[1]#_g173373_|)
                     (cons (cons 'source |gx[1]#_g173374_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 __tmp173372 '17 '#f '#f))
        (let ((__tmp173375
               (cons (cons 'e |gx[1]#_g173376_|)
                     (cons (cons 'source |gx[1]#_g173377_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 __tmp173375 '18 '#f '#f))
        (let ((__tmp173378
               (cons (cons 'e |gx[1]#_g173379_|)
                     (cons (cons 'source |gx[1]#_g173380_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 __tmp173378 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173360 '() '21 '#f '#f))
        __obj173360))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx171957%_)
        (let* ((_%g171961171975%_
                (lambda (_%g171962171971%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g171962171971%_)))
               (_%g171960172017%_
                (lambda (_%g171962171979%_)
                  (if (gx#stx-pair? _%g171962171979%_)
                      (let ((_%e171964171982%_
                             (gx#syntax-e _%g171962171979%_)))
                        (let ((_%hd171965171986%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171964171982%_)))
                              (_%tl171966171989%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171964171982%_))))
                          (if (gx#stx-pair? _%tl171966171989%_)
                              (let ((_%e171967171992%_
                                     (gx#syntax-e _%tl171966171989%_)))
                                (let ((_%hd171968171996%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171967171992%_)))
                                      (_%tl171969171999%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171967171992%_))))
                                  (if (gx#stx-null? _%tl171969171999%_)
                                      ((lambda (_%g171963172002%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g171963172002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g171963172002%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd171968171996%_)
                                      (_%g171961171975%_ _%g171962171979%_))))
                              (_%g171961171975%_ _%g171962171979%_))))
                      (_%g171961171975%_ _%g171962171979%_)))))
          (_%g171960172017%_ _%$stx171957%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx172021%_)
        (letrec ((_%generate172024%_
                  (lambda (_%tgt172173%_ _%kws172175%_ _%clauses172176%_)
                    (letrec ((_%generate-clause172178%_
                              (lambda (_%hd173111%_ _%E173113%_)
                                (let* ((_%__stx173263173264%_ _%hd173111%_)
                                       (_%g173117173144%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx173263173264%_))))
                                  (let ((_%__kont173266173267%_
                                         (lambda (_%g173119173240%_
                                                  _%g173120173242%_)
                                           (_%generate1172180%_
                                            _%hd173111%_
                                            _%g173120173242%_
                                            '#t
                                            _%g173119173240%_
                                            _%E173113%_)))
                                        (_%__kont173268173269%_
                                         (lambda (_%g173127173192%_
                                                  _%g173128173194%_
                                                  _%g173129173195%_)
                                           (_%generate1172180%_
                                            _%hd173111%_
                                            _%g173129173195%_
                                            _%g173128173194%_
                                            _%g173127173192%_
                                            _%E173113%_)))
                                        (_%__kont173270173271%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx172021%_
                                            _%hd173111%_))))
                                    (if (gx#stx-pair? _%__stx173263173264%_)
                                        (let ((_%e173121173220%_
                                               (gx#syntax-e
                                                _%__stx173263173264%_)))
                                          (let ((_%tl173123173227%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e173121173220%_)))
                                                (_%hd173122173224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e173121173220%_))))
                                            (if (gx#stx-pair?
                                                 _%tl173123173227%_)
                                                (let ((_%e173124173230%_
                                                       (gx#syntax-e
                                                        _%tl173123173227%_)))
                                                  (let ((_%tl173126173237%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173124173230%_)))
                                                        (_%hd173125173234%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173124173230%_))))
                                                    (if (gx#stx-null?
                                                         _%tl173126173237%_)
                                                        (_%__kont173266173267%_
                                                         _%hd173125173234%_
                                                         _%hd173122173224%_)
                                                        (if (gx#stx-pair?
                                                             _%tl173126173237%_)
                                                            (let ((_%e173136173182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl173126173237%_)))
                      (let ((_%tl173138173189%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173136173182%_)))
                            (_%hd173137173186%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173136173182%_))))
                        (if (gx#stx-null? _%tl173138173189%_)
                            (_%__kont173268173269%_
                             _%hd173137173186%_
                             _%hd173125173234%_
                             _%hd173122173224%_)
                            (_%__kont173270173271%_))))
                    (_%__kont173270173271%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont173270173271%_))))
                                        (_%__kont173270173271%_))))))
                             (_%generate1172180%_
                              (lambda (_%where172564%_
                                       _%hd172566%_
                                       _%fender172567%_
                                       _%body172568%_
                                       _%E172569%_)
                                (letrec ((_%recur172571%_
                                          (lambda (_%hd172574%_
                                                   _%tgt172576%_
                                                   _%K172577%_)
                                            (let* ((_%__stx173309173310%_
                                                    _%hd172574%_)
                                                   (_%g172580172592%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx173309173310%_))))
                                              (let ((_%__kont173312173313%_
                                                     (lambda (_%g172582172901%_
                                                              _%g172583172903%_)
                                                       (let* ((_%g172914172922%_
                                                               (lambda (_%g172915172918%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g172915172918%_)))
                      (_%g172913173103%_
                       (lambda (_%g172915172926%_)
                         ((lambda (_%g172916172929%_)
                            (let* ((_%g172941172949%_
                                    (lambda (_%g172942172945%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g172942172945%_)))
                                   (_%g172940173099%_
                                    (lambda (_%g172942172953%_)
                                      ((lambda (_%g172943172956%_)
                                         (let* ((_%g172969172977%_
                                                 (lambda (_%g172970172973%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g172970172973%_)))
                                                (_%g172968173095%_
                                                 (lambda (_%g172970172981%_)
                                                   ((lambda (_%g172971172984%_)
                                                      (let* ((_%g172997173005%_
                                                              (lambda (_%g172998173001%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g172998173001%_)))
                     (_%g172996173091%_
                      (lambda (_%g172998173009%_)
                        ((lambda (_%g172999173012%_)
                           (let* ((_%g173025173033%_
                                   (lambda (_%g173026173029%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g173026173029%_)))
                                  (_%g173024173087%_
                                   (lambda (_%g173026173037%_)
                                     ((lambda (_%g173027173040%_)
                                        (let* ((_%g173053173061%_
                                                (lambda (_%g173054173057%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g173054173057%_)))
                                               (_%g173052173083%_
                                                (lambda (_%g173054173065%_)
                                                  ((lambda (_%g173055173068%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g172916172929%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g172943172956%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g172916172929%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g172971172984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g172943172956%_ '()))
                                       '()))
                           (cons (cons _%g172999173012%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g172943172956%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g173027173040%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g173055173068%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g173054173065%_))))
                                          (_%g173052173083%_ _%E172569%_)))
                                      _%g173026173037%_))))
                             (_%g173024173087%_
                              (_%recur172571%_
                               _%g172583172903%_
                               _%g172971172984%_
                               (_%recur172571%_
                                _%g172582172901%_
                                _%g172999173012%_
                                _%K172577%_)))))
                         _%g172998173009%_))))
                (_%g172996173091%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g172970172981%_))))
                                           (_%g172968173095%_
                                            (gx#genident 'hd))))
                                       _%g172942172953%_))))
                              (_%g172940173099%_ (gx#genident 'e))))
                          _%g172915172926%_))))
                 (_%g172913173103%_ _%tgt172576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont173314173315%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd172574%_)
                                                           (if (gx#underscore?
                                                                _%hd172574%_)
                                                               _%K172577%_
                                                               (if (let ((__tmp173381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g172606172608%_)
                                    (gx#bound-identifier=?
                                     _%g172606172608%_
                                     _%hd172574%_))))
                             (declare (not safe))
                             (__find __tmp173381 _%kws172175%_))
                           (let* ((_%g172614172629%_
                                   (lambda (_%g172615172625%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g172615172625%_)))
                                  (_%g172613172682%_
                                   (lambda (_%g172615172633%_)
                                     (if (gx#stx-pair? _%g172615172633%_)
                                         (let ((_%e172618172636%_
                                                (gx#syntax-e
                                                 _%g172615172633%_)))
                                           (let ((_%hd172619172640%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172618172636%_)))
                                                 (_%tl172620172643%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172618172636%_))))
                                             (if (gx#stx-pair?
                                                  _%tl172620172643%_)
                                                 (let ((_%e172621172646%_
                                                        (gx#syntax-e
                                                         _%tl172620172643%_)))
                                                   (let ((_%hd172622172650%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e172621172646%_)))
                                                         (_%tl172623172653%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e172621172646%_))))
                                                     (if (gx#stx-null?
                                                          _%tl172623172653%_)
                                                         ((lambda (_%g172616172656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g172617172658%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g172617172658%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g172617172658%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g172616172656%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K172577%_ (cons _%E172569%_ '())))))
                  _%hd172622172650%_
                  _%hd172619172640%_)
                 (_%g172614172629%_ _%g172615172633%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g172614172629%_
                                                  _%g172615172633%_))))
                                         (_%g172614172629%_
                                          _%g172615172633%_)))))
                             (_%g172613172682%_
                              (list _%tgt172576%_ _%hd172574%_)))
                           (let* ((_%g172688172703%_
                                   (lambda (_%g172689172699%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g172689172699%_)))
                                  (_%g172687172748%_
                                   (lambda (_%g172689172707%_)
                                     (if (gx#stx-pair? _%g172689172707%_)
                                         (let ((_%e172692172710%_
                                                (gx#syntax-e
                                                 _%g172689172707%_)))
                                           (let ((_%hd172693172714%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172692172710%_)))
                                                 (_%tl172694172717%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172692172710%_))))
                                             (if (gx#stx-pair?
                                                  _%tl172694172717%_)
                                                 (let ((_%e172695172720%_
                                                        (gx#syntax-e
                                                         _%tl172694172717%_)))
                                                   (let ((_%hd172696172724%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e172695172720%_)))
                                                         (_%tl172697172727%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e172695172720%_))))
                                                     (if (gx#stx-null?
                                                          _%tl172697172727%_)
                                                         ((lambda (_%g172690172730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g172691172732%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g172690172730%_
                                            (cons _%g172691172732%_ '()))
                                      '())
                                (cons _%K172577%_ '()))))
                  _%hd172696172724%_
                  _%hd172693172714%_)
                 (_%g172688172703%_ _%g172689172707%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g172688172703%_
                                                  _%g172689172707%_))))
                                         (_%g172688172703%_
                                          _%g172689172707%_)))))
                             (_%g172687172748%_
                              (list _%tgt172576%_ _%hd172574%_)))))
                   (if (gx#stx-null? _%hd172574%_)
                       (let* ((_%g172754172762%_
                               (lambda (_%g172755172758%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g172755172758%_)))
                              (_%g172753172781%_
                               (lambda (_%g172755172766%_)
                                 ((lambda (_%g172756172769%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g172756172769%_
                                                            '()))
                                                (cons _%K172577%_
                                                      (cons _%E172569%_
                                                            '())))))
                                  _%g172755172766%_))))
                         (_%g172753172781%_ _%tgt172576%_))
                       (if (gx#stx-datum? _%hd172574%_)
                           (let* ((_%g172787172806%_
                                   (lambda (_%g172788172802%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g172788172802%_)))
                                  (_%g172786172865%_
                                   (lambda (_%g172788172810%_)
                                     (if (gx#stx-pair? _%g172788172810%_)
                                         (let ((_%e172792172813%_
                                                (gx#syntax-e
                                                 _%g172788172810%_)))
                                           (let ((_%hd172793172817%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172792172813%_)))
                                                 (_%tl172794172820%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172792172813%_))))
                                             (if (gx#stx-pair?
                                                  _%tl172794172820%_)
                                                 (let ((_%e172795172823%_
                                                        (gx#syntax-e
                                                         _%tl172794172820%_)))
                                                   (let ((_%hd172796172827%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e172795172823%_)))
                                                         (_%tl172797172830%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e172795172823%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl172797172830%_)
                                                         (let ((_%e172798172833%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl172797172830%_)))
                   (let ((_%hd172799172837%_
                          (let ()
                            (declare (not safe))
                            (##car _%e172798172833%_)))
                         (_%tl172800172840%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e172798172833%_))))
                     (if (gx#stx-null? _%tl172800172840%_)
                         ((lambda (_%g172789172843%_
                                   _%g172790172845%_
                                   _%g172791172846%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g172789172843%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g172791172846%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g172790172845%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K172577%_
                                              (cons _%E172569%_ '())))))
                          _%hd172799172837%_
                          _%hd172796172827%_
                          _%hd172793172817%_)
                         (_%g172787172806%_ _%g172788172810%_))))
                 (_%g172787172806%_ _%g172788172810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g172787172806%_
                                                  _%g172788172810%_))))
                                         (_%g172787172806%_
                                          _%g172788172810%_)))))
                             (_%g172786172865%_
                              (list _%tgt172576%_
                                    _%hd172574%_
                                    (let ((_%e172869%_
                                           (gx#stx-e _%hd172574%_)))
                                      (if (or (keyword? _%e172869%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e172869%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e172869%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx172021%_
                            _%where172564%_
                            _%hd172574%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx173309173310%_)
                                                    (let ((_%e172584172891%_
                                                           (gx#syntax-e
                                                            _%__stx173309173310%_)))
                                                      (let ((_%tl172586172898%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172584172891%_)))
                    (_%hd172585172895%_
                     (let () (declare (not safe)) (##car _%e172584172891%_))))
                (_%__kont173312173313%_
                 _%tl172586172898%_
                 _%hd172585172895%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont173314173315%_)))))))
                                  (_%recur172571%_
                                   _%hd172566%_
                                   _%tgt172173%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender172567%_
                                               (cons _%body172568%_
                                                     (cons _%E172569%_
                                                           '()))))))))
                             (_%generate-clauses172181%_
                              (lambda (_%clauses172302%_)
                                (let _%lp172305%_ ((_%rest172308%_
                                                    _%clauses172302%_)
                                                   (_%E172310%_
                                                    (gx#genident 'E))
                                                   (_%r172311%_ '()))
                                  (let* ((_%__stx173345173346%_ _%rest172308%_)
                                         (_%g172314172326%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx173345173346%_))))
                                    (let ((_%__kont173348173349%_
                                           (lambda (_%g172316172391%_
                                                    _%g172317172393%_)
                                             (let* ((_%__stx173325173326%_
                                                     _%g172317172393%_)
                                                    (_%g172405172416%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx173325173326%_))))
                                               (let ((_%__kont173328173329%_
                                                      (lambda (_%g172407172545%_)
                                                        (if (gx#stx-null?
                                                             _%g172316172391%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g172407172545%_)
                             (not (gx#stx-null? _%g172407172545%_)))
                        (cons (cons _%E172310%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g172407172545%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g172317172393%_))
                                          '()))
                              _%r172311%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx172021%_
                         _%g172317172393%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx172021%_
                     _%g172317172393%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont173330173331%_
                                                      (lambda ()
                                                        (let* ((_%g172427172435%_
                                                                (lambda (_%g172428172431%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g172428172431%_)))
                       (_%g172426172524%_
                        (lambda (_%g172428172439%_)
                          ((lambda (_%g172429172442%_)
                             (let* ((_%g172458172466%_
                                     (lambda (_%g172459172462%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g172459172462%_)))
                                    (_%g172457172520%_
                                     (lambda (_%g172459172470%_)
                                       ((lambda (_%g172460172473%_)
                                          (let* ((_%g172486172494%_
                                                  (lambda (_%g172487172490%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g172487172490%_)))
                                                 (_%g172485172516%_
                                                  (lambda (_%g172487172498%_)
                                                    ((lambda (_%g172488172501%_)
                                                       (_%lp172305%_
                                                        _%g172316172391%_
                                                        _%g172429172442%_
                                                        (cons (cons _%E172310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g172488172501%_ '()))
                      _%r172311%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g172487172498%_))))
                                            (_%g172485172516%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g172460172473%_
                                                                '())))
                                              (gx#stx-source
                                               _%g172317172393%_)))))
                                        _%g172459172470%_))))
                               (_%g172457172520%_
                                (_%generate-clause172178%_
                                 _%g172317172393%_
                                 (cons _%g172429172442%_ '())))))
                           _%g172428172439%_))))
                  (_%g172426172524%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx173325173326%_)
                                                     (let ((_%e172408172535%_
                                                            (gx#syntax-e
                                                             _%__stx173325173326%_)))
                                                       (let ((_%tl172410172542%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e172408172535%_)))
                     (_%hd172409172539%_
                      (let () (declare (not safe)) (##car _%e172408172535%_))))
                 (if (gx#identifier? _%hd172409172539%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g173382_|
                          _%hd172409172539%_)
                         (_%__kont173328173329%_ _%tl172410172542%_)
                         (_%__kont173330173331%_))
                     (_%__kont173330173331%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont173330173331%_))))))
                                          (_%__kont173350173351%_
                                           (lambda ()
                                             (let* ((_%g172337172345%_
                                                     (lambda (_%g172338172341%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g172338172341%_)))
                                                    (_%g172336172370%_
                                                     (lambda (_%g172338172349%_)
                                                       ((lambda (_%g172339172352%_)
                                                          (cons (cons _%E172310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'raise-syntax-error)
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '"Bad syntax; invalid syntax-case clause"
                                 (cons _%g172339172352%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx172021%_))
                                    '()))
                        _%r172311%_))
                _%g172338172349%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g172336172370%_
                                                _%tgt172173%_)))))
                                      (if (gx#stx-pair? _%__stx173345173346%_)
                                          (let ((_%e172318172381%_
                                                 (gx#syntax-e
                                                  _%__stx173345173346%_)))
                                            (let ((_%tl172320172388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e172318172381%_)))
                                                  (_%hd172319172385%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e172318172381%_))))
                                              (_%__kont173348173349%_
                                               _%tl172320172388%_
                                               _%hd172319172385%_)))
                                          (_%__kont173350173351%_))))))))
                      (let* ((_%bind172183%_
                              (_%generate-clauses172181%_ _%clauses172176%_))
                             (_%g172186172203%_
                              (lambda (_%g172187172199%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g172187172199%_)))
                             (_%g172185172298%_
                              (lambda (_%g172187172207%_)
                                (if (gx#stx-pair/null? _%g172187172207%_)
                                    (let ((_g173383_
                                           (gx#syntax-split-splice
                                            _%g172187172207%_
                                            '0)))
                                      (begin
                                        (let ((_g173384_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g173383_)
                                                     (##values-length
                                                      _g173383_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g173384_ 2)))
                                              (error "Context expects 2 values"
                                                     _g173384_)))
                                        (let ((_%target172189172210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g173383_ 0)))
                                              (_%tl172191172213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g173383_ 1))))
                                          (if (gx#stx-null? _%tl172191172213%_)
                                              (letrec ((_%loop172192172216%_
                                                        (lambda (_%hd172190172220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try172196172223%_)
                  (if (gx#stx-pair? _%hd172190172220%_)
                      (let ((_%e172193172225%_
                             (gx#syntax-e _%hd172190172220%_)))
                        (let ((_%lp-hd172194172229%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172193172225%_)))
                              (_%lp-tl172195172232%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172193172225%_))))
                          (_%loop172192172216%_
                           _%lp-tl172195172232%_
                           (cons _%lp-hd172194172229%_
                                 _%bind-try172196172223%_))))
                      (let ((_%bind-try172197172235%_
                             (reverse _%bind-try172196172223%_)))
                        ((lambda (_%g172188172238%_)
                           (let* ((_%g172256172264%_
                                   (lambda (_%g172257172260%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g172257172260%_)))
                                  (_%g172255172294%_
                                   (lambda (_%g172257172268%_)
                                     ((lambda (_%g172258172271%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp173385
                                                           (lambda (_%g172285172288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172286172291%_)
                     (cons _%g172285172288%_ _%g172286172291%_))))
              (declare (not safe))
              (foldr__0 __tmp173385 '() _%g172188172238%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g172258172271%_
                                                                '())
                                                          '()))))
                                      _%g172257172268%_))))
                             (_%g172255172294%_ (car (last _%bind172183%_)))))
                         _%bind-try172197172235%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop172192172216%_
                                                 _%target172189172210%_
                                                 '()))
                                              (_%g172186172203%_
                                               _%g172187172207%_)))))
                                    (_%g172186172203%_ _%g172187172207%_)))))
                        (_%g172185172298%_ _%bind172183%_))))))
          (let* ((_%g172027172046%_
                  (lambda (_%g172028172042%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g172028172042%_)))
                 (_%g172026172169%_
                  (lambda (_%g172028172050%_)
                    (if (gx#stx-pair? _%g172028172050%_)
                        (let ((_%e172032172053%_
                               (gx#syntax-e _%g172028172050%_)))
                          (let ((_%hd172033172057%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172032172053%_)))
                                (_%tl172034172060%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172032172053%_))))
                            (if (gx#stx-pair? _%tl172034172060%_)
                                (let ((_%e172035172063%_
                                       (gx#syntax-e _%tl172034172060%_)))
                                  (let ((_%hd172036172067%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172035172063%_)))
                                        (_%tl172037172070%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172035172063%_))))
                                    (if (gx#stx-pair? _%tl172037172070%_)
                                        (let ((_%e172038172073%_
                                               (gx#syntax-e
                                                _%tl172037172070%_)))
                                          (let ((_%hd172039172077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172038172073%_)))
                                                (_%tl172040172080%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172038172073%_))))
                                            ((lambda (_%g172029172083%_
                                                      _%g172030172085%_
                                                      _%g172031172086%_)
                                               (if (and (gx#identifier-list?
                                                         _%g172030172085%_)
                                                        (gx#stx-list?
                                                         _%g172029172083%_))
                                                   (let* ((_%g172104172112%_
                                                           (lambda (_%g172105172108%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g172105172108%_)))
                                                          (_%g172103172165%_
                                                           (lambda (_%g172105172116%_)
                                                             ((lambda (_%g172106172119%_)
                                                                (let* ((_%g172131172139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g172132172135%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g172132172135%_)))
                               (_%g172130172161%_
                                (lambda (_%g172132172143%_)
                                  ((lambda (_%g172133172146%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g172106172119%_
                                                             (cons _%g172031172086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g172133172146%_
                                                       '()))))
                                   _%g172132172143%_))))
                          (_%g172130172161%_
                           (_%generate172024%_
                            _%g172106172119%_
                            (gx#syntax->list _%g172030172085%_)
                            _%g172029172083%_))))
                      _%g172105172116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g172103172165%_
                                                      (gx#genident 'e)))
                                                   (_%g172027172046%_
                                                    _%g172028172050%_)))
                                             _%tl172040172080%_
                                             _%hd172039172077%_
                                             _%hd172036172067%_)))
                                        (_%g172027172046%_
                                         _%g172028172050%_))))
                                (_%g172027172046%_ _%g172028172050%_))))
                        (_%g172027172046%_ _%g172028172050%_)))))
            (_%g172026172169%_ _%stx172021%_)))))))
