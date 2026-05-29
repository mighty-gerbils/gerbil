(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g174142_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174144_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174146_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174148_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174149_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174151_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174152_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174154_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174155_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174157_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174158_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174160_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj174138
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 '#f '13 '#f '#f))
        (let ((__tmp174141 |gx[1]#_g174142_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 __tmp174141 '4 '#f '#f))
        (let ((__tmp174143 |gx[1]#_g174144_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 __tmp174143 '14 '#f '#f))
        (let ((__tmp174145 |gx[1]#_g174146_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 __tmp174145 '15 '#f '#f))
        (let ((__tmp174147
               (cons (cons 'e |gx[1]#_g174148_|)
                     (cons (cons 'source |gx[1]#_g174149_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 __tmp174147 '16 '#f '#f))
        (let ((__tmp174150
               (cons (cons 'e |gx[1]#_g174151_|)
                     (cons (cons 'source |gx[1]#_g174152_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 __tmp174150 '17 '#f '#f))
        (let ((__tmp174153
               (cons (cons 'e |gx[1]#_g174154_|)
                     (cons (cons 'source |gx[1]#_g174155_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 __tmp174153 '18 '#f '#f))
        (let ((__tmp174156
               (cons (cons 'e |gx[1]#_g174157_|)
                     (cons (cons 'source |gx[1]#_g174158_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 __tmp174156 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174138 '() '21 '#f '#f))
        __obj174138))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx172735%_)
        (let* ((_%g172739172753%_
                (lambda (_%g172740172749%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g172740172749%_)))
               (_%g172738172795%_
                (lambda (_%g172740172757%_)
                  (if (gx#stx-pair? _%g172740172757%_)
                      (let ((_%e172742172760%_
                             (gx#syntax-e _%g172740172757%_)))
                        (let ((_%hd172743172764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172742172760%_)))
                              (_%tl172744172767%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172742172760%_))))
                          (if (gx#stx-pair? _%tl172744172767%_)
                              (let ((_%e172745172770%_
                                     (gx#syntax-e _%tl172744172767%_)))
                                (let ((_%hd172746172774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172745172770%_)))
                                      (_%tl172747172777%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172745172770%_))))
                                  (if (gx#stx-null? _%tl172747172777%_)
                                      (cons (gx#datum->syntax '#f 'unless)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'procedure?)
                                                        (cons _%hd172746172774%_
                                                              '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'error)
                                                              (cons '"expected procedure"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%hd172746172774%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%g172739172753%_ _%g172740172757%_))))
                              (_%g172739172753%_ _%g172740172757%_))))
                      (_%g172739172753%_ _%g172740172757%_)))))
          (_%g172738172795%_ _%$stx172735%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx172799%_)
        (letrec ((_%generate172802%_
                  (lambda (_%tgt172951%_ _%kws172953%_ _%clauses172954%_)
                    (letrec ((_%generate-clause172956%_
                              (lambda (_%hd173889%_ _%E173891%_)
                                (let* ((_%__stx174041174042%_ _%hd173889%_)
                                       (_%g173895173922%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx174041174042%_))))
                                  (let ((_%__kont174044174045%_
                                         (lambda (_%g173897174018%_
                                                  _%g173898174020%_)
                                           (_%generate1172958%_
                                            _%hd173889%_
                                            _%g173898174020%_
                                            '#t
                                            _%g173897174018%_
                                            _%E173891%_)))
                                        (_%__kont174046174047%_
                                         (lambda (_%g173905173970%_
                                                  _%g173906173972%_
                                                  _%g173907173973%_)
                                           (_%generate1172958%_
                                            _%hd173889%_
                                            _%g173907173973%_
                                            _%g173906173972%_
                                            _%g173905173970%_
                                            _%E173891%_)))
                                        (_%__kont174048174049%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx172799%_
                                            _%hd173889%_))))
                                    (if (gx#stx-pair? _%__stx174041174042%_)
                                        (let ((_%e173899173998%_
                                               (gx#syntax-e
                                                _%__stx174041174042%_)))
                                          (let ((_%tl173901174005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e173899173998%_)))
                                                (_%hd173900174002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e173899173998%_))))
                                            (if (gx#stx-pair?
                                                 _%tl173901174005%_)
                                                (let ((_%e173902174008%_
                                                       (gx#syntax-e
                                                        _%tl173901174005%_)))
                                                  (let ((_%tl173904174015%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173902174008%_)))
                                                        (_%hd173903174012%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173902174008%_))))
                                                    (if (gx#stx-null?
                                                         _%tl173904174015%_)
                                                        (_%__kont174044174045%_
                                                         _%hd173903174012%_
                                                         _%hd173900174002%_)
                                                        (if (gx#stx-pair?
                                                             _%tl173904174015%_)
                                                            (let ((_%e173914173960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl173904174015%_)))
                      (let ((_%tl173916173967%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173914173960%_)))
                            (_%hd173915173964%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173914173960%_))))
                        (if (gx#stx-null? _%tl173916173967%_)
                            (_%__kont174046174047%_
                             _%hd173915173964%_
                             _%hd173903174012%_
                             _%hd173900174002%_)
                            (_%__kont174048174049%_))))
                    (_%__kont174048174049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont174048174049%_))))
                                        (_%__kont174048174049%_))))))
                             (_%generate1172958%_
                              (lambda (_%where173342%_
                                       _%hd173344%_
                                       _%fender173345%_
                                       _%body173346%_
                                       _%E173347%_)
                                (letrec ((_%recur173349%_
                                          (lambda (_%hd173352%_
                                                   _%tgt173354%_
                                                   _%K173355%_)
                                            (let* ((_%__stx174087174088%_
                                                    _%hd173352%_)
                                                   (_%g173358173370%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx174087174088%_))))
                                              (let ((_%__kont174090174091%_
                                                     (lambda (_%g173360173679%_
                                                              _%g173361173681%_)
                                                       (let* ((_%g173692173700%_
                                                               (lambda (_%g173693173696%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g173693173696%_)))
                      (_%g173691173881%_
                       (lambda (_%g173693173704%_)
                         (let* ((_%g173719173727%_
                                 (lambda (_%g173720173723%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g173720173723%_)))
                                (_%g173718173877%_
                                 (lambda (_%g173720173731%_)
                                   (let* ((_%g173747173755%_
                                           (lambda (_%g173748173751%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g173748173751%_)))
                                          (_%g173746173873%_
                                           (lambda (_%g173748173759%_)
                                             (let* ((_%g173775173783%_
                                                     (lambda (_%g173776173779%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g173776173779%_)))
                                                    (_%g173774173869%_
                                                     (lambda (_%g173776173787%_)
                                                       (let* ((_%g173803173811%_
                                                               (lambda (_%g173804173807%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g173804173807%_)))
                      (_%g173802173865%_
                       (lambda (_%g173804173815%_)
                         (let* ((_%g173831173839%_
                                 (lambda (_%g173832173835%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g173832173835%_)))
                                (_%g173830173861%_
                                 (lambda (_%g173832173843%_)
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'stx-pair?)
                                                     (cons _%g173693173704%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _%g173720173731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'syntax-e)
                                                 (cons _%g173693173704%_ '()))
                                           '()))
                               '())
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g173748173759%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _%g173720173731%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g173776173787%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _%g173720173731%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%g173804173815%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%g173832173843%_
                                                           '())))))))
                           (_%g173830173861%_ _%E173347%_)))))
                 (_%g173802173865%_
                  (_%recur173349%_
                   _%g173361173681%_
                   _%g173748173759%_
                   (_%recur173349%_
                    _%g173360173679%_
                    _%g173776173787%_
                    _%K173355%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173774173869%_
                                                (gx#genident 'tl))))))
                                     (_%g173746173873%_ (gx#genident 'hd))))))
                           (_%g173718173877%_ (gx#genident 'e))))))
                 (_%g173691173881%_ _%tgt173354%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont174092174093%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd173352%_)
                                                           (if (gx#underscore?
                                                                _%hd173352%_)
                                                               _%K173355%_
                                                               (if (let ((__tmp174159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g173384173386%_)
                                    (gx#bound-identifier=?
                                     _%g173384173386%_
                                     _%hd173352%_))))
                             (declare (not safe))
                             (__find __tmp174159 _%kws172953%_))
                           (let* ((_%g173392173407%_
                                   (lambda (_%g173393173403%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g173393173403%_)))
                                  (_%g173391173460%_
                                   (lambda (_%g173393173411%_)
                                     (if (gx#stx-pair? _%g173393173411%_)
                                         (let ((_%e173396173414%_
                                                (gx#syntax-e
                                                 _%g173393173411%_)))
                                           (let ((_%hd173397173418%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e173396173414%_)))
                                                 (_%tl173398173421%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e173396173414%_))))
                                             (if (gx#stx-pair?
                                                  _%tl173398173421%_)
                                                 (let ((_%e173399173424%_
                                                        (gx#syntax-e
                                                         _%tl173398173421%_)))
                                                   (let ((_%hd173400173428%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e173399173424%_)))
                                                         (_%tl173401173431%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e173399173424%_))))
                                                     (if (gx#stx-null?
                                                          _%tl173401173431%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'and)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'identifier?)
                                               (cons _%hd173397173418%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-identifier=?)
                                                     (cons _%hd173397173418%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%hd173400173428%_ '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons _%K173355%_ (cons _%E173347%_ '()))))
                 (_%g173392173407%_ _%g173393173411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g173392173407%_
                                                  _%g173393173411%_))))
                                         (_%g173392173407%_
                                          _%g173393173411%_)))))
                             (_%g173391173460%_
                              (list _%tgt173354%_ _%hd173352%_)))
                           (let* ((_%g173466173481%_
                                   (lambda (_%g173467173477%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g173467173477%_)))
                                  (_%g173465173526%_
                                   (lambda (_%g173467173485%_)
                                     (if (gx#stx-pair? _%g173467173485%_)
                                         (let ((_%e173470173488%_
                                                (gx#syntax-e
                                                 _%g173467173485%_)))
                                           (let ((_%hd173471173492%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e173470173488%_)))
                                                 (_%tl173472173495%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e173470173488%_))))
                                             (if (gx#stx-pair?
                                                  _%tl173472173495%_)
                                                 (let ((_%e173473173498%_
                                                        (gx#syntax-e
                                                         _%tl173472173495%_)))
                                                   (let ((_%hd173474173502%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e173473173498%_)))
                                                         (_%tl173475173505%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e173473173498%_))))
                                                     (if (gx#stx-null?
                                                          _%tl173475173505%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _%hd173474173502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _%hd173471173492%_ '()))
                                   '())
                             (cons _%K173355%_ '())))
                 (_%g173466173481%_ _%g173467173485%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g173466173481%_
                                                  _%g173467173485%_))))
                                         (_%g173466173481%_
                                          _%g173467173485%_)))))
                             (_%g173465173526%_
                              (list _%tgt173354%_ _%hd173352%_)))))
                   (if (gx#stx-null? _%hd173352%_)
                       (let* ((_%g173532173540%_
                               (lambda (_%g173533173536%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g173533173536%_)))
                              (_%g173531173559%_
                               (lambda (_%g173533173544%_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-null?)
                                                   (cons _%g173533173544%_
                                                         '()))
                                             (cons _%K173355%_
                                                   (cons _%E173347%_ '())))))))
                         (_%g173531173559%_ _%tgt173354%_))
                       (if (gx#stx-datum? _%hd173352%_)
                           (let* ((_%g173565173584%_
                                   (lambda (_%g173566173580%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g173566173580%_)))
                                  (_%g173564173643%_
                                   (lambda (_%g173566173588%_)
                                     (if (gx#stx-pair? _%g173566173588%_)
                                         (let ((_%e173570173591%_
                                                (gx#syntax-e
                                                 _%g173566173588%_)))
                                           (let ((_%hd173571173595%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e173570173591%_)))
                                                 (_%tl173572173598%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e173570173591%_))))
                                             (if (gx#stx-pair?
                                                  _%tl173572173598%_)
                                                 (let ((_%e173573173601%_
                                                        (gx#syntax-e
                                                         _%tl173572173598%_)))
                                                   (let ((_%hd173574173605%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e173573173601%_)))
                                                         (_%tl173575173608%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e173573173601%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl173575173608%_)
                                                         (let ((_%e173576173611%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl173575173608%_)))
                   (let ((_%hd173577173615%_
                          (let ()
                            (declare (not safe))
                            (##car _%e173576173611%_)))
                         (_%tl173578173618%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e173576173611%_))))
                     (if (gx#stx-null? _%tl173578173618%_)
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons _%hd173577173615%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-e)
                                                       (cons _%hd173571173595%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%hd173574173605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons _%K173355%_
                                           (cons _%E173347%_ '()))))
                         (_%g173565173584%_ _%g173566173588%_))))
                 (_%g173565173584%_ _%g173566173588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g173565173584%_
                                                  _%g173566173588%_))))
                                         (_%g173565173584%_
                                          _%g173566173588%_)))))
                             (_%g173564173643%_
                              (list _%tgt173354%_
                                    _%hd173352%_
                                    (let ((_%e173647%_
                                           (gx#stx-e _%hd173352%_)))
                                      (if (or (keyword? _%e173647%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e173647%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e173647%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx172799%_
                            _%where173342%_
                            _%hd173352%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx174087174088%_)
                                                    (let ((_%e173362173669%_
                                                           (gx#syntax-e
                                                            _%__stx174087174088%_)))
                                                      (let ((_%tl173364173676%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e173362173669%_)))
                    (_%hd173363173673%_
                     (let () (declare (not safe)) (##car _%e173362173669%_))))
                (_%__kont174090174091%_
                 _%tl173364173676%_
                 _%hd173363173673%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont174092174093%_)))))))
                                  (_%recur173349%_
                                   _%hd173344%_
                                   _%tgt172951%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender173345%_
                                               (cons _%body173346%_
                                                     (cons _%E173347%_
                                                           '()))))))))
                             (_%generate-clauses172959%_
                              (lambda (_%clauses173080%_)
                                (let _%lp173083%_ ((_%rest173086%_
                                                    _%clauses173080%_)
                                                   (_%E173088%_
                                                    (gx#genident 'E))
                                                   (_%r173089%_ '()))
                                  (let* ((_%__stx174123174124%_ _%rest173086%_)
                                         (_%g173092173104%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx174123174124%_))))
                                    (let ((_%__kont174126174127%_
                                           (lambda (_%g173094173169%_
                                                    _%g173095173171%_)
                                             (let* ((_%__stx174103174104%_
                                                     _%g173095173171%_)
                                                    (_%g173183173194%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx174103174104%_))))
                                               (let ((_%__kont174106174107%_
                                                      (lambda (_%g173185173323%_)
                                                        (if (gx#stx-null?
                                                             _%g173094173169%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g173185173323%_)
                             (not (gx#stx-null? _%g173185173323%_)))
                        (cons (cons _%E173088%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g173185173323%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g173095173171%_))
                                          '()))
                              _%r173089%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx172799%_
                         _%g173095173171%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx172799%_
                     _%g173095173171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont174108174109%_
                                                      (lambda ()
                                                        (let* ((_%g173205173213%_
                                                                (lambda (_%g173206173209%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173206173209%_)))
                       (_%g173204173302%_
                        (lambda (_%g173206173217%_)
                          (let* ((_%g173236173244%_
                                  (lambda (_%g173237173240%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g173237173240%_)))
                                 (_%g173235173298%_
                                  (lambda (_%g173237173248%_)
                                    (let* ((_%g173264173272%_
                                            (lambda (_%g173265173268%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g173265173268%_)))
                                           (_%g173263173294%_
                                            (lambda (_%g173265173276%_)
                                              (_%lp173083%_
                                               _%g173094173169%_
                                               _%g173206173217%_
                                               (cons (cons _%E173088%_
                                                           (cons _%g173265173276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r173089%_)))))
                                      (_%g173263173294%_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'lambda)
                                              (cons '()
                                                    (cons _%g173237173248%_
                                                          '())))
                                        (gx#stx-source _%g173095173171%_)))))))
                            (_%g173235173298%_
                             (_%generate-clause172956%_
                              _%g173095173171%_
                              (cons _%g173206173217%_ '())))))))
                  (_%g173204173302%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx174103174104%_)
                                                     (let ((_%e173186173313%_
                                                            (gx#syntax-e
                                                             _%__stx174103174104%_)))
                                                       (let ((_%tl173188173320%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e173186173313%_)))
                     (_%hd173187173317%_
                      (let () (declare (not safe)) (##car _%e173186173313%_))))
                 (if (gx#identifier? _%hd173187173317%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g174160_|
                          _%hd173187173317%_)
                         (_%__kont174106174107%_ _%tl173188173320%_)
                         (_%__kont174108174109%_))
                     (_%__kont174108174109%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont174108174109%_))))))
                                          (_%__kont174128174129%_
                                           (lambda ()
                                             (let* ((_%g173115173123%_
                                                     (lambda (_%g173116173119%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g173116173119%_)))
                                                    (_%g173114173148%_
                                                     (lambda (_%g173116173127%_)
                                                       (cons (cons _%E173088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'raise-syntax-error)
                                                          (cons '#f
                                                                (cons '"Bad syntax; invalid syntax-case clause"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g173116173127%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (gx#stx-source _%stx172799%_))
                                 '()))
                     _%r173089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173114173148%_
                                                _%tgt172951%_)))))
                                      (if (gx#stx-pair? _%__stx174123174124%_)
                                          (let ((_%e173096173159%_
                                                 (gx#syntax-e
                                                  _%__stx174123174124%_)))
                                            (let ((_%tl173098173166%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e173096173159%_)))
                                                  (_%hd173097173163%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e173096173159%_))))
                                              (_%__kont174126174127%_
                                               _%tl173098173166%_
                                               _%hd173097173163%_)))
                                          (_%__kont174128174129%_))))))))
                      (let* ((_%bind172961%_
                              (_%generate-clauses172959%_ _%clauses172954%_))
                             (_%g172964172981%_
                              (lambda (_%g172965172977%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g172965172977%_)))
                             (_%g172963173076%_
                              (lambda (_%g172965172985%_)
                                (if (gx#stx-pair/null? _%g172965172985%_)
                                    (let ((_g174161_
                                           (gx#syntax-split-splice
                                            _%g172965172985%_
                                            '0)))
                                      (begin
                                        (let ((_g174162_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g174161_)
                                                     (##values-length
                                                      _g174161_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g174162_ 2)))
                                              (error "Context expects 2 values"
                                                     _g174162_)))
                                        (let ((_%target172967172988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g174161_ 0)))
                                              (_%tl172969172991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g174161_ 1))))
                                          (if (gx#stx-null? _%tl172969172991%_)
                                              (letrec ((_%loop172970172994%_
                                                        (lambda (_%hd172968172998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try172974173001%_)
                  (if (gx#stx-pair? _%hd172968172998%_)
                      (let ((_%e172971173003%_
                             (gx#syntax-e _%hd172968172998%_)))
                        (let ((_%lp-hd172972173007%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172971173003%_)))
                              (_%lp-tl172973173010%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172971173003%_))))
                          (_%loop172970172994%_
                           _%lp-tl172973173010%_
                           (cons _%lp-hd172972173007%_
                                 _%bind-try172974173001%_))))
                      (let* ((_%bind-try172975173013%_
                              (reverse _%bind-try172974173001%_))
                             (_%g173034173042%_
                              (lambda (_%g173035173038%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g173035173038%_)))
                             (_%g173033173072%_
                              (lambda (_%g173035173046%_)
                                (cons (gx#datum->syntax '#f 'let*)
                                      (cons (let ((__tmp174163
                                                   (lambda (_%g173063173066%_
                                                            _%g173064173069%_)
                                                     (cons _%g173063173066%_
                                                           _%g173064173069%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp174163
                                               '()
                                               _%bind-try172975173013%_))
                                            (cons (cons _%g173035173046%_ '())
                                                  '()))))))
                        (_%g173033173072%_ (car (last _%bind172961%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop172970172994%_
                                                 _%target172967172988%_
                                                 '()))
                                              (_%g172964172981%_
                                               _%g172965172985%_)))))
                                    (_%g172964172981%_ _%g172965172985%_)))))
                        (_%g172963173076%_ _%bind172961%_))))))
          (let* ((_%g172805172824%_
                  (lambda (_%g172806172820%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g172806172820%_)))
                 (_%g172804172947%_
                  (lambda (_%g172806172828%_)
                    (if (gx#stx-pair? _%g172806172828%_)
                        (let ((_%e172810172831%_
                               (gx#syntax-e _%g172806172828%_)))
                          (let ((_%hd172811172835%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172810172831%_)))
                                (_%tl172812172838%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172810172831%_))))
                            (if (gx#stx-pair? _%tl172812172838%_)
                                (let ((_%e172813172841%_
                                       (gx#syntax-e _%tl172812172838%_)))
                                  (let ((_%hd172814172845%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172813172841%_)))
                                        (_%tl172815172848%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172813172841%_))))
                                    (if (gx#stx-pair? _%tl172815172848%_)
                                        (let ((_%e172816172851%_
                                               (gx#syntax-e
                                                _%tl172815172848%_)))
                                          (let ((_%hd172817172855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172816172851%_)))
                                                (_%tl172818172858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172816172851%_))))
                                            (if (and (gx#identifier-list?
                                                      _%hd172817172855%_)
                                                     (gx#stx-list?
                                                      _%tl172818172858%_))
                                                (let* ((_%g172882172890%_
                                                        (lambda (_%g172883172886%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g172883172886%_)))
                                                       (_%g172881172943%_
                                                        (lambda (_%g172883172894%_)
                                                          (let* ((_%g172909172917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g172910172913%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g172910172913%_)))
                         (_%g172908172939%_
                          (lambda (_%g172910172921%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%g172883172894%_
                                                    (cons _%hd172814172845%_
                                                          '()))
                                              '())
                                        (cons _%g172910172921%_ '()))))))
                    (_%g172908172939%_
                     (_%generate172802%_
                      _%g172883172894%_
                      (gx#syntax->list _%hd172817172855%_)
                      _%tl172818172858%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g172881172943%_
                                                   (gx#genident 'e)))
                                                (_%g172805172824%_
                                                 _%g172806172828%_))))
                                        (_%g172805172824%_
                                         _%g172806172828%_))))
                                (_%g172805172824%_ _%g172806172828%_))))
                        (_%g172805172824%_ _%g172806172828%_)))))
            (_%g172804172947%_ _%stx172799%_)))))))
