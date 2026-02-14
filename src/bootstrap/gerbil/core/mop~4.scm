(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
    (lambda (_%stx27412%_ _%klass27414%_)
      (let* ((_%g2741627462%_
              (lambda (_%g2741727458%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g2741727458%_)))
             (_%g2741527627%_
              (lambda (_%g2741727466%_)
                (if (gx#stx-pair? _%g2741727466%_)
                    (let ((_%e2742427469%_ (gx#syntax-e _%g2741727466%_)))
                      (let ((_%hd2742527473%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2742427469%_)))
                            (_%tl2742627476%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2742427469%_))))
                        (if (gx#stx-pair? _%hd2742527473%_)
                            (let ((_%e2742727479%_
                                   (gx#syntax-e _%hd2742527473%_)))
                              (let ((_%hd2742827483%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2742727479%_)))
                                    (_%tl2742927486%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2742727479%_))))
                                (if (gx#stx-pair? _%tl2742927486%_)
                                    (let ((_%e2743027489%_
                                           (gx#syntax-e _%tl2742927486%_)))
                                      (let ((_%hd2743127493%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2743027489%_)))
                                            (_%tl2743227496%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2743027489%_))))
                                        (if (gx#stx-pair? _%tl2743227496%_)
                                            (let ((_%e2743327499%_
                                                   (gx#syntax-e
                                                    _%tl2743227496%_)))
                                              (let ((_%hd2743427503%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2743327499%_)))
                                                    (_%tl2743527506%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2743327499%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2743527506%_)
                                                    (let ((_%e2743627509%_
                                                           (gx#syntax-e
                                                            _%tl2743527506%_)))
                                                      (let ((_%hd2743727513%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2743627509%_)))
                    (_%tl2743827516%_
                     (let () (declare (not safe)) (##cdr _%e2743627509%_))))
                (if (gx#stx-pair/null? _%hd2743727513%_)
                    (let ((_g34401_
                           (gx#syntax-split-splice _%hd2743727513%_ '0)))
                      (begin
                        (let ((_g34402_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g34401_)
                                     (##values-length _g34401_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g34402_ 2)))
                              (error "Context expects 2 values" _g34402_)))
                        (let ((_%target2743927519%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g34401_ 0)))
                              (_%tl2744127522%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g34401_ 1))))
                          (if (gx#stx-null? _%tl2744127522%_)
                              (letrec ((_%loop2744227525%_
                                        (lambda (_%hd2744027529%_
                                                 _%super2744627532%_)
                                          (if (gx#stx-pair? _%hd2744027529%_)
                                              (let ((_%e2744327534%_
                                                     (gx#syntax-e
                                                      _%hd2744027529%_)))
                                                (let ((_%lp-hd2744427538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2744327534%_)))
                                                      (_%lp-tl2744527541%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2744327534%_))))
                                                  (_%loop2744227525%_
                                                   _%lp-tl2744527541%_
                                                   (cons _%lp-hd2744427538%_
                                                         _%super2744627532%_))))
                                              (let ((_%super2744727544%_
                                                     (reverse _%super2744627532%_)))
                                                (if (gx#stx-pair?
                                                     _%tl2743827516%_)
                                                    (let ((_%e2744827547%_
                                                           (gx#syntax-e
                                                            _%tl2743827516%_)))
                                                      (let ((_%hd2744927551%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2744827547%_)))
                    (_%tl2745027554%_
                     (let () (declare (not safe)) (##cdr _%e2744827547%_))))
                (if (gx#stx-null? _%tl2745027554%_)
                    (if (gx#stx-pair? _%tl2742627476%_)
                        (let ((_%e2745127557%_ (gx#syntax-e _%tl2742627476%_)))
                          (let ((_%hd2745227561%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2745127557%_)))
                                (_%tl2745327564%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2745127557%_))))
                            (if (gx#stx-pair? _%tl2745327564%_)
                                (let ((_%e2745427567%_
                                       (gx#syntax-e _%tl2745327564%_)))
                                  (let ((_%hd2745527571%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2745427567%_)))
                                        (_%tl2745627574%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2745427567%_))))
                                    (if (gx#stx-null? _%tl2745627574%_)
                                        ((lambda (_%g2741827577%_
                                                  _%g2741927579%_
                                                  _%g2742027580%_
                                                  _%g2742127581%_
                                                  _%g2742227582%_
                                                  _%g2742327583%_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'defsyntax)
                                                 (cons _%g2742327583%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'make-class-type-info)
                           (cons 'id:
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2741927579%_ '()))
                                       (cons 'name:
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%g2741827577%_
                                                               '()))
                                                   (cons 'super:
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@list)
                             (foldr (lambda (_%g2761827621%_ _%g2761927624%_)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax)
                                                  (cons _%g2761827621%_ '()))
                                            _%g2761927624%_))
                                    '()
                                    _%g2742127581%_))
                       (cons 'slots:
                             (cons (cons (gx#datum->syntax '#f '@list) '())
                                   (cons 'system?:
                                         (cons '#t
                                               (cons 'type-descriptor:
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _%g2742227582%_ '()))
                   (cons 'predicate:
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _%g2742027580%_ '()))
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
                                       '())))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd2745527571%_
                                         _%hd2745227561%_
                                         _%hd2744927551%_
                                         _%super2744727544%_
                                         _%hd2743427503%_
                                         _%hd2743127493%_)
                                        (_%g2741627462%_ _%g2741727466%_))))
                                (_%g2741627462%_ _%g2741727466%_))))
                        (_%g2741627462%_ _%g2741727466%_))
                    (_%g2741627462%_ _%g2741727466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2741627462%_
                                                     _%g2741727466%_)))))))
                                (_%loop2744227525%_ _%target2743927519%_ '()))
                              (_%g2741627462%_ _%g2741727466%_)))))
                    (_%g2741627462%_ _%g2741727466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2741627462%_
                                                     _%g2741727466%_))))
                                            (_%g2741627462%_
                                             _%g2741727466%_))))
                                    (_%g2741627462%_ _%g2741727466%_))))
                            (_%g2741627462%_ _%g2741727466%_))))
                    (_%g2741627462%_ _%g2741727466%_)))))
        (_%g2741527627%_
         (list _%stx27412%_
               (class-type-id _%klass27414%_)
               (class-type-name _%klass27414%_))))))
  (define |gerbil/core/mop~MOP-5[1]#system-class-id|
    (lambda (_%stx27345%_)
      (let* ((_%g2734827362%_
              (lambda (_%g2734927358%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g2734927358%_)))
             (_%g2734727408%_
              (lambda (_%g2734927366%_)
                (if (gx#stx-pair? _%g2734927366%_)
                    (let ((_%e2735127369%_ (gx#syntax-e _%g2734927366%_)))
                      (let ((_%hd2735227373%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2735127369%_)))
                            (_%tl2735327376%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2735127369%_))))
                        (if (gx#stx-pair? _%tl2735327376%_)
                            (let ((_%e2735427379%_
                                   (gx#syntax-e _%tl2735327376%_)))
                              (let ((_%hd2735527383%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2735427379%_)))
                                    (_%tl2735627386%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2735427379%_))))
                                ((lambda (_%g2735027389%_)
                                   (let ((_%str27405%_
                                          (symbol->string
                                           (gx#stx-e _%g2735027389%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##string-prefix?
                                            '":"
                                            _%str27405%_))
                                         (gx#syntax-local-introduce
                                          (make-symbol '":" _%str27405%_))
                                         (gx#syntax-local-introduce
                                          (make-symbol '"::" _%str27405%_)))))
                                 _%hd2735527383%_)))
                            (_%g2734827362%_ _%g2734927366%_))))
                    (_%g2734827362%_ _%g2734927366%_)))))
        (_%g2734727408%_ _%stx27345%_))))
  (define |gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
    (lambda (_%stx27267%_ _%klass27269%_ _%fields27270%_)
      (let* ((_%id27272%_
              (|gerbil/core/mop~MOP-5[1]#system-class-id| _%stx27267%_))
             (_%fields27305%_
              (let _%loop27275%_ ((_%rest27278%_ _%fields27270%_)
                                  (_%normalized27280%_ '()))
                (if (pair? _%rest27278%_)
                    (let ((_%field27282%_
                           (let () (declare (not safe)) (##car _%rest27278%_)))
                          (_%rest27284%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest27278%_))))
                      (if (memq _%field27282%_ _%rest27284%_)
                          (let ((_%$e27286%_
                                 (agetq _%field27282%_ _%normalized27280%_)))
                            (if _%$e27286%_
                                ((lambda (_%previous27290%_)
                                   (let ((_%normalized-field27293%_
                                          (make-symbol
                                           '"super-"
                                           _%previous27290%_)))
                                     (_%loop27275%_
                                      _%rest27284%_
                                      (cons (cons _%field27282%_
                                                  _%normalized-field27293%_)
                                            _%normalized27280%_))))
                                 _%$e27286%_)
                                (let ((_%normalized-field27298%_
                                       (make-symbol '"super-" _%field27282%_)))
                                  (_%loop27275%_
                                   _%rest27284%_
                                   (cons (cons _%field27282%_
                                               _%normalized-field27298%_)
                                         _%normalized27280%_)))))
                          (_%loop27275%_
                           _%rest27284%_
                           (cons (cons _%field27282%_ _%field27282%_)
                                 _%normalized27280%_))))
                    (foldl (lambda (_%n27301%_ _%r27303%_)
                             (cons (cdr _%n27301%_) _%r27303%_))
                           '()
                           _%normalized27280%_))))
             (_%field-offsets27308%_
              (let ((__tmp34403 (length _%fields27305%_)))
                (declare (not safe))
                (##iota __tmp34403 '1)))
             (_%&getfs27316%_
              (map (lambda (_%g2731027312%_)
                     (gx#stx-identifier
                      _%id27272%_
                      '"&"
                      _%id27272%_
                      '"-"
                      _%g2731027312%_))
                   _%fields27305%_))
             (_%&setfs27324%_
              (map (lambda (_%g2731827320%_)
                     (gx#stx-identifier
                      _%id27272%_
                      '"&"
                      _%id27272%_
                      '"-"
                      _%g2731827320%_
                      '"-set!"))
                   _%fields27305%_))
             (_%getfs27332%_
              (map (lambda (_%g2732627328%_)
                     (gx#stx-identifier
                      _%id27272%_
                      _%id27272%_
                      '"-"
                      _%g2732627328%_))
                   _%fields27305%_))
             (_%setfs27340%_
              (map (lambda (_%g2733427336%_)
                     (gx#stx-identifier
                      _%id27272%_
                      _%id27272%_
                      '"-"
                      _%g2733427336%_
                      '"-set!"))
                   _%fields27305%_)))
        (|gerbil/core/mop~MOP-5[1]#emit-system-class|
         _%stx27267%_
         _%klass27269%_
         _%fields27305%_
         _%field-offsets27308%_
         _%&getfs27316%_
         _%&setfs27324%_
         _%getfs27332%_
         _%setfs27340%_))))
  (define |gerbil/core/mop~MOP-5[1]#emit-system-class|
    (lambda (_%stx26587%_
             _%klass26589%_
             _%fields26590%_
             _%field-offsets26591%_
             _%&getfs26592%_
             _%&setfs26593%_
             _%getfs26594%_
             _%setfs26595%_)
      (let* ((_%g2659726721%_
              (lambda (_%g2659826717%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g2659826717%_)))
             (_%g2659627263%_
              (lambda (_%g2659826725%_)
                (if (gx#stx-pair? _%g2659826725%_)
                    (let ((_%e2661126728%_ (gx#syntax-e _%g2659826725%_)))
                      (let ((_%hd2661226732%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2661126728%_)))
                            (_%tl2661326735%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2661126728%_))))
                        (if (gx#stx-pair? _%tl2661326735%_)
                            (let ((_%e2661426738%_
                                   (gx#syntax-e _%tl2661326735%_)))
                              (let ((_%hd2661526742%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2661426738%_)))
                                    (_%tl2661626745%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2661426738%_))))
                                (if (gx#stx-pair? _%tl2661626745%_)
                                    (let ((_%e2661726748%_
                                           (gx#syntax-e _%tl2661626745%_)))
                                      (let ((_%hd2661826752%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2661726748%_)))
                                            (_%tl2661926755%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2661726748%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd2661826752%_)
                                            (let ((_g34404_
                                                   (gx#syntax-split-splice
                                                    _%hd2661826752%_
                                                    '0)))
                                              (begin
                                                (let ((_g34405_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g34404_)
                                                             (##values-length
                                                              _g34404_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g34405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g34405_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2662026758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g34404_
                                                          0)))
                                                      (_%tl2662226761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g34404_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2662226761%_)
                                                      (letrec ((_%loop2662326764%_
                                                                (lambda (_%hd2662126768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%field2662726771%_)
                          (if (gx#stx-pair? _%hd2662126768%_)
                              (let ((_%e2662426773%_
                                     (gx#syntax-e _%hd2662126768%_)))
                                (let ((_%lp-hd2662526777%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2662426773%_)))
                                      (_%lp-tl2662626780%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2662426773%_))))
                                  (_%loop2662326764%_
                                   _%lp-tl2662626780%_
                                   (cons _%lp-hd2662526777%_
                                         _%field2662726771%_))))
                              (let ((_%field2662826783%_
                                     (reverse _%field2662726771%_)))
                                (if (gx#stx-pair? _%tl2661926755%_)
                                    (let ((_%e2662926786%_
                                           (gx#syntax-e _%tl2661926755%_)))
                                      (let ((_%hd2663026790%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2662926786%_)))
                                            (_%tl2663126793%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2662926786%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd2663026790%_)
                                            (let ((_g34406_
                                                   (gx#syntax-split-splice
                                                    _%hd2663026790%_
                                                    '0)))
                                              (begin
                                                (let ((_g34407_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g34406_)
                                                             (##values-length
                                                              _g34406_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g34407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g34407_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2663226796%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g34406_
                                                          0)))
                                                      (_%tl2663426799%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g34406_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2663426799%_)
                                                      (letrec ((_%loop2663526802%_
                                                                (lambda (_%hd2663326806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%field-offset2663926809%_)
                          (if (gx#stx-pair? _%hd2663326806%_)
                              (let ((_%e2663626811%_
                                     (gx#syntax-e _%hd2663326806%_)))
                                (let ((_%lp-hd2663726815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2663626811%_)))
                                      (_%lp-tl2663826818%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2663626811%_))))
                                  (_%loop2663526802%_
                                   _%lp-tl2663826818%_
                                   (cons _%lp-hd2663726815%_
                                         _%field-offset2663926809%_))))
                              (let ((_%field-offset2664026821%_
                                     (reverse _%field-offset2663926809%_)))
                                (if (gx#stx-pair? _%tl2663126793%_)
                                    (let ((_%e2664126824%_
                                           (gx#syntax-e _%tl2663126793%_)))
                                      (let ((_%hd2664226828%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2664126824%_)))
                                            (_%tl2664326831%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2664126824%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd2664226828%_)
                                            (let ((_g34408_
                                                   (gx#syntax-split-splice
                                                    _%hd2664226828%_
                                                    '0)))
                                              (begin
                                                (let ((_g34409_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g34408_)
                                                             (##values-length
                                                              _g34408_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g34409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g34409_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2664426834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g34408_
                                                          0)))
                                                      (_%tl2664626837%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g34408_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2664626837%_)
                                                      (letrec ((_%loop2664726840%_
                                                                (lambda (_%hd2664526844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%&field-ref2665126847%_)
                          (if (gx#stx-pair? _%hd2664526844%_)
                              (let ((_%e2664826849%_
                                     (gx#syntax-e _%hd2664526844%_)))
                                (let ((_%lp-hd2664926853%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2664826849%_)))
                                      (_%lp-tl2665026856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2664826849%_))))
                                  (_%loop2664726840%_
                                   _%lp-tl2665026856%_
                                   (cons _%lp-hd2664926853%_
                                         _%&field-ref2665126847%_))))
                              (let ((_%&field-ref2665226859%_
                                     (reverse _%&field-ref2665126847%_)))
                                (if (gx#stx-pair? _%tl2664326831%_)
                                    (let ((_%e2665326862%_
                                           (gx#syntax-e _%tl2664326831%_)))
                                      (let ((_%hd2665426866%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2665326862%_)))
                                            (_%tl2665526869%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2665326862%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd2665426866%_)
                                            (let ((_g34410_
                                                   (gx#syntax-split-splice
                                                    _%hd2665426866%_
                                                    '0)))
                                              (begin
                                                (let ((_g34411_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g34410_)
                                                             (##values-length
                                                              _g34410_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g34411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g34411_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2665626872%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g34410_
                                                          0)))
                                                      (_%tl2665826875%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g34410_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2665826875%_)
                                                      (letrec ((_%loop2665926878%_
                                                                (lambda (_%hd2665726882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%&field-set!2666326885%_)
                          (if (gx#stx-pair? _%hd2665726882%_)
                              (let ((_%e2666026887%_
                                     (gx#syntax-e _%hd2665726882%_)))
                                (let ((_%lp-hd2666126891%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2666026887%_)))
                                      (_%lp-tl2666226894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2666026887%_))))
                                  (_%loop2665926878%_
                                   _%lp-tl2666226894%_
                                   (cons _%lp-hd2666126891%_
                                         _%&field-set!2666326885%_))))
                              (let ((_%&field-set!2666426897%_
                                     (reverse _%&field-set!2666326885%_)))
                                (if (gx#stx-pair? _%tl2665526869%_)
                                    (let ((_%e2666526900%_
                                           (gx#syntax-e _%tl2665526869%_)))
                                      (let ((_%hd2666626904%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2666526900%_)))
                                            (_%tl2666726907%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2666526900%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd2666626904%_)
                                            (let ((_g34412_
                                                   (gx#syntax-split-splice
                                                    _%hd2666626904%_
                                                    '0)))
                                              (begin
                                                (let ((_g34413_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g34412_)
                                                             (##values-length
                                                              _g34412_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g34413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g34413_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2666826910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g34412_
                                                          0)))
                                                      (_%tl2667026913%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g34412_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2667026913%_)
                                                      (letrec ((_%loop2667126916%_
                                                                (lambda (_%hd2666926920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%field-ref2667526923%_)
                          (if (gx#stx-pair? _%hd2666926920%_)
                              (let ((_%e2667226925%_
                                     (gx#syntax-e _%hd2666926920%_)))
                                (let ((_%lp-hd2667326929%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2667226925%_)))
                                      (_%lp-tl2667426932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2667226925%_))))
                                  (_%loop2667126916%_
                                   _%lp-tl2667426932%_
                                   (cons _%lp-hd2667326929%_
                                         _%field-ref2667526923%_))))
                              (let ((_%field-ref2667626935%_
                                     (reverse _%field-ref2667526923%_)))
                                (if (gx#stx-pair? _%tl2666726907%_)
                                    (let ((_%e2667726938%_
                                           (gx#syntax-e _%tl2666726907%_)))
                                      (let ((_%hd2667826942%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2667726938%_)))
                                            (_%tl2667926945%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2667726938%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd2667826942%_)
                                            (let ((_g34414_
                                                   (gx#syntax-split-splice
                                                    _%hd2667826942%_
                                                    '0)))
                                              (begin
                                                (let ((_g34415_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g34414_)
                                                             (##values-length
                                                              _g34414_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g34415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g34415_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2668026948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g34414_
                                                          0)))
                                                      (_%tl2668226951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g34414_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2668226951%_)
                                                      (letrec ((_%loop2668326954%_
                                                                (lambda (_%hd2668126958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%field-set!2668726961%_)
                          (if (gx#stx-pair? _%hd2668126958%_)
                              (let ((_%e2668426963%_
                                     (gx#syntax-e _%hd2668126958%_)))
                                (let ((_%lp-hd2668526967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2668426963%_)))
                                      (_%lp-tl2668626970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2668426963%_))))
                                  (_%loop2668326954%_
                                   _%lp-tl2668626970%_
                                   (cons _%lp-hd2668526967%_
                                         _%field-set!2668726961%_))))
                              (let ((_%field-set!2668826973%_
                                     (reverse _%field-set!2668726961%_)))
                                (if (gx#stx-pair? _%tl2667926945%_)
                                    (let ((_%e2668926976%_
                                           (gx#syntax-e _%tl2667926945%_)))
                                      (let ((_%hd2669026980%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2668926976%_)))
                                            (_%tl2669126983%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2668926976%_))))
                                        (if (gx#stx-pair? _%hd2669026980%_)
                                            (let ((_%e2669226986%_
                                                   (gx#syntax-e
                                                    _%hd2669026980%_)))
                                              (let ((_%hd2669326990%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2669226986%_)))
                                                    (_%tl2669426993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2669226986%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2669426993%_)
                                                    (let ((_%e2669526996%_
                                                           (gx#syntax-e
                                                            _%tl2669426993%_)))
                                                      (let ((_%hd2669627000%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2669526996%_)))
                    (_%tl2669727003%_
                     (let () (declare (not safe)) (##cdr _%e2669526996%_))))
                (if (gx#stx-pair? _%tl2669727003%_)
                    (let ((_%e2669827006%_ (gx#syntax-e _%tl2669727003%_)))
                      (let ((_%hd2669927010%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2669827006%_)))
                            (_%tl2670027013%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2669827006%_))))
                        (if (gx#stx-pair? _%tl2670027013%_)
                            (let ((_%e2670127016%_
                                   (gx#syntax-e _%tl2670027013%_)))
                              (let ((_%hd2670227020%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2670127016%_)))
                                    (_%tl2670327023%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2670127016%_))))
                                (if (gx#stx-pair/null? _%hd2670227020%_)
                                    (let ((_g34416_
                                           (gx#syntax-split-splice
                                            _%hd2670227020%_
                                            '0)))
                                      (begin
                                        (let ((_g34417_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g34416_)
                                                     (##values-length _g34416_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g34417_ 2)))
                                              (error "Context expects 2 values"
                                                     _g34417_)))
                                        (let ((_%target2670427026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g34416_ 0)))
                                              (_%tl2670627029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g34416_ 1))))
                                          (if (gx#stx-null? _%tl2670627029%_)
                                              (letrec ((_%loop2670727032%_
                                                        (lambda (_%hd2670527036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%super2671127039%_)
                  (if (gx#stx-pair? _%hd2670527036%_)
                      (let ((_%e2670827041%_ (gx#syntax-e _%hd2670527036%_)))
                        (let ((_%lp-hd2670927045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2670827041%_)))
                              (_%lp-tl2671027048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2670827041%_))))
                          (_%loop2670727032%_
                           _%lp-tl2671027048%_
                           (cons _%lp-hd2670927045%_ _%super2671127039%_))))
                      (let ((_%super2671227051%_
                             (reverse _%super2671127039%_)))
                        (if (gx#stx-pair? _%tl2670327023%_)
                            (let ((_%e2671327054%_
                                   (gx#syntax-e _%tl2670327023%_)))
                              (let ((_%hd2671427058%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2671327054%_)))
                                    (_%tl2671527061%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2671327054%_))))
                                (if (gx#stx-null? _%tl2671527061%_)
                                    (if (gx#stx-null? _%tl2669126983%_)
                                        ((lambda (_%g2659927064%_
                                                  _%g2660027066%_
                                                  _%g2660127067%_
                                                  _%g2660227068%_
                                                  _%g2660327069%_
                                                  _%g2660427070%_
                                                  _%g2660527071%_
                                                  _%g2660627072%_
                                                  _%g2660727073%_
                                                  _%g2660827074%_
                                                  _%g2660927075%_
                                                  _%g2661027076%_)
                                           (cons (gx#datum->syntax '#f 'begin)
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _%g2660827074%_
                                                    _%g2660727073%_
                                                    _%g2660627072%_)
                                                   (foldr (lambda (_%g2715427185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2715527188%_
                           _%g2715627190%_
                           _%g2715727192%_)
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%g2715627190%_
                                            (cons (gx#datum->syntax '#f 'obj)
                                                  '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##unchecked-structure-ref)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'obj)
                                                        (cons _%g2715527188%_
                                                              (cons _%g2660127067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%g2715427185%_ '()))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          _%g2715727192%_))
                  (begin
                    (gx#syntax-check-splice-targets
                     _%g2660827074%_
                     _%g2660727073%_
                     _%g2660527071%_)
                    (foldr (lambda (_%g2715827195%_
                                    _%g2715927198%_
                                    _%g2716027200%_
                                    _%g2716127202%_)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%g2716027200%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'obj)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'val)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##unchecked-structure-set!)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'obj)
                         (cons (gx#datum->syntax '#f 'val)
                               (cons _%g2715927198%_
                                     (cons _%g2660127067%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _%g2715827195%_
                                                             '()))
                                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _%g2716127202%_))
                           (begin
                             (gx#syntax-check-splice-targets
                              _%g2660827074%_
                              _%g2660727073%_
                              _%g2660427070%_)
                             (foldr (lambda (_%g2716227205%_
                                             _%g2716327208%_
                                             _%g2716427210%_
                                             _%g2716527212%_)
                                      (cons (cons (gx#datum->syntax '#f 'def)
                                                  (cons (cons _%g2716427210%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'obj)
                            '()))
                (cons (cons (gx#datum->syntax '#f '##structure-ref)
                            (cons (gx#datum->syntax '#f 'obj)
                                  (cons _%g2716327208%_
                                        (cons _%g2660127067%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2716227205%_
                                                                '()))
                                                    '())))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2716527212%_))
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _%g2660827074%_
                                       _%g2660727073%_
                                       _%g2660327069%_)
                                      (foldr (lambda (_%g2716627215%_
                                                      _%g2716727218%_
                                                      _%g2716827220%_
                                                      _%g2716927222%_)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'def)
                                                           (cons (cons _%g2716827220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (gx#datum->syntax '#f 'obj)
                                     (cons (gx#datum->syntax '#f 'val) '())))
                         (cons (cons (gx#datum->syntax '#f '##structure-set!)
                                     (cons (gx#datum->syntax '#f 'obj)
                                           (cons (gx#datum->syntax '#f 'val)
                                                 (cons _%g2716727218%_
                                                       (cons _%g2660127067%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%g2716627215%_ '()))
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2716927222%_))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'defsyntax)
                                                         (cons _%g2660227068%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'make-class-type-info)
                                   (cons 'id:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g2661027076%_
                                                           '()))
                                               (cons 'name:
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2660927075%_ '()))
                   (cons 'super:
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (foldr (lambda (_%g2717027225%_
                                                     _%g2717127228%_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _%g2717027225%_
                                                                '()))
                                                    _%g2717127228%_))
                                            '()
                                            _%g2660027066%_))
                               (cons 'slots:
                                     (cons (cons (gx#datum->syntax '#f '@list)
                                                 '())
                                           (cons 'system?:
                                                 (cons '#t
                                                       (cons 'type-descriptor:
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote-syntax)
                                 (cons _%g2660127067%_ '()))
                           (cons 'predicate:
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'quote-syntax)
                                             (cons _%g2659927064%_ '()))
                                       (cons 'accessors:
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (begin
                                                           (gx#syntax-check-splice-targets
                                                            _%g2660427070%_
                                                            _%g2660827074%_)
                                                           (foldr (lambda (_%g2717227231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g2717327234%_
                                   _%g2717427236%_)
                            (cons (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%g2717327234%_ '()))
                                              (cons '::
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax)
                        (cons _%g2717227231%_ '()))
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%g2717427236%_))
                          '()
                          _%g2660427070%_
                          _%g2660827074%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons 'mutators:
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@list)
                             (begin
                               (gx#syntax-check-splice-targets
                                _%g2660327069%_
                                _%g2660827074%_)
                               (foldr (lambda (_%g2717527239%_
                                               _%g2717627242%_
                                               _%g2717727244%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g2717627242%_ '()))
                  (cons '::
                        (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                    (cons _%g2717527239%_ '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g2717727244%_))
                                      '()
                                      _%g2660327069%_
                                      _%g2660827074%_)))
                       (cons 'unchecked-accessors:
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%g2660627072%_
                                            _%g2660827074%_)
                                           (foldr (lambda (_%g2717827247%_
                                                           _%g2717927250%_
                                                           _%g2718027252%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2717927250%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2717827247%_ '()))
                                          '()))))
                  _%g2718027252%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _%g2660627072%_
                                                  _%g2660827074%_)))
                                   (cons 'unchecked-mutators:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _%g2660527071%_
                                                        _%g2660827074%_)
                                                       (foldr (lambda (_%g2718127255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g2718227258%_
                               _%g2718327260%_)
                        (cons (cons (gx#datum->syntax '#f '@list)
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%g2718227258%_ '()))
                                          (cons '::
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote-syntax)
                                                            (cons _%g2718127255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2718327260%_))
                      '()
                      _%g2660527071%_
                      _%g2660827074%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             _%g2660827074%_
                                             _%g2660727073%_
                                             _%g2660327069%_))
                                    _%g2660827074%_
                                    _%g2660727073%_
                                    _%g2660427070%_))
                           _%g2660827074%_
                           _%g2660727073%_
                           _%g2660527071%_))
                  _%g2660827074%_
                  _%g2660727073%_
                  _%g2660627072%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd2671427058%_
                                         _%super2671227051%_
                                         _%hd2669927010%_
                                         _%hd2669627000%_
                                         _%field-set!2668826973%_
                                         _%field-ref2667626935%_
                                         _%&field-set!2666426897%_
                                         _%&field-ref2665226859%_
                                         _%field-offset2664026821%_
                                         _%field2662826783%_
                                         _%hd2661526742%_
                                         _%hd2661226732%_)
                                        (_%g2659726721%_ _%g2659826725%_))
                                    (_%g2659726721%_ _%g2659826725%_))))
                            (_%g2659726721%_ _%g2659826725%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop2670727032%_
                                                 _%target2670427026%_
                                                 '()))
                                              (_%g2659726721%_
                                               _%g2659826725%_)))))
                                    (_%g2659726721%_ _%g2659826725%_))))
                            (_%g2659726721%_ _%g2659826725%_))))
                    (_%g2659726721%_ _%g2659826725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2659726721%_
                                                     _%g2659826725%_))))
                                            (_%g2659726721%_
                                             _%g2659826725%_))))
                                    (_%g2659726721%_ _%g2659826725%_)))))))
                (_%loop2668326954%_ _%target2668026948%_ '()))
              (_%g2659726721%_ _%g2659826725%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2659726721%_
                                             _%g2659826725%_))))
                                    (_%g2659726721%_ _%g2659826725%_)))))))
                (_%loop2667126916%_ _%target2666826910%_ '()))
              (_%g2659726721%_ _%g2659826725%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2659726721%_
                                             _%g2659826725%_))))
                                    (_%g2659726721%_ _%g2659826725%_)))))))
                (_%loop2665926878%_ _%target2665626872%_ '()))
              (_%g2659726721%_ _%g2659826725%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2659726721%_
                                             _%g2659826725%_))))
                                    (_%g2659726721%_ _%g2659826725%_)))))))
                (_%loop2664726840%_ _%target2664426834%_ '()))
              (_%g2659726721%_ _%g2659826725%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2659726721%_
                                             _%g2659826725%_))))
                                    (_%g2659726721%_ _%g2659826725%_)))))))
                (_%loop2663526802%_ _%target2663226796%_ '()))
              (_%g2659726721%_ _%g2659826725%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2659726721%_
                                             _%g2659826725%_))))
                                    (_%g2659726721%_ _%g2659826725%_)))))))
                (_%loop2662326764%_ _%target2662026758%_ '()))
              (_%g2659726721%_ _%g2659826725%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2659726721%_
                                             _%g2659826725%_))))
                                    (_%g2659726721%_ _%g2659826725%_))))
                            (_%g2659726721%_ _%g2659826725%_))))
                    (_%g2659726721%_ _%g2659826725%_)))))
        (_%g2659627263%_
         (list (class-type-id _%klass26589%_)
               (class-type-name _%klass26589%_)
               _%fields26590%_
               _%field-offsets26591%_
               _%&getfs26592%_
               _%&setfs26593%_
               _%getfs26594%_
               _%setfs26595%_
               _%stx26587%_)))))
  (define |gerbil/core/mop~MOP-5[:0:]#defsystem-class-info|
    (lambda (_%stx27639%_)
      (let* ((_%g2764227677%_
              (lambda (_%g2764327673%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g2764327673%_)))
             (_%g2764127820%_
              (lambda (_%g2764327681%_)
                (if (gx#stx-pair? _%g2764327681%_)
                    (let ((_%e2764827684%_ (gx#syntax-e _%g2764327681%_)))
                      (let ((_%hd2764927688%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2764827684%_)))
                            (_%tl2765027691%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2764827684%_))))
                        (if (gx#stx-pair? _%tl2765027691%_)
                            (let ((_%e2765127694%_
                                   (gx#syntax-e _%tl2765027691%_)))
                              (let ((_%hd2765227698%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2765127694%_)))
                                    (_%tl2765327701%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2765127694%_))))
                                (if (gx#stx-pair? _%tl2765327701%_)
                                    (let ((_%e2765427704%_
                                           (gx#syntax-e _%tl2765327701%_)))
                                      (let ((_%hd2765527708%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2765427704%_)))
                                            (_%tl2765627711%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2765427704%_))))
                                        (if (gx#stx-pair? _%tl2765627711%_)
                                            (let ((_%e2765727714%_
                                                   (gx#syntax-e
                                                    _%tl2765627711%_)))
                                              (let ((_%hd2765827718%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2765727714%_)))
                                                    (_%tl2765927721%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2765727714%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd2765827718%_)
                                                    (let ((_g34418_
                                                           (gx#syntax-split-splice
                                                            _%hd2765827718%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g34419_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g34418_)
                             (##values-length _g34418_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g34419_ 2)))
                      (error "Context expects 2 values" _g34419_)))
                (let ((_%target2766027724%_
                       (let () (declare (not safe)) (##values-ref _g34418_ 0)))
                      (_%tl2766227727%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g34418_ 1))))
                  (if (gx#stx-null? _%tl2766227727%_)
                      (letrec ((_%loop2766327730%_
                                (lambda (_%hd2766127734%_ _%super2766727737%_)
                                  (if (gx#stx-pair? _%hd2766127734%_)
                                      (let ((_%e2766427739%_
                                             (gx#syntax-e _%hd2766127734%_)))
                                        (let ((_%lp-hd2766527743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2766427739%_)))
                                              (_%lp-tl2766627746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2766427739%_))))
                                          (_%loop2766327730%_
                                           _%lp-tl2766627746%_
                                           (cons _%lp-hd2766527743%_
                                                 _%super2766727737%_))))
                                      (let ((_%super2766827749%_
                                             (reverse _%super2766727737%_)))
                                        (if (gx#stx-pair? _%tl2765927721%_)
                                            (let ((_%e2766927752%_
                                                   (gx#syntax-e
                                                    _%tl2765927721%_)))
                                              (let ((_%hd2767027756%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2766927752%_)))
                                                    (_%tl2767127759%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2766927752%_))))
                                                (if (gx#stx-null?
                                                     _%tl2767127759%_)
                                                    ((lambda (_%g2764427762%_
                                                              _%g2764527764%_
                                                              _%g2764627765%_
                                                              _%g2764727766%_)
                                                       (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2764727766%_)
                        (gx#identifier? _%g2764627765%_)
                        (andmap gx#identifier?
                                (foldr (lambda (_%g2779127794%_
                                                _%g2779227797%_)
                                         (cons _%g2779127794%_
                                               _%g2779227797%_))
                                       '()
                                       _%g2764527764%_))
                        (gx#identifier? _%g2764427762%_))
                   (let* ((_%klass27800%_ (gx#eval-syntax _%g2764627765%_))
                          (_%props27803%_
                           (class-type-properties _%klass27800%_))
                          (_%$e27808%_ (agetq 'system-type: _%props27803%_)))
                     (if _%$e27808%_
                         ((lambda (_%type27812%_)
                            (let ((_%fields27815%_
                                   (type-field-list _%type27812%_)))
                              (|gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
                               _%stx27639%_
                               _%klass27800%_
                               _%fields27815%_)))
                          _%$e27808%_)
                         (|gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
                          _%stx27639%_
                          _%klass27800%_)))
                   (_%g2764227677%_ _%g2764327681%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd2767027756%_
                                                     _%super2766827749%_
                                                     _%hd2765527708%_
                                                     _%hd2765227698%_)
                                                    (_%g2764227677%_
                                                     _%g2764327681%_))))
                                            (_%g2764227677%_
                                             _%g2764327681%_)))))))
                        (_%loop2766327730%_ _%target2766027724%_ '()))
                      (_%g2764227677%_ _%g2764327681%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2764227677%_
                                                     _%g2764327681%_))))
                                            (_%g2764227677%_
                                             _%g2764327681%_))))
                                    (_%g2764227677%_ _%g2764327681%_))))
                            (_%g2764227677%_ _%g2764327681%_))))
                    (_%g2764227677%_ _%g2764327681%_)))))
        (_%g2764127820%_ _%stx27639%_)))))
