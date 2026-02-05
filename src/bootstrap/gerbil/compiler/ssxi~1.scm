(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g232745_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232752_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232754_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232756_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232758_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232760_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232772_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232774_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232776_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232778_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232780_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx226203%_)
        (let* ((_%g226207226225%_
                (lambda (_%g226208226221%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226208226221%_))))
               (_%g226206226280%_
                (lambda (_%g226208226229%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226208226229%_))
                      (let ((_%e226211226232%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226208226229%_))))
                        (let ((_%hd226212226236%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226211226232%_)))
                              (_%tl226213226239%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226211226232%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226213226239%_))
                              (let ((_%e226214226242%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226213226239%_))))
                                (let ((_%hd226215226246%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226214226242%_)))
                                      (_%tl226216226249%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226214226242%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226216226249%_))
                                      (let ((_%e226217226252%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226216226249%_))))
                                        (let ((_%hd226218226256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226217226252%_)))
                                              (_%tl226219226259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226217226252%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226219226259%_))
                                              ((lambda (_%g226209226262%_
                                                        _%g226210226264%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g226210226264%_))
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
                               (cons _%g226210226264%_ '()))
                         (cons _%g226209226262%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g226207226225%_
                                                      _%g226208226229%_)))
                                               _%hd226218226256%_
                                               _%hd226215226246%_)
                                              (_%g226207226225%_
                                               _%g226208226229%_))))
                                      (_%g226207226225%_ _%g226208226229%_))))
                              (_%g226207226225%_ _%g226208226229%_))))
                      (_%g226207226225%_ _%g226208226229%_)))))
          (_%g226206226280%_ _%$stx226203%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx226284%_)
        (let* ((_%g226288226306%_
                (lambda (_%g226289226302%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226289226302%_))))
               (_%g226287226361%_
                (lambda (_%g226289226310%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226289226310%_))
                      (let ((_%e226292226313%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226289226310%_))))
                        (let ((_%hd226293226317%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226292226313%_)))
                              (_%tl226294226320%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226292226313%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226294226320%_))
                              (let ((_%e226295226323%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226294226320%_))))
                                (let ((_%hd226296226327%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226295226323%_)))
                                      (_%tl226297226330%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226295226323%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226297226330%_))
                                      (let ((_%e226298226333%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226297226330%_))))
                                        (let ((_%hd226299226337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226298226333%_)))
                                              (_%tl226300226340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226298226333%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226300226340%_))
                                              ((lambda (_%g226290226343%_
                                                        _%g226291226345%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g226291226345%_))
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
                               (cons _%g226291226345%_ '()))
                         (cons _%g226290226343%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g226288226306%_
                                                      _%g226289226310%_)))
                                               _%hd226299226337%_
                                               _%hd226296226327%_)
                                              (_%g226288226306%_
                                               _%g226289226310%_))))
                                      (_%g226288226306%_ _%g226289226310%_))))
                              (_%g226288226306%_ _%g226289226310%_))))
                      (_%g226288226306%_ _%g226289226310%_)))))
          (_%g226287226361%_ _%$stx226284%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx226365%_)
        (let* ((_%g226369226398%_
                (lambda (_%g226370226394%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226370226394%_))))
               (_%g226368226494%_
                (lambda (_%g226370226402%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226370226402%_))
                      (let ((_%e226373226405%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226370226402%_))))
                        (let ((_%hd226374226409%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226373226405%_)))
                              (_%tl226375226412%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226373226405%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl226375226412%_))
                              (let ((_g232723_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl226375226412%_
                                        '0))))
                                (begin
                                  (let ((_g232724_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232723_)
                                               (##values-length _g232723_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232724_ 2)))
                                        (error "Context expects 2 values"
                                               _g232724_)))
                                  (let ((_%target226376226415%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232723_ 0)))
                                        (_%tl226378226418%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232723_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226378226418%_))
                                        (letrec ((_%loop226379226421%_
                                                  (lambda (_%hd226377226425%_
                                                           _%type226383226428%_
                                                           _%symbol226384226429%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd226377226425%_))
                                                        (let ((_%e226380226431%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd226377226425%_))))
                  (let ((_%lp-hd226381226435%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226380226431%_)))
                        (_%lp-tl226382226438%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226380226431%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd226381226435%_))
                        (let ((_%e226387226441%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd226381226435%_))))
                          (let ((_%hd226388226445%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226387226441%_)))
                                (_%tl226389226448%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226387226441%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226389226448%_))
                                (let ((_%e226390226451%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl226389226448%_))))
                                  (let ((_%hd226391226455%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226390226451%_)))
                                        (_%tl226392226458%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226390226451%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226392226458%_))
                                        (_%loop226379226421%_
                                         _%lp-tl226382226438%_
                                         (cons _%hd226391226455%_
                                               _%type226383226428%_)
                                         (cons _%hd226388226445%_
                                               _%symbol226384226429%_))
                                        (_%g226369226398%_
                                         _%g226370226402%_))))
                                (_%g226369226398%_ _%g226370226402%_))))
                        (_%g226369226398%_ _%g226370226402%_))))
                (let ((_%type226385226461%_ (reverse _%type226383226428%_))
                      (_%symbol226386226463%_
                       (reverse _%symbol226384226429%_)))
                  ((lambda (_%g226371226465%_ _%g226372226467%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g226371226465%_
                                _%g226372226467%_))
                             (let ((__tmp232725
                                    (lambda (_%g226482226486%_
                                             _%g226483226489%_
                                             _%g226484226491%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g226483226489%_
                                                        (cons _%g226482226486%_
                                                              '())))
                                            _%g226484226491%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp232725
                                '()
                                _%g226371226465%_
                                _%g226372226467%_)))))
                   _%type226385226461%_
                   _%symbol226386226463%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop226379226421%_
                                           _%target226376226415%_
                                           '()
                                           '()))
                                        (_%g226369226398%_
                                         _%g226370226402%_)))))
                              (_%g226369226398%_ _%g226370226402%_))))
                      (_%g226369226398%_ _%g226370226402%_)))))
          (_%g226368226494%_ _%$stx226365%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx226499%_)
        (let* ((_%__stx232034232035%_ _%$stx226499%_)
               (_%g226504226546%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232034232035%_)))))
          (let ((_%__kont232037232038%_
                 (lambda (_%g226506226674%_
                          _%g226507226676%_
                          _%g226508226677%_
                          _%g226509226678%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g226509226678%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g226508226677%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g226507226676%_ '()))
                                           (cons _%g226506226674%_ '())))))))
                (_%__kont232039232040%_
                 (lambda (_%g226525226593%_
                          _%g226526226595%_
                          _%g226527226596%_
                          _%g226528226597%_)
                   (cons _%g226528226597%_
                         (cons _%g226527226596%_
                               (cons _%g226526226595%_
                                     (cons _%g226525226593%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match232073232074%_
                   (lambda (_%e226510226624%_
                            _%hd226511226628%_
                            _%tl226512226631%_
                            _%e226513226634%_
                            _%hd226514226638%_
                            _%tl226515226641%_
                            _%e226516226644%_
                            _%hd226517226648%_
                            _%tl226518226651%_
                            _%e226519226654%_
                            _%hd226520226658%_
                            _%tl226521226661%_
                            _%e226522226664%_
                            _%hd226523226668%_
                            _%tl226524226671%_)
                     (let ((_%g226506226674%_ _%hd226523226668%_)
                           (_%g226507226676%_ _%hd226520226658%_)
                           (_%g226508226677%_ _%hd226517226648%_)
                           (_%g226509226678%_ _%hd226514226638%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226509226678%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226508226677%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226507226676%_)))
                           (_%__kont232037232038%_
                            _%g226506226674%_
                            _%g226507226676%_
                            _%g226508226677%_
                            _%g226509226678%_)
                           (let ()
                             (declare (not safe))
                             (_%g226504226546%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232034232035%_))
                  (let ((_%e226510226624%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232034232035%_))))
                    (let ((_%tl226512226631%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e226510226624%_)))
                          (_%hd226511226628%_
                           (let ()
                             (declare (not safe))
                             (##car _%e226510226624%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226512226631%_))
                          (let ((_%e226513226634%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl226512226631%_))))
                            (let ((_%tl226515226641%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226513226634%_)))
                                  (_%hd226514226638%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226513226634%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl226515226641%_))
                                  (let ((_%e226516226644%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl226515226641%_))))
                                    (let ((_%tl226518226651%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e226516226644%_)))
                                          (_%hd226517226648%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e226516226644%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl226518226651%_))
                                          (let ((_%e226519226654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl226518226651%_))))
                                            (let ((_%tl226521226661%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e226519226654%_)))
                                                  (_%hd226520226658%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e226519226654%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl226521226661%_))
                                                  (let ((_%e226522226664%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl226521226661%_))))
                                                    (let ((_%tl226524226671%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e226522226664%_)))
                                                          (_%hd226523226668%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e226522226664%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl226524226671%_))
                                                          (_%__match232073232074%_
                                                           _%e226510226624%_
                                                           _%hd226511226628%_
                                                           _%tl226512226631%_
                                                           _%e226513226634%_
                                                           _%hd226514226638%_
                                                           _%tl226515226641%_
                                                           _%e226516226644%_
                                                           _%hd226517226648%_
                                                           _%tl226518226651%_
                                                           _%e226519226654%_
                                                           _%hd226520226658%_
                                                           _%tl226521226661%_
                                                           _%e226522226664%_
                                                           _%hd226523226668%_
                                                           _%tl226524226671%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g226504226546%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl226521226661%_))
                                                      (_%__kont232039232040%_
                                                       _%hd226520226658%_
                                                       _%hd226517226648%_
                                                       _%hd226514226638%_
                                                       _%hd226511226628%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g226504226546%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g226504226546%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g226504226546%_)))))
                          (let () (declare (not safe)) (_%g226504226546%_)))))
                  (let () (declare (not safe)) (_%g226504226546%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx226703%_)
        (let* ((_%g226707226742%_
                (lambda (_%g226708226738%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226708226738%_))))
               (_%g226706226855%_
                (lambda (_%g226708226746%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226708226746%_))
                      (let ((_%e226712226749%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226708226746%_))))
                        (let ((_%hd226713226753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226712226749%_)))
                              (_%tl226714226756%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226712226749%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl226714226756%_))
                              (let ((_g232726_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl226714226756%_
                                        '0))))
                                (begin
                                  (let ((_g232727_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232726_)
                                               (##values-length _g232726_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232727_ 2)))
                                        (error "Context expects 2 values"
                                               _g232727_)))
                                  (let ((_%target226715226759%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232726_ 0)))
                                        (_%tl226717226762%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232726_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226717226762%_))
                                        (letrec ((_%loop226718226765%_
                                                  (lambda (_%hd226716226769%_
                                                           _%symbol226722226772%_
                                                           _%method226723226773%_
                                                           _%type-t226724226774%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd226716226769%_))
                                                        (let ((_%e226719226776%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd226716226769%_))))
                  (let ((_%lp-hd226720226780%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226719226776%_)))
                        (_%lp-tl226721226783%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226719226776%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd226720226780%_))
                        (let ((_%e226728226786%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd226720226780%_))))
                          (let ((_%hd226729226790%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226728226786%_)))
                                (_%tl226730226793%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226728226786%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226730226793%_))
                                (let ((_%e226731226796%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl226730226793%_))))
                                  (let ((_%hd226732226800%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226731226796%_)))
                                        (_%tl226733226803%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226731226796%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl226733226803%_))
                                        (let ((_%e226734226806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl226733226803%_))))
                                          (let ((_%hd226735226810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e226734226806%_)))
                                                (_%tl226736226813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e226734226806%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl226736226813%_))
                                                (_%loop226718226765%_
                                                 _%lp-tl226721226783%_
                                                 (cons _%hd226735226810%_
                                                       _%symbol226722226772%_)
                                                 (cons _%hd226732226800%_
                                                       _%method226723226773%_)
                                                 (cons _%hd226729226790%_
                                                       _%type-t226724226774%_))
                                                (_%g226707226742%_
                                                 _%g226708226746%_))))
                                        (_%g226707226742%_
                                         _%g226708226746%_))))
                                (_%g226707226742%_ _%g226708226746%_))))
                        (_%g226707226742%_ _%g226708226746%_))))
                (let ((_%symbol226725226816%_ (reverse _%symbol226722226772%_))
                      (_%method226726226818%_ (reverse _%method226723226773%_))
                      (_%type-t226727226819%_
                       (reverse _%type-t226724226774%_)))
                  ((lambda (_%g226709226821%_
                            _%g226710226823%_
                            _%g226711226824%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g226709226821%_
                                _%g226710226823%_
                                _%g226711226824%_))
                             (let ((__tmp232728
                                    (lambda (_%g226840226845%_
                                             _%g226841226848%_
                                             _%g226842226850%_
                                             _%g226843226852%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g226842226850%_
                                                        (cons _%g226841226848%_
                                                              (cons _%g226840226845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g226843226852%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp232728
                                '()
                                _%g226709226821%_
                                _%g226710226823%_
                                _%g226711226824%_)))))
                   _%symbol226725226816%_
                   _%method226726226818%_
                   _%type-t226727226819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop226718226765%_
                                           _%target226715226759%_
                                           '()
                                           '()
                                           '()))
                                        (_%g226707226742%_
                                         _%g226708226746%_)))))
                              (_%g226707226742%_ _%g226708226746%_))))
                      (_%g226707226742%_ _%g226708226746%_)))))
          (_%g226706226855%_ _%$stx226703%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx226860%_)
        (let* ((_%g226864226897%_
                (lambda (_%g226865226893%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226865226893%_))))
               (_%g226863227007%_
                (lambda (_%g226865226901%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226865226901%_))
                      (let ((_%e226869226904%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226865226901%_))))
                        (let ((_%hd226870226908%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226869226904%_)))
                              (_%tl226871226911%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226869226904%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226871226911%_))
                              (let ((_%e226872226914%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226871226911%_))))
                                (let ((_%hd226873226918%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226872226914%_)))
                                      (_%tl226874226921%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226872226914%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl226874226921%_))
                                      (let ((_g232729_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl226874226921%_
                                                '0))))
                                        (begin
                                          (let ((_g232730_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232729_)
                                                       (##values-length
                                                        _g232729_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232730_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232730_)))
                                          (let ((_%target226875226924%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232729_ 0)))
                                                (_%tl226877226927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232729_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl226877226927%_))
                                                (letrec ((_%loop226878226930%_
                                                          (lambda (_%hd226876226934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol226882226937%_
                           _%method226883226938%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd226876226934%_))
                        (let ((_%e226879226940%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd226876226934%_))))
                          (let ((_%lp-hd226880226944%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226879226940%_)))
                                (_%lp-tl226881226947%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226879226940%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd226880226944%_))
                                (let ((_%e226886226950%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd226880226944%_))))
                                  (let ((_%hd226887226954%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226886226950%_)))
                                        (_%tl226888226957%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226886226950%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl226888226957%_))
                                        (let ((_%e226889226960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl226888226957%_))))
                                          (let ((_%hd226890226964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e226889226960%_)))
                                                (_%tl226891226967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e226889226960%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl226891226967%_))
                                                (_%loop226878226930%_
                                                 _%lp-tl226881226947%_
                                                 (cons _%hd226890226964%_
                                                       _%symbol226882226937%_)
                                                 (cons _%hd226887226954%_
                                                       _%method226883226938%_))
                                                (_%g226864226897%_
                                                 _%g226865226901%_))))
                                        (_%g226864226897%_
                                         _%g226865226901%_))))
                                (_%g226864226897%_ _%g226865226901%_))))
                        (let ((_%symbol226884226970%_
                               (reverse _%symbol226882226937%_))
                              (_%method226885226972%_
                               (reverse _%method226883226938%_)))
                          ((lambda (_%g226866226974%_
                                    _%g226867226976%_
                                    _%g226868226977%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g226866226974%_
                                        _%g226867226976%_))
                                     (let ((__tmp232731
                                            (lambda (_%g226995226999%_
                                                     _%g226996227002%_
                                                     _%g226997227004%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g226868226977%_
                                                                (cons _%g226996227002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g226995226999%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g226997227004%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp232731
                                        '()
                                        _%g226866226974%_
                                        _%g226867226976%_)))))
                           _%symbol226884226970%_
                           _%method226885226972%_
                           _%hd226873226918%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop226878226930%_
                                                   _%target226875226924%_
                                                   '()
                                                   '()))
                                                (_%g226864226897%_
                                                 _%g226865226901%_)))))
                                      (_%g226864226897%_ _%g226865226901%_))))
                              (_%g226864226897%_ _%g226865226901%_))))
                      (_%g226864226897%_ _%g226865226901%_)))))
          (_%g226863227007%_ _%$stx226860%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx227012%_)
        (let* ((_%g227016227030%_
                (lambda (_%g227017227026%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227017227026%_))))
               (_%g227015227071%_
                (lambda (_%g227017227034%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227017227034%_))
                      (let ((_%e227019227037%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227017227034%_))))
                        (let ((_%hd227020227041%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227019227037%_)))
                              (_%tl227021227044%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227019227037%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227021227044%_))
                              (let ((_%e227022227047%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227021227044%_))))
                                (let ((_%hd227023227051%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227022227047%_)))
                                      (_%tl227024227054%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227022227047%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227024227054%_))
                                      ((lambda (_%g227018227057%_)
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
                                                           (cons _%g227018227057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227023227051%_)
                                      (_%g227016227030%_ _%g227017227034%_))))
                              (_%g227016227030%_ _%g227017227034%_))))
                      (_%g227016227030%_ _%g227017227034%_)))))
          (_%g227015227071%_ _%$stx227012%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx227075%_)
        (let* ((_%g227079227133%_
                (lambda (_%g227080227129%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227080227129%_))))
               (_%g227078227314%_
                (lambda (_%g227080227137%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227080227137%_))
                      (let ((_%e227092227140%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227080227137%_))))
                        (let ((_%hd227093227144%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227092227140%_)))
                              (_%tl227094227147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227092227140%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227094227147%_))
                              (let ((_%e227095227150%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227094227147%_))))
                                (let ((_%hd227096227154%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227095227150%_)))
                                      (_%tl227097227157%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227095227150%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227097227157%_))
                                      (let ((_%e227098227160%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227097227157%_))))
                                        (let ((_%hd227099227164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227098227160%_)))
                                              (_%tl227100227167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227098227160%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227100227167%_))
                                              (let ((_%e227101227170%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227100227167%_))))
                                                (let ((_%hd227102227174%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227101227170%_)))
                                                      (_%tl227103227177%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227101227170%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl227103227177%_))
                                                      (let ((_%e227104227180%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl227103227177%_))))
                (let ((_%hd227105227184%_
                       (let () (declare (not safe)) (##car _%e227104227180%_)))
                      (_%tl227106227187%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e227104227180%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227106227187%_))
                      (let ((_%e227107227190%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227106227187%_))))
                        (let ((_%hd227108227194%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227107227190%_)))
                              (_%tl227109227197%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227107227190%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227109227197%_))
                              (let ((_%e227110227200%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227109227197%_))))
                                (let ((_%hd227111227204%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227110227200%_)))
                                      (_%tl227112227207%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227110227200%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227112227207%_))
                                      (let ((_%e227113227210%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227112227207%_))))
                                        (let ((_%hd227114227214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227113227210%_)))
                                              (_%tl227115227217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227113227210%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227115227217%_))
                                              (let ((_%e227116227220%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227115227217%_))))
                                                (let ((_%hd227117227224%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227116227220%_)))
                                                      (_%tl227118227227%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227116227220%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl227118227227%_))
                                                      (let ((_%e227119227230%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl227118227227%_))))
                (let ((_%hd227120227234%_
                       (let () (declare (not safe)) (##car _%e227119227230%_)))
                      (_%tl227121227237%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e227119227230%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227121227237%_))
                      (let ((_%e227122227240%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227121227237%_))))
                        (let ((_%hd227123227244%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227122227240%_)))
                              (_%tl227124227247%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227122227240%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227124227247%_))
                              (let ((_%e227125227250%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227124227247%_))))
                                (let ((_%hd227126227254%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227125227250%_)))
                                      (_%tl227127227257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227125227250%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227127227257%_))
                                      ((lambda (_%g227081227260%_
                                                _%g227082227262%_
                                                _%g227083227263%_
                                                _%g227084227264%_
                                                _%g227085227265%_
                                                _%g227086227266%_
                                                _%g227087227267%_
                                                _%g227088227268%_
                                                _%g227089227269%_
                                                _%g227090227270%_
                                                _%g227091227271%_)
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
                                                           (cons _%g227091227271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g227090227270%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g227089227269%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227088227268%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227087227267%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g227086227266%_ '()))
                                           (cons _%g227085227265%_
                                                 (cons _%g227084227264%_
                                                       (cons _%g227083227263%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g227082227262%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g227081227260%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd227126227254%_
                                       _%hd227123227244%_
                                       _%hd227120227234%_
                                       _%hd227117227224%_
                                       _%hd227114227214%_
                                       _%hd227111227204%_
                                       _%hd227108227194%_
                                       _%hd227105227184%_
                                       _%hd227102227174%_
                                       _%hd227099227164%_
                                       _%hd227096227154%_)
                                      (_%g227079227133%_ _%g227080227137%_))))
                              (_%g227079227133%_ _%g227080227137%_))))
                      (_%g227079227133%_ _%g227080227137%_))))
              (_%g227079227133%_ _%g227080227137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227079227133%_
                                               _%g227080227137%_))))
                                      (_%g227079227133%_ _%g227080227137%_))))
                              (_%g227079227133%_ _%g227080227137%_))))
                      (_%g227079227133%_ _%g227080227137%_))))
              (_%g227079227133%_ _%g227080227137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227079227133%_
                                               _%g227080227137%_))))
                                      (_%g227079227133%_ _%g227080227137%_))))
                              (_%g227079227133%_ _%g227080227137%_))))
                      (_%g227079227133%_ _%g227080227137%_)))))
          (_%g227078227314%_ _%$stx227075%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx227318%_)
        (let* ((_%g227322227336%_
                (lambda (_%g227323227332%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227323227332%_))))
               (_%g227321227377%_
                (lambda (_%g227323227340%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227323227340%_))
                      (let ((_%e227325227343%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227323227340%_))))
                        (let ((_%hd227326227347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227325227343%_)))
                              (_%tl227327227350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227325227343%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227327227350%_))
                              (let ((_%e227328227353%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227327227350%_))))
                                (let ((_%hd227329227357%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227328227353%_)))
                                      (_%tl227330227360%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227328227353%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227330227360%_))
                                      ((lambda (_%g227324227363%_)
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
                                                           (cons _%g227324227363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227329227357%_)
                                      (_%g227322227336%_ _%g227323227340%_))))
                              (_%g227322227336%_ _%g227323227340%_))))
                      (_%g227322227336%_ _%g227323227340%_)))))
          (_%g227321227377%_ _%$stx227318%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx227381%_)
        (let* ((_%g227385227399%_
                (lambda (_%g227386227395%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227386227395%_))))
               (_%g227384227440%_
                (lambda (_%g227386227403%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227386227403%_))
                      (let ((_%e227388227406%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227386227403%_))))
                        (let ((_%hd227389227410%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227388227406%_)))
                              (_%tl227390227413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227388227406%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227390227413%_))
                              (let ((_%e227391227416%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227390227413%_))))
                                (let ((_%hd227392227420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227391227416%_)))
                                      (_%tl227393227423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227391227416%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227393227423%_))
                                      ((lambda (_%g227387227426%_)
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
                                                           (cons _%g227387227426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227392227420%_)
                                      (_%g227385227399%_ _%g227386227403%_))))
                              (_%g227385227399%_ _%g227386227403%_))))
                      (_%g227385227399%_ _%g227386227403%_)))))
          (_%g227384227440%_ _%$stx227381%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx227444%_)
        (let* ((_%g227448227470%_
                (lambda (_%g227449227466%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227449227466%_))))
               (_%g227447227539%_
                (lambda (_%g227449227474%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227449227474%_))
                      (let ((_%e227453227477%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227449227474%_))))
                        (let ((_%hd227454227481%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227453227477%_)))
                              (_%tl227455227484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227453227477%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227455227484%_))
                              (let ((_%e227456227487%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227455227484%_))))
                                (let ((_%hd227457227491%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227456227487%_)))
                                      (_%tl227458227494%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227456227487%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227458227494%_))
                                      (let ((_%e227459227497%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227458227494%_))))
                                        (let ((_%hd227460227501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227459227497%_)))
                                              (_%tl227461227504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227459227497%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227461227504%_))
                                              (let ((_%e227462227507%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227461227504%_))))
                                                (let ((_%hd227463227511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227462227507%_)))
                                                      (_%tl227464227514%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227462227507%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227464227514%_))
                                                      ((lambda (_%g227450227517%_
                                                                _%g227451227519%_
                                                                _%g227452227520%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227452227520%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g227451227519%_ '()))
                                   (cons _%g227450227517%_ '())))))
               _%hd227463227511%_
               _%hd227460227501%_
               _%hd227457227491%_)
              (_%g227448227470%_ _%g227449227474%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227448227470%_
                                               _%g227449227474%_))))
                                      (_%g227448227470%_ _%g227449227474%_))))
                              (_%g227448227470%_ _%g227449227474%_))))
                      (_%g227448227470%_ _%g227449227474%_)))))
          (_%g227447227539%_ _%$stx227444%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx227543%_)
        (let* ((_%g227547227569%_
                (lambda (_%g227548227565%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227548227565%_))))
               (_%g227546227638%_
                (lambda (_%g227548227573%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227548227573%_))
                      (let ((_%e227552227576%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227548227573%_))))
                        (let ((_%hd227553227580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227552227576%_)))
                              (_%tl227554227583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227552227576%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227554227583%_))
                              (let ((_%e227555227586%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227554227583%_))))
                                (let ((_%hd227556227590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227555227586%_)))
                                      (_%tl227557227593%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227555227586%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227557227593%_))
                                      (let ((_%e227558227596%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227557227593%_))))
                                        (let ((_%hd227559227600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227558227596%_)))
                                              (_%tl227560227603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227558227596%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227560227603%_))
                                              (let ((_%e227561227606%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227560227603%_))))
                                                (let ((_%hd227562227610%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227561227606%_)))
                                                      (_%tl227563227613%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227561227606%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227563227613%_))
                                                      ((lambda (_%g227549227616%_
                                                                _%g227550227618%_
                                                                _%g227551227619%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227551227619%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g227550227618%_ '()))
                                   (cons _%g227549227616%_ '())))))
               _%hd227562227610%_
               _%hd227559227600%_
               _%hd227556227590%_)
              (_%g227547227569%_ _%g227548227573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227547227569%_
                                               _%g227548227573%_))))
                                      (_%g227547227569%_ _%g227548227573%_))))
                              (_%g227547227569%_ _%g227548227573%_))))
                      (_%g227547227569%_ _%g227548227573%_)))))
          (_%g227546227638%_ _%$stx227543%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx227642%_)
        (let* ((_%g227646227660%_
                (lambda (_%g227647227656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227647227656%_))))
               (_%g227645227701%_
                (lambda (_%g227647227664%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227647227664%_))
                      (let ((_%e227649227667%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227647227664%_))))
                        (let ((_%hd227650227671%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227649227667%_)))
                              (_%tl227651227674%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227649227667%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227651227674%_))
                              (let ((_%e227652227677%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227651227674%_))))
                                (let ((_%hd227653227681%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227652227677%_)))
                                      (_%tl227654227684%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227652227677%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227654227684%_))
                                      ((lambda (_%g227648227687%_)
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
                                                           (cons _%g227648227687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227653227681%_)
                                      (_%g227646227660%_ _%g227647227664%_))))
                              (_%g227646227660%_ _%g227647227664%_))))
                      (_%g227646227660%_ _%g227647227664%_)))))
          (_%g227645227701%_ _%$stx227642%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx227705%_)
        (let* ((_%g227709227727%_
                (lambda (_%g227710227723%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227710227723%_))))
               (_%g227708227782%_
                (lambda (_%g227710227731%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227710227731%_))
                      (let ((_%e227713227734%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227710227731%_))))
                        (let ((_%hd227714227738%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227713227734%_)))
                              (_%tl227715227741%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227713227734%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227715227741%_))
                              (let ((_%e227716227744%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227715227741%_))))
                                (let ((_%hd227717227748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227716227744%_)))
                                      (_%tl227718227751%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227716227744%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227718227751%_))
                                      (let ((_%e227719227754%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227718227751%_))))
                                        (let ((_%hd227720227758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227719227754%_)))
                                              (_%tl227721227761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227719227754%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl227721227761%_))
                                              ((lambda (_%g227711227764%_
                                                        _%g227712227766%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g227712227766%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g227711227764%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd227720227758%_
                                               _%hd227717227748%_)
                                              (_%g227709227727%_
                                               _%g227710227731%_))))
                                      (_%g227709227727%_ _%g227710227731%_))))
                              (_%g227709227727%_ _%g227710227731%_))))
                      (_%g227709227727%_ _%g227710227731%_)))))
          (_%g227708227782%_ _%$stx227705%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx227786%_)
        (let* ((_%__stx232102232103%_ _%$stx227786%_)
               (_%g227793227854%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232102232103%_)))))
          (let ((_%__kont232105232106%_
                 (lambda (_%g227795228092%_ _%g227796228094%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227796228094%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227795228092%_ '()))
                                     '())))))
                (_%__kont232107232108%_
                 (lambda (_%g227806228031%_
                          _%g227807228033%_
                          _%g227808228034%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227808228034%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227807228033%_ '()))
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
                                 (cons _%g227806228031%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont232109232110%_
                 (lambda (_%g227825227955%_ _%g227826227957%_)
                   (cons _%g227826227957%_
                         (cons _%g227825227955%_ (cons '#f '())))))
                (_%__kont232111232112%_
                 (lambda (_%g227833227905%_
                          _%g227834227907%_
                          _%g227835227908%_)
                   (cons _%g227835227908%_
                         (cons _%g227834227907%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g227833227905%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232102232103%_))
                (let ((_%e227797228062%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232102232103%_))))
                  (let ((_%tl227799228069%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227797228062%_)))
                        (_%hd227798228066%_
                         (let ()
                           (declare (not safe))
                           (##car _%e227797228062%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl227799228069%_))
                        (let ((_%e227800228072%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl227799228069%_))))
                          (let ((_%tl227802228079%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227800228072%_)))
                                (_%hd227801228076%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227800228072%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl227802228079%_))
                                (let ((_%e227803228082%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl227802228079%_))))
                                  (let ((_%tl227805228089%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227803228082%_)))
                                        (_%hd227804228086%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227803228082%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl227805228089%_))
                                        (_%__kont232105232106%_
                                         _%hd227804228086%_
                                         _%hd227801228076%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl227805228089%_))
                                            (let ((_%e227818228007%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl227805228089%_))))
                                              (let ((_%tl227820228014%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e227818228007%_)))
                                                    (_%hd227819228011%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e227818228007%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd227819228011%_))
                                                    (let ((_%e227821228017%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd227819228011%_))))
                                                      (if (equal? _%e227821228017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227820228014%_))
                      (let ((_%e227822228021%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227820228014%_))))
                        (let ((_%tl227824228028%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227822228021%_)))
                              (_%hd227823228025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227822228021%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl227824228028%_))
                              (_%__kont232107232108%_
                               _%hd227823228025%_
                               _%hd227804228086%_
                               _%hd227801228076%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd227804228086%_))
                                  (let ((_%e227845227891%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd227804228086%_))))
                                    (declare (not safe))
                                    (_%g227793227854%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g227793227854%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd227804228086%_))
                          (let ((_%e227845227891%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd227804228086%_))))
                            (if (equal? _%e227845227891%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227820228014%_))
                                    (_%__kont232111232112%_
                                     _%hd227819228011%_
                                     _%hd227801228076%_
                                     _%hd227798228066%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g227793227854%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g227793227854%_))))
                          (let () (declare (not safe)) (_%g227793227854%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd227804228086%_))
                      (let ((_%e227845227891%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd227804228086%_))))
                        (if (equal? _%e227845227891%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl227820228014%_))
                                (_%__kont232111232112%_
                                 _%hd227819228011%_
                                 _%hd227801228076%_
                                 _%hd227798228066%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g227793227854%_)))
                            (let () (declare (not safe)) (_%g227793227854%_))))
                      (let () (declare (not safe)) (_%g227793227854%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd227804228086%_))
                                                        (let ((_%e227845227891%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd227804228086%_))))
                  (if (equal? _%e227845227891%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl227820228014%_))
                          (_%__kont232111232112%_
                           _%hd227819228011%_
                           _%hd227801228076%_
                           _%hd227798228066%_)
                          (let () (declare (not safe)) (_%g227793227854%_)))
                      (let () (declare (not safe)) (_%g227793227854%_))))
                (let () (declare (not safe)) (_%g227793227854%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd227804228086%_))
                                                (let ((_%e227845227891%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd227804228086%_))))
                                                  (declare (not safe))
                                                  (_%g227793227854%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g227793227854%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227802228079%_))
                                    (_%__kont232109232110%_
                                     _%hd227801228076%_
                                     _%hd227798228066%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g227793227854%_))))))
                        (let () (declare (not safe)) (_%g227793227854%_)))))
                (let () (declare (not safe)) (_%g227793227854%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx228113%_)
        (let* ((_%g228117228146%_
                (lambda (_%g228118228142%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228118228142%_))))
               (_%g228116228251%_
                (lambda (_%g228118228150%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228118228150%_))
                      (let ((_%e228120228153%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228118228150%_))))
                        (let ((_%hd228121228157%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228120228153%_)))
                              (_%tl228122228160%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228120228153%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228122228160%_))
                              (let ((_g232732_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl228122228160%_
                                        '0))))
                                (begin
                                  (let ((_g232733_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232732_)
                                               (##values-length _g232732_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232733_ 2)))
                                        (error "Context expects 2 values"
                                               _g232733_)))
                                  (let ((_%target228123228163%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232732_ 0)))
                                        (_%tl228125228166%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232732_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228125228166%_))
                                        (letrec ((_%loop228126228169%_
                                                  (lambda (_%hd228124228173%_
                                                           _%clause228130228176%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd228124228173%_))
                                                        (let ((_%e228127228178%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd228124228173%_))))
                  (let ((_%lp-hd228128228182%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228127228178%_)))
                        (_%lp-tl228129228185%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228127228178%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd228128228182%_))
                        (let ((_g232734_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd228128228182%_
                                  '0))))
                          (begin
                            (let ((_g232735_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g232734_)
                                         (##values-length _g232734_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g232735_ 2)))
                                  (error "Context expects 2 values"
                                         _g232735_)))
                            (let ((_%target228132228188%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232734_ 0)))
                                  (_%tl228134228191%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232734_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl228134228191%_))
                                  (letrec ((_%loop228135228194%_
                                            (lambda (_%hd228133228198%_
                                                     _%clause228139228201%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd228133228198%_))
                                                  (let ((_%e228136228203%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd228133228198%_))))
                                                    (let ((_%lp-hd228137228207%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e228136228203%_)))
                                                          (_%lp-tl228138228210%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e228136228203%_))))
                                                      (_%loop228135228194%_
                                                       _%lp-tl228138228210%_
                                                       (cons _%lp-hd228137228207%_
                                                             _%clause228139228201%_))))
                                                  (let ((_%clause228140228213%_
                                                         (reverse _%clause228139228201%_)))
                                                    (_%loop228126228169%_
                                                     _%lp-tl228129228185%_
                                                     (cons _%clause228140228213%_
                                                           _%clause228130228176%_)))))))
                                    (_%loop228135228194%_
                                     _%target228132228188%_
                                     '()))
                                  (_%g228117228146%_ _%g228118228150%_)))))
                        (_%g228117228146%_ _%g228118228150%_))))
                (let ((_%clause228131228216%_
                       (reverse _%clause228130228176%_)))
                  ((lambda (_%g228119228219%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp232736
                                              (lambda (_%g228234228239%_
                                                       _%g228235228242%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp232737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g228236228245%_ _%g228237228248%_)
                             (cons _%g228236228245%_ _%g228237228248%_))))
                      (declare (not safe))
                      (__foldr1 __tmp232737 '() _%g228234228239%_)))
              _%g228235228242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp232736
                                          '()
                                          _%g228119228219%_)))
                                 '())))
                   _%clause228131228216%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop228126228169%_
                                           _%target228123228163%_
                                           '()))
                                        (_%g228117228146%_
                                         _%g228118228150%_)))))
                              (_%g228117228146%_ _%g228118228150%_))))
                      (_%g228117228146%_ _%g228118228150%_)))))
          (_%g228116228251%_ _%$stx228113%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx228257%_)
        (let* ((_%g228261228279%_
                (lambda (_%g228262228275%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228262228275%_))))
               (_%g228260228334%_
                (lambda (_%g228262228283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228262228283%_))
                      (let ((_%e228265228286%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228262228283%_))))
                        (let ((_%hd228266228290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228265228286%_)))
                              (_%tl228267228293%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228265228286%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228267228293%_))
                              (let ((_%e228268228296%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228267228293%_))))
                                (let ((_%hd228269228300%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228268228296%_)))
                                      (_%tl228270228303%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228268228296%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228270228303%_))
                                      (let ((_%e228271228306%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228270228303%_))))
                                        (let ((_%hd228272228310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228271228306%_)))
                                              (_%tl228273228313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228271228306%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228273228313%_))
                                              ((lambda (_%g228263228316%_
                                                        _%g228264228318%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g228264228318%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g228263228316%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228272228310%_
                                               _%hd228269228300%_)
                                              (_%g228261228279%_
                                               _%g228262228283%_))))
                                      (_%g228261228279%_ _%g228262228283%_))))
                              (_%g228261228279%_ _%g228262228283%_))))
                      (_%g228261228279%_ _%g228262228283%_)))))
          (_%g228260228334%_ _%$stx228257%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx228338%_)
        (let* ((_%g228342228360%_
                (lambda (_%g228343228356%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228343228356%_))))
               (_%g228341228415%_
                (lambda (_%g228343228364%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228343228364%_))
                      (let ((_%e228346228367%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228343228364%_))))
                        (let ((_%hd228347228371%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228346228367%_)))
                              (_%tl228348228374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228346228367%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228348228374%_))
                              (let ((_%e228349228377%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228348228374%_))))
                                (let ((_%hd228350228381%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228349228377%_)))
                                      (_%tl228351228384%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228349228377%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228351228384%_))
                                      (let ((_%e228352228387%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228351228384%_))))
                                        (let ((_%hd228353228391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228352228387%_)))
                                              (_%tl228354228394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228352228387%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228354228394%_))
                                              ((lambda (_%g228344228397%_
                                                        _%g228345228399%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g228345228399%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g228344228397%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228353228391%_
                                               _%hd228350228381%_)
                                              (_%g228342228360%_
                                               _%g228343228364%_))))
                                      (_%g228342228360%_ _%g228343228364%_))))
                              (_%g228342228360%_ _%g228343228364%_))))
                      (_%g228342228360%_ _%g228343228364%_)))))
          (_%g228341228415%_ _%$stx228338%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx228419%_)
        (let* ((_%g228423228452%_
                (lambda (_%g228424228448%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228424228448%_))))
               (_%g228422228548%_
                (lambda (_%g228424228456%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228424228456%_))
                      (let ((_%e228427228459%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228424228456%_))))
                        (let ((_%hd228428228463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228427228459%_)))
                              (_%tl228429228466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228427228459%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228429228466%_))
                              (let ((_g232738_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl228429228466%_
                                        '0))))
                                (begin
                                  (let ((_g232739_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232738_)
                                               (##values-length _g232738_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232739_ 2)))
                                        (error "Context expects 2 values"
                                               _g232739_)))
                                  (let ((_%target228430228469%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232738_ 0)))
                                        (_%tl228432228472%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232738_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228432228472%_))
                                        (letrec ((_%loop228433228475%_
                                                  (lambda (_%hd228431228479%_
                                                           _%rule228437228482%_
                                                           _%proc228438228483%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd228431228479%_))
                                                        (let ((_%e228434228485%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd228431228479%_))))
                  (let ((_%lp-hd228435228489%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228434228485%_)))
                        (_%lp-tl228436228492%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228434228485%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd228435228489%_))
                        (let ((_%e228441228495%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd228435228489%_))))
                          (let ((_%hd228442228499%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e228441228495%_)))
                                (_%tl228443228502%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e228441228495%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl228443228502%_))
                                (let ((_%e228444228505%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl228443228502%_))))
                                  (let ((_%hd228445228509%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228444228505%_)))
                                        (_%tl228446228512%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228444228505%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228446228512%_))
                                        (_%loop228433228475%_
                                         _%lp-tl228436228492%_
                                         (cons _%hd228445228509%_
                                               _%rule228437228482%_)
                                         (cons _%hd228442228499%_
                                               _%proc228438228483%_))
                                        (_%g228423228452%_
                                         _%g228424228456%_))))
                                (_%g228423228452%_ _%g228424228456%_))))
                        (_%g228423228452%_ _%g228424228456%_))))
                (let ((_%rule228439228515%_ (reverse _%rule228437228482%_))
                      (_%proc228440228517%_ (reverse _%proc228438228483%_)))
                  ((lambda (_%g228425228519%_ _%g228426228521%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g228425228519%_
                                _%g228426228521%_))
                             (let ((__tmp232740
                                    (lambda (_%g228536228540%_
                                             _%g228537228543%_
                                             _%g228538228545%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g228537228543%_
                                                        (cons _%g228536228540%_
                                                              '())))
                                            _%g228538228545%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp232740
                                '()
                                _%g228425228519%_
                                _%g228426228521%_)))))
                   _%rule228439228515%_
                   _%proc228440228517%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop228433228475%_
                                           _%target228430228469%_
                                           '()
                                           '()))
                                        (_%g228423228452%_
                                         _%g228424228456%_)))))
                              (_%g228423228452%_ _%g228424228456%_))))
                      (_%g228423228452%_ _%g228424228456%_)))))
          (_%g228422228548%_ _%$stx228419%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx228553%_)
        (let* ((_%g228557228575%_
                (lambda (_%g228558228571%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228558228571%_))))
               (_%g228556228630%_
                (lambda (_%g228558228579%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228558228579%_))
                      (let ((_%e228561228582%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228558228579%_))))
                        (let ((_%hd228562228586%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228561228582%_)))
                              (_%tl228563228589%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228561228582%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228563228589%_))
                              (let ((_%e228564228592%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228563228589%_))))
                                (let ((_%hd228565228596%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228564228592%_)))
                                      (_%tl228566228599%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228564228592%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228566228599%_))
                                      (let ((_%e228567228602%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228566228599%_))))
                                        (let ((_%hd228568228606%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228567228602%_)))
                                              (_%tl228569228609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228567228602%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228569228609%_))
                                              ((lambda (_%g228559228612%_
                                                        _%g228560228614%_)
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
                                                   (cons _%g228560228614%_
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
                 (cons _%g228559228612%_ '())))
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
                                   (cons _%g228560228614%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228568228606%_
                                               _%hd228565228596%_)
                                              (_%g228557228575%_
                                               _%g228558228579%_))))
                                      (_%g228557228575%_ _%g228558228579%_))))
                              (_%g228557228575%_ _%g228558228579%_))))
                      (_%g228557228575%_ _%g228558228579%_)))))
          (_%g228556228630%_ _%$stx228553%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx228634%_)
        (let* ((_%__stx232220232221%_ _%$stx228634%_)
               (_%g228639228664%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232220232221%_)))))
          (let ((_%__kont232223232224%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont232225232226%_
                 (lambda (_%g228644228711%_
                          _%g228645228713%_
                          _%g228646228714%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g228646228714%_
                                           (cons _%g228645228713%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g228644228711%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232220232221%_))
                (let ((_%e228641228740%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232220232221%_))))
                  (let ((_%tl228643228747%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228641228740%_)))
                        (_%hd228642228744%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228641228740%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl228643228747%_))
                        (_%__kont232223232224%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228643228747%_))
                            (let ((_%e228650228681%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl228643228747%_))))
                              (let ((_%tl228652228688%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228650228681%_)))
                                    (_%hd228651228685%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228650228681%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd228651228685%_))
                                    (let ((_%e228653228691%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd228651228685%_))))
                                      (let ((_%tl228655228698%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e228653228691%_)))
                                            (_%hd228654228695%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e228653228691%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl228655228698%_))
                                            (let ((_%e228656228701%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl228655228698%_))))
                                              (let ((_%tl228658228708%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e228656228701%_)))
                                                    (_%hd228657228705%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e228656228701%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl228658228708%_))
                                                    (_%__kont232225232226%_
                                                     _%tl228652228688%_
                                                     _%hd228657228705%_
                                                     _%hd228654228695%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g228639228664%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g228639228664%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g228639228664%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g228639228664%_))))))
                (let () (declare (not safe)) (_%g228639228664%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx228758%_)
        (let* ((_%__stx232264232265%_ _%$stx228758%_)
               (_%g228763228794%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232264232265%_)))))
          (let ((_%__kont232267232268%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont232269232270%_
                 (lambda (_%g228768228859%_
                          _%g228769228861%_
                          _%g228770228862%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g228770228862%_
                                           (let ((__tmp232741
                                                  (lambda (_%g228882228885%_
                                                           _%g228883228888%_)
                                                    (cons _%g228882228885%_
                                                          _%g228883228888%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp232741
                                              '()
                                              _%g228769228861%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g228768228859%_)
                                     '()))))))
            (let ((_%__match232307232308%_
                   (lambda (_%e228771228801%_
                            _%hd228772228805%_
                            _%tl228773228808%_
                            _%e228774228811%_
                            _%hd228775228815%_
                            _%tl228776228818%_
                            _%e228777228821%_
                            _%hd228778228825%_
                            _%tl228779228828%_
                            _%__splice232271232272%_
                            _%target228780228831%_
                            _%tl228782228834%_)
                     (letrec ((_%loop228783228837%_
                               (lambda (_%hd228781228841%_ _%sig228787228844%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd228781228841%_))
                                     (let ((_%e228784228846%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd228781228841%_))))
                                       (let ((_%lp-tl228786228853%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e228784228846%_)))
                                             (_%lp-hd228785228850%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e228784228846%_))))
                                         (_%loop228783228837%_
                                          _%lp-tl228786228853%_
                                          (cons _%lp-hd228785228850%_
                                                _%sig228787228844%_))))
                                     (let ((_%sig228788228856%_
                                            (reverse _%sig228787228844%_)))
                                       (_%__kont232269232270%_
                                        _%tl228776228818%_
                                        _%sig228788228856%_
                                        _%hd228778228825%_))))))
                       (_%loop228783228837%_ _%target228780228831%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232264232265%_))
                  (let ((_%e228765228898%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232264232265%_))))
                    (let ((_%tl228767228905%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e228765228898%_)))
                          (_%hd228766228902%_
                           (let ()
                             (declare (not safe))
                             (##car _%e228765228898%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228767228905%_))
                          (_%__kont232267232268%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228767228905%_))
                              (let ((_%e228774228811%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228767228905%_))))
                                (let ((_%tl228776228818%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228774228811%_)))
                                      (_%hd228775228815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228774228811%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd228775228815%_))
                                      (let ((_%e228777228821%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd228775228815%_))))
                                        (let ((_%tl228779228828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228777228821%_)))
                                              (_%hd228778228825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228777228821%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl228779228828%_))
                                              (let ((_%__splice232271232272%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl228779228828%_
                                                        '0))))
                                                (let ((_%tl228782228834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232271232272%_
                                                          '1)))
                                                      (_%target228780228831%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232271232272%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl228782228834%_))
                                                      (_%__match232307232308%_
                                                       _%e228765228898%_
                                                       _%hd228766228902%_
                                                       _%tl228767228905%_
                                                       _%e228774228811%_
                                                       _%hd228775228815%_
                                                       _%tl228776228818%_
                                                       _%e228777228821%_
                                                       _%hd228778228825%_
                                                       _%tl228779228828%_
                                                       _%__splice232271232272%_
                                                       _%target228780228831%_
                                                       _%tl228782228834%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g228763228794%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g228763228794%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g228763228794%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g228763228794%_))))))
                  (let () (declare (not safe)) (_%g228763228794%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx228917%_)
        (let* ((_%__stx232310232311%_ _%$stx228917%_)
               (_%g228922228969%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232310232311%_)))))
          (let ((_%__kont232313232314%_
                 (lambda (_%g228924229127%_ _%g228925229129%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g228925229129%_
                               (let ((__tmp232742
                                      (lambda (_%g229149229152%_
                                               _%g229150229155%_)
                                        (cons _%g229149229152%_
                                              _%g229150229155%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp232742
                                  '()
                                  _%g228924229127%_))))))
                (_%__kont232317232318%_
                 (lambda (_%g228947229024%_ _%g228948229026%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g228948229026%_
                               (let ((__tmp232743
                                      (lambda (_%g229043229046%_
                                               _%g229044229049%_)
                                        (cons _%g229043229046%_
                                              _%g229044229049%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp232743
                                  '()
                                  _%g228947229024%_)))))))
            (let* ((_%__match232377232378%_
                    (lambda (_%e228949228976%_
                             _%hd228950228980%_
                             _%tl228951228983%_
                             _%e228952228986%_
                             _%hd228953228990%_
                             _%tl228954228993%_
                             _%__splice232319232320%_
                             _%target228955228996%_
                             _%tl228957228999%_)
                      (letrec ((_%loop228958229002%_
                                (lambda (_%hd228956229006%_
                                         _%sig228962229009%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd228956229006%_))
                                      (let ((_%e228959229011%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd228956229006%_))))
                                        (let ((_%lp-tl228961229018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228959229011%_)))
                                              (_%lp-hd228960229015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228959229011%_))))
                                          (_%loop228958229002%_
                                           _%lp-tl228961229018%_
                                           (cons _%lp-hd228960229015%_
                                                 _%sig228962229009%_))))
                                      (let ((_%sig228963229021%_
                                             (reverse _%sig228962229009%_)))
                                        (_%__kont232317232318%_
                                         _%sig228963229021%_
                                         _%hd228953228990%_))))))
                        (_%loop228958229002%_ _%target228955228996%_ '()))))
                   (_%__match232369232370%_
                    (lambda (_%e228949228976%_
                             _%hd228950228980%_
                             _%tl228951228983%_
                             _%e228952228986%_
                             _%hd228953228990%_
                             _%tl228954228993%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl228954228993%_))
                          (let ((_%__splice232319232320%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl228954228993%_
                                    '0))))
                            (let ((_%tl228957228999%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice232319232320%_
                                      '1)))
                                  (_%target228955228996%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice232319232320%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl228957228999%_))
                                  (_%__match232377232378%_
                                   _%e228949228976%_
                                   _%hd228950228980%_
                                   _%tl228951228983%_
                                   _%e228952228986%_
                                   _%hd228953228990%_
                                   _%tl228954228993%_
                                   _%__splice232319232320%_
                                   _%target228955228996%_
                                   _%tl228957228999%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g228922228969%_)))))
                          (let () (declare (not safe)) (_%g228922228969%_)))))
                   (_%__match232357232358%_
                    (lambda (_%e228926229059%_
                             _%hd228927229063%_
                             _%tl228928229066%_
                             _%e228929229069%_
                             _%hd228930229073%_
                             _%tl228931229076%_
                             _%e228932229079%_
                             _%hd228933229083%_
                             _%tl228934229086%_
                             _%e228935229089%_
                             _%hd228936229093%_
                             _%tl228937229096%_
                             _%__splice232315232316%_
                             _%target228938229099%_
                             _%tl228940229102%_)
                      (letrec ((_%loop228941229105%_
                                (lambda (_%hd228939229109%_
                                         _%sig228945229112%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd228939229109%_))
                                      (let ((_%e228942229114%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd228939229109%_))))
                                        (let ((_%lp-tl228944229121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228942229114%_)))
                                              (_%lp-hd228943229118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228942229114%_))))
                                          (_%loop228941229105%_
                                           _%lp-tl228944229121%_
                                           (cons _%lp-hd228943229118%_
                                                 _%sig228945229112%_))))
                                      (let ((_%sig228946229124%_
                                             (reverse _%sig228945229112%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl228934229086%_))
                                            (_%__kont232313232314%_
                                             _%sig228946229124%_
                                             _%hd228930229073%_)
                                            (_%__match232369232370%_
                                             _%e228926229059%_
                                             _%hd228927229063%_
                                             _%tl228928229066%_
                                             _%e228929229069%_
                                             _%hd228930229073%_
                                             _%tl228931229076%_)))))))
                        (_%loop228941229105%_ _%target228938229099%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232310232311%_))
                  (let ((_%e228926229059%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232310232311%_))))
                    (let ((_%tl228928229066%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e228926229059%_)))
                          (_%hd228927229063%_
                           (let ()
                             (declare (not safe))
                             (##car _%e228926229059%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl228928229066%_))
                          (let ((_%e228929229069%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl228928229066%_))))
                            (let ((_%tl228931229076%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e228929229069%_)))
                                  (_%hd228930229073%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e228929229069%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl228931229076%_))
                                  (let ((_%e228932229079%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl228931229076%_))))
                                    (let ((_%tl228934229086%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e228932229079%_)))
                                          (_%hd228933229083%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e228932229079%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd228933229083%_))
                                          (let ((_%e228935229089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd228933229083%_))))
                                            (let ((_%tl228937229096%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e228935229089%_)))
                                                  (_%hd228936229093%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e228935229089%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd228936229093%_))
                                                  (if (let ((__tmp232744
                                                             |gxc[1]#_g232745_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp232744
                                                         _%hd228936229093%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl228937229096%_))
                                                          (let ((_%__splice232315232316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl228937229096%_
                            '0))))
                    (let ((_%tl228940229102%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232315232316%_ '1)))
                          (_%target228938229099%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232315232316%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228940229102%_))
                          (_%__match232357232358%_
                           _%e228926229059%_
                           _%hd228927229063%_
                           _%tl228928229066%_
                           _%e228929229069%_
                           _%hd228930229073%_
                           _%tl228931229076%_
                           _%e228932229079%_
                           _%hd228933229083%_
                           _%tl228934229086%_
                           _%e228935229089%_
                           _%hd228936229093%_
                           _%tl228937229096%_
                           _%__splice232315232316%_
                           _%target228938229099%_
                           _%tl228940229102%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228931229076%_))
                              (let ((_%__splice232319232320%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl228931229076%_
                                        '0))))
                                (let ((_%tl228957228999%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice232319232320%_
                                          '1)))
                                      (_%target228955228996%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice232319232320%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl228957228999%_))
                                      (_%__match232377232378%_
                                       _%e228926229059%_
                                       _%hd228927229063%_
                                       _%tl228928229066%_
                                       _%e228929229069%_
                                       _%hd228930229073%_
                                       _%tl228931229076%_
                                       _%__splice232319232320%_
                                       _%target228955228996%_
                                       _%tl228957228999%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g228922228969%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g228922228969%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl228931229076%_))
                      (let ((_%__splice232319232320%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl228931229076%_
                                '0))))
                        (let ((_%tl228957228999%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice232319232320%_ '1)))
                              (_%target228955228996%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice232319232320%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl228957228999%_))
                              (_%__match232377232378%_
                               _%e228926229059%_
                               _%hd228927229063%_
                               _%tl228928229066%_
                               _%e228929229069%_
                               _%hd228930229073%_
                               _%tl228931229076%_
                               _%__splice232319232320%_
                               _%target228955228996%_
                               _%tl228957228999%_)
                              (let ()
                                (declare (not safe))
                                (_%g228922228969%_)))))
                      (let () (declare (not safe)) (_%g228922228969%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl228931229076%_))
                  (let ((_%__splice232319232320%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl228931229076%_
                            '0))))
                    (let ((_%tl228957228999%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232319232320%_ '1)))
                          (_%target228955228996%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232319232320%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228957228999%_))
                          (_%__match232377232378%_
                           _%e228926229059%_
                           _%hd228927229063%_
                           _%tl228928229066%_
                           _%e228929229069%_
                           _%hd228930229073%_
                           _%tl228931229076%_
                           _%__splice232319232320%_
                           _%target228955228996%_
                           _%tl228957228999%_)
                          (let () (declare (not safe)) (_%g228922228969%_)))))
                  (let () (declare (not safe)) (_%g228922228969%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl228931229076%_))
                                                      (let ((_%__splice232319232320%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl228931229076%_
                        '0))))
                (let ((_%tl228957228999%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232319232320%_ '1)))
                      (_%target228955228996%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232319232320%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl228957228999%_))
                      (_%__match232377232378%_
                       _%e228926229059%_
                       _%hd228927229063%_
                       _%tl228928229066%_
                       _%e228929229069%_
                       _%hd228930229073%_
                       _%tl228931229076%_
                       _%__splice232319232320%_
                       _%target228955228996%_
                       _%tl228957228999%_)
                      (let () (declare (not safe)) (_%g228922228969%_)))))
              (let () (declare (not safe)) (_%g228922228969%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl228931229076%_))
                                              (let ((_%__splice232319232320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl228931229076%_
                                                        '0))))
                                                (let ((_%tl228957228999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232319232320%_
                                                          '1)))
                                                      (_%target228955228996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232319232320%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl228957228999%_))
                                                      (_%__match232377232378%_
                                                       _%e228926229059%_
                                                       _%hd228927229063%_
                                                       _%tl228928229066%_
                                                       _%e228929229069%_
                                                       _%hd228930229073%_
                                                       _%tl228931229076%_
                                                       _%__splice232319232320%_
                                                       _%target228955228996%_
                                                       _%tl228957228999%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g228922228969%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g228922228969%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl228931229076%_))
                                      (let ((_%__splice232319232320%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl228931229076%_
                                                '0))))
                                        (let ((_%tl228957228999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232319232320%_
                                                  '1)))
                                              (_%target228955228996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232319232320%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228957228999%_))
                                              (_%__match232377232378%_
                                               _%e228926229059%_
                                               _%hd228927229063%_
                                               _%tl228928229066%_
                                               _%e228929229069%_
                                               _%hd228930229073%_
                                               _%tl228931229076%_
                                               _%__splice232319232320%_
                                               _%target228955228996%_
                                               _%tl228957228999%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g228922228969%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g228922228969%_))))))
                          (let () (declare (not safe)) (_%g228922228969%_)))))
                  (let () (declare (not safe)) (_%g228922228969%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx230312%_ _%id230314%_)
        (let ((_%proc230318%_
               (let ((__tmp232746
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id230314%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp232746))))
          (if (procedure? _%proc230318%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx230312%_
                 _%id230314%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx230303%_ _%id230305%_)
        (let ((_%klass230309%_
               (let ((__tmp232747
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id230305%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp232747))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass230309%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx230303%_
                 _%id230305%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx229553%_ _%proc229555%_ _%sig229556%_)
        (letrec ((_%signature-arity229558%_
                  (lambda (_%args230235%_)
                    (let _%loop230238%_ ((_%rest230241%_ _%args230235%_)
                                         (_%count230243%_ '0))
                      (let* ((_%rest230244230255%_ _%rest230241%_)
                             (_%E230248230261%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest230244230255%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K230251230292%_
                               (lambda (_%rest230289%_)
                                 (_%loop230238%_
                                  _%rest230289%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count230243%_ '1)))))
                              (_%K230250230281%_ (lambda () _%count230243%_))
                              (_%K230249230269%_
                               (lambda () (cons _%count230243%_ '()))))
                          (let ((_%try-match230246230285%_
                                 (lambda ()
                                   (if (null? _%rest230244230255%_)
                                       (_%K230250230281%_)
                                       (_%K230249230269%_)))))
                            (if (pair? _%rest230244230255%_)
                                (let* ((_%tl230253230296%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest230244230255%_)))
                                       (_%rest230300%_ _%tl230253230296%_))
                                  (_%K230251230292%_ _%rest230300%_))
                                (_%try-match230246230285%_))))))))
                 (_%make-signature229560%_
                  (lambda (_%args230117%_
                           _%return230119%_
                           _%effect230120%_
                           _%unchecked230121%_)
                    (let ((__tmp232748
                           (lambda (_%g230122230124%_)
                             (|gxc[1]#verify-class!|
                              _%ctx229553%_
                              _%g230122230124%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp232748 _%args230117%_))
                    (|gxc[1]#verify-class!| _%ctx229553%_ _%return230119%_)
                    (if _%unchecked230121%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx229553%_
                         _%unchecked230121%_)
                        '#!void)
                    (let ((_%arity230128%_
                           (_%signature-arity229558%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args230117%_)))))
                      (if _%effect230120%_
                          (let ((_%effect230131%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect230120%_))))
                            (if (and (list? _%effect230131%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect230131%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx229553%_
                                   _%proc229555%_
                                   _%effect230131%_))))
                          '#!void)
                      (cons _%arity230128%_
                            (cons (let* ((_%g230134230157%_
                                          (lambda (_%g230135230153%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g230135230153%_))))
                                         (_%g230133230231%_
                                          (lambda (_%g230135230161%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g230135230161%_))
                                                (let ((_%e230140230164%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g230135230161%_))))
                                                  (let ((_%hd230141230168%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230140230164%_)))
                                                        (_%tl230142230171%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230140230164%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl230142230171%_))
                                                        (let ((_%e230143230174%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl230142230171%_))))
                  (let ((_%hd230144230178%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230143230174%_)))
                        (_%tl230145230181%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230143230174%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl230145230181%_))
                        (let ((_%e230146230184%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl230145230181%_))))
                          (let ((_%hd230147230188%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230146230184%_)))
                                (_%tl230148230191%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230146230184%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl230148230191%_))
                                (let ((_%e230149230194%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl230148230191%_))))
                                  (let ((_%hd230150230198%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230149230194%_)))
                                        (_%tl230151230201%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230149230194%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl230151230201%_))
                                        ((lambda (_%g230136230204%_
                                                  _%g230137230206%_
                                                  _%g230138230207%_
                                                  _%g230139230208%_)
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
                           (cons _%g230139230208%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g230138230207%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g230137230206%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g230136230204%_ '()))
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
                                         _%hd230150230198%_
                                         _%hd230147230188%_
                                         _%hd230144230178%_
                                         _%hd230141230168%_)
                                        (_%g230134230157%_
                                         _%g230135230161%_))))
                                (_%g230134230157%_ _%g230135230161%_))))
                        (_%g230134230157%_ _%g230135230161%_))))
                (_%g230134230157%_ _%g230135230161%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230134230157%_
                                                 _%g230135230161%_)))))
                                    (_%g230133230231%_
                                     (list _%args230117%_
                                           _%return230119%_
                                           _%effect230120%_
                                           _%unchecked230121%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx229553%_ _%proc229555%_)
          (let* ((_%__stx232388232389%_ _%sig229556%_)
                 (_%g229567229670%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx232388232389%_)))))
            (let ((_%__kont232391232392%_
                   (lambda (_%g229569230098%_ _%g229570230100%_)
                     (_%make-signature229560%_
                      _%g229570230100%_
                      _%g229569230098%_
                      '#f
                      '#f)))
                  (_%__kont232393232394%_
                   (lambda (_%g229577230049%_
                            _%g229578230051%_
                            _%g229579230052%_)
                     (_%make-signature229560%_
                      _%g229579230052%_
                      _%g229578230051%_
                      _%g229577230049%_
                      '#f)))
                  (_%__kont232395232396%_
                   (lambda (_%g229593229973%_
                            _%g229594229975%_
                            _%g229595229976%_)
                     (_%make-signature229560%_
                      _%g229595229976%_
                      _%g229594229975%_
                      _%g229593229973%_
                      (let ((__tmp232749
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc229555%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp232749)))))
                  (_%__kont232397232398%_
                   (lambda (_%g229613229879%_
                            _%g229614229881%_
                            _%g229615229882%_
                            _%g229616229883%_)
                     (_%make-signature229560%_
                      _%g229616229883%_
                      _%g229615229882%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g229613229879%_)))))
                  (_%__kont232399232400%_
                   (lambda (_%g229637229786%_ _%g229638229788%_)
                     (_%make-signature229560%_
                      _%g229638229788%_
                      _%g229637229786%_
                      '#f
                      (let ((__tmp232750
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc229555%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp232750)))))
                  (_%__kont232401232402%_
                   (lambda (_%g229649229721%_
                            _%g229650229723%_
                            _%g229651229724%_)
                     (_%make-signature229560%_
                      _%g229651229724%_
                      _%g229650229723%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g229649229721%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232388232389%_))
                  (let ((_%e229571230078%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232388232389%_))))
                    (let ((_%tl229573230085%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229571230078%_)))
                          (_%hd229572230082%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229571230078%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229573230085%_))
                          (let ((_%e229574230088%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl229573230085%_))))
                            (let ((_%tl229576230095%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229574230088%_)))
                                  (_%hd229575230092%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229574230088%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229576230095%_))
                                  (_%__kont232391232392%_
                                   _%hd229575230092%_
                                   _%hd229572230082%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl229576230095%_))
                                      (let ((_%e229586230025%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl229576230095%_))))
                                        (let ((_%tl229588230032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229586230025%_)))
                                              (_%hd229587230029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229586230025%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd229587230029%_))
                                              (let ((_%e229589230035%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd229587230029%_))))
                                                (if (equal? _%e229589230035%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl229588230032%_))
                                                        (let ((_%e229590230039%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl229588230032%_))))
                  (let ((_%tl229592230046%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229590230039%_)))
                        (_%hd229591230043%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229590230039%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl229592230046%_))
                        (_%__kont232393232394%_
                         _%hd229591230043%_
                         _%hd229575230092%_
                         _%hd229572230082%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229592230046%_))
                            (let ((_%e229609229959%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl229592230046%_))))
                              (let ((_%tl229611229966%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229609229959%_)))
                                    (_%hd229610229963%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229609229959%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd229610229963%_))
                                    (let ((_%e229612229969%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229610229963%_))))
                                      (if (equal? _%e229612229969%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229611229966%_))
                                              (_%__kont232395232396%_
                                               _%hd229591230043%_
                                               _%hd229575230092%_
                                               _%hd229572230082%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229611229966%_))
                                                  (let ((_%e229634229869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl229611229966%_))))
                                                    (let ((_%tl229636229876%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229634229869%_)))
                                                          (_%hd229635229873%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229634229869%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl229636229876%_))
                                                          (_%__kont232397232398%_
                                                           _%hd229635229873%_
                                                           _%hd229591230043%_
                                                           _%hd229575230092%_
                                                           _%hd229572230082%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g229567229670%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g229567229670%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g229567229670%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g229567229670%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g229567229670%_))))))
                (let () (declare (not safe)) (_%g229567229670%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e229589230035%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl229588230032%_))
                                                            (_%__kont232399232400%_
                                                             _%hd229575230092%_
                                                             _%hd229572230082%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl229588230032%_))
                        (let ((_%e229662229711%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl229588230032%_))))
                          (let ((_%tl229664229718%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229662229711%_)))
                                (_%hd229663229715%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229662229711%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl229664229718%_))
                                (_%__kont232401232402%_
                                 _%hd229663229715%_
                                 _%hd229575230092%_
                                 _%hd229572230082%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g229567229670%_)))))
                        (let () (declare (not safe)) (_%g229567229670%_))))
                (let () (declare (not safe)) (_%g229567229670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g229567229670%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g229567229670%_))))))
                          (let () (declare (not safe)) (_%g229567229670%_)))))
                  (let () (declare (not safe)) (_%g229567229670%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig229164%_)
        (let* ((_%g229167229247%_
                (lambda (_%g229168229243%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g229168229243%_))))
               (_%g229166229549%_
                (lambda (_%g229168229251%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g229168229251%_))
                      (let ((_%e229174229254%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g229168229251%_))))
                        (let ((_%hd229175229258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229174229254%_)))
                              (_%tl229176229261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229174229254%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl229176229261%_))
                              (let ((_%e229177229264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl229176229261%_))))
                                (let ((_%hd229178229268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229177229264%_)))
                                      (_%tl229179229271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229177229264%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd229178229268%_))
                                      (let ((_%e229180229274%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd229178229268%_))))
                                        (if (equal? _%e229180229274%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229179229271%_))
                                                (let ((_%e229181229278%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl229179229271%_))))
                                                  (let ((_%hd229182229282%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229181229278%_)))
                                                        (_%tl229183229285%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229181229278%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd229182229282%_))
                                                        (let ((_%e229184229288%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd229182229282%_))))
                  (let ((_%hd229185229292%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229184229288%_)))
                        (_%tl229186229295%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229184229288%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd229185229292%_))
                        (if (let ((__tmp232751 |gxc[1]#_g232752_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp232751
                               _%hd229185229292%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229186229295%_))
                                (let ((_%e229187229298%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl229186229295%_))))
                                  (let ((_%hd229188229302%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229187229298%_)))
                                        (_%tl229189229305%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229187229298%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229189229305%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229183229285%_))
                                            (let ((_%e229190229308%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl229183229285%_))))
                                              (let ((_%hd229191229312%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229190229308%_)))
                                                    (_%tl229192229315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229190229308%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd229191229312%_))
                                                    (let ((_%e229193229318%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd229191229312%_))))
                                                      (if (equal? _%e229193229318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl229192229315%_))
                      (let ((_%e229194229322%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl229192229315%_))))
                        (let ((_%hd229195229326%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229194229322%_)))
                              (_%tl229196229329%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229194229322%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd229195229326%_))
                              (let ((_%e229197229332%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd229195229326%_))))
                                (let ((_%hd229198229336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229197229332%_)))
                                      (_%tl229199229339%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229197229332%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd229198229336%_))
                                      (if (let ((__tmp232753
                                                 |gxc[1]#_g232754_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp232753
                                             _%hd229198229336%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229199229339%_))
                                              (let ((_%e229200229342%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl229199229339%_))))
                                                (let ((_%hd229201229346%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229200229342%_)))
                                                      (_%tl229202229349%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229200229342%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl229202229349%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl229196229329%_))
                                                          (let ((_%e229203229352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl229196229329%_))))
                    (let ((_%hd229204229356%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229203229352%_)))
                          (_%tl229205229359%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229203229352%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd229204229356%_))
                          (let ((_%e229206229362%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd229204229356%_))))
                            (if (equal? _%e229206229362%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl229205229359%_))
                                    (let ((_%e229207229366%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl229205229359%_))))
                                      (let ((_%hd229208229370%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229207229366%_)))
                                            (_%tl229209229373%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229207229366%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd229208229370%_))
                                            (let ((_%e229210229376%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd229208229370%_))))
                                              (let ((_%hd229211229380%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229210229376%_)))
                                                    (_%tl229212229383%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229210229376%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd229211229380%_))
                                                    (if (let ((__tmp232755
                                                               |gxc[1]#_g232756_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp232755
                                                           _%hd229211229380%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229212229383%_))
                                                            (let ((_%e229213229386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl229212229383%_))))
                      (let ((_%hd229214229390%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229213229386%_)))
                            (_%tl229215229393%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229213229386%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229215229393%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229209229373%_))
                                (let ((_%e229216229396%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl229209229373%_))))
                                  (let ((_%hd229217229400%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229216229396%_)))
                                        (_%tl229218229403%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229216229396%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd229217229400%_))
                                        (let ((_%e229219229406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229217229400%_))))
                                          (if (equal? _%e229219229406%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229218229403%_))
                                                  (let ((_%e229220229410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl229218229403%_))))
                                                    (let ((_%hd229221229414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229220229410%_)))
                                                          (_%tl229222229417%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229220229410%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd229221229414%_))
                                                          (let ((_%e229223229420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd229221229414%_))))
                    (let ((_%hd229224229424%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229223229420%_)))
                          (_%tl229225229427%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229223229420%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd229224229424%_))
                          (if (let ((__tmp232757 |gxc[1]#_g232758_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp232757
                                 _%hd229224229424%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl229225229427%_))
                                  (let ((_%e229226229430%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl229225229427%_))))
                                    (let ((_%hd229227229434%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e229226229430%_)))
                                          (_%tl229228229437%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e229226229430%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl229228229437%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229222229417%_))
                                              (let ((_%e229229229440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl229222229417%_))))
                                                (let ((_%hd229230229444%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229229229440%_)))
                                                      (_%tl229231229447%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229229229440%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd229230229444%_))
                                                      (let ((_%e229232229450%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd229230229444%_))))
                (if (equal? _%e229232229450%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229231229447%_))
                        (let ((_%e229233229454%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl229231229447%_))))
                          (let ((_%hd229234229458%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229233229454%_)))
                                (_%tl229235229461%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229233229454%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229234229458%_))
                                (let ((_%e229236229464%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd229234229458%_))))
                                  (let ((_%hd229237229468%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229236229464%_)))
                                        (_%tl229238229471%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229236229464%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd229237229468%_))
                                        (if (let ((__tmp232759
                                                   |gxc[1]#_g232760_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp232759
                                               _%hd229237229468%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229238229471%_))
                                                (let ((_%e229239229474%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl229238229471%_))))
                                                  (let ((_%hd229240229478%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229239229474%_)))
                                                        (_%tl229241229481%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229239229474%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229241229481%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl229235229461%_))
                                                            ((lambda (_%g229169229484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229170229486%_
                              _%g229171229487%_
                              _%g229172229488%_
                              _%g229173229489%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g229170229486%_))
                           (cons _%g229170229486%_
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
                       (cons _%g229172229488%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g229169229484%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd229240229478%_
                     _%hd229227229434%_
                     _%hd229214229390%_
                     _%hd229201229346%_
                     _%hd229188229302%_)
                    (_%g229167229247%_ _%g229168229251%_))
                (_%g229167229247%_ _%g229168229251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g229167229247%_
                                                 _%g229168229251%_))
                                            (_%g229167229247%_
                                             _%g229168229251%_))
                                        (_%g229167229247%_
                                         _%g229168229251%_))))
                                (_%g229167229247%_ _%g229168229251%_))))
                        (_%g229167229247%_ _%g229168229251%_))
                    (_%g229167229247%_ _%g229168229251%_)))
              (_%g229167229247%_ _%g229168229251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g229167229247%_
                                               _%g229168229251%_))
                                          (_%g229167229247%_
                                           _%g229168229251%_))))
                                  (_%g229167229247%_ _%g229168229251%_))
                              (_%g229167229247%_ _%g229168229251%_))
                          (_%g229167229247%_ _%g229168229251%_))))
                  (_%g229167229247%_ _%g229168229251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g229167229247%_
                                                   _%g229168229251%_))
                                              (_%g229167229247%_
                                               _%g229168229251%_)))
                                        (_%g229167229247%_
                                         _%g229168229251%_))))
                                (_%g229167229247%_ _%g229168229251%_))
                            (_%g229167229247%_ _%g229168229251%_))))
                    (_%g229167229247%_ _%g229168229251%_))
                (_%g229167229247%_ _%g229168229251%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229167229247%_
                                                     _%g229168229251%_))))
                                            (_%g229167229247%_
                                             _%g229168229251%_))))
                                    (_%g229167229247%_ _%g229168229251%_))
                                (_%g229167229247%_ _%g229168229251%_)))
                          (_%g229167229247%_ _%g229168229251%_))))
                  (_%g229167229247%_ _%g229168229251%_))
              (_%g229167229247%_ _%g229168229251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g229167229247%_
                                               _%g229168229251%_))
                                          (_%g229167229247%_
                                           _%g229168229251%_))
                                      (_%g229167229247%_ _%g229168229251%_))))
                              (_%g229167229247%_ _%g229168229251%_))))
                      (_%g229167229247%_ _%g229168229251%_))
                  (_%g229167229247%_ _%g229168229251%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229167229247%_
                                                     _%g229168229251%_))))
                                            (_%g229167229247%_
                                             _%g229168229251%_))
                                        (_%g229167229247%_
                                         _%g229168229251%_))))
                                (_%g229167229247%_ _%g229168229251%_))
                            (_%g229167229247%_ _%g229168229251%_))
                        (_%g229167229247%_ _%g229168229251%_))))
                (_%g229167229247%_ _%g229168229251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g229167229247%_
                                                 _%g229168229251%_))
                                            (_%g229167229247%_
                                             _%g229168229251%_)))
                                      (_%g229167229247%_ _%g229168229251%_))))
                              (_%g229167229247%_ _%g229168229251%_))))
                      (_%g229167229247%_ _%g229168229251%_)))))
          (_%g229166229549%_ _%sig229164%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx230321%_)
        (let* ((_%g230324230342%_
                (lambda (_%g230325230338%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230325230338%_))))
               (_%g230323230397%_
                (lambda (_%g230325230346%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230325230346%_))
                      (let ((_%e230328230349%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230325230346%_))))
                        (let ((_%hd230329230353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230328230349%_)))
                              (_%tl230330230356%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230328230349%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230330230356%_))
                              (let ((_%e230331230359%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230330230356%_))))
                                (let ((_%hd230332230363%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230331230359%_)))
                                      (_%tl230333230366%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230331230359%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl230333230366%_))
                                      (let ((_%e230334230369%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl230333230366%_))))
                                        (let ((_%hd230335230373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230334230369%_)))
                                              (_%tl230336230376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230334230369%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl230336230376%_))
                                              ((lambda (_%g230326230379%_
                                                        _%g230327230381%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g230327230381%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g230326230379%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx230321%_
                                                        _%g230327230381%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx230321%_
                                                        _%g230326230379%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g230327230381%_
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
                                                   (cons _%g230326230379%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g230324230342%_
                                                      _%g230325230346%_)))
                                               _%hd230335230373%_
                                               _%hd230332230363%_)
                                              (_%g230324230342%_
                                               _%g230325230346%_))))
                                      (_%g230324230342%_ _%g230325230346%_))))
                              (_%g230324230342%_ _%g230325230346%_))))
                      (_%g230324230342%_ _%g230325230346%_)))))
          (_%g230323230397%_ _%stx230321%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx230401%_)
        (let* ((_%g230404230428%_
                (lambda (_%g230405230424%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230405230424%_))))
               (_%g230403230709%_
                (lambda (_%g230405230432%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230405230432%_))
                      (let ((_%e230408230435%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230405230432%_))))
                        (let ((_%hd230409230439%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230408230435%_)))
                              (_%tl230410230442%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230408230435%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230410230442%_))
                              (let ((_%e230411230445%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230410230442%_))))
                                (let ((_%hd230412230449%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230411230445%_)))
                                      (_%tl230413230452%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230411230445%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230413230452%_))
                                      (let ((_g232761_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl230413230452%_
                                                '0))))
                                        (begin
                                          (let ((_g232762_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232761_)
                                                       (##values-length
                                                        _g232761_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232762_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232762_)))
                                          (let ((_%target230414230455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232761_ 0)))
                                                (_%tl230416230458%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232761_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230416230458%_))
                                                (letrec ((_%loop230417230461%_
                                                          (lambda (_%hd230415230465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature230421230468%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd230415230465%_))
                        (let ((_%e230418230470%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd230415230465%_))))
                          (let ((_%lp-hd230419230474%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230418230470%_)))
                                (_%lp-tl230420230477%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230418230470%_))))
                            (_%loop230417230461%_
                             _%lp-tl230420230477%_
                             (cons _%lp-hd230419230474%_
                                   _%signature230421230468%_))))
                        (let ((_%signature230422230480%_
                               (reverse _%signature230421230468%_)))
                          ((lambda (_%g230406230483%_ _%g230407230485%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g230407230485%_))
                                 (let* ((_%g230503230518%_
                                         (lambda (_%g230504230514%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g230504230514%_))))
                                        (_%g230502230697%_
                                         (lambda (_%g230504230522%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g230504230522%_))
                                               (let ((_%e230507230525%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g230504230522%_))))
                                                 (let ((_%hd230508230529%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e230507230525%_)))
                                                       (_%tl230509230532%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e230507230525%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl230509230532%_))
                                                       (let ((_%e230510230535%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl230509230532%_))))
                 (let ((_%hd230511230539%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230510230535%_)))
                       (_%tl230512230542%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230510230535%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl230512230542%_))
                       ((lambda (_%g230505230545%_ _%g230506230547%_)
                          (let* ((_%g230563230571%_
                                  (lambda (_%g230564230567%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g230564230567%_))))
                                 (_%g230562230693%_
                                  (lambda (_%g230564230575%_)
                                    ((lambda (_%g230565230578%_)
                                       (let* ((_%unchecked230591%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g230505230545%_))
                                              (_%g230594230602%_
                                               (lambda (_%g230595230598%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g230595230598%_))))
                                              (_%g230593230625%_
                                               (lambda (_%g230595230606%_)
                                                 ((lambda (_%g230596230609%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g230565230578%_
                                                                (cons _%g230596230609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g230595230606%_))))
                                         (_%g230593230625%_
                                          (if _%unchecked230591%_
                                              (let* ((_%g230629230644%_
                                                      (lambda (_%g230630230640%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230630230640%_))))
                                                     (_%g230628230689%_
                                                      (lambda (_%g230630230648%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230630230648%_))
                                                            (let ((_%e230633230651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g230630230648%_))))
                      (let ((_%hd230634230655%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230633230651%_)))
                            (_%tl230635230658%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230633230651%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230635230658%_))
                            (let ((_%e230636230661%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl230635230658%_))))
                              (let ((_%hd230637230665%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230636230661%_)))
                                    (_%tl230638230668%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230636230661%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl230638230668%_))
                                    ((lambda (_%g230631230671%_
                                              _%g230632230673%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g230632230673%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g230506230547%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g230631230671%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd230637230665%_
                                     _%hd230634230655%_)
                                    (_%g230629230644%_ _%g230630230648%_))))
                            (_%g230629230644%_ _%g230630230648%_))))
                    (_%g230629230644%_ _%g230630230648%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230628230689%_
                                                 _%unchecked230591%_))
                                              '(begin)))))
                                     _%g230564230575%_))))
                            (_%g230562230693%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g230407230485%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g230506230547%_ '()))
                   (cons '#f (cons 'signature: (cons _%g230505230545%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd230511230539%_
                        _%hd230508230529%_)
                       (_%g230503230518%_ _%g230504230522%_))))
               (_%g230503230518%_ _%g230504230522%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230503230518%_
                                                _%g230504230522%_)))))
                                   (_%g230502230697%_
                                    (|gxc[1]#parse-signature|
                                     _%stx230401%_
                                     _%g230407230485%_
                                     (let ((__tmp232763
                                            (lambda (_%g230700230703%_
                                                     _%g230701230706%_)
                                              (cons _%g230700230703%_
                                                    _%g230701230706%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp232763
                                        '()
                                        _%g230406230483%_)))))
                                 (_%g230404230428%_ _%g230405230432%_)))
                           _%signature230422230480%_
                           _%hd230412230449%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop230417230461%_
                                                   _%target230414230455%_
                                                   '()))
                                                (_%g230404230428%_
                                                 _%g230405230432%_)))))
                                      (_%g230404230428%_ _%g230405230432%_))))
                              (_%g230404230428%_ _%g230405230432%_))))
                      (_%g230404230428%_ _%g230405230432%_)))))
          (_%g230403230709%_ _%stx230401%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx230714%_)
        (let* ((_%g230717230741%_
                (lambda (_%g230718230737%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230718230737%_))))
               (_%g230716231616%_
                (lambda (_%g230718230745%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230718230745%_))
                      (let ((_%e230721230748%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230718230745%_))))
                        (let ((_%hd230722230752%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230721230748%_)))
                              (_%tl230723230755%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230721230748%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230723230755%_))
                              (let ((_%e230724230758%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230723230755%_))))
                                (let ((_%hd230725230762%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230724230758%_)))
                                      (_%tl230726230765%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230724230758%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230726230765%_))
                                      (let ((_g232764_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl230726230765%_
                                                '0))))
                                        (begin
                                          (let ((_g232765_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232764_)
                                                       (##values-length
                                                        _g232764_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232765_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232765_)))
                                          (let ((_%target230727230768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232764_ 0)))
                                                (_%tl230729230771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232764_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230729230771%_))
                                                (letrec ((_%loop230730230774%_
                                                          (lambda (_%hd230728230778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature230734230781%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd230728230778%_))
                        (let ((_%e230731230783%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd230728230778%_))))
                          (let ((_%lp-hd230732230787%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230731230783%_)))
                                (_%lp-tl230733230790%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230731230783%_))))
                            (_%loop230730230774%_
                             _%lp-tl230733230790%_
                             (cons _%lp-hd230732230787%_
                                   _%case-signature230734230781%_))))
                        (let ((_%case-signature230735230793%_
                               (reverse _%case-signature230734230781%_)))
                          ((lambda (_%g230719230796%_ _%g230720230798%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g230720230798%_))
                                 (let* ((_%signatures230829%_
                                         (map (lambda (_%g230815230817%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx230714%_
                                                 _%g230720230798%_
                                                 _%g230815230817%_))
                                              (let ((__tmp232766
                                                     (lambda (_%g230820230823%_
                                                              _%g230821230826%_)
                                                       (cons _%g230820230823%_
                                                             _%g230821230826%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp232766
                                                 '()
                                                 _%g230719230796%_))))
                                        (_%g230832230858%_
                                         (lambda (_%g230833230854%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g230833230854%_))))
                                        (_%g230831231612%_
                                         (lambda (_%g230833230862%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g230833230862%_))
                                               (let ((_g232767_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g230833230862%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g232768_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g232767_)
                        (##values-length _g232767_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g232768_ 2)))
                 (error "Context expects 2 values" _g232768_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target230836230865%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g232767_
                                                             0)))
                                                         (_%tl230838230868%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g232767_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl230838230868%_))
                                                         (letrec ((_%loop230839230871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd230837230875%_
                                    _%sig230843230878%_
                                    _%arity230844230879%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd230837230875%_))
                                 (let ((_%e230840230881%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd230837230875%_))))
                                   (let ((_%lp-hd230841230885%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e230840230881%_)))
                                         (_%lp-tl230842230888%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e230840230881%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd230841230885%_))
                                         (let ((_%e230847230891%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd230841230885%_))))
                                           (let ((_%hd230848230895%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e230847230891%_)))
                                                 (_%tl230849230898%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e230847230891%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl230849230898%_))
                                                 (let ((_%e230850230901%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl230849230898%_))))
                                                   (let ((_%hd230851230905%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e230850230901%_)))
                                                         (_%tl230852230908%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e230850230901%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl230852230908%_))
                                                         (_%loop230839230871%_
                                                          _%lp-tl230842230888%_
                                                          (cons _%hd230851230905%_
                                                                _%sig230843230878%_)
                                                          (cons _%hd230848230895%_
                                                                _%arity230844230879%_))
                                                         (_%g230832230858%_
                                                          _%g230833230862%_))))
                                                 (_%g230832230858%_
                                                  _%g230833230862%_))))
                                         (_%g230832230858%_
                                          _%g230833230862%_))))
                                 (let ((_%sig230845230911%_
                                        (reverse _%sig230843230878%_))
                                       (_%arity230846230913%_
                                        (reverse _%arity230844230879%_)))
                                   ((lambda (_%g230834230915%_
                                             _%g230835230917%_)
                                      (let* ((_%g230934230942%_
                                              (lambda (_%g230935230938%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g230935230938%_))))
                                             (_%g230933231597%_
                                              (lambda (_%g230935230946%_)
                                                ((lambda (_%g230936230949%_)
                                                   (let* ((_%g230962230970%_
                                                           (lambda (_%g230963230966%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g230963230966%_))))
                  (_%g230961230992%_
                   (lambda (_%g230963230974%_)
                     ((lambda (_%g230964230977%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g230936230949%_
                                    (cons _%g230964230977%_ '()))))
                      _%g230963230974%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g230961230992%_
                                                      (let ((_g232769_
                                                             (let _%loop230996%_ ((_%rest230999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures230829%_)
                                          (_%unchecked-proc231001%_ '#f)
                                          (_%unchecked-clauses231002%_ '()))
                       (let* ((_%rest231003231011%_ _%rest230999%_)
                              (_%else231005231023%_
                               (lambda ()
                                 (values _%unchecked-proc231001%_
                                         (reverse!
                                          _%unchecked-clauses231002%_))))
                              (_%K231007231464%_
                               (lambda (_%rest231027%_ _%hd231029%_)
                                 (let* ((_%g231031231118%_
                                         (lambda (_%g231032231114%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g231032231114%_))))
                                        (_%g231030231460%_
                                         (lambda (_%g231032231122%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g231032231122%_))
                                               (let ((_%e231039231125%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g231032231122%_))))
                                                 (let ((_%hd231040231129%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231039231125%_)))
                                                       (_%tl231041231132%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231039231125%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl231041231132%_))
                                                       (let ((_%e231042231135%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl231041231132%_))))
                 (let ((_%hd231043231139%_
                        (let ()
                          (declare (not safe))
                          (##car _%e231042231135%_)))
                       (_%tl231044231142%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e231042231135%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd231043231139%_))
                       (let ((_%e231045231145%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd231043231139%_))))
                         (let ((_%hd231046231149%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231045231145%_)))
                               (_%tl231047231152%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231045231145%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl231047231152%_))
                               (let ((_%e231048231155%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl231047231152%_))))
                                 (let ((_%hd231049231159%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231048231155%_)))
                                       (_%tl231050231162%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231048231155%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd231049231159%_))
                                       (let ((_%e231051231165%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd231049231159%_))))
                                         (if (equal? _%e231051231165%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl231050231162%_))
                                                 (let ((_%e231052231169%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl231050231162%_))))
                                                   (let ((_%hd231053231173%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231052231169%_)))
                                                         (_%tl231054231176%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231052231169%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd231053231173%_))
                                                         (let ((_%e231055231179%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd231053231173%_))))
                   (let ((_%hd231056231183%_
                          (let ()
                            (declare (not safe))
                            (##car _%e231055231179%_)))
                         (_%tl231057231186%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e231055231179%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd231056231183%_))
                         (if (let ((__tmp232771 |gxc[1]#_g232772_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp232771
                                _%hd231056231183%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl231057231186%_))
                                 (let ((_%e231058231189%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl231057231186%_))))
                                   (let ((_%hd231059231193%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231058231189%_)))
                                         (_%tl231060231196%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231058231189%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl231060231196%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl231054231176%_))
                                             (let ((_%e231061231199%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl231054231176%_))))
                                               (let ((_%hd231062231203%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231061231199%_)))
                                                     (_%tl231063231206%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231061231199%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd231062231203%_))
                                                     (let ((_%e231064231209%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd231062231203%_))))
                                                       (if (equal? _%e231064231209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl231063231206%_))
                       (let ((_%e231065231213%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl231063231206%_))))
                         (let ((_%hd231066231217%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231065231213%_)))
                               (_%tl231067231220%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231065231213%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd231066231217%_))
                               (let ((_%e231068231223%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd231066231217%_))))
                                 (let ((_%hd231069231227%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231068231223%_)))
                                       (_%tl231070231230%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231068231223%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd231069231227%_))
                                       (if (let ((__tmp232773
                                                  |gxc[1]#_g232774_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp232773
                                              _%hd231069231227%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl231070231230%_))
                                               (let ((_%e231071231233%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl231070231230%_))))
                                                 (let ((_%hd231072231237%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231071231233%_)))
                                                       (_%tl231073231240%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231071231233%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl231073231240%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl231067231220%_))
                                                           (let ((_%e231074231243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl231067231220%_))))
                     (let ((_%hd231075231247%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231074231243%_)))
                           (_%tl231076231250%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231074231243%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd231075231247%_))
                           (let ((_%e231077231253%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd231075231247%_))))
                             (if (equal? _%e231077231253%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl231076231250%_))
                                     (let ((_%e231078231257%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl231076231250%_))))
                                       (let ((_%hd231079231261%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e231078231257%_)))
                                             (_%tl231080231264%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e231078231257%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd231079231261%_))
                                             (let ((_%e231081231267%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd231079231261%_))))
                                               (let ((_%hd231082231271%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231081231267%_)))
                                                     (_%tl231083231274%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231081231267%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd231082231271%_))
                                                     (if (let ((__tmp232775
                                                                |gxc[1]#_g232776_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp232775
                                                            _%hd231082231271%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl231083231274%_))
                     (let ((_%e231084231277%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl231083231274%_))))
                       (let ((_%hd231085231281%_
                              (let ()
                                (declare (not safe))
                                (##car _%e231084231277%_)))
                             (_%tl231086231284%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e231084231277%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl231086231284%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl231080231264%_))
                                 (let ((_%e231087231287%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl231080231264%_))))
                                   (let ((_%hd231088231291%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231087231287%_)))
                                         (_%tl231089231294%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231087231287%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd231088231291%_))
                                         (let ((_%e231090231297%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd231088231291%_))))
                                           (if (equal? _%e231090231297%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl231089231294%_))
                                                   (let ((_%e231091231301%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl231089231294%_))))
                                                     (let ((_%hd231092231305%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e231091231301%_)))
                                                           (_%tl231093231308%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e231091231301%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd231092231305%_))
                                                           (let ((_%e231094231311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd231092231305%_))))
                     (let ((_%hd231095231315%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231094231311%_)))
                           (_%tl231096231318%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231094231311%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd231095231315%_))
                           (if (let ((__tmp232777 |gxc[1]#_g232778_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp232777
                                  _%hd231095231315%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl231096231318%_))
                                   (let ((_%e231097231321%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl231096231318%_))))
                                     (let ((_%hd231098231325%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e231097231321%_)))
                                           (_%tl231099231328%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e231097231321%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl231099231328%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl231093231308%_))
                                               (let ((_%e231100231331%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl231093231308%_))))
                                                 (let ((_%hd231101231335%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231100231331%_)))
                                                       (_%tl231102231338%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231100231331%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd231101231335%_))
                                                       (let ((_%e231103231341%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd231101231335%_))))
                 (if (equal? _%e231103231341%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl231102231338%_))
                         (let ((_%e231104231345%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl231102231338%_))))
                           (let ((_%hd231105231349%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e231104231345%_)))
                                 (_%tl231106231352%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e231104231345%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd231105231349%_))
                                 (let ((_%e231107231355%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd231105231349%_))))
                                   (let ((_%hd231108231359%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231107231355%_)))
                                         (_%tl231109231362%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231107231355%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd231108231359%_))
                                         (if (let ((__tmp232779
                                                    |gxc[1]#_g232780_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp232779
                                                _%hd231108231359%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl231109231362%_))
                                                 (let ((_%e231110231365%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl231109231362%_))))
                                                   (let ((_%hd231111231369%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231110231365%_)))
                                                         (_%tl231112231372%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231110231365%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl231112231372%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl231106231352%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl231044231142%_))
                         ((lambda (_%g231033231375%_
                                   _%g231034231377%_
                                   _%g231035231378%_
                                   _%g231036231379%_
                                   _%g231037231380%_
                                   _%g231038231381%_)
                            (let ((_%clause231452%_
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
                                                     (cons _%g231038231381%_
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
                                                 (cons _%g231036231379%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231033231375%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked231454%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g231034231377%_))))
                              (_%loop230996%_
                               _%rest231027%_
                               (let ((_%$e231456%_ _%unchecked231454%_))
                                 (if _%$e231456%_
                                     _%$e231456%_
                                     _%unchecked-proc231001%_))
                               (cons _%clause231452%_
                                     _%unchecked-clauses231002%_))))
                          _%hd231111231369%_
                          _%hd231098231325%_
                          _%hd231085231281%_
                          _%hd231072231237%_
                          _%hd231059231193%_
                          _%hd231040231129%_)
                         (_%g231031231118%_ _%g231032231122%_))
                     (_%g231031231118%_ _%g231032231122%_))
                 (_%g231031231118%_ _%g231032231122%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g231031231118%_
                                                  _%g231032231122%_))
                                             (_%g231031231118%_
                                              _%g231032231122%_))
                                         (_%g231031231118%_
                                          _%g231032231122%_))))
                                 (_%g231031231118%_ _%g231032231122%_))))
                         (_%g231031231118%_ _%g231032231122%_))
                     (_%g231031231118%_ _%g231032231122%_)))
               (_%g231031231118%_ _%g231032231122%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231031231118%_
                                                _%g231032231122%_))
                                           (_%g231031231118%_
                                            _%g231032231122%_))))
                                   (_%g231031231118%_ _%g231032231122%_))
                               (_%g231031231118%_ _%g231032231122%_))
                           (_%g231031231118%_ _%g231032231122%_))))
                   (_%g231031231118%_ _%g231032231122%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g231031231118%_
                                                    _%g231032231122%_))
                                               (_%g231031231118%_
                                                _%g231032231122%_)))
                                         (_%g231031231118%_
                                          _%g231032231122%_))))
                                 (_%g231031231118%_ _%g231032231122%_))
                             (_%g231031231118%_ _%g231032231122%_))))
                     (_%g231031231118%_ _%g231032231122%_))
                 (_%g231031231118%_ _%g231032231122%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231031231118%_
                                                      _%g231032231122%_))))
                                             (_%g231031231118%_
                                              _%g231032231122%_))))
                                     (_%g231031231118%_ _%g231032231122%_))
                                 (_%g231031231118%_ _%g231032231122%_)))
                           (_%g231031231118%_ _%g231032231122%_))))
                   (_%g231031231118%_ _%g231032231122%_))
               (_%g231031231118%_ _%g231032231122%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231031231118%_
                                                _%g231032231122%_))
                                           (_%g231031231118%_
                                            _%g231032231122%_))
                                       (_%g231031231118%_ _%g231032231122%_))))
                               (_%g231031231118%_ _%g231032231122%_))))
                       (_%g231031231118%_ _%g231032231122%_))
                   (_%g231031231118%_ _%g231032231122%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231031231118%_
                                                      _%g231032231122%_))))
                                             (_%g231031231118%_
                                              _%g231032231122%_))
                                         (_%g231031231118%_
                                          _%g231032231122%_))))
                                 (_%g231031231118%_ _%g231032231122%_))
                             (_%g231031231118%_ _%g231032231122%_))
                         (_%g231031231118%_ _%g231032231122%_))))
                 (_%g231031231118%_ _%g231032231122%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g231031231118%_
                                                  _%g231032231122%_))
                                             (_%g231031231118%_
                                              _%g231032231122%_)))
                                       (_%g231031231118%_ _%g231032231122%_))))
                               (_%g231031231118%_ _%g231032231122%_))))
                       (_%g231031231118%_ _%g231032231122%_))))
               (_%g231031231118%_ _%g231032231122%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231031231118%_
                                                _%g231032231122%_)))))
                                   (_%g231030231460%_ _%hd231029%_)))))
                         (if (pair? _%rest231003231011%_)
                             (let ((_%hd231008231468%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest231003231011%_)))
                                   (_%tl231009231471%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest231003231011%_))))
                               (let* ((_%hd231474%_ _%hd231008231468%_)
                                      (_%rest231477%_ _%tl231009231471%_))
                                 (_%K231007231464%_
                                  _%rest231477%_
                                  _%hd231474%_)))
                             (_%else231005231023%_))))))
                (begin
                  (let ((_g232770_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g232769_)
                               (##values-length _g232769_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g232770_ 2)))
                        (error "Context expects 2 values" _g232770_)))
                  (let ((_%unchecked-proc231480%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232769_ 0)))
                        (_%unchecked-clauses231482%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232769_ 1))))
                    (if _%unchecked-proc231480%_
                        (let* ((_%g231484231508%_
                                (lambda (_%g231485231504%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g231485231504%_))))
                               (_%g231483231593%_
                                (lambda (_%g231485231512%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g231485231512%_))
                                      (let ((_%e231488231515%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g231485231512%_))))
                                        (let ((_%hd231489231519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231488231515%_)))
                                              (_%tl231490231522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231488231515%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231490231522%_))
                                              (let ((_%e231491231525%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl231490231522%_))))
                                                (let ((_%hd231492231529%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231491231525%_)))
                                                      (_%tl231493231532%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231491231525%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd231492231529%_))
                                                      (let ((_g232781_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd231492231529%_ '0))))
                (begin
                  (let ((_g232782_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g232781_)
                               (##values-length _g232781_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g232782_ 2)))
                        (error "Context expects 2 values" _g232782_)))
                  (let ((_%target231494231535%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232781_ 0)))
                        (_%tl231496231538%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232781_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl231496231538%_))
                        (letrec ((_%loop231497231541%_
                                  (lambda (_%hd231495231545%_
                                           _%clause231501231548%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd231495231545%_))
                                        (let ((_%e231498231550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd231495231545%_))))
                                          (let ((_%lp-hd231499231554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e231498231550%_)))
                                                (_%lp-tl231500231557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e231498231550%_))))
                                            (_%loop231497231541%_
                                             _%lp-tl231500231557%_
                                             (cons _%lp-hd231499231554%_
                                                   _%clause231501231548%_))))
                                        (let ((_%clause231502231560%_
                                               (reverse _%clause231501231548%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl231493231532%_))
                                              ((lambda (_%g231486231563%_
                                                        _%g231487231565%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g231487231565%_
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
                                             (let ((__tmp232783
                                                    (lambda (_%g231584231587%_
                                                             _%g231585231590%_)
                                                      (cons _%g231584231587%_
                                                            _%g231585231590%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp232783
                                                '()
                                                _%g231486231563%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause231502231560%_
                                               _%hd231489231519%_)
                                              (_%g231484231508%_
                                               _%g231485231512%_)))))))
                          (_%loop231497231541%_ _%target231494231535%_ '()))
                        (_%g231484231508%_ _%g231485231512%_)))))
              (_%g231484231508%_ _%g231485231512%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g231484231508%_
                                               _%g231485231512%_))))
                                      (_%g231484231508%_ _%g231485231512%_)))))
                          (_%g231483231593%_
                           (list _%unchecked-proc231480%_
                                 _%unchecked-clauses231482%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g230935230946%_))))
                                        (_%g230933231597%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g230720230798%_
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
                                          _%g230834230915%_
                                          _%g230835230917%_))
                                       (let ((__tmp232784
                                              (lambda (_%g231600231604%_
                                                       _%g231601231607%_
                                                       _%g231602231609%_)
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
                                (cons _%g231601231607%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g231600231604%_ '())))))
              _%g231602231609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp232784
                                          '()
                                          _%g230834230915%_
                                          _%g230835230917%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig230845230911%_
                                    _%arity230846230913%_))))))
                   (_%loop230839230871%_ _%target230836230865%_ '() '()))
                 (_%g230832230858%_ _%g230833230862%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230832230858%_
                                                _%g230833230862%_)))))
                                   (_%g230831231612%_ _%signatures230829%_))
                                 (_%g230717230741%_ _%g230718230745%_)))
                           _%case-signature230735230793%_
                           _%hd230725230762%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop230730230774%_
                                                   _%target230727230768%_
                                                   '()))
                                                (_%g230717230741%_
                                                 _%g230718230745%_)))))
                                      (_%g230717230741%_ _%g230718230745%_))))
                              (_%g230717230741%_ _%g230718230745%_))))
                      (_%g230717230741%_ _%g230718230745%_)))))
          (_%g230716231616%_ _%stx230714%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx231624%_)
        (let* ((_%__stx232604232605%_ _%$stx231624%_)
               (_%g231630231690%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232604232605%_)))))
          (let ((_%__kont232607232608%_
                 (lambda (_%g231632231912%_ _%g231633231914%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231633231914%_ '()))
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
                                                       (cons _%g231633231914%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231632231912%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont232609232610%_
                 (lambda (_%g231647231837%_
                          _%g231648231839%_
                          _%g231649231840%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231649231840%_ '()))
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
                                                       (cons _%g231649231840%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231648231839%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g231647231837%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont232611232612%_
                 (lambda (_%g231666231751%_
                          _%g231667231753%_
                          _%g231668231754%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231668231754%_ '()))
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
                                                       (cons _%g231668231754%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231667231753%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g231666231751%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232604232605%_))
                (let ((_%e231634231868%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232604232605%_))))
                  (let ((_%tl231636231875%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231634231868%_)))
                        (_%hd231635231872%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231634231868%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl231636231875%_))
                        (let ((_%e231637231878%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl231636231875%_))))
                          (let ((_%tl231639231885%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e231637231878%_)))
                                (_%hd231638231882%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e231637231878%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd231638231882%_))
                                (let ((_%e231640231888%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd231638231882%_))))
                                  (if (equal? _%e231640231888%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl231639231885%_))
                                          (let ((_%e231641231892%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl231639231885%_))))
                                            (let ((_%tl231643231899%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e231641231892%_)))
                                                  (_%hd231642231896%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e231641231892%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231643231899%_))
                                                  (let ((_%e231644231902%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl231643231899%_))))
                                                    (let ((_%tl231646231909%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231644231902%_)))
                                                          (_%hd231645231906%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231644231902%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl231646231909%_))
                                                          (_%__kont232607232608%_
                                                           _%hd231645231906%_
                                                           _%hd231642231896%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g231630231690%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g231630231690%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g231630231690%_)))
                                      (if (equal? _%e231640231888%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231639231885%_))
                                              (let ((_%e231657231807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl231639231885%_))))
                                                (let ((_%tl231659231814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231657231807%_)))
                                                      (_%hd231658231811%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231657231807%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl231659231814%_))
                                                      (let ((_%e231660231817%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl231659231814%_))))
                (let ((_%tl231662231824%_
                       (let () (declare (not safe)) (##cdr _%e231660231817%_)))
                      (_%hd231661231821%_
                       (let ()
                         (declare (not safe))
                         (##car _%e231660231817%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl231662231824%_))
                      (let ((_%e231663231827%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl231662231824%_))))
                        (let ((_%tl231665231834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231663231827%_)))
                              (_%hd231664231831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231663231827%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl231665231834%_))
                              (_%__kont232609232610%_
                               _%hd231664231831%_
                               _%hd231661231821%_
                               _%hd231658231811%_)
                              (let ()
                                (declare (not safe))
                                (_%g231630231690%_)))))
                      (let () (declare (not safe)) (_%g231630231690%_)))))
              (let () (declare (not safe)) (_%g231630231690%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g231630231690%_)))
                                          (if (equal? _%e231640231888%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231639231885%_))
                                                  (let ((_%e231676231721%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl231639231885%_))))
                                                    (let ((_%tl231678231728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231676231721%_)))
                                                          (_%hd231677231725%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231676231721%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl231678231728%_))
                                                          (let ((_%e231679231731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl231678231728%_))))
                    (let ((_%tl231681231738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e231679231731%_)))
                          (_%hd231680231735%_
                           (let ()
                             (declare (not safe))
                             (##car _%e231679231731%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231681231738%_))
                          (let ((_%e231682231741%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl231681231738%_))))
                            (let ((_%tl231684231748%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231682231741%_)))
                                  (_%hd231683231745%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231682231741%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231684231748%_))
                                  (_%__kont232611232612%_
                                   _%hd231683231745%_
                                   _%hd231680231735%_
                                   _%hd231677231725%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g231630231690%_)))))
                          (let () (declare (not safe)) (_%g231630231690%_)))))
                  (let () (declare (not safe)) (_%g231630231690%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g231630231690%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g231630231690%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g231630231690%_)))))
                        (let () (declare (not safe)) (_%g231630231690%_)))))
                (let () (declare (not safe)) (_%g231630231690%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx231936%_)
        (let* ((_%g231940231960%_
                (lambda (_%g231941231956%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g231941231956%_))))
               (_%g231939232029%_
                (lambda (_%g231941231964%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g231941231964%_))
                      (let ((_%e231943231967%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g231941231964%_))))
                        (let ((_%hd231944231971%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231943231967%_)))
                              (_%tl231945231974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231943231967%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl231945231974%_))
                              (let ((_g232785_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl231945231974%_
                                        '0))))
                                (begin
                                  (let ((_g232786_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232785_)
                                               (##values-length _g232785_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232786_ 2)))
                                        (error "Context expects 2 values"
                                               _g232786_)))
                                  (let ((_%target231946231977%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232785_ 0)))
                                        (_%tl231948231980%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232785_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl231948231980%_))
                                        (letrec ((_%loop231949231983%_
                                                  (lambda (_%hd231947231987%_
                                                           _%decl231953231990%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd231947231987%_))
                                                        (let ((_%e231950231992%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd231947231987%_))))
                  (let ((_%lp-hd231951231996%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231950231992%_)))
                        (_%lp-tl231952231999%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231950231992%_))))
                    (_%loop231949231983%_
                     _%lp-tl231952231999%_
                     (cons _%lp-hd231951231996%_ _%decl231953231990%_))))
                (let ((_%decl231954232002%_ (reverse _%decl231953231990%_)))
                  ((lambda (_%g231942232005%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp232787
                                  (lambda (_%g232020232023%_ _%g232021232026%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g232020232023%_)
                                          _%g232021232026%_))))
                             (declare (not safe))
                             (__foldr1 __tmp232787 '() _%g231942232005%_))))
                   _%decl231954232002%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop231949231983%_
                                           _%target231946231977%_
                                           '()))
                                        (_%g231940231960%_
                                         _%g231941231964%_)))))
                              (_%g231940231960%_ _%g231941231964%_))))
                      (_%g231940231960%_ _%g231941231964%_)))))
          (_%g231939232029%_ _%$stx231936%_))))))
