(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
    (lambda (_%stx26954%_ _%klass26956%_)
      (|gerbil/core/mop~MOP-5[1]#emit-system-class|
       _%stx26954%_
       _%klass26956%_
       '()
       '())))
  (define |gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
    (lambda (_%stx26911%_ _%klass26913%_ _%fields26914%_)
      (let* ((_%fields26946%_
              (let _%loop26916%_ ((_%rest26919%_ _%fields26914%_)
                                  (_%normalized26921%_ '()))
                (if (pair? _%rest26919%_)
                    (let ((_%field26923%_
                           (let () (declare (not safe)) (##car _%rest26919%_)))
                          (_%rest26925%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest26919%_))))
                      (if (memq _%field26923%_ _%rest26925%_)
                          (let ((_%$e26927%_
                                 (agetq _%field26923%_ _%normalized26921%_)))
                            (if _%$e26927%_
                                ((lambda (_%previous26931%_)
                                   (let ((_%normalized-field26934%_
                                          (make-symbol
                                           '"super-"
                                           _%previous26931%_)))
                                     (_%loop26916%_
                                      _%rest26925%_
                                      (cons (cons _%field26923%_
                                                  _%normalized-field26934%_)
                                            _%normalized26921%_))))
                                 _%$e26927%_)
                                (let ((_%normalized-field26939%_
                                       (make-symbol '"super-" _%field26923%_)))
                                  (_%loop26916%_
                                   _%rest26925%_
                                   (cons (cons _%field26923%_
                                               _%normalized-field26939%_)
                                         _%normalized26921%_)))))
                          (_%loop26916%_
                           _%rest26925%_
                           (cons (cons _%field26923%_ _%field26923%_)
                                 _%normalized26921%_))))
                    (foldl (lambda (_%n26942%_ _%r26944%_)
                             (cons (cdr _%n26942%_) _%r26944%_))
                           '()
                           _%normalized26921%_))))
             (_%field-offsets26949%_
              (let ((__tmp27686 (length _%fields26946%_)))
                (declare (not safe))
                (##iota __tmp27686 '1))))
        (|gerbil/core/mop~MOP-5[1]#emit-system-class|
         _%stx26911%_
         _%klass26913%_
         _%fields26946%_
         _%field-offsets26949%_))))
  (define |gerbil/core/mop~MOP-5[1]#emit-system-class|
    (lambda (_%stx26560%_
             _%klass26562%_
             _%fields26563%_
             _%field-offsets26564%_)
      (let* ((_%g2656626638%_
              (lambda (_%g2656726634%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g2656726634%_)))
             (_%g2656526907%_
              (lambda (_%g2656726642%_)
                (if (gx#stx-pair? _%g2656726642%_)
                    (let ((_%e2657626645%_ (gx#syntax-e _%g2656726642%_)))
                      (let ((_%hd2657726649%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2657626645%_)))
                            (_%tl2657826652%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2657626645%_))))
                        (if (gx#stx-pair? _%tl2657826652%_)
                            (let ((_%e2657926655%_
                                   (gx#syntax-e _%tl2657826652%_)))
                              (let ((_%hd2658026659%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2657926655%_)))
                                    (_%tl2658126662%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2657926655%_))))
                                (if (gx#stx-pair? _%tl2658126662%_)
                                    (let ((_%e2658226665%_
                                           (gx#syntax-e _%tl2658126662%_)))
                                      (let ((_%hd2658326669%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2658226665%_)))
                                            (_%tl2658426672%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2658226665%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd2658326669%_)
                                            (let ((_g27687_
                                                   (gx#syntax-split-splice
                                                    _%hd2658326669%_
                                                    '0)))
                                              (begin
                                                (let ((_g27688_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27687_)
                                                             (##values-length
                                                              _g27687_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27688_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2658526675%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27687_
                                                          0)))
                                                      (_%tl2658726678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27687_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2658726678%_)
                                                      (letrec ((_%loop2658826681%_
                                                                (lambda (_%hd2658626685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%field2659226688%_)
                          (if (gx#stx-pair? _%hd2658626685%_)
                              (let ((_%e2658926690%_
                                     (gx#syntax-e _%hd2658626685%_)))
                                (let ((_%lp-hd2659026694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2658926690%_)))
                                      (_%lp-tl2659126697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2658926690%_))))
                                  (_%loop2658826681%_
                                   _%lp-tl2659126697%_
                                   (cons _%lp-hd2659026694%_
                                         _%field2659226688%_))))
                              (let ((_%field2659326700%_
                                     (reverse _%field2659226688%_)))
                                (if (gx#stx-pair? _%tl2658426672%_)
                                    (let ((_%e2659426703%_
                                           (gx#syntax-e _%tl2658426672%_)))
                                      (let ((_%hd2659526707%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2659426703%_)))
                                            (_%tl2659626710%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2659426703%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd2659526707%_)
                                            (let ((_g27689_
                                                   (gx#syntax-split-splice
                                                    _%hd2659526707%_
                                                    '0)))
                                              (begin
                                                (let ((_g27690_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27689_)
                                                             (##values-length
                                                              _g27689_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27690_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2659726713%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27689_
                                                          0)))
                                                      (_%tl2659926716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27689_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2659926716%_)
                                                      (letrec ((_%loop2660026719%_
                                                                (lambda (_%hd2659826723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%field-offset2660426726%_)
                          (if (gx#stx-pair? _%hd2659826723%_)
                              (let ((_%e2660126728%_
                                     (gx#syntax-e _%hd2659826723%_)))
                                (let ((_%lp-hd2660226732%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2660126728%_)))
                                      (_%lp-tl2660326735%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2660126728%_))))
                                  (_%loop2660026719%_
                                   _%lp-tl2660326735%_
                                   (cons _%lp-hd2660226732%_
                                         _%field-offset2660426726%_))))
                              (let ((_%field-offset2660526738%_
                                     (reverse _%field-offset2660426726%_)))
                                (if (gx#stx-pair? _%tl2659626710%_)
                                    (let ((_%e2660626741%_
                                           (gx#syntax-e _%tl2659626710%_)))
                                      (let ((_%hd2660726745%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2660626741%_)))
                                            (_%tl2660826748%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2660626741%_))))
                                        (if (gx#stx-pair? _%hd2660726745%_)
                                            (let ((_%e2660926751%_
                                                   (gx#syntax-e
                                                    _%hd2660726745%_)))
                                              (let ((_%hd2661026755%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2660926751%_)))
                                                    (_%tl2661126758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2660926751%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2661126758%_)
                                                    (let ((_%e2661226761%_
                                                           (gx#syntax-e
                                                            _%tl2661126758%_)))
                                                      (let ((_%hd2661326765%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2661226761%_)))
                    (_%tl2661426768%_
                     (let () (declare (not safe)) (##cdr _%e2661226761%_))))
                (if (gx#stx-pair? _%tl2661426768%_)
                    (let ((_%e2661526771%_ (gx#syntax-e _%tl2661426768%_)))
                      (let ((_%hd2661626775%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2661526771%_)))
                            (_%tl2661726778%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2661526771%_))))
                        (if (gx#stx-pair? _%tl2661726778%_)
                            (let ((_%e2661826781%_
                                   (gx#syntax-e _%tl2661726778%_)))
                              (let ((_%hd2661926785%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2661826781%_)))
                                    (_%tl2662026788%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2661826781%_))))
                                (if (gx#stx-pair/null? _%hd2661926785%_)
                                    (let ((_g27691_
                                           (gx#syntax-split-splice
                                            _%hd2661926785%_
                                            '0)))
                                      (begin
                                        (let ((_g27692_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g27691_)
                                                     (##values-length _g27691_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g27692_ 2)))
                                              (error "Context expects 2 values"
                                                     _g27692_)))
                                        (let ((_%target2662126791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g27691_ 0)))
                                              (_%tl2662326794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g27691_ 1))))
                                          (if (gx#stx-null? _%tl2662326794%_)
                                              (letrec ((_%loop2662426797%_
                                                        (lambda (_%hd2662226801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%super2662826804%_)
                  (if (gx#stx-pair? _%hd2662226801%_)
                      (let ((_%e2662526806%_ (gx#syntax-e _%hd2662226801%_)))
                        (let ((_%lp-hd2662626810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2662526806%_)))
                              (_%lp-tl2662726813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2662526806%_))))
                          (_%loop2662426797%_
                           _%lp-tl2662726813%_
                           (cons _%lp-hd2662626810%_ _%super2662826804%_))))
                      (let ((_%super2662926816%_
                             (reverse _%super2662826804%_)))
                        (if (gx#stx-pair? _%tl2662026788%_)
                            (let ((_%e2663026819%_
                                   (gx#syntax-e _%tl2662026788%_)))
                              (let ((_%hd2663126823%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2663026819%_)))
                                    (_%tl2663226826%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2663026819%_))))
                                (if (gx#stx-null? _%tl2663226826%_)
                                    (if (gx#stx-null? _%tl2660826748%_)
                                        ((lambda (_%g2656826829%_
                                                  _%g2656926831%_
                                                  _%g2657026832%_
                                                  _%g2657126833%_
                                                  _%g2657226834%_
                                                  _%g2657326835%_
                                                  _%g2657426836%_
                                                  _%g2657526837%_)
                                           (gx#stx-wrap-source
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'defsyntax)
                                                  (cons _%g2657126833%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'make-class-type-info)
                            (cons 'id:
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%g2657526837%_ '()))
                                        (cons 'name:
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2657426836%_
                                                                '()))
                                                    (cons 'super:
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@list)
                              (foldr (lambda (_%g2688726893%_ _%g2688826896%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote-syntax)
                                                   (cons _%g2688726893%_ '()))
                                             _%g2688826896%_))
                                     '()
                                     _%g2656926831%_))
                        (cons 'slots:
                              (cons (cons (gx#datum->syntax '#f '@list) '())
                                    (cons 'system?:
                                          (cons '#t
                                                (cons 'type-descriptor:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote-syntax)
                          (cons _%g2657026832%_ '()))
                    (cons 'predicate:
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _%g2656826829%_ '()))
                                (cons 'accessors:
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  '())
                                            (cons 'mutators:
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@list)
                                                              '())
                                                        (cons 'unchecked-accessors:
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@list)
                                  '())
                            (cons 'unchecked-mutators:
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              '())
                                        (cons 'slot-offsets:
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (begin
                                                            (gx#syntax-check-splice-targets
                                                             _%g2657226834%_
                                                             _%g2657326835%_)
                                                            (foldr (lambda (_%g2688926899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g2689026902%_
                                    _%g2689126904%_)
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g2689026902%_
                                                           '()))
                                               (cons '::
                                                     (cons _%g2688926899%_
                                                           '()))))
                                   _%g2689126904%_))
                           '()
                           _%g2657226834%_
                           _%g2657326835%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gx#stx-source _%stx26560%_)))
                                         _%hd2663126823%_
                                         _%super2662926816%_
                                         _%hd2661626775%_
                                         _%hd2661326765%_
                                         _%field-offset2660526738%_
                                         _%field2659326700%_
                                         _%hd2658026659%_
                                         _%hd2657726649%_)
                                        (_%g2656626638%_ _%g2656726642%_))
                                    (_%g2656626638%_ _%g2656726642%_))))
                            (_%g2656626638%_ _%g2656726642%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop2662426797%_
                                                 _%target2662126791%_
                                                 '()))
                                              (_%g2656626638%_
                                               _%g2656726642%_)))))
                                    (_%g2656626638%_ _%g2656726642%_))))
                            (_%g2656626638%_ _%g2656726642%_))))
                    (_%g2656626638%_ _%g2656726642%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2656626638%_
                                                     _%g2656726642%_))))
                                            (_%g2656626638%_
                                             _%g2656726642%_))))
                                    (_%g2656626638%_ _%g2656726642%_)))))))
                (_%loop2660026719%_ _%target2659726713%_ '()))
              (_%g2656626638%_ _%g2656726642%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2656626638%_
                                             _%g2656726642%_))))
                                    (_%g2656626638%_ _%g2656726642%_)))))))
                (_%loop2658826681%_ _%target2658526675%_ '()))
              (_%g2656626638%_ _%g2656726642%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2656626638%_
                                             _%g2656726642%_))))
                                    (_%g2656626638%_ _%g2656726642%_))))
                            (_%g2656626638%_ _%g2656726642%_))))
                    (_%g2656626638%_ _%g2656726642%_)))))
        (_%g2656526907%_
         (list (class-type-id _%klass26562%_)
               (class-type-name _%klass26562%_)
               _%fields26563%_
               _%field-offsets26564%_
               _%stx26560%_)))))
  (define |gerbil/core/mop~MOP-5[:0:]#defsystem-class-info|
    (lambda (_%stx26961%_)
      (let* ((_%g2696426999%_
              (lambda (_%g2696526995%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g2696526995%_)))
             (_%g2696327142%_
              (lambda (_%g2696527003%_)
                (if (gx#stx-pair? _%g2696527003%_)
                    (let ((_%e2697027006%_ (gx#syntax-e _%g2696527003%_)))
                      (let ((_%hd2697127010%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2697027006%_)))
                            (_%tl2697227013%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2697027006%_))))
                        (if (gx#stx-pair? _%tl2697227013%_)
                            (let ((_%e2697327016%_
                                   (gx#syntax-e _%tl2697227013%_)))
                              (let ((_%hd2697427020%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2697327016%_)))
                                    (_%tl2697527023%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2697327016%_))))
                                (if (gx#stx-pair? _%tl2697527023%_)
                                    (let ((_%e2697627026%_
                                           (gx#syntax-e _%tl2697527023%_)))
                                      (let ((_%hd2697727030%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2697627026%_)))
                                            (_%tl2697827033%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2697627026%_))))
                                        (if (gx#stx-pair? _%tl2697827033%_)
                                            (let ((_%e2697927036%_
                                                   (gx#syntax-e
                                                    _%tl2697827033%_)))
                                              (let ((_%hd2698027040%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2697927036%_)))
                                                    (_%tl2698127043%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2697927036%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd2698027040%_)
                                                    (let ((_g27693_
                                                           (gx#syntax-split-splice
                                                            _%hd2698027040%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g27694_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g27693_)
                             (##values-length _g27693_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g27694_ 2)))
                      (error "Context expects 2 values" _g27694_)))
                (let ((_%target2698227046%_
                       (let () (declare (not safe)) (##values-ref _g27693_ 0)))
                      (_%tl2698427049%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g27693_ 1))))
                  (if (gx#stx-null? _%tl2698427049%_)
                      (letrec ((_%loop2698527052%_
                                (lambda (_%hd2698327056%_ _%super2698927059%_)
                                  (if (gx#stx-pair? _%hd2698327056%_)
                                      (let ((_%e2698627061%_
                                             (gx#syntax-e _%hd2698327056%_)))
                                        (let ((_%lp-hd2698727065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2698627061%_)))
                                              (_%lp-tl2698827068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2698627061%_))))
                                          (_%loop2698527052%_
                                           _%lp-tl2698827068%_
                                           (cons _%lp-hd2698727065%_
                                                 _%super2698927059%_))))
                                      (let ((_%super2699027071%_
                                             (reverse _%super2698927059%_)))
                                        (if (gx#stx-pair? _%tl2698127043%_)
                                            (let ((_%e2699127074%_
                                                   (gx#syntax-e
                                                    _%tl2698127043%_)))
                                              (let ((_%hd2699227078%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2699127074%_)))
                                                    (_%tl2699327081%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2699127074%_))))
                                                (if (gx#stx-null?
                                                     _%tl2699327081%_)
                                                    ((lambda (_%g2696627084%_
                                                              _%g2696727086%_
                                                              _%g2696827087%_
                                                              _%g2696927088%_)
                                                       (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2696927088%_)
                        (gx#identifier? _%g2696827087%_)
                        (andmap gx#identifier?
                                (foldr (lambda (_%g2711327116%_
                                                _%g2711427119%_)
                                         (cons _%g2711327116%_
                                               _%g2711427119%_))
                                       '()
                                       _%g2696727086%_))
                        (gx#identifier? _%g2696627084%_))
                   (let* ((_%klass27122%_ (gx#eval-syntax _%g2696827087%_))
                          (_%props27125%_
                           (class-type-properties _%klass27122%_))
                          (_%$e27130%_ (agetq 'system-type: _%props27125%_)))
                     (if _%$e27130%_
                         ((lambda (_%type27134%_)
                            (let ((_%fields27137%_
                                   (type-field-list _%type27134%_)))
                              (|gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
                               _%stx26961%_
                               _%klass27122%_
                               _%fields27137%_)))
                          _%$e27130%_)
                         (|gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
                          _%stx26961%_
                          _%klass27122%_)))
                   (_%g2696426999%_ _%g2696527003%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd2699227078%_
                                                     _%super2699027071%_
                                                     _%hd2697727030%_
                                                     _%hd2697427020%_)
                                                    (_%g2696426999%_
                                                     _%g2696527003%_))))
                                            (_%g2696426999%_
                                             _%g2696527003%_)))))))
                        (_%loop2698527052%_ _%target2698227046%_ '()))
                      (_%g2696426999%_ _%g2696527003%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2696426999%_
                                                     _%g2696527003%_))))
                                            (_%g2696426999%_
                                             _%g2696527003%_))))
                                    (_%g2696426999%_ _%g2696527003%_))))
                            (_%g2696426999%_ _%g2696527003%_))))
                    (_%g2696426999%_ _%g2696527003%_)))))
        (_%g2696327142%_ _%stx26961%_)))))
