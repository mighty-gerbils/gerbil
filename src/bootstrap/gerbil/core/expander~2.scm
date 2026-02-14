(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander~SyntaxSugar[1]#_g1981_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax-rules|
      (lambda (_%stx442%_)
        (let* ((_%g445469%_
                (lambda (_%g446465%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g446465%_)))
               (_%g444771%_
                (lambda (_%g446473%_)
                  (if (gx#stx-pair? _%g446473%_)
                      (let ((_%e449476%_ (gx#syntax-e _%g446473%_)))
                        (let ((_%hd450480%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e449476%_)))
                              (_%tl451483%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e449476%_))))
                          (if (gx#stx-pair? _%tl451483%_)
                              (let ((_%e452486%_ (gx#syntax-e _%tl451483%_)))
                                (let ((_%hd453490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e452486%_)))
                                      (_%tl454493%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e452486%_))))
                                  (if (gx#stx-pair/null? _%tl454493%_)
                                      (let ((_g1977_ (gx#syntax-split-splice
                                                      _%tl454493%_
                                                      '0)))
                                        (begin
                                          (let ((_g1978_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g1977_)
                                                               (##values-length
                                                                _g1977_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g1978_ 2)))
                                                (error "Context expects 2 values"
                                                       _g1978_)))
                                          (let ((_%target455496%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1977_ 0)))
                                                (_%tl457499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1977_ 1))))
                                            (if (gx#stx-null? _%tl457499%_)
                                                (letrec ((_%loop458502%_
                                                          (lambda (_%hd456506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses462509%_)
                    (if (gx#stx-pair? _%hd456506%_)
                        (let ((_%e459511%_ (gx#syntax-e _%hd456506%_)))
                          (let ((_%lp-hd460515%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e459511%_)))
                                (_%lp-tl461518%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e459511%_))))
                            (_%loop458502%_
                             _%lp-tl461518%_
                             (cons _%lp-hd460515%_ _%clauses462509%_))))
                        (let ((_%clauses463521%_ (reverse _%clauses462509%_)))
                          ((lambda (_%g447524%_ _%g448526%_)
                             (if (gx#identifier-list? _%g448526%_)
                                 (let* ((_%body690%_
                                         (gx#stx-map
                                          (lambda (_%clause547%_)
                                            (let* ((_%__stx17141715%_
                                                    _%clause547%_)
                                                   (_%g551578%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx17141715%_))))
                                              (let ((_%__kont17171718%_
                                                     (lambda (_%g553663%_
                                                              _%g554665%_)
                                                       (cons _%g554665%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _%g553663%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont17191720%_
                                                     (lambda (_%g561615%_
                                                              _%g562617%_
                                                              _%g563618%_)
                                                       (cons _%g563618%_
                                                             (cons _%g562617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons _%g561615%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx17141715%_)
                                                    (let ((_%e555643%_
                                                           (gx#syntax-e
                                                            _%__stx17141715%_)))
                                                      (let ((_%tl557650%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e555643%_)))
                    (_%hd556647%_
                     (let () (declare (not safe)) (##car _%e555643%_))))
                (if (gx#stx-pair? _%tl557650%_)
                    (let ((_%e558653%_ (gx#syntax-e _%tl557650%_)))
                      (let ((_%tl560660%_
                             (let () (declare (not safe)) (##cdr _%e558653%_)))
                            (_%hd559657%_
                             (let ()
                               (declare (not safe))
                               (##car _%e558653%_))))
                        (if (gx#stx-null? _%tl560660%_)
                            (_%__kont17171718%_ _%hd559657%_ _%hd556647%_)
                            (if (gx#stx-pair? _%tl560660%_)
                                (let ((_%e570605%_ (gx#syntax-e _%tl560660%_)))
                                  (let ((_%tl572612%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e570605%_)))
                                        (_%hd571609%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e570605%_))))
                                    (if (gx#stx-null? _%tl572612%_)
                                        (_%__kont17191720%_
                                         _%hd571609%_
                                         _%hd559657%_
                                         _%hd556647%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g551578%_)))))
                                (let () (declare (not safe)) (_%g551578%_))))))
                    (let () (declare (not safe)) (_%g551578%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g551578%_))))))
                                          (foldr (lambda (_%g681684%_
                                                          _%g682687%_)
                                                   (cons _%g681684%_
                                                         _%g682687%_))
                                                 '()
                                                 _%g447524%_)))
                                        (_%g693710%_
                                         (lambda (_%g694706%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g694706%_)))
                                        (_%g692767%_
                                         (lambda (_%g694714%_)
                                           (if (gx#stx-pair/null? _%g694714%_)
                                               (let ((_g1979_ (gx#syntax-split-splice
                                                               _%g694714%_
                                                               '0)))
                                                 (begin
                                                   (let ((_g1980_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g1979_)
                                (##values-length _g1979_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g1980_ 2)))
                 (error "Context expects 2 values" _g1980_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target696717%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g1979_
                                                             0)))
                                                         (_%tl698720%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g1979_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl698720%_)
                                                         (letrec ((_%loop699723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd697727%_ _%clause703730%_)
                             (if (gx#stx-pair? _%hd697727%_)
                                 (let ((_%e700732%_
                                        (gx#syntax-e _%hd697727%_)))
                                   (let ((_%lp-hd701736%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e700732%_)))
                                         (_%lp-tl702739%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e700732%_))))
                                     (_%loop699723%_
                                      _%lp-tl702739%_
                                      (cons _%lp-hd701736%_
                                            _%clause703730%_))))
                                 (let ((_%clause704742%_
                                        (reverse _%clause703730%_)))
                                   ((lambda (_%g695745%_)
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
                            (cons _%g448526%_
                                  (foldr (lambda (_%g758761%_ _%g759764%_)
                                           (cons _%g758761%_ _%g759764%_))
                                         '()
                                         _%g695745%_))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause704742%_))))))
                   (_%loop699723%_ _%target696717%_ '()))
                 (_%g693710%_ _%g694714%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g693710%_ _%g694714%_)))))
                                   (_%g692767%_ _%body690%_))
                                 (_%g445469%_ _%g446473%_)))
                           _%clauses463521%_
                           _%hd453490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop458502%_
                                                   _%target455496%_
                                                   '()))
                                                (_%g445469%_ _%g446473%_)))))
                                      (_%g445469%_ _%g446473%_))))
                              (_%g445469%_ _%g446473%_))))
                      (_%g445469%_ _%g446473%_)))))
          (_%g444771%_ _%stx442%_))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax|
      (lambda (_%stx777%_)
        (let* ((_%__stx17581759%_ _%stx777%_)
               (_%g782867%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx17581759%_))))
          (let ((_%__kont17611762%_
                 (lambda (_%g7841197%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g12131216%_ _%g12141219%_)
                                        (cons _%g12131216%_ _%g12141219%_))
                                      '()
                                      _%g7841197%_)))))
                (_%__kont17651766%_
                 (lambda (_%g8001107%_ _%g8011109%_ _%g8021110%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons _%g8011109%_
                               (cons '()
                                     (cons (cons _%g8021110%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g11331136%_ _%g11341139%_)
                                    (cons _%g11331136%_ _%g11341139%_))
                                  '()
                                  _%g8001107%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont17691770%_
                 (lambda (_%g827972%_ _%g828974%_ _%g829975%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons (cons (gx#datum->syntax '#f 'list)
                                     (foldr (lambda (_%g9971004%_ _%g9981007%_)
                                              (cons _%g9971004%_ _%g9981007%_))
                                            '()
                                            _%g828974%_))
                               (cons '()
                                     (cons (cons (foldr (lambda (_%g9991010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g10001013%_)
                  (cons _%g9991010%_ _%g10001013%_))
                '()
                _%g829975%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g10011016%_ _%g10021019%_)
                                    (cons _%g10011016%_ _%g10021019%_))
                                  '()
                                  _%g827972%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let* ((_%__match18591860%_
                    (lambda (_%e830874%_
                             _%hd831878%_
                             _%tl832881%_
                             _%e833884%_
                             _%hd834888%_
                             _%tl835891%_
                             _%__splice17711772%_
                             _%target836894%_
                             _%tl838897%_)
                      (letrec ((_%loop839900%_
                                (lambda (_%hd837904%_
                                         _%e843907%_
                                         _%pat844908%_)
                                  (if (gx#stx-pair? _%hd837904%_)
                                      (let ((_%e840910%_
                                             (gx#syntax-e _%hd837904%_)))
                                        (let ((_%lp-tl842917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e840910%_)))
                                              (_%lp-hd841914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e840910%_))))
                                          (if (gx#stx-pair? _%lp-hd841914%_)
                                              (let ((_%e847920%_
                                                     (gx#syntax-e
                                                      _%lp-hd841914%_)))
                                                (let ((_%tl849927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e847920%_)))
                                                      (_%hd848924%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e847920%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl849927%_)
                                                      (let ((_%e850930%_
                                                             (gx#syntax-e
                                                              _%tl849927%_)))
                                                        (let ((_%tl852937%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e850930%_)))
                      (_%hd851934%_
                       (let () (declare (not safe)) (##car _%e850930%_))))
                  (if (gx#stx-null? _%tl852937%_)
                      (_%loop839900%_
                       _%lp-tl842917%_
                       (cons _%hd851934%_ _%e843907%_)
                       (cons _%hd848924%_ _%pat844908%_))
                      (let () (declare (not safe)) (_%g782867%_)))))
              (let () (declare (not safe)) (_%g782867%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g782867%_)))))
                                      (let ((_%pat846942%_
                                             (reverse _%pat844908%_))
                                            (_%e845940%_
                                             (reverse _%e843907%_)))
                                        (if (gx#stx-pair/null? _%tl835891%_)
                                            (let ((_%__splice17731774%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl835891%_
                                                    '0)))
                                              (let ((_%tl855947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17731774%_
                                                        '1)))
                                                    (_%target853944%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17731774%_
                                                        '0))))
                                                (if (gx#stx-null? _%tl855947%_)
                                                    (letrec ((_%loop856950%_
                                                              (lambda (_%hd854954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body860957%_)
                        (if (gx#stx-pair? _%hd854954%_)
                            (let ((_%e857959%_ (gx#syntax-e _%hd854954%_)))
                              (let ((_%lp-tl859966%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e857959%_)))
                                    (_%lp-hd858963%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e857959%_))))
                                (_%loop856950%_
                                 _%lp-tl859966%_
                                 (cons _%lp-hd858963%_ _%body860957%_))))
                            (let ((_%body861969%_ (reverse _%body860957%_)))
                              (_%__kont17691770%_
                               _%body861969%_
                               _%e845940%_
                               _%pat846942%_))))))
              (_%loop856950%_ _%target853944%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g782867%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g782867%_))))))))
                        (_%loop839900%_ _%target836894%_ '() '()))))
                   (_%__match18391840%_
                    (lambda (_%e8031029%_
                             _%hd8041033%_
                             _%tl8051036%_
                             _%e8061039%_
                             _%hd8071043%_
                             _%tl8081046%_
                             _%e8091049%_
                             _%hd8101053%_
                             _%tl8111056%_
                             _%e8121059%_
                             _%hd8131063%_
                             _%tl8141066%_
                             _%e8151069%_
                             _%hd8161073%_
                             _%tl8171076%_
                             _%__splice17671768%_
                             _%target8181079%_
                             _%tl8201082%_)
                      (letrec ((_%loop8211085%_
                                (lambda (_%hd8191089%_ _%body8251092%_)
                                  (if (gx#stx-pair? _%hd8191089%_)
                                      (let ((_%e8221094%_
                                             (gx#syntax-e _%hd8191089%_)))
                                        (let ((_%lp-tl8241101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8221094%_)))
                                              (_%lp-hd8231098%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8221094%_))))
                                          (_%loop8211085%_
                                           _%lp-tl8241101%_
                                           (cons _%lp-hd8231098%_
                                                 _%body8251092%_))))
                                      (let ((_%body8261104%_
                                             (reverse _%body8251092%_)))
                                        (_%__kont17651766%_
                                         _%body8261104%_
                                         _%hd8161073%_
                                         _%hd8131063%_))))))
                        (_%loop8211085%_ _%target8181079%_ '()))))
                   (_%__match17971798%_
                    (lambda (_%e7851149%_
                             _%hd7861153%_
                             _%tl7871156%_
                             _%e7881159%_
                             _%hd7891163%_
                             _%tl7901166%_
                             _%__splice17631764%_
                             _%target7911169%_
                             _%tl7931172%_)
                      (letrec ((_%loop7941175%_
                                (lambda (_%hd7921179%_ _%body7981182%_)
                                  (if (gx#stx-pair? _%hd7921179%_)
                                      (let ((_%e7951184%_
                                             (gx#syntax-e _%hd7921179%_)))
                                        (let ((_%lp-tl7971191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7951184%_)))
                                              (_%lp-hd7961188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7951184%_))))
                                          (_%loop7941175%_
                                           _%lp-tl7971191%_
                                           (cons _%lp-hd7961188%_
                                                 _%body7981182%_))))
                                      (let ((_%body7991194%_
                                             (reverse _%body7981182%_)))
                                        (_%__kont17611762%_
                                         _%body7991194%_))))))
                        (_%loop7941175%_ _%target7911169%_ '())))))
              (if (gx#stx-pair? _%__stx17581759%_)
                  (let ((_%e7851149%_ (gx#syntax-e _%__stx17581759%_)))
                    (let ((_%tl7871156%_
                           (let () (declare (not safe)) (##cdr _%e7851149%_)))
                          (_%hd7861153%_
                           (let () (declare (not safe)) (##car _%e7851149%_))))
                      (if (gx#stx-pair? _%tl7871156%_)
                          (let ((_%e7881159%_ (gx#syntax-e _%tl7871156%_)))
                            (let ((_%tl7901166%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7881159%_)))
                                  (_%hd7891163%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7881159%_))))
                              (if (gx#stx-null? _%hd7891163%_)
                                  (if (gx#stx-pair/null? _%tl7901166%_)
                                      (let ((_%__splice17631764%_
                                             (gx#syntax-split-splice->vector
                                              _%tl7901166%_
                                              '0)))
                                        (let ((_%tl7931172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17631764%_
                                                  '1)))
                                              (_%target7911169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17631764%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl7931172%_)
                                              (_%__match17971798%_
                                               _%e7851149%_
                                               _%hd7861153%_
                                               _%tl7871156%_
                                               _%e7881159%_
                                               _%hd7891163%_
                                               _%tl7901166%_
                                               _%__splice17631764%_
                                               _%target7911169%_
                                               _%tl7931172%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd7891163%_)
                                                  (let ((_%__splice17711772%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd7891163%_
                                                          '0)))
                                                    (let ((_%tl838897%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17711772%_
                                                              '1)))
                                                          (_%target836894%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17711772%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl838897%_)
                                                          (_%__match18591860%_
                                                           _%e7851149%_
                                                           _%hd7861153%_
                                                           _%tl7871156%_
                                                           _%e7881159%_
                                                           _%hd7891163%_
                                                           _%tl7901166%_
                                                           _%__splice17711772%_
                                                           _%target836894%_
                                                           _%tl838897%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g782867%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g782867%_))))))
                                      (if (gx#stx-pair/null? _%hd7891163%_)
                                          (let ((_%__splice17711772%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd7891163%_
                                                  '0)))
                                            (let ((_%tl838897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17711772%_
                                                      '1)))
                                                  (_%target836894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17711772%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl838897%_)
                                                  (_%__match18591860%_
                                                   _%e7851149%_
                                                   _%hd7861153%_
                                                   _%tl7871156%_
                                                   _%e7881159%_
                                                   _%hd7891163%_
                                                   _%tl7901166%_
                                                   _%__splice17711772%_
                                                   _%target836894%_
                                                   _%tl838897%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g782867%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g782867%_))))
                                  (if (gx#stx-pair? _%hd7891163%_)
                                      (let ((_%e8091049%_
                                             (gx#syntax-e _%hd7891163%_)))
                                        (let ((_%tl8111056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8091049%_)))
                                              (_%hd8101053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8091049%_))))
                                          (if (gx#stx-pair? _%hd8101053%_)
                                              (let ((_%e8121059%_
                                                     (gx#syntax-e
                                                      _%hd8101053%_)))
                                                (let ((_%tl8141066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8121059%_)))
                                                      (_%hd8131063%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8121059%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8141066%_)
                                                      (let ((_%e8151069%_
                                                             (gx#syntax-e
                                                              _%tl8141066%_)))
                                                        (let ((_%tl8171076%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8151069%_)))
                      (_%hd8161073%_
                       (let () (declare (not safe)) (##car _%e8151069%_))))
                  (if (gx#stx-null? _%tl8171076%_)
                      (if (gx#stx-null? _%tl8111056%_)
                          (if (gx#stx-pair/null? _%tl7901166%_)
                              (let ((_%__splice17671768%_
                                     (gx#syntax-split-splice->vector
                                      _%tl7901166%_
                                      '0)))
                                (let ((_%tl8201082%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17671768%_
                                          '1)))
                                      (_%target8181079%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17671768%_
                                          '0))))
                                  (if (gx#stx-null? _%tl8201082%_)
                                      (_%__match18391840%_
                                       _%e7851149%_
                                       _%hd7861153%_
                                       _%tl7871156%_
                                       _%e7881159%_
                                       _%hd7891163%_
                                       _%tl7901166%_
                                       _%e8091049%_
                                       _%hd8101053%_
                                       _%tl8111056%_
                                       _%e8121059%_
                                       _%hd8131063%_
                                       _%tl8141066%_
                                       _%e8151069%_
                                       _%hd8161073%_
                                       _%tl8171076%_
                                       _%__splice17671768%_
                                       _%target8181079%_
                                       _%tl8201082%_)
                                      (if (gx#stx-pair/null? _%hd7891163%_)
                                          (let ((_%__splice17711772%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd7891163%_
                                                  '0)))
                                            (let ((_%tl838897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17711772%_
                                                      '1)))
                                                  (_%target836894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17711772%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl838897%_)
                                                  (_%__match18591860%_
                                                   _%e7851149%_
                                                   _%hd7861153%_
                                                   _%tl7871156%_
                                                   _%e7881159%_
                                                   _%hd7891163%_
                                                   _%tl7901166%_
                                                   _%__splice17711772%_
                                                   _%target836894%_
                                                   _%tl838897%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g782867%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g782867%_))))))
                              (if (gx#stx-pair/null? _%hd7891163%_)
                                  (let ((_%__splice17711772%_
                                         (gx#syntax-split-splice->vector
                                          _%hd7891163%_
                                          '0)))
                                    (let ((_%tl838897%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17711772%_
                                              '1)))
                                          (_%target836894%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17711772%_
                                              '0))))
                                      (if (gx#stx-null? _%tl838897%_)
                                          (_%__match18591860%_
                                           _%e7851149%_
                                           _%hd7861153%_
                                           _%tl7871156%_
                                           _%e7881159%_
                                           _%hd7891163%_
                                           _%tl7901166%_
                                           _%__splice17711772%_
                                           _%target836894%_
                                           _%tl838897%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g782867%_)))))
                                  (let () (declare (not safe)) (_%g782867%_))))
                          (if (gx#stx-pair/null? _%hd7891163%_)
                              (let ((_%__splice17711772%_
                                     (gx#syntax-split-splice->vector
                                      _%hd7891163%_
                                      '0)))
                                (let ((_%tl838897%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17711772%_
                                          '1)))
                                      (_%target836894%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17711772%_
                                          '0))))
                                  (if (gx#stx-null? _%tl838897%_)
                                      (_%__match18591860%_
                                       _%e7851149%_
                                       _%hd7861153%_
                                       _%tl7871156%_
                                       _%e7881159%_
                                       _%hd7891163%_
                                       _%tl7901166%_
                                       _%__splice17711772%_
                                       _%target836894%_
                                       _%tl838897%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g782867%_)))))
                              (let () (declare (not safe)) (_%g782867%_))))
                      (if (gx#stx-pair/null? _%hd7891163%_)
                          (let ((_%__splice17711772%_
                                 (gx#syntax-split-splice->vector
                                  _%hd7891163%_
                                  '0)))
                            (let ((_%tl838897%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17711772%_ '1)))
                                  (_%target836894%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17711772%_ '0))))
                              (if (gx#stx-null? _%tl838897%_)
                                  (_%__match18591860%_
                                   _%e7851149%_
                                   _%hd7861153%_
                                   _%tl7871156%_
                                   _%e7881159%_
                                   _%hd7891163%_
                                   _%tl7901166%_
                                   _%__splice17711772%_
                                   _%target836894%_
                                   _%tl838897%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g782867%_)))))
                          (let () (declare (not safe)) (_%g782867%_))))))
              (if (gx#stx-pair/null? _%hd7891163%_)
                  (let ((_%__splice17711772%_
                         (gx#syntax-split-splice->vector _%hd7891163%_ '0)))
                    (let ((_%tl838897%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17711772%_ '1)))
                          (_%target836894%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17711772%_ '0))))
                      (if (gx#stx-null? _%tl838897%_)
                          (_%__match18591860%_
                           _%e7851149%_
                           _%hd7861153%_
                           _%tl7871156%_
                           _%e7881159%_
                           _%hd7891163%_
                           _%tl7901166%_
                           _%__splice17711772%_
                           _%target836894%_
                           _%tl838897%_)
                          (let () (declare (not safe)) (_%g782867%_)))))
                  (let () (declare (not safe)) (_%g782867%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd7891163%_)
                                                  (let ((_%__splice17711772%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd7891163%_
                                                          '0)))
                                                    (let ((_%tl838897%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17711772%_
                                                              '1)))
                                                          (_%target836894%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17711772%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl838897%_)
                                                          (_%__match18591860%_
                                                           _%e7851149%_
                                                           _%hd7861153%_
                                                           _%tl7871156%_
                                                           _%e7881159%_
                                                           _%hd7891163%_
                                                           _%tl7901166%_
                                                           _%__splice17711772%_
                                                           _%target836894%_
                                                           _%tl838897%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g782867%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g782867%_))))))
                                      (if (gx#stx-pair/null? _%hd7891163%_)
                                          (let ((_%__splice17711772%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd7891163%_
                                                  '0)))
                                            (let ((_%tl838897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17711772%_
                                                      '1)))
                                                  (_%target836894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17711772%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl838897%_)
                                                  (_%__match18591860%_
                                                   _%e7851149%_
                                                   _%hd7861153%_
                                                   _%tl7871156%_
                                                   _%e7881159%_
                                                   _%hd7891163%_
                                                   _%tl7901166%_
                                                   _%__splice17711772%_
                                                   _%target836894%_
                                                   _%tl838897%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g782867%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g782867%_)))))))
                          (let () (declare (not safe)) (_%g782867%_)))))
                  (let () (declare (not safe)) (_%g782867%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax*|
      (lambda (_%stx1230%_)
        (let* ((_%__stx18621863%_ _%stx1230%_)
               (_%g12351312%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx18621863%_))))
          (let ((_%__kont18651866%_
                 (lambda (_%g12371602%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g16181621%_ _%g16191624%_)
                                        (cons _%g16181621%_ _%g16191624%_))
                                      '()
                                      _%g12371602%_)))))
                (_%__kont18691870%_
                 (lambda (_%g12531506%_
                          _%g12541508%_
                          _%g12551509%_
                          _%g12561510%_
                          _%g12571511%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons (cons _%g12561510%_
                                           (cons _%g12551509%_ '()))
                                     '())
                               (cons (cons _%g12571511%_
                                           (cons _%g12541508%_
                                                 (foldr (lambda (_%g15381541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g15391544%_)
                  (cons _%g15381541%_ _%g15391544%_))
                '()
                _%g12531506%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont18731874%_
                 (lambda (_%g12851377%_
                          _%g12861379%_
                          _%g12871380%_
                          _%g12881381%_)
                   (cons (gx#datum->syntax '#f 'with-syntax)
                         (cons (cons _%g12871380%_ '())
                               (cons (cons _%g12881381%_
                                           (cons _%g12861379%_
                                                 (foldr (lambda (_%g14021405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g14031408%_)
                  (cons _%g14021405%_ _%g14031408%_))
                '()
                _%g12851377%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match19751976%_
                    (lambda (_%e12891319%_
                             _%hd12901323%_
                             _%tl12911326%_
                             _%e12921329%_
                             _%hd12931333%_
                             _%tl12941336%_
                             _%e12951339%_
                             _%hd12961343%_
                             _%tl12971346%_
                             _%__splice18751876%_
                             _%target12981349%_
                             _%tl13001352%_)
                      (letrec ((_%loop13011355%_
                                (lambda (_%hd12991359%_ _%body13051362%_)
                                  (if (gx#stx-pair? _%hd12991359%_)
                                      (let ((_%e13021364%_
                                             (gx#syntax-e _%hd12991359%_)))
                                        (let ((_%lp-tl13041371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e13021364%_)))
                                              (_%lp-hd13031368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e13021364%_))))
                                          (_%loop13011355%_
                                           _%lp-tl13041371%_
                                           (cons _%lp-hd13031368%_
                                                 _%body13051362%_))))
                                      (let ((_%body13061374%_
                                             (reverse _%body13051362%_)))
                                        (_%__kont18731874%_
                                         _%body13061374%_
                                         _%tl12971346%_
                                         _%hd12961343%_
                                         _%hd12901323%_))))))
                        (_%loop13011355%_ _%target12981349%_ '()))))
                   (_%__match19491950%_
                    (lambda (_%e12581418%_
                             _%hd12591422%_
                             _%tl12601425%_
                             _%e12611428%_
                             _%hd12621432%_
                             _%tl12631435%_
                             _%e12641438%_
                             _%hd12651442%_
                             _%tl12661445%_
                             _%e12671448%_
                             _%hd12681452%_
                             _%tl12691455%_
                             _%e12701458%_
                             _%hd12711462%_
                             _%tl12721465%_
                             _%e12731468%_
                             _%hd12741472%_
                             _%tl12751475%_
                             _%__splice18711872%_
                             _%target12761478%_
                             _%tl12781481%_)
                      (letrec ((_%loop12791484%_
                                (lambda (_%hd12771488%_ _%body12831491%_)
                                  (if (gx#stx-pair? _%hd12771488%_)
                                      (let ((_%e12801493%_
                                             (gx#syntax-e _%hd12771488%_)))
                                        (let ((_%lp-tl12821500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12801493%_)))
                                              (_%lp-hd12811497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12801493%_))))
                                          (_%loop12791484%_
                                           _%lp-tl12821500%_
                                           (cons _%lp-hd12811497%_
                                                 _%body12831491%_))))
                                      (let ((_%body12841503%_
                                             (reverse _%body12831491%_)))
                                        (_%__kont18691870%_
                                         _%body12841503%_
                                         _%tl12661445%_
                                         _%hd12741472%_
                                         _%tl12721465%_
                                         _%hd12591422%_))))))
                        (_%loop12791484%_ _%target12761478%_ '()))))
                   (_%__match18991900%_
                    (lambda (_%e12381554%_
                             _%hd12391558%_
                             _%tl12401561%_
                             _%e12411564%_
                             _%hd12421568%_
                             _%tl12431571%_
                             _%__splice18671868%_
                             _%target12441574%_
                             _%tl12461577%_)
                      (letrec ((_%loop12471580%_
                                (lambda (_%hd12451584%_ _%body12511587%_)
                                  (if (gx#stx-pair? _%hd12451584%_)
                                      (let ((_%e12481589%_
                                             (gx#syntax-e _%hd12451584%_)))
                                        (let ((_%lp-tl12501596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12481589%_)))
                                              (_%lp-hd12491593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12481589%_))))
                                          (_%loop12471580%_
                                           _%lp-tl12501596%_
                                           (cons _%lp-hd12491593%_
                                                 _%body12511587%_))))
                                      (let ((_%body12521599%_
                                             (reverse _%body12511587%_)))
                                        (_%__kont18651866%_
                                         _%body12521599%_))))))
                        (_%loop12471580%_ _%target12441574%_ '())))))
              (if (gx#stx-pair? _%__stx18621863%_)
                  (let ((_%e12381554%_ (gx#syntax-e _%__stx18621863%_)))
                    (let ((_%tl12401561%_
                           (let () (declare (not safe)) (##cdr _%e12381554%_)))
                          (_%hd12391558%_
                           (let ()
                             (declare (not safe))
                             (##car _%e12381554%_))))
                      (if (gx#stx-pair? _%tl12401561%_)
                          (let ((_%e12411564%_ (gx#syntax-e _%tl12401561%_)))
                            (let ((_%tl12431571%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e12411564%_)))
                                  (_%hd12421568%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e12411564%_))))
                              (if (gx#stx-null? _%hd12421568%_)
                                  (if (gx#stx-pair/null? _%tl12431571%_)
                                      (let ((_%__splice18671868%_
                                             (gx#syntax-split-splice->vector
                                              _%tl12431571%_
                                              '0)))
                                        (let ((_%tl12461577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18671868%_
                                                  '1)))
                                              (_%target12441574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18671868%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl12461577%_)
                                              (_%__match18991900%_
                                               _%e12381554%_
                                               _%hd12391558%_
                                               _%tl12401561%_
                                               _%e12411564%_
                                               _%hd12421568%_
                                               _%tl12431571%_
                                               _%__splice18671868%_
                                               _%target12441574%_
                                               _%tl12461577%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g12351312%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g12351312%_)))
                                  (if (gx#stx-pair? _%hd12421568%_)
                                      (let ((_%e12641438%_
                                             (gx#syntax-e _%hd12421568%_)))
                                        (let ((_%tl12661445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12641438%_)))
                                              (_%hd12651442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12641438%_))))
                                          (if (gx#stx-pair? _%hd12651442%_)
                                              (let ((_%e12671448%_
                                                     (gx#syntax-e
                                                      _%hd12651442%_)))
                                                (let ((_%tl12691455%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e12671448%_)))
                                                      (_%hd12681452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e12671448%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd12681452%_)
                                                      (let ((_%e12701458%_
                                                             (gx#syntax-e
                                                              _%hd12681452%_)))
                                                        (let ((_%tl12721465%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e12701458%_)))
                      (_%hd12711462%_
                       (let () (declare (not safe)) (##car _%e12701458%_))))
                  (if (gx#identifier? _%hd12711462%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander~SyntaxSugar[1]#_g1981_|
                           _%hd12711462%_)
                          (if (gx#stx-pair? _%tl12691455%_)
                              (let ((_%e12731468%_
                                     (gx#syntax-e _%tl12691455%_)))
                                (let ((_%tl12751475%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e12731468%_)))
                                      (_%hd12741472%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e12731468%_))))
                                  (if (gx#stx-null? _%tl12751475%_)
                                      (if (gx#stx-pair/null? _%tl12431571%_)
                                          (let ((_%__splice18711872%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl12431571%_
                                                  '0)))
                                            (let ((_%tl12781481%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18711872%_
                                                      '1)))
                                                  (_%target12761478%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18711872%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl12781481%_)
                                                  (_%__match19491950%_
                                                   _%e12381554%_
                                                   _%hd12391558%_
                                                   _%tl12401561%_
                                                   _%e12411564%_
                                                   _%hd12421568%_
                                                   _%tl12431571%_
                                                   _%e12641438%_
                                                   _%hd12651442%_
                                                   _%tl12661445%_
                                                   _%e12671448%_
                                                   _%hd12681452%_
                                                   _%tl12691455%_
                                                   _%e12701458%_
                                                   _%hd12711462%_
                                                   _%tl12721465%_
                                                   _%e12731468%_
                                                   _%hd12741472%_
                                                   _%tl12751475%_
                                                   _%__splice18711872%_
                                                   _%target12761478%_
                                                   _%tl12781481%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g12351312%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g12351312%_)))
                                      (if (gx#stx-pair/null? _%tl12431571%_)
                                          (let ((_%__splice18751876%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl12431571%_
                                                  '0)))
                                            (let ((_%tl13001352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18751876%_
                                                      '1)))
                                                  (_%target12981349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18751876%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl13001352%_)
                                                  (_%__match19751976%_
                                                   _%e12381554%_
                                                   _%hd12391558%_
                                                   _%tl12401561%_
                                                   _%e12411564%_
                                                   _%hd12421568%_
                                                   _%tl12431571%_
                                                   _%e12641438%_
                                                   _%hd12651442%_
                                                   _%tl12661445%_
                                                   _%__splice18751876%_
                                                   _%target12981349%_
                                                   _%tl13001352%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g12351312%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g12351312%_))))))
                              (if (gx#stx-pair/null? _%tl12431571%_)
                                  (let ((_%__splice18751876%_
                                         (gx#syntax-split-splice->vector
                                          _%tl12431571%_
                                          '0)))
                                    (let ((_%tl13001352%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18751876%_
                                              '1)))
                                          (_%target12981349%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18751876%_
                                              '0))))
                                      (if (gx#stx-null? _%tl13001352%_)
                                          (_%__match19751976%_
                                           _%e12381554%_
                                           _%hd12391558%_
                                           _%tl12401561%_
                                           _%e12411564%_
                                           _%hd12421568%_
                                           _%tl12431571%_
                                           _%e12641438%_
                                           _%hd12651442%_
                                           _%tl12661445%_
                                           _%__splice18751876%_
                                           _%target12981349%_
                                           _%tl13001352%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g12351312%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g12351312%_))))
                          (if (gx#stx-pair/null? _%tl12431571%_)
                              (let ((_%__splice18751876%_
                                     (gx#syntax-split-splice->vector
                                      _%tl12431571%_
                                      '0)))
                                (let ((_%tl13001352%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18751876%_
                                          '1)))
                                      (_%target12981349%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18751876%_
                                          '0))))
                                  (if (gx#stx-null? _%tl13001352%_)
                                      (_%__match19751976%_
                                       _%e12381554%_
                                       _%hd12391558%_
                                       _%tl12401561%_
                                       _%e12411564%_
                                       _%hd12421568%_
                                       _%tl12431571%_
                                       _%e12641438%_
                                       _%hd12651442%_
                                       _%tl12661445%_
                                       _%__splice18751876%_
                                       _%target12981349%_
                                       _%tl13001352%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g12351312%_)))))
                              (let () (declare (not safe)) (_%g12351312%_))))
                      (if (gx#stx-pair/null? _%tl12431571%_)
                          (let ((_%__splice18751876%_
                                 (gx#syntax-split-splice->vector
                                  _%tl12431571%_
                                  '0)))
                            (let ((_%tl13001352%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18751876%_ '1)))
                                  (_%target12981349%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18751876%_ '0))))
                              (if (gx#stx-null? _%tl13001352%_)
                                  (_%__match19751976%_
                                   _%e12381554%_
                                   _%hd12391558%_
                                   _%tl12401561%_
                                   _%e12411564%_
                                   _%hd12421568%_
                                   _%tl12431571%_
                                   _%e12641438%_
                                   _%hd12651442%_
                                   _%tl12661445%_
                                   _%__splice18751876%_
                                   _%target12981349%_
                                   _%tl13001352%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g12351312%_)))))
                          (let () (declare (not safe)) (_%g12351312%_))))))
              (if (gx#stx-pair/null? _%tl12431571%_)
                  (let ((_%__splice18751876%_
                         (gx#syntax-split-splice->vector _%tl12431571%_ '0)))
                    (let ((_%tl13001352%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18751876%_ '1)))
                          (_%target12981349%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18751876%_ '0))))
                      (if (gx#stx-null? _%tl13001352%_)
                          (_%__match19751976%_
                           _%e12381554%_
                           _%hd12391558%_
                           _%tl12401561%_
                           _%e12411564%_
                           _%hd12421568%_
                           _%tl12431571%_
                           _%e12641438%_
                           _%hd12651442%_
                           _%tl12661445%_
                           _%__splice18751876%_
                           _%target12981349%_
                           _%tl13001352%_)
                          (let () (declare (not safe)) (_%g12351312%_)))))
                  (let () (declare (not safe)) (_%g12351312%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl12431571%_)
                                                  (let ((_%__splice18751876%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl12431571%_
                                                          '0)))
                                                    (let ((_%tl13001352%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18751876%_
                                                              '1)))
                                                          (_%target12981349%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18751876%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl13001352%_)
                                                          (_%__match19751976%_
                                                           _%e12381554%_
                                                           _%hd12391558%_
                                                           _%tl12401561%_
                                                           _%e12411564%_
                                                           _%hd12421568%_
                                                           _%tl12431571%_
                                                           _%e12641438%_
                                                           _%hd12651442%_
                                                           _%tl12661445%_
                                                           _%__splice18751876%_
                                                           _%target12981349%_
                                                           _%tl13001352%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g12351312%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g12351312%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g12351312%_))))))
                          (let () (declare (not safe)) (_%g12351312%_)))))
                  (let () (declare (not safe)) (_%g12351312%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax/loc|
      (lambda (_%stx1634%_)
        (let* ((_%g16371655%_
                (lambda (_%g16381651%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g16381651%_)))
               (_%g16361710%_
                (lambda (_%g16381659%_)
                  (if (gx#stx-pair? _%g16381659%_)
                      (let ((_%e16411662%_ (gx#syntax-e _%g16381659%_)))
                        (let ((_%hd16421666%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e16411662%_)))
                              (_%tl16431669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e16411662%_))))
                          (if (gx#stx-pair? _%tl16431669%_)
                              (let ((_%e16441672%_
                                     (gx#syntax-e _%tl16431669%_)))
                                (let ((_%hd16451676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e16441672%_)))
                                      (_%tl16461679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e16441672%_))))
                                  (if (gx#stx-pair? _%tl16461679%_)
                                      (let ((_%e16471682%_
                                             (gx#syntax-e _%tl16461679%_)))
                                        (let ((_%hd16481686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e16471682%_)))
                                              (_%tl16491689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e16471682%_))))
                                          (if (gx#stx-null? _%tl16491689%_)
                                              ((lambda (_%g16391692%_
                                                        _%g16401694%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _%g16391692%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _%g16401694%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd16481686%_
                                               _%hd16451676%_)
                                              (_%g16371655%_ _%g16381659%_))))
                                      (_%g16371655%_ _%g16381659%_))))
                              (_%g16371655%_ _%g16381659%_))))
                      (_%g16371655%_ _%g16381659%_)))))
          (_%g16361710%_ _%stx1634%_))))))
