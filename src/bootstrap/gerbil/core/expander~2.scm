(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander~SyntaxSugar[1]#_g1921_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax-rules|
      (lambda (_%stx362%_)
        (let* ((_%g365389%_
                (lambda (_%g366385%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g366385%_)))
               (_%g364695%_
                (lambda (_%g366393%_)
                  (if (gx#stx-pair? _%g366393%_)
                      (let ((_%e369396%_ (gx#syntax-e _%g366393%_)))
                        (let ((_%hd370400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e369396%_)))
                              (_%tl371403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e369396%_))))
                          (if (gx#stx-pair? _%tl371403%_)
                              (let ((_%e372406%_ (gx#syntax-e _%tl371403%_)))
                                (let ((_%hd373410%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e372406%_)))
                                      (_%tl374413%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e372406%_))))
                                  (if (gx#stx-pair/null? _%tl374413%_)
                                      (let ((_g1917_ (gx#syntax-split-splice
                                                      _%tl374413%_
                                                      '0)))
                                        (begin
                                          (let ((_g1918_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g1917_)
                                                               (##vector-length
                                                                _g1917_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g1918_ 2)))
                                                (error "Context expects 2 values"
                                                       _g1918_)))
                                          (let ((_%target375416%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g1917_ 0)))
                                                (_%tl377419%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g1917_ 1))))
                                            (if (gx#stx-null? _%tl377419%_)
                                                (letrec ((_%loop378422%_
                                                          (lambda (_%hd376426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses382429%_)
                    (if (gx#stx-pair? _%hd376426%_)
                        (let ((_%e379432%_ (gx#syntax-e _%hd376426%_)))
                          (let ((_%lp-hd380436%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e379432%_)))
                                (_%lp-tl381439%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e379432%_))))
                            (_%loop378422%_
                             _%lp-tl381439%_
                             (cons _%lp-hd380436%_ _%clauses382429%_))))
                        (let ((_%clauses383442%_ (reverse _%clauses382429%_)))
                          ((lambda (_%L446%_ _%L448%_)
                             (if (gx#identifier-list? _%L448%_)
                                 (let* ((_%body612%_
                                         (gx#stx-map
                                          (lambda (_%clause469%_)
                                            (let* ((_%__stx16541655%_
                                                    _%clause469%_)
                                                   (_%g473500%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx16541655%_))))
                                              (let ((_%__kont16571658%_
                                                     (lambda (_%L585%_
                                                              _%L587%_)
                                                       (cons _%L587%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _%L585%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont16591660%_
                                                     (lambda (_%L537%_
                                                              _%L539%_
                                                              _%L540%_)
                                                       (cons _%L540%_
                                                             (cons _%L539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons _%L537%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx16541655%_)
                                                    (let ((_%e477565%_
                                                           (gx#syntax-e
                                                            _%__stx16541655%_)))
                                                      (let ((_%tl479572%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e477565%_)))
                    (_%hd478569%_
                     (let () (declare (not safe)) (##car _%e477565%_))))
                (if (gx#stx-pair? _%tl479572%_)
                    (let ((_%e480575%_ (gx#syntax-e _%tl479572%_)))
                      (let ((_%tl482582%_
                             (let () (declare (not safe)) (##cdr _%e480575%_)))
                            (_%hd481579%_
                             (let ()
                               (declare (not safe))
                               (##car _%e480575%_))))
                        (if (gx#stx-null? _%tl482582%_)
                            (_%__kont16571658%_ _%hd481579%_ _%hd478569%_)
                            (if (gx#stx-pair? _%tl482582%_)
                                (let ((_%e492527%_ (gx#syntax-e _%tl482582%_)))
                                  (let ((_%tl494534%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e492527%_)))
                                        (_%hd493531%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e492527%_))))
                                    (if (gx#stx-null? _%tl494534%_)
                                        (_%__kont16591660%_
                                         _%hd493531%_
                                         _%hd481579%_
                                         _%hd478569%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g473500%_)))))
                                (let () (declare (not safe)) (_%g473500%_))))))
                    (let () (declare (not safe)) (_%g473500%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g473500%_))))))
                                          (foldr (lambda (_%g603606%_
                                                          _%g604609%_)
                                                   (cons _%g603606%_
                                                         _%g604609%_))
                                                 '()
                                                 _%L446%_)))
                                        (_%g615632%_
                                         (lambda (_%g616628%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g616628%_)))
                                        (_%g614691%_
                                         (lambda (_%g616636%_)
                                           (if (gx#stx-pair/null? _%g616636%_)
                                               (let ((_g1919_ (gx#syntax-split-splice
                                                               _%g616636%_
                                                               '0)))
                                                 (begin
                                                   (let ((_g1920_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g1919_)
                                (##vector-length _g1919_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g1920_ 2)))
                 (error "Context expects 2 values" _g1920_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target618639%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g1919_
                                                             0)))
                                                         (_%tl620642%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g1919_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl620642%_)
                                                         (letrec ((_%loop621645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd619649%_ _%clause625652%_)
                             (if (gx#stx-pair? _%hd619649%_)
                                 (let ((_%e622655%_
                                        (gx#syntax-e _%hd619649%_)))
                                   (let ((_%lp-hd623659%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e622655%_)))
                                         (_%lp-tl624662%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e622655%_))))
                                     (_%loop621645%_
                                      _%lp-tl624662%_
                                      (cons _%lp-hd623659%_
                                            _%clause625652%_))))
                                 (let ((_%clause626665%_
                                        (reverse _%clause625652%_)))
                                   ((lambda (_%L669%_)
                                      (cons (gx#datum->syntax '#f 'lambda%)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$stx)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-case)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            (cons _%L448%_
                                  (foldr (lambda (_%g682685%_ _%g683688%_)
                                           (cons _%g682685%_ _%g683688%_))
                                         '()
                                         _%L669%_))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause626665%_))))))
                   (_%loop621645%_ _%target618639%_ '()))
                 (_%g615632%_ _%g616636%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g615632%_ _%g616636%_)))))
                                   (_%g614691%_ _%body612%_))
                                 (_%g365389%_ _%g366393%_)))
                           _%clauses383442%_
                           _%hd373410%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop378422%_
                                                   _%target375416%_
                                                   '()))
                                                (_%g365389%_ _%g366393%_)))))
                                      (_%g365389%_ _%g366393%_))))
                              (_%g365389%_ _%g366393%_))))
                      (_%g365389%_ _%g366393%_)))))
          (_%g364695%_ _%stx362%_))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax|
      (lambda (_%stx701%_)
        (let* ((_%__stx16981699%_ _%stx701%_)
               (_%g706791%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx16981699%_))))
          (let ((_%__kont17011702%_
                 (lambda (_%L1131%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g11471150%_ _%g11481153%_)
                                        (cons _%g11471150%_ _%g11481153%_))
                                      '()
                                      _%L1131%_)))))
                (_%__kont17051706%_
                 (lambda (_%L1039%_ _%L1041%_ _%L1042%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons _%L1041%_
                               (cons '()
                                     (cons (cons _%L1042%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g10651068%_ _%g10661071%_)
                                    (cons _%g10651068%_ _%g10661071%_))
                                  '()
                                  _%L1039%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont17091710%_
                 (lambda (_%L902%_ _%L904%_ _%L905%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons (cons (gx#datum->syntax '#f 'list)
                                     (foldr (lambda (_%g931934%_ _%g932937%_)
                                              (cons _%g931934%_ _%g932937%_))
                                            '()
                                            _%L904%_))
                               (cons '()
                                     (cons (cons (foldr (lambda (_%g929940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g930943%_)
                  (cons _%g929940%_ _%g930943%_))
                '()
                _%L905%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g927946%_ _%g928949%_)
                                    (cons _%g927946%_ _%g928949%_))
                                  '()
                                  _%L902%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let* ((_%__match17991800%_
                    (lambda (_%e754798%_
                             _%hd755802%_
                             _%tl756805%_
                             _%e757808%_
                             _%hd758812%_
                             _%tl759815%_
                             _%__splice17111712%_
                             _%target760818%_
                             _%tl762821%_)
                      (letrec ((_%loop763824%_
                                (lambda (_%hd761828%_
                                         _%e767831%_
                                         _%pat768833%_)
                                  (if (gx#stx-pair? _%hd761828%_)
                                      (let ((_%e764836%_
                                             (gx#syntax-e _%hd761828%_)))
                                        (let ((_%lp-tl766843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e764836%_)))
                                              (_%lp-hd765840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e764836%_))))
                                          (if (gx#stx-pair? _%lp-hd765840%_)
                                              (let ((_%e780846%_
                                                     (gx#syntax-e
                                                      _%lp-hd765840%_)))
                                                (let ((_%tl782853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e780846%_)))
                                                      (_%hd781850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e780846%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl782853%_)
                                                      (let ((_%e783856%_
                                                             (gx#syntax-e
                                                              _%tl782853%_)))
                                                        (let ((_%tl785863%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e783856%_)))
                      (_%hd784860%_
                       (let () (declare (not safe)) (##car _%e783856%_))))
                  (if (gx#stx-null? _%tl785863%_)
                      (_%loop763824%_
                       _%lp-tl766843%_
                       (cons _%hd784860%_ _%e767831%_)
                       (cons _%hd781850%_ _%pat768833%_))
                      (let () (declare (not safe)) (_%g706791%_)))))
              (let () (declare (not safe)) (_%g706791%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g706791%_)))))
                                      (let ((_%pat770869%_
                                             (reverse _%pat768833%_))
                                            (_%e769866%_
                                             (reverse _%e767831%_)))
                                        (if (gx#stx-pair/null? _%tl759815%_)
                                            (let ((_%__splice17131714%_
                                                   (gx#syntax-split-splice
                                                    _%tl759815%_
                                                    '0)))
                                              (let ((_%tl773875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17131714%_
                                                        '1)))
                                                    (_%target771872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17131714%_
                                                        '0))))
                                                (if (gx#stx-null? _%tl773875%_)
                                                    (letrec ((_%loop774878%_
                                                              (lambda (_%hd772882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body778885%_)
                        (if (gx#stx-pair? _%hd772882%_)
                            (let ((_%e775888%_ (gx#syntax-e _%hd772882%_)))
                              (let ((_%lp-tl777895%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e775888%_)))
                                    (_%lp-hd776892%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e775888%_))))
                                (_%loop774878%_
                                 _%lp-tl777895%_
                                 (cons _%lp-hd776892%_ _%body778885%_))))
                            (let ((_%body779898%_ (reverse _%body778885%_)))
                              (_%__kont17091710%_
                               _%body779898%_
                               _%e769866%_
                               _%pat770869%_))))))
              (_%loop774878%_ _%target771872%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g706791%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g706791%_))))))))
                        (_%loop763824%_ _%target760818%_ '() '()))))
                   (_%__match17791780%_
                    (lambda (_%e727959%_
                             _%hd728963%_
                             _%tl729966%_
                             _%e730969%_
                             _%hd731973%_
                             _%tl732976%_
                             _%e733979%_
                             _%hd734983%_
                             _%tl735986%_
                             _%e736989%_
                             _%hd737993%_
                             _%tl738996%_
                             _%e739999%_
                             _%hd7401003%_
                             _%tl7411006%_
                             _%__splice17071708%_
                             _%target7421009%_
                             _%tl7441012%_)
                      (letrec ((_%loop7451015%_
                                (lambda (_%hd7431019%_ _%body7491022%_)
                                  (if (gx#stx-pair? _%hd7431019%_)
                                      (let ((_%e7461025%_
                                             (gx#syntax-e _%hd7431019%_)))
                                        (let ((_%lp-tl7481032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7461025%_)))
                                              (_%lp-hd7471029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7461025%_))))
                                          (_%loop7451015%_
                                           _%lp-tl7481032%_
                                           (cons _%lp-hd7471029%_
                                                 _%body7491022%_))))
                                      (let ((_%body7501035%_
                                             (reverse _%body7491022%_)))
                                        (_%__kont17051706%_
                                         _%body7501035%_
                                         _%hd7401003%_
                                         _%hd737993%_))))))
                        (_%loop7451015%_ _%target7421009%_ '()))))
                   (_%__match17371738%_
                    (lambda (_%e7091081%_
                             _%hd7101085%_
                             _%tl7111088%_
                             _%e7121091%_
                             _%hd7131095%_
                             _%tl7141098%_
                             _%__splice17031704%_
                             _%target7151101%_
                             _%tl7171104%_)
                      (letrec ((_%loop7181107%_
                                (lambda (_%hd7161111%_ _%body7221114%_)
                                  (if (gx#stx-pair? _%hd7161111%_)
                                      (let ((_%e7191117%_
                                             (gx#syntax-e _%hd7161111%_)))
                                        (let ((_%lp-tl7211124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7191117%_)))
                                              (_%lp-hd7201121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7191117%_))))
                                          (_%loop7181107%_
                                           _%lp-tl7211124%_
                                           (cons _%lp-hd7201121%_
                                                 _%body7221114%_))))
                                      (let ((_%body7231127%_
                                             (reverse _%body7221114%_)))
                                        (_%__kont17011702%_
                                         _%body7231127%_))))))
                        (_%loop7181107%_ _%target7151101%_ '())))))
              (if (gx#stx-pair? _%__stx16981699%_)
                  (let ((_%e7091081%_ (gx#syntax-e _%__stx16981699%_)))
                    (let ((_%tl7111088%_
                           (let () (declare (not safe)) (##cdr _%e7091081%_)))
                          (_%hd7101085%_
                           (let () (declare (not safe)) (##car _%e7091081%_))))
                      (if (gx#stx-pair? _%tl7111088%_)
                          (let ((_%e7121091%_ (gx#syntax-e _%tl7111088%_)))
                            (let ((_%tl7141098%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7121091%_)))
                                  (_%hd7131095%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7121091%_))))
                              (if (gx#stx-null? _%hd7131095%_)
                                  (if (gx#stx-pair/null? _%tl7141098%_)
                                      (let ((_%__splice17031704%_
                                             (gx#syntax-split-splice
                                              _%tl7141098%_
                                              '0)))
                                        (let ((_%tl7171104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17031704%_
                                                  '1)))
                                              (_%target7151101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17031704%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl7171104%_)
                                              (_%__match17371738%_
                                               _%e7091081%_
                                               _%hd7101085%_
                                               _%tl7111088%_
                                               _%e7121091%_
                                               _%hd7131095%_
                                               _%tl7141098%_
                                               _%__splice17031704%_
                                               _%target7151101%_
                                               _%tl7171104%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd7131095%_)
                                                  (let ((_%__splice17111712%_
                                                         (gx#syntax-split-splice
                                                          _%hd7131095%_
                                                          '0)))
                                                    (let ((_%tl762821%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17111712%_
                                                              '1)))
                                                          (_%target760818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17111712%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl762821%_)
                                                          (_%__match17991800%_
                                                           _%e7091081%_
                                                           _%hd7101085%_
                                                           _%tl7111088%_
                                                           _%e7121091%_
                                                           _%hd7131095%_
                                                           _%tl7141098%_
                                                           _%__splice17111712%_
                                                           _%target760818%_
                                                           _%tl762821%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g706791%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g706791%_))))))
                                      (if (gx#stx-pair/null? _%hd7131095%_)
                                          (let ((_%__splice17111712%_
                                                 (gx#syntax-split-splice
                                                  _%hd7131095%_
                                                  '0)))
                                            (let ((_%tl762821%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17111712%_
                                                      '1)))
                                                  (_%target760818%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17111712%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl762821%_)
                                                  (_%__match17991800%_
                                                   _%e7091081%_
                                                   _%hd7101085%_
                                                   _%tl7111088%_
                                                   _%e7121091%_
                                                   _%hd7131095%_
                                                   _%tl7141098%_
                                                   _%__splice17111712%_
                                                   _%target760818%_
                                                   _%tl762821%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g706791%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g706791%_))))
                                  (if (gx#stx-pair? _%hd7131095%_)
                                      (let ((_%e733979%_
                                             (gx#syntax-e _%hd7131095%_)))
                                        (let ((_%tl735986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e733979%_)))
                                              (_%hd734983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e733979%_))))
                                          (if (gx#stx-pair? _%hd734983%_)
                                              (let ((_%e736989%_
                                                     (gx#syntax-e
                                                      _%hd734983%_)))
                                                (let ((_%tl738996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e736989%_)))
                                                      (_%hd737993%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e736989%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl738996%_)
                                                      (let ((_%e739999%_
                                                             (gx#syntax-e
                                                              _%tl738996%_)))
                                                        (let ((_%tl7411006%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e739999%_)))
                      (_%hd7401003%_
                       (let () (declare (not safe)) (##car _%e739999%_))))
                  (if (gx#stx-null? _%tl7411006%_)
                      (if (gx#stx-null? _%tl735986%_)
                          (if (gx#stx-pair/null? _%tl7141098%_)
                              (let ((_%__splice17071708%_
                                     (gx#syntax-split-splice
                                      _%tl7141098%_
                                      '0)))
                                (let ((_%tl7441012%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17071708%_
                                          '1)))
                                      (_%target7421009%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17071708%_
                                          '0))))
                                  (if (gx#stx-null? _%tl7441012%_)
                                      (_%__match17791780%_
                                       _%e7091081%_
                                       _%hd7101085%_
                                       _%tl7111088%_
                                       _%e7121091%_
                                       _%hd7131095%_
                                       _%tl7141098%_
                                       _%e733979%_
                                       _%hd734983%_
                                       _%tl735986%_
                                       _%e736989%_
                                       _%hd737993%_
                                       _%tl738996%_
                                       _%e739999%_
                                       _%hd7401003%_
                                       _%tl7411006%_
                                       _%__splice17071708%_
                                       _%target7421009%_
                                       _%tl7441012%_)
                                      (if (gx#stx-pair/null? _%hd7131095%_)
                                          (let ((_%__splice17111712%_
                                                 (gx#syntax-split-splice
                                                  _%hd7131095%_
                                                  '0)))
                                            (let ((_%tl762821%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17111712%_
                                                      '1)))
                                                  (_%target760818%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17111712%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl762821%_)
                                                  (_%__match17991800%_
                                                   _%e7091081%_
                                                   _%hd7101085%_
                                                   _%tl7111088%_
                                                   _%e7121091%_
                                                   _%hd7131095%_
                                                   _%tl7141098%_
                                                   _%__splice17111712%_
                                                   _%target760818%_
                                                   _%tl762821%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g706791%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g706791%_))))))
                              (if (gx#stx-pair/null? _%hd7131095%_)
                                  (let ((_%__splice17111712%_
                                         (gx#syntax-split-splice
                                          _%hd7131095%_
                                          '0)))
                                    (let ((_%tl762821%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17111712%_
                                              '1)))
                                          (_%target760818%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17111712%_
                                              '0))))
                                      (if (gx#stx-null? _%tl762821%_)
                                          (_%__match17991800%_
                                           _%e7091081%_
                                           _%hd7101085%_
                                           _%tl7111088%_
                                           _%e7121091%_
                                           _%hd7131095%_
                                           _%tl7141098%_
                                           _%__splice17111712%_
                                           _%target760818%_
                                           _%tl762821%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g706791%_)))))
                                  (let () (declare (not safe)) (_%g706791%_))))
                          (if (gx#stx-pair/null? _%hd7131095%_)
                              (let ((_%__splice17111712%_
                                     (gx#syntax-split-splice
                                      _%hd7131095%_
                                      '0)))
                                (let ((_%tl762821%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17111712%_
                                          '1)))
                                      (_%target760818%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17111712%_
                                          '0))))
                                  (if (gx#stx-null? _%tl762821%_)
                                      (_%__match17991800%_
                                       _%e7091081%_
                                       _%hd7101085%_
                                       _%tl7111088%_
                                       _%e7121091%_
                                       _%hd7131095%_
                                       _%tl7141098%_
                                       _%__splice17111712%_
                                       _%target760818%_
                                       _%tl762821%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g706791%_)))))
                              (let () (declare (not safe)) (_%g706791%_))))
                      (if (gx#stx-pair/null? _%hd7131095%_)
                          (let ((_%__splice17111712%_
                                 (gx#syntax-split-splice _%hd7131095%_ '0)))
                            (let ((_%tl762821%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17111712%_ '1)))
                                  (_%target760818%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17111712%_ '0))))
                              (if (gx#stx-null? _%tl762821%_)
                                  (_%__match17991800%_
                                   _%e7091081%_
                                   _%hd7101085%_
                                   _%tl7111088%_
                                   _%e7121091%_
                                   _%hd7131095%_
                                   _%tl7141098%_
                                   _%__splice17111712%_
                                   _%target760818%_
                                   _%tl762821%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g706791%_)))))
                          (let () (declare (not safe)) (_%g706791%_))))))
              (if (gx#stx-pair/null? _%hd7131095%_)
                  (let ((_%__splice17111712%_
                         (gx#syntax-split-splice _%hd7131095%_ '0)))
                    (let ((_%tl762821%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17111712%_ '1)))
                          (_%target760818%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17111712%_ '0))))
                      (if (gx#stx-null? _%tl762821%_)
                          (_%__match17991800%_
                           _%e7091081%_
                           _%hd7101085%_
                           _%tl7111088%_
                           _%e7121091%_
                           _%hd7131095%_
                           _%tl7141098%_
                           _%__splice17111712%_
                           _%target760818%_
                           _%tl762821%_)
                          (let () (declare (not safe)) (_%g706791%_)))))
                  (let () (declare (not safe)) (_%g706791%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd7131095%_)
                                                  (let ((_%__splice17111712%_
                                                         (gx#syntax-split-splice
                                                          _%hd7131095%_
                                                          '0)))
                                                    (let ((_%tl762821%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17111712%_
                                                              '1)))
                                                          (_%target760818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17111712%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl762821%_)
                                                          (_%__match17991800%_
                                                           _%e7091081%_
                                                           _%hd7101085%_
                                                           _%tl7111088%_
                                                           _%e7121091%_
                                                           _%hd7131095%_
                                                           _%tl7141098%_
                                                           _%__splice17111712%_
                                                           _%target760818%_
                                                           _%tl762821%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g706791%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g706791%_))))))
                                      (if (gx#stx-pair/null? _%hd7131095%_)
                                          (let ((_%__splice17111712%_
                                                 (gx#syntax-split-splice
                                                  _%hd7131095%_
                                                  '0)))
                                            (let ((_%tl762821%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17111712%_
                                                      '1)))
                                                  (_%target760818%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17111712%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl762821%_)
                                                  (_%__match17991800%_
                                                   _%e7091081%_
                                                   _%hd7101085%_
                                                   _%tl7111088%_
                                                   _%e7121091%_
                                                   _%hd7131095%_
                                                   _%tl7141098%_
                                                   _%__splice17111712%_
                                                   _%target760818%_
                                                   _%tl762821%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g706791%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g706791%_)))))))
                          (let () (declare (not safe)) (_%g706791%_)))))
                  (let () (declare (not safe)) (_%g706791%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax*|
      (lambda (_%stx1164%_)
        (let* ((_%__stx18021803%_ _%stx1164%_)
               (_%g11691246%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx18021803%_))))
          (let ((_%__kont18051806%_
                 (lambda (_%L1542%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g15581561%_ _%g15591564%_)
                                        (cons _%g15581561%_ _%g15591564%_))
                                      '()
                                      _%L1542%_)))))
                (_%__kont18091810%_
                 (lambda (_%L1444%_ _%L1446%_ _%L1447%_ _%L1448%_ _%L1449%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons (cons _%L1448%_ (cons _%L1447%_ '())) '())
                               (cons (cons _%L1449%_
                                           (cons _%L1446%_
                                                 (foldr (lambda (_%g14761479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g14771482%_)
                  (cons _%g14761479%_ _%g14771482%_))
                '()
                _%L1444%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont18131814%_
                 (lambda (_%L1313%_ _%L1315%_ _%L1316%_ _%L1317%_)
                   (cons (gx#datum->syntax '#f 'with-syntax)
                         (cons (cons _%L1316%_ '())
                               (cons (cons _%L1317%_
                                           (cons _%L1315%_
                                                 (foldr (lambda (_%g13381341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g13391344%_)
                  (cons _%g13381341%_ _%g13391344%_))
                '()
                _%L1313%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match19151916%_
                    (lambda (_%e12231253%_
                             _%hd12241257%_
                             _%tl12251260%_
                             _%e12261263%_
                             _%hd12271267%_
                             _%tl12281270%_
                             _%e12291273%_
                             _%hd12301277%_
                             _%tl12311280%_
                             _%__splice18151816%_
                             _%target12321283%_
                             _%tl12341286%_)
                      (letrec ((_%loop12351289%_
                                (lambda (_%hd12331293%_ _%body12391296%_)
                                  (if (gx#stx-pair? _%hd12331293%_)
                                      (let ((_%e12361299%_
                                             (gx#syntax-e _%hd12331293%_)))
                                        (let ((_%lp-tl12381306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12361299%_)))
                                              (_%lp-hd12371303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12361299%_))))
                                          (_%loop12351289%_
                                           _%lp-tl12381306%_
                                           (cons _%lp-hd12371303%_
                                                 _%body12391296%_))))
                                      (let ((_%body12401309%_
                                             (reverse _%body12391296%_)))
                                        (_%__kont18131814%_
                                         _%body12401309%_
                                         _%tl12311280%_
                                         _%hd12301277%_
                                         _%hd12241257%_))))))
                        (_%loop12351289%_ _%target12321283%_ '()))))
                   (_%__match18891890%_
                    (lambda (_%e11921354%_
                             _%hd11931358%_
                             _%tl11941361%_
                             _%e11951364%_
                             _%hd11961368%_
                             _%tl11971371%_
                             _%e11981374%_
                             _%hd11991378%_
                             _%tl12001381%_
                             _%e12011384%_
                             _%hd12021388%_
                             _%tl12031391%_
                             _%e12041394%_
                             _%hd12051398%_
                             _%tl12061401%_
                             _%e12071404%_
                             _%hd12081408%_
                             _%tl12091411%_
                             _%__splice18111812%_
                             _%target12101414%_
                             _%tl12121417%_)
                      (letrec ((_%loop12131420%_
                                (lambda (_%hd12111424%_ _%body12171427%_)
                                  (if (gx#stx-pair? _%hd12111424%_)
                                      (let ((_%e12141430%_
                                             (gx#syntax-e _%hd12111424%_)))
                                        (let ((_%lp-tl12161437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12141430%_)))
                                              (_%lp-hd12151434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12141430%_))))
                                          (_%loop12131420%_
                                           _%lp-tl12161437%_
                                           (cons _%lp-hd12151434%_
                                                 _%body12171427%_))))
                                      (let ((_%body12181440%_
                                             (reverse _%body12171427%_)))
                                        (_%__kont18091810%_
                                         _%body12181440%_
                                         _%tl12001381%_
                                         _%hd12081408%_
                                         _%tl12061401%_
                                         _%hd11931358%_))))))
                        (_%loop12131420%_ _%target12101414%_ '()))))
                   (_%__match18391840%_
                    (lambda (_%e11721492%_
                             _%hd11731496%_
                             _%tl11741499%_
                             _%e11751502%_
                             _%hd11761506%_
                             _%tl11771509%_
                             _%__splice18071808%_
                             _%target11781512%_
                             _%tl11801515%_)
                      (letrec ((_%loop11811518%_
                                (lambda (_%hd11791522%_ _%body11851525%_)
                                  (if (gx#stx-pair? _%hd11791522%_)
                                      (let ((_%e11821528%_
                                             (gx#syntax-e _%hd11791522%_)))
                                        (let ((_%lp-tl11841535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e11821528%_)))
                                              (_%lp-hd11831532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e11821528%_))))
                                          (_%loop11811518%_
                                           _%lp-tl11841535%_
                                           (cons _%lp-hd11831532%_
                                                 _%body11851525%_))))
                                      (let ((_%body11861538%_
                                             (reverse _%body11851525%_)))
                                        (_%__kont18051806%_
                                         _%body11861538%_))))))
                        (_%loop11811518%_ _%target11781512%_ '())))))
              (if (gx#stx-pair? _%__stx18021803%_)
                  (let ((_%e11721492%_ (gx#syntax-e _%__stx18021803%_)))
                    (let ((_%tl11741499%_
                           (let () (declare (not safe)) (##cdr _%e11721492%_)))
                          (_%hd11731496%_
                           (let ()
                             (declare (not safe))
                             (##car _%e11721492%_))))
                      (if (gx#stx-pair? _%tl11741499%_)
                          (let ((_%e11751502%_ (gx#syntax-e _%tl11741499%_)))
                            (let ((_%tl11771509%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e11751502%_)))
                                  (_%hd11761506%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e11751502%_))))
                              (if (gx#stx-null? _%hd11761506%_)
                                  (if (gx#stx-pair/null? _%tl11771509%_)
                                      (let ((_%__splice18071808%_
                                             (gx#syntax-split-splice
                                              _%tl11771509%_
                                              '0)))
                                        (let ((_%tl11801515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18071808%_
                                                  '1)))
                                              (_%target11781512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18071808%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl11801515%_)
                                              (_%__match18391840%_
                                               _%e11721492%_
                                               _%hd11731496%_
                                               _%tl11741499%_
                                               _%e11751502%_
                                               _%hd11761506%_
                                               _%tl11771509%_
                                               _%__splice18071808%_
                                               _%target11781512%_
                                               _%tl11801515%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g11691246%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g11691246%_)))
                                  (if (gx#stx-pair? _%hd11761506%_)
                                      (let ((_%e11981374%_
                                             (gx#syntax-e _%hd11761506%_)))
                                        (let ((_%tl12001381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e11981374%_)))
                                              (_%hd11991378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e11981374%_))))
                                          (if (gx#stx-pair? _%hd11991378%_)
                                              (let ((_%e12011384%_
                                                     (gx#syntax-e
                                                      _%hd11991378%_)))
                                                (let ((_%tl12031391%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e12011384%_)))
                                                      (_%hd12021388%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e12011384%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd12021388%_)
                                                      (let ((_%e12041394%_
                                                             (gx#syntax-e
                                                              _%hd12021388%_)))
                                                        (let ((_%tl12061401%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e12041394%_)))
                      (_%hd12051398%_
                       (let () (declare (not safe)) (##car _%e12041394%_))))
                  (if (gx#identifier? _%hd12051398%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander~SyntaxSugar[1]#_g1921_|
                           _%hd12051398%_)
                          (if (gx#stx-pair? _%tl12031391%_)
                              (let ((_%e12071404%_
                                     (gx#syntax-e _%tl12031391%_)))
                                (let ((_%tl12091411%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e12071404%_)))
                                      (_%hd12081408%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e12071404%_))))
                                  (if (gx#stx-null? _%tl12091411%_)
                                      (if (gx#stx-pair/null? _%tl11771509%_)
                                          (let ((_%__splice18111812%_
                                                 (gx#syntax-split-splice
                                                  _%tl11771509%_
                                                  '0)))
                                            (let ((_%tl12121417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18111812%_
                                                      '1)))
                                                  (_%target12101414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18111812%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl12121417%_)
                                                  (_%__match18891890%_
                                                   _%e11721492%_
                                                   _%hd11731496%_
                                                   _%tl11741499%_
                                                   _%e11751502%_
                                                   _%hd11761506%_
                                                   _%tl11771509%_
                                                   _%e11981374%_
                                                   _%hd11991378%_
                                                   _%tl12001381%_
                                                   _%e12011384%_
                                                   _%hd12021388%_
                                                   _%tl12031391%_
                                                   _%e12041394%_
                                                   _%hd12051398%_
                                                   _%tl12061401%_
                                                   _%e12071404%_
                                                   _%hd12081408%_
                                                   _%tl12091411%_
                                                   _%__splice18111812%_
                                                   _%target12101414%_
                                                   _%tl12121417%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g11691246%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g11691246%_)))
                                      (if (gx#stx-pair/null? _%tl11771509%_)
                                          (let ((_%__splice18151816%_
                                                 (gx#syntax-split-splice
                                                  _%tl11771509%_
                                                  '0)))
                                            (let ((_%tl12341286%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18151816%_
                                                      '1)))
                                                  (_%target12321283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18151816%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl12341286%_)
                                                  (_%__match19151916%_
                                                   _%e11721492%_
                                                   _%hd11731496%_
                                                   _%tl11741499%_
                                                   _%e11751502%_
                                                   _%hd11761506%_
                                                   _%tl11771509%_
                                                   _%e11981374%_
                                                   _%hd11991378%_
                                                   _%tl12001381%_
                                                   _%__splice18151816%_
                                                   _%target12321283%_
                                                   _%tl12341286%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g11691246%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g11691246%_))))))
                              (if (gx#stx-pair/null? _%tl11771509%_)
                                  (let ((_%__splice18151816%_
                                         (gx#syntax-split-splice
                                          _%tl11771509%_
                                          '0)))
                                    (let ((_%tl12341286%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18151816%_
                                              '1)))
                                          (_%target12321283%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18151816%_
                                              '0))))
                                      (if (gx#stx-null? _%tl12341286%_)
                                          (_%__match19151916%_
                                           _%e11721492%_
                                           _%hd11731496%_
                                           _%tl11741499%_
                                           _%e11751502%_
                                           _%hd11761506%_
                                           _%tl11771509%_
                                           _%e11981374%_
                                           _%hd11991378%_
                                           _%tl12001381%_
                                           _%__splice18151816%_
                                           _%target12321283%_
                                           _%tl12341286%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g11691246%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g11691246%_))))
                          (if (gx#stx-pair/null? _%tl11771509%_)
                              (let ((_%__splice18151816%_
                                     (gx#syntax-split-splice
                                      _%tl11771509%_
                                      '0)))
                                (let ((_%tl12341286%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18151816%_
                                          '1)))
                                      (_%target12321283%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18151816%_
                                          '0))))
                                  (if (gx#stx-null? _%tl12341286%_)
                                      (_%__match19151916%_
                                       _%e11721492%_
                                       _%hd11731496%_
                                       _%tl11741499%_
                                       _%e11751502%_
                                       _%hd11761506%_
                                       _%tl11771509%_
                                       _%e11981374%_
                                       _%hd11991378%_
                                       _%tl12001381%_
                                       _%__splice18151816%_
                                       _%target12321283%_
                                       _%tl12341286%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g11691246%_)))))
                              (let () (declare (not safe)) (_%g11691246%_))))
                      (if (gx#stx-pair/null? _%tl11771509%_)
                          (let ((_%__splice18151816%_
                                 (gx#syntax-split-splice _%tl11771509%_ '0)))
                            (let ((_%tl12341286%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18151816%_ '1)))
                                  (_%target12321283%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18151816%_ '0))))
                              (if (gx#stx-null? _%tl12341286%_)
                                  (_%__match19151916%_
                                   _%e11721492%_
                                   _%hd11731496%_
                                   _%tl11741499%_
                                   _%e11751502%_
                                   _%hd11761506%_
                                   _%tl11771509%_
                                   _%e11981374%_
                                   _%hd11991378%_
                                   _%tl12001381%_
                                   _%__splice18151816%_
                                   _%target12321283%_
                                   _%tl12341286%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g11691246%_)))))
                          (let () (declare (not safe)) (_%g11691246%_))))))
              (if (gx#stx-pair/null? _%tl11771509%_)
                  (let ((_%__splice18151816%_
                         (gx#syntax-split-splice _%tl11771509%_ '0)))
                    (let ((_%tl12341286%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18151816%_ '1)))
                          (_%target12321283%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18151816%_ '0))))
                      (if (gx#stx-null? _%tl12341286%_)
                          (_%__match19151916%_
                           _%e11721492%_
                           _%hd11731496%_
                           _%tl11741499%_
                           _%e11751502%_
                           _%hd11761506%_
                           _%tl11771509%_
                           _%e11981374%_
                           _%hd11991378%_
                           _%tl12001381%_
                           _%__splice18151816%_
                           _%target12321283%_
                           _%tl12341286%_)
                          (let () (declare (not safe)) (_%g11691246%_)))))
                  (let () (declare (not safe)) (_%g11691246%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl11771509%_)
                                                  (let ((_%__splice18151816%_
                                                         (gx#syntax-split-splice
                                                          _%tl11771509%_
                                                          '0)))
                                                    (let ((_%tl12341286%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18151816%_
                                                              '1)))
                                                          (_%target12321283%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18151816%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl12341286%_)
                                                          (_%__match19151916%_
                                                           _%e11721492%_
                                                           _%hd11731496%_
                                                           _%tl11741499%_
                                                           _%e11751502%_
                                                           _%hd11761506%_
                                                           _%tl11771509%_
                                                           _%e11981374%_
                                                           _%hd11991378%_
                                                           _%tl12001381%_
                                                           _%__splice18151816%_
                                                           _%target12321283%_
                                                           _%tl12341286%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g11691246%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g11691246%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g11691246%_))))))
                          (let () (declare (not safe)) (_%g11691246%_)))))
                  (let () (declare (not safe)) (_%g11691246%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax/loc|
      (lambda (_%stx1574%_)
        (let* ((_%g15771595%_
                (lambda (_%g15781591%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g15781591%_)))
               (_%g15761650%_
                (lambda (_%g15781599%_)
                  (if (gx#stx-pair? _%g15781599%_)
                      (let ((_%e15811602%_ (gx#syntax-e _%g15781599%_)))
                        (let ((_%hd15821606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e15811602%_)))
                              (_%tl15831609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e15811602%_))))
                          (if (gx#stx-pair? _%tl15831609%_)
                              (let ((_%e15841612%_
                                     (gx#syntax-e _%tl15831609%_)))
                                (let ((_%hd15851616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e15841612%_)))
                                      (_%tl15861619%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e15841612%_))))
                                  (if (gx#stx-pair? _%tl15861619%_)
                                      (let ((_%e15871622%_
                                             (gx#syntax-e _%tl15861619%_)))
                                        (let ((_%hd15881626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e15871622%_)))
                                              (_%tl15891629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e15871622%_))))
                                          (if (gx#stx-null? _%tl15891629%_)
                                              ((lambda (_%L1632%_ _%L1634%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _%L1632%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _%L1634%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd15881626%_
                                               _%hd15851616%_)
                                              (_%g15771595%_ _%g15781599%_))))
                                      (_%g15771595%_ _%g15781599%_))))
                              (_%g15771595%_ _%g15781599%_))))
                      (_%g15771595%_ _%g15781599%_)))))
          (_%g15761650%_ _%stx1574%_))))))
