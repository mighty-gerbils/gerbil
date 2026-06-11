(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
    (lambda (_%stx26962%_ _%klass26964%_)
      (|gerbil/core/mop~MOP-5[1]#emit-system-class|
       _%stx26962%_
       _%klass26964%_
       '()
       '())))
  (define |gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
    (lambda (_%stx26919%_ _%klass26921%_ _%fields26922%_)
      (let* ((_%fields26954%_
              (let _%loop26924%_ ((_%rest26927%_ _%fields26922%_)
                                  (_%normalized26929%_ '()))
                (if (pair? _%rest26927%_)
                    (let ((_%field26931%_
                           (let () (declare (not safe)) (##car _%rest26927%_)))
                          (_%rest26933%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest26927%_))))
                      (if (memq _%field26931%_ _%rest26933%_)
                          (let ((_%$e26935%_
                                 (agetq _%field26931%_ _%normalized26929%_)))
                            (if _%$e26935%_
                                (let ((_%normalized-field26942%_
                                       (make-symbol '"super-" _%$e26935%_)))
                                  (_%loop26924%_
                                   _%rest26933%_
                                   (cons (cons _%field26931%_
                                               _%normalized-field26942%_)
                                         _%normalized26929%_)))
                                (let ((_%normalized-field26947%_
                                       (make-symbol '"super-" _%field26931%_)))
                                  (_%loop26924%_
                                   _%rest26933%_
                                   (cons (cons _%field26931%_
                                               _%normalized-field26947%_)
                                         _%normalized26929%_)))))
                          (_%loop26924%_
                           _%rest26933%_
                           (cons (cons _%field26931%_ _%field26931%_)
                                 _%normalized26929%_))))
                    (foldl (lambda (_%n26950%_ _%r26952%_)
                             (cons (cdr _%n26950%_) _%r26952%_))
                           '()
                           _%normalized26929%_))))
             (_%field-offsets26957%_
              (let ((__tmp27714 (length _%fields26954%_)))
                (declare (not safe))
                (##iota __tmp27714 '1))))
        (|gerbil/core/mop~MOP-5[1]#emit-system-class|
         _%stx26919%_
         _%klass26921%_
         _%fields26954%_
         _%field-offsets26957%_))))
  (define |gerbil/core/mop~MOP-5[1]#emit-system-class|
    (lambda (_%stx26568%_
             _%klass26570%_
             _%fields26571%_
             _%field-offsets26572%_)
      (let* ((_%$%g2657426646%_
              (lambda (_%$%g2657526642%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g2657526642%_)))
             (_%$%g2657326915%_
              (lambda (_%$%g2657526650%_)
                (if (gx#stx-pair? _%$%g2657526650%_)
                    (let ((_%$%e2658426653%_ (gx#syntax-e _%$%g2657526650%_)))
                      (let ((_%$%hd2658526657%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2658426653%_)))
                            (_%$%tl2658626660%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2658426653%_))))
                        (if (gx#stx-pair? _%$%tl2658626660%_)
                            (let ((_%$%e2658726663%_
                                   (gx#syntax-e _%$%tl2658626660%_)))
                              (let ((_%$%hd2658826667%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2658726663%_)))
                                    (_%$%tl2658926670%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2658726663%_))))
                                (if (gx#stx-pair? _%$%tl2658926670%_)
                                    (let ((_%$%e2659026673%_
                                           (gx#syntax-e _%$%tl2658926670%_)))
                                      (let ((_%$%hd2659126677%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2659026673%_)))
                                            (_%$%tl2659226680%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2659026673%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%hd2659126677%_)
                                            (let ((_g27715_
                                                   (gx#syntax-split-splice
                                                    _%$%hd2659126677%_
                                                    '0)))
                                              (begin
                                                (let ((_g27716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27715_)
                                                             (##values-length
                                                              _g27715_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27716_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target2659326683%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27715_
                                                          0)))
                                                      (_%$%tl2659526686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27715_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2659526686%_)
                                                      (letrec ((_%$%loop2659626689%_
                                                                (lambda (_%$%hd2659426693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%field2660026696%_)
                          (if (gx#stx-pair? _%$%hd2659426693%_)
                              (let ((_%$%e2659726698%_
                                     (gx#syntax-e _%$%hd2659426693%_)))
                                (let ((_%$%lp-hd2659826702%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2659726698%_)))
                                      (_%$%lp-tl2659926705%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2659726698%_))))
                                  (_%$%loop2659626689%_
                                   _%$%lp-tl2659926705%_
                                   (cons _%$%lp-hd2659826702%_
                                         _%$%field2660026696%_))))
                              (let ((_%$%field2660126708%_
                                     (reverse _%$%field2660026696%_)))
                                (if (gx#stx-pair? _%$%tl2659226680%_)
                                    (let ((_%$%e2660226711%_
                                           (gx#syntax-e _%$%tl2659226680%_)))
                                      (let ((_%$%hd2660326715%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2660226711%_)))
                                            (_%$%tl2660426718%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2660226711%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%hd2660326715%_)
                                            (let ((_g27717_
                                                   (gx#syntax-split-splice
                                                    _%$%hd2660326715%_
                                                    '0)))
                                              (begin
                                                (let ((_g27718_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27717_)
                                                             (##values-length
                                                              _g27717_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27718_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target2660526721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27717_
                                                          0)))
                                                      (_%$%tl2660726724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27717_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2660726724%_)
                                                      (letrec ((_%$%loop2660826727%_
                                                                (lambda (_%$%hd2660626731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%field-offset2661226734%_)
                          (if (gx#stx-pair? _%$%hd2660626731%_)
                              (let ((_%$%e2660926736%_
                                     (gx#syntax-e _%$%hd2660626731%_)))
                                (let ((_%$%lp-hd2661026740%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2660926736%_)))
                                      (_%$%lp-tl2661126743%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2660926736%_))))
                                  (_%$%loop2660826727%_
                                   _%$%lp-tl2661126743%_
                                   (cons _%$%lp-hd2661026740%_
                                         _%$%field-offset2661226734%_))))
                              (let ((_%$%field-offset2661326746%_
                                     (reverse _%$%field-offset2661226734%_)))
                                (if (gx#stx-pair? _%$%tl2660426718%_)
                                    (let ((_%$%e2661426749%_
                                           (gx#syntax-e _%$%tl2660426718%_)))
                                      (let ((_%$%hd2661526753%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2661426749%_)))
                                            (_%$%tl2661626756%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2661426749%_))))
                                        (if (gx#stx-pair? _%$%hd2661526753%_)
                                            (let ((_%$%e2661726759%_
                                                   (gx#syntax-e
                                                    _%$%hd2661526753%_)))
                                              (let ((_%$%hd2661826763%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2661726759%_)))
                                                    (_%$%tl2661926766%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2661726759%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl2661926766%_)
                                                    (let ((_%$%e2662026769%_
                                                           (gx#syntax-e
                                                            _%$%tl2661926766%_)))
                                                      (let ((_%$%hd2662126773%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2662026769%_)))
                    (_%$%tl2662226776%_
                     (let () (declare (not safe)) (##cdr _%$%e2662026769%_))))
                (if (gx#stx-pair? _%$%tl2662226776%_)
                    (let ((_%$%e2662326779%_ (gx#syntax-e _%$%tl2662226776%_)))
                      (let ((_%$%hd2662426783%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2662326779%_)))
                            (_%$%tl2662526786%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2662326779%_))))
                        (if (gx#stx-pair? _%$%tl2662526786%_)
                            (let ((_%$%e2662626789%_
                                   (gx#syntax-e _%$%tl2662526786%_)))
                              (let ((_%$%hd2662726793%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2662626789%_)))
                                    (_%$%tl2662826796%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2662626789%_))))
                                (if (gx#stx-pair/null? _%$%hd2662726793%_)
                                    (let ((_g27719_
                                           (gx#syntax-split-splice
                                            _%$%hd2662726793%_
                                            '0)))
                                      (begin
                                        (let ((_g27720_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g27719_)
                                                     (##values-length _g27719_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g27720_ 2)))
                                              (error "Context expects 2 values"
                                                     _g27720_)))
                                        (let ((_%$%target2662926799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g27719_ 0)))
                                              (_%$%tl2663126802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g27719_ 1))))
                                          (if (gx#stx-null? _%$%tl2663126802%_)
                                              (letrec ((_%$%loop2663226805%_
                                                        (lambda (_%$%hd2663026809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%super2663626812%_)
                  (if (gx#stx-pair? _%$%hd2663026809%_)
                      (let ((_%$%e2663326814%_
                             (gx#syntax-e _%$%hd2663026809%_)))
                        (let ((_%$%lp-hd2663426818%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e2663326814%_)))
                              (_%$%lp-tl2663526821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e2663326814%_))))
                          (_%$%loop2663226805%_
                           _%$%lp-tl2663526821%_
                           (cons _%$%lp-hd2663426818%_
                                 _%$%super2663626812%_))))
                      (let ((_%$%super2663726824%_
                             (reverse _%$%super2663626812%_)))
                        (if (gx#stx-pair? _%$%tl2662826796%_)
                            (let ((_%$%e2663826827%_
                                   (gx#syntax-e _%$%tl2662826796%_)))
                              (let ((_%$%hd2663926831%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2663826827%_)))
                                    (_%$%tl2664026834%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2663826827%_))))
                                (if (gx#stx-null? _%$%tl2664026834%_)
                                    (if (gx#stx-null? _%$%tl2661626756%_)
                                        (gx#stx-wrap-source
                                         (cons (gx#datum->syntax
                                                '#f
                                                'defsyntax)
                                               (cons _%$%hd2662126773%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-type-info)
                         (cons 'id:
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%hd2658526657%_ '()))
                                     (cons 'name:
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _%$%hd2658826667%_
                                                             '()))
                                                 (cons 'super:
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@list)
                           (foldr (lambda (_%$%g2689526901%_ _%$%g2689626904%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%$%g2689526901%_ '()))
                                          _%$%g2689626904%_))
                                  '()
                                  _%$%super2663726824%_))
                     (cons 'slots:
                           (cons (cons (gx#datum->syntax '#f '@list) '())
                                 (cons 'system?:
                                       (cons '#t
                                             (cons 'type-descriptor:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _%$%hd2662426783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons 'predicate:
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%$%hd2663926831%_ '()))
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
                                                          _%$%field-offset2661326746%_
                                                          _%$%field2660126708%_)
                                                         (foldr (lambda (_%$%g2689726907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g2689826910%_
                                 _%$%g2689926912%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%$%g2689826910%_ '()))
                                            (cons '::
                                                  (cons _%$%g2689726907%_
                                                        '()))))
                                _%$%g2689926912%_))
                        '()
                        _%$%field-offset2661326746%_
                        _%$%field2660126708%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (gx#stx-source _%stx26568%_))
                                        (_%$%g2657426646%_ _%$%g2657526650%_))
                                    (_%$%g2657426646%_ _%$%g2657526650%_))))
                            (_%$%g2657426646%_ _%$%g2657526650%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop2663226805%_
                                                 _%$%target2662926799%_
                                                 '()))
                                              (_%$%g2657426646%_
                                               _%$%g2657526650%_)))))
                                    (_%$%g2657426646%_ _%$%g2657526650%_))))
                            (_%$%g2657426646%_ _%$%g2657526650%_))))
                    (_%$%g2657426646%_ _%$%g2657526650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2657426646%_
                                                     _%$%g2657526650%_))))
                                            (_%$%g2657426646%_
                                             _%$%g2657526650%_))))
                                    (_%$%g2657426646%_ _%$%g2657526650%_)))))))
                (_%$%loop2660826727%_ _%$%target2660526721%_ '()))
              (_%$%g2657426646%_ _%$%g2657526650%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2657426646%_
                                             _%$%g2657526650%_))))
                                    (_%$%g2657426646%_ _%$%g2657526650%_)))))))
                (_%$%loop2659626689%_ _%$%target2659326683%_ '()))
              (_%$%g2657426646%_ _%$%g2657526650%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2657426646%_
                                             _%$%g2657526650%_))))
                                    (_%$%g2657426646%_ _%$%g2657526650%_))))
                            (_%$%g2657426646%_ _%$%g2657526650%_))))
                    (_%$%g2657426646%_ _%$%g2657526650%_)))))
        (_%$%g2657326915%_
         (list (class-type-id _%klass26570%_)
               (class-type-name _%klass26570%_)
               _%fields26571%_
               _%field-offsets26572%_
               _%stx26568%_)))))
  (define |gerbil/core/mop~MOP-5[:0:]#defsystem-class-info|
    (lambda (_%stx26969%_)
      (let* ((_%$%g2697227007%_
              (lambda (_%$%g2697327003%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g2697327003%_)))
             (_%$%g2697127150%_
              (lambda (_%$%g2697327011%_)
                (if (gx#stx-pair? _%$%g2697327011%_)
                    (let ((_%$%e2697827014%_ (gx#syntax-e _%$%g2697327011%_)))
                      (let ((_%$%hd2697927018%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2697827014%_)))
                            (_%$%tl2698027021%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2697827014%_))))
                        (if (gx#stx-pair? _%$%tl2698027021%_)
                            (let ((_%$%e2698127024%_
                                   (gx#syntax-e _%$%tl2698027021%_)))
                              (let ((_%$%hd2698227028%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2698127024%_)))
                                    (_%$%tl2698327031%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2698127024%_))))
                                (if (gx#stx-pair? _%$%tl2698327031%_)
                                    (let ((_%$%e2698427034%_
                                           (gx#syntax-e _%$%tl2698327031%_)))
                                      (let ((_%$%hd2698527038%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2698427034%_)))
                                            (_%$%tl2698627041%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2698427034%_))))
                                        (if (gx#stx-pair? _%$%tl2698627041%_)
                                            (let ((_%$%e2698727044%_
                                                   (gx#syntax-e
                                                    _%$%tl2698627041%_)))
                                              (let ((_%$%hd2698827048%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2698727044%_)))
                                                    (_%$%tl2698927051%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2698727044%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%hd2698827048%_)
                                                    (let ((_g27721_
                                                           (gx#syntax-split-splice
                                                            _%$%hd2698827048%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g27722_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g27721_)
                             (##values-length _g27721_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g27722_ 2)))
                      (error "Context expects 2 values" _g27722_)))
                (let ((_%$%target2699027054%_
                       (let () (declare (not safe)) (##values-ref _g27721_ 0)))
                      (_%$%tl2699227057%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g27721_ 1))))
                  (if (gx#stx-null? _%$%tl2699227057%_)
                      (letrec ((_%$%loop2699327060%_
                                (lambda (_%$%hd2699127064%_
                                         _%$%super2699727067%_)
                                  (if (gx#stx-pair? _%$%hd2699127064%_)
                                      (let ((_%$%e2699427069%_
                                             (gx#syntax-e _%$%hd2699127064%_)))
                                        (let ((_%$%lp-hd2699527073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2699427069%_)))
                                              (_%$%lp-tl2699627076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2699427069%_))))
                                          (_%$%loop2699327060%_
                                           _%$%lp-tl2699627076%_
                                           (cons _%$%lp-hd2699527073%_
                                                 _%$%super2699727067%_))))
                                      (let ((_%$%super2699827079%_
                                             (reverse _%$%super2699727067%_)))
                                        (if (gx#stx-pair? _%$%tl2698927051%_)
                                            (let ((_%$%e2699927082%_
                                                   (gx#syntax-e
                                                    _%$%tl2698927051%_)))
                                              (let ((_%$%hd2700027086%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2699927082%_)))
                                                    (_%$%tl2700127089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2699927082%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl2700127089%_)
                                                    (if (and (gx#identifier?
                                                              _%$%hd2698227028%_)
                                                             (gx#identifier?
                                                              _%$%hd2698527038%_)
                                                             (andmap gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_%$%g2712127124%_
                                             _%$%g2712227127%_)
                                      (cons _%$%g2712127124%_
                                            _%$%g2712227127%_))
                                    '()
                                    _%$%super2699827079%_))
                     (gx#identifier? _%$%hd2700027086%_))
                (let* ((_%klass27130%_ (gx#eval-syntax _%$%hd2698527038%_))
                       (_%props27133%_ (class-type-properties _%klass27130%_))
                       (_%$e27138%_ (agetq 'system-type: _%props27133%_)))
                  (if _%$e27138%_
                      (let ((_%fields27145%_ (type-field-list _%$e27138%_)))
                        (|gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
                         _%stx26969%_
                         _%klass27130%_
                         _%fields27145%_))
                      (|gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
                       _%stx26969%_
                       _%klass27130%_)))
                (_%$%g2697227007%_ _%$%g2697327011%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2697227007%_
                                                     _%$%g2697327011%_))))
                                            (_%$%g2697227007%_
                                             _%$%g2697327011%_)))))))
                        (_%$%loop2699327060%_ _%$%target2699027054%_ '()))
                      (_%$%g2697227007%_ _%$%g2697327011%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2697227007%_
                                                     _%$%g2697327011%_))))
                                            (_%$%g2697227007%_
                                             _%$%g2697327011%_))))
                                    (_%$%g2697227007%_ _%$%g2697327011%_))))
                            (_%$%g2697227007%_ _%$%g2697327011%_))))
                    (_%$%g2697227007%_ _%$%g2697327011%_)))))
        (_%$%g2697127150%_ _%stx26969%_)))))
