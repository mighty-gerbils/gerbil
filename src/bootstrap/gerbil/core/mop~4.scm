(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
    (lambda (_%stx26956%_ _%klass26958%_)
      (|gerbil/core/mop~MOP-5[1]#emit-system-class|
       _%stx26956%_
       _%klass26958%_
       '()
       '())))
  (define |gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
    (lambda (_%stx26913%_ _%klass26915%_ _%fields26916%_)
      (let* ((_%fields26948%_
              (let _%loop26918%_ ((_%rest26921%_ _%fields26916%_)
                                  (_%normalized26923%_ '()))
                (if (pair? _%rest26921%_)
                    (let ((_%field26925%_
                           (let () (declare (not safe)) (##car _%rest26921%_)))
                          (_%rest26927%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest26921%_))))
                      (if (memq _%field26925%_ _%rest26927%_)
                          (let ((_%$e26929%_
                                 (agetq _%field26925%_ _%normalized26923%_)))
                            (if _%$e26929%_
                                (let ((_%normalized-field26936%_
                                       (make-symbol '"super-" _%$e26929%_)))
                                  (_%loop26918%_
                                   _%rest26927%_
                                   (cons (cons _%field26925%_
                                               _%normalized-field26936%_)
                                         _%normalized26923%_)))
                                (let ((_%normalized-field26941%_
                                       (make-symbol '"super-" _%field26925%_)))
                                  (_%loop26918%_
                                   _%rest26927%_
                                   (cons (cons _%field26925%_
                                               _%normalized-field26941%_)
                                         _%normalized26923%_)))))
                          (_%loop26918%_
                           _%rest26927%_
                           (cons (cons _%field26925%_ _%field26925%_)
                                 _%normalized26923%_))))
                    (foldl (lambda (_%n26944%_ _%r26946%_)
                             (cons (cdr _%n26944%_) _%r26946%_))
                           '()
                           _%normalized26923%_))))
             (_%field-offsets26951%_
              (let ((__tmp27708 (length _%fields26948%_)))
                (declare (not safe))
                (##iota __tmp27708 '1))))
        (|gerbil/core/mop~MOP-5[1]#emit-system-class|
         _%stx26913%_
         _%klass26915%_
         _%fields26948%_
         _%field-offsets26951%_))))
  (define |gerbil/core/mop~MOP-5[1]#emit-system-class|
    (lambda (_%stx26562%_
             _%klass26564%_
             _%fields26565%_
             _%field-offsets26566%_)
      (let* ((_%g2656826640%_
              (lambda (_%g2656926636%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g2656926636%_)))
             (_%g2656726909%_
              (lambda (_%g2656926644%_)
                (if (gx#stx-pair? _%g2656926644%_)
                    (let ((_%e2657826647%_ (gx#syntax-e _%g2656926644%_)))
                      (let ((_%hd2657926651%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2657826647%_)))
                            (_%tl2658026654%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2657826647%_))))
                        (if (gx#stx-pair? _%tl2658026654%_)
                            (let ((_%e2658126657%_
                                   (gx#syntax-e _%tl2658026654%_)))
                              (let ((_%hd2658226661%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2658126657%_)))
                                    (_%tl2658326664%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2658126657%_))))
                                (if (gx#stx-pair? _%tl2658326664%_)
                                    (let ((_%e2658426667%_
                                           (gx#syntax-e _%tl2658326664%_)))
                                      (let ((_%hd2658526671%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2658426667%_)))
                                            (_%tl2658626674%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2658426667%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd2658526671%_)
                                            (let ((_g27709_
                                                   (gx#syntax-split-splice
                                                    _%hd2658526671%_
                                                    '0)))
                                              (begin
                                                (let ((_g27710_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27709_)
                                                             (##values-length
                                                              _g27709_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27710_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2658726677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27709_
                                                          0)))
                                                      (_%tl2658926680%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27709_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2658926680%_)
                                                      (letrec ((_%loop2659026683%_
                                                                (lambda (_%hd2658826687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%field2659426690%_)
                          (if (gx#stx-pair? _%hd2658826687%_)
                              (let ((_%e2659126692%_
                                     (gx#syntax-e _%hd2658826687%_)))
                                (let ((_%lp-hd2659226696%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2659126692%_)))
                                      (_%lp-tl2659326699%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2659126692%_))))
                                  (_%loop2659026683%_
                                   _%lp-tl2659326699%_
                                   (cons _%lp-hd2659226696%_
                                         _%field2659426690%_))))
                              (let ((_%field2659526702%_
                                     (reverse _%field2659426690%_)))
                                (if (gx#stx-pair? _%tl2658626674%_)
                                    (let ((_%e2659626705%_
                                           (gx#syntax-e _%tl2658626674%_)))
                                      (let ((_%hd2659726709%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2659626705%_)))
                                            (_%tl2659826712%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2659626705%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd2659726709%_)
                                            (let ((_g27711_
                                                   (gx#syntax-split-splice
                                                    _%hd2659726709%_
                                                    '0)))
                                              (begin
                                                (let ((_g27712_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27711_)
                                                             (##values-length
                                                              _g27711_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27712_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2659926715%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27711_
                                                          0)))
                                                      (_%tl2660126718%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27711_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2660126718%_)
                                                      (letrec ((_%loop2660226721%_
                                                                (lambda (_%hd2660026725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%field-offset2660626728%_)
                          (if (gx#stx-pair? _%hd2660026725%_)
                              (let ((_%e2660326730%_
                                     (gx#syntax-e _%hd2660026725%_)))
                                (let ((_%lp-hd2660426734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2660326730%_)))
                                      (_%lp-tl2660526737%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2660326730%_))))
                                  (_%loop2660226721%_
                                   _%lp-tl2660526737%_
                                   (cons _%lp-hd2660426734%_
                                         _%field-offset2660626728%_))))
                              (let ((_%field-offset2660726740%_
                                     (reverse _%field-offset2660626728%_)))
                                (if (gx#stx-pair? _%tl2659826712%_)
                                    (let ((_%e2660826743%_
                                           (gx#syntax-e _%tl2659826712%_)))
                                      (let ((_%hd2660926747%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2660826743%_)))
                                            (_%tl2661026750%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2660826743%_))))
                                        (if (gx#stx-pair? _%hd2660926747%_)
                                            (let ((_%e2661126753%_
                                                   (gx#syntax-e
                                                    _%hd2660926747%_)))
                                              (let ((_%hd2661226757%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2661126753%_)))
                                                    (_%tl2661326760%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2661126753%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2661326760%_)
                                                    (let ((_%e2661426763%_
                                                           (gx#syntax-e
                                                            _%tl2661326760%_)))
                                                      (let ((_%hd2661526767%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2661426763%_)))
                    (_%tl2661626770%_
                     (let () (declare (not safe)) (##cdr _%e2661426763%_))))
                (if (gx#stx-pair? _%tl2661626770%_)
                    (let ((_%e2661726773%_ (gx#syntax-e _%tl2661626770%_)))
                      (let ((_%hd2661826777%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2661726773%_)))
                            (_%tl2661926780%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2661726773%_))))
                        (if (gx#stx-pair? _%tl2661926780%_)
                            (let ((_%e2662026783%_
                                   (gx#syntax-e _%tl2661926780%_)))
                              (let ((_%hd2662126787%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2662026783%_)))
                                    (_%tl2662226790%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2662026783%_))))
                                (if (gx#stx-pair/null? _%hd2662126787%_)
                                    (let ((_g27713_
                                           (gx#syntax-split-splice
                                            _%hd2662126787%_
                                            '0)))
                                      (begin
                                        (let ((_g27714_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g27713_)
                                                     (##values-length _g27713_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g27714_ 2)))
                                              (error "Context expects 2 values"
                                                     _g27714_)))
                                        (let ((_%target2662326793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g27713_ 0)))
                                              (_%tl2662526796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g27713_ 1))))
                                          (if (gx#stx-null? _%tl2662526796%_)
                                              (letrec ((_%loop2662626799%_
                                                        (lambda (_%hd2662426803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%super2663026806%_)
                  (if (gx#stx-pair? _%hd2662426803%_)
                      (let ((_%e2662726808%_ (gx#syntax-e _%hd2662426803%_)))
                        (let ((_%lp-hd2662826812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2662726808%_)))
                              (_%lp-tl2662926815%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2662726808%_))))
                          (_%loop2662626799%_
                           _%lp-tl2662926815%_
                           (cons _%lp-hd2662826812%_ _%super2663026806%_))))
                      (let ((_%super2663126818%_
                             (reverse _%super2663026806%_)))
                        (if (gx#stx-pair? _%tl2662226790%_)
                            (let ((_%e2663226821%_
                                   (gx#syntax-e _%tl2662226790%_)))
                              (let ((_%hd2663326825%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2663226821%_)))
                                    (_%tl2663426828%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2663226821%_))))
                                (if (gx#stx-null? _%tl2663426828%_)
                                    (if (gx#stx-null? _%tl2661026750%_)
                                        (gx#stx-wrap-source
                                         (cons (gx#datum->syntax
                                                '#f
                                                'defsyntax)
                                               (cons _%hd2661526767%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-type-info)
                         (cons 'id:
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%hd2657926651%_ '()))
                                     (cons 'name:
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _%hd2658226661%_
                                                             '()))
                                                 (cons 'super:
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@list)
                           (foldr (lambda (_%g2688926895%_ _%g2689026898%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2688926895%_ '()))
                                          _%g2689026898%_))
                                  '()
                                  _%super2663126818%_))
                     (cons 'slots:
                           (cons (cons (gx#datum->syntax '#f '@list) '())
                                 (cons 'system?:
                                       (cons '#t
                                             (cons 'type-descriptor:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _%hd2661826777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons 'predicate:
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%hd2663326825%_ '()))
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
                                                          _%field-offset2660726740%_
                                                          _%field2659526702%_)
                                                         (foldr (lambda (_%g2689126901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2689226904%_
                                 _%g2689326906%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2689226904%_ '()))
                                            (cons '::
                                                  (cons _%g2689126901%_ '()))))
                                _%g2689326906%_))
                        '()
                        _%field-offset2660726740%_
                        _%field2659526702%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (gx#stx-source _%stx26562%_))
                                        (_%g2656826640%_ _%g2656926644%_))
                                    (_%g2656826640%_ _%g2656926644%_))))
                            (_%g2656826640%_ _%g2656926644%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop2662626799%_
                                                 _%target2662326793%_
                                                 '()))
                                              (_%g2656826640%_
                                               _%g2656926644%_)))))
                                    (_%g2656826640%_ _%g2656926644%_))))
                            (_%g2656826640%_ _%g2656926644%_))))
                    (_%g2656826640%_ _%g2656926644%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2656826640%_
                                                     _%g2656926644%_))))
                                            (_%g2656826640%_
                                             _%g2656926644%_))))
                                    (_%g2656826640%_ _%g2656926644%_)))))))
                (_%loop2660226721%_ _%target2659926715%_ '()))
              (_%g2656826640%_ _%g2656926644%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2656826640%_
                                             _%g2656926644%_))))
                                    (_%g2656826640%_ _%g2656926644%_)))))))
                (_%loop2659026683%_ _%target2658726677%_ '()))
              (_%g2656826640%_ _%g2656926644%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2656826640%_
                                             _%g2656926644%_))))
                                    (_%g2656826640%_ _%g2656926644%_))))
                            (_%g2656826640%_ _%g2656926644%_))))
                    (_%g2656826640%_ _%g2656926644%_)))))
        (_%g2656726909%_
         (list (class-type-id _%klass26564%_)
               (class-type-name _%klass26564%_)
               _%fields26565%_
               _%field-offsets26566%_
               _%stx26562%_)))))
  (define |gerbil/core/mop~MOP-5[:0:]#defsystem-class-info|
    (lambda (_%stx26963%_)
      (let* ((_%g2696627001%_
              (lambda (_%g2696726997%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g2696726997%_)))
             (_%g2696527144%_
              (lambda (_%g2696727005%_)
                (if (gx#stx-pair? _%g2696727005%_)
                    (let ((_%e2697227008%_ (gx#syntax-e _%g2696727005%_)))
                      (let ((_%hd2697327012%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2697227008%_)))
                            (_%tl2697427015%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2697227008%_))))
                        (if (gx#stx-pair? _%tl2697427015%_)
                            (let ((_%e2697527018%_
                                   (gx#syntax-e _%tl2697427015%_)))
                              (let ((_%hd2697627022%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2697527018%_)))
                                    (_%tl2697727025%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2697527018%_))))
                                (if (gx#stx-pair? _%tl2697727025%_)
                                    (let ((_%e2697827028%_
                                           (gx#syntax-e _%tl2697727025%_)))
                                      (let ((_%hd2697927032%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2697827028%_)))
                                            (_%tl2698027035%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2697827028%_))))
                                        (if (gx#stx-pair? _%tl2698027035%_)
                                            (let ((_%e2698127038%_
                                                   (gx#syntax-e
                                                    _%tl2698027035%_)))
                                              (let ((_%hd2698227042%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2698127038%_)))
                                                    (_%tl2698327045%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2698127038%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd2698227042%_)
                                                    (let ((_g27715_
                                                           (gx#syntax-split-splice
                                                            _%hd2698227042%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g27716_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g27715_)
                             (##values-length _g27715_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g27716_ 2)))
                      (error "Context expects 2 values" _g27716_)))
                (let ((_%target2698427048%_
                       (let () (declare (not safe)) (##values-ref _g27715_ 0)))
                      (_%tl2698627051%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g27715_ 1))))
                  (if (gx#stx-null? _%tl2698627051%_)
                      (letrec ((_%loop2698727054%_
                                (lambda (_%hd2698527058%_ _%super2699127061%_)
                                  (if (gx#stx-pair? _%hd2698527058%_)
                                      (let ((_%e2698827063%_
                                             (gx#syntax-e _%hd2698527058%_)))
                                        (let ((_%lp-hd2698927067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2698827063%_)))
                                              (_%lp-tl2699027070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2698827063%_))))
                                          (_%loop2698727054%_
                                           _%lp-tl2699027070%_
                                           (cons _%lp-hd2698927067%_
                                                 _%super2699127061%_))))
                                      (let ((_%super2699227073%_
                                             (reverse _%super2699127061%_)))
                                        (if (gx#stx-pair? _%tl2698327045%_)
                                            (let ((_%e2699327076%_
                                                   (gx#syntax-e
                                                    _%tl2698327045%_)))
                                              (let ((_%hd2699427080%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2699327076%_)))
                                                    (_%tl2699527083%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2699327076%_))))
                                                (if (gx#stx-null?
                                                     _%tl2699527083%_)
                                                    (if (and (gx#identifier?
                                                              _%hd2697627022%_)
                                                             (gx#identifier?
                                                              _%hd2697927032%_)
                                                             (andmap gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_%g2711527118%_ _%g2711627121%_)
                                      (cons _%g2711527118%_ _%g2711627121%_))
                                    '()
                                    _%super2699227073%_))
                     (gx#identifier? _%hd2699427080%_))
                (let* ((_%klass27124%_ (gx#eval-syntax _%hd2697927032%_))
                       (_%props27127%_ (class-type-properties _%klass27124%_))
                       (_%$e27132%_ (agetq 'system-type: _%props27127%_)))
                  (if _%$e27132%_
                      (let ((_%fields27139%_ (type-field-list _%$e27132%_)))
                        (|gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
                         _%stx26963%_
                         _%klass27124%_
                         _%fields27139%_))
                      (|gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
                       _%stx26963%_
                       _%klass27124%_)))
                (_%g2696627001%_ _%g2696727005%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2696627001%_
                                                     _%g2696727005%_))))
                                            (_%g2696627001%_
                                             _%g2696727005%_)))))))
                        (_%loop2698727054%_ _%target2698427048%_ '()))
                      (_%g2696627001%_ _%g2696727005%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2696627001%_
                                                     _%g2696727005%_))))
                                            (_%g2696627001%_
                                             _%g2696727005%_))))
                                    (_%g2696627001%_ _%g2696727005%_))))
                            (_%g2696627001%_ _%g2696727005%_))))
                    (_%g2696627001%_ _%g2696727005%_)))))
        (_%g2696527144%_ _%stx26963%_)))))
