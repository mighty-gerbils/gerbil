(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander~SyntaxSugar[1]#_g1922_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax-rules|
      (lambda (_%stx363%_)
        (let* ((_%g366390%_
                (lambda (_%g367386%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g367386%_)))
               (_%g365696%_
                (lambda (_%g367394%_)
                  (if (gx#stx-pair? _%g367394%_)
                      (let ((_%e370397%_ (gx#syntax-e _%g367394%_)))
                        (let ((_%hd371401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e370397%_)))
                              (_%tl372404%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e370397%_))))
                          (if (gx#stx-pair? _%tl372404%_)
                              (let ((_%e373407%_ (gx#syntax-e _%tl372404%_)))
                                (let ((_%hd374411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e373407%_)))
                                      (_%tl375414%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e373407%_))))
                                  (if (gx#stx-pair/null? _%tl375414%_)
                                      (let ((_g1918_ (gx#syntax-split-splice
                                                      _%tl375414%_
                                                      '0)))
                                        (begin
                                          (let ((_g1919_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g1918_)
                                                               (##values-length
                                                                _g1918_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g1919_ 2)))
                                                (error "Context expects 2 values"
                                                       _g1919_)))
                                          (let ((_%target376417%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1918_ 0)))
                                                (_%tl378420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1918_ 1))))
                                            (if (gx#stx-null? _%tl378420%_)
                                                (letrec ((_%loop379423%_
                                                          (lambda (_%hd377427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses383430%_)
                    (if (gx#stx-pair? _%hd377427%_)
                        (let ((_%e380433%_ (gx#syntax-e _%hd377427%_)))
                          (let ((_%lp-hd381437%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e380433%_)))
                                (_%lp-tl382440%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e380433%_))))
                            (_%loop379423%_
                             _%lp-tl382440%_
                             (cons _%lp-hd381437%_ _%clauses383430%_))))
                        (let ((_%clauses384443%_ (reverse _%clauses383430%_)))
                          ((lambda (_%L447%_ _%L449%_)
                             (if (gx#identifier-list? _%L449%_)
                                 (let* ((_%body613%_
                                         (gx#stx-map
                                          (lambda (_%clause470%_)
                                            (let* ((_%__stx16551656%_
                                                    _%clause470%_)
                                                   (_%g474501%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx16551656%_))))
                                              (let ((_%__kont16581659%_
                                                     (lambda (_%L586%_
                                                              _%L588%_)
                                                       (cons _%L588%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _%L586%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont16601661%_
                                                     (lambda (_%L538%_
                                                              _%L540%_
                                                              _%L541%_)
                                                       (cons _%L541%_
                                                             (cons _%L540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons _%L538%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx16551656%_)
                                                    (let ((_%e478566%_
                                                           (gx#syntax-e
                                                            _%__stx16551656%_)))
                                                      (let ((_%tl480573%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e478566%_)))
                    (_%hd479570%_
                     (let () (declare (not safe)) (##car _%e478566%_))))
                (if (gx#stx-pair? _%tl480573%_)
                    (let ((_%e481576%_ (gx#syntax-e _%tl480573%_)))
                      (let ((_%tl483583%_
                             (let () (declare (not safe)) (##cdr _%e481576%_)))
                            (_%hd482580%_
                             (let ()
                               (declare (not safe))
                               (##car _%e481576%_))))
                        (if (gx#stx-null? _%tl483583%_)
                            (_%__kont16581659%_ _%hd482580%_ _%hd479570%_)
                            (if (gx#stx-pair? _%tl483583%_)
                                (let ((_%e493528%_ (gx#syntax-e _%tl483583%_)))
                                  (let ((_%tl495535%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e493528%_)))
                                        (_%hd494532%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e493528%_))))
                                    (if (gx#stx-null? _%tl495535%_)
                                        (_%__kont16601661%_
                                         _%hd494532%_
                                         _%hd482580%_
                                         _%hd479570%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g474501%_)))))
                                (let () (declare (not safe)) (_%g474501%_))))))
                    (let () (declare (not safe)) (_%g474501%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g474501%_))))))
                                          (foldr (lambda (_%g604607%_
                                                          _%g605610%_)
                                                   (cons _%g604607%_
                                                         _%g605610%_))
                                                 '()
                                                 _%L447%_)))
                                        (_%g616633%_
                                         (lambda (_%g617629%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g617629%_)))
                                        (_%g615692%_
                                         (lambda (_%g617637%_)
                                           (if (gx#stx-pair/null? _%g617637%_)
                                               (let ((_g1920_ (gx#syntax-split-splice
                                                               _%g617637%_
                                                               '0)))
                                                 (begin
                                                   (let ((_g1921_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g1920_)
                                (##values-length _g1920_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g1921_ 2)))
                 (error "Context expects 2 values" _g1921_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target619640%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g1920_
                                                             0)))
                                                         (_%tl621643%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g1920_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl621643%_)
                                                         (letrec ((_%loop622646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd620650%_ _%clause626653%_)
                             (if (gx#stx-pair? _%hd620650%_)
                                 (let ((_%e623656%_
                                        (gx#syntax-e _%hd620650%_)))
                                   (let ((_%lp-hd624660%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e623656%_)))
                                         (_%lp-tl625663%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e623656%_))))
                                     (_%loop622646%_
                                      _%lp-tl625663%_
                                      (cons _%lp-hd624660%_
                                            _%clause626653%_))))
                                 (let ((_%clause627666%_
                                        (reverse _%clause626653%_)))
                                   ((lambda (_%L670%_)
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
                            (cons _%L449%_
                                  (foldr (lambda (_%g683686%_ _%g684689%_)
                                           (cons _%g683686%_ _%g684689%_))
                                         '()
                                         _%L670%_))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause627666%_))))))
                   (_%loop622646%_ _%target619640%_ '()))
                 (_%g616633%_ _%g617637%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g616633%_ _%g617637%_)))))
                                   (_%g615692%_ _%body613%_))
                                 (_%g366390%_ _%g367394%_)))
                           _%clauses384443%_
                           _%hd374411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop379423%_
                                                   _%target376417%_
                                                   '()))
                                                (_%g366390%_ _%g367394%_)))))
                                      (_%g366390%_ _%g367394%_))))
                              (_%g366390%_ _%g367394%_))))
                      (_%g366390%_ _%g367394%_)))))
          (_%g365696%_ _%stx363%_))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax|
      (lambda (_%stx702%_)
        (let* ((_%__stx16991700%_ _%stx702%_)
               (_%g707792%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx16991700%_))))
          (let ((_%__kont17021703%_
                 (lambda (_%L1132%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g11481151%_ _%g11491154%_)
                                        (cons _%g11481151%_ _%g11491154%_))
                                      '()
                                      _%L1132%_)))))
                (_%__kont17061707%_
                 (lambda (_%L1040%_ _%L1042%_ _%L1043%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons _%L1042%_
                               (cons '()
                                     (cons (cons _%L1043%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g10661069%_ _%g10671072%_)
                                    (cons _%g10661069%_ _%g10671072%_))
                                  '()
                                  _%L1040%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont17101711%_
                 (lambda (_%L903%_ _%L905%_ _%L906%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons (cons (gx#datum->syntax '#f 'list)
                                     (foldr (lambda (_%g928935%_ _%g929938%_)
                                              (cons _%g928935%_ _%g929938%_))
                                            '()
                                            _%L905%_))
                               (cons '()
                                     (cons (cons (foldr (lambda (_%g930941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g931944%_)
                  (cons _%g930941%_ _%g931944%_))
                '()
                _%L906%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g932947%_ _%g933950%_)
                                    (cons _%g932947%_ _%g933950%_))
                                  '()
                                  _%L903%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let* ((_%__match18001801%_
                    (lambda (_%e755799%_
                             _%hd756803%_
                             _%tl757806%_
                             _%e758809%_
                             _%hd759813%_
                             _%tl760816%_
                             _%__splice17121713%_
                             _%target761819%_
                             _%tl763822%_)
                      (letrec ((_%loop764825%_
                                (lambda (_%hd762829%_
                                         _%e768832%_
                                         _%pat769834%_)
                                  (if (gx#stx-pair? _%hd762829%_)
                                      (let ((_%e765837%_
                                             (gx#syntax-e _%hd762829%_)))
                                        (let ((_%lp-tl767844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e765837%_)))
                                              (_%lp-hd766841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e765837%_))))
                                          (if (gx#stx-pair? _%lp-hd766841%_)
                                              (let ((_%e772847%_
                                                     (gx#syntax-e
                                                      _%lp-hd766841%_)))
                                                (let ((_%tl774854%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e772847%_)))
                                                      (_%hd773851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e772847%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl774854%_)
                                                      (let ((_%e775857%_
                                                             (gx#syntax-e
                                                              _%tl774854%_)))
                                                        (let ((_%tl777864%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e775857%_)))
                      (_%hd776861%_
                       (let () (declare (not safe)) (##car _%e775857%_))))
                  (if (gx#stx-null? _%tl777864%_)
                      (_%loop764825%_
                       _%lp-tl767844%_
                       (cons _%hd776861%_ _%e768832%_)
                       (cons _%hd773851%_ _%pat769834%_))
                      (let () (declare (not safe)) (_%g707792%_)))))
              (let () (declare (not safe)) (_%g707792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g707792%_)))))
                                      (let ((_%pat771870%_
                                             (reverse _%pat769834%_))
                                            (_%e770867%_
                                             (reverse _%e768832%_)))
                                        (if (gx#stx-pair/null? _%tl760816%_)
                                            (let ((_%__splice17141715%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl760816%_
                                                    '0)))
                                              (let ((_%tl780876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17141715%_
                                                        '1)))
                                                    (_%target778873%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17141715%_
                                                        '0))))
                                                (if (gx#stx-null? _%tl780876%_)
                                                    (letrec ((_%loop781879%_
                                                              (lambda (_%hd779883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body785886%_)
                        (if (gx#stx-pair? _%hd779883%_)
                            (let ((_%e782889%_ (gx#syntax-e _%hd779883%_)))
                              (let ((_%lp-tl784896%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e782889%_)))
                                    (_%lp-hd783893%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e782889%_))))
                                (_%loop781879%_
                                 _%lp-tl784896%_
                                 (cons _%lp-hd783893%_ _%body785886%_))))
                            (let ((_%body786899%_ (reverse _%body785886%_)))
                              (_%__kont17101711%_
                               _%body786899%_
                               _%e770867%_
                               _%pat771870%_))))))
              (_%loop781879%_ _%target778873%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g707792%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g707792%_))))))))
                        (_%loop764825%_ _%target761819%_ '() '()))))
                   (_%__match17801781%_
                    (lambda (_%e728960%_
                             _%hd729964%_
                             _%tl730967%_
                             _%e731970%_
                             _%hd732974%_
                             _%tl733977%_
                             _%e734980%_
                             _%hd735984%_
                             _%tl736987%_
                             _%e737990%_
                             _%hd738994%_
                             _%tl739997%_
                             _%e7401000%_
                             _%hd7411004%_
                             _%tl7421007%_
                             _%__splice17081709%_
                             _%target7431010%_
                             _%tl7451013%_)
                      (letrec ((_%loop7461016%_
                                (lambda (_%hd7441020%_ _%body7501023%_)
                                  (if (gx#stx-pair? _%hd7441020%_)
                                      (let ((_%e7471026%_
                                             (gx#syntax-e _%hd7441020%_)))
                                        (let ((_%lp-tl7491033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7471026%_)))
                                              (_%lp-hd7481030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7471026%_))))
                                          (_%loop7461016%_
                                           _%lp-tl7491033%_
                                           (cons _%lp-hd7481030%_
                                                 _%body7501023%_))))
                                      (let ((_%body7511036%_
                                             (reverse _%body7501023%_)))
                                        (_%__kont17061707%_
                                         _%body7511036%_
                                         _%hd7411004%_
                                         _%hd738994%_))))))
                        (_%loop7461016%_ _%target7431010%_ '()))))
                   (_%__match17381739%_
                    (lambda (_%e7101082%_
                             _%hd7111086%_
                             _%tl7121089%_
                             _%e7131092%_
                             _%hd7141096%_
                             _%tl7151099%_
                             _%__splice17041705%_
                             _%target7161102%_
                             _%tl7181105%_)
                      (letrec ((_%loop7191108%_
                                (lambda (_%hd7171112%_ _%body7231115%_)
                                  (if (gx#stx-pair? _%hd7171112%_)
                                      (let ((_%e7201118%_
                                             (gx#syntax-e _%hd7171112%_)))
                                        (let ((_%lp-tl7221125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7201118%_)))
                                              (_%lp-hd7211122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7201118%_))))
                                          (_%loop7191108%_
                                           _%lp-tl7221125%_
                                           (cons _%lp-hd7211122%_
                                                 _%body7231115%_))))
                                      (let ((_%body7241128%_
                                             (reverse _%body7231115%_)))
                                        (_%__kont17021703%_
                                         _%body7241128%_))))))
                        (_%loop7191108%_ _%target7161102%_ '())))))
              (if (gx#stx-pair? _%__stx16991700%_)
                  (let ((_%e7101082%_ (gx#syntax-e _%__stx16991700%_)))
                    (let ((_%tl7121089%_
                           (let () (declare (not safe)) (##cdr _%e7101082%_)))
                          (_%hd7111086%_
                           (let () (declare (not safe)) (##car _%e7101082%_))))
                      (if (gx#stx-pair? _%tl7121089%_)
                          (let ((_%e7131092%_ (gx#syntax-e _%tl7121089%_)))
                            (let ((_%tl7151099%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7131092%_)))
                                  (_%hd7141096%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7131092%_))))
                              (if (gx#stx-null? _%hd7141096%_)
                                  (if (gx#stx-pair/null? _%tl7151099%_)
                                      (let ((_%__splice17041705%_
                                             (gx#syntax-split-splice->vector
                                              _%tl7151099%_
                                              '0)))
                                        (let ((_%tl7181105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17041705%_
                                                  '1)))
                                              (_%target7161102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17041705%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl7181105%_)
                                              (_%__match17381739%_
                                               _%e7101082%_
                                               _%hd7111086%_
                                               _%tl7121089%_
                                               _%e7131092%_
                                               _%hd7141096%_
                                               _%tl7151099%_
                                               _%__splice17041705%_
                                               _%target7161102%_
                                               _%tl7181105%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd7141096%_)
                                                  (let ((_%__splice17121713%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd7141096%_
                                                          '0)))
                                                    (let ((_%tl763822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17121713%_
                                                              '1)))
                                                          (_%target761819%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17121713%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl763822%_)
                                                          (_%__match18001801%_
                                                           _%e7101082%_
                                                           _%hd7111086%_
                                                           _%tl7121089%_
                                                           _%e7131092%_
                                                           _%hd7141096%_
                                                           _%tl7151099%_
                                                           _%__splice17121713%_
                                                           _%target761819%_
                                                           _%tl763822%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g707792%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g707792%_))))))
                                      (if (gx#stx-pair/null? _%hd7141096%_)
                                          (let ((_%__splice17121713%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd7141096%_
                                                  '0)))
                                            (let ((_%tl763822%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17121713%_
                                                      '1)))
                                                  (_%target761819%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17121713%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl763822%_)
                                                  (_%__match18001801%_
                                                   _%e7101082%_
                                                   _%hd7111086%_
                                                   _%tl7121089%_
                                                   _%e7131092%_
                                                   _%hd7141096%_
                                                   _%tl7151099%_
                                                   _%__splice17121713%_
                                                   _%target761819%_
                                                   _%tl763822%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g707792%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g707792%_))))
                                  (if (gx#stx-pair? _%hd7141096%_)
                                      (let ((_%e734980%_
                                             (gx#syntax-e _%hd7141096%_)))
                                        (let ((_%tl736987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e734980%_)))
                                              (_%hd735984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e734980%_))))
                                          (if (gx#stx-pair? _%hd735984%_)
                                              (let ((_%e737990%_
                                                     (gx#syntax-e
                                                      _%hd735984%_)))
                                                (let ((_%tl739997%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e737990%_)))
                                                      (_%hd738994%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e737990%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl739997%_)
                                                      (let ((_%e7401000%_
                                                             (gx#syntax-e
                                                              _%tl739997%_)))
                                                        (let ((_%tl7421007%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e7401000%_)))
                      (_%hd7411004%_
                       (let () (declare (not safe)) (##car _%e7401000%_))))
                  (if (gx#stx-null? _%tl7421007%_)
                      (if (gx#stx-null? _%tl736987%_)
                          (if (gx#stx-pair/null? _%tl7151099%_)
                              (let ((_%__splice17081709%_
                                     (gx#syntax-split-splice->vector
                                      _%tl7151099%_
                                      '0)))
                                (let ((_%tl7451013%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17081709%_
                                          '1)))
                                      (_%target7431010%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17081709%_
                                          '0))))
                                  (if (gx#stx-null? _%tl7451013%_)
                                      (_%__match17801781%_
                                       _%e7101082%_
                                       _%hd7111086%_
                                       _%tl7121089%_
                                       _%e7131092%_
                                       _%hd7141096%_
                                       _%tl7151099%_
                                       _%e734980%_
                                       _%hd735984%_
                                       _%tl736987%_
                                       _%e737990%_
                                       _%hd738994%_
                                       _%tl739997%_
                                       _%e7401000%_
                                       _%hd7411004%_
                                       _%tl7421007%_
                                       _%__splice17081709%_
                                       _%target7431010%_
                                       _%tl7451013%_)
                                      (if (gx#stx-pair/null? _%hd7141096%_)
                                          (let ((_%__splice17121713%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd7141096%_
                                                  '0)))
                                            (let ((_%tl763822%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17121713%_
                                                      '1)))
                                                  (_%target761819%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17121713%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl763822%_)
                                                  (_%__match18001801%_
                                                   _%e7101082%_
                                                   _%hd7111086%_
                                                   _%tl7121089%_
                                                   _%e7131092%_
                                                   _%hd7141096%_
                                                   _%tl7151099%_
                                                   _%__splice17121713%_
                                                   _%target761819%_
                                                   _%tl763822%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g707792%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g707792%_))))))
                              (if (gx#stx-pair/null? _%hd7141096%_)
                                  (let ((_%__splice17121713%_
                                         (gx#syntax-split-splice->vector
                                          _%hd7141096%_
                                          '0)))
                                    (let ((_%tl763822%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17121713%_
                                              '1)))
                                          (_%target761819%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17121713%_
                                              '0))))
                                      (if (gx#stx-null? _%tl763822%_)
                                          (_%__match18001801%_
                                           _%e7101082%_
                                           _%hd7111086%_
                                           _%tl7121089%_
                                           _%e7131092%_
                                           _%hd7141096%_
                                           _%tl7151099%_
                                           _%__splice17121713%_
                                           _%target761819%_
                                           _%tl763822%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g707792%_)))))
                                  (let () (declare (not safe)) (_%g707792%_))))
                          (if (gx#stx-pair/null? _%hd7141096%_)
                              (let ((_%__splice17121713%_
                                     (gx#syntax-split-splice->vector
                                      _%hd7141096%_
                                      '0)))
                                (let ((_%tl763822%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17121713%_
                                          '1)))
                                      (_%target761819%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17121713%_
                                          '0))))
                                  (if (gx#stx-null? _%tl763822%_)
                                      (_%__match18001801%_
                                       _%e7101082%_
                                       _%hd7111086%_
                                       _%tl7121089%_
                                       _%e7131092%_
                                       _%hd7141096%_
                                       _%tl7151099%_
                                       _%__splice17121713%_
                                       _%target761819%_
                                       _%tl763822%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g707792%_)))))
                              (let () (declare (not safe)) (_%g707792%_))))
                      (if (gx#stx-pair/null? _%hd7141096%_)
                          (let ((_%__splice17121713%_
                                 (gx#syntax-split-splice->vector
                                  _%hd7141096%_
                                  '0)))
                            (let ((_%tl763822%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17121713%_ '1)))
                                  (_%target761819%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17121713%_ '0))))
                              (if (gx#stx-null? _%tl763822%_)
                                  (_%__match18001801%_
                                   _%e7101082%_
                                   _%hd7111086%_
                                   _%tl7121089%_
                                   _%e7131092%_
                                   _%hd7141096%_
                                   _%tl7151099%_
                                   _%__splice17121713%_
                                   _%target761819%_
                                   _%tl763822%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g707792%_)))))
                          (let () (declare (not safe)) (_%g707792%_))))))
              (if (gx#stx-pair/null? _%hd7141096%_)
                  (let ((_%__splice17121713%_
                         (gx#syntax-split-splice->vector _%hd7141096%_ '0)))
                    (let ((_%tl763822%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17121713%_ '1)))
                          (_%target761819%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17121713%_ '0))))
                      (if (gx#stx-null? _%tl763822%_)
                          (_%__match18001801%_
                           _%e7101082%_
                           _%hd7111086%_
                           _%tl7121089%_
                           _%e7131092%_
                           _%hd7141096%_
                           _%tl7151099%_
                           _%__splice17121713%_
                           _%target761819%_
                           _%tl763822%_)
                          (let () (declare (not safe)) (_%g707792%_)))))
                  (let () (declare (not safe)) (_%g707792%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd7141096%_)
                                                  (let ((_%__splice17121713%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd7141096%_
                                                          '0)))
                                                    (let ((_%tl763822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17121713%_
                                                              '1)))
                                                          (_%target761819%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17121713%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl763822%_)
                                                          (_%__match18001801%_
                                                           _%e7101082%_
                                                           _%hd7111086%_
                                                           _%tl7121089%_
                                                           _%e7131092%_
                                                           _%hd7141096%_
                                                           _%tl7151099%_
                                                           _%__splice17121713%_
                                                           _%target761819%_
                                                           _%tl763822%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g707792%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g707792%_))))))
                                      (if (gx#stx-pair/null? _%hd7141096%_)
                                          (let ((_%__splice17121713%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd7141096%_
                                                  '0)))
                                            (let ((_%tl763822%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17121713%_
                                                      '1)))
                                                  (_%target761819%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17121713%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl763822%_)
                                                  (_%__match18001801%_
                                                   _%e7101082%_
                                                   _%hd7111086%_
                                                   _%tl7121089%_
                                                   _%e7131092%_
                                                   _%hd7141096%_
                                                   _%tl7151099%_
                                                   _%__splice17121713%_
                                                   _%target761819%_
                                                   _%tl763822%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g707792%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g707792%_)))))))
                          (let () (declare (not safe)) (_%g707792%_)))))
                  (let () (declare (not safe)) (_%g707792%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax*|
      (lambda (_%stx1165%_)
        (let* ((_%__stx18031804%_ _%stx1165%_)
               (_%g11701247%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx18031804%_))))
          (let ((_%__kont18061807%_
                 (lambda (_%L1543%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g15591562%_ _%g15601565%_)
                                        (cons _%g15591562%_ _%g15601565%_))
                                      '()
                                      _%L1543%_)))))
                (_%__kont18101811%_
                 (lambda (_%L1445%_ _%L1447%_ _%L1448%_ _%L1449%_ _%L1450%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons (cons _%L1449%_ (cons _%L1448%_ '())) '())
                               (cons (cons _%L1450%_
                                           (cons _%L1447%_
                                                 (foldr (lambda (_%g14771480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g14781483%_)
                  (cons _%g14771480%_ _%g14781483%_))
                '()
                _%L1445%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont18141815%_
                 (lambda (_%L1314%_ _%L1316%_ _%L1317%_ _%L1318%_)
                   (cons (gx#datum->syntax '#f 'with-syntax)
                         (cons (cons _%L1317%_ '())
                               (cons (cons _%L1318%_
                                           (cons _%L1316%_
                                                 (foldr (lambda (_%g13391342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g13401345%_)
                  (cons _%g13391342%_ _%g13401345%_))
                '()
                _%L1314%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match19161917%_
                    (lambda (_%e12241254%_
                             _%hd12251258%_
                             _%tl12261261%_
                             _%e12271264%_
                             _%hd12281268%_
                             _%tl12291271%_
                             _%e12301274%_
                             _%hd12311278%_
                             _%tl12321281%_
                             _%__splice18161817%_
                             _%target12331284%_
                             _%tl12351287%_)
                      (letrec ((_%loop12361290%_
                                (lambda (_%hd12341294%_ _%body12401297%_)
                                  (if (gx#stx-pair? _%hd12341294%_)
                                      (let ((_%e12371300%_
                                             (gx#syntax-e _%hd12341294%_)))
                                        (let ((_%lp-tl12391307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12371300%_)))
                                              (_%lp-hd12381304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12371300%_))))
                                          (_%loop12361290%_
                                           _%lp-tl12391307%_
                                           (cons _%lp-hd12381304%_
                                                 _%body12401297%_))))
                                      (let ((_%body12411310%_
                                             (reverse _%body12401297%_)))
                                        (_%__kont18141815%_
                                         _%body12411310%_
                                         _%tl12321281%_
                                         _%hd12311278%_
                                         _%hd12251258%_))))))
                        (_%loop12361290%_ _%target12331284%_ '()))))
                   (_%__match18901891%_
                    (lambda (_%e11931355%_
                             _%hd11941359%_
                             _%tl11951362%_
                             _%e11961365%_
                             _%hd11971369%_
                             _%tl11981372%_
                             _%e11991375%_
                             _%hd12001379%_
                             _%tl12011382%_
                             _%e12021385%_
                             _%hd12031389%_
                             _%tl12041392%_
                             _%e12051395%_
                             _%hd12061399%_
                             _%tl12071402%_
                             _%e12081405%_
                             _%hd12091409%_
                             _%tl12101412%_
                             _%__splice18121813%_
                             _%target12111415%_
                             _%tl12131418%_)
                      (letrec ((_%loop12141421%_
                                (lambda (_%hd12121425%_ _%body12181428%_)
                                  (if (gx#stx-pair? _%hd12121425%_)
                                      (let ((_%e12151431%_
                                             (gx#syntax-e _%hd12121425%_)))
                                        (let ((_%lp-tl12171438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12151431%_)))
                                              (_%lp-hd12161435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12151431%_))))
                                          (_%loop12141421%_
                                           _%lp-tl12171438%_
                                           (cons _%lp-hd12161435%_
                                                 _%body12181428%_))))
                                      (let ((_%body12191441%_
                                             (reverse _%body12181428%_)))
                                        (_%__kont18101811%_
                                         _%body12191441%_
                                         _%tl12011382%_
                                         _%hd12091409%_
                                         _%tl12071402%_
                                         _%hd11941359%_))))))
                        (_%loop12141421%_ _%target12111415%_ '()))))
                   (_%__match18401841%_
                    (lambda (_%e11731493%_
                             _%hd11741497%_
                             _%tl11751500%_
                             _%e11761503%_
                             _%hd11771507%_
                             _%tl11781510%_
                             _%__splice18081809%_
                             _%target11791513%_
                             _%tl11811516%_)
                      (letrec ((_%loop11821519%_
                                (lambda (_%hd11801523%_ _%body11861526%_)
                                  (if (gx#stx-pair? _%hd11801523%_)
                                      (let ((_%e11831529%_
                                             (gx#syntax-e _%hd11801523%_)))
                                        (let ((_%lp-tl11851536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e11831529%_)))
                                              (_%lp-hd11841533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e11831529%_))))
                                          (_%loop11821519%_
                                           _%lp-tl11851536%_
                                           (cons _%lp-hd11841533%_
                                                 _%body11861526%_))))
                                      (let ((_%body11871539%_
                                             (reverse _%body11861526%_)))
                                        (_%__kont18061807%_
                                         _%body11871539%_))))))
                        (_%loop11821519%_ _%target11791513%_ '())))))
              (if (gx#stx-pair? _%__stx18031804%_)
                  (let ((_%e11731493%_ (gx#syntax-e _%__stx18031804%_)))
                    (let ((_%tl11751500%_
                           (let () (declare (not safe)) (##cdr _%e11731493%_)))
                          (_%hd11741497%_
                           (let ()
                             (declare (not safe))
                             (##car _%e11731493%_))))
                      (if (gx#stx-pair? _%tl11751500%_)
                          (let ((_%e11761503%_ (gx#syntax-e _%tl11751500%_)))
                            (let ((_%tl11781510%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e11761503%_)))
                                  (_%hd11771507%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e11761503%_))))
                              (if (gx#stx-null? _%hd11771507%_)
                                  (if (gx#stx-pair/null? _%tl11781510%_)
                                      (let ((_%__splice18081809%_
                                             (gx#syntax-split-splice->vector
                                              _%tl11781510%_
                                              '0)))
                                        (let ((_%tl11811516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18081809%_
                                                  '1)))
                                              (_%target11791513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18081809%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl11811516%_)
                                              (_%__match18401841%_
                                               _%e11731493%_
                                               _%hd11741497%_
                                               _%tl11751500%_
                                               _%e11761503%_
                                               _%hd11771507%_
                                               _%tl11781510%_
                                               _%__splice18081809%_
                                               _%target11791513%_
                                               _%tl11811516%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g11701247%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g11701247%_)))
                                  (if (gx#stx-pair? _%hd11771507%_)
                                      (let ((_%e11991375%_
                                             (gx#syntax-e _%hd11771507%_)))
                                        (let ((_%tl12011382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e11991375%_)))
                                              (_%hd12001379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e11991375%_))))
                                          (if (gx#stx-pair? _%hd12001379%_)
                                              (let ((_%e12021385%_
                                                     (gx#syntax-e
                                                      _%hd12001379%_)))
                                                (let ((_%tl12041392%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e12021385%_)))
                                                      (_%hd12031389%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e12021385%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd12031389%_)
                                                      (let ((_%e12051395%_
                                                             (gx#syntax-e
                                                              _%hd12031389%_)))
                                                        (let ((_%tl12071402%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e12051395%_)))
                      (_%hd12061399%_
                       (let () (declare (not safe)) (##car _%e12051395%_))))
                  (if (gx#identifier? _%hd12061399%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander~SyntaxSugar[1]#_g1922_|
                           _%hd12061399%_)
                          (if (gx#stx-pair? _%tl12041392%_)
                              (let ((_%e12081405%_
                                     (gx#syntax-e _%tl12041392%_)))
                                (let ((_%tl12101412%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e12081405%_)))
                                      (_%hd12091409%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e12081405%_))))
                                  (if (gx#stx-null? _%tl12101412%_)
                                      (if (gx#stx-pair/null? _%tl11781510%_)
                                          (let ((_%__splice18121813%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl11781510%_
                                                  '0)))
                                            (let ((_%tl12131418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18121813%_
                                                      '1)))
                                                  (_%target12111415%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18121813%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl12131418%_)
                                                  (_%__match18901891%_
                                                   _%e11731493%_
                                                   _%hd11741497%_
                                                   _%tl11751500%_
                                                   _%e11761503%_
                                                   _%hd11771507%_
                                                   _%tl11781510%_
                                                   _%e11991375%_
                                                   _%hd12001379%_
                                                   _%tl12011382%_
                                                   _%e12021385%_
                                                   _%hd12031389%_
                                                   _%tl12041392%_
                                                   _%e12051395%_
                                                   _%hd12061399%_
                                                   _%tl12071402%_
                                                   _%e12081405%_
                                                   _%hd12091409%_
                                                   _%tl12101412%_
                                                   _%__splice18121813%_
                                                   _%target12111415%_
                                                   _%tl12131418%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g11701247%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g11701247%_)))
                                      (if (gx#stx-pair/null? _%tl11781510%_)
                                          (let ((_%__splice18161817%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl11781510%_
                                                  '0)))
                                            (let ((_%tl12351287%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18161817%_
                                                      '1)))
                                                  (_%target12331284%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18161817%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl12351287%_)
                                                  (_%__match19161917%_
                                                   _%e11731493%_
                                                   _%hd11741497%_
                                                   _%tl11751500%_
                                                   _%e11761503%_
                                                   _%hd11771507%_
                                                   _%tl11781510%_
                                                   _%e11991375%_
                                                   _%hd12001379%_
                                                   _%tl12011382%_
                                                   _%__splice18161817%_
                                                   _%target12331284%_
                                                   _%tl12351287%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g11701247%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g11701247%_))))))
                              (if (gx#stx-pair/null? _%tl11781510%_)
                                  (let ((_%__splice18161817%_
                                         (gx#syntax-split-splice->vector
                                          _%tl11781510%_
                                          '0)))
                                    (let ((_%tl12351287%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18161817%_
                                              '1)))
                                          (_%target12331284%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18161817%_
                                              '0))))
                                      (if (gx#stx-null? _%tl12351287%_)
                                          (_%__match19161917%_
                                           _%e11731493%_
                                           _%hd11741497%_
                                           _%tl11751500%_
                                           _%e11761503%_
                                           _%hd11771507%_
                                           _%tl11781510%_
                                           _%e11991375%_
                                           _%hd12001379%_
                                           _%tl12011382%_
                                           _%__splice18161817%_
                                           _%target12331284%_
                                           _%tl12351287%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g11701247%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g11701247%_))))
                          (if (gx#stx-pair/null? _%tl11781510%_)
                              (let ((_%__splice18161817%_
                                     (gx#syntax-split-splice->vector
                                      _%tl11781510%_
                                      '0)))
                                (let ((_%tl12351287%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18161817%_
                                          '1)))
                                      (_%target12331284%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18161817%_
                                          '0))))
                                  (if (gx#stx-null? _%tl12351287%_)
                                      (_%__match19161917%_
                                       _%e11731493%_
                                       _%hd11741497%_
                                       _%tl11751500%_
                                       _%e11761503%_
                                       _%hd11771507%_
                                       _%tl11781510%_
                                       _%e11991375%_
                                       _%hd12001379%_
                                       _%tl12011382%_
                                       _%__splice18161817%_
                                       _%target12331284%_
                                       _%tl12351287%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g11701247%_)))))
                              (let () (declare (not safe)) (_%g11701247%_))))
                      (if (gx#stx-pair/null? _%tl11781510%_)
                          (let ((_%__splice18161817%_
                                 (gx#syntax-split-splice->vector
                                  _%tl11781510%_
                                  '0)))
                            (let ((_%tl12351287%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18161817%_ '1)))
                                  (_%target12331284%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18161817%_ '0))))
                              (if (gx#stx-null? _%tl12351287%_)
                                  (_%__match19161917%_
                                   _%e11731493%_
                                   _%hd11741497%_
                                   _%tl11751500%_
                                   _%e11761503%_
                                   _%hd11771507%_
                                   _%tl11781510%_
                                   _%e11991375%_
                                   _%hd12001379%_
                                   _%tl12011382%_
                                   _%__splice18161817%_
                                   _%target12331284%_
                                   _%tl12351287%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g11701247%_)))))
                          (let () (declare (not safe)) (_%g11701247%_))))))
              (if (gx#stx-pair/null? _%tl11781510%_)
                  (let ((_%__splice18161817%_
                         (gx#syntax-split-splice->vector _%tl11781510%_ '0)))
                    (let ((_%tl12351287%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18161817%_ '1)))
                          (_%target12331284%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18161817%_ '0))))
                      (if (gx#stx-null? _%tl12351287%_)
                          (_%__match19161917%_
                           _%e11731493%_
                           _%hd11741497%_
                           _%tl11751500%_
                           _%e11761503%_
                           _%hd11771507%_
                           _%tl11781510%_
                           _%e11991375%_
                           _%hd12001379%_
                           _%tl12011382%_
                           _%__splice18161817%_
                           _%target12331284%_
                           _%tl12351287%_)
                          (let () (declare (not safe)) (_%g11701247%_)))))
                  (let () (declare (not safe)) (_%g11701247%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl11781510%_)
                                                  (let ((_%__splice18161817%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl11781510%_
                                                          '0)))
                                                    (let ((_%tl12351287%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18161817%_
                                                              '1)))
                                                          (_%target12331284%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18161817%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl12351287%_)
                                                          (_%__match19161917%_
                                                           _%e11731493%_
                                                           _%hd11741497%_
                                                           _%tl11751500%_
                                                           _%e11761503%_
                                                           _%hd11771507%_
                                                           _%tl11781510%_
                                                           _%e11991375%_
                                                           _%hd12001379%_
                                                           _%tl12011382%_
                                                           _%__splice18161817%_
                                                           _%target12331284%_
                                                           _%tl12351287%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g11701247%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g11701247%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g11701247%_))))))
                          (let () (declare (not safe)) (_%g11701247%_)))))
                  (let () (declare (not safe)) (_%g11701247%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax/loc|
      (lambda (_%stx1575%_)
        (let* ((_%g15781596%_
                (lambda (_%g15791592%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g15791592%_)))
               (_%g15771651%_
                (lambda (_%g15791600%_)
                  (if (gx#stx-pair? _%g15791600%_)
                      (let ((_%e15821603%_ (gx#syntax-e _%g15791600%_)))
                        (let ((_%hd15831607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e15821603%_)))
                              (_%tl15841610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e15821603%_))))
                          (if (gx#stx-pair? _%tl15841610%_)
                              (let ((_%e15851613%_
                                     (gx#syntax-e _%tl15841610%_)))
                                (let ((_%hd15861617%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e15851613%_)))
                                      (_%tl15871620%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e15851613%_))))
                                  (if (gx#stx-pair? _%tl15871620%_)
                                      (let ((_%e15881623%_
                                             (gx#syntax-e _%tl15871620%_)))
                                        (let ((_%hd15891627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e15881623%_)))
                                              (_%tl15901630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e15881623%_))))
                                          (if (gx#stx-null? _%tl15901630%_)
                                              ((lambda (_%L1633%_ _%L1635%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _%L1633%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _%L1635%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd15891627%_
                                               _%hd15861617%_)
                                              (_%g15781596%_ _%g15791600%_))))
                                      (_%g15781596%_ _%g15791600%_))))
                              (_%g15781596%_ _%g15791600%_))))
                      (_%g15781596%_ _%g15791600%_)))))
          (_%g15771651%_ _%stx1575%_))))))
