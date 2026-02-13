(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g265895_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265902_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265904_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265906_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265908_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265910_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265922_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265924_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265926_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265928_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265930_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx259353%_)
        (let* ((_%g259357259375%_
                (lambda (_%g259358259371%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259358259371%_))))
               (_%g259356259430%_
                (lambda (_%g259358259379%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259358259379%_))
                      (let ((_%e259361259382%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259358259379%_))))
                        (let ((_%hd259362259386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259361259382%_)))
                              (_%tl259363259389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259361259382%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259363259389%_))
                              (let ((_%e259364259392%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259363259389%_))))
                                (let ((_%hd259365259396%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259364259392%_)))
                                      (_%tl259366259399%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259364259392%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259366259399%_))
                                      (let ((_%e259367259402%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259366259399%_))))
                                        (let ((_%hd259368259406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259367259402%_)))
                                              (_%tl259369259409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259367259402%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259369259409%_))
                                              ((lambda (_%g259359259412%_
                                                        _%g259360259414%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g259360259414%_))
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
                               (cons _%g259360259414%_ '()))
                         (cons _%g259359259412%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g259357259375%_
                                                      _%g259358259379%_)))
                                               _%hd259368259406%_
                                               _%hd259365259396%_)
                                              (_%g259357259375%_
                                               _%g259358259379%_))))
                                      (_%g259357259375%_ _%g259358259379%_))))
                              (_%g259357259375%_ _%g259358259379%_))))
                      (_%g259357259375%_ _%g259358259379%_)))))
          (_%g259356259430%_ _%$stx259353%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx259434%_)
        (let* ((_%g259438259456%_
                (lambda (_%g259439259452%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259439259452%_))))
               (_%g259437259511%_
                (lambda (_%g259439259460%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259439259460%_))
                      (let ((_%e259442259463%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259439259460%_))))
                        (let ((_%hd259443259467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259442259463%_)))
                              (_%tl259444259470%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259442259463%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259444259470%_))
                              (let ((_%e259445259473%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259444259470%_))))
                                (let ((_%hd259446259477%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259445259473%_)))
                                      (_%tl259447259480%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259445259473%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259447259480%_))
                                      (let ((_%e259448259483%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259447259480%_))))
                                        (let ((_%hd259449259487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259448259483%_)))
                                              (_%tl259450259490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259448259483%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259450259490%_))
                                              ((lambda (_%g259440259493%_
                                                        _%g259441259495%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g259441259495%_))
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
                               (cons _%g259441259495%_ '()))
                         (cons _%g259440259493%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g259438259456%_
                                                      _%g259439259460%_)))
                                               _%hd259449259487%_
                                               _%hd259446259477%_)
                                              (_%g259438259456%_
                                               _%g259439259460%_))))
                                      (_%g259438259456%_ _%g259439259460%_))))
                              (_%g259438259456%_ _%g259439259460%_))))
                      (_%g259438259456%_ _%g259439259460%_)))))
          (_%g259437259511%_ _%$stx259434%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx259515%_)
        (let* ((_%g259519259548%_
                (lambda (_%g259520259544%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259520259544%_))))
               (_%g259518259644%_
                (lambda (_%g259520259552%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259520259552%_))
                      (let ((_%e259523259555%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259520259552%_))))
                        (let ((_%hd259524259559%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259523259555%_)))
                              (_%tl259525259562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259523259555%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl259525259562%_))
                              (let ((_g265873_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl259525259562%_
                                        '0))))
                                (begin
                                  (let ((_g265874_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g265873_)
                                               (##values-length _g265873_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g265874_ 2)))
                                        (error "Context expects 2 values"
                                               _g265874_)))
                                  (let ((_%target259526259565%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265873_ 0)))
                                        (_%tl259528259568%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265873_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259528259568%_))
                                        (letrec ((_%loop259529259571%_
                                                  (lambda (_%hd259527259575%_
                                                           _%type259533259578%_
                                                           _%symbol259534259579%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd259527259575%_))
                                                        (let ((_%e259530259581%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd259527259575%_))))
                  (let ((_%lp-hd259531259585%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259530259581%_)))
                        (_%lp-tl259532259588%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259530259581%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd259531259585%_))
                        (let ((_%e259537259591%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd259531259585%_))))
                          (let ((_%hd259538259595%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e259537259591%_)))
                                (_%tl259539259598%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e259537259591%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl259539259598%_))
                                (let ((_%e259540259601%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl259539259598%_))))
                                  (let ((_%hd259541259605%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259540259601%_)))
                                        (_%tl259542259608%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259540259601%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259542259608%_))
                                        (_%loop259529259571%_
                                         _%lp-tl259532259588%_
                                         (cons _%hd259541259605%_
                                               _%type259533259578%_)
                                         (cons _%hd259538259595%_
                                               _%symbol259534259579%_))
                                        (_%g259519259548%_
                                         _%g259520259552%_))))
                                (_%g259519259548%_ _%g259520259552%_))))
                        (_%g259519259548%_ _%g259520259552%_))))
                (let ((_%type259535259611%_ (reverse _%type259533259578%_))
                      (_%symbol259536259613%_
                       (reverse _%symbol259534259579%_)))
                  ((lambda (_%g259521259615%_ _%g259522259617%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g259521259615%_
                                _%g259522259617%_))
                             (let ((__tmp265875
                                    (lambda (_%g259632259636%_
                                             _%g259633259639%_
                                             _%g259634259641%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g259633259639%_
                                                        (cons _%g259632259636%_
                                                              '())))
                                            _%g259634259641%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp265875
                                '()
                                _%g259521259615%_
                                _%g259522259617%_)))))
                   _%type259535259611%_
                   _%symbol259536259613%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop259529259571%_
                                           _%target259526259565%_
                                           '()
                                           '()))
                                        (_%g259519259548%_
                                         _%g259520259552%_)))))
                              (_%g259519259548%_ _%g259520259552%_))))
                      (_%g259519259548%_ _%g259520259552%_)))))
          (_%g259518259644%_ _%$stx259515%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx259649%_)
        (let* ((_%__stx265184265185%_ _%$stx259649%_)
               (_%g259654259696%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265184265185%_)))))
          (let ((_%__kont265187265188%_
                 (lambda (_%g259656259824%_
                          _%g259657259826%_
                          _%g259658259827%_
                          _%g259659259828%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g259659259828%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g259658259827%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g259657259826%_ '()))
                                           (cons _%g259656259824%_ '())))))))
                (_%__kont265189265190%_
                 (lambda (_%g259675259743%_
                          _%g259676259745%_
                          _%g259677259746%_
                          _%g259678259747%_)
                   (cons _%g259678259747%_
                         (cons _%g259677259746%_
                               (cons _%g259676259745%_
                                     (cons _%g259675259743%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match265223265224%_
                   (lambda (_%e259660259774%_
                            _%hd259661259778%_
                            _%tl259662259781%_
                            _%e259663259784%_
                            _%hd259664259788%_
                            _%tl259665259791%_
                            _%e259666259794%_
                            _%hd259667259798%_
                            _%tl259668259801%_
                            _%e259669259804%_
                            _%hd259670259808%_
                            _%tl259671259811%_
                            _%e259672259814%_
                            _%hd259673259818%_
                            _%tl259674259821%_)
                     (let ((_%g259656259824%_ _%hd259673259818%_)
                           (_%g259657259826%_ _%hd259670259808%_)
                           (_%g259658259827%_ _%hd259667259798%_)
                           (_%g259659259828%_ _%hd259664259788%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g259659259828%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g259658259827%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g259657259826%_)))
                           (_%__kont265187265188%_
                            _%g259656259824%_
                            _%g259657259826%_
                            _%g259658259827%_
                            _%g259659259828%_)
                           (let ()
                             (declare (not safe))
                             (_%g259654259696%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx265184265185%_))
                  (let ((_%e259660259774%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx265184265185%_))))
                    (let ((_%tl259662259781%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259660259774%_)))
                          (_%hd259661259778%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259660259774%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl259662259781%_))
                          (let ((_%e259663259784%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl259662259781%_))))
                            (let ((_%tl259665259791%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e259663259784%_)))
                                  (_%hd259664259788%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e259663259784%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl259665259791%_))
                                  (let ((_%e259666259794%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl259665259791%_))))
                                    (let ((_%tl259668259801%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e259666259794%_)))
                                          (_%hd259667259798%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e259666259794%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl259668259801%_))
                                          (let ((_%e259669259804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl259668259801%_))))
                                            (let ((_%tl259671259811%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e259669259804%_)))
                                                  (_%hd259670259808%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e259669259804%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl259671259811%_))
                                                  (let ((_%e259672259814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl259671259811%_))))
                                                    (let ((_%tl259674259821%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e259672259814%_)))
                                                          (_%hd259673259818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e259672259814%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl259674259821%_))
                                                          (_%__match265223265224%_
                                                           _%e259660259774%_
                                                           _%hd259661259778%_
                                                           _%tl259662259781%_
                                                           _%e259663259784%_
                                                           _%hd259664259788%_
                                                           _%tl259665259791%_
                                                           _%e259666259794%_
                                                           _%hd259667259798%_
                                                           _%tl259668259801%_
                                                           _%e259669259804%_
                                                           _%hd259670259808%_
                                                           _%tl259671259811%_
                                                           _%e259672259814%_
                                                           _%hd259673259818%_
                                                           _%tl259674259821%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g259654259696%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259671259811%_))
                                                      (_%__kont265189265190%_
                                                       _%hd259670259808%_
                                                       _%hd259667259798%_
                                                       _%hd259664259788%_
                                                       _%hd259661259778%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g259654259696%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g259654259696%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g259654259696%_)))))
                          (let () (declare (not safe)) (_%g259654259696%_)))))
                  (let () (declare (not safe)) (_%g259654259696%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx259853%_)
        (let* ((_%g259857259892%_
                (lambda (_%g259858259888%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259858259888%_))))
               (_%g259856260005%_
                (lambda (_%g259858259896%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259858259896%_))
                      (let ((_%e259862259899%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259858259896%_))))
                        (let ((_%hd259863259903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259862259899%_)))
                              (_%tl259864259906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259862259899%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl259864259906%_))
                              (let ((_g265876_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl259864259906%_
                                        '0))))
                                (begin
                                  (let ((_g265877_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g265876_)
                                               (##values-length _g265876_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g265877_ 2)))
                                        (error "Context expects 2 values"
                                               _g265877_)))
                                  (let ((_%target259865259909%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265876_ 0)))
                                        (_%tl259867259912%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265876_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259867259912%_))
                                        (letrec ((_%loop259868259915%_
                                                  (lambda (_%hd259866259919%_
                                                           _%symbol259872259922%_
                                                           _%method259873259923%_
                                                           _%type-t259874259924%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd259866259919%_))
                                                        (let ((_%e259869259926%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd259866259919%_))))
                  (let ((_%lp-hd259870259930%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259869259926%_)))
                        (_%lp-tl259871259933%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259869259926%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd259870259930%_))
                        (let ((_%e259878259936%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd259870259930%_))))
                          (let ((_%hd259879259940%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e259878259936%_)))
                                (_%tl259880259943%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e259878259936%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl259880259943%_))
                                (let ((_%e259881259946%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl259880259943%_))))
                                  (let ((_%hd259882259950%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259881259946%_)))
                                        (_%tl259883259953%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259881259946%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl259883259953%_))
                                        (let ((_%e259884259956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl259883259953%_))))
                                          (let ((_%hd259885259960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e259884259956%_)))
                                                (_%tl259886259963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e259884259956%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl259886259963%_))
                                                (_%loop259868259915%_
                                                 _%lp-tl259871259933%_
                                                 (cons _%hd259885259960%_
                                                       _%symbol259872259922%_)
                                                 (cons _%hd259882259950%_
                                                       _%method259873259923%_)
                                                 (cons _%hd259879259940%_
                                                       _%type-t259874259924%_))
                                                (_%g259857259892%_
                                                 _%g259858259896%_))))
                                        (_%g259857259892%_
                                         _%g259858259896%_))))
                                (_%g259857259892%_ _%g259858259896%_))))
                        (_%g259857259892%_ _%g259858259896%_))))
                (let ((_%symbol259875259966%_ (reverse _%symbol259872259922%_))
                      (_%method259876259968%_ (reverse _%method259873259923%_))
                      (_%type-t259877259969%_
                       (reverse _%type-t259874259924%_)))
                  ((lambda (_%g259859259971%_
                            _%g259860259973%_
                            _%g259861259974%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g259859259971%_
                                _%g259860259973%_
                                _%g259861259974%_))
                             (let ((__tmp265878
                                    (lambda (_%g259990259995%_
                                             _%g259991259998%_
                                             _%g259992260000%_
                                             _%g259993260002%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g259992260000%_
                                                        (cons _%g259991259998%_
                                                              (cons _%g259990259995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g259993260002%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp265878
                                '()
                                _%g259859259971%_
                                _%g259860259973%_
                                _%g259861259974%_)))))
                   _%symbol259875259966%_
                   _%method259876259968%_
                   _%type-t259877259969%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop259868259915%_
                                           _%target259865259909%_
                                           '()
                                           '()
                                           '()))
                                        (_%g259857259892%_
                                         _%g259858259896%_)))))
                              (_%g259857259892%_ _%g259858259896%_))))
                      (_%g259857259892%_ _%g259858259896%_)))))
          (_%g259856260005%_ _%$stx259853%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx260010%_)
        (let* ((_%g260014260047%_
                (lambda (_%g260015260043%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260015260043%_))))
               (_%g260013260157%_
                (lambda (_%g260015260051%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260015260051%_))
                      (let ((_%e260019260054%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260015260051%_))))
                        (let ((_%hd260020260058%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260019260054%_)))
                              (_%tl260021260061%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260019260054%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260021260061%_))
                              (let ((_%e260022260064%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260021260061%_))))
                                (let ((_%hd260023260068%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260022260064%_)))
                                      (_%tl260024260071%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260022260064%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl260024260071%_))
                                      (let ((_g265879_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl260024260071%_
                                                '0))))
                                        (begin
                                          (let ((_g265880_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g265879_)
                                                       (##values-length
                                                        _g265879_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g265880_ 2)))
                                                (error "Context expects 2 values"
                                                       _g265880_)))
                                          (let ((_%target260025260074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g265879_ 0)))
                                                (_%tl260027260077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g265879_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl260027260077%_))
                                                (letrec ((_%loop260028260080%_
                                                          (lambda (_%hd260026260084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol260032260087%_
                           _%method260033260088%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd260026260084%_))
                        (let ((_%e260029260090%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd260026260084%_))))
                          (let ((_%lp-hd260030260094%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260029260090%_)))
                                (_%lp-tl260031260097%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260029260090%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd260030260094%_))
                                (let ((_%e260036260100%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd260030260094%_))))
                                  (let ((_%hd260037260104%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260036260100%_)))
                                        (_%tl260038260107%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260036260100%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl260038260107%_))
                                        (let ((_%e260039260110%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl260038260107%_))))
                                          (let ((_%hd260040260114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e260039260110%_)))
                                                (_%tl260041260117%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e260039260110%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl260041260117%_))
                                                (_%loop260028260080%_
                                                 _%lp-tl260031260097%_
                                                 (cons _%hd260040260114%_
                                                       _%symbol260032260087%_)
                                                 (cons _%hd260037260104%_
                                                       _%method260033260088%_))
                                                (_%g260014260047%_
                                                 _%g260015260051%_))))
                                        (_%g260014260047%_
                                         _%g260015260051%_))))
                                (_%g260014260047%_ _%g260015260051%_))))
                        (let ((_%symbol260034260120%_
                               (reverse _%symbol260032260087%_))
                              (_%method260035260122%_
                               (reverse _%method260033260088%_)))
                          ((lambda (_%g260016260124%_
                                    _%g260017260126%_
                                    _%g260018260127%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g260016260124%_
                                        _%g260017260126%_))
                                     (let ((__tmp265881
                                            (lambda (_%g260145260149%_
                                                     _%g260146260152%_
                                                     _%g260147260154%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g260018260127%_
                                                                (cons _%g260146260152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g260145260149%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g260147260154%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp265881
                                        '()
                                        _%g260016260124%_
                                        _%g260017260126%_)))))
                           _%symbol260034260120%_
                           _%method260035260122%_
                           _%hd260023260068%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop260028260080%_
                                                   _%target260025260074%_
                                                   '()
                                                   '()))
                                                (_%g260014260047%_
                                                 _%g260015260051%_)))))
                                      (_%g260014260047%_ _%g260015260051%_))))
                              (_%g260014260047%_ _%g260015260051%_))))
                      (_%g260014260047%_ _%g260015260051%_)))))
          (_%g260013260157%_ _%$stx260010%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx260162%_)
        (let* ((_%g260166260180%_
                (lambda (_%g260167260176%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260167260176%_))))
               (_%g260165260221%_
                (lambda (_%g260167260184%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260167260184%_))
                      (let ((_%e260169260187%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260167260184%_))))
                        (let ((_%hd260170260191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260169260187%_)))
                              (_%tl260171260194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260169260187%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260171260194%_))
                              (let ((_%e260172260197%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260171260194%_))))
                                (let ((_%hd260173260201%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260172260197%_)))
                                      (_%tl260174260204%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260172260197%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260174260204%_))
                                      ((lambda (_%g260168260207%_)
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
                                                           (cons _%g260168260207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd260173260201%_)
                                      (_%g260166260180%_ _%g260167260184%_))))
                              (_%g260166260180%_ _%g260167260184%_))))
                      (_%g260166260180%_ _%g260167260184%_)))))
          (_%g260165260221%_ _%$stx260162%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx260225%_)
        (let* ((_%g260229260283%_
                (lambda (_%g260230260279%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260230260279%_))))
               (_%g260228260464%_
                (lambda (_%g260230260287%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260230260287%_))
                      (let ((_%e260242260290%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260230260287%_))))
                        (let ((_%hd260243260294%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260242260290%_)))
                              (_%tl260244260297%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260242260290%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260244260297%_))
                              (let ((_%e260245260300%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260244260297%_))))
                                (let ((_%hd260246260304%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260245260300%_)))
                                      (_%tl260247260307%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260245260300%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260247260307%_))
                                      (let ((_%e260248260310%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260247260307%_))))
                                        (let ((_%hd260249260314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260248260310%_)))
                                              (_%tl260250260317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260248260310%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl260250260317%_))
                                              (let ((_%e260251260320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl260250260317%_))))
                                                (let ((_%hd260252260324%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e260251260320%_)))
                                                      (_%tl260253260327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e260251260320%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl260253260327%_))
                                                      (let ((_%e260254260330%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl260253260327%_))))
                (let ((_%hd260255260334%_
                       (let () (declare (not safe)) (##car _%e260254260330%_)))
                      (_%tl260256260337%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e260254260330%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl260256260337%_))
                      (let ((_%e260257260340%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl260256260337%_))))
                        (let ((_%hd260258260344%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260257260340%_)))
                              (_%tl260259260347%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260257260340%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260259260347%_))
                              (let ((_%e260260260350%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260259260347%_))))
                                (let ((_%hd260261260354%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260260260350%_)))
                                      (_%tl260262260357%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260260260350%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260262260357%_))
                                      (let ((_%e260263260360%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260262260357%_))))
                                        (let ((_%hd260264260364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260263260360%_)))
                                              (_%tl260265260367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260263260360%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl260265260367%_))
                                              (let ((_%e260266260370%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl260265260367%_))))
                                                (let ((_%hd260267260374%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e260266260370%_)))
                                                      (_%tl260268260377%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e260266260370%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl260268260377%_))
                                                      (let ((_%e260269260380%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl260268260377%_))))
                (let ((_%hd260270260384%_
                       (let () (declare (not safe)) (##car _%e260269260380%_)))
                      (_%tl260271260387%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e260269260380%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl260271260387%_))
                      (let ((_%e260272260390%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl260271260387%_))))
                        (let ((_%hd260273260394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260272260390%_)))
                              (_%tl260274260397%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260272260390%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260274260397%_))
                              (let ((_%e260275260400%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260274260397%_))))
                                (let ((_%hd260276260404%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260275260400%_)))
                                      (_%tl260277260407%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260275260400%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260277260407%_))
                                      ((lambda (_%g260231260410%_
                                                _%g260232260412%_
                                                _%g260233260413%_
                                                _%g260234260414%_
                                                _%g260235260415%_
                                                _%g260236260416%_
                                                _%g260237260417%_
                                                _%g260238260418%_
                                                _%g260239260419%_
                                                _%g260240260420%_
                                                _%g260241260421%_)
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
                                                           (cons _%g260241260421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g260240260420%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g260239260419%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g260238260418%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g260237260417%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g260236260416%_ '()))
                                           (cons _%g260235260415%_
                                                 (cons _%g260234260414%_
                                                       (cons _%g260233260413%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g260232260412%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g260231260410%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd260276260404%_
                                       _%hd260273260394%_
                                       _%hd260270260384%_
                                       _%hd260267260374%_
                                       _%hd260264260364%_
                                       _%hd260261260354%_
                                       _%hd260258260344%_
                                       _%hd260255260334%_
                                       _%hd260252260324%_
                                       _%hd260249260314%_
                                       _%hd260246260304%_)
                                      (_%g260229260283%_ _%g260230260287%_))))
                              (_%g260229260283%_ _%g260230260287%_))))
                      (_%g260229260283%_ _%g260230260287%_))))
              (_%g260229260283%_ _%g260230260287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g260229260283%_
                                               _%g260230260287%_))))
                                      (_%g260229260283%_ _%g260230260287%_))))
                              (_%g260229260283%_ _%g260230260287%_))))
                      (_%g260229260283%_ _%g260230260287%_))))
              (_%g260229260283%_ _%g260230260287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g260229260283%_
                                               _%g260230260287%_))))
                                      (_%g260229260283%_ _%g260230260287%_))))
                              (_%g260229260283%_ _%g260230260287%_))))
                      (_%g260229260283%_ _%g260230260287%_)))))
          (_%g260228260464%_ _%$stx260225%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx260468%_)
        (let* ((_%g260472260486%_
                (lambda (_%g260473260482%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260473260482%_))))
               (_%g260471260527%_
                (lambda (_%g260473260490%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260473260490%_))
                      (let ((_%e260475260493%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260473260490%_))))
                        (let ((_%hd260476260497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260475260493%_)))
                              (_%tl260477260500%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260475260493%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260477260500%_))
                              (let ((_%e260478260503%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260477260500%_))))
                                (let ((_%hd260479260507%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260478260503%_)))
                                      (_%tl260480260510%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260478260503%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260480260510%_))
                                      ((lambda (_%g260474260513%_)
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
                                                           (cons _%g260474260513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd260479260507%_)
                                      (_%g260472260486%_ _%g260473260490%_))))
                              (_%g260472260486%_ _%g260473260490%_))))
                      (_%g260472260486%_ _%g260473260490%_)))))
          (_%g260471260527%_ _%$stx260468%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx260531%_)
        (let* ((_%g260535260549%_
                (lambda (_%g260536260545%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260536260545%_))))
               (_%g260534260590%_
                (lambda (_%g260536260553%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260536260553%_))
                      (let ((_%e260538260556%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260536260553%_))))
                        (let ((_%hd260539260560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260538260556%_)))
                              (_%tl260540260563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260538260556%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260540260563%_))
                              (let ((_%e260541260566%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260540260563%_))))
                                (let ((_%hd260542260570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260541260566%_)))
                                      (_%tl260543260573%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260541260566%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260543260573%_))
                                      ((lambda (_%g260537260576%_)
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
                                                           (cons _%g260537260576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd260542260570%_)
                                      (_%g260535260549%_ _%g260536260553%_))))
                              (_%g260535260549%_ _%g260536260553%_))))
                      (_%g260535260549%_ _%g260536260553%_)))))
          (_%g260534260590%_ _%$stx260531%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx260594%_)
        (let* ((_%g260598260620%_
                (lambda (_%g260599260616%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260599260616%_))))
               (_%g260597260689%_
                (lambda (_%g260599260624%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260599260624%_))
                      (let ((_%e260603260627%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260599260624%_))))
                        (let ((_%hd260604260631%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260603260627%_)))
                              (_%tl260605260634%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260603260627%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260605260634%_))
                              (let ((_%e260606260637%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260605260634%_))))
                                (let ((_%hd260607260641%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260606260637%_)))
                                      (_%tl260608260644%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260606260637%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260608260644%_))
                                      (let ((_%e260609260647%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260608260644%_))))
                                        (let ((_%hd260610260651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260609260647%_)))
                                              (_%tl260611260654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260609260647%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl260611260654%_))
                                              (let ((_%e260612260657%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl260611260654%_))))
                                                (let ((_%hd260613260661%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e260612260657%_)))
                                                      (_%tl260614260664%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e260612260657%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl260614260664%_))
                                                      ((lambda (_%g260600260667%_
                                                                _%g260601260669%_
                                                                _%g260602260670%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g260602260670%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g260601260669%_ '()))
                                   (cons _%g260600260667%_ '())))))
               _%hd260613260661%_
               _%hd260610260651%_
               _%hd260607260641%_)
              (_%g260598260620%_ _%g260599260624%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g260598260620%_
                                               _%g260599260624%_))))
                                      (_%g260598260620%_ _%g260599260624%_))))
                              (_%g260598260620%_ _%g260599260624%_))))
                      (_%g260598260620%_ _%g260599260624%_)))))
          (_%g260597260689%_ _%$stx260594%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx260693%_)
        (let* ((_%g260697260719%_
                (lambda (_%g260698260715%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260698260715%_))))
               (_%g260696260788%_
                (lambda (_%g260698260723%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260698260723%_))
                      (let ((_%e260702260726%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260698260723%_))))
                        (let ((_%hd260703260730%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260702260726%_)))
                              (_%tl260704260733%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260702260726%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260704260733%_))
                              (let ((_%e260705260736%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260704260733%_))))
                                (let ((_%hd260706260740%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260705260736%_)))
                                      (_%tl260707260743%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260705260736%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260707260743%_))
                                      (let ((_%e260708260746%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260707260743%_))))
                                        (let ((_%hd260709260750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260708260746%_)))
                                              (_%tl260710260753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260708260746%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl260710260753%_))
                                              (let ((_%e260711260756%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl260710260753%_))))
                                                (let ((_%hd260712260760%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e260711260756%_)))
                                                      (_%tl260713260763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e260711260756%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl260713260763%_))
                                                      ((lambda (_%g260699260766%_
                                                                _%g260700260768%_
                                                                _%g260701260769%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g260701260769%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g260700260768%_ '()))
                                   (cons _%g260699260766%_ '())))))
               _%hd260712260760%_
               _%hd260709260750%_
               _%hd260706260740%_)
              (_%g260697260719%_ _%g260698260723%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g260697260719%_
                                               _%g260698260723%_))))
                                      (_%g260697260719%_ _%g260698260723%_))))
                              (_%g260697260719%_ _%g260698260723%_))))
                      (_%g260697260719%_ _%g260698260723%_)))))
          (_%g260696260788%_ _%$stx260693%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx260792%_)
        (let* ((_%g260796260810%_
                (lambda (_%g260797260806%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260797260806%_))))
               (_%g260795260851%_
                (lambda (_%g260797260814%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260797260814%_))
                      (let ((_%e260799260817%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260797260814%_))))
                        (let ((_%hd260800260821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260799260817%_)))
                              (_%tl260801260824%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260799260817%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260801260824%_))
                              (let ((_%e260802260827%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260801260824%_))))
                                (let ((_%hd260803260831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260802260827%_)))
                                      (_%tl260804260834%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260802260827%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260804260834%_))
                                      ((lambda (_%g260798260837%_)
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
                                                           (cons _%g260798260837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd260803260831%_)
                                      (_%g260796260810%_ _%g260797260814%_))))
                              (_%g260796260810%_ _%g260797260814%_))))
                      (_%g260796260810%_ _%g260797260814%_)))))
          (_%g260795260851%_ _%$stx260792%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx260855%_)
        (let* ((_%g260859260877%_
                (lambda (_%g260860260873%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260860260873%_))))
               (_%g260858260932%_
                (lambda (_%g260860260881%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260860260881%_))
                      (let ((_%e260863260884%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260860260881%_))))
                        (let ((_%hd260864260888%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260863260884%_)))
                              (_%tl260865260891%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260863260884%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260865260891%_))
                              (let ((_%e260866260894%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260865260891%_))))
                                (let ((_%hd260867260898%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260866260894%_)))
                                      (_%tl260868260901%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260866260894%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260868260901%_))
                                      (let ((_%e260869260904%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260868260901%_))))
                                        (let ((_%hd260870260908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260869260904%_)))
                                              (_%tl260871260911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260869260904%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260871260911%_))
                                              ((lambda (_%g260861260914%_
                                                        _%g260862260916%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g260862260916%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g260861260914%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd260870260908%_
                                               _%hd260867260898%_)
                                              (_%g260859260877%_
                                               _%g260860260881%_))))
                                      (_%g260859260877%_ _%g260860260881%_))))
                              (_%g260859260877%_ _%g260860260881%_))))
                      (_%g260859260877%_ _%g260860260881%_)))))
          (_%g260858260932%_ _%$stx260855%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx260936%_)
        (let* ((_%__stx265252265253%_ _%$stx260936%_)
               (_%g260943261004%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265252265253%_)))))
          (let ((_%__kont265255265256%_
                 (lambda (_%g260945261242%_ _%g260946261244%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g260946261244%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g260945261242%_ '()))
                                     '())))))
                (_%__kont265257265258%_
                 (lambda (_%g260956261181%_
                          _%g260957261183%_
                          _%g260958261184%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g260958261184%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g260957261183%_ '()))
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
                                 (cons _%g260956261181%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont265259265260%_
                 (lambda (_%g260975261105%_ _%g260976261107%_)
                   (cons _%g260976261107%_
                         (cons _%g260975261105%_ (cons '#f '())))))
                (_%__kont265261265262%_
                 (lambda (_%g260983261055%_
                          _%g260984261057%_
                          _%g260985261058%_)
                   (cons _%g260985261058%_
                         (cons _%g260984261057%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g260983261055%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx265252265253%_))
                (let ((_%e260947261212%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx265252265253%_))))
                  (let ((_%tl260949261219%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260947261212%_)))
                        (_%hd260948261216%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260947261212%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl260949261219%_))
                        (let ((_%e260950261222%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl260949261219%_))))
                          (let ((_%tl260952261229%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260950261222%_)))
                                (_%hd260951261226%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260950261222%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260952261229%_))
                                (let ((_%e260953261232%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260952261229%_))))
                                  (let ((_%tl260955261239%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260953261232%_)))
                                        (_%hd260954261236%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260953261232%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260955261239%_))
                                        (_%__kont265255265256%_
                                         _%hd260954261236%_
                                         _%hd260951261226%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl260955261239%_))
                                            (let ((_%e260968261157%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl260955261239%_))))
                                              (let ((_%tl260970261164%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e260968261157%_)))
                                                    (_%hd260969261161%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e260968261157%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd260969261161%_))
                                                    (let ((_%e260971261167%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd260969261161%_))))
                                                      (if (equal? _%e260971261167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl260970261164%_))
                      (let ((_%e260972261171%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl260970261164%_))))
                        (let ((_%tl260974261178%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260972261171%_)))
                              (_%hd260973261175%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260972261171%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl260974261178%_))
                              (_%__kont265257265258%_
                               _%hd260973261175%_
                               _%hd260954261236%_
                               _%hd260951261226%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd260954261236%_))
                                  (let ((_%e260995261041%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd260954261236%_))))
                                    (declare (not safe))
                                    (_%g260943261004%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g260943261004%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd260954261236%_))
                          (let ((_%e260995261041%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd260954261236%_))))
                            (if (equal? _%e260995261041%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl260970261164%_))
                                    (_%__kont265261265262%_
                                     _%hd260969261161%_
                                     _%hd260951261226%_
                                     _%hd260948261216%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g260943261004%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g260943261004%_))))
                          (let () (declare (not safe)) (_%g260943261004%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd260954261236%_))
                      (let ((_%e260995261041%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd260954261236%_))))
                        (if (equal? _%e260995261041%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl260970261164%_))
                                (_%__kont265261265262%_
                                 _%hd260969261161%_
                                 _%hd260951261226%_
                                 _%hd260948261216%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g260943261004%_)))
                            (let () (declare (not safe)) (_%g260943261004%_))))
                      (let () (declare (not safe)) (_%g260943261004%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd260954261236%_))
                                                        (let ((_%e260995261041%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd260954261236%_))))
                  (if (equal? _%e260995261041%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl260970261164%_))
                          (_%__kont265261265262%_
                           _%hd260969261161%_
                           _%hd260951261226%_
                           _%hd260948261216%_)
                          (let () (declare (not safe)) (_%g260943261004%_)))
                      (let () (declare (not safe)) (_%g260943261004%_))))
                (let () (declare (not safe)) (_%g260943261004%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd260954261236%_))
                                                (let ((_%e260995261041%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd260954261236%_))))
                                                  (declare (not safe))
                                                  (_%g260943261004%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g260943261004%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl260952261229%_))
                                    (_%__kont265259265260%_
                                     _%hd260951261226%_
                                     _%hd260948261216%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g260943261004%_))))))
                        (let () (declare (not safe)) (_%g260943261004%_)))))
                (let () (declare (not safe)) (_%g260943261004%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx261263%_)
        (let* ((_%g261267261296%_
                (lambda (_%g261268261292%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261268261292%_))))
               (_%g261266261401%_
                (lambda (_%g261268261300%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261268261300%_))
                      (let ((_%e261270261303%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261268261300%_))))
                        (let ((_%hd261271261307%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261270261303%_)))
                              (_%tl261272261310%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261270261303%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl261272261310%_))
                              (let ((_g265882_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl261272261310%_
                                        '0))))
                                (begin
                                  (let ((_g265883_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g265882_)
                                               (##values-length _g265882_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g265883_ 2)))
                                        (error "Context expects 2 values"
                                               _g265883_)))
                                  (let ((_%target261273261313%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265882_ 0)))
                                        (_%tl261275261316%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265882_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261275261316%_))
                                        (letrec ((_%loop261276261319%_
                                                  (lambda (_%hd261274261323%_
                                                           _%clause261280261326%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd261274261323%_))
                                                        (let ((_%e261277261328%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd261274261323%_))))
                  (let ((_%lp-hd261278261332%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261277261328%_)))
                        (_%lp-tl261279261335%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261277261328%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd261278261332%_))
                        (let ((_g265884_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd261278261332%_
                                  '0))))
                          (begin
                            (let ((_g265885_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g265884_)
                                         (##values-length _g265884_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g265885_ 2)))
                                  (error "Context expects 2 values"
                                         _g265885_)))
                            (let ((_%target261282261338%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g265884_ 0)))
                                  (_%tl261284261341%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g265884_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl261284261341%_))
                                  (letrec ((_%loop261285261344%_
                                            (lambda (_%hd261283261348%_
                                                     _%clause261289261351%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd261283261348%_))
                                                  (let ((_%e261286261353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd261283261348%_))))
                                                    (let ((_%lp-hd261287261357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e261286261353%_)))
                                                          (_%lp-tl261288261360%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e261286261353%_))))
                                                      (_%loop261285261344%_
                                                       _%lp-tl261288261360%_
                                                       (cons _%lp-hd261287261357%_
                                                             _%clause261289261351%_))))
                                                  (let ((_%clause261290261363%_
                                                         (reverse _%clause261289261351%_)))
                                                    (_%loop261276261319%_
                                                     _%lp-tl261279261335%_
                                                     (cons _%clause261290261363%_
                                                           _%clause261280261326%_)))))))
                                    (_%loop261285261344%_
                                     _%target261282261338%_
                                     '()))
                                  (_%g261267261296%_ _%g261268261300%_)))))
                        (_%g261267261296%_ _%g261268261300%_))))
                (let ((_%clause261281261366%_
                       (reverse _%clause261280261326%_)))
                  ((lambda (_%g261269261369%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp265886
                                              (lambda (_%g261384261389%_
                                                       _%g261385261392%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp265887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g261386261395%_ _%g261387261398%_)
                             (cons _%g261386261395%_ _%g261387261398%_))))
                      (declare (not safe))
                      (foldr__0 __tmp265887 '() _%g261384261389%_)))
              _%g261385261392%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp265886
                                          '()
                                          _%g261269261369%_)))
                                 '())))
                   _%clause261281261366%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop261276261319%_
                                           _%target261273261313%_
                                           '()))
                                        (_%g261267261296%_
                                         _%g261268261300%_)))))
                              (_%g261267261296%_ _%g261268261300%_))))
                      (_%g261267261296%_ _%g261268261300%_)))))
          (_%g261266261401%_ _%$stx261263%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx261407%_)
        (let* ((_%g261411261429%_
                (lambda (_%g261412261425%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261412261425%_))))
               (_%g261410261484%_
                (lambda (_%g261412261433%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261412261433%_))
                      (let ((_%e261415261436%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261412261433%_))))
                        (let ((_%hd261416261440%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261415261436%_)))
                              (_%tl261417261443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261415261436%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261417261443%_))
                              (let ((_%e261418261446%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261417261443%_))))
                                (let ((_%hd261419261450%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261418261446%_)))
                                      (_%tl261420261453%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261418261446%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261420261453%_))
                                      (let ((_%e261421261456%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261420261453%_))))
                                        (let ((_%hd261422261460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261421261456%_)))
                                              (_%tl261423261463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261421261456%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261423261463%_))
                                              ((lambda (_%g261413261466%_
                                                        _%g261414261468%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g261414261468%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g261413261466%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd261422261460%_
                                               _%hd261419261450%_)
                                              (_%g261411261429%_
                                               _%g261412261433%_))))
                                      (_%g261411261429%_ _%g261412261433%_))))
                              (_%g261411261429%_ _%g261412261433%_))))
                      (_%g261411261429%_ _%g261412261433%_)))))
          (_%g261410261484%_ _%$stx261407%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx261488%_)
        (let* ((_%g261492261510%_
                (lambda (_%g261493261506%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261493261506%_))))
               (_%g261491261565%_
                (lambda (_%g261493261514%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261493261514%_))
                      (let ((_%e261496261517%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261493261514%_))))
                        (let ((_%hd261497261521%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261496261517%_)))
                              (_%tl261498261524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261496261517%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261498261524%_))
                              (let ((_%e261499261527%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261498261524%_))))
                                (let ((_%hd261500261531%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261499261527%_)))
                                      (_%tl261501261534%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261499261527%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261501261534%_))
                                      (let ((_%e261502261537%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261501261534%_))))
                                        (let ((_%hd261503261541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261502261537%_)))
                                              (_%tl261504261544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261502261537%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261504261544%_))
                                              ((lambda (_%g261494261547%_
                                                        _%g261495261549%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g261495261549%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g261494261547%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd261503261541%_
                                               _%hd261500261531%_)
                                              (_%g261492261510%_
                                               _%g261493261514%_))))
                                      (_%g261492261510%_ _%g261493261514%_))))
                              (_%g261492261510%_ _%g261493261514%_))))
                      (_%g261492261510%_ _%g261493261514%_)))))
          (_%g261491261565%_ _%$stx261488%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx261569%_)
        (let* ((_%g261573261602%_
                (lambda (_%g261574261598%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261574261598%_))))
               (_%g261572261698%_
                (lambda (_%g261574261606%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261574261606%_))
                      (let ((_%e261577261609%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261574261606%_))))
                        (let ((_%hd261578261613%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261577261609%_)))
                              (_%tl261579261616%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261577261609%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl261579261616%_))
                              (let ((_g265888_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl261579261616%_
                                        '0))))
                                (begin
                                  (let ((_g265889_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g265888_)
                                               (##values-length _g265888_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g265889_ 2)))
                                        (error "Context expects 2 values"
                                               _g265889_)))
                                  (let ((_%target261580261619%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265888_ 0)))
                                        (_%tl261582261622%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265888_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261582261622%_))
                                        (letrec ((_%loop261583261625%_
                                                  (lambda (_%hd261581261629%_
                                                           _%rule261587261632%_
                                                           _%proc261588261633%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd261581261629%_))
                                                        (let ((_%e261584261635%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd261581261629%_))))
                  (let ((_%lp-hd261585261639%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261584261635%_)))
                        (_%lp-tl261586261642%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261584261635%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd261585261639%_))
                        (let ((_%e261591261645%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd261585261639%_))))
                          (let ((_%hd261592261649%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261591261645%_)))
                                (_%tl261593261652%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261591261645%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261593261652%_))
                                (let ((_%e261594261655%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261593261652%_))))
                                  (let ((_%hd261595261659%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261594261655%_)))
                                        (_%tl261596261662%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261594261655%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261596261662%_))
                                        (_%loop261583261625%_
                                         _%lp-tl261586261642%_
                                         (cons _%hd261595261659%_
                                               _%rule261587261632%_)
                                         (cons _%hd261592261649%_
                                               _%proc261588261633%_))
                                        (_%g261573261602%_
                                         _%g261574261606%_))))
                                (_%g261573261602%_ _%g261574261606%_))))
                        (_%g261573261602%_ _%g261574261606%_))))
                (let ((_%rule261589261665%_ (reverse _%rule261587261632%_))
                      (_%proc261590261667%_ (reverse _%proc261588261633%_)))
                  ((lambda (_%g261575261669%_ _%g261576261671%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g261575261669%_
                                _%g261576261671%_))
                             (let ((__tmp265890
                                    (lambda (_%g261686261690%_
                                             _%g261687261693%_
                                             _%g261688261695%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g261687261693%_
                                                        (cons _%g261686261690%_
                                                              '())))
                                            _%g261688261695%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp265890
                                '()
                                _%g261575261669%_
                                _%g261576261671%_)))))
                   _%rule261589261665%_
                   _%proc261590261667%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop261583261625%_
                                           _%target261580261619%_
                                           '()
                                           '()))
                                        (_%g261573261602%_
                                         _%g261574261606%_)))))
                              (_%g261573261602%_ _%g261574261606%_))))
                      (_%g261573261602%_ _%g261574261606%_)))))
          (_%g261572261698%_ _%$stx261569%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx261703%_)
        (let* ((_%g261707261725%_
                (lambda (_%g261708261721%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261708261721%_))))
               (_%g261706261780%_
                (lambda (_%g261708261729%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261708261729%_))
                      (let ((_%e261711261732%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261708261729%_))))
                        (let ((_%hd261712261736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261711261732%_)))
                              (_%tl261713261739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261711261732%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261713261739%_))
                              (let ((_%e261714261742%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261713261739%_))))
                                (let ((_%hd261715261746%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261714261742%_)))
                                      (_%tl261716261749%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261714261742%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261716261749%_))
                                      (let ((_%e261717261752%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261716261749%_))))
                                        (let ((_%hd261718261756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261717261752%_)))
                                              (_%tl261719261759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261717261752%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261719261759%_))
                                              ((lambda (_%g261709261762%_
                                                        _%g261710261764%_)
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
                                                   (cons _%g261710261764%_
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
                 (cons _%g261709261762%_ '())))
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
                                   (cons _%g261710261764%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd261718261756%_
                                               _%hd261715261746%_)
                                              (_%g261707261725%_
                                               _%g261708261729%_))))
                                      (_%g261707261725%_ _%g261708261729%_))))
                              (_%g261707261725%_ _%g261708261729%_))))
                      (_%g261707261725%_ _%g261708261729%_)))))
          (_%g261706261780%_ _%$stx261703%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx261784%_)
        (let* ((_%__stx265370265371%_ _%$stx261784%_)
               (_%g261789261814%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265370265371%_)))))
          (let ((_%__kont265373265374%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont265375265376%_
                 (lambda (_%g261794261861%_
                          _%g261795261863%_
                          _%g261796261864%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g261796261864%_
                                           (cons _%g261795261863%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g261794261861%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx265370265371%_))
                (let ((_%e261791261890%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx265370265371%_))))
                  (let ((_%tl261793261897%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261791261890%_)))
                        (_%hd261792261894%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261791261890%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl261793261897%_))
                        (_%__kont265373265374%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl261793261897%_))
                            (let ((_%e261800261831%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl261793261897%_))))
                              (let ((_%tl261802261838%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e261800261831%_)))
                                    (_%hd261801261835%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e261800261831%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd261801261835%_))
                                    (let ((_%e261803261841%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd261801261835%_))))
                                      (let ((_%tl261805261848%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e261803261841%_)))
                                            (_%hd261804261845%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e261803261841%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl261805261848%_))
                                            (let ((_%e261806261851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl261805261848%_))))
                                              (let ((_%tl261808261858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e261806261851%_)))
                                                    (_%hd261807261855%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e261806261851%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl261808261858%_))
                                                    (_%__kont265375265376%_
                                                     _%tl261802261838%_
                                                     _%hd261807261855%_
                                                     _%hd261804261845%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g261789261814%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g261789261814%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g261789261814%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g261789261814%_))))))
                (let () (declare (not safe)) (_%g261789261814%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx261908%_)
        (let* ((_%__stx265414265415%_ _%$stx261908%_)
               (_%g261913261944%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265414265415%_)))))
          (let ((_%__kont265417265418%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont265419265420%_
                 (lambda (_%g261918262009%_
                          _%g261919262011%_
                          _%g261920262012%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g261920262012%_
                                           (let ((__tmp265891
                                                  (lambda (_%g262032262035%_
                                                           _%g262033262038%_)
                                                    (cons _%g262032262035%_
                                                          _%g262033262038%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp265891
                                              '()
                                              _%g261919262011%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g261918262009%_)
                                     '()))))))
            (let ((_%__match265457265458%_
                   (lambda (_%e261921261951%_
                            _%hd261922261955%_
                            _%tl261923261958%_
                            _%e261924261961%_
                            _%hd261925261965%_
                            _%tl261926261968%_
                            _%e261927261971%_
                            _%hd261928261975%_
                            _%tl261929261978%_
                            _%__splice265421265422%_
                            _%target261930261981%_
                            _%tl261932261984%_)
                     (letrec ((_%loop261933261987%_
                               (lambda (_%hd261931261991%_ _%sig261937261994%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd261931261991%_))
                                     (let ((_%e261934261996%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd261931261991%_))))
                                       (let ((_%lp-tl261936262003%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e261934261996%_)))
                                             (_%lp-hd261935262000%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e261934261996%_))))
                                         (_%loop261933261987%_
                                          _%lp-tl261936262003%_
                                          (cons _%lp-hd261935262000%_
                                                _%sig261937261994%_))))
                                     (let ((_%sig261938262006%_
                                            (reverse _%sig261937261994%_)))
                                       (_%__kont265419265420%_
                                        _%tl261926261968%_
                                        _%sig261938262006%_
                                        _%hd261928261975%_))))))
                       (_%loop261933261987%_ _%target261930261981%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx265414265415%_))
                  (let ((_%e261915262048%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx265414265415%_))))
                    (let ((_%tl261917262055%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e261915262048%_)))
                          (_%hd261916262052%_
                           (let ()
                             (declare (not safe))
                             (##car _%e261915262048%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl261917262055%_))
                          (_%__kont265417265418%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261917262055%_))
                              (let ((_%e261924261961%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261917262055%_))))
                                (let ((_%tl261926261968%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261924261961%_)))
                                      (_%hd261925261965%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261924261961%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd261925261965%_))
                                      (let ((_%e261927261971%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd261925261965%_))))
                                        (let ((_%tl261929261978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261927261971%_)))
                                              (_%hd261928261975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261927261971%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl261929261978%_))
                                              (let ((_%__splice265421265422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl261929261978%_
                                                        '0))))
                                                (let ((_%tl261932261984%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice265421265422%_
                                                          '1)))
                                                      (_%target261930261981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice265421265422%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261932261984%_))
                                                      (_%__match265457265458%_
                                                       _%e261915262048%_
                                                       _%hd261916262052%_
                                                       _%tl261917262055%_
                                                       _%e261924261961%_
                                                       _%hd261925261965%_
                                                       _%tl261926261968%_
                                                       _%e261927261971%_
                                                       _%hd261928261975%_
                                                       _%tl261929261978%_
                                                       _%__splice265421265422%_
                                                       _%target261930261981%_
                                                       _%tl261932261984%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g261913261944%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g261913261944%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g261913261944%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g261913261944%_))))))
                  (let () (declare (not safe)) (_%g261913261944%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx262067%_)
        (let* ((_%__stx265460265461%_ _%$stx262067%_)
               (_%g262072262119%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265460265461%_)))))
          (let ((_%__kont265463265464%_
                 (lambda (_%g262074262277%_ _%g262075262279%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g262075262279%_
                               (let ((__tmp265892
                                      (lambda (_%g262299262302%_
                                               _%g262300262305%_)
                                        (cons _%g262299262302%_
                                              _%g262300262305%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp265892
                                  '()
                                  _%g262074262277%_))))))
                (_%__kont265467265468%_
                 (lambda (_%g262097262174%_ _%g262098262176%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g262098262176%_
                               (let ((__tmp265893
                                      (lambda (_%g262193262196%_
                                               _%g262194262199%_)
                                        (cons _%g262193262196%_
                                              _%g262194262199%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp265893
                                  '()
                                  _%g262097262174%_)))))))
            (let* ((_%__match265527265528%_
                    (lambda (_%e262099262126%_
                             _%hd262100262130%_
                             _%tl262101262133%_
                             _%e262102262136%_
                             _%hd262103262140%_
                             _%tl262104262143%_
                             _%__splice265469265470%_
                             _%target262105262146%_
                             _%tl262107262149%_)
                      (letrec ((_%loop262108262152%_
                                (lambda (_%hd262106262156%_
                                         _%sig262112262159%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd262106262156%_))
                                      (let ((_%e262109262161%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd262106262156%_))))
                                        (let ((_%lp-tl262111262168%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262109262161%_)))
                                              (_%lp-hd262110262165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262109262161%_))))
                                          (_%loop262108262152%_
                                           _%lp-tl262111262168%_
                                           (cons _%lp-hd262110262165%_
                                                 _%sig262112262159%_))))
                                      (let ((_%sig262113262171%_
                                             (reverse _%sig262112262159%_)))
                                        (_%__kont265467265468%_
                                         _%sig262113262171%_
                                         _%hd262103262140%_))))))
                        (_%loop262108262152%_ _%target262105262146%_ '()))))
                   (_%__match265519265520%_
                    (lambda (_%e262099262126%_
                             _%hd262100262130%_
                             _%tl262101262133%_
                             _%e262102262136%_
                             _%hd262103262140%_
                             _%tl262104262143%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl262104262143%_))
                          (let ((_%__splice265469265470%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl262104262143%_
                                    '0))))
                            (let ((_%tl262107262149%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice265469265470%_
                                      '1)))
                                  (_%target262105262146%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice265469265470%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl262107262149%_))
                                  (_%__match265527265528%_
                                   _%e262099262126%_
                                   _%hd262100262130%_
                                   _%tl262101262133%_
                                   _%e262102262136%_
                                   _%hd262103262140%_
                                   _%tl262104262143%_
                                   _%__splice265469265470%_
                                   _%target262105262146%_
                                   _%tl262107262149%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g262072262119%_)))))
                          (let () (declare (not safe)) (_%g262072262119%_)))))
                   (_%__match265507265508%_
                    (lambda (_%e262076262209%_
                             _%hd262077262213%_
                             _%tl262078262216%_
                             _%e262079262219%_
                             _%hd262080262223%_
                             _%tl262081262226%_
                             _%e262082262229%_
                             _%hd262083262233%_
                             _%tl262084262236%_
                             _%e262085262239%_
                             _%hd262086262243%_
                             _%tl262087262246%_
                             _%__splice265465265466%_
                             _%target262088262249%_
                             _%tl262090262252%_)
                      (letrec ((_%loop262091262255%_
                                (lambda (_%hd262089262259%_
                                         _%sig262095262262%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd262089262259%_))
                                      (let ((_%e262092262264%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd262089262259%_))))
                                        (let ((_%lp-tl262094262271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262092262264%_)))
                                              (_%lp-hd262093262268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262092262264%_))))
                                          (_%loop262091262255%_
                                           _%lp-tl262094262271%_
                                           (cons _%lp-hd262093262268%_
                                                 _%sig262095262262%_))))
                                      (let ((_%sig262096262274%_
                                             (reverse _%sig262095262262%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl262084262236%_))
                                            (_%__kont265463265464%_
                                             _%sig262096262274%_
                                             _%hd262080262223%_)
                                            (_%__match265519265520%_
                                             _%e262076262209%_
                                             _%hd262077262213%_
                                             _%tl262078262216%_
                                             _%e262079262219%_
                                             _%hd262080262223%_
                                             _%tl262081262226%_)))))))
                        (_%loop262091262255%_ _%target262088262249%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx265460265461%_))
                  (let ((_%e262076262209%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx265460265461%_))))
                    (let ((_%tl262078262216%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262076262209%_)))
                          (_%hd262077262213%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262076262209%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl262078262216%_))
                          (let ((_%e262079262219%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl262078262216%_))))
                            (let ((_%tl262081262226%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e262079262219%_)))
                                  (_%hd262080262223%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e262079262219%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl262081262226%_))
                                  (let ((_%e262082262229%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl262081262226%_))))
                                    (let ((_%tl262084262236%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e262082262229%_)))
                                          (_%hd262083262233%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e262082262229%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd262083262233%_))
                                          (let ((_%e262085262239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd262083262233%_))))
                                            (let ((_%tl262087262246%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e262085262239%_)))
                                                  (_%hd262086262243%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e262085262239%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd262086262243%_))
                                                  (if (let ((__tmp265894
                                                             |gxc[1]#_g265895_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp265894
                                                         _%hd262086262243%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl262087262246%_))
                                                          (let ((_%__splice265465265466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl262087262246%_
                            '0))))
                    (let ((_%tl262090262252%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice265465265466%_ '1)))
                          (_%target262088262249%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice265465265466%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262090262252%_))
                          (_%__match265507265508%_
                           _%e262076262209%_
                           _%hd262077262213%_
                           _%tl262078262216%_
                           _%e262079262219%_
                           _%hd262080262223%_
                           _%tl262081262226%_
                           _%e262082262229%_
                           _%hd262083262233%_
                           _%tl262084262236%_
                           _%e262085262239%_
                           _%hd262086262243%_
                           _%tl262087262246%_
                           _%__splice265465265466%_
                           _%target262088262249%_
                           _%tl262090262252%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262081262226%_))
                              (let ((_%__splice265469265470%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl262081262226%_
                                        '0))))
                                (let ((_%tl262107262149%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice265469265470%_
                                          '1)))
                                      (_%target262105262146%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice265469265470%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl262107262149%_))
                                      (_%__match265527265528%_
                                       _%e262076262209%_
                                       _%hd262077262213%_
                                       _%tl262078262216%_
                                       _%e262079262219%_
                                       _%hd262080262223%_
                                       _%tl262081262226%_
                                       _%__splice265469265470%_
                                       _%target262105262146%_
                                       _%tl262107262149%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g262072262119%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g262072262119%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl262081262226%_))
                      (let ((_%__splice265469265470%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl262081262226%_
                                '0))))
                        (let ((_%tl262107262149%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice265469265470%_ '1)))
                              (_%target262105262146%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice265469265470%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl262107262149%_))
                              (_%__match265527265528%_
                               _%e262076262209%_
                               _%hd262077262213%_
                               _%tl262078262216%_
                               _%e262079262219%_
                               _%hd262080262223%_
                               _%tl262081262226%_
                               _%__splice265469265470%_
                               _%target262105262146%_
                               _%tl262107262149%_)
                              (let ()
                                (declare (not safe))
                                (_%g262072262119%_)))))
                      (let () (declare (not safe)) (_%g262072262119%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl262081262226%_))
                  (let ((_%__splice265469265470%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl262081262226%_
                            '0))))
                    (let ((_%tl262107262149%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice265469265470%_ '1)))
                          (_%target262105262146%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice265469265470%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262107262149%_))
                          (_%__match265527265528%_
                           _%e262076262209%_
                           _%hd262077262213%_
                           _%tl262078262216%_
                           _%e262079262219%_
                           _%hd262080262223%_
                           _%tl262081262226%_
                           _%__splice265469265470%_
                           _%target262105262146%_
                           _%tl262107262149%_)
                          (let () (declare (not safe)) (_%g262072262119%_)))))
                  (let () (declare (not safe)) (_%g262072262119%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl262081262226%_))
                                                      (let ((_%__splice265469265470%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl262081262226%_
                        '0))))
                (let ((_%tl262107262149%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice265469265470%_ '1)))
                      (_%target262105262146%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice265469265470%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl262107262149%_))
                      (_%__match265527265528%_
                       _%e262076262209%_
                       _%hd262077262213%_
                       _%tl262078262216%_
                       _%e262079262219%_
                       _%hd262080262223%_
                       _%tl262081262226%_
                       _%__splice265469265470%_
                       _%target262105262146%_
                       _%tl262107262149%_)
                      (let () (declare (not safe)) (_%g262072262119%_)))))
              (let () (declare (not safe)) (_%g262072262119%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl262081262226%_))
                                              (let ((_%__splice265469265470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl262081262226%_
                                                        '0))))
                                                (let ((_%tl262107262149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice265469265470%_
                                                          '1)))
                                                      (_%target262105262146%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice265469265470%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262107262149%_))
                                                      (_%__match265527265528%_
                                                       _%e262076262209%_
                                                       _%hd262077262213%_
                                                       _%tl262078262216%_
                                                       _%e262079262219%_
                                                       _%hd262080262223%_
                                                       _%tl262081262226%_
                                                       _%__splice265469265470%_
                                                       _%target262105262146%_
                                                       _%tl262107262149%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g262072262119%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g262072262119%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl262081262226%_))
                                      (let ((_%__splice265469265470%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl262081262226%_
                                                '0))))
                                        (let ((_%tl262107262149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice265469265470%_
                                                  '1)))
                                              (_%target262105262146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice265469265470%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262107262149%_))
                                              (_%__match265527265528%_
                                               _%e262076262209%_
                                               _%hd262077262213%_
                                               _%tl262078262216%_
                                               _%e262079262219%_
                                               _%hd262080262223%_
                                               _%tl262081262226%_
                                               _%__splice265469265470%_
                                               _%target262105262146%_
                                               _%tl262107262149%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g262072262119%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g262072262119%_))))))
                          (let () (declare (not safe)) (_%g262072262119%_)))))
                  (let () (declare (not safe)) (_%g262072262119%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx263462%_ _%id263464%_)
        (let ((_%proc263468%_
               (let ((__tmp265896
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id263464%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp265896))))
          (if (procedure? _%proc263468%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx263462%_
                 _%id263464%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx263453%_ _%id263455%_)
        (let ((_%klass263459%_
               (let ((__tmp265897
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id263455%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp265897))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass263459%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx263453%_
                 _%id263455%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx262703%_ _%proc262705%_ _%sig262706%_)
        (letrec ((_%signature-arity262708%_
                  (lambda (_%args263385%_)
                    (let _%loop263388%_ ((_%rest263391%_ _%args263385%_)
                                         (_%count263393%_ '0))
                      (let* ((_%rest263394263405%_ _%rest263391%_)
                             (_%E263398263411%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest263394263405%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K263401263442%_
                               (lambda (_%rest263439%_)
                                 (_%loop263388%_
                                  _%rest263439%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count263393%_ '1)))))
                              (_%K263400263431%_ (lambda () _%count263393%_))
                              (_%K263399263419%_
                               (lambda () (cons _%count263393%_ '()))))
                          (let ((_%try-match263396263435%_
                                 (lambda ()
                                   (if (null? _%rest263394263405%_)
                                       (_%K263400263431%_)
                                       (_%K263399263419%_)))))
                            (if (pair? _%rest263394263405%_)
                                (let* ((_%tl263403263446%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest263394263405%_)))
                                       (_%rest263450%_ _%tl263403263446%_))
                                  (_%K263401263442%_ _%rest263450%_))
                                (_%try-match263396263435%_))))))))
                 (_%make-signature262710%_
                  (lambda (_%args263267%_
                           _%return263269%_
                           _%effect263270%_
                           _%unchecked263271%_)
                    (let ((__tmp265898
                           (lambda (_%g263272263274%_)
                             (|gxc[1]#verify-class!|
                              _%ctx262703%_
                              _%g263272263274%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp265898 _%args263267%_))
                    (|gxc[1]#verify-class!| _%ctx262703%_ _%return263269%_)
                    (if _%unchecked263271%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx262703%_
                         _%unchecked263271%_)
                        '#!void)
                    (let ((_%arity263278%_
                           (_%signature-arity262708%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args263267%_)))))
                      (if _%effect263270%_
                          (let ((_%effect263281%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect263270%_))))
                            (if (and (list? _%effect263281%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect263281%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx262703%_
                                   _%proc262705%_
                                   _%effect263281%_))))
                          '#!void)
                      (cons _%arity263278%_
                            (cons (let* ((_%g263284263307%_
                                          (lambda (_%g263285263303%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g263285263303%_))))
                                         (_%g263283263381%_
                                          (lambda (_%g263285263311%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g263285263311%_))
                                                (let ((_%e263290263314%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g263285263311%_))))
                                                  (let ((_%hd263291263318%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e263290263314%_)))
                                                        (_%tl263292263321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e263290263314%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl263292263321%_))
                                                        (let ((_%e263293263324%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl263292263321%_))))
                  (let ((_%hd263294263328%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263293263324%_)))
                        (_%tl263295263331%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263293263324%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl263295263331%_))
                        (let ((_%e263296263334%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl263295263331%_))))
                          (let ((_%hd263297263338%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263296263334%_)))
                                (_%tl263298263341%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263296263334%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263298263341%_))
                                (let ((_%e263299263344%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263298263341%_))))
                                  (let ((_%hd263300263348%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263299263344%_)))
                                        (_%tl263301263351%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263299263344%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263301263351%_))
                                        ((lambda (_%g263286263354%_
                                                  _%g263287263356%_
                                                  _%g263288263357%_
                                                  _%g263289263358%_)
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
                           (cons _%g263289263358%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g263288263357%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g263287263356%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g263286263354%_ '()))
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
                                         _%hd263300263348%_
                                         _%hd263297263338%_
                                         _%hd263294263328%_
                                         _%hd263291263318%_)
                                        (_%g263284263307%_
                                         _%g263285263311%_))))
                                (_%g263284263307%_ _%g263285263311%_))))
                        (_%g263284263307%_ _%g263285263311%_))))
                (_%g263284263307%_ _%g263285263311%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263284263307%_
                                                 _%g263285263311%_)))))
                                    (_%g263283263381%_
                                     (list _%args263267%_
                                           _%return263269%_
                                           _%effect263270%_
                                           _%unchecked263271%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx262703%_ _%proc262705%_)
          (let* ((_%__stx265538265539%_ _%sig262706%_)
                 (_%g262717262820%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx265538265539%_)))))
            (let ((_%__kont265541265542%_
                   (lambda (_%g262719263248%_ _%g262720263250%_)
                     (_%make-signature262710%_
                      _%g262720263250%_
                      _%g262719263248%_
                      '#f
                      '#f)))
                  (_%__kont265543265544%_
                   (lambda (_%g262727263199%_
                            _%g262728263201%_
                            _%g262729263202%_)
                     (_%make-signature262710%_
                      _%g262729263202%_
                      _%g262728263201%_
                      _%g262727263199%_
                      '#f)))
                  (_%__kont265545265546%_
                   (lambda (_%g262743263123%_
                            _%g262744263125%_
                            _%g262745263126%_)
                     (_%make-signature262710%_
                      _%g262745263126%_
                      _%g262744263125%_
                      _%g262743263123%_
                      (let ((__tmp265899
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc262705%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp265899)))))
                  (_%__kont265547265548%_
                   (lambda (_%g262763263029%_
                            _%g262764263031%_
                            _%g262765263032%_
                            _%g262766263033%_)
                     (_%make-signature262710%_
                      _%g262766263033%_
                      _%g262765263032%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g262763263029%_)))))
                  (_%__kont265549265550%_
                   (lambda (_%g262787262936%_ _%g262788262938%_)
                     (_%make-signature262710%_
                      _%g262788262938%_
                      _%g262787262936%_
                      '#f
                      (let ((__tmp265900
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc262705%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp265900)))))
                  (_%__kont265551265552%_
                   (lambda (_%g262799262871%_
                            _%g262800262873%_
                            _%g262801262874%_)
                     (_%make-signature262710%_
                      _%g262801262874%_
                      _%g262800262873%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g262799262871%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx265538265539%_))
                  (let ((_%e262721263228%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx265538265539%_))))
                    (let ((_%tl262723263235%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262721263228%_)))
                          (_%hd262722263232%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262721263228%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl262723263235%_))
                          (let ((_%e262724263238%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl262723263235%_))))
                            (let ((_%tl262726263245%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e262724263238%_)))
                                  (_%hd262725263242%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e262724263238%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl262726263245%_))
                                  (_%__kont265541265542%_
                                   _%hd262725263242%_
                                   _%hd262722263232%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262726263245%_))
                                      (let ((_%e262736263175%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262726263245%_))))
                                        (let ((_%tl262738263182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262736263175%_)))
                                              (_%hd262737263179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262736263175%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd262737263179%_))
                                              (let ((_%e262739263185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd262737263179%_))))
                                                (if (equal? _%e262739263185%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl262738263182%_))
                                                        (let ((_%e262740263189%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl262738263182%_))))
                  (let ((_%tl262742263196%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262740263189%_)))
                        (_%hd262741263193%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262740263189%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl262742263196%_))
                        (_%__kont265543265544%_
                         _%hd262741263193%_
                         _%hd262725263242%_
                         _%hd262722263232%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl262742263196%_))
                            (let ((_%e262759263109%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl262742263196%_))))
                              (let ((_%tl262761263116%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e262759263109%_)))
                                    (_%hd262760263113%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e262759263109%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd262760263113%_))
                                    (let ((_%e262762263119%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd262760263113%_))))
                                      (if (equal? _%e262762263119%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262761263116%_))
                                              (_%__kont265545265546%_
                                               _%hd262741263193%_
                                               _%hd262725263242%_
                                               _%hd262722263232%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl262761263116%_))
                                                  (let ((_%e262784263019%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl262761263116%_))))
                                                    (let ((_%tl262786263026%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262784263019%_)))
                                                          (_%hd262785263023%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262784263019%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl262786263026%_))
                                                          (_%__kont265547265548%_
                                                           _%hd262785263023%_
                                                           _%hd262741263193%_
                                                           _%hd262725263242%_
                                                           _%hd262722263232%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g262717262820%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g262717262820%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g262717262820%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g262717262820%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g262717262820%_))))))
                (let () (declare (not safe)) (_%g262717262820%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e262739263185%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl262738263182%_))
                                                            (_%__kont265549265550%_
                                                             _%hd262725263242%_
                                                             _%hd262722263232%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl262738263182%_))
                        (let ((_%e262812262861%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl262738263182%_))))
                          (let ((_%tl262814262868%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262812262861%_)))
                                (_%hd262813262865%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262812262861%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl262814262868%_))
                                (_%__kont265551265552%_
                                 _%hd262813262865%_
                                 _%hd262725263242%_
                                 _%hd262722263232%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g262717262820%_)))))
                        (let () (declare (not safe)) (_%g262717262820%_))))
                (let () (declare (not safe)) (_%g262717262820%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g262717262820%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g262717262820%_))))))
                          (let () (declare (not safe)) (_%g262717262820%_)))))
                  (let () (declare (not safe)) (_%g262717262820%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig262314%_)
        (let* ((_%g262317262397%_
                (lambda (_%g262318262393%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262318262393%_))))
               (_%g262316262699%_
                (lambda (_%g262318262401%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262318262401%_))
                      (let ((_%e262324262404%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262318262401%_))))
                        (let ((_%hd262325262408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262324262404%_)))
                              (_%tl262326262411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262324262404%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262326262411%_))
                              (let ((_%e262327262414%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262326262411%_))))
                                (let ((_%hd262328262418%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262327262414%_)))
                                      (_%tl262329262421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262327262414%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd262328262418%_))
                                      (let ((_%e262330262424%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd262328262418%_))))
                                        (if (equal? _%e262330262424%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl262329262421%_))
                                                (let ((_%e262331262428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl262329262421%_))))
                                                  (let ((_%hd262332262432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e262331262428%_)))
                                                        (_%tl262333262435%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e262331262428%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262332262432%_))
                                                        (let ((_%e262334262438%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262332262432%_))))
                  (let ((_%hd262335262442%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262334262438%_)))
                        (_%tl262336262445%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262334262438%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd262335262442%_))
                        (if (let ((__tmp265901 |gxc[1]#_g265902_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp265901
                               _%hd262335262442%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262336262445%_))
                                (let ((_%e262337262448%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262336262445%_))))
                                  (let ((_%hd262338262452%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262337262448%_)))
                                        (_%tl262339262455%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262337262448%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262339262455%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl262333262435%_))
                                            (let ((_%e262340262458%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl262333262435%_))))
                                              (let ((_%hd262341262462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262340262458%_)))
                                                    (_%tl262342262465%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262340262458%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd262341262462%_))
                                                    (let ((_%e262343262468%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd262341262462%_))))
                                                      (if (equal? _%e262343262468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl262342262465%_))
                      (let ((_%e262344262472%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl262342262465%_))))
                        (let ((_%hd262345262476%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262344262472%_)))
                              (_%tl262346262479%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262344262472%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd262345262476%_))
                              (let ((_%e262347262482%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd262345262476%_))))
                                (let ((_%hd262348262486%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262347262482%_)))
                                      (_%tl262349262489%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262347262482%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd262348262486%_))
                                      (if (let ((__tmp265903
                                                 |gxc[1]#_g265904_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp265903
                                             _%hd262348262486%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262349262489%_))
                                              (let ((_%e262350262492%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262349262489%_))))
                                                (let ((_%hd262351262496%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262350262492%_)))
                                                      (_%tl262352262499%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262350262492%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262352262499%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl262346262479%_))
                                                          (let ((_%e262353262502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl262346262479%_))))
                    (let ((_%hd262354262506%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262353262502%_)))
                          (_%tl262355262509%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262353262502%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd262354262506%_))
                          (let ((_%e262356262512%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd262354262506%_))))
                            (if (equal? _%e262356262512%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl262355262509%_))
                                    (let ((_%e262357262516%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl262355262509%_))))
                                      (let ((_%hd262358262520%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e262357262516%_)))
                                            (_%tl262359262523%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e262357262516%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd262358262520%_))
                                            (let ((_%e262360262526%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd262358262520%_))))
                                              (let ((_%hd262361262530%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262360262526%_)))
                                                    (_%tl262362262533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262360262526%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd262361262530%_))
                                                    (if (let ((__tmp265905
                                                               |gxc[1]#_g265906_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp265905
                                                           _%hd262361262530%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl262362262533%_))
                                                            (let ((_%e262363262536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl262362262533%_))))
                      (let ((_%hd262364262540%_
                             (let ()
                               (declare (not safe))
                               (##car _%e262363262536%_)))
                            (_%tl262365262543%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e262363262536%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl262365262543%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262359262523%_))
                                (let ((_%e262366262546%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262359262523%_))))
                                  (let ((_%hd262367262550%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262366262546%_)))
                                        (_%tl262368262553%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262366262546%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd262367262550%_))
                                        (let ((_%e262369262556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd262367262550%_))))
                                          (if (equal? _%e262369262556%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl262368262553%_))
                                                  (let ((_%e262370262560%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl262368262553%_))))
                                                    (let ((_%hd262371262564%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262370262560%_)))
                                                          (_%tl262372262567%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262370262560%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd262371262564%_))
                                                          (let ((_%e262373262570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd262371262564%_))))
                    (let ((_%hd262374262574%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262373262570%_)))
                          (_%tl262375262577%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262373262570%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd262374262574%_))
                          (if (let ((__tmp265907 |gxc[1]#_g265908_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp265907
                                 _%hd262374262574%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl262375262577%_))
                                  (let ((_%e262376262580%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl262375262577%_))))
                                    (let ((_%hd262377262584%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e262376262580%_)))
                                          (_%tl262378262587%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e262376262580%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl262378262587%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262372262567%_))
                                              (let ((_%e262379262590%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262372262567%_))))
                                                (let ((_%hd262380262594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262379262590%_)))
                                                      (_%tl262381262597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262379262590%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd262380262594%_))
                                                      (let ((_%e262382262600%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd262380262594%_))))
                (if (equal? _%e262382262600%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl262381262597%_))
                        (let ((_%e262383262604%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl262381262597%_))))
                          (let ((_%hd262384262608%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262383262604%_)))
                                (_%tl262385262611%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262383262604%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd262384262608%_))
                                (let ((_%e262386262614%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd262384262608%_))))
                                  (let ((_%hd262387262618%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262386262614%_)))
                                        (_%tl262388262621%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262386262614%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd262387262618%_))
                                        (if (let ((__tmp265909
                                                   |gxc[1]#_g265910_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp265909
                                               _%hd262387262618%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl262388262621%_))
                                                (let ((_%e262389262624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl262388262621%_))))
                                                  (let ((_%hd262390262628%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e262389262624%_)))
                                                        (_%tl262391262631%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e262389262624%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl262391262631%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl262385262611%_))
                                                            ((lambda (_%g262319262634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g262320262636%_
                              _%g262321262637%_
                              _%g262322262638%_
                              _%g262323262639%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g262320262636%_))
                           (cons _%g262320262636%_
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
                       (cons _%g262322262638%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g262319262634%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd262390262628%_
                     _%hd262377262584%_
                     _%hd262364262540%_
                     _%hd262351262496%_
                     _%hd262338262452%_)
                    (_%g262317262397%_ _%g262318262401%_))
                (_%g262317262397%_ _%g262318262401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g262317262397%_
                                                 _%g262318262401%_))
                                            (_%g262317262397%_
                                             _%g262318262401%_))
                                        (_%g262317262397%_
                                         _%g262318262401%_))))
                                (_%g262317262397%_ _%g262318262401%_))))
                        (_%g262317262397%_ _%g262318262401%_))
                    (_%g262317262397%_ _%g262318262401%_)))
              (_%g262317262397%_ _%g262318262401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262317262397%_
                                               _%g262318262401%_))
                                          (_%g262317262397%_
                                           _%g262318262401%_))))
                                  (_%g262317262397%_ _%g262318262401%_))
                              (_%g262317262397%_ _%g262318262401%_))
                          (_%g262317262397%_ _%g262318262401%_))))
                  (_%g262317262397%_ _%g262318262401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g262317262397%_
                                                   _%g262318262401%_))
                                              (_%g262317262397%_
                                               _%g262318262401%_)))
                                        (_%g262317262397%_
                                         _%g262318262401%_))))
                                (_%g262317262397%_ _%g262318262401%_))
                            (_%g262317262397%_ _%g262318262401%_))))
                    (_%g262317262397%_ _%g262318262401%_))
                (_%g262317262397%_ _%g262318262401%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g262317262397%_
                                                     _%g262318262401%_))))
                                            (_%g262317262397%_
                                             _%g262318262401%_))))
                                    (_%g262317262397%_ _%g262318262401%_))
                                (_%g262317262397%_ _%g262318262401%_)))
                          (_%g262317262397%_ _%g262318262401%_))))
                  (_%g262317262397%_ _%g262318262401%_))
              (_%g262317262397%_ _%g262318262401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262317262397%_
                                               _%g262318262401%_))
                                          (_%g262317262397%_
                                           _%g262318262401%_))
                                      (_%g262317262397%_ _%g262318262401%_))))
                              (_%g262317262397%_ _%g262318262401%_))))
                      (_%g262317262397%_ _%g262318262401%_))
                  (_%g262317262397%_ _%g262318262401%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g262317262397%_
                                                     _%g262318262401%_))))
                                            (_%g262317262397%_
                                             _%g262318262401%_))
                                        (_%g262317262397%_
                                         _%g262318262401%_))))
                                (_%g262317262397%_ _%g262318262401%_))
                            (_%g262317262397%_ _%g262318262401%_))
                        (_%g262317262397%_ _%g262318262401%_))))
                (_%g262317262397%_ _%g262318262401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g262317262397%_
                                                 _%g262318262401%_))
                                            (_%g262317262397%_
                                             _%g262318262401%_)))
                                      (_%g262317262397%_ _%g262318262401%_))))
                              (_%g262317262397%_ _%g262318262401%_))))
                      (_%g262317262397%_ _%g262318262401%_)))))
          (_%g262316262699%_ _%sig262314%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx263471%_)
        (let* ((_%g263474263492%_
                (lambda (_%g263475263488%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263475263488%_))))
               (_%g263473263547%_
                (lambda (_%g263475263496%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263475263496%_))
                      (let ((_%e263478263499%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263475263496%_))))
                        (let ((_%hd263479263503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263478263499%_)))
                              (_%tl263480263506%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263478263499%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263480263506%_))
                              (let ((_%e263481263509%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263480263506%_))))
                                (let ((_%hd263482263513%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263481263509%_)))
                                      (_%tl263483263516%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263481263509%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263483263516%_))
                                      (let ((_%e263484263519%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263483263516%_))))
                                        (let ((_%hd263485263523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263484263519%_)))
                                              (_%tl263486263526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263484263519%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263486263526%_))
                                              ((lambda (_%g263476263529%_
                                                        _%g263477263531%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g263477263531%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g263476263529%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx263471%_
                                                        _%g263477263531%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx263471%_
                                                        _%g263476263529%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g263477263531%_
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
                                                   (cons _%g263476263529%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g263474263492%_
                                                      _%g263475263496%_)))
                                               _%hd263485263523%_
                                               _%hd263482263513%_)
                                              (_%g263474263492%_
                                               _%g263475263496%_))))
                                      (_%g263474263492%_ _%g263475263496%_))))
                              (_%g263474263492%_ _%g263475263496%_))))
                      (_%g263474263492%_ _%g263475263496%_)))))
          (_%g263473263547%_ _%stx263471%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx263551%_)
        (let* ((_%g263554263578%_
                (lambda (_%g263555263574%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263555263574%_))))
               (_%g263553263859%_
                (lambda (_%g263555263582%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263555263582%_))
                      (let ((_%e263558263585%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263555263582%_))))
                        (let ((_%hd263559263589%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263558263585%_)))
                              (_%tl263560263592%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263558263585%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263560263592%_))
                              (let ((_%e263561263595%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263560263592%_))))
                                (let ((_%hd263562263599%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263561263595%_)))
                                      (_%tl263563263602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263561263595%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl263563263602%_))
                                      (let ((_g265911_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl263563263602%_
                                                '0))))
                                        (begin
                                          (let ((_g265912_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g265911_)
                                                       (##values-length
                                                        _g265911_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g265912_ 2)))
                                                (error "Context expects 2 values"
                                                       _g265912_)))
                                          (let ((_%target263564263605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g265911_ 0)))
                                                (_%tl263566263608%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g265911_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl263566263608%_))
                                                (letrec ((_%loop263567263611%_
                                                          (lambda (_%hd263565263615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature263571263618%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd263565263615%_))
                        (let ((_%e263568263620%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd263565263615%_))))
                          (let ((_%lp-hd263569263624%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263568263620%_)))
                                (_%lp-tl263570263627%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263568263620%_))))
                            (_%loop263567263611%_
                             _%lp-tl263570263627%_
                             (cons _%lp-hd263569263624%_
                                   _%signature263571263618%_))))
                        (let ((_%signature263572263630%_
                               (reverse _%signature263571263618%_)))
                          ((lambda (_%g263556263633%_ _%g263557263635%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g263557263635%_))
                                 (let* ((_%g263653263668%_
                                         (lambda (_%g263654263664%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g263654263664%_))))
                                        (_%g263652263847%_
                                         (lambda (_%g263654263672%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g263654263672%_))
                                               (let ((_%e263657263675%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g263654263672%_))))
                                                 (let ((_%hd263658263679%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e263657263675%_)))
                                                       (_%tl263659263682%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e263657263675%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl263659263682%_))
                                                       (let ((_%e263660263685%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl263659263682%_))))
                 (let ((_%hd263661263689%_
                        (let ()
                          (declare (not safe))
                          (##car _%e263660263685%_)))
                       (_%tl263662263692%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e263660263685%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl263662263692%_))
                       ((lambda (_%g263655263695%_ _%g263656263697%_)
                          (let* ((_%g263713263721%_
                                  (lambda (_%g263714263717%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g263714263717%_))))
                                 (_%g263712263843%_
                                  (lambda (_%g263714263725%_)
                                    ((lambda (_%g263715263728%_)
                                       (let* ((_%unchecked263741%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g263655263695%_))
                                              (_%g263744263752%_
                                               (lambda (_%g263745263748%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g263745263748%_))))
                                              (_%g263743263775%_
                                               (lambda (_%g263745263756%_)
                                                 ((lambda (_%g263746263759%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g263715263728%_
                                                                (cons _%g263746263759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g263745263756%_))))
                                         (_%g263743263775%_
                                          (if _%unchecked263741%_
                                              (let* ((_%g263779263794%_
                                                      (lambda (_%g263780263790%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g263780263790%_))))
                                                     (_%g263778263839%_
                                                      (lambda (_%g263780263798%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g263780263798%_))
                                                            (let ((_%e263783263801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g263780263798%_))))
                      (let ((_%hd263784263805%_
                             (let ()
                               (declare (not safe))
                               (##car _%e263783263801%_)))
                            (_%tl263785263808%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e263783263801%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl263785263808%_))
                            (let ((_%e263786263811%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl263785263808%_))))
                              (let ((_%hd263787263815%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e263786263811%_)))
                                    (_%tl263788263818%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e263786263811%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl263788263818%_))
                                    ((lambda (_%g263781263821%_
                                              _%g263782263823%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g263782263823%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g263656263697%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g263781263821%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd263787263815%_
                                     _%hd263784263805%_)
                                    (_%g263779263794%_ _%g263780263798%_))))
                            (_%g263779263794%_ _%g263780263798%_))))
                    (_%g263779263794%_ _%g263780263798%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263778263839%_
                                                 _%unchecked263741%_))
                                              '(begin)))))
                                     _%g263714263725%_))))
                            (_%g263712263843%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g263557263635%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g263656263697%_ '()))
                   (cons '#f (cons 'signature: (cons _%g263655263695%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd263661263689%_
                        _%hd263658263679%_)
                       (_%g263653263668%_ _%g263654263672%_))))
               (_%g263653263668%_ _%g263654263672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g263653263668%_
                                                _%g263654263672%_)))))
                                   (_%g263652263847%_
                                    (|gxc[1]#parse-signature|
                                     _%stx263551%_
                                     _%g263557263635%_
                                     (let ((__tmp265913
                                            (lambda (_%g263850263853%_
                                                     _%g263851263856%_)
                                              (cons _%g263850263853%_
                                                    _%g263851263856%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp265913
                                        '()
                                        _%g263556263633%_)))))
                                 (_%g263554263578%_ _%g263555263582%_)))
                           _%signature263572263630%_
                           _%hd263562263599%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop263567263611%_
                                                   _%target263564263605%_
                                                   '()))
                                                (_%g263554263578%_
                                                 _%g263555263582%_)))))
                                      (_%g263554263578%_ _%g263555263582%_))))
                              (_%g263554263578%_ _%g263555263582%_))))
                      (_%g263554263578%_ _%g263555263582%_)))))
          (_%g263553263859%_ _%stx263551%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx263864%_)
        (let* ((_%g263867263891%_
                (lambda (_%g263868263887%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263868263887%_))))
               (_%g263866264766%_
                (lambda (_%g263868263895%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263868263895%_))
                      (let ((_%e263871263898%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263868263895%_))))
                        (let ((_%hd263872263902%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263871263898%_)))
                              (_%tl263873263905%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263871263898%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263873263905%_))
                              (let ((_%e263874263908%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263873263905%_))))
                                (let ((_%hd263875263912%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263874263908%_)))
                                      (_%tl263876263915%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263874263908%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl263876263915%_))
                                      (let ((_g265914_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl263876263915%_
                                                '0))))
                                        (begin
                                          (let ((_g265915_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g265914_)
                                                       (##values-length
                                                        _g265914_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g265915_ 2)))
                                                (error "Context expects 2 values"
                                                       _g265915_)))
                                          (let ((_%target263877263918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g265914_ 0)))
                                                (_%tl263879263921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g265914_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl263879263921%_))
                                                (letrec ((_%loop263880263924%_
                                                          (lambda (_%hd263878263928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature263884263931%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd263878263928%_))
                        (let ((_%e263881263933%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd263878263928%_))))
                          (let ((_%lp-hd263882263937%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263881263933%_)))
                                (_%lp-tl263883263940%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263881263933%_))))
                            (_%loop263880263924%_
                             _%lp-tl263883263940%_
                             (cons _%lp-hd263882263937%_
                                   _%case-signature263884263931%_))))
                        (let ((_%case-signature263885263943%_
                               (reverse _%case-signature263884263931%_)))
                          ((lambda (_%g263869263946%_ _%g263870263948%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g263870263948%_))
                                 (let* ((_%signatures263979%_
                                         (map (lambda (_%g263965263967%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx263864%_
                                                 _%g263870263948%_
                                                 _%g263965263967%_))
                                              (let ((__tmp265916
                                                     (lambda (_%g263970263973%_
                                                              _%g263971263976%_)
                                                       (cons _%g263970263973%_
                                                             _%g263971263976%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp265916
                                                 '()
                                                 _%g263869263946%_))))
                                        (_%g263982264008%_
                                         (lambda (_%g263983264004%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g263983264004%_))))
                                        (_%g263981264762%_
                                         (lambda (_%g263983264012%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g263983264012%_))
                                               (let ((_g265917_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g263983264012%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g265918_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g265917_)
                        (##values-length _g265917_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g265918_ 2)))
                 (error "Context expects 2 values" _g265918_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target263986264015%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g265917_
                                                             0)))
                                                         (_%tl263988264018%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g265917_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl263988264018%_))
                                                         (letrec ((_%loop263989264021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd263987264025%_
                                    _%sig263993264028%_
                                    _%arity263994264029%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd263987264025%_))
                                 (let ((_%e263990264031%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd263987264025%_))))
                                   (let ((_%lp-hd263991264035%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e263990264031%_)))
                                         (_%lp-tl263992264038%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e263990264031%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd263991264035%_))
                                         (let ((_%e263997264041%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd263991264035%_))))
                                           (let ((_%hd263998264045%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e263997264041%_)))
                                                 (_%tl263999264048%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e263997264041%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl263999264048%_))
                                                 (let ((_%e264000264051%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl263999264048%_))))
                                                   (let ((_%hd264001264055%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e264000264051%_)))
                                                         (_%tl264002264058%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e264000264051%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl264002264058%_))
                                                         (_%loop263989264021%_
                                                          _%lp-tl263992264038%_
                                                          (cons _%hd264001264055%_
                                                                _%sig263993264028%_)
                                                          (cons _%hd263998264045%_
                                                                _%arity263994264029%_))
                                                         (_%g263982264008%_
                                                          _%g263983264012%_))))
                                                 (_%g263982264008%_
                                                  _%g263983264012%_))))
                                         (_%g263982264008%_
                                          _%g263983264012%_))))
                                 (let ((_%sig263995264061%_
                                        (reverse _%sig263993264028%_))
                                       (_%arity263996264063%_
                                        (reverse _%arity263994264029%_)))
                                   ((lambda (_%g263984264065%_
                                             _%g263985264067%_)
                                      (let* ((_%g264084264092%_
                                              (lambda (_%g264085264088%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g264085264088%_))))
                                             (_%g264083264747%_
                                              (lambda (_%g264085264096%_)
                                                ((lambda (_%g264086264099%_)
                                                   (let* ((_%g264112264120%_
                                                           (lambda (_%g264113264116%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g264113264116%_))))
                  (_%g264111264142%_
                   (lambda (_%g264113264124%_)
                     ((lambda (_%g264114264127%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g264086264099%_
                                    (cons _%g264114264127%_ '()))))
                      _%g264113264124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264111264142%_
                                                      (let ((_g265919_
                                                             (let _%loop264146%_ ((_%rest264149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures263979%_)
                                          (_%unchecked-proc264151%_ '#f)
                                          (_%unchecked-clauses264152%_ '()))
                       (let* ((_%rest264153264161%_ _%rest264149%_)
                              (_%else264155264173%_
                               (lambda ()
                                 (values _%unchecked-proc264151%_
                                         (reverse!
                                          _%unchecked-clauses264152%_))))
                              (_%K264157264614%_
                               (lambda (_%rest264177%_ _%hd264179%_)
                                 (let* ((_%g264181264268%_
                                         (lambda (_%g264182264264%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g264182264264%_))))
                                        (_%g264180264610%_
                                         (lambda (_%g264182264272%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g264182264272%_))
                                               (let ((_%e264189264275%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g264182264272%_))))
                                                 (let ((_%hd264190264279%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264189264275%_)))
                                                       (_%tl264191264282%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264189264275%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl264191264282%_))
                                                       (let ((_%e264192264285%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl264191264282%_))))
                 (let ((_%hd264193264289%_
                        (let ()
                          (declare (not safe))
                          (##car _%e264192264285%_)))
                       (_%tl264194264292%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e264192264285%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd264193264289%_))
                       (let ((_%e264195264295%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd264193264289%_))))
                         (let ((_%hd264196264299%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e264195264295%_)))
                               (_%tl264197264302%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e264195264295%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl264197264302%_))
                               (let ((_%e264198264305%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl264197264302%_))))
                                 (let ((_%hd264199264309%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e264198264305%_)))
                                       (_%tl264200264312%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e264198264305%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd264199264309%_))
                                       (let ((_%e264201264315%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd264199264309%_))))
                                         (if (equal? _%e264201264315%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl264200264312%_))
                                                 (let ((_%e264202264319%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl264200264312%_))))
                                                   (let ((_%hd264203264323%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e264202264319%_)))
                                                         (_%tl264204264326%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e264202264319%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd264203264323%_))
                                                         (let ((_%e264205264329%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd264203264323%_))))
                   (let ((_%hd264206264333%_
                          (let ()
                            (declare (not safe))
                            (##car _%e264205264329%_)))
                         (_%tl264207264336%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e264205264329%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd264206264333%_))
                         (if (let ((__tmp265921 |gxc[1]#_g265922_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp265921
                                _%hd264206264333%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl264207264336%_))
                                 (let ((_%e264208264339%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl264207264336%_))))
                                   (let ((_%hd264209264343%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e264208264339%_)))
                                         (_%tl264210264346%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e264208264339%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl264210264346%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl264204264326%_))
                                             (let ((_%e264211264349%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl264204264326%_))))
                                               (let ((_%hd264212264353%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e264211264349%_)))
                                                     (_%tl264213264356%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e264211264349%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd264212264353%_))
                                                     (let ((_%e264214264359%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd264212264353%_))))
                                                       (if (equal? _%e264214264359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl264213264356%_))
                       (let ((_%e264215264363%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl264213264356%_))))
                         (let ((_%hd264216264367%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e264215264363%_)))
                               (_%tl264217264370%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e264215264363%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd264216264367%_))
                               (let ((_%e264218264373%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd264216264367%_))))
                                 (let ((_%hd264219264377%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e264218264373%_)))
                                       (_%tl264220264380%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e264218264373%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd264219264377%_))
                                       (if (let ((__tmp265923
                                                  |gxc[1]#_g265924_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp265923
                                              _%hd264219264377%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl264220264380%_))
                                               (let ((_%e264221264383%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl264220264380%_))))
                                                 (let ((_%hd264222264387%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264221264383%_)))
                                                       (_%tl264223264390%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264221264383%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl264223264390%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl264217264370%_))
                                                           (let ((_%e264224264393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl264217264370%_))))
                     (let ((_%hd264225264397%_
                            (let ()
                              (declare (not safe))
                              (##car _%e264224264393%_)))
                           (_%tl264226264400%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e264224264393%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd264225264397%_))
                           (let ((_%e264227264403%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd264225264397%_))))
                             (if (equal? _%e264227264403%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl264226264400%_))
                                     (let ((_%e264228264407%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl264226264400%_))))
                                       (let ((_%hd264229264411%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e264228264407%_)))
                                             (_%tl264230264414%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e264228264407%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd264229264411%_))
                                             (let ((_%e264231264417%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd264229264411%_))))
                                               (let ((_%hd264232264421%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e264231264417%_)))
                                                     (_%tl264233264424%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e264231264417%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd264232264421%_))
                                                     (if (let ((__tmp265925
                                                                |gxc[1]#_g265926_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp265925
                                                            _%hd264232264421%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl264233264424%_))
                     (let ((_%e264234264427%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl264233264424%_))))
                       (let ((_%hd264235264431%_
                              (let ()
                                (declare (not safe))
                                (##car _%e264234264427%_)))
                             (_%tl264236264434%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e264234264427%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl264236264434%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl264230264414%_))
                                 (let ((_%e264237264437%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl264230264414%_))))
                                   (let ((_%hd264238264441%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e264237264437%_)))
                                         (_%tl264239264444%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e264237264437%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd264238264441%_))
                                         (let ((_%e264240264447%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd264238264441%_))))
                                           (if (equal? _%e264240264447%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl264239264444%_))
                                                   (let ((_%e264241264451%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl264239264444%_))))
                                                     (let ((_%hd264242264455%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e264241264451%_)))
                                                           (_%tl264243264458%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e264241264451%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd264242264455%_))
                                                           (let ((_%e264244264461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd264242264455%_))))
                     (let ((_%hd264245264465%_
                            (let ()
                              (declare (not safe))
                              (##car _%e264244264461%_)))
                           (_%tl264246264468%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e264244264461%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd264245264465%_))
                           (if (let ((__tmp265927 |gxc[1]#_g265928_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp265927
                                  _%hd264245264465%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl264246264468%_))
                                   (let ((_%e264247264471%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl264246264468%_))))
                                     (let ((_%hd264248264475%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e264247264471%_)))
                                           (_%tl264249264478%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e264247264471%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl264249264478%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl264243264458%_))
                                               (let ((_%e264250264481%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl264243264458%_))))
                                                 (let ((_%hd264251264485%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264250264481%_)))
                                                       (_%tl264252264488%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264250264481%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd264251264485%_))
                                                       (let ((_%e264253264491%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd264251264485%_))))
                 (if (equal? _%e264253264491%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl264252264488%_))
                         (let ((_%e264254264495%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl264252264488%_))))
                           (let ((_%hd264255264499%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e264254264495%_)))
                                 (_%tl264256264502%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e264254264495%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd264255264499%_))
                                 (let ((_%e264257264505%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd264255264499%_))))
                                   (let ((_%hd264258264509%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e264257264505%_)))
                                         (_%tl264259264512%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e264257264505%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd264258264509%_))
                                         (if (let ((__tmp265929
                                                    |gxc[1]#_g265930_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp265929
                                                _%hd264258264509%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl264259264512%_))
                                                 (let ((_%e264260264515%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl264259264512%_))))
                                                   (let ((_%hd264261264519%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e264260264515%_)))
                                                         (_%tl264262264522%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e264260264515%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl264262264522%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl264256264502%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl264194264292%_))
                         ((lambda (_%g264183264525%_
                                   _%g264184264527%_
                                   _%g264185264528%_
                                   _%g264186264529%_
                                   _%g264187264530%_
                                   _%g264188264531%_)
                            (let ((_%clause264602%_
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
                                                     (cons _%g264188264531%_
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
                                                 (cons _%g264186264529%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g264183264525%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked264604%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g264184264527%_))))
                              (_%loop264146%_
                               _%rest264177%_
                               (let ((_%$e264606%_ _%unchecked264604%_))
                                 (if _%$e264606%_
                                     _%$e264606%_
                                     _%unchecked-proc264151%_))
                               (cons _%clause264602%_
                                     _%unchecked-clauses264152%_))))
                          _%hd264261264519%_
                          _%hd264248264475%_
                          _%hd264235264431%_
                          _%hd264222264387%_
                          _%hd264209264343%_
                          _%hd264190264279%_)
                         (_%g264181264268%_ _%g264182264272%_))
                     (_%g264181264268%_ _%g264182264272%_))
                 (_%g264181264268%_ _%g264182264272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g264181264268%_
                                                  _%g264182264272%_))
                                             (_%g264181264268%_
                                              _%g264182264272%_))
                                         (_%g264181264268%_
                                          _%g264182264272%_))))
                                 (_%g264181264268%_ _%g264182264272%_))))
                         (_%g264181264268%_ _%g264182264272%_))
                     (_%g264181264268%_ _%g264182264272%_)))
               (_%g264181264268%_ _%g264182264272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264181264268%_
                                                _%g264182264272%_))
                                           (_%g264181264268%_
                                            _%g264182264272%_))))
                                   (_%g264181264268%_ _%g264182264272%_))
                               (_%g264181264268%_ _%g264182264272%_))
                           (_%g264181264268%_ _%g264182264272%_))))
                   (_%g264181264268%_ _%g264182264272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g264181264268%_
                                                    _%g264182264272%_))
                                               (_%g264181264268%_
                                                _%g264182264272%_)))
                                         (_%g264181264268%_
                                          _%g264182264272%_))))
                                 (_%g264181264268%_ _%g264182264272%_))
                             (_%g264181264268%_ _%g264182264272%_))))
                     (_%g264181264268%_ _%g264182264272%_))
                 (_%g264181264268%_ _%g264182264272%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264181264268%_
                                                      _%g264182264272%_))))
                                             (_%g264181264268%_
                                              _%g264182264272%_))))
                                     (_%g264181264268%_ _%g264182264272%_))
                                 (_%g264181264268%_ _%g264182264272%_)))
                           (_%g264181264268%_ _%g264182264272%_))))
                   (_%g264181264268%_ _%g264182264272%_))
               (_%g264181264268%_ _%g264182264272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264181264268%_
                                                _%g264182264272%_))
                                           (_%g264181264268%_
                                            _%g264182264272%_))
                                       (_%g264181264268%_ _%g264182264272%_))))
                               (_%g264181264268%_ _%g264182264272%_))))
                       (_%g264181264268%_ _%g264182264272%_))
                   (_%g264181264268%_ _%g264182264272%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264181264268%_
                                                      _%g264182264272%_))))
                                             (_%g264181264268%_
                                              _%g264182264272%_))
                                         (_%g264181264268%_
                                          _%g264182264272%_))))
                                 (_%g264181264268%_ _%g264182264272%_))
                             (_%g264181264268%_ _%g264182264272%_))
                         (_%g264181264268%_ _%g264182264272%_))))
                 (_%g264181264268%_ _%g264182264272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g264181264268%_
                                                  _%g264182264272%_))
                                             (_%g264181264268%_
                                              _%g264182264272%_)))
                                       (_%g264181264268%_ _%g264182264272%_))))
                               (_%g264181264268%_ _%g264182264272%_))))
                       (_%g264181264268%_ _%g264182264272%_))))
               (_%g264181264268%_ _%g264182264272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264181264268%_
                                                _%g264182264272%_)))))
                                   (_%g264180264610%_ _%hd264179%_)))))
                         (if (pair? _%rest264153264161%_)
                             (let ((_%hd264158264618%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest264153264161%_)))
                                   (_%tl264159264621%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest264153264161%_))))
                               (let* ((_%hd264624%_ _%hd264158264618%_)
                                      (_%rest264627%_ _%tl264159264621%_))
                                 (_%K264157264614%_
                                  _%rest264627%_
                                  _%hd264624%_)))
                             (_%else264155264173%_))))))
                (begin
                  (let ((_g265920_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g265919_)
                               (##values-length _g265919_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g265920_ 2)))
                        (error "Context expects 2 values" _g265920_)))
                  (let ((_%unchecked-proc264630%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g265919_ 0)))
                        (_%unchecked-clauses264632%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g265919_ 1))))
                    (if _%unchecked-proc264630%_
                        (let* ((_%g264634264658%_
                                (lambda (_%g264635264654%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g264635264654%_))))
                               (_%g264633264743%_
                                (lambda (_%g264635264662%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g264635264662%_))
                                      (let ((_%e264638264665%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g264635264662%_))))
                                        (let ((_%hd264639264669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264638264665%_)))
                                              (_%tl264640264672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264638264665%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264640264672%_))
                                              (let ((_%e264641264675%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264640264672%_))))
                                                (let ((_%hd264642264679%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264641264675%_)))
                                                      (_%tl264643264682%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264641264675%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd264642264679%_))
                                                      (let ((_g265931_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd264642264679%_ '0))))
                (begin
                  (let ((_g265932_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g265931_)
                               (##values-length _g265931_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g265932_ 2)))
                        (error "Context expects 2 values" _g265932_)))
                  (let ((_%target264644264685%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g265931_ 0)))
                        (_%tl264646264688%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g265931_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl264646264688%_))
                        (letrec ((_%loop264647264691%_
                                  (lambda (_%hd264645264695%_
                                           _%clause264651264698%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd264645264695%_))
                                        (let ((_%e264648264700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd264645264695%_))))
                                          (let ((_%lp-hd264649264704%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e264648264700%_)))
                                                (_%lp-tl264650264707%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e264648264700%_))))
                                            (_%loop264647264691%_
                                             _%lp-tl264650264707%_
                                             (cons _%lp-hd264649264704%_
                                                   _%clause264651264698%_))))
                                        (let ((_%clause264652264710%_
                                               (reverse _%clause264651264698%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264643264682%_))
                                              ((lambda (_%g264636264713%_
                                                        _%g264637264715%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g264637264715%_
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
                                             (let ((__tmp265933
                                                    (lambda (_%g264734264737%_
                                                             _%g264735264740%_)
                                                      (cons _%g264734264737%_
                                                            _%g264735264740%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp265933
                                                '()
                                                _%g264636264713%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause264652264710%_
                                               _%hd264639264669%_)
                                              (_%g264634264658%_
                                               _%g264635264662%_)))))))
                          (_%loop264647264691%_ _%target264644264685%_ '()))
                        (_%g264634264658%_ _%g264635264662%_)))))
              (_%g264634264658%_ _%g264635264662%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264634264658%_
                                               _%g264635264662%_))))
                                      (_%g264634264658%_ _%g264635264662%_)))))
                          (_%g264633264743%_
                           (list _%unchecked-proc264630%_
                                 _%unchecked-clauses264632%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g264085264096%_))))
                                        (_%g264083264747%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g263870263948%_
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
                                          _%g263984264065%_
                                          _%g263985264067%_))
                                       (let ((__tmp265934
                                              (lambda (_%g264750264754%_
                                                       _%g264751264757%_
                                                       _%g264752264759%_)
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
                                (cons _%g264751264757%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g264750264754%_ '())))))
              _%g264752264759%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp265934
                                          '()
                                          _%g263984264065%_
                                          _%g263985264067%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig263995264061%_
                                    _%arity263996264063%_))))))
                   (_%loop263989264021%_ _%target263986264015%_ '() '()))
                 (_%g263982264008%_ _%g263983264012%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g263982264008%_
                                                _%g263983264012%_)))))
                                   (_%g263981264762%_ _%signatures263979%_))
                                 (_%g263867263891%_ _%g263868263895%_)))
                           _%case-signature263885263943%_
                           _%hd263875263912%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop263880263924%_
                                                   _%target263877263918%_
                                                   '()))
                                                (_%g263867263891%_
                                                 _%g263868263895%_)))))
                                      (_%g263867263891%_ _%g263868263895%_))))
                              (_%g263867263891%_ _%g263868263895%_))))
                      (_%g263867263891%_ _%g263868263895%_)))))
          (_%g263866264766%_ _%stx263864%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx264774%_)
        (let* ((_%__stx265754265755%_ _%$stx264774%_)
               (_%g264780264840%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265754265755%_)))))
          (let ((_%__kont265757265758%_
                 (lambda (_%g264782265062%_ _%g264783265064%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g264783265064%_ '()))
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
                                                       (cons _%g264783265064%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g264782265062%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont265759265760%_
                 (lambda (_%g264797264987%_
                          _%g264798264989%_
                          _%g264799264990%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g264799264990%_ '()))
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
                                                       (cons _%g264799264990%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g264798264989%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g264797264987%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont265761265762%_
                 (lambda (_%g264816264901%_
                          _%g264817264903%_
                          _%g264818264904%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g264818264904%_ '()))
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
                                                       (cons _%g264818264904%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g264817264903%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g264816264901%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx265754265755%_))
                (let ((_%e264784265018%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx265754265755%_))))
                  (let ((_%tl264786265025%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e264784265018%_)))
                        (_%hd264785265022%_
                         (let ()
                           (declare (not safe))
                           (##car _%e264784265018%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl264786265025%_))
                        (let ((_%e264787265028%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl264786265025%_))))
                          (let ((_%tl264789265035%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264787265028%_)))
                                (_%hd264788265032%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264787265028%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd264788265032%_))
                                (let ((_%e264790265038%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd264788265032%_))))
                                  (if (equal? _%e264790265038%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl264789265035%_))
                                          (let ((_%e264791265042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl264789265035%_))))
                                            (let ((_%tl264793265049%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e264791265042%_)))
                                                  (_%hd264792265046%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e264791265042%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl264793265049%_))
                                                  (let ((_%e264794265052%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl264793265049%_))))
                                                    (let ((_%tl264796265059%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e264794265052%_)))
                                                          (_%hd264795265056%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e264794265052%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl264796265059%_))
                                                          (_%__kont265757265758%_
                                                           _%hd264795265056%_
                                                           _%hd264792265046%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g264780264840%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g264780264840%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g264780264840%_)))
                                      (if (equal? _%e264790265038%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264789265035%_))
                                              (let ((_%e264807264957%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264789265035%_))))
                                                (let ((_%tl264809264964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264807264957%_)))
                                                      (_%hd264808264961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264807264957%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl264809264964%_))
                                                      (let ((_%e264810264967%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl264809264964%_))))
                (let ((_%tl264812264974%_
                       (let () (declare (not safe)) (##cdr _%e264810264967%_)))
                      (_%hd264811264971%_
                       (let ()
                         (declare (not safe))
                         (##car _%e264810264967%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl264812264974%_))
                      (let ((_%e264813264977%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl264812264974%_))))
                        (let ((_%tl264815264984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264813264977%_)))
                              (_%hd264814264981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264813264977%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl264815264984%_))
                              (_%__kont265759265760%_
                               _%hd264814264981%_
                               _%hd264811264971%_
                               _%hd264808264961%_)
                              (let ()
                                (declare (not safe))
                                (_%g264780264840%_)))))
                      (let () (declare (not safe)) (_%g264780264840%_)))))
              (let () (declare (not safe)) (_%g264780264840%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g264780264840%_)))
                                          (if (equal? _%e264790265038%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl264789265035%_))
                                                  (let ((_%e264826264871%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl264789265035%_))))
                                                    (let ((_%tl264828264878%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e264826264871%_)))
                                                          (_%hd264827264875%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e264826264871%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl264828264878%_))
                                                          (let ((_%e264829264881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl264828264878%_))))
                    (let ((_%tl264831264888%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e264829264881%_)))
                          (_%hd264830264885%_
                           (let ()
                             (declare (not safe))
                             (##car _%e264829264881%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl264831264888%_))
                          (let ((_%e264832264891%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl264831264888%_))))
                            (let ((_%tl264834264898%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e264832264891%_)))
                                  (_%hd264833264895%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e264832264891%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl264834264898%_))
                                  (_%__kont265761265762%_
                                   _%hd264833264895%_
                                   _%hd264830264885%_
                                   _%hd264827264875%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g264780264840%_)))))
                          (let () (declare (not safe)) (_%g264780264840%_)))))
                  (let () (declare (not safe)) (_%g264780264840%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g264780264840%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g264780264840%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g264780264840%_)))))
                        (let () (declare (not safe)) (_%g264780264840%_)))))
                (let () (declare (not safe)) (_%g264780264840%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx265086%_)
        (let* ((_%g265090265110%_
                (lambda (_%g265091265106%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265091265106%_))))
               (_%g265089265179%_
                (lambda (_%g265091265114%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265091265114%_))
                      (let ((_%e265093265117%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265091265114%_))))
                        (let ((_%hd265094265121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265093265117%_)))
                              (_%tl265095265124%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265093265117%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl265095265124%_))
                              (let ((_g265935_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl265095265124%_
                                        '0))))
                                (begin
                                  (let ((_g265936_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g265935_)
                                               (##values-length _g265935_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g265936_ 2)))
                                        (error "Context expects 2 values"
                                               _g265936_)))
                                  (let ((_%target265096265127%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265935_ 0)))
                                        (_%tl265098265130%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265935_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265098265130%_))
                                        (letrec ((_%loop265099265133%_
                                                  (lambda (_%hd265097265137%_
                                                           _%decl265103265140%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd265097265137%_))
                                                        (let ((_%e265100265142%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd265097265137%_))))
                  (let ((_%lp-hd265101265146%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265100265142%_)))
                        (_%lp-tl265102265149%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265100265142%_))))
                    (_%loop265099265133%_
                     _%lp-tl265102265149%_
                     (cons _%lp-hd265101265146%_ _%decl265103265140%_))))
                (let ((_%decl265104265152%_ (reverse _%decl265103265140%_)))
                  ((lambda (_%g265092265155%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp265937
                                  (lambda (_%g265170265173%_ _%g265171265176%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g265170265173%_)
                                          _%g265171265176%_))))
                             (declare (not safe))
                             (foldr__0 __tmp265937 '() _%g265092265155%_))))
                   _%decl265104265152%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop265099265133%_
                                           _%target265096265127%_
                                           '()))
                                        (_%g265090265110%_
                                         _%g265091265114%_)))))
                              (_%g265090265110%_ _%g265091265114%_))))
                      (_%g265090265110%_ _%g265091265114%_)))))
          (_%g265089265179%_ _%$stx265086%_))))))
