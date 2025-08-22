(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g138613_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g138615_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g138617_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g138619_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g138620_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g138622_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g138623_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g138625_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g138626_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g138628_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g138629_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx137696%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx137696%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx137699%_)
        (let* ((_%g137702137726%_
                (lambda (_%g137703137722%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137703137722%_))))
               (_%g137701138029%_
                (lambda (_%g137703137730%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137703137730%_))
                      (let ((_%e137706137733%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g137703137730%_))))
                        (let ((_%hd137707137737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137706137733%_)))
                              (_%tl137708137740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137706137733%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137708137740%_))
                              (let ((_%e137709137743%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl137708137740%_))))
                                (let ((_%hd137710137747%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137709137743%_)))
                                      (_%tl137711137750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137709137743%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl137711137750%_))
                                      (let ((_g138604_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl137711137750%_
                                                '0))))
                                        (begin
                                          (let ((_g138605_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138604_)
                                                       (##values-length
                                                        _g138604_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138605_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138605_)))
                                          (let ((_%target137712137753%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g138604_ 0)))
                                                (_%tl137714137756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g138604_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137714137756%_))
                                                (letrec ((_%loop137715137759%_
                                                          (lambda (_%hd137713137763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause137719137766%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd137713137763%_))
                        (let ((_%e137716137769%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd137713137763%_))))
                          (let ((_%lp-hd137717137773%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137716137769%_)))
                                (_%lp-tl137718137776%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137716137769%_))))
                            (_%loop137715137759%_
                             _%lp-tl137718137776%_
                             (cons _%lp-hd137717137773%_
                                   _%clause137719137766%_))))
                        (let ((_%clause137720137779%_
                               (reverse _%clause137719137766%_)))
                          ((lambda (_%L137783%_ _%L137785%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L137785%_))
                                 (let* ((_%g137804137821%_
                                         (lambda (_%g137805137817%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g137805137817%_))))
                                        (_%g137803137882%_
                                         (lambda (_%g137805137825%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g137805137825%_))
                                               (let ((_g138606_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g137805137825%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g138607_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g138606_)
                        (##values-length _g138606_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g138607_ 2)))
                 (error "Context expects 2 values" _g138607_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target137807137828%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g138606_
                                                             0)))
                                                         (_%tl137809137831%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g138606_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137809137831%_))
                                                         (letrec ((_%loop137810137834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd137808137838%_ _%clause137814137841%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd137808137838%_))
                                 (let ((_%e137811137844%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd137808137838%_))))
                                   (let ((_%lp-hd137812137848%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137811137844%_)))
                                         (_%lp-tl137813137851%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137811137844%_))))
                                     (_%loop137810137834%_
                                      _%lp-tl137813137851%_
                                      (cons _%lp-hd137812137848%_
                                            _%clause137814137841%_))))
                                 (let ((_%clause137815137854%_
                                        (reverse _%clause137814137841%_)))
                                   ((lambda (_%L137858%_)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'lambda))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '$stx))
                                                        '())
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'ast-case))
                      (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '$stx))
                            (cons _%L137785%_
                                  (let ((__tmp138608
                                         (lambda (_%g137873137876%_
                                                  _%g137874137879%_)
                                           (cons _%g137873137876%_
                                                 _%g137874137879%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp138608 '() _%L137858%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause137815137854%_))))))
                   (_%loop137810137834%_ _%target137807137828%_ '()))
                 (_%g137804137821%_ _%g137805137825%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g137804137821%_
                                                _%g137805137825%_)))))
                                   (_%g137803137882%_
                                    (let ((__tmp138611
                                           (lambda (_%clause137886%_)
                                             (let* ((_%__stx138524138525%_
                                                     _%clause137886%_)
                                                    (_%g137890137917%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx138524138525%_)))))
                                               (let ((_%__kont138527138528%_
                                                      (lambda (_%L138002%_
                                                               _%L138004%_)
                                                        (cons _%L138004%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L138002%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont138529138530%_
                                                      (lambda (_%L137954%_
                                                               _%L137956%_
                                                               _%L137957%_)
                                                        (cons _%L137957%_
                                                              (cons _%L137956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L137954%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx138524138525%_))
                                                     (let ((_%e137894137982%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx138524138525%_))))
                                                       (let ((_%tl137896137989%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137894137982%_)))
                     (_%hd137895137986%_
                      (let () (declare (not safe)) (##car _%e137894137982%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl137896137989%_))
                     (let ((_%e137897137992%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl137896137989%_))))
                       (let ((_%tl137899137999%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e137897137992%_)))
                             (_%hd137898137996%_
                              (let ()
                                (declare (not safe))
                                (##car _%e137897137992%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl137899137999%_))
                             (_%__kont138527138528%_
                              _%hd137898137996%_
                              _%hd137895137986%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl137899137999%_))
                                 (let ((_%e137909137944%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl137899137999%_))))
                                   (let ((_%tl137911137951%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137909137944%_)))
                                         (_%hd137910137948%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137909137944%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl137911137951%_))
                                         (_%__kont138529138530%_
                                          _%hd137910137948%_
                                          _%hd137898137996%_
                                          _%hd137895137986%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g137890137917%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g137890137917%_))))))
                     (let () (declare (not safe)) (_%g137890137917%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g137890137917%_)))))))
                                          (__tmp138609
                                           (let ((__tmp138610
                                                  (lambda (_%g138020138023%_
                                                           _%g138021138026%_)
                                                    (cons _%g138020138023%_
                                                          _%g138021138026%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp138610
                                              '()
                                              _%L137783%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp138611 __tmp138609))))
                                 (_%g137702137726%_ _%g137703137730%_)))
                           _%clause137720137779%_
                           _%hd137710137747%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop137715137759%_
                                                   _%target137712137753%_
                                                   '()))
                                                (_%g137702137726%_
                                                 _%g137703137730%_)))))
                                      (_%g137702137726%_ _%g137703137730%_))))
                              (_%g137702137726%_ _%g137703137730%_))))
                      (_%g137702137726%_ _%g137703137730%_)))))
          (_%g137701138029%_ _%stx137699%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj138574
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj138574
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj138574
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj138574
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 ':init! '11 '#f '#f))
        (let ((__tmp138612 |gxc[1]#_g138613_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 __tmp138612 '12 '#f '#f))
        (let ((__tmp138614 |gxc[1]#_g138615_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 __tmp138614 '13 '#f '#f))
        (let ((__tmp138616 |gxc[1]#_g138617_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 __tmp138616 '14 '#f '#f))
        (let ((__tmp138618
               (cons (cons 'gensyms |gxc[1]#_g138619_|)
                     (cons (cons 'bindings |gxc[1]#_g138620_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 __tmp138618 '15 '#f '#f))
        (let ((__tmp138621
               (cons (cons 'gensyms |gxc[1]#_g138622_|)
                     (cons (cons 'bindings |gxc[1]#_g138623_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 __tmp138621 '16 '#f '#f))
        (let ((__tmp138624
               (cons (cons 'gensyms |gxc[1]#_g138625_|)
                     (cons (cons 'bindings |gxc[1]#_g138626_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 __tmp138624 '17 '#f '#f))
        (let ((__tmp138627
               (cons (cons 'gensyms |gxc[1]#_g138628_|)
                     (cons (cons 'bindings |gxc[1]#_g138629_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 __tmp138627 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj138574 '() '20 '#f '#f))
        __obj138574))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx138036%_)
        (let* ((_%g138040138054%_
                (lambda (_%g138041138050%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138041138050%_))))
               (_%g138039138095%_
                (lambda (_%g138041138058%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138041138058%_))
                      (let ((_%e138043138061%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g138041138058%_))))
                        (let ((_%hd138044138065%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138043138061%_)))
                              (_%tl138045138068%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138043138061%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138045138068%_))
                              (let ((_%e138046138071%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl138045138068%_))))
                                (let ((_%hd138047138075%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138046138071%_)))
                                      (_%tl138048138078%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138046138071%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138048138078%_))
                                      ((lambda (_%L138081%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '__verbose-mutex))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%L138081%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd138047138075%_)
                                      (_%g138040138054%_ _%g138041138058%_))))
                              (_%g138040138054%_ _%g138041138058%_))))
                      (_%g138040138054%_ _%g138041138058%_)))))
          (_%g138039138095%_ _%$stx138036%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx138099%_)
        (let* ((_%g138103138117%_
                (lambda (_%g138104138113%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138104138113%_))))
               (_%g138102138158%_
                (lambda (_%g138104138121%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138104138121%_))
                      (let ((_%e138106138124%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g138104138121%_))))
                        (let ((_%hd138107138128%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138106138124%_)))
                              (_%tl138108138131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138106138124%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138108138131%_))
                              (let ((_%e138109138134%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl138108138131%_))))
                                (let ((_%hd138110138138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138109138134%_)))
                                      (_%tl138111138141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138109138134%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138111138141%_))
                                      ((lambda (_%L138144%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'spawn))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'lambda))
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L138144%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd138110138138%_)
                                      (_%g138103138117%_ _%g138104138121%_))))
                              (_%g138103138117%_ _%g138104138121%_))))
                      (_%g138103138117%_ _%g138104138121%_)))))
          (_%g138102138158%_ _%$stx138099%_))))))
