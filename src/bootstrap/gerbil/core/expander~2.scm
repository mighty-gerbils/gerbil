(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander~SyntaxSugar[1]#_g2008_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax-rules|
      (lambda (_%stx469%_)
        (let* ((_%g472496%_
                (lambda (_%g473492%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g473492%_)))
               (_%g471798%_
                (lambda (_%g473500%_)
                  (if (gx#stx-pair? _%g473500%_)
                      (let ((_%e476503%_ (gx#syntax-e _%g473500%_)))
                        (let ((_%hd477507%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e476503%_)))
                              (_%tl478510%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e476503%_))))
                          (if (gx#stx-pair? _%tl478510%_)
                              (let ((_%e479513%_ (gx#syntax-e _%tl478510%_)))
                                (let ((_%hd480517%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e479513%_)))
                                      (_%tl481520%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e479513%_))))
                                  (if (gx#stx-pair/null? _%tl481520%_)
                                      (let ((_g2004_ (gx#syntax-split-splice
                                                      _%tl481520%_
                                                      '0)))
                                        (begin
                                          (let ((_g2005_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g2004_)
                                                               (##values-length
                                                                _g2004_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g2005_ 2)))
                                                (error "Context expects 2 values"
                                                       _g2005_)))
                                          (let ((_%target482523%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g2004_ 0)))
                                                (_%tl484526%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g2004_ 1))))
                                            (if (gx#stx-null? _%tl484526%_)
                                                (letrec ((_%loop485529%_
                                                          (lambda (_%hd483533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses489536%_)
                    (if (gx#stx-pair? _%hd483533%_)
                        (let ((_%e486538%_ (gx#syntax-e _%hd483533%_)))
                          (let ((_%lp-hd487542%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e486538%_)))
                                (_%lp-tl488545%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e486538%_))))
                            (_%loop485529%_
                             _%lp-tl488545%_
                             (cons _%lp-hd487542%_ _%clauses489536%_))))
                        (let ((_%clauses490548%_ (reverse _%clauses489536%_)))
                          ((lambda (_%g474551%_ _%g475553%_)
                             (if (gx#identifier-list? _%g475553%_)
                                 (let* ((_%body717%_
                                         (gx#stx-map
                                          (lambda (_%clause574%_)
                                            (let* ((_%__stx17411742%_
                                                    _%clause574%_)
                                                   (_%g578605%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx17411742%_))))
                                              (let ((_%__kont17441745%_
                                                     (lambda (_%g580690%_
                                                              _%g581692%_)
                                                       (cons _%g581692%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _%g580690%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont17461747%_
                                                     (lambda (_%g588642%_
                                                              _%g589644%_
                                                              _%g590645%_)
                                                       (cons _%g590645%_
                                                             (cons _%g589644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons _%g588642%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx17411742%_)
                                                    (let ((_%e582670%_
                                                           (gx#syntax-e
                                                            _%__stx17411742%_)))
                                                      (let ((_%tl584677%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e582670%_)))
                    (_%hd583674%_
                     (let () (declare (not safe)) (##car _%e582670%_))))
                (if (gx#stx-pair? _%tl584677%_)
                    (let ((_%e585680%_ (gx#syntax-e _%tl584677%_)))
                      (let ((_%tl587687%_
                             (let () (declare (not safe)) (##cdr _%e585680%_)))
                            (_%hd586684%_
                             (let ()
                               (declare (not safe))
                               (##car _%e585680%_))))
                        (if (gx#stx-null? _%tl587687%_)
                            (_%__kont17441745%_ _%hd586684%_ _%hd583674%_)
                            (if (gx#stx-pair? _%tl587687%_)
                                (let ((_%e597632%_ (gx#syntax-e _%tl587687%_)))
                                  (let ((_%tl599639%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e597632%_)))
                                        (_%hd598636%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e597632%_))))
                                    (if (gx#stx-null? _%tl599639%_)
                                        (_%__kont17461747%_
                                         _%hd598636%_
                                         _%hd586684%_
                                         _%hd583674%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g578605%_)))))
                                (let () (declare (not safe)) (_%g578605%_))))))
                    (let () (declare (not safe)) (_%g578605%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g578605%_))))))
                                          (foldr (lambda (_%g708711%_
                                                          _%g709714%_)
                                                   (cons _%g708711%_
                                                         _%g709714%_))
                                                 '()
                                                 _%g474551%_)))
                                        (_%g720737%_
                                         (lambda (_%g721733%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g721733%_)))
                                        (_%g719794%_
                                         (lambda (_%g721741%_)
                                           (if (gx#stx-pair/null? _%g721741%_)
                                               (let ((_g2006_ (gx#syntax-split-splice
                                                               _%g721741%_
                                                               '0)))
                                                 (begin
                                                   (let ((_g2007_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g2006_)
                                (##values-length _g2006_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g2007_ 2)))
                 (error "Context expects 2 values" _g2007_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target723744%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g2006_
                                                             0)))
                                                         (_%tl725747%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g2006_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl725747%_)
                                                         (letrec ((_%loop726750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd724754%_ _%clause730757%_)
                             (if (gx#stx-pair? _%hd724754%_)
                                 (let ((_%e727759%_
                                        (gx#syntax-e _%hd724754%_)))
                                   (let ((_%lp-hd728763%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e727759%_)))
                                         (_%lp-tl729766%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e727759%_))))
                                     (_%loop726750%_
                                      _%lp-tl729766%_
                                      (cons _%lp-hd728763%_
                                            _%clause730757%_))))
                                 (let ((_%clause731769%_
                                        (reverse _%clause730757%_)))
                                   ((lambda (_%g722772%_)
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
                            (cons _%g475553%_
                                  (foldr (lambda (_%g785788%_ _%g786791%_)
                                           (cons _%g785788%_ _%g786791%_))
                                         '()
                                         _%g722772%_))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause731769%_))))))
                   (_%loop726750%_ _%target723744%_ '()))
                 (_%g720737%_ _%g721741%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g720737%_ _%g721741%_)))))
                                   (_%g719794%_ _%body717%_))
                                 (_%g472496%_ _%g473500%_)))
                           _%clauses490548%_
                           _%hd480517%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop485529%_
                                                   _%target482523%_
                                                   '()))
                                                (_%g472496%_ _%g473500%_)))))
                                      (_%g472496%_ _%g473500%_))))
                              (_%g472496%_ _%g473500%_))))
                      (_%g472496%_ _%g473500%_)))))
          (_%g471798%_ _%stx469%_))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax|
      (lambda (_%stx804%_)
        (let* ((_%__stx17851786%_ _%stx804%_)
               (_%g809894%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx17851786%_))))
          (let ((_%__kont17881789%_
                 (lambda (_%g8111224%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g12401243%_ _%g12411246%_)
                                        (cons _%g12401243%_ _%g12411246%_))
                                      '()
                                      _%g8111224%_)))))
                (_%__kont17921793%_
                 (lambda (_%g8271134%_ _%g8281136%_ _%g8291137%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons _%g8281136%_
                               (cons '()
                                     (cons (cons _%g8291137%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g11601163%_ _%g11611166%_)
                                    (cons _%g11601163%_ _%g11611166%_))
                                  '()
                                  _%g8271134%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont17961797%_
                 (lambda (_%g854999%_ _%g8551001%_ _%g8561002%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons (cons (gx#datum->syntax '#f 'list)
                                     (foldr (lambda (_%g10241031%_
                                                     _%g10251034%_)
                                              (cons _%g10241031%_
                                                    _%g10251034%_))
                                            '()
                                            _%g8551001%_))
                               (cons '()
                                     (cons (cons (foldr (lambda (_%g10261037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g10271040%_)
                  (cons _%g10261037%_ _%g10271040%_))
                '()
                _%g8561002%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g10281043%_ _%g10291046%_)
                                    (cons _%g10281043%_ _%g10291046%_))
                                  '()
                                  _%g854999%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let* ((_%__match18861887%_
                    (lambda (_%e857901%_
                             _%hd858905%_
                             _%tl859908%_
                             _%e860911%_
                             _%hd861915%_
                             _%tl862918%_
                             _%__splice17981799%_
                             _%target863921%_
                             _%tl865924%_)
                      (letrec ((_%loop866927%_
                                (lambda (_%hd864931%_
                                         _%e870934%_
                                         _%pat871935%_)
                                  (if (gx#stx-pair? _%hd864931%_)
                                      (let ((_%e867937%_
                                             (gx#syntax-e _%hd864931%_)))
                                        (let ((_%lp-tl869944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e867937%_)))
                                              (_%lp-hd868941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e867937%_))))
                                          (if (gx#stx-pair? _%lp-hd868941%_)
                                              (let ((_%e874947%_
                                                     (gx#syntax-e
                                                      _%lp-hd868941%_)))
                                                (let ((_%tl876954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e874947%_)))
                                                      (_%hd875951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e874947%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl876954%_)
                                                      (let ((_%e877957%_
                                                             (gx#syntax-e
                                                              _%tl876954%_)))
                                                        (let ((_%tl879964%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e877957%_)))
                      (_%hd878961%_
                       (let () (declare (not safe)) (##car _%e877957%_))))
                  (if (gx#stx-null? _%tl879964%_)
                      (_%loop866927%_
                       _%lp-tl869944%_
                       (cons _%hd878961%_ _%e870934%_)
                       (cons _%hd875951%_ _%pat871935%_))
                      (let () (declare (not safe)) (_%g809894%_)))))
              (let () (declare (not safe)) (_%g809894%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g809894%_)))))
                                      (let ((_%pat873969%_
                                             (reverse _%pat871935%_))
                                            (_%e872967%_
                                             (reverse _%e870934%_)))
                                        (if (gx#stx-pair/null? _%tl862918%_)
                                            (let ((_%__splice18001801%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl862918%_
                                                    '0)))
                                              (let ((_%tl882974%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice18001801%_
                                                        '1)))
                                                    (_%target880971%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice18001801%_
                                                        '0))))
                                                (if (gx#stx-null? _%tl882974%_)
                                                    (letrec ((_%loop883977%_
                                                              (lambda (_%hd881981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body887984%_)
                        (if (gx#stx-pair? _%hd881981%_)
                            (let ((_%e884986%_ (gx#syntax-e _%hd881981%_)))
                              (let ((_%lp-tl886993%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e884986%_)))
                                    (_%lp-hd885990%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e884986%_))))
                                (_%loop883977%_
                                 _%lp-tl886993%_
                                 (cons _%lp-hd885990%_ _%body887984%_))))
                            (let ((_%body888996%_ (reverse _%body887984%_)))
                              (_%__kont17961797%_
                               _%body888996%_
                               _%e872967%_
                               _%pat873969%_))))))
              (_%loop883977%_ _%target880971%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g809894%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g809894%_))))))))
                        (_%loop866927%_ _%target863921%_ '() '()))))
                   (_%__match18661867%_
                    (lambda (_%e8301056%_
                             _%hd8311060%_
                             _%tl8321063%_
                             _%e8331066%_
                             _%hd8341070%_
                             _%tl8351073%_
                             _%e8361076%_
                             _%hd8371080%_
                             _%tl8381083%_
                             _%e8391086%_
                             _%hd8401090%_
                             _%tl8411093%_
                             _%e8421096%_
                             _%hd8431100%_
                             _%tl8441103%_
                             _%__splice17941795%_
                             _%target8451106%_
                             _%tl8471109%_)
                      (letrec ((_%loop8481112%_
                                (lambda (_%hd8461116%_ _%body8521119%_)
                                  (if (gx#stx-pair? _%hd8461116%_)
                                      (let ((_%e8491121%_
                                             (gx#syntax-e _%hd8461116%_)))
                                        (let ((_%lp-tl8511128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8491121%_)))
                                              (_%lp-hd8501125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8491121%_))))
                                          (_%loop8481112%_
                                           _%lp-tl8511128%_
                                           (cons _%lp-hd8501125%_
                                                 _%body8521119%_))))
                                      (let ((_%body8531131%_
                                             (reverse _%body8521119%_)))
                                        (_%__kont17921793%_
                                         _%body8531131%_
                                         _%hd8431100%_
                                         _%hd8401090%_))))))
                        (_%loop8481112%_ _%target8451106%_ '()))))
                   (_%__match18241825%_
                    (lambda (_%e8121176%_
                             _%hd8131180%_
                             _%tl8141183%_
                             _%e8151186%_
                             _%hd8161190%_
                             _%tl8171193%_
                             _%__splice17901791%_
                             _%target8181196%_
                             _%tl8201199%_)
                      (letrec ((_%loop8211202%_
                                (lambda (_%hd8191206%_ _%body8251209%_)
                                  (if (gx#stx-pair? _%hd8191206%_)
                                      (let ((_%e8221211%_
                                             (gx#syntax-e _%hd8191206%_)))
                                        (let ((_%lp-tl8241218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8221211%_)))
                                              (_%lp-hd8231215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8221211%_))))
                                          (_%loop8211202%_
                                           _%lp-tl8241218%_
                                           (cons _%lp-hd8231215%_
                                                 _%body8251209%_))))
                                      (let ((_%body8261221%_
                                             (reverse _%body8251209%_)))
                                        (_%__kont17881789%_
                                         _%body8261221%_))))))
                        (_%loop8211202%_ _%target8181196%_ '())))))
              (if (gx#stx-pair? _%__stx17851786%_)
                  (let ((_%e8121176%_ (gx#syntax-e _%__stx17851786%_)))
                    (let ((_%tl8141183%_
                           (let () (declare (not safe)) (##cdr _%e8121176%_)))
                          (_%hd8131180%_
                           (let () (declare (not safe)) (##car _%e8121176%_))))
                      (if (gx#stx-pair? _%tl8141183%_)
                          (let ((_%e8151186%_ (gx#syntax-e _%tl8141183%_)))
                            (let ((_%tl8171193%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e8151186%_)))
                                  (_%hd8161190%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e8151186%_))))
                              (if (gx#stx-null? _%hd8161190%_)
                                  (if (gx#stx-pair/null? _%tl8171193%_)
                                      (let ((_%__splice17901791%_
                                             (gx#syntax-split-splice->vector
                                              _%tl8171193%_
                                              '0)))
                                        (let ((_%tl8201199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17901791%_
                                                  '1)))
                                              (_%target8181196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17901791%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl8201199%_)
                                              (_%__match18241825%_
                                               _%e8121176%_
                                               _%hd8131180%_
                                               _%tl8141183%_
                                               _%e8151186%_
                                               _%hd8161190%_
                                               _%tl8171193%_
                                               _%__splice17901791%_
                                               _%target8181196%_
                                               _%tl8201199%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd8161190%_)
                                                  (let ((_%__splice17981799%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd8161190%_
                                                          '0)))
                                                    (let ((_%tl865924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17981799%_
                                                              '1)))
                                                          (_%target863921%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17981799%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl865924%_)
                                                          (_%__match18861887%_
                                                           _%e8121176%_
                                                           _%hd8131180%_
                                                           _%tl8141183%_
                                                           _%e8151186%_
                                                           _%hd8161190%_
                                                           _%tl8171193%_
                                                           _%__splice17981799%_
                                                           _%target863921%_
                                                           _%tl865924%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g809894%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g809894%_))))))
                                      (if (gx#stx-pair/null? _%hd8161190%_)
                                          (let ((_%__splice17981799%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd8161190%_
                                                  '0)))
                                            (let ((_%tl865924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17981799%_
                                                      '1)))
                                                  (_%target863921%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17981799%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl865924%_)
                                                  (_%__match18861887%_
                                                   _%e8121176%_
                                                   _%hd8131180%_
                                                   _%tl8141183%_
                                                   _%e8151186%_
                                                   _%hd8161190%_
                                                   _%tl8171193%_
                                                   _%__splice17981799%_
                                                   _%target863921%_
                                                   _%tl865924%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g809894%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g809894%_))))
                                  (if (gx#stx-pair? _%hd8161190%_)
                                      (let ((_%e8361076%_
                                             (gx#syntax-e _%hd8161190%_)))
                                        (let ((_%tl8381083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8361076%_)))
                                              (_%hd8371080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8361076%_))))
                                          (if (gx#stx-pair? _%hd8371080%_)
                                              (let ((_%e8391086%_
                                                     (gx#syntax-e
                                                      _%hd8371080%_)))
                                                (let ((_%tl8411093%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8391086%_)))
                                                      (_%hd8401090%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8391086%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8411093%_)
                                                      (let ((_%e8421096%_
                                                             (gx#syntax-e
                                                              _%tl8411093%_)))
                                                        (let ((_%tl8441103%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8421096%_)))
                      (_%hd8431100%_
                       (let () (declare (not safe)) (##car _%e8421096%_))))
                  (if (gx#stx-null? _%tl8441103%_)
                      (if (gx#stx-null? _%tl8381083%_)
                          (if (gx#stx-pair/null? _%tl8171193%_)
                              (let ((_%__splice17941795%_
                                     (gx#syntax-split-splice->vector
                                      _%tl8171193%_
                                      '0)))
                                (let ((_%tl8471109%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17941795%_
                                          '1)))
                                      (_%target8451106%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17941795%_
                                          '0))))
                                  (if (gx#stx-null? _%tl8471109%_)
                                      (_%__match18661867%_
                                       _%e8121176%_
                                       _%hd8131180%_
                                       _%tl8141183%_
                                       _%e8151186%_
                                       _%hd8161190%_
                                       _%tl8171193%_
                                       _%e8361076%_
                                       _%hd8371080%_
                                       _%tl8381083%_
                                       _%e8391086%_
                                       _%hd8401090%_
                                       _%tl8411093%_
                                       _%e8421096%_
                                       _%hd8431100%_
                                       _%tl8441103%_
                                       _%__splice17941795%_
                                       _%target8451106%_
                                       _%tl8471109%_)
                                      (if (gx#stx-pair/null? _%hd8161190%_)
                                          (let ((_%__splice17981799%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd8161190%_
                                                  '0)))
                                            (let ((_%tl865924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17981799%_
                                                      '1)))
                                                  (_%target863921%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17981799%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl865924%_)
                                                  (_%__match18861887%_
                                                   _%e8121176%_
                                                   _%hd8131180%_
                                                   _%tl8141183%_
                                                   _%e8151186%_
                                                   _%hd8161190%_
                                                   _%tl8171193%_
                                                   _%__splice17981799%_
                                                   _%target863921%_
                                                   _%tl865924%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g809894%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g809894%_))))))
                              (if (gx#stx-pair/null? _%hd8161190%_)
                                  (let ((_%__splice17981799%_
                                         (gx#syntax-split-splice->vector
                                          _%hd8161190%_
                                          '0)))
                                    (let ((_%tl865924%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17981799%_
                                              '1)))
                                          (_%target863921%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17981799%_
                                              '0))))
                                      (if (gx#stx-null? _%tl865924%_)
                                          (_%__match18861887%_
                                           _%e8121176%_
                                           _%hd8131180%_
                                           _%tl8141183%_
                                           _%e8151186%_
                                           _%hd8161190%_
                                           _%tl8171193%_
                                           _%__splice17981799%_
                                           _%target863921%_
                                           _%tl865924%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g809894%_)))))
                                  (let () (declare (not safe)) (_%g809894%_))))
                          (if (gx#stx-pair/null? _%hd8161190%_)
                              (let ((_%__splice17981799%_
                                     (gx#syntax-split-splice->vector
                                      _%hd8161190%_
                                      '0)))
                                (let ((_%tl865924%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17981799%_
                                          '1)))
                                      (_%target863921%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17981799%_
                                          '0))))
                                  (if (gx#stx-null? _%tl865924%_)
                                      (_%__match18861887%_
                                       _%e8121176%_
                                       _%hd8131180%_
                                       _%tl8141183%_
                                       _%e8151186%_
                                       _%hd8161190%_
                                       _%tl8171193%_
                                       _%__splice17981799%_
                                       _%target863921%_
                                       _%tl865924%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g809894%_)))))
                              (let () (declare (not safe)) (_%g809894%_))))
                      (if (gx#stx-pair/null? _%hd8161190%_)
                          (let ((_%__splice17981799%_
                                 (gx#syntax-split-splice->vector
                                  _%hd8161190%_
                                  '0)))
                            (let ((_%tl865924%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17981799%_ '1)))
                                  (_%target863921%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17981799%_ '0))))
                              (if (gx#stx-null? _%tl865924%_)
                                  (_%__match18861887%_
                                   _%e8121176%_
                                   _%hd8131180%_
                                   _%tl8141183%_
                                   _%e8151186%_
                                   _%hd8161190%_
                                   _%tl8171193%_
                                   _%__splice17981799%_
                                   _%target863921%_
                                   _%tl865924%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g809894%_)))))
                          (let () (declare (not safe)) (_%g809894%_))))))
              (if (gx#stx-pair/null? _%hd8161190%_)
                  (let ((_%__splice17981799%_
                         (gx#syntax-split-splice->vector _%hd8161190%_ '0)))
                    (let ((_%tl865924%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17981799%_ '1)))
                          (_%target863921%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17981799%_ '0))))
                      (if (gx#stx-null? _%tl865924%_)
                          (_%__match18861887%_
                           _%e8121176%_
                           _%hd8131180%_
                           _%tl8141183%_
                           _%e8151186%_
                           _%hd8161190%_
                           _%tl8171193%_
                           _%__splice17981799%_
                           _%target863921%_
                           _%tl865924%_)
                          (let () (declare (not safe)) (_%g809894%_)))))
                  (let () (declare (not safe)) (_%g809894%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd8161190%_)
                                                  (let ((_%__splice17981799%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd8161190%_
                                                          '0)))
                                                    (let ((_%tl865924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17981799%_
                                                              '1)))
                                                          (_%target863921%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17981799%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl865924%_)
                                                          (_%__match18861887%_
                                                           _%e8121176%_
                                                           _%hd8131180%_
                                                           _%tl8141183%_
                                                           _%e8151186%_
                                                           _%hd8161190%_
                                                           _%tl8171193%_
                                                           _%__splice17981799%_
                                                           _%target863921%_
                                                           _%tl865924%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g809894%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g809894%_))))))
                                      (if (gx#stx-pair/null? _%hd8161190%_)
                                          (let ((_%__splice17981799%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd8161190%_
                                                  '0)))
                                            (let ((_%tl865924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17981799%_
                                                      '1)))
                                                  (_%target863921%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17981799%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl865924%_)
                                                  (_%__match18861887%_
                                                   _%e8121176%_
                                                   _%hd8131180%_
                                                   _%tl8141183%_
                                                   _%e8151186%_
                                                   _%hd8161190%_
                                                   _%tl8171193%_
                                                   _%__splice17981799%_
                                                   _%target863921%_
                                                   _%tl865924%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g809894%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g809894%_)))))))
                          (let () (declare (not safe)) (_%g809894%_)))))
                  (let () (declare (not safe)) (_%g809894%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax*|
      (lambda (_%stx1257%_)
        (let* ((_%__stx18891890%_ _%stx1257%_)
               (_%g12621339%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx18891890%_))))
          (let ((_%__kont18921893%_
                 (lambda (_%g12641629%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g16451648%_ _%g16461651%_)
                                        (cons _%g16451648%_ _%g16461651%_))
                                      '()
                                      _%g12641629%_)))))
                (_%__kont18961897%_
                 (lambda (_%g12801533%_
                          _%g12811535%_
                          _%g12821536%_
                          _%g12831537%_
                          _%g12841538%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons (cons _%g12831537%_
                                           (cons _%g12821536%_ '()))
                                     '())
                               (cons (cons _%g12841538%_
                                           (cons _%g12811535%_
                                                 (foldr (lambda (_%g15651568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g15661571%_)
                  (cons _%g15651568%_ _%g15661571%_))
                '()
                _%g12801533%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont19001901%_
                 (lambda (_%g13121404%_
                          _%g13131406%_
                          _%g13141407%_
                          _%g13151408%_)
                   (cons (gx#datum->syntax '#f 'with-syntax)
                         (cons (cons _%g13141407%_ '())
                               (cons (cons _%g13151408%_
                                           (cons _%g13131406%_
                                                 (foldr (lambda (_%g14291432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g14301435%_)
                  (cons _%g14291432%_ _%g14301435%_))
                '()
                _%g13121404%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match20022003%_
                    (lambda (_%e13161346%_
                             _%hd13171350%_
                             _%tl13181353%_
                             _%e13191356%_
                             _%hd13201360%_
                             _%tl13211363%_
                             _%e13221366%_
                             _%hd13231370%_
                             _%tl13241373%_
                             _%__splice19021903%_
                             _%target13251376%_
                             _%tl13271379%_)
                      (letrec ((_%loop13281382%_
                                (lambda (_%hd13261386%_ _%body13321389%_)
                                  (if (gx#stx-pair? _%hd13261386%_)
                                      (let ((_%e13291391%_
                                             (gx#syntax-e _%hd13261386%_)))
                                        (let ((_%lp-tl13311398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e13291391%_)))
                                              (_%lp-hd13301395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e13291391%_))))
                                          (_%loop13281382%_
                                           _%lp-tl13311398%_
                                           (cons _%lp-hd13301395%_
                                                 _%body13321389%_))))
                                      (let ((_%body13331401%_
                                             (reverse _%body13321389%_)))
                                        (_%__kont19001901%_
                                         _%body13331401%_
                                         _%tl13241373%_
                                         _%hd13231370%_
                                         _%hd13171350%_))))))
                        (_%loop13281382%_ _%target13251376%_ '()))))
                   (_%__match19761977%_
                    (lambda (_%e12851445%_
                             _%hd12861449%_
                             _%tl12871452%_
                             _%e12881455%_
                             _%hd12891459%_
                             _%tl12901462%_
                             _%e12911465%_
                             _%hd12921469%_
                             _%tl12931472%_
                             _%e12941475%_
                             _%hd12951479%_
                             _%tl12961482%_
                             _%e12971485%_
                             _%hd12981489%_
                             _%tl12991492%_
                             _%e13001495%_
                             _%hd13011499%_
                             _%tl13021502%_
                             _%__splice18981899%_
                             _%target13031505%_
                             _%tl13051508%_)
                      (letrec ((_%loop13061511%_
                                (lambda (_%hd13041515%_ _%body13101518%_)
                                  (if (gx#stx-pair? _%hd13041515%_)
                                      (let ((_%e13071520%_
                                             (gx#syntax-e _%hd13041515%_)))
                                        (let ((_%lp-tl13091527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e13071520%_)))
                                              (_%lp-hd13081524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e13071520%_))))
                                          (_%loop13061511%_
                                           _%lp-tl13091527%_
                                           (cons _%lp-hd13081524%_
                                                 _%body13101518%_))))
                                      (let ((_%body13111530%_
                                             (reverse _%body13101518%_)))
                                        (_%__kont18961897%_
                                         _%body13111530%_
                                         _%tl12931472%_
                                         _%hd13011499%_
                                         _%tl12991492%_
                                         _%hd12861449%_))))))
                        (_%loop13061511%_ _%target13031505%_ '()))))
                   (_%__match19261927%_
                    (lambda (_%e12651581%_
                             _%hd12661585%_
                             _%tl12671588%_
                             _%e12681591%_
                             _%hd12691595%_
                             _%tl12701598%_
                             _%__splice18941895%_
                             _%target12711601%_
                             _%tl12731604%_)
                      (letrec ((_%loop12741607%_
                                (lambda (_%hd12721611%_ _%body12781614%_)
                                  (if (gx#stx-pair? _%hd12721611%_)
                                      (let ((_%e12751616%_
                                             (gx#syntax-e _%hd12721611%_)))
                                        (let ((_%lp-tl12771623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12751616%_)))
                                              (_%lp-hd12761620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12751616%_))))
                                          (_%loop12741607%_
                                           _%lp-tl12771623%_
                                           (cons _%lp-hd12761620%_
                                                 _%body12781614%_))))
                                      (let ((_%body12791626%_
                                             (reverse _%body12781614%_)))
                                        (_%__kont18921893%_
                                         _%body12791626%_))))))
                        (_%loop12741607%_ _%target12711601%_ '())))))
              (if (gx#stx-pair? _%__stx18891890%_)
                  (let ((_%e12651581%_ (gx#syntax-e _%__stx18891890%_)))
                    (let ((_%tl12671588%_
                           (let () (declare (not safe)) (##cdr _%e12651581%_)))
                          (_%hd12661585%_
                           (let ()
                             (declare (not safe))
                             (##car _%e12651581%_))))
                      (if (gx#stx-pair? _%tl12671588%_)
                          (let ((_%e12681591%_ (gx#syntax-e _%tl12671588%_)))
                            (let ((_%tl12701598%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e12681591%_)))
                                  (_%hd12691595%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e12681591%_))))
                              (if (gx#stx-null? _%hd12691595%_)
                                  (if (gx#stx-pair/null? _%tl12701598%_)
                                      (let ((_%__splice18941895%_
                                             (gx#syntax-split-splice->vector
                                              _%tl12701598%_
                                              '0)))
                                        (let ((_%tl12731604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18941895%_
                                                  '1)))
                                              (_%target12711601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18941895%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl12731604%_)
                                              (_%__match19261927%_
                                               _%e12651581%_
                                               _%hd12661585%_
                                               _%tl12671588%_
                                               _%e12681591%_
                                               _%hd12691595%_
                                               _%tl12701598%_
                                               _%__splice18941895%_
                                               _%target12711601%_
                                               _%tl12731604%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g12621339%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g12621339%_)))
                                  (if (gx#stx-pair? _%hd12691595%_)
                                      (let ((_%e12911465%_
                                             (gx#syntax-e _%hd12691595%_)))
                                        (let ((_%tl12931472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12911465%_)))
                                              (_%hd12921469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12911465%_))))
                                          (if (gx#stx-pair? _%hd12921469%_)
                                              (let ((_%e12941475%_
                                                     (gx#syntax-e
                                                      _%hd12921469%_)))
                                                (let ((_%tl12961482%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e12941475%_)))
                                                      (_%hd12951479%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e12941475%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd12951479%_)
                                                      (let ((_%e12971485%_
                                                             (gx#syntax-e
                                                              _%hd12951479%_)))
                                                        (let ((_%tl12991492%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e12971485%_)))
                      (_%hd12981489%_
                       (let () (declare (not safe)) (##car _%e12971485%_))))
                  (if (gx#identifier? _%hd12981489%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander~SyntaxSugar[1]#_g2008_|
                           _%hd12981489%_)
                          (if (gx#stx-pair? _%tl12961482%_)
                              (let ((_%e13001495%_
                                     (gx#syntax-e _%tl12961482%_)))
                                (let ((_%tl13021502%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e13001495%_)))
                                      (_%hd13011499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e13001495%_))))
                                  (if (gx#stx-null? _%tl13021502%_)
                                      (if (gx#stx-pair/null? _%tl12701598%_)
                                          (let ((_%__splice18981899%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl12701598%_
                                                  '0)))
                                            (let ((_%tl13051508%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18981899%_
                                                      '1)))
                                                  (_%target13031505%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18981899%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl13051508%_)
                                                  (_%__match19761977%_
                                                   _%e12651581%_
                                                   _%hd12661585%_
                                                   _%tl12671588%_
                                                   _%e12681591%_
                                                   _%hd12691595%_
                                                   _%tl12701598%_
                                                   _%e12911465%_
                                                   _%hd12921469%_
                                                   _%tl12931472%_
                                                   _%e12941475%_
                                                   _%hd12951479%_
                                                   _%tl12961482%_
                                                   _%e12971485%_
                                                   _%hd12981489%_
                                                   _%tl12991492%_
                                                   _%e13001495%_
                                                   _%hd13011499%_
                                                   _%tl13021502%_
                                                   _%__splice18981899%_
                                                   _%target13031505%_
                                                   _%tl13051508%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g12621339%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g12621339%_)))
                                      (if (gx#stx-pair/null? _%tl12701598%_)
                                          (let ((_%__splice19021903%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl12701598%_
                                                  '0)))
                                            (let ((_%tl13271379%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice19021903%_
                                                      '1)))
                                                  (_%target13251376%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice19021903%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl13271379%_)
                                                  (_%__match20022003%_
                                                   _%e12651581%_
                                                   _%hd12661585%_
                                                   _%tl12671588%_
                                                   _%e12681591%_
                                                   _%hd12691595%_
                                                   _%tl12701598%_
                                                   _%e12911465%_
                                                   _%hd12921469%_
                                                   _%tl12931472%_
                                                   _%__splice19021903%_
                                                   _%target13251376%_
                                                   _%tl13271379%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g12621339%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g12621339%_))))))
                              (if (gx#stx-pair/null? _%tl12701598%_)
                                  (let ((_%__splice19021903%_
                                         (gx#syntax-split-splice->vector
                                          _%tl12701598%_
                                          '0)))
                                    (let ((_%tl13271379%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice19021903%_
                                              '1)))
                                          (_%target13251376%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice19021903%_
                                              '0))))
                                      (if (gx#stx-null? _%tl13271379%_)
                                          (_%__match20022003%_
                                           _%e12651581%_
                                           _%hd12661585%_
                                           _%tl12671588%_
                                           _%e12681591%_
                                           _%hd12691595%_
                                           _%tl12701598%_
                                           _%e12911465%_
                                           _%hd12921469%_
                                           _%tl12931472%_
                                           _%__splice19021903%_
                                           _%target13251376%_
                                           _%tl13271379%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g12621339%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g12621339%_))))
                          (if (gx#stx-pair/null? _%tl12701598%_)
                              (let ((_%__splice19021903%_
                                     (gx#syntax-split-splice->vector
                                      _%tl12701598%_
                                      '0)))
                                (let ((_%tl13271379%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice19021903%_
                                          '1)))
                                      (_%target13251376%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice19021903%_
                                          '0))))
                                  (if (gx#stx-null? _%tl13271379%_)
                                      (_%__match20022003%_
                                       _%e12651581%_
                                       _%hd12661585%_
                                       _%tl12671588%_
                                       _%e12681591%_
                                       _%hd12691595%_
                                       _%tl12701598%_
                                       _%e12911465%_
                                       _%hd12921469%_
                                       _%tl12931472%_
                                       _%__splice19021903%_
                                       _%target13251376%_
                                       _%tl13271379%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g12621339%_)))))
                              (let () (declare (not safe)) (_%g12621339%_))))
                      (if (gx#stx-pair/null? _%tl12701598%_)
                          (let ((_%__splice19021903%_
                                 (gx#syntax-split-splice->vector
                                  _%tl12701598%_
                                  '0)))
                            (let ((_%tl13271379%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice19021903%_ '1)))
                                  (_%target13251376%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice19021903%_ '0))))
                              (if (gx#stx-null? _%tl13271379%_)
                                  (_%__match20022003%_
                                   _%e12651581%_
                                   _%hd12661585%_
                                   _%tl12671588%_
                                   _%e12681591%_
                                   _%hd12691595%_
                                   _%tl12701598%_
                                   _%e12911465%_
                                   _%hd12921469%_
                                   _%tl12931472%_
                                   _%__splice19021903%_
                                   _%target13251376%_
                                   _%tl13271379%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g12621339%_)))))
                          (let () (declare (not safe)) (_%g12621339%_))))))
              (if (gx#stx-pair/null? _%tl12701598%_)
                  (let ((_%__splice19021903%_
                         (gx#syntax-split-splice->vector _%tl12701598%_ '0)))
                    (let ((_%tl13271379%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice19021903%_ '1)))
                          (_%target13251376%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice19021903%_ '0))))
                      (if (gx#stx-null? _%tl13271379%_)
                          (_%__match20022003%_
                           _%e12651581%_
                           _%hd12661585%_
                           _%tl12671588%_
                           _%e12681591%_
                           _%hd12691595%_
                           _%tl12701598%_
                           _%e12911465%_
                           _%hd12921469%_
                           _%tl12931472%_
                           _%__splice19021903%_
                           _%target13251376%_
                           _%tl13271379%_)
                          (let () (declare (not safe)) (_%g12621339%_)))))
                  (let () (declare (not safe)) (_%g12621339%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl12701598%_)
                                                  (let ((_%__splice19021903%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl12701598%_
                                                          '0)))
                                                    (let ((_%tl13271379%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice19021903%_
                                                              '1)))
                                                          (_%target13251376%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice19021903%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl13271379%_)
                                                          (_%__match20022003%_
                                                           _%e12651581%_
                                                           _%hd12661585%_
                                                           _%tl12671588%_
                                                           _%e12681591%_
                                                           _%hd12691595%_
                                                           _%tl12701598%_
                                                           _%e12911465%_
                                                           _%hd12921469%_
                                                           _%tl12931472%_
                                                           _%__splice19021903%_
                                                           _%target13251376%_
                                                           _%tl13271379%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g12621339%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g12621339%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g12621339%_))))))
                          (let () (declare (not safe)) (_%g12621339%_)))))
                  (let () (declare (not safe)) (_%g12621339%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax/loc|
      (lambda (_%stx1661%_)
        (let* ((_%g16641682%_
                (lambda (_%g16651678%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g16651678%_)))
               (_%g16631737%_
                (lambda (_%g16651686%_)
                  (if (gx#stx-pair? _%g16651686%_)
                      (let ((_%e16681689%_ (gx#syntax-e _%g16651686%_)))
                        (let ((_%hd16691693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e16681689%_)))
                              (_%tl16701696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e16681689%_))))
                          (if (gx#stx-pair? _%tl16701696%_)
                              (let ((_%e16711699%_
                                     (gx#syntax-e _%tl16701696%_)))
                                (let ((_%hd16721703%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e16711699%_)))
                                      (_%tl16731706%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e16711699%_))))
                                  (if (gx#stx-pair? _%tl16731706%_)
                                      (let ((_%e16741709%_
                                             (gx#syntax-e _%tl16731706%_)))
                                        (let ((_%hd16751713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e16741709%_)))
                                              (_%tl16761716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e16741709%_))))
                                          (if (gx#stx-null? _%tl16761716%_)
                                              ((lambda (_%g16661719%_
                                                        _%g16671721%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _%g16661719%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _%g16671721%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd16751713%_
                                               _%hd16721703%_)
                                              (_%g16641682%_ _%g16651686%_))))
                                      (_%g16641682%_ _%g16651686%_))))
                              (_%g16641682%_ _%g16651686%_))))
                      (_%g16641682%_ _%g16651686%_)))))
          (_%g16631737%_ _%stx1661%_))))))
