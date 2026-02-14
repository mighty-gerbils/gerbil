(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
    (lambda (_%stx27432%_ _%klass27434%_)
      (let* ((_%g2743627482%_
              (lambda (_%g2743727478%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g2743727478%_)))
             (_%g2743527647%_
              (lambda (_%g2743727486%_)
                (if (gx#stx-pair? _%g2743727486%_)
                    (let ((_%e2744427489%_ (gx#syntax-e _%g2743727486%_)))
                      (let ((_%hd2744527493%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2744427489%_)))
                            (_%tl2744627496%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2744427489%_))))
                        (if (gx#stx-pair? _%hd2744527493%_)
                            (let ((_%e2744727499%_
                                   (gx#syntax-e _%hd2744527493%_)))
                              (let ((_%hd2744827503%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2744727499%_)))
                                    (_%tl2744927506%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2744727499%_))))
                                (if (gx#stx-pair? _%tl2744927506%_)
                                    (let ((_%e2745027509%_
                                           (gx#syntax-e _%tl2744927506%_)))
                                      (let ((_%hd2745127513%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2745027509%_)))
                                            (_%tl2745227516%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2745027509%_))))
                                        (if (gx#stx-pair? _%tl2745227516%_)
                                            (let ((_%e2745327519%_
                                                   (gx#syntax-e
                                                    _%tl2745227516%_)))
                                              (let ((_%hd2745427523%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2745327519%_)))
                                                    (_%tl2745527526%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2745327519%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2745527526%_)
                                                    (let ((_%e2745627529%_
                                                           (gx#syntax-e
                                                            _%tl2745527526%_)))
                                                      (let ((_%hd2745727533%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2745627529%_)))
                    (_%tl2745827536%_
                     (let () (declare (not safe)) (##cdr _%e2745627529%_))))
                (if (gx#stx-pair/null? _%hd2745727533%_)
                    (let ((_g200999_
                           (gx#syntax-split-splice _%hd2745727533%_ '0)))
                      (begin
                        (let ((_g201000_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g200999_)
                                     (##values-length _g200999_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g201000_ 2)))
                              (error "Context expects 2 values" _g201000_)))
                        (let ((_%target2745927539%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g200999_ 0)))
                              (_%tl2746127542%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g200999_ 1))))
                          (if (gx#stx-null? _%tl2746127542%_)
                              (letrec ((_%loop2746227545%_
                                        (lambda (_%hd2746027549%_
                                                 _%super2746627552%_)
                                          (if (gx#stx-pair? _%hd2746027549%_)
                                              (let ((_%e2746327554%_
                                                     (gx#syntax-e
                                                      _%hd2746027549%_)))
                                                (let ((_%lp-hd2746427558%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2746327554%_)))
                                                      (_%lp-tl2746527561%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2746327554%_))))
                                                  (_%loop2746227545%_
                                                   _%lp-tl2746527561%_
                                                   (cons _%lp-hd2746427558%_
                                                         _%super2746627552%_))))
                                              (let ((_%super2746727564%_
                                                     (reverse _%super2746627552%_)))
                                                (if (gx#stx-pair?
                                                     _%tl2745827536%_)
                                                    (let ((_%e2746827567%_
                                                           (gx#syntax-e
                                                            _%tl2745827536%_)))
                                                      (let ((_%hd2746927571%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2746827567%_)))
                    (_%tl2747027574%_
                     (let () (declare (not safe)) (##cdr _%e2746827567%_))))
                (if (gx#stx-null? _%tl2747027574%_)
                    (if (gx#stx-pair? _%tl2744627496%_)
                        (let ((_%e2747127577%_ (gx#syntax-e _%tl2744627496%_)))
                          (let ((_%hd2747227581%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2747127577%_)))
                                (_%tl2747327584%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2747127577%_))))
                            (if (gx#stx-pair? _%tl2747327584%_)
                                (let ((_%e2747427587%_
                                       (gx#syntax-e _%tl2747327584%_)))
                                  (let ((_%hd2747527591%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2747427587%_)))
                                        (_%tl2747627594%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2747427587%_))))
                                    (if (gx#stx-null? _%tl2747627594%_)
                                        ((lambda (_%g2743827597%_
                                                  _%g2743927599%_
                                                  _%g2744027600%_
                                                  _%g2744127601%_
                                                  _%g2744227602%_
                                                  _%g2744327603%_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'defsyntax)
                                                 (cons _%g2744327603%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'make-class-type-info)
                           (cons 'id:
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2743927599%_ '()))
                                       (cons 'name:
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%g2743827597%_
                                                               '()))
                                                   (cons 'super:
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@list)
                             (foldr (lambda (_%g2763827641%_ _%g2763927644%_)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax)
                                                  (cons _%g2763827641%_ '()))
                                            _%g2763927644%_))
                                    '()
                                    _%g2744127601%_))
                       (cons 'slots:
                             (cons (cons (gx#datum->syntax '#f '@list) '())
                                   (cons 'system?:
                                         (cons '#t
                                               (cons 'type-descriptor:
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _%g2744227602%_ '()))
                   (cons 'predicate:
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _%g2744027600%_ '()))
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
                                         _%hd2747527591%_
                                         _%hd2747227581%_
                                         _%hd2746927571%_
                                         _%super2746727564%_
                                         _%hd2745427523%_
                                         _%hd2745127513%_)
                                        (_%g2743627482%_ _%g2743727486%_))))
                                (_%g2743627482%_ _%g2743727486%_))))
                        (_%g2743627482%_ _%g2743727486%_))
                    (_%g2743627482%_ _%g2743727486%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2743627482%_
                                                     _%g2743727486%_)))))))
                                (_%loop2746227545%_ _%target2745927539%_ '()))
                              (_%g2743627482%_ _%g2743727486%_)))))
                    (_%g2743627482%_ _%g2743727486%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2743627482%_
                                                     _%g2743727486%_))))
                                            (_%g2743627482%_
                                             _%g2743727486%_))))
                                    (_%g2743627482%_ _%g2743727486%_))))
                            (_%g2743627482%_ _%g2743727486%_))))
                    (_%g2743627482%_ _%g2743727486%_)))))
        (_%g2743527647%_
         (list _%stx27432%_
               (class-type-id _%klass27434%_)
               (class-type-name _%klass27434%_))))))
  (define |gerbil/core/mop~MOP-5[1]#system-class-id|
    (lambda (_%stx27365%_)
      (let* ((_%g2736827382%_
              (lambda (_%g2736927378%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g2736927378%_)))
             (_%g2736727428%_
              (lambda (_%g2736927386%_)
                (if (gx#stx-pair? _%g2736927386%_)
                    (let ((_%e2737127389%_ (gx#syntax-e _%g2736927386%_)))
                      (let ((_%hd2737227393%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2737127389%_)))
                            (_%tl2737327396%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2737127389%_))))
                        (if (gx#stx-pair? _%tl2737327396%_)
                            (let ((_%e2737427399%_
                                   (gx#syntax-e _%tl2737327396%_)))
                              (let ((_%hd2737527403%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2737427399%_)))
                                    (_%tl2737627406%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2737427399%_))))
                                ((lambda (_%g2737027409%_)
                                   (let ((_%str27425%_
                                          (symbol->string
                                           (gx#stx-e _%g2737027409%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##string-prefix?
                                            '":"
                                            _%str27425%_))
                                         (values (gx#syntax-local-introduce
                                                  (make-symbol
                                                   '":"
                                                   _%str27425%_))
                                                 (gx#syntax-local-introduce
                                                  (make-symbol
                                                   '"SystemClass-"
                                                   (substring
                                                    _%str27425%_
                                                    '1
                                                    (let ()
                                                      (declare (not safe))
                                                      (##string-length
                                                       _%str27425%_))))))
                                         (values (gx#syntax-local-introduce
                                                  (make-symbol
                                                   '"::"
                                                   _%str27425%_))
                                                 (gx#syntax-local-introduce
                                                  (make-symbol
                                                   '"SystemClass-"
                                                   _%str27425%_))))))
                                 _%hd2737527403%_)))
                            (_%g2736827382%_ _%g2736927386%_))))
                    (_%g2736827382%_ _%g2736927386%_)))))
        (_%g2736727428%_ _%stx27365%_))))
  (define |gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
    (lambda (_%stx27286%_ _%klass27288%_ _%fields27289%_)
      (let ((_g201001_
             (|gerbil/core/mop~MOP-5[1]#system-class-id| _%stx27286%_)))
        (begin
          (let ((_g201002_
                 (let ()
                   (declare (not safe))
                   (if (##values? _g201001_) (##values-length _g201001_) 1))))
            (if (not (let () (declare (not safe)) (##fx= _g201002_ 2)))
                (error "Context expects 2 values" _g201002_)))
          (let ((_%id27291%_
                 (let () (declare (not safe)) (##values-ref _g201001_ 0)))
                (_%type-module27293%_
                 (let () (declare (not safe)) (##values-ref _g201001_ 1))))
            (let* ((_%fields27325%_
                    (let _%loop27295%_ ((_%rest27298%_ _%fields27289%_)
                                        (_%normalized27300%_ '()))
                      (if (pair? _%rest27298%_)
                          (let ((_%field27302%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%rest27298%_)))
                                (_%rest27304%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%rest27298%_))))
                            (if (memq _%field27302%_ _%rest27304%_)
                                (let ((_%$e27306%_
                                       (agetq _%field27302%_
                                              _%normalized27300%_)))
                                  (if _%$e27306%_
                                      ((lambda (_%previous27310%_)
                                         (let ((_%normalized-field27313%_
                                                (make-symbol
                                                 '"super-"
                                                 _%previous27310%_)))
                                           (_%loop27295%_
                                            _%rest27304%_
                                            (cons (cons _%field27302%_
                                                        _%normalized-field27313%_)
                                                  _%normalized27300%_))))
                                       _%$e27306%_)
                                      (let ((_%normalized-field27318%_
                                             (make-symbol
                                              '"super-"
                                              _%field27302%_)))
                                        (_%loop27295%_
                                         _%rest27304%_
                                         (cons (cons _%field27302%_
                                                     _%normalized-field27318%_)
                                               _%normalized27300%_)))))
                                (_%loop27295%_
                                 _%rest27304%_
                                 (cons (cons _%field27302%_ _%field27302%_)
                                       _%normalized27300%_))))
                          (foldl (lambda (_%n27321%_ _%r27323%_)
                                   (cons (cdr _%n27321%_) _%r27323%_))
                                 '()
                                 _%normalized27300%_))))
                   (_%field-offsets27328%_
                    (let ((__tmp201003 (length _%fields27325%_)))
                      (declare (not safe))
                      (##iota __tmp201003 '1)))
                   (_%&getfs27336%_
                    (map (lambda (_%g2733027332%_)
                           (gx#stx-identifier
                            _%id27291%_
                            '"&"
                            _%id27291%_
                            '"-"
                            _%g2733027332%_))
                         _%fields27325%_))
                   (_%&setfs27344%_
                    (map (lambda (_%g2733827340%_)
                           (gx#stx-identifier
                            _%id27291%_
                            '"&"
                            _%id27291%_
                            '"-"
                            _%g2733827340%_
                            '"-set!"))
                         _%fields27325%_))
                   (_%getfs27352%_
                    (map (lambda (_%g2734627348%_)
                           (gx#stx-identifier
                            _%id27291%_
                            _%id27291%_
                            '"-"
                            _%g2734627348%_))
                         _%fields27325%_))
                   (_%setfs27360%_
                    (map (lambda (_%g2735427356%_)
                           (gx#stx-identifier
                            _%id27291%_
                            _%id27291%_
                            '"-"
                            _%g2735427356%_
                            '"-set!"))
                         _%fields27325%_)))
              (|gerbil/core/mop~MOP-5[1]#emit-system-class|
               _%stx27286%_
               _%klass27288%_
               _%type-module27293%_
               _%fields27325%_
               _%field-offsets27328%_
               _%&getfs27336%_
               _%&setfs27344%_
               _%getfs27352%_
               _%setfs27360%_)))))))
  (define |gerbil/core/mop~MOP-5[1]#emit-system-class|
    (lambda (_%stx26587%_
             _%klass26589%_
             _%type-module26590%_
             _%fields26591%_
             _%field-offsets26592%_
             _%&getfs26593%_
             _%&setfs26594%_
             _%getfs26595%_
             _%setfs26596%_)
      (let* ((_%g2659826726%_
              (lambda (_%g2659926722%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g2659926722%_)))
             (_%g2659727282%_
              (lambda (_%g2659926730%_)
                (if (gx#stx-pair? _%g2659926730%_)
                    (let ((_%e2661326733%_ (gx#syntax-e _%g2659926730%_)))
                      (let ((_%hd2661426737%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2661326733%_)))
                            (_%tl2661526740%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2661326733%_))))
                        (if (gx#stx-pair? _%tl2661526740%_)
                            (let ((_%e2661626743%_
                                   (gx#syntax-e _%tl2661526740%_)))
                              (let ((_%hd2661726747%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2661626743%_)))
                                    (_%tl2661826750%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2661626743%_))))
                                (if (gx#stx-pair? _%tl2661826750%_)
                                    (let ((_%e2661926753%_
                                           (gx#syntax-e _%tl2661826750%_)))
                                      (let ((_%hd2662026757%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2661926753%_)))
                                            (_%tl2662126760%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2661926753%_))))
                                        (if (gx#stx-pair? _%tl2662126760%_)
                                            (let ((_%e2662226763%_
                                                   (gx#syntax-e
                                                    _%tl2662126760%_)))
                                              (let ((_%hd2662326767%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2662226763%_)))
                                                    (_%tl2662426770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2662226763%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd2662326767%_)
                                                    (let ((_g201004_
                                                           (gx#syntax-split-splice
                                                            _%hd2662326767%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g201005_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g201004_)
                             (##values-length _g201004_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g201005_ 2)))
                      (error "Context expects 2 values" _g201005_)))
                (let ((_%target2662526773%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201004_ 0)))
                      (_%tl2662726776%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201004_ 1))))
                  (if (gx#stx-null? _%tl2662726776%_)
                      (letrec ((_%loop2662826779%_
                                (lambda (_%hd2662626783%_ _%field2663226786%_)
                                  (if (gx#stx-pair? _%hd2662626783%_)
                                      (let ((_%e2662926788%_
                                             (gx#syntax-e _%hd2662626783%_)))
                                        (let ((_%lp-hd2663026792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2662926788%_)))
                                              (_%lp-tl2663126795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2662926788%_))))
                                          (_%loop2662826779%_
                                           _%lp-tl2663126795%_
                                           (cons _%lp-hd2663026792%_
                                                 _%field2663226786%_))))
                                      (let ((_%field2663326798%_
                                             (reverse _%field2663226786%_)))
                                        (if (gx#stx-pair? _%tl2662426770%_)
                                            (let ((_%e2663426801%_
                                                   (gx#syntax-e
                                                    _%tl2662426770%_)))
                                              (let ((_%hd2663526805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2663426801%_)))
                                                    (_%tl2663626808%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2663426801%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd2663526805%_)
                                                    (let ((_g201006_
                                                           (gx#syntax-split-splice
                                                            _%hd2663526805%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g201007_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g201006_)
                             (##values-length _g201006_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g201007_ 2)))
                      (error "Context expects 2 values" _g201007_)))
                (let ((_%target2663726811%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201006_ 0)))
                      (_%tl2663926814%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201006_ 1))))
                  (if (gx#stx-null? _%tl2663926814%_)
                      (letrec ((_%loop2664026817%_
                                (lambda (_%hd2663826821%_
                                         _%field-offset2664426824%_)
                                  (if (gx#stx-pair? _%hd2663826821%_)
                                      (let ((_%e2664126826%_
                                             (gx#syntax-e _%hd2663826821%_)))
                                        (let ((_%lp-hd2664226830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2664126826%_)))
                                              (_%lp-tl2664326833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2664126826%_))))
                                          (_%loop2664026817%_
                                           _%lp-tl2664326833%_
                                           (cons _%lp-hd2664226830%_
                                                 _%field-offset2664426824%_))))
                                      (let ((_%field-offset2664526836%_
                                             (reverse _%field-offset2664426824%_)))
                                        (if (gx#stx-pair? _%tl2663626808%_)
                                            (let ((_%e2664626839%_
                                                   (gx#syntax-e
                                                    _%tl2663626808%_)))
                                              (let ((_%hd2664726843%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2664626839%_)))
                                                    (_%tl2664826846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2664626839%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd2664726843%_)
                                                    (let ((_g201008_
                                                           (gx#syntax-split-splice
                                                            _%hd2664726843%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g201009_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g201008_)
                             (##values-length _g201008_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g201009_ 2)))
                      (error "Context expects 2 values" _g201009_)))
                (let ((_%target2664926849%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201008_ 0)))
                      (_%tl2665126852%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201008_ 1))))
                  (if (gx#stx-null? _%tl2665126852%_)
                      (letrec ((_%loop2665226855%_
                                (lambda (_%hd2665026859%_
                                         _%&field-ref2665626862%_)
                                  (if (gx#stx-pair? _%hd2665026859%_)
                                      (let ((_%e2665326864%_
                                             (gx#syntax-e _%hd2665026859%_)))
                                        (let ((_%lp-hd2665426868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2665326864%_)))
                                              (_%lp-tl2665526871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2665326864%_))))
                                          (_%loop2665226855%_
                                           _%lp-tl2665526871%_
                                           (cons _%lp-hd2665426868%_
                                                 _%&field-ref2665626862%_))))
                                      (let ((_%&field-ref2665726874%_
                                             (reverse _%&field-ref2665626862%_)))
                                        (if (gx#stx-pair? _%tl2664826846%_)
                                            (let ((_%e2665826877%_
                                                   (gx#syntax-e
                                                    _%tl2664826846%_)))
                                              (let ((_%hd2665926881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2665826877%_)))
                                                    (_%tl2666026884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2665826877%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd2665926881%_)
                                                    (let ((_g201010_
                                                           (gx#syntax-split-splice
                                                            _%hd2665926881%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g201011_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g201010_)
                             (##values-length _g201010_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g201011_ 2)))
                      (error "Context expects 2 values" _g201011_)))
                (let ((_%target2666126887%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201010_ 0)))
                      (_%tl2666326890%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201010_ 1))))
                  (if (gx#stx-null? _%tl2666326890%_)
                      (letrec ((_%loop2666426893%_
                                (lambda (_%hd2666226897%_
                                         _%&field-set!2666826900%_)
                                  (if (gx#stx-pair? _%hd2666226897%_)
                                      (let ((_%e2666526902%_
                                             (gx#syntax-e _%hd2666226897%_)))
                                        (let ((_%lp-hd2666626906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2666526902%_)))
                                              (_%lp-tl2666726909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2666526902%_))))
                                          (_%loop2666426893%_
                                           _%lp-tl2666726909%_
                                           (cons _%lp-hd2666626906%_
                                                 _%&field-set!2666826900%_))))
                                      (let ((_%&field-set!2666926912%_
                                             (reverse _%&field-set!2666826900%_)))
                                        (if (gx#stx-pair? _%tl2666026884%_)
                                            (let ((_%e2667026915%_
                                                   (gx#syntax-e
                                                    _%tl2666026884%_)))
                                              (let ((_%hd2667126919%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2667026915%_)))
                                                    (_%tl2667226922%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2667026915%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd2667126919%_)
                                                    (let ((_g201012_
                                                           (gx#syntax-split-splice
                                                            _%hd2667126919%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g201013_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g201012_)
                             (##values-length _g201012_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g201013_ 2)))
                      (error "Context expects 2 values" _g201013_)))
                (let ((_%target2667326925%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201012_ 0)))
                      (_%tl2667526928%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201012_ 1))))
                  (if (gx#stx-null? _%tl2667526928%_)
                      (letrec ((_%loop2667626931%_
                                (lambda (_%hd2667426935%_
                                         _%field-ref2668026938%_)
                                  (if (gx#stx-pair? _%hd2667426935%_)
                                      (let ((_%e2667726940%_
                                             (gx#syntax-e _%hd2667426935%_)))
                                        (let ((_%lp-hd2667826944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2667726940%_)))
                                              (_%lp-tl2667926947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2667726940%_))))
                                          (_%loop2667626931%_
                                           _%lp-tl2667926947%_
                                           (cons _%lp-hd2667826944%_
                                                 _%field-ref2668026938%_))))
                                      (let ((_%field-ref2668126950%_
                                             (reverse _%field-ref2668026938%_)))
                                        (if (gx#stx-pair? _%tl2667226922%_)
                                            (let ((_%e2668226953%_
                                                   (gx#syntax-e
                                                    _%tl2667226922%_)))
                                              (let ((_%hd2668326957%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2668226953%_)))
                                                    (_%tl2668426960%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2668226953%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd2668326957%_)
                                                    (let ((_g201014_
                                                           (gx#syntax-split-splice
                                                            _%hd2668326957%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g201015_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g201014_)
                             (##values-length _g201014_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g201015_ 2)))
                      (error "Context expects 2 values" _g201015_)))
                (let ((_%target2668526963%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201014_ 0)))
                      (_%tl2668726966%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201014_ 1))))
                  (if (gx#stx-null? _%tl2668726966%_)
                      (letrec ((_%loop2668826969%_
                                (lambda (_%hd2668626973%_
                                         _%field-set!2669226976%_)
                                  (if (gx#stx-pair? _%hd2668626973%_)
                                      (let ((_%e2668926978%_
                                             (gx#syntax-e _%hd2668626973%_)))
                                        (let ((_%lp-hd2669026982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2668926978%_)))
                                              (_%lp-tl2669126985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2668926978%_))))
                                          (_%loop2668826969%_
                                           _%lp-tl2669126985%_
                                           (cons _%lp-hd2669026982%_
                                                 _%field-set!2669226976%_))))
                                      (let ((_%field-set!2669326988%_
                                             (reverse _%field-set!2669226976%_)))
                                        (if (gx#stx-pair? _%tl2668426960%_)
                                            (let ((_%e2669426991%_
                                                   (gx#syntax-e
                                                    _%tl2668426960%_)))
                                              (let ((_%hd2669526995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2669426991%_)))
                                                    (_%tl2669626998%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2669426991%_))))
                                                (if (gx#stx-pair?
                                                     _%hd2669526995%_)
                                                    (let ((_%e2669727001%_
                                                           (gx#syntax-e
                                                            _%hd2669526995%_)))
                                                      (let ((_%hd2669827005%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2669727001%_)))
                    (_%tl2669927008%_
                     (let () (declare (not safe)) (##cdr _%e2669727001%_))))
                (if (gx#stx-pair? _%tl2669927008%_)
                    (let ((_%e2670027011%_ (gx#syntax-e _%tl2669927008%_)))
                      (let ((_%hd2670127015%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2670027011%_)))
                            (_%tl2670227018%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2670027011%_))))
                        (if (gx#stx-pair? _%tl2670227018%_)
                            (let ((_%e2670327021%_
                                   (gx#syntax-e _%tl2670227018%_)))
                              (let ((_%hd2670427025%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2670327021%_)))
                                    (_%tl2670527028%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2670327021%_))))
                                (if (gx#stx-pair? _%tl2670527028%_)
                                    (let ((_%e2670627031%_
                                           (gx#syntax-e _%tl2670527028%_)))
                                      (let ((_%hd2670727035%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2670627031%_)))
                                            (_%tl2670827038%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2670627031%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd2670727035%_)
                                            (let ((_g201016_
                                                   (gx#syntax-split-splice
                                                    _%hd2670727035%_
                                                    '0)))
                                              (begin
                                                (let ((_g201017_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g201016_)
                                                             (##values-length
                                                              _g201016_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g201017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g201017_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2670927041%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g201016_
                                                          0)))
                                                      (_%tl2671127044%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g201016_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2671127044%_)
                                                      (letrec ((_%loop2671227047%_
                                                                (lambda (_%hd2671027051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super2671627054%_)
                          (if (gx#stx-pair? _%hd2671027051%_)
                              (let ((_%e2671327056%_
                                     (gx#syntax-e _%hd2671027051%_)))
                                (let ((_%lp-hd2671427060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2671327056%_)))
                                      (_%lp-tl2671527063%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2671327056%_))))
                                  (_%loop2671227047%_
                                   _%lp-tl2671527063%_
                                   (cons _%lp-hd2671427060%_
                                         _%super2671627054%_))))
                              (let ((_%super2671727066%_
                                     (reverse _%super2671627054%_)))
                                (if (gx#stx-pair? _%tl2670827038%_)
                                    (let ((_%e2671827069%_
                                           (gx#syntax-e _%tl2670827038%_)))
                                      (let ((_%hd2671927073%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2671827069%_)))
                                            (_%tl2672027076%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2671827069%_))))
                                        (if (gx#stx-null? _%tl2672027076%_)
                                            (if (gx#stx-null? _%tl2669626998%_)
                                                ((lambda (_%g2660027079%_
                                                          _%g2660127081%_
                                                          _%g2660227082%_
                                                          _%g2660327083%_
                                                          _%g2660427084%_
                                                          _%g2660527085%_
                                                          _%g2660627086%_
                                                          _%g2660727087%_
                                                          _%g2660827088%_
                                                          _%g2660927089%_
                                                          _%g2661027090%_
                                                          _%g2661127091%_
                                                          _%g2661227092%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'module)
                             (cons _%g2661227092%_
                                   (cons (cons (gx#datum->syntax '#f 'export)
                                               (cons '#t '()))
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%g2660927089%_
                                            _%g2660827088%_
                                            _%g2660727087%_)
                                           (foldr (lambda (_%g2717327204%_
                                                           _%g2717427207%_
                                                           _%g2717527209%_
                                                           _%g2717627211%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defrule)
                        (cons (cons _%g2717527209%_
                                    (cons (gx#datum->syntax '#f 'obj) '()))
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '##unchecked-structure-ref)
                                          (cons (gx#datum->syntax '#f 'obj)
                                                (cons _%g2717427207%_
                                                      (cons _%g2660227082%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2717327204%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  _%g2717627211%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g2660927089%_
                                                     _%g2660827088%_
                                                     _%g2660627086%_)
                                                    (foldr (lambda (_%g2717727214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2717827217%_
                            _%g2717927219%_
                            _%g2718027221%_)
                     (cons (cons (gx#datum->syntax '#f 'defrule)
                                 (cons (cons _%g2717927219%_
                                             (cons (gx#datum->syntax '#f 'obj)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'val)
                                                         '())))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##unchecked-structure-set!)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'obj)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'val)
                                                               (cons _%g2717827217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g2660227082%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%g2717727214%_ '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           _%g2718027221%_))
                   (begin
                     (gx#syntax-check-splice-targets
                      _%g2660927089%_
                      _%g2660827088%_
                      _%g2660527085%_)
                     (foldr (lambda (_%g2718127224%_
                                     _%g2718227227%_
                                     _%g2718327229%_
                                     _%g2718427231%_)
                              (cons (cons (gx#datum->syntax '#f 'defrule)
                                          (cons (cons _%g2718327229%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'obj)
                                                            '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons _%g2718227227%_
                                (cons _%g2660227082%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2718127224%_ '()))
                                            '())))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g2718427231%_))
                            (begin
                              (gx#syntax-check-splice-targets
                               _%g2660927089%_
                               _%g2660827088%_
                               _%g2660427084%_)
                              (foldr (lambda (_%g2718527234%_
                                              _%g2718627237%_
                                              _%g2718727239%_
                                              _%g2718827241%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'defrule)
                                                   (cons (cons _%g2718727239%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'obj)
                             (cons (gx#datum->syntax '#f 'val) '())))
                 (cons (cons (gx#datum->syntax '#f '##structure-set!)
                             (cons (gx#datum->syntax '#f 'obj)
                                   (cons (gx#datum->syntax '#f 'val)
                                         (cons _%g2718627237%_
                                               (cons _%g2660227082%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2718527234%_ '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2718827241%_))
                                     '()
                                     _%g2660927089%_
                                     _%g2660827088%_
                                     _%g2660427084%_))
                            _%g2660927089%_
                            _%g2660827088%_
                            _%g2660527085%_))
                   _%g2660927089%_
                   _%g2660827088%_
                   _%g2660627086%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2660927089%_
                                                  _%g2660827088%_
                                                  _%g2660727087%_)))))
                       (cons (cons (gx#datum->syntax '#f 'import)
                                   (cons _%g2661227092%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'defsyntax)
                                         (cons _%g2660327083%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-class-type-info)
                                                           (cons 'id:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g2661127091%_ '()))
                               (cons 'name:
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2661027090%_ '()))
                                           (cons 'super:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (foldr (lambda (_%g2718927244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g2719027247%_)
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g2718927244%_ '()))
                                    _%g2719027247%_))
                            '()
                            _%g2660127081%_))
               (cons 'slots:
                     (cons (cons (gx#datum->syntax '#f '@list) '())
                           (cons 'system?:
                                 (cons '#t
                                       (cons 'type-descriptor:
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2660227082%_
                                                               '()))
                                                   (cons 'predicate:
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote-syntax)
                             (cons _%g2660027079%_ '()))
                       (cons 'accessors:
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%g2660527085%_
                                            _%g2660927089%_)
                                           (foldr (lambda (_%g2719127250%_
                                                           _%g2719227253%_
                                                           _%g2719327255%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2719227253%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2719127250%_ '()))
                                          '()))))
                  _%g2719327255%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _%g2660527085%_
                                                  _%g2660927089%_)))
                                   (cons 'mutators:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _%g2660427084%_
                                                        _%g2660927089%_)
                                                       (foldr (lambda (_%g2719427258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g2719527261%_
                               _%g2719627263%_)
                        (cons (cons (gx#datum->syntax '#f '@list)
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%g2719527261%_ '()))
                                          (cons '::
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote-syntax)
                                                            (cons _%g2719427258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2719627263%_))
                      '()
                      _%g2660427084%_
                      _%g2660927089%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'unchecked-accessors:
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%g2660727087%_
                            _%g2660927089%_)
                           (foldr (lambda (_%g2719727266%_
                                           _%g2719827269%_
                                           _%g2719927271%_)
                                    (cons (cons (gx#datum->syntax '#f '@list)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%g2719827269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons '::
                    (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                (cons _%g2719727266%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g2719927271%_))
                                  '()
                                  _%g2660727087%_
                                  _%g2660927089%_)))
                   (cons 'unchecked-mutators:
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%g2660627086%_
                                        _%g2660927089%_)
                                       (foldr (lambda (_%g2720027274%_
                                                       _%g2720127277%_
                                                       _%g2720227279%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2720127277%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2720027274%_ '()))
                                      '()))))
              _%g2720227279%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%g2660627086%_
                                              _%g2660927089%_)))
                               '())))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd2671927073%_
                                                 _%super2671727066%_
                                                 _%hd2670427025%_
                                                 _%hd2670127015%_
                                                 _%field-set!2669326988%_
                                                 _%field-ref2668126950%_
                                                 _%&field-set!2666926912%_
                                                 _%&field-ref2665726874%_
                                                 _%field-offset2664526836%_
                                                 _%field2663326798%_
                                                 _%hd2662026757%_
                                                 _%hd2661726747%_
                                                 _%hd2661426737%_)
                                                (_%g2659826726%_
                                                 _%g2659926730%_))
                                            (_%g2659826726%_
                                             _%g2659926730%_))))
                                    (_%g2659826726%_ _%g2659926730%_)))))))
                (_%loop2671227047%_ _%target2670927041%_ '()))
              (_%g2659826726%_ _%g2659926730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2659826726%_
                                             _%g2659926730%_))))
                                    (_%g2659826726%_ _%g2659926730%_))))
                            (_%g2659826726%_ _%g2659926730%_))))
                    (_%g2659826726%_ _%g2659926730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2659826726%_
                                                     _%g2659926730%_))))
                                            (_%g2659826726%_
                                             _%g2659926730%_)))))))
                        (_%loop2668826969%_ _%target2668526963%_ '()))
                      (_%g2659826726%_ _%g2659926730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2659826726%_
                                                     _%g2659926730%_))))
                                            (_%g2659826726%_
                                             _%g2659926730%_)))))))
                        (_%loop2667626931%_ _%target2667326925%_ '()))
                      (_%g2659826726%_ _%g2659926730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2659826726%_
                                                     _%g2659926730%_))))
                                            (_%g2659826726%_
                                             _%g2659926730%_)))))))
                        (_%loop2666426893%_ _%target2666126887%_ '()))
                      (_%g2659826726%_ _%g2659926730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2659826726%_
                                                     _%g2659926730%_))))
                                            (_%g2659826726%_
                                             _%g2659926730%_)))))))
                        (_%loop2665226855%_ _%target2664926849%_ '()))
                      (_%g2659826726%_ _%g2659926730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2659826726%_
                                                     _%g2659926730%_))))
                                            (_%g2659826726%_
                                             _%g2659926730%_)))))))
                        (_%loop2664026817%_ _%target2663726811%_ '()))
                      (_%g2659826726%_ _%g2659926730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2659826726%_
                                                     _%g2659926730%_))))
                                            (_%g2659826726%_
                                             _%g2659926730%_)))))))
                        (_%loop2662826779%_ _%target2662526773%_ '()))
                      (_%g2659826726%_ _%g2659926730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2659826726%_
                                                     _%g2659926730%_))))
                                            (_%g2659826726%_
                                             _%g2659926730%_))))
                                    (_%g2659826726%_ _%g2659926730%_))))
                            (_%g2659826726%_ _%g2659926730%_))))
                    (_%g2659826726%_ _%g2659926730%_)))))
        (_%g2659727282%_
         (list _%type-module26590%_
               (class-type-id _%klass26589%_)
               (class-type-name _%klass26589%_)
               _%fields26591%_
               _%field-offsets26592%_
               _%&getfs26593%_
               _%&setfs26594%_
               _%getfs26595%_
               _%setfs26596%_
               _%stx26587%_)))))
  (define |gerbil/core/mop~MOP-5[:0:]#defsystem-class-info|
    (lambda (_%stx27660%_)
      (let* ((_%g2766327698%_
              (lambda (_%g2766427694%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g2766427694%_)))
             (_%g2766227841%_
              (lambda (_%g2766427702%_)
                (if (gx#stx-pair? _%g2766427702%_)
                    (let ((_%e2766927705%_ (gx#syntax-e _%g2766427702%_)))
                      (let ((_%hd2767027709%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2766927705%_)))
                            (_%tl2767127712%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2766927705%_))))
                        (if (gx#stx-pair? _%tl2767127712%_)
                            (let ((_%e2767227715%_
                                   (gx#syntax-e _%tl2767127712%_)))
                              (let ((_%hd2767327719%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2767227715%_)))
                                    (_%tl2767427722%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2767227715%_))))
                                (if (gx#stx-pair? _%tl2767427722%_)
                                    (let ((_%e2767527725%_
                                           (gx#syntax-e _%tl2767427722%_)))
                                      (let ((_%hd2767627729%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2767527725%_)))
                                            (_%tl2767727732%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2767527725%_))))
                                        (if (gx#stx-pair? _%tl2767727732%_)
                                            (let ((_%e2767827735%_
                                                   (gx#syntax-e
                                                    _%tl2767727732%_)))
                                              (let ((_%hd2767927739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2767827735%_)))
                                                    (_%tl2768027742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2767827735%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd2767927739%_)
                                                    (let ((_g201018_
                                                           (gx#syntax-split-splice
                                                            _%hd2767927739%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g201019_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g201018_)
                             (##values-length _g201018_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g201019_ 2)))
                      (error "Context expects 2 values" _g201019_)))
                (let ((_%target2768127745%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201018_ 0)))
                      (_%tl2768327748%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201018_ 1))))
                  (if (gx#stx-null? _%tl2768327748%_)
                      (letrec ((_%loop2768427751%_
                                (lambda (_%hd2768227755%_ _%super2768827758%_)
                                  (if (gx#stx-pair? _%hd2768227755%_)
                                      (let ((_%e2768527760%_
                                             (gx#syntax-e _%hd2768227755%_)))
                                        (let ((_%lp-hd2768627764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2768527760%_)))
                                              (_%lp-tl2768727767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2768527760%_))))
                                          (_%loop2768427751%_
                                           _%lp-tl2768727767%_
                                           (cons _%lp-hd2768627764%_
                                                 _%super2768827758%_))))
                                      (let ((_%super2768927770%_
                                             (reverse _%super2768827758%_)))
                                        (if (gx#stx-pair? _%tl2768027742%_)
                                            (let ((_%e2769027773%_
                                                   (gx#syntax-e
                                                    _%tl2768027742%_)))
                                              (let ((_%hd2769127777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2769027773%_)))
                                                    (_%tl2769227780%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2769027773%_))))
                                                (if (gx#stx-null?
                                                     _%tl2769227780%_)
                                                    ((lambda (_%g2766527783%_
                                                              _%g2766627785%_
                                                              _%g2766727786%_
                                                              _%g2766827787%_)
                                                       (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2766827787%_)
                        (gx#identifier? _%g2766727786%_)
                        (andmap gx#identifier?
                                (foldr (lambda (_%g2781227815%_
                                                _%g2781327818%_)
                                         (cons _%g2781227815%_
                                               _%g2781327818%_))
                                       '()
                                       _%g2766627785%_))
                        (gx#identifier? _%g2766527783%_))
                   (let* ((_%klass27821%_ (gx#eval-syntax _%g2766727786%_))
                          (_%props27824%_
                           (class-type-properties _%klass27821%_))
                          (_%$e27829%_ (agetq 'system-type: _%props27824%_)))
                     (if _%$e27829%_
                         ((lambda (_%type27833%_)
                            (let ((_%fields27836%_
                                   (type-field-list _%type27833%_)))
                              (|gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
                               _%stx27660%_
                               _%klass27821%_
                               _%fields27836%_)))
                          _%$e27829%_)
                         (|gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
                          _%stx27660%_
                          _%klass27821%_)))
                   (_%g2766327698%_ _%g2766427702%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd2769127777%_
                                                     _%super2768927770%_
                                                     _%hd2767627729%_
                                                     _%hd2767327719%_)
                                                    (_%g2766327698%_
                                                     _%g2766427702%_))))
                                            (_%g2766327698%_
                                             _%g2766427702%_)))))))
                        (_%loop2768427751%_ _%target2768127745%_ '()))
                      (_%g2766327698%_ _%g2766427702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2766327698%_
                                                     _%g2766427702%_))))
                                            (_%g2766327698%_
                                             _%g2766427702%_))))
                                    (_%g2766327698%_ _%g2766427702%_))))
                            (_%g2766327698%_ _%g2766427702%_))))
                    (_%g2766327698%_ _%g2766427702%_)))))
        (_%g2766227841%_ _%stx27660%_)))))
