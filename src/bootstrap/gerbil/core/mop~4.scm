(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
    (lambda (_%stx26965%_ _%klass26967%_)
      (|gerbil/core/mop~MOP-5[1]#emit-system-class|
       _%stx26965%_
       _%klass26967%_
       '()
       '())))
  (define |gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
    (lambda (_%stx26922%_ _%klass26924%_ _%fields26925%_)
      (let* ((_%fields26957%_
              (let _%loop26927%_ ((_%rest26930%_ _%fields26925%_)
                                  (_%normalized26932%_ '()))
                (if (pair? _%rest26930%_)
                    (let ((_%field26934%_
                           (let () (declare (not safe)) (##car _%rest26930%_)))
                          (_%rest26936%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest26930%_))))
                      (if (memq _%field26934%_ _%rest26936%_)
                          (let ((_%$e26938%_
                                 (agetq _%field26934%_ _%normalized26932%_)))
                            (if _%$e26938%_
                                (let ((_%normalized-field26945%_
                                       (make-symbol '"super-" _%$e26938%_)))
                                  (_%loop26927%_
                                   _%rest26936%_
                                   (cons (cons _%field26934%_
                                               _%normalized-field26945%_)
                                         _%normalized26932%_)))
                                (let ((_%normalized-field26950%_
                                       (make-symbol '"super-" _%field26934%_)))
                                  (_%loop26927%_
                                   _%rest26936%_
                                   (cons (cons _%field26934%_
                                               _%normalized-field26950%_)
                                         _%normalized26932%_)))))
                          (_%loop26927%_
                           _%rest26936%_
                           (cons (cons _%field26934%_ _%field26934%_)
                                 _%normalized26932%_))))
                    (foldl (lambda (_%n26953%_ _%r26955%_)
                             (cons (cdr _%n26953%_) _%r26955%_))
                           '()
                           _%normalized26932%_))))
             (_%field-offsets26960%_
              (let ((__tmp27717 (length _%fields26957%_)))
                (declare (not safe))
                (##iota __tmp27717 '1))))
        (|gerbil/core/mop~MOP-5[1]#emit-system-class|
         _%stx26922%_
         _%klass26924%_
         _%fields26957%_
         _%field-offsets26960%_))))
  (define |gerbil/core/mop~MOP-5[1]#emit-system-class|
    (lambda (_%stx26571%_
             _%klass26573%_
             _%fields26574%_
             _%field-offsets26575%_)
      (let* ((_%$%g2657726649%_
              (lambda (_%$%g2657826645%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g2657826645%_)))
             (_%$%g2657626918%_
              (lambda (_%$%g2657826653%_)
                (if (gx#stx-pair? _%$%g2657826653%_)
                    (let ((_%$%e2658726656%_ (gx#syntax-e _%$%g2657826653%_)))
                      (let ((_%$%hd2658826660%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2658726656%_)))
                            (_%$%tl2658926663%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2658726656%_))))
                        (if (gx#stx-pair? _%$%tl2658926663%_)
                            (let ((_%$%e2659026666%_
                                   (gx#syntax-e _%$%tl2658926663%_)))
                              (let ((_%$%hd2659126670%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2659026666%_)))
                                    (_%$%tl2659226673%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2659026666%_))))
                                (if (gx#stx-pair? _%$%tl2659226673%_)
                                    (let ((_%$%e2659326676%_
                                           (gx#syntax-e _%$%tl2659226673%_)))
                                      (let ((_%$%hd2659426680%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2659326676%_)))
                                            (_%$%tl2659526683%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2659326676%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%hd2659426680%_)
                                            (let ((_g27718_
                                                   (gx#syntax-split-splice
                                                    _%$%hd2659426680%_
                                                    '0)))
                                              (begin
                                                (let ((_g27719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27718_)
                                                             (##values-length
                                                              _g27718_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27719_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target2659626686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27718_
                                                          0)))
                                                      (_%$%tl2659826689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27718_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2659826689%_)
                                                      (letrec ((_%$%loop2659926692%_
                                                                (lambda (_%$%hd2659726696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%field2660326699%_)
                          (if (gx#stx-pair? _%$%hd2659726696%_)
                              (let ((_%$%e2660026701%_
                                     (gx#syntax-e _%$%hd2659726696%_)))
                                (let ((_%$%lp-hd2660126705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2660026701%_)))
                                      (_%$%lp-tl2660226708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2660026701%_))))
                                  (_%$%loop2659926692%_
                                   _%$%lp-tl2660226708%_
                                   (cons _%$%lp-hd2660126705%_
                                         _%$%field2660326699%_))))
                              (let ((_%$%field2660426711%_
                                     (reverse _%$%field2660326699%_)))
                                (if (gx#stx-pair? _%$%tl2659526683%_)
                                    (let ((_%$%e2660526714%_
                                           (gx#syntax-e _%$%tl2659526683%_)))
                                      (let ((_%$%hd2660626718%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2660526714%_)))
                                            (_%$%tl2660726721%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2660526714%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%hd2660626718%_)
                                            (let ((_g27720_
                                                   (gx#syntax-split-splice
                                                    _%$%hd2660626718%_
                                                    '0)))
                                              (begin
                                                (let ((_g27721_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27720_)
                                                             (##values-length
                                                              _g27720_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27721_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target2660826724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27720_
                                                          0)))
                                                      (_%$%tl2661026727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27720_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2661026727%_)
                                                      (letrec ((_%$%loop2661126730%_
                                                                (lambda (_%$%hd2660926734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%field-offset2661526737%_)
                          (if (gx#stx-pair? _%$%hd2660926734%_)
                              (let ((_%$%e2661226739%_
                                     (gx#syntax-e _%$%hd2660926734%_)))
                                (let ((_%$%lp-hd2661326743%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2661226739%_)))
                                      (_%$%lp-tl2661426746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2661226739%_))))
                                  (_%$%loop2661126730%_
                                   _%$%lp-tl2661426746%_
                                   (cons _%$%lp-hd2661326743%_
                                         _%$%field-offset2661526737%_))))
                              (let ((_%$%field-offset2661626749%_
                                     (reverse _%$%field-offset2661526737%_)))
                                (if (gx#stx-pair? _%$%tl2660726721%_)
                                    (let ((_%$%e2661726752%_
                                           (gx#syntax-e _%$%tl2660726721%_)))
                                      (let ((_%$%hd2661826756%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2661726752%_)))
                                            (_%$%tl2661926759%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2661726752%_))))
                                        (if (gx#stx-pair? _%$%hd2661826756%_)
                                            (let ((_%$%e2662026762%_
                                                   (gx#syntax-e
                                                    _%$%hd2661826756%_)))
                                              (let ((_%$%hd2662126766%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2662026762%_)))
                                                    (_%$%tl2662226769%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2662026762%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl2662226769%_)
                                                    (let ((_%$%e2662326772%_
                                                           (gx#syntax-e
                                                            _%$%tl2662226769%_)))
                                                      (let ((_%$%hd2662426776%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2662326772%_)))
                    (_%$%tl2662526779%_
                     (let () (declare (not safe)) (##cdr _%$%e2662326772%_))))
                (if (gx#stx-pair? _%$%tl2662526779%_)
                    (let ((_%$%e2662626782%_ (gx#syntax-e _%$%tl2662526779%_)))
                      (let ((_%$%hd2662726786%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2662626782%_)))
                            (_%$%tl2662826789%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2662626782%_))))
                        (if (gx#stx-pair? _%$%tl2662826789%_)
                            (let ((_%$%e2662926792%_
                                   (gx#syntax-e _%$%tl2662826789%_)))
                              (let ((_%$%hd2663026796%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2662926792%_)))
                                    (_%$%tl2663126799%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2662926792%_))))
                                (if (gx#stx-pair/null? _%$%hd2663026796%_)
                                    (let ((_g27722_
                                           (gx#syntax-split-splice
                                            _%$%hd2663026796%_
                                            '0)))
                                      (begin
                                        (let ((_g27723_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g27722_)
                                                     (##values-length _g27722_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g27723_ 2)))
                                              (error "Context expects 2 values"
                                                     _g27723_)))
                                        (let ((_%$%target2663226802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g27722_ 0)))
                                              (_%$%tl2663426805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g27722_ 1))))
                                          (if (gx#stx-null? _%$%tl2663426805%_)
                                              (letrec ((_%$%loop2663526808%_
                                                        (lambda (_%$%hd2663326812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%super2663926815%_)
                  (if (gx#stx-pair? _%$%hd2663326812%_)
                      (let ((_%$%e2663626817%_
                             (gx#syntax-e _%$%hd2663326812%_)))
                        (let ((_%$%lp-hd2663726821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e2663626817%_)))
                              (_%$%lp-tl2663826824%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e2663626817%_))))
                          (_%$%loop2663526808%_
                           _%$%lp-tl2663826824%_
                           (cons _%$%lp-hd2663726821%_
                                 _%$%super2663926815%_))))
                      (let ((_%$%super2664026827%_
                             (reverse _%$%super2663926815%_)))
                        (if (gx#stx-pair? _%$%tl2663126799%_)
                            (let ((_%$%e2664126830%_
                                   (gx#syntax-e _%$%tl2663126799%_)))
                              (let ((_%$%hd2664226834%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2664126830%_)))
                                    (_%$%tl2664326837%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2664126830%_))))
                                (if (gx#stx-null? _%$%tl2664326837%_)
                                    (if (gx#stx-null? _%$%tl2661926759%_)
                                        (gx#stx-wrap-source
                                         (cons (gx#datum->syntax
                                                '#f
                                                'defsyntax)
                                               (cons _%$%hd2662426776%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-type-info)
                         (cons 'id:
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%hd2658826660%_ '()))
                                     (cons 'name:
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _%$%hd2659126670%_
                                                             '()))
                                                 (cons 'super:
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@list)
                           (foldr (lambda (_%$%g2689826904%_ _%$%g2689926907%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%$%g2689826904%_ '()))
                                          _%$%g2689926907%_))
                                  '()
                                  _%$%super2664026827%_))
                     (cons 'slots:
                           (cons (cons (gx#datum->syntax '#f '@list) '())
                                 (cons 'system?:
                                       (cons '#t
                                             (cons 'type-descriptor:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _%$%hd2662726786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons 'predicate:
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%$%hd2664226834%_ '()))
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
                               (cons (cons (gx#datum->syntax '#f '@list) '())
                                     (cons 'slot-offsets:
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%$%field-offset2661626749%_
                                                          _%$%field2660426711%_)
                                                         (foldr (lambda (_%$%g2690026910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g2690126913%_
                                 _%$%g2690226915%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%$%g2690126913%_ '()))
                                            (cons '::
                                                  (cons _%$%g2690026910%_
                                                        '()))))
                                _%$%g2690226915%_))
                        '()
                        _%$%field-offset2661626749%_
                        _%$%field2660426711%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (gx#stx-source _%stx26571%_))
                                        (_%$%g2657726649%_ _%$%g2657826653%_))
                                    (_%$%g2657726649%_ _%$%g2657826653%_))))
                            (_%$%g2657726649%_ _%$%g2657826653%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop2663526808%_
                                                 _%$%target2663226802%_
                                                 '()))
                                              (_%$%g2657726649%_
                                               _%$%g2657826653%_)))))
                                    (_%$%g2657726649%_ _%$%g2657826653%_))))
                            (_%$%g2657726649%_ _%$%g2657826653%_))))
                    (_%$%g2657726649%_ _%$%g2657826653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2657726649%_
                                                     _%$%g2657826653%_))))
                                            (_%$%g2657726649%_
                                             _%$%g2657826653%_))))
                                    (_%$%g2657726649%_ _%$%g2657826653%_)))))))
                (_%$%loop2661126730%_ _%$%target2660826724%_ '()))
              (_%$%g2657726649%_ _%$%g2657826653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2657726649%_
                                             _%$%g2657826653%_))))
                                    (_%$%g2657726649%_ _%$%g2657826653%_)))))))
                (_%$%loop2659926692%_ _%$%target2659626686%_ '()))
              (_%$%g2657726649%_ _%$%g2657826653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2657726649%_
                                             _%$%g2657826653%_))))
                                    (_%$%g2657726649%_ _%$%g2657826653%_))))
                            (_%$%g2657726649%_ _%$%g2657826653%_))))
                    (_%$%g2657726649%_ _%$%g2657826653%_)))))
        (_%$%g2657626918%_
         (list (class-type-id _%klass26573%_)
               (class-type-name _%klass26573%_)
               _%fields26574%_
               _%field-offsets26575%_
               _%stx26571%_)))))
  (define |gerbil/core/mop~MOP-5[:0:]#defsystem-class-info|
    (lambda (_%stx26972%_)
      (let* ((_%$%g2697527010%_
              (lambda (_%$%g2697627006%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g2697627006%_)))
             (_%$%g2697427153%_
              (lambda (_%$%g2697627014%_)
                (if (gx#stx-pair? _%$%g2697627014%_)
                    (let ((_%$%e2698127017%_ (gx#syntax-e _%$%g2697627014%_)))
                      (let ((_%$%hd2698227021%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2698127017%_)))
                            (_%$%tl2698327024%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2698127017%_))))
                        (if (gx#stx-pair? _%$%tl2698327024%_)
                            (let ((_%$%e2698427027%_
                                   (gx#syntax-e _%$%tl2698327024%_)))
                              (let ((_%$%hd2698527031%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2698427027%_)))
                                    (_%$%tl2698627034%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2698427027%_))))
                                (if (gx#stx-pair? _%$%tl2698627034%_)
                                    (let ((_%$%e2698727037%_
                                           (gx#syntax-e _%$%tl2698627034%_)))
                                      (let ((_%$%hd2698827041%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2698727037%_)))
                                            (_%$%tl2698927044%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2698727037%_))))
                                        (if (gx#stx-pair? _%$%tl2698927044%_)
                                            (let ((_%$%e2699027047%_
                                                   (gx#syntax-e
                                                    _%$%tl2698927044%_)))
                                              (let ((_%$%hd2699127051%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2699027047%_)))
                                                    (_%$%tl2699227054%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2699027047%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%hd2699127051%_)
                                                    (let ((_g27724_
                                                           (gx#syntax-split-splice
                                                            _%$%hd2699127051%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g27725_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g27724_)
                             (##values-length _g27724_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g27725_ 2)))
                      (error "Context expects 2 values" _g27725_)))
                (let ((_%$%target2699327057%_
                       (let () (declare (not safe)) (##values-ref _g27724_ 0)))
                      (_%$%tl2699527060%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g27724_ 1))))
                  (if (gx#stx-null? _%$%tl2699527060%_)
                      (letrec ((_%$%loop2699627063%_
                                (lambda (_%$%hd2699427067%_
                                         _%$%super2700027070%_)
                                  (if (gx#stx-pair? _%$%hd2699427067%_)
                                      (let ((_%$%e2699727072%_
                                             (gx#syntax-e _%$%hd2699427067%_)))
                                        (let ((_%$%lp-hd2699827076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2699727072%_)))
                                              (_%$%lp-tl2699927079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2699727072%_))))
                                          (_%$%loop2699627063%_
                                           _%$%lp-tl2699927079%_
                                           (cons _%$%lp-hd2699827076%_
                                                 _%$%super2700027070%_))))
                                      (let ((_%$%super2700127082%_
                                             (reverse _%$%super2700027070%_)))
                                        (if (gx#stx-pair? _%$%tl2699227054%_)
                                            (let ((_%$%e2700227085%_
                                                   (gx#syntax-e
                                                    _%$%tl2699227054%_)))
                                              (let ((_%$%hd2700327089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2700227085%_)))
                                                    (_%$%tl2700427092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2700227085%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl2700427092%_)
                                                    (if (and (gx#identifier?
                                                              _%$%hd2698527031%_)
                                                             (gx#identifier?
                                                              _%$%hd2698827041%_)
                                                             (andmap gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_%$%g2712427127%_
                                             _%$%g2712527130%_)
                                      (cons _%$%g2712427127%_
                                            _%$%g2712527130%_))
                                    '()
                                    _%$%super2700127082%_))
                     (gx#identifier? _%$%hd2700327089%_))
                (let* ((_%klass27133%_ (gx#eval-syntax _%$%hd2698827041%_))
                       (_%props27136%_ (class-type-properties _%klass27133%_))
                       (_%$e27141%_ (agetq 'system-type: _%props27136%_)))
                  (if _%$e27141%_
                      (let ((_%fields27148%_ (type-field-list _%$e27141%_)))
                        (|gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
                         _%stx26972%_
                         _%klass27133%_
                         _%fields27148%_))
                      (|gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
                       _%stx26972%_
                       _%klass27133%_)))
                (_%$%g2697527010%_ _%$%g2697627014%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2697527010%_
                                                     _%$%g2697627014%_))))
                                            (_%$%g2697527010%_
                                             _%$%g2697627014%_)))))))
                        (_%$%loop2699627063%_ _%$%target2699327057%_ '()))
                      (_%$%g2697527010%_ _%$%g2697627014%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2697527010%_
                                                     _%$%g2697627014%_))))
                                            (_%$%g2697527010%_
                                             _%$%g2697627014%_))))
                                    (_%$%g2697527010%_ _%$%g2697627014%_))))
                            (_%$%g2697527010%_ _%$%g2697627014%_))))
                    (_%$%g2697527010%_ _%$%g2697627014%_)))))
        (_%$%g2697427153%_ _%stx26972%_)))))
