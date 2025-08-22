(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g88424_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g88425_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g88426_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g88429_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g88430_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g88433_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g88434_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g88435_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g88436_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g88440_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g88441_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g88442_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g88443_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g88447_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx49466%_)
        (let* ((_%__stx8274082741%_ _%stx49466%_)
               (_%g4947549684%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8274082741%_))))
          (let ((_%__kont8274382744%_
                 (lambda (_%L50590%_
                          _%L50592%_
                          _%L50593%_
                          _%L50594%_
                          _%L50595%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L50595%_ (cons _%L50594%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L50595%_
                                                       (cons _%L50593%_
                                                             (cons _%L50592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5063850641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5063950644%_)
                  (cons _%g5063850641%_ _%g5063950644%_))
                '()
                _%L50590%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8274782748%_
                 (lambda (_%L50434%_
                          _%L50436%_
                          _%L50437%_
                          _%L50438%_
                          _%L50439%_
                          _%L50440%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L50440%_ (cons _%L50439%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L50440%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L50438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L50440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L50437%_ (cons _%L50436%_ '())))
                           (foldr (lambda (_%g5048450487%_ _%g5048550490%_)
                                    (cons _%g5048450487%_ _%g5048550490%_))
                                  '()
                                  _%L50434%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8275182752%_
                 (lambda (_%L50251%_ _%L50253%_ _%L50254%_ _%L50255%_)
                   (let ((_%meta50292%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx49466%_
                             _%L50253%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta50292%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%L50255%_
                                           (cons _%L50254%_
                                                 (cons _%L50253%_ '())))
                                     (foldr (lambda (_%g5029650299%_
                                                     _%g5029750302%_)
                                              (cons _%g5029650299%_
                                                    _%g5029750302%_))
                                            '()
                                            _%L50251%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta50292%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%L50255%_
                                               (cons _%L50254%_
                                                     (cons _%L50253%_ '())))
                                         (foldr (lambda (_%g5030650309%_
                                                         _%g5030750312%_)
                                                  (cons _%g5030650309%_
                                                        _%g5030750312%_))
                                                '()
                                                _%L50251%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx49466%_
                              _%L50253%_
                              _%meta50292%_))))))
                (_%__kont8275582756%_
                 (lambda (_%L50129%_ _%L50131%_ _%L50132%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L50132%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L50131%_ '())))
                               (foldr (lambda (_%g5015550158%_ _%g5015650161%_)
                                        (cons _%g5015550158%_ _%g5015650161%_))
                                      '()
                                      _%L50129%_)))))
                (_%__kont8275982760%_
                 (lambda (_%L49987%_
                          _%L49989%_
                          _%L49990%_
                          _%L49991%_
                          _%L49992%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L49992%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L49991%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L49992%_
                                                       (cons _%L49990%_
                                                             (cons _%L49989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5003350036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5003450039%_)
                  (cons _%g5003350036%_ _%g5003450039%_))
                '()
                _%L49987%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8276382764%_
                 (lambda (_%L49845%_ _%L49847%_ _%L49848%_ _%L49849%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L49849%_ _%L49848%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L49847%_
                                                 (foldr (lambda (_%g4987149874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4987249877%_)
                  (cons _%g4987149874%_ _%g4987249877%_))
                '()
                _%L49845%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8276782768%_
                 (lambda (_%L49741%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4975949762%_ _%g4976049765%_)
                                        (cons _%g4975949762%_ _%g4976049765%_))
                                      '()
                                      _%L49741%_))))))
            (let* ((_%__match8307383074%_
                    (lambda (_%e4966449691%_
                             _%hd4966549695%_
                             _%tl4966649698%_
                             _%e4966749701%_
                             _%hd4966849705%_
                             _%tl4966949708%_
                             _%__splice8276982770%_
                             _%target4967049711%_
                             _%tl4967249714%_)
                      (letrec ((_%loop4967349717%_
                                (lambda (_%hd4967149721%_ _%body4967749724%_)
                                  (if (gx#stx-pair? _%hd4967149721%_)
                                      (let ((_%e4967449727%_
                                             (gx#syntax-e _%hd4967149721%_)))
                                        (let ((_%lp-tl4967649734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4967449727%_)))
                                              (_%lp-hd4967549731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4967449727%_))))
                                          (_%loop4967349717%_
                                           _%lp-tl4967649734%_
                                           (cons _%lp-hd4967549731%_
                                                 _%body4967749724%_))))
                                      (let ((_%body4967849737%_
                                             (reverse _%body4967749724%_)))
                                        (_%__kont8276782768%_
                                         _%body4967849737%_))))))
                        (_%loop4967349717%_ _%target4967049711%_ '()))))
                   (_%__match8305183052%_
                    (lambda (_%e4964249775%_
                             _%hd4964349779%_
                             _%tl4964449782%_
                             _%e4964549785%_
                             _%hd4964649789%_
                             _%tl4964749792%_
                             _%e4964849795%_
                             _%hd4964949799%_
                             _%tl4965049802%_
                             _%e4965149805%_
                             _%hd4965249809%_
                             _%tl4965349812%_
                             _%__splice8276582766%_
                             _%target4965449815%_
                             _%tl4965649818%_)
                      (letrec ((_%loop4965749821%_
                                (lambda (_%hd4965549825%_ _%body4966149828%_)
                                  (if (gx#stx-pair? _%hd4965549825%_)
                                      (let ((_%e4965849831%_
                                             (gx#syntax-e _%hd4965549825%_)))
                                        (let ((_%lp-tl4966049838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4965849831%_)))
                                              (_%lp-hd4965949835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4965849831%_))))
                                          (_%loop4965749821%_
                                           _%lp-tl4966049838%_
                                           (cons _%lp-hd4965949835%_
                                                 _%body4966149828%_))))
                                      (let ((_%body4966249841%_
                                             (reverse _%body4966149828%_)))
                                        (let ((_%L49845%_ _%body4966249841%_)
                                              (_%L49847%_ _%tl4965049802%_)
                                              (_%L49848%_ _%tl4965349812%_)
                                              (_%L49849%_ _%hd4965249809%_))
                                          (if (gx#identifier? _%L49849%_)
                                              (_%__kont8276382764%_
                                               _%L49845%_
                                               _%L49847%_
                                               _%L49848%_
                                               _%L49849%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4947549684%_)))))))))
                        (_%loop4965749821%_ _%target4965449815%_ '()))))
                   (_%__match8303783038%_
                    (lambda (_%e4964249775%_
                             _%hd4964349779%_
                             _%tl4964449782%_
                             _%e4964549785%_
                             _%hd4964649789%_
                             _%tl4964749792%_
                             _%e4964849795%_
                             _%hd4964949799%_
                             _%tl4965049802%_)
                      (if (gx#stx-pair? _%hd4964949799%_)
                          (let ((_%e4965149805%_
                                 (gx#syntax-e _%hd4964949799%_)))
                            (let ((_%tl4965349812%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4965149805%_)))
                                  (_%hd4965249809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4965149805%_))))
                              (if (gx#stx-pair/null? _%tl4964749792%_)
                                  (let ((_%__splice8276582766%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4964749792%_
                                          '0)))
                                    (let ((_%tl4965649818%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8276582766%_
                                              '1)))
                                          (_%target4965449815%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8276582766%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4965649818%_)
                                          (_%__match8305183052%_
                                           _%e4964249775%_
                                           _%hd4964349779%_
                                           _%tl4964449782%_
                                           _%e4964549785%_
                                           _%hd4964649789%_
                                           _%tl4964749792%_
                                           _%e4964849795%_
                                           _%hd4964949799%_
                                           _%tl4965049802%_
                                           _%e4965149805%_
                                           _%hd4965249809%_
                                           _%tl4965349812%_
                                           _%__splice8276582766%_
                                           _%target4965449815%_
                                           _%tl4965649818%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_)))))
                          (let () (declare (not safe)) (_%g4947549684%_)))))
                   (_%__match8301983020%_
                    (lambda (_%e4960849887%_
                             _%hd4960949891%_
                             _%tl4961049894%_
                             _%e4961149897%_
                             _%hd4961249901%_
                             _%tl4961349904%_
                             _%e4961449907%_
                             _%hd4961549911%_
                             _%tl4961649914%_
                             _%e4961749917%_
                             _%hd4961849921%_
                             _%tl4961949924%_
                             _%e4962049927%_
                             _%hd4962149931%_
                             _%tl4962249934%_
                             _%e4962349937%_
                             _%hd4962449941%_
                             _%tl4962549944%_
                             _%e4962649947%_
                             _%hd4962749951%_
                             _%tl4962849954%_
                             _%__splice8276182762%_
                             _%target4962949957%_
                             _%tl4963149960%_)
                      (letrec ((_%loop4963249963%_
                                (lambda (_%hd4963049967%_ _%body4963649970%_)
                                  (if (gx#stx-pair? _%hd4963049967%_)
                                      (let ((_%e4963349973%_
                                             (gx#syntax-e _%hd4963049967%_)))
                                        (let ((_%lp-tl4963549980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4963349973%_)))
                                              (_%lp-hd4963449977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4963349973%_))))
                                          (_%loop4963249963%_
                                           _%lp-tl4963549980%_
                                           (cons _%lp-hd4963449977%_
                                                 _%body4963649970%_))))
                                      (let ((_%body4963749983%_
                                             (reverse _%body4963649970%_)))
                                        (let ((_%L49987%_ _%body4963749983%_)
                                              (_%L49989%_ _%hd4962749951%_)
                                              (_%L49990%_ _%hd4962449941%_)
                                              (_%L49991%_ _%hd4962149931%_)
                                              (_%L49992%_ _%hd4961549911%_))
                                          (if (and (gx#identifier? _%L49992%_)
                                                   (gx#identifier? _%L49989%_)
                                                   (gx#identifier? _%L49990%_)
                                                   (or (gx#free-identifier=?
                                                        _%L49990%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L49990%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L49990%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L49990%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8275982760%_
                                               _%L49987%_
                                               _%L49989%_
                                               _%L49990%_
                                               _%L49991%_
                                               _%L49992%_)
                                              (_%__match8303783038%_
                                               _%e4960849887%_
                                               _%hd4960949891%_
                                               _%tl4961049894%_
                                               _%e4961149897%_
                                               _%hd4961249901%_
                                               _%tl4961349904%_
                                               _%e4961449907%_
                                               _%hd4961549911%_
                                               _%tl4961649914%_))))))))
                        (_%loop4963249963%_ _%target4962949957%_ '()))))
                   (_%__match8296382964%_
                    (lambda (_%e4957950049%_
                             _%hd4958050053%_
                             _%tl4958150056%_
                             _%e4958250059%_
                             _%hd4958350063%_
                             _%tl4958450066%_
                             _%e4958550069%_
                             _%hd4958650073%_
                             _%tl4958750076%_
                             _%e4958850079%_
                             _%hd4958950083%_
                             _%tl4959050086%_
                             _%e4959150089%_
                             _%hd4959250093%_
                             _%tl4959350096%_
                             _%__splice8275782758%_
                             _%target4959450099%_
                             _%tl4959650102%_)
                      (letrec ((_%loop4959750105%_
                                (lambda (_%hd4959550109%_ _%body4960150112%_)
                                  (if (gx#stx-pair? _%hd4959550109%_)
                                      (let ((_%e4959850115%_
                                             (gx#syntax-e _%hd4959550109%_)))
                                        (let ((_%lp-tl4960050122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4959850115%_)))
                                              (_%lp-hd4959950119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4959850115%_))))
                                          (_%loop4959750105%_
                                           _%lp-tl4960050122%_
                                           (cons _%lp-hd4959950119%_
                                                 _%body4960150112%_))))
                                      (let ((_%body4960250125%_
                                             (reverse _%body4960150112%_)))
                                        (let ((_%L50129%_ _%body4960250125%_)
                                              (_%L50131%_ _%hd4959250093%_)
                                              (_%L50132%_ _%hd4958650073%_))
                                          (if (gx#identifier? _%L50132%_)
                                              (_%__kont8275582756%_
                                               _%L50129%_
                                               _%L50131%_
                                               _%L50132%_)
                                              (_%__match8303783038%_
                                               _%e4957950049%_
                                               _%hd4958050053%_
                                               _%tl4958150056%_
                                               _%e4958250059%_
                                               _%hd4958350063%_
                                               _%tl4958450066%_
                                               _%e4958550069%_
                                               _%hd4958650073%_
                                               _%tl4958750076%_))))))))
                        (_%loop4959750105%_ _%target4959450099%_ '()))))
                   (_%__match8294382944%_
                    (lambda (_%e4957950049%_
                             _%hd4958050053%_
                             _%tl4958150056%_
                             _%e4958250059%_
                             _%hd4958350063%_
                             _%tl4958450066%_
                             _%e4958550069%_
                             _%hd4958650073%_
                             _%tl4958750076%_
                             _%e4958850079%_
                             _%hd4958950083%_
                             _%tl4959050086%_)
                      (if (gx#identifier? _%hd4958950083%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g88424_|
                               _%hd4958950083%_)
                              (if (gx#stx-pair? _%tl4959050086%_)
                                  (let ((_%e4959150089%_
                                         (gx#syntax-e _%tl4959050086%_)))
                                    (let ((_%tl4959350096%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4959150089%_)))
                                          (_%hd4959250093%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4959150089%_))))
                                      (if (gx#stx-null? _%tl4959350096%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4958450066%_)
                                              (let ((_%__splice8275782758%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4958450066%_
                                                      '0)))
                                                (let ((_%tl4959650102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8275782758%_
                                                          '1)))
                                                      (_%target4959450099%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8275782758%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4959650102%_)
                                                      (_%__match8296382964%_
                                                       _%e4957950049%_
                                                       _%hd4958050053%_
                                                       _%tl4958150056%_
                                                       _%e4958250059%_
                                                       _%hd4958350063%_
                                                       _%tl4958450066%_
                                                       _%e4958550069%_
                                                       _%hd4958650073%_
                                                       _%tl4958750076%_
                                                       _%e4958850079%_
                                                       _%hd4958950083%_
                                                       _%tl4959050086%_
                                                       _%e4959150089%_
                                                       _%hd4959250093%_
                                                       _%tl4959350096%_
                                                       _%__splice8275782758%_
                                                       _%target4959450099%_
                                                       _%tl4959650102%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4958650073%_)
                                                          (let ((_%e4965149805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4958650073%_)))
                    (let ((_%tl4965349812%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4965149805%_)))
                          (_%hd4965249809%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4965149805%_))))
                      (let () (declare (not safe)) (_%g4947549684%_))))
                  (let () (declare (not safe)) (_%g4947549684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4958650073%_)
                                                  (let ((_%e4965149805%_
                                                         (gx#syntax-e
                                                          _%hd4958650073%_)))
                                                    (let ((_%tl4965349812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4965149805%_)))
                                                          (_%hd4965249809%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4965149805%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4947549684%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4947549684%_))))
                                          (if (gx#stx-pair? _%tl4959350096%_)
                                              (let ((_%e4962349937%_
                                                     (gx#syntax-e
                                                      _%tl4959350096%_)))
                                                (let ((_%tl4962549944%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4962349937%_)))
                                                      (_%hd4962449941%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4962349937%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4962549944%_)
                                                      (let ((_%e4962649947%_
                                                             (gx#syntax-e
                                                              _%tl4962549944%_)))
                                                        (let ((_%tl4962849954%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4962649947%_)))
                      (_%hd4962749951%_
                       (let () (declare (not safe)) (##car _%e4962649947%_))))
                  (if (gx#stx-null? _%tl4962849954%_)
                      (if (gx#stx-pair/null? _%tl4958450066%_)
                          (let ((_%__splice8276182762%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4958450066%_
                                  '0)))
                            (let ((_%tl4963149960%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8276182762%_ '1)))
                                  (_%target4962949957%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8276182762%_
                                      '0))))
                              (if (gx#stx-null? _%tl4963149960%_)
                                  (_%__match8301983020%_
                                   _%e4957950049%_
                                   _%hd4958050053%_
                                   _%tl4958150056%_
                                   _%e4958250059%_
                                   _%hd4958350063%_
                                   _%tl4958450066%_
                                   _%e4958550069%_
                                   _%hd4958650073%_
                                   _%tl4958750076%_
                                   _%e4958850079%_
                                   _%hd4958950083%_
                                   _%tl4959050086%_
                                   _%e4959150089%_
                                   _%hd4959250093%_
                                   _%tl4959350096%_
                                   _%e4962349937%_
                                   _%hd4962449941%_
                                   _%tl4962549944%_
                                   _%e4962649947%_
                                   _%hd4962749951%_
                                   _%tl4962849954%_
                                   _%__splice8276182762%_
                                   _%target4962949957%_
                                   _%tl4963149960%_)
                                  (if (gx#stx-pair? _%hd4958650073%_)
                                      (let ((_%e4965149805%_
                                             (gx#syntax-e _%hd4958650073%_)))
                                        (let ((_%tl4965349812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4965149805%_)))
                                              (_%hd4965249809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4965149805%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_))))))
                          (if (gx#stx-pair? _%hd4958650073%_)
                              (let ((_%e4965149805%_
                                     (gx#syntax-e _%hd4958650073%_)))
                                (let ((_%tl4965349812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4965149805%_)))
                                      (_%hd4965249809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4965149805%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_))))
                              (let () (declare (not safe)) (_%g4947549684%_))))
                      (if (gx#stx-pair? _%hd4958650073%_)
                          (let ((_%e4965149805%_
                                 (gx#syntax-e _%hd4958650073%_)))
                            (let ((_%tl4965349812%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4965149805%_)))
                                  (_%hd4965249809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4965149805%_))))
                              (if (gx#stx-pair/null? _%tl4958450066%_)
                                  (let ((_%__splice8276582766%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4958450066%_
                                          '0)))
                                    (let ((_%tl4965649818%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8276582766%_
                                              '1)))
                                          (_%target4965449815%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8276582766%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4965649818%_)
                                          (_%__match8305183052%_
                                           _%e4957950049%_
                                           _%hd4958050053%_
                                           _%tl4958150056%_
                                           _%e4958250059%_
                                           _%hd4958350063%_
                                           _%tl4958450066%_
                                           _%e4958550069%_
                                           _%hd4958650073%_
                                           _%tl4958750076%_
                                           _%e4965149805%_
                                           _%hd4965249809%_
                                           _%tl4965349812%_
                                           _%__splice8276582766%_
                                           _%target4965449815%_
                                           _%tl4965649818%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_)))))
                          (let () (declare (not safe)) (_%g4947549684%_))))))
              (if (gx#stx-pair? _%hd4958650073%_)
                  (let ((_%e4965149805%_ (gx#syntax-e _%hd4958650073%_)))
                    (let ((_%tl4965349812%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4965149805%_)))
                          (_%hd4965249809%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4965149805%_))))
                      (if (gx#stx-pair/null? _%tl4958450066%_)
                          (let ((_%__splice8276582766%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4958450066%_
                                  '0)))
                            (let ((_%tl4965649818%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8276582766%_ '1)))
                                  (_%target4965449815%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8276582766%_
                                      '0))))
                              (if (gx#stx-null? _%tl4965649818%_)
                                  (_%__match8305183052%_
                                   _%e4957950049%_
                                   _%hd4958050053%_
                                   _%tl4958150056%_
                                   _%e4958250059%_
                                   _%hd4958350063%_
                                   _%tl4958450066%_
                                   _%e4958550069%_
                                   _%hd4958650073%_
                                   _%tl4958750076%_
                                   _%e4965149805%_
                                   _%hd4965249809%_
                                   _%tl4965349812%_
                                   _%__splice8276582766%_
                                   _%target4965449815%_
                                   _%tl4965649818%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_)))))
                          (let () (declare (not safe)) (_%g4947549684%_)))))
                  (let () (declare (not safe)) (_%g4947549684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4958650073%_)
                                                  (let ((_%e4965149805%_
                                                         (gx#syntax-e
                                                          _%hd4958650073%_)))
                                                    (let ((_%tl4965349812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4965149805%_)))
                                                          (_%hd4965249809%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4965149805%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4958450066%_)
                                                          (let ((_%__splice8276582766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4958450066%_ '0)))
                    (let ((_%tl4965649818%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8276582766%_ '1)))
                          (_%target4965449815%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8276582766%_ '0))))
                      (if (gx#stx-null? _%tl4965649818%_)
                          (_%__match8305183052%_
                           _%e4957950049%_
                           _%hd4958050053%_
                           _%tl4958150056%_
                           _%e4958250059%_
                           _%hd4958350063%_
                           _%tl4958450066%_
                           _%e4958550069%_
                           _%hd4958650073%_
                           _%tl4958750076%_
                           _%e4965149805%_
                           _%hd4965249809%_
                           _%tl4965349812%_
                           _%__splice8276582766%_
                           _%target4965449815%_
                           _%tl4965649818%_)
                          (let () (declare (not safe)) (_%g4947549684%_)))))
                  (let () (declare (not safe)) (_%g4947549684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4947549684%_)))))))
                                  (if (gx#stx-pair? _%hd4958650073%_)
                                      (let ((_%e4965149805%_
                                             (gx#syntax-e _%hd4958650073%_)))
                                        (let ((_%tl4965349812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4965149805%_)))
                                              (_%hd4965249809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4965149805%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4958450066%_)
                                              (let ((_%__splice8276582766%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4958450066%_
                                                      '0)))
                                                (let ((_%tl4965649818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8276582766%_
                                                          '1)))
                                                      (_%target4965449815%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8276582766%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4965649818%_)
                                                      (_%__match8305183052%_
                                                       _%e4957950049%_
                                                       _%hd4958050053%_
                                                       _%tl4958150056%_
                                                       _%e4958250059%_
                                                       _%hd4958350063%_
                                                       _%tl4958450066%_
                                                       _%e4958550069%_
                                                       _%hd4958650073%_
                                                       _%tl4958750076%_
                                                       _%e4965149805%_
                                                       _%hd4965249809%_
                                                       _%tl4965349812%_
                                                       _%__splice8276582766%_
                                                       _%target4965449815%_
                                                       _%tl4965649818%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4947549684%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4947549684%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_))))
                              (if (gx#stx-pair? _%hd4958650073%_)
                                  (let ((_%e4965149805%_
                                         (gx#syntax-e _%hd4958650073%_)))
                                    (let ((_%tl4965349812%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4965149805%_)))
                                          (_%hd4965249809%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4965149805%_))))
                                      (if (gx#stx-pair/null? _%tl4958450066%_)
                                          (let ((_%__splice8276582766%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4958450066%_
                                                  '0)))
                                            (let ((_%tl4965649818%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8276582766%_
                                                      '1)))
                                                  (_%target4965449815%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8276582766%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4965649818%_)
                                                  (_%__match8305183052%_
                                                   _%e4957950049%_
                                                   _%hd4958050053%_
                                                   _%tl4958150056%_
                                                   _%e4958250059%_
                                                   _%hd4958350063%_
                                                   _%tl4958450066%_
                                                   _%e4958550069%_
                                                   _%hd4958650073%_
                                                   _%tl4958750076%_
                                                   _%e4965149805%_
                                                   _%hd4965249809%_
                                                   _%tl4965349812%_
                                                   _%__splice8276582766%_
                                                   _%target4965449815%_
                                                   _%tl4965649818%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4947549684%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_))))
                          (if (gx#stx-pair? _%hd4958650073%_)
                              (let ((_%e4965149805%_
                                     (gx#syntax-e _%hd4958650073%_)))
                                (let ((_%tl4965349812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4965149805%_)))
                                      (_%hd4965249809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4965149805%_))))
                                  (if (gx#stx-pair/null? _%tl4958450066%_)
                                      (let ((_%__splice8276582766%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4958450066%_
                                              '0)))
                                        (let ((_%tl4965649818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8276582766%_
                                                  '1)))
                                              (_%target4965449815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8276582766%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4965649818%_)
                                              (_%__match8305183052%_
                                               _%e4957950049%_
                                               _%hd4958050053%_
                                               _%tl4958150056%_
                                               _%e4958250059%_
                                               _%hd4958350063%_
                                               _%tl4958450066%_
                                               _%e4958550069%_
                                               _%hd4958650073%_
                                               _%tl4958750076%_
                                               _%e4965149805%_
                                               _%hd4965249809%_
                                               _%tl4965349812%_
                                               _%__splice8276582766%_
                                               _%target4965449815%_
                                               _%tl4965649818%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4947549684%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4947549684%_))))))
                   (_%__match8291982920%_
                    (lambda (_%e4955250171%_
                             _%hd4955350175%_
                             _%tl4955450178%_
                             _%e4955550181%_
                             _%hd4955650185%_
                             _%tl4955750188%_
                             _%e4955850191%_
                             _%hd4955950195%_
                             _%tl4956050198%_
                             _%e4956150201%_
                             _%hd4956250205%_
                             _%tl4956350208%_
                             _%e4956450211%_
                             _%hd4956550215%_
                             _%tl4956650218%_
                             _%__splice8275382754%_
                             _%target4956750221%_
                             _%tl4956950224%_)
                      (letrec ((_%loop4957050227%_
                                (lambda (_%hd4956850231%_ _%body4957450234%_)
                                  (if (gx#stx-pair? _%hd4956850231%_)
                                      (let ((_%e4957150237%_
                                             (gx#syntax-e _%hd4956850231%_)))
                                        (let ((_%lp-tl4957350244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4957150237%_)))
                                              (_%lp-hd4957250241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4957150237%_))))
                                          (_%loop4957050227%_
                                           _%lp-tl4957350244%_
                                           (cons _%lp-hd4957250241%_
                                                 _%body4957450234%_))))
                                      (let ((_%body4957550247%_
                                             (reverse _%body4957450234%_)))
                                        (let ((_%L50251%_ _%body4957550247%_)
                                              (_%L50253%_ _%hd4956550215%_)
                                              (_%L50254%_ _%hd4956250205%_)
                                              (_%L50255%_ _%hd4955950195%_))
                                          (if (and (gx#identifier? _%L50255%_)
                                                   (gx#identifier? _%L50253%_)
                                                   (gx#identifier? _%L50254%_)
                                                   (or (gx#free-identifier=?
                                                        _%L50254%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L50254%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L50254%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L50254%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8275182752%_
                                               _%L50251%_
                                               _%L50253%_
                                               _%L50254%_
                                               _%L50255%_)
                                              (_%__match8294382944%_
                                               _%e4955250171%_
                                               _%hd4955350175%_
                                               _%tl4955450178%_
                                               _%e4955550181%_
                                               _%hd4955650185%_
                                               _%tl4955750188%_
                                               _%e4955850191%_
                                               _%hd4955950195%_
                                               _%tl4956050198%_
                                               _%e4956150201%_
                                               _%hd4956250205%_
                                               _%tl4956350208%_))))))))
                        (_%loop4957050227%_ _%target4956750221%_ '()))))
                   (_%__match8287982880%_
                    (lambda (_%e4951550324%_
                             _%hd4951650328%_
                             _%tl4951750331%_
                             _%e4951850334%_
                             _%hd4951950338%_
                             _%tl4952050341%_
                             _%e4952150344%_
                             _%hd4952250348%_
                             _%tl4952350351%_
                             _%e4952450354%_
                             _%hd4952550358%_
                             _%tl4952650361%_
                             _%e4952750364%_
                             _%hd4952850368%_
                             _%tl4952950371%_
                             _%e4953050374%_
                             _%hd4953150378%_
                             _%tl4953250381%_
                             _%e4953350384%_
                             _%hd4953450388%_
                             _%tl4953550391%_
                             _%e4953650394%_
                             _%hd4953750398%_
                             _%tl4953850401%_
                             _%__splice8274982750%_
                             _%target4953950404%_
                             _%tl4954150407%_)
                      (letrec ((_%loop4954250410%_
                                (lambda (_%hd4954050414%_ _%body4954650417%_)
                                  (if (gx#stx-pair? _%hd4954050414%_)
                                      (let ((_%e4954350420%_
                                             (gx#syntax-e _%hd4954050414%_)))
                                        (let ((_%lp-tl4954550427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4954350420%_)))
                                              (_%lp-hd4954450424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4954350420%_))))
                                          (_%loop4954250410%_
                                           _%lp-tl4954550427%_
                                           (cons _%lp-hd4954450424%_
                                                 _%body4954650417%_))))
                                      (let ((_%body4954750430%_
                                             (reverse _%body4954650417%_)))
                                        (let ((_%L50434%_ _%body4954750430%_)
                                              (_%L50436%_ _%hd4953750398%_)
                                              (_%L50437%_ _%hd4953450388%_)
                                              (_%L50438%_ _%hd4953150378%_)
                                              (_%L50439%_ _%hd4952550358%_)
                                              (_%L50440%_ _%hd4952250348%_))
                                          (if (and (gx#identifier? _%L50440%_)
                                                   (gx#identifier? _%L50436%_)
                                                   (gx#identifier? _%L50437%_)
                                                   (or (gx#free-identifier=?
                                                        _%L50437%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L50437%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L50437%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L50437%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8274782748%_
                                               _%L50434%_
                                               _%L50436%_
                                               _%L50437%_
                                               _%L50438%_
                                               _%L50439%_
                                               _%L50440%_)
                                              (_%__match8294382944%_
                                               _%e4951550324%_
                                               _%hd4951650328%_
                                               _%tl4951750331%_
                                               _%e4951850334%_
                                               _%hd4951950338%_
                                               _%tl4952050341%_
                                               _%e4952150344%_
                                               _%hd4952250348%_
                                               _%tl4952350351%_
                                               _%e4952450354%_
                                               _%hd4952550358%_
                                               _%tl4952650361%_))))))))
                        (_%loop4954250410%_ _%target4953950404%_ '()))))
                   (_%__match8284782848%_
                    (lambda (_%e4951550324%_
                             _%hd4951650328%_
                             _%tl4951750331%_
                             _%e4951850334%_
                             _%hd4951950338%_
                             _%tl4952050341%_
                             _%e4952150344%_
                             _%hd4952250348%_
                             _%tl4952350351%_
                             _%e4952450354%_
                             _%hd4952550358%_
                             _%tl4952650361%_
                             _%e4952750364%_
                             _%hd4952850368%_
                             _%tl4952950371%_)
                      (if (gx#identifier? _%hd4952850368%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g88425_|
                               _%hd4952850368%_)
                              (if (gx#stx-pair? _%tl4952950371%_)
                                  (let ((_%e4953050374%_
                                         (gx#syntax-e _%tl4952950371%_)))
                                    (let ((_%tl4953250381%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4953050374%_)))
                                          (_%hd4953150378%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4953050374%_))))
                                      (if (gx#stx-pair? _%tl4953250381%_)
                                          (let ((_%e4953350384%_
                                                 (gx#syntax-e
                                                  _%tl4953250381%_)))
                                            (let ((_%tl4953550391%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4953350384%_)))
                                                  (_%hd4953450388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4953350384%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4953550391%_)
                                                  (let ((_%e4953650394%_
                                                         (gx#syntax-e
                                                          _%tl4953550391%_)))
                                                    (let ((_%tl4953850401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4953650394%_)))
                                                          (_%hd4953750398%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4953650394%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4953850401%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4952050341%_)
                                                              (let ((_%__splice8274982750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4952050341%_
                              '0)))
                        (let ((_%tl4954150407%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8274982750%_ '1)))
                              (_%target4953950404%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8274982750%_ '0))))
                          (if (gx#stx-null? _%tl4954150407%_)
                              (_%__match8287982880%_
                               _%e4951550324%_
                               _%hd4951650328%_
                               _%tl4951750331%_
                               _%e4951850334%_
                               _%hd4951950338%_
                               _%tl4952050341%_
                               _%e4952150344%_
                               _%hd4952250348%_
                               _%tl4952350351%_
                               _%e4952450354%_
                               _%hd4952550358%_
                               _%tl4952650361%_
                               _%e4952750364%_
                               _%hd4952850368%_
                               _%tl4952950371%_
                               _%e4953050374%_
                               _%hd4953150378%_
                               _%tl4953250381%_
                               _%e4953350384%_
                               _%hd4953450388%_
                               _%tl4953550391%_
                               _%e4953650394%_
                               _%hd4953750398%_
                               _%tl4953850401%_
                               _%__splice8274982750%_
                               _%target4953950404%_
                               _%tl4954150407%_)
                              (if (gx#stx-pair? _%hd4952250348%_)
                                  (let ((_%e4965149805%_
                                         (gx#syntax-e _%hd4952250348%_)))
                                    (let ((_%tl4965349812%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4965149805%_)))
                                          (_%hd4965249809%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4965149805%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_))))))
                      (if (gx#stx-pair? _%hd4952250348%_)
                          (let ((_%e4965149805%_
                                 (gx#syntax-e _%hd4952250348%_)))
                            (let ((_%tl4965349812%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4965149805%_)))
                                  (_%hd4965249809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4965149805%_))))
                              (let () (declare (not safe)) (_%g4947549684%_))))
                          (let () (declare (not safe)) (_%g4947549684%_))))
                  (if (gx#stx-pair? _%hd4952250348%_)
                      (let ((_%e4965149805%_ (gx#syntax-e _%hd4952250348%_)))
                        (let ((_%tl4965349812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4965149805%_)))
                              (_%hd4965249809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4965149805%_))))
                          (if (gx#stx-pair/null? _%tl4952050341%_)
                              (let ((_%__splice8276582766%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4952050341%_
                                      '0)))
                                (let ((_%tl4965649818%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8276582766%_
                                          '1)))
                                      (_%target4965449815%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8276582766%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4965649818%_)
                                      (_%__match8305183052%_
                                       _%e4951550324%_
                                       _%hd4951650328%_
                                       _%tl4951750331%_
                                       _%e4951850334%_
                                       _%hd4951950338%_
                                       _%tl4952050341%_
                                       _%e4952150344%_
                                       _%hd4952250348%_
                                       _%tl4952350351%_
                                       _%e4965149805%_
                                       _%hd4965249809%_
                                       _%tl4965349812%_
                                       _%__splice8276582766%_
                                       _%target4965449815%_
                                       _%tl4965649818%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4947549684%_)))))
                      (let () (declare (not safe)) (_%g4947549684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4952550358%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g88424_|
                                                           _%hd4952550358%_)
                                                          (if (gx#stx-null?
                                                               _%tl4953550391%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4952050341%_)
                          (let ((_%__splice8276182762%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4952050341%_
                                  '0)))
                            (let ((_%tl4963149960%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8276182762%_ '1)))
                                  (_%target4962949957%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8276182762%_
                                      '0))))
                              (if (gx#stx-null? _%tl4963149960%_)
                                  (_%__match8301983020%_
                                   _%e4951550324%_
                                   _%hd4951650328%_
                                   _%tl4951750331%_
                                   _%e4951850334%_
                                   _%hd4951950338%_
                                   _%tl4952050341%_
                                   _%e4952150344%_
                                   _%hd4952250348%_
                                   _%tl4952350351%_
                                   _%e4952450354%_
                                   _%hd4952550358%_
                                   _%tl4952650361%_
                                   _%e4952750364%_
                                   _%hd4952850368%_
                                   _%tl4952950371%_
                                   _%e4953050374%_
                                   _%hd4953150378%_
                                   _%tl4953250381%_
                                   _%e4953350384%_
                                   _%hd4953450388%_
                                   _%tl4953550391%_
                                   _%__splice8276182762%_
                                   _%target4962949957%_
                                   _%tl4963149960%_)
                                  (if (gx#stx-pair? _%hd4952250348%_)
                                      (let ((_%e4965149805%_
                                             (gx#syntax-e _%hd4952250348%_)))
                                        (let ((_%tl4965349812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4965149805%_)))
                                              (_%hd4965249809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4965149805%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_))))))
                          (if (gx#stx-pair? _%hd4952250348%_)
                              (let ((_%e4965149805%_
                                     (gx#syntax-e _%hd4952250348%_)))
                                (let ((_%tl4965349812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4965149805%_)))
                                      (_%hd4965249809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4965149805%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_))))
                              (let () (declare (not safe)) (_%g4947549684%_))))
                      (if (gx#stx-pair? _%hd4952250348%_)
                          (let ((_%e4965149805%_
                                 (gx#syntax-e _%hd4952250348%_)))
                            (let ((_%tl4965349812%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4965149805%_)))
                                  (_%hd4965249809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4965149805%_))))
                              (if (gx#stx-pair/null? _%tl4952050341%_)
                                  (let ((_%__splice8276582766%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4952050341%_
                                          '0)))
                                    (let ((_%tl4965649818%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8276582766%_
                                              '1)))
                                          (_%target4965449815%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8276582766%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4965649818%_)
                                          (_%__match8305183052%_
                                           _%e4951550324%_
                                           _%hd4951650328%_
                                           _%tl4951750331%_
                                           _%e4951850334%_
                                           _%hd4951950338%_
                                           _%tl4952050341%_
                                           _%e4952150344%_
                                           _%hd4952250348%_
                                           _%tl4952350351%_
                                           _%e4965149805%_
                                           _%hd4965249809%_
                                           _%tl4965349812%_
                                           _%__splice8276582766%_
                                           _%target4965449815%_
                                           _%tl4965649818%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_)))))
                          (let () (declare (not safe)) (_%g4947549684%_))))
                  (if (gx#stx-pair? _%hd4952250348%_)
                      (let ((_%e4965149805%_ (gx#syntax-e _%hd4952250348%_)))
                        (let ((_%tl4965349812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4965149805%_)))
                              (_%hd4965249809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4965149805%_))))
                          (if (gx#stx-pair/null? _%tl4952050341%_)
                              (let ((_%__splice8276582766%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4952050341%_
                                      '0)))
                                (let ((_%tl4965649818%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8276582766%_
                                          '1)))
                                      (_%target4965449815%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8276582766%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4965649818%_)
                                      (_%__match8305183052%_
                                       _%e4951550324%_
                                       _%hd4951650328%_
                                       _%tl4951750331%_
                                       _%e4951850334%_
                                       _%hd4951950338%_
                                       _%tl4952050341%_
                                       _%e4952150344%_
                                       _%hd4952250348%_
                                       _%tl4952350351%_
                                       _%e4965149805%_
                                       _%hd4965249809%_
                                       _%tl4965349812%_
                                       _%__splice8276582766%_
                                       _%target4965449815%_
                                       _%tl4965649818%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4947549684%_)))))
                      (let () (declare (not safe)) (_%g4947549684%_))))
              (if (gx#stx-pair? _%hd4952250348%_)
                  (let ((_%e4965149805%_ (gx#syntax-e _%hd4952250348%_)))
                    (let ((_%tl4965349812%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4965149805%_)))
                          (_%hd4965249809%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4965149805%_))))
                      (if (gx#stx-pair/null? _%tl4952050341%_)
                          (let ((_%__splice8276582766%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4952050341%_
                                  '0)))
                            (let ((_%tl4965649818%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8276582766%_ '1)))
                                  (_%target4965449815%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8276582766%_
                                      '0))))
                              (if (gx#stx-null? _%tl4965649818%_)
                                  (_%__match8305183052%_
                                   _%e4951550324%_
                                   _%hd4951650328%_
                                   _%tl4951750331%_
                                   _%e4951850334%_
                                   _%hd4951950338%_
                                   _%tl4952050341%_
                                   _%e4952150344%_
                                   _%hd4952250348%_
                                   _%tl4952350351%_
                                   _%e4965149805%_
                                   _%hd4965249809%_
                                   _%tl4965349812%_
                                   _%__splice8276582766%_
                                   _%target4965449815%_
                                   _%tl4965649818%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_)))))
                          (let () (declare (not safe)) (_%g4947549684%_)))))
                  (let () (declare (not safe)) (_%g4947549684%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4952250348%_)
                                              (let ((_%e4965149805%_
                                                     (gx#syntax-e
                                                      _%hd4952250348%_)))
                                                (let ((_%tl4965349812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4965149805%_)))
                                                      (_%hd4965249809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4965149805%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4952050341%_)
                                                      (let ((_%__splice8276582766%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4952050341%_
                                                              '0)))
                                                        (let ((_%tl4965649818%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8276582766%_ '1)))
                      (_%target4965449815%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8276582766%_ '0))))
                  (if (gx#stx-null? _%tl4965649818%_)
                      (_%__match8305183052%_
                       _%e4951550324%_
                       _%hd4951650328%_
                       _%tl4951750331%_
                       _%e4951850334%_
                       _%hd4951950338%_
                       _%tl4952050341%_
                       _%e4952150344%_
                       _%hd4952250348%_
                       _%tl4952350351%_
                       _%e4965149805%_
                       _%hd4965249809%_
                       _%tl4965349812%_
                       _%__splice8276582766%_
                       _%target4965449815%_
                       _%tl4965649818%_)
                      (let () (declare (not safe)) (_%g4947549684%_)))))
              (let () (declare (not safe)) (_%g4947549684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4947549684%_))))))
                                  (if (gx#stx-null? _%tl4952950371%_)
                                      (if (gx#stx-pair/null? _%tl4952050341%_)
                                          (let ((_%__splice8275382754%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4952050341%_
                                                  '0)))
                                            (let ((_%tl4956950224%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8275382754%_
                                                      '1)))
                                                  (_%target4956750221%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8275382754%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4956950224%_)
                                                  (_%__match8291982920%_
                                                   _%e4951550324%_
                                                   _%hd4951650328%_
                                                   _%tl4951750331%_
                                                   _%e4951850334%_
                                                   _%hd4951950338%_
                                                   _%tl4952050341%_
                                                   _%e4952150344%_
                                                   _%hd4952250348%_
                                                   _%tl4952350351%_
                                                   _%e4952450354%_
                                                   _%hd4952550358%_
                                                   _%tl4952650361%_
                                                   _%e4952750364%_
                                                   _%hd4952850368%_
                                                   _%tl4952950371%_
                                                   _%__splice8275382754%_
                                                   _%target4956750221%_
                                                   _%tl4956950224%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4952250348%_)
                                                      (let ((_%e4965149805%_
                                                             (gx#syntax-e
                                                              _%hd4952250348%_)))
                                                        (let ((_%tl4965349812%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4965149805%_)))
                      (_%hd4965249809%_
                       (let () (declare (not safe)) (##car _%e4965149805%_))))
                  (let () (declare (not safe)) (_%g4947549684%_))))
              (let () (declare (not safe)) (_%g4947549684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4952250348%_)
                                              (let ((_%e4965149805%_
                                                     (gx#syntax-e
                                                      _%hd4952250348%_)))
                                                (let ((_%tl4965349812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4965149805%_)))
                                                      (_%hd4965249809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4965149805%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4947549684%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4947549684%_))))
                                      (if (gx#stx-pair? _%hd4952250348%_)
                                          (let ((_%e4965149805%_
                                                 (gx#syntax-e
                                                  _%hd4952250348%_)))
                                            (let ((_%tl4965349812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4965149805%_)))
                                                  (_%hd4965249809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4965149805%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4952050341%_)
                                                  (let ((_%__splice8276582766%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4952050341%_
                                                          '0)))
                                                    (let ((_%tl4965649818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8276582766%_
                                                              '1)))
                                                          (_%target4965449815%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8276582766%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4965649818%_)
                                                          (_%__match8305183052%_
                                                           _%e4951550324%_
                                                           _%hd4951650328%_
                                                           _%tl4951750331%_
                                                           _%e4951850334%_
                                                           _%hd4951950338%_
                                                           _%tl4952050341%_
                                                           _%e4952150344%_
                                                           _%hd4952250348%_
                                                           _%tl4952350351%_
                                                           _%e4965149805%_
                                                           _%hd4965249809%_
                                                           _%tl4965349812%_
                                                           _%__splice8276582766%_
                                                           _%target4965449815%_
                                                           _%tl4965649818%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4947549684%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4947549684%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_)))))
                              (if (gx#stx-null? _%tl4952950371%_)
                                  (if (gx#stx-pair/null? _%tl4952050341%_)
                                      (let ((_%__splice8275382754%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4952050341%_
                                              '0)))
                                        (let ((_%tl4956950224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8275382754%_
                                                  '1)))
                                              (_%target4956750221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8275382754%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4956950224%_)
                                              (_%__match8291982920%_
                                               _%e4951550324%_
                                               _%hd4951650328%_
                                               _%tl4951750331%_
                                               _%e4951850334%_
                                               _%hd4951950338%_
                                               _%tl4952050341%_
                                               _%e4952150344%_
                                               _%hd4952250348%_
                                               _%tl4952350351%_
                                               _%e4952450354%_
                                               _%hd4952550358%_
                                               _%tl4952650361%_
                                               _%e4952750364%_
                                               _%hd4952850368%_
                                               _%tl4952950371%_
                                               _%__splice8275382754%_
                                               _%target4956750221%_
                                               _%tl4956950224%_)
                                              (if (gx#stx-pair?
                                                   _%hd4952250348%_)
                                                  (let ((_%e4965149805%_
                                                         (gx#syntax-e
                                                          _%hd4952250348%_)))
                                                    (let ((_%tl4965349812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4965149805%_)))
                                                          (_%hd4965249809%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4965149805%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4947549684%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4947549684%_))))))
                                      (if (gx#stx-pair? _%hd4952250348%_)
                                          (let ((_%e4965149805%_
                                                 (gx#syntax-e
                                                  _%hd4952250348%_)))
                                            (let ((_%tl4965349812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4965149805%_)))
                                                  (_%hd4965249809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4965149805%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4947549684%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_))))
                                  (if (gx#identifier? _%hd4952550358%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g88424_|
                                           _%hd4952550358%_)
                                          (if (gx#stx-pair? _%tl4952950371%_)
                                              (let ((_%e4962349937%_
                                                     (gx#syntax-e
                                                      _%tl4952950371%_)))
                                                (let ((_%tl4962549944%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4962349937%_)))
                                                      (_%hd4962449941%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4962349937%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4962549944%_)
                                                      (let ((_%e4962649947%_
                                                             (gx#syntax-e
                                                              _%tl4962549944%_)))
                                                        (let ((_%tl4962849954%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4962649947%_)))
                      (_%hd4962749951%_
                       (let () (declare (not safe)) (##car _%e4962649947%_))))
                  (if (gx#stx-null? _%tl4962849954%_)
                      (if (gx#stx-pair/null? _%tl4952050341%_)
                          (let ((_%__splice8276182762%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4952050341%_
                                  '0)))
                            (let ((_%tl4963149960%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8276182762%_ '1)))
                                  (_%target4962949957%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8276182762%_
                                      '0))))
                              (if (gx#stx-null? _%tl4963149960%_)
                                  (_%__match8301983020%_
                                   _%e4951550324%_
                                   _%hd4951650328%_
                                   _%tl4951750331%_
                                   _%e4951850334%_
                                   _%hd4951950338%_
                                   _%tl4952050341%_
                                   _%e4952150344%_
                                   _%hd4952250348%_
                                   _%tl4952350351%_
                                   _%e4952450354%_
                                   _%hd4952550358%_
                                   _%tl4952650361%_
                                   _%e4952750364%_
                                   _%hd4952850368%_
                                   _%tl4952950371%_
                                   _%e4962349937%_
                                   _%hd4962449941%_
                                   _%tl4962549944%_
                                   _%e4962649947%_
                                   _%hd4962749951%_
                                   _%tl4962849954%_
                                   _%__splice8276182762%_
                                   _%target4962949957%_
                                   _%tl4963149960%_)
                                  (if (gx#stx-pair? _%hd4952250348%_)
                                      (let ((_%e4965149805%_
                                             (gx#syntax-e _%hd4952250348%_)))
                                        (let ((_%tl4965349812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4965149805%_)))
                                              (_%hd4965249809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4965149805%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_))))))
                          (if (gx#stx-pair? _%hd4952250348%_)
                              (let ((_%e4965149805%_
                                     (gx#syntax-e _%hd4952250348%_)))
                                (let ((_%tl4965349812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4965149805%_)))
                                      (_%hd4965249809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4965149805%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_))))
                              (let () (declare (not safe)) (_%g4947549684%_))))
                      (if (gx#stx-pair? _%hd4952250348%_)
                          (let ((_%e4965149805%_
                                 (gx#syntax-e _%hd4952250348%_)))
                            (let ((_%tl4965349812%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4965149805%_)))
                                  (_%hd4965249809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4965149805%_))))
                              (if (gx#stx-pair/null? _%tl4952050341%_)
                                  (let ((_%__splice8276582766%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4952050341%_
                                          '0)))
                                    (let ((_%tl4965649818%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8276582766%_
                                              '1)))
                                          (_%target4965449815%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8276582766%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4965649818%_)
                                          (_%__match8305183052%_
                                           _%e4951550324%_
                                           _%hd4951650328%_
                                           _%tl4951750331%_
                                           _%e4951850334%_
                                           _%hd4951950338%_
                                           _%tl4952050341%_
                                           _%e4952150344%_
                                           _%hd4952250348%_
                                           _%tl4952350351%_
                                           _%e4965149805%_
                                           _%hd4965249809%_
                                           _%tl4965349812%_
                                           _%__splice8276582766%_
                                           _%target4965449815%_
                                           _%tl4965649818%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_)))))
                          (let () (declare (not safe)) (_%g4947549684%_))))))
              (if (gx#stx-pair? _%hd4952250348%_)
                  (let ((_%e4965149805%_ (gx#syntax-e _%hd4952250348%_)))
                    (let ((_%tl4965349812%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4965149805%_)))
                          (_%hd4965249809%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4965149805%_))))
                      (if (gx#stx-pair/null? _%tl4952050341%_)
                          (let ((_%__splice8276582766%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4952050341%_
                                  '0)))
                            (let ((_%tl4965649818%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8276582766%_ '1)))
                                  (_%target4965449815%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8276582766%_
                                      '0))))
                              (if (gx#stx-null? _%tl4965649818%_)
                                  (_%__match8305183052%_
                                   _%e4951550324%_
                                   _%hd4951650328%_
                                   _%tl4951750331%_
                                   _%e4951850334%_
                                   _%hd4951950338%_
                                   _%tl4952050341%_
                                   _%e4952150344%_
                                   _%hd4952250348%_
                                   _%tl4952350351%_
                                   _%e4965149805%_
                                   _%hd4965249809%_
                                   _%tl4965349812%_
                                   _%__splice8276582766%_
                                   _%target4965449815%_
                                   _%tl4965649818%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_)))))
                          (let () (declare (not safe)) (_%g4947549684%_)))))
                  (let () (declare (not safe)) (_%g4947549684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4952250348%_)
                                                  (let ((_%e4965149805%_
                                                         (gx#syntax-e
                                                          _%hd4952250348%_)))
                                                    (let ((_%tl4965349812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4965149805%_)))
                                                          (_%hd4965249809%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4965149805%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4952050341%_)
                                                          (let ((_%__splice8276582766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4952050341%_ '0)))
                    (let ((_%tl4965649818%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8276582766%_ '1)))
                          (_%target4965449815%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8276582766%_ '0))))
                      (if (gx#stx-null? _%tl4965649818%_)
                          (_%__match8305183052%_
                           _%e4951550324%_
                           _%hd4951650328%_
                           _%tl4951750331%_
                           _%e4951850334%_
                           _%hd4951950338%_
                           _%tl4952050341%_
                           _%e4952150344%_
                           _%hd4952250348%_
                           _%tl4952350351%_
                           _%e4965149805%_
                           _%hd4965249809%_
                           _%tl4965349812%_
                           _%__splice8276582766%_
                           _%target4965449815%_
                           _%tl4965649818%_)
                          (let () (declare (not safe)) (_%g4947549684%_)))))
                  (let () (declare (not safe)) (_%g4947549684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4947549684%_))))
                                          (if (gx#stx-pair? _%hd4952250348%_)
                                              (let ((_%e4965149805%_
                                                     (gx#syntax-e
                                                      _%hd4952250348%_)))
                                                (let ((_%tl4965349812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4965149805%_)))
                                                      (_%hd4965249809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4965149805%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4952050341%_)
                                                      (let ((_%__splice8276582766%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4952050341%_
                                                              '0)))
                                                        (let ((_%tl4965649818%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8276582766%_ '1)))
                      (_%target4965449815%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8276582766%_ '0))))
                  (if (gx#stx-null? _%tl4965649818%_)
                      (_%__match8305183052%_
                       _%e4951550324%_
                       _%hd4951650328%_
                       _%tl4951750331%_
                       _%e4951850334%_
                       _%hd4951950338%_
                       _%tl4952050341%_
                       _%e4952150344%_
                       _%hd4952250348%_
                       _%tl4952350351%_
                       _%e4965149805%_
                       _%hd4965249809%_
                       _%tl4965349812%_
                       _%__splice8276582766%_
                       _%target4965449815%_
                       _%tl4965649818%_)
                      (let () (declare (not safe)) (_%g4947549684%_)))))
              (let () (declare (not safe)) (_%g4947549684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4947549684%_))))
                                      (if (gx#stx-pair? _%hd4952250348%_)
                                          (let ((_%e4965149805%_
                                                 (gx#syntax-e
                                                  _%hd4952250348%_)))
                                            (let ((_%tl4965349812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4965149805%_)))
                                                  (_%hd4965249809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4965149805%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4952050341%_)
                                                  (let ((_%__splice8276582766%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4952050341%_
                                                          '0)))
                                                    (let ((_%tl4965649818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8276582766%_
                                                              '1)))
                                                          (_%target4965449815%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8276582766%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4965649818%_)
                                                          (_%__match8305183052%_
                                                           _%e4951550324%_
                                                           _%hd4951650328%_
                                                           _%tl4951750331%_
                                                           _%e4951850334%_
                                                           _%hd4951950338%_
                                                           _%tl4952050341%_
                                                           _%e4952150344%_
                                                           _%hd4952250348%_
                                                           _%tl4952350351%_
                                                           _%e4965149805%_
                                                           _%hd4965249809%_
                                                           _%tl4965349812%_
                                                           _%__splice8276582766%_
                                                           _%target4965449815%_
                                                           _%tl4965649818%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4947549684%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4947549684%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_))))))
                          (if (gx#stx-null? _%tl4952950371%_)
                              (if (gx#stx-pair/null? _%tl4952050341%_)
                                  (let ((_%__splice8275382754%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4952050341%_
                                          '0)))
                                    (let ((_%tl4956950224%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8275382754%_
                                              '1)))
                                          (_%target4956750221%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8275382754%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4956950224%_)
                                          (_%__match8291982920%_
                                           _%e4951550324%_
                                           _%hd4951650328%_
                                           _%tl4951750331%_
                                           _%e4951850334%_
                                           _%hd4951950338%_
                                           _%tl4952050341%_
                                           _%e4952150344%_
                                           _%hd4952250348%_
                                           _%tl4952350351%_
                                           _%e4952450354%_
                                           _%hd4952550358%_
                                           _%tl4952650361%_
                                           _%e4952750364%_
                                           _%hd4952850368%_
                                           _%tl4952950371%_
                                           _%__splice8275382754%_
                                           _%target4956750221%_
                                           _%tl4956950224%_)
                                          (if (gx#stx-pair? _%hd4952250348%_)
                                              (let ((_%e4965149805%_
                                                     (gx#syntax-e
                                                      _%hd4952250348%_)))
                                                (let ((_%tl4965349812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4965149805%_)))
                                                      (_%hd4965249809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4965149805%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4947549684%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4947549684%_))))))
                                  (if (gx#stx-pair? _%hd4952250348%_)
                                      (let ((_%e4965149805%_
                                             (gx#syntax-e _%hd4952250348%_)))
                                        (let ((_%tl4965349812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4965149805%_)))
                                              (_%hd4965249809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4965149805%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_))))
                              (if (gx#identifier? _%hd4952550358%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g88424_|
                                       _%hd4952550358%_)
                                      (if (gx#stx-pair? _%tl4952950371%_)
                                          (let ((_%e4962349937%_
                                                 (gx#syntax-e
                                                  _%tl4952950371%_)))
                                            (let ((_%tl4962549944%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4962349937%_)))
                                                  (_%hd4962449941%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4962349937%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4962549944%_)
                                                  (let ((_%e4962649947%_
                                                         (gx#syntax-e
                                                          _%tl4962549944%_)))
                                                    (let ((_%tl4962849954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4962649947%_)))
                                                          (_%hd4962749951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4962649947%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4962849954%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4952050341%_)
                                                              (let ((_%__splice8276182762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4952050341%_
                              '0)))
                        (let ((_%tl4963149960%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8276182762%_ '1)))
                              (_%target4962949957%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8276182762%_ '0))))
                          (if (gx#stx-null? _%tl4963149960%_)
                              (_%__match8301983020%_
                               _%e4951550324%_
                               _%hd4951650328%_
                               _%tl4951750331%_
                               _%e4951850334%_
                               _%hd4951950338%_
                               _%tl4952050341%_
                               _%e4952150344%_
                               _%hd4952250348%_
                               _%tl4952350351%_
                               _%e4952450354%_
                               _%hd4952550358%_
                               _%tl4952650361%_
                               _%e4952750364%_
                               _%hd4952850368%_
                               _%tl4952950371%_
                               _%e4962349937%_
                               _%hd4962449941%_
                               _%tl4962549944%_
                               _%e4962649947%_
                               _%hd4962749951%_
                               _%tl4962849954%_
                               _%__splice8276182762%_
                               _%target4962949957%_
                               _%tl4963149960%_)
                              (if (gx#stx-pair? _%hd4952250348%_)
                                  (let ((_%e4965149805%_
                                         (gx#syntax-e _%hd4952250348%_)))
                                    (let ((_%tl4965349812%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4965149805%_)))
                                          (_%hd4965249809%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4965149805%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_))))))
                      (if (gx#stx-pair? _%hd4952250348%_)
                          (let ((_%e4965149805%_
                                 (gx#syntax-e _%hd4952250348%_)))
                            (let ((_%tl4965349812%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4965149805%_)))
                                  (_%hd4965249809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4965149805%_))))
                              (let () (declare (not safe)) (_%g4947549684%_))))
                          (let () (declare (not safe)) (_%g4947549684%_))))
                  (if (gx#stx-pair? _%hd4952250348%_)
                      (let ((_%e4965149805%_ (gx#syntax-e _%hd4952250348%_)))
                        (let ((_%tl4965349812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4965149805%_)))
                              (_%hd4965249809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4965149805%_))))
                          (if (gx#stx-pair/null? _%tl4952050341%_)
                              (let ((_%__splice8276582766%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4952050341%_
                                      '0)))
                                (let ((_%tl4965649818%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8276582766%_
                                          '1)))
                                      (_%target4965449815%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8276582766%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4965649818%_)
                                      (_%__match8305183052%_
                                       _%e4951550324%_
                                       _%hd4951650328%_
                                       _%tl4951750331%_
                                       _%e4951850334%_
                                       _%hd4951950338%_
                                       _%tl4952050341%_
                                       _%e4952150344%_
                                       _%hd4952250348%_
                                       _%tl4952350351%_
                                       _%e4965149805%_
                                       _%hd4965249809%_
                                       _%tl4965349812%_
                                       _%__splice8276582766%_
                                       _%target4965449815%_
                                       _%tl4965649818%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4947549684%_)))))
                      (let () (declare (not safe)) (_%g4947549684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4952250348%_)
                                                      (let ((_%e4965149805%_
                                                             (gx#syntax-e
                                                              _%hd4952250348%_)))
                                                        (let ((_%tl4965349812%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4965149805%_)))
                      (_%hd4965249809%_
                       (let () (declare (not safe)) (##car _%e4965149805%_))))
                  (if (gx#stx-pair/null? _%tl4952050341%_)
                      (let ((_%__splice8276582766%_
                             (gx#syntax-split-splice->vector
                              _%tl4952050341%_
                              '0)))
                        (let ((_%tl4965649818%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8276582766%_ '1)))
                              (_%target4965449815%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8276582766%_ '0))))
                          (if (gx#stx-null? _%tl4965649818%_)
                              (_%__match8305183052%_
                               _%e4951550324%_
                               _%hd4951650328%_
                               _%tl4951750331%_
                               _%e4951850334%_
                               _%hd4951950338%_
                               _%tl4952050341%_
                               _%e4952150344%_
                               _%hd4952250348%_
                               _%tl4952350351%_
                               _%e4965149805%_
                               _%hd4965249809%_
                               _%tl4965349812%_
                               _%__splice8276582766%_
                               _%target4965449815%_
                               _%tl4965649818%_)
                              (let ()
                                (declare (not safe))
                                (_%g4947549684%_)))))
                      (let () (declare (not safe)) (_%g4947549684%_)))))
              (let () (declare (not safe)) (_%g4947549684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4952250348%_)
                                              (let ((_%e4965149805%_
                                                     (gx#syntax-e
                                                      _%hd4952250348%_)))
                                                (let ((_%tl4965349812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4965149805%_)))
                                                      (_%hd4965249809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4965149805%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4952050341%_)
                                                      (let ((_%__splice8276582766%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4952050341%_
                                                              '0)))
                                                        (let ((_%tl4965649818%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8276582766%_ '1)))
                      (_%target4965449815%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8276582766%_ '0))))
                  (if (gx#stx-null? _%tl4965649818%_)
                      (_%__match8305183052%_
                       _%e4951550324%_
                       _%hd4951650328%_
                       _%tl4951750331%_
                       _%e4951850334%_
                       _%hd4951950338%_
                       _%tl4952050341%_
                       _%e4952150344%_
                       _%hd4952250348%_
                       _%tl4952350351%_
                       _%e4965149805%_
                       _%hd4965249809%_
                       _%tl4965349812%_
                       _%__splice8276582766%_
                       _%target4965449815%_
                       _%tl4965649818%_)
                      (let () (declare (not safe)) (_%g4947549684%_)))))
              (let () (declare (not safe)) (_%g4947549684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4947549684%_))))
                                      (if (gx#stx-pair? _%hd4952250348%_)
                                          (let ((_%e4965149805%_
                                                 (gx#syntax-e
                                                  _%hd4952250348%_)))
                                            (let ((_%tl4965349812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4965149805%_)))
                                                  (_%hd4965249809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4965149805%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4952050341%_)
                                                  (let ((_%__splice8276582766%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4952050341%_
                                                          '0)))
                                                    (let ((_%tl4965649818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8276582766%_
                                                              '1)))
                                                          (_%target4965449815%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8276582766%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4965649818%_)
                                                          (_%__match8305183052%_
                                                           _%e4951550324%_
                                                           _%hd4951650328%_
                                                           _%tl4951750331%_
                                                           _%e4951850334%_
                                                           _%hd4951950338%_
                                                           _%tl4952050341%_
                                                           _%e4952150344%_
                                                           _%hd4952250348%_
                                                           _%tl4952350351%_
                                                           _%e4965149805%_
                                                           _%hd4965249809%_
                                                           _%tl4965349812%_
                                                           _%__splice8276582766%_
                                                           _%target4965449815%_
                                                           _%tl4965649818%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4947549684%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4947549684%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_))))
                                  (if (gx#stx-pair? _%hd4952250348%_)
                                      (let ((_%e4965149805%_
                                             (gx#syntax-e _%hd4952250348%_)))
                                        (let ((_%tl4965349812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4965149805%_)))
                                              (_%hd4965249809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4965149805%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4952050341%_)
                                              (let ((_%__splice8276582766%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4952050341%_
                                                      '0)))
                                                (let ((_%tl4965649818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8276582766%_
                                                          '1)))
                                                      (_%target4965449815%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8276582766%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4965649818%_)
                                                      (_%__match8305183052%_
                                                       _%e4951550324%_
                                                       _%hd4951650328%_
                                                       _%tl4951750331%_
                                                       _%e4951850334%_
                                                       _%hd4951950338%_
                                                       _%tl4952050341%_
                                                       _%e4952150344%_
                                                       _%hd4952250348%_
                                                       _%tl4952350351%_
                                                       _%e4965149805%_
                                                       _%hd4965249809%_
                                                       _%tl4965349812%_
                                                       _%__splice8276582766%_
                                                       _%target4965449815%_
                                                       _%tl4965649818%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4947549684%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4947549684%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_))))))))
                   (_%__match8281782818%_
                    (lambda (_%e4948250500%_
                             _%hd4948350504%_
                             _%tl4948450507%_
                             _%e4948550510%_
                             _%hd4948650514%_
                             _%tl4948750517%_
                             _%e4948850520%_
                             _%hd4948950524%_
                             _%tl4949050527%_
                             _%e4949150530%_
                             _%hd4949250534%_
                             _%tl4949350537%_
                             _%e4949450540%_
                             _%hd4949550544%_
                             _%tl4949650547%_
                             _%e4949750550%_
                             _%hd4949850554%_
                             _%tl4949950557%_
                             _%__splice8274582746%_
                             _%target4950050560%_
                             _%tl4950250563%_)
                      (letrec ((_%loop4950350566%_
                                (lambda (_%hd4950150570%_ _%body4950750573%_)
                                  (if (gx#stx-pair? _%hd4950150570%_)
                                      (let ((_%e4950450576%_
                                             (gx#syntax-e _%hd4950150570%_)))
                                        (let ((_%lp-tl4950650583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4950450576%_)))
                                              (_%lp-hd4950550580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4950450576%_))))
                                          (_%loop4950350566%_
                                           _%lp-tl4950650583%_
                                           (cons _%lp-hd4950550580%_
                                                 _%body4950750573%_))))
                                      (let ((_%body4950850586%_
                                             (reverse _%body4950750573%_)))
                                        (let ((_%L50590%_ _%body4950850586%_)
                                              (_%L50592%_ _%hd4949850554%_)
                                              (_%L50593%_ _%hd4949550544%_)
                                              (_%L50594%_ _%hd4949250534%_)
                                              (_%L50595%_ _%hd4948950524%_))
                                          (if (and (gx#identifier? _%L50595%_)
                                                   (gx#identifier? _%L50593%_)
                                                   (or (gx#free-identifier=?
                                                        _%L50593%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L50593%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L50593%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L50593%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L50593%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8274382744%_
                                               _%L50590%_
                                               _%L50592%_
                                               _%L50593%_
                                               _%L50594%_
                                               _%L50595%_)
                                              (_%__match8284782848%_
                                               _%e4948250500%_
                                               _%hd4948350504%_
                                               _%tl4948450507%_
                                               _%e4948550510%_
                                               _%hd4948650514%_
                                               _%tl4948750517%_
                                               _%e4948850520%_
                                               _%hd4948950524%_
                                               _%tl4949050527%_
                                               _%e4949150530%_
                                               _%hd4949250534%_
                                               _%tl4949350537%_
                                               _%e4949450540%_
                                               _%hd4949550544%_
                                               _%tl4949650547%_))))))))
                        (_%loop4950350566%_ _%target4950050560%_ '())))))
              (if (gx#stx-pair? _%__stx8274082741%_)
                  (let ((_%e4948250500%_ (gx#syntax-e _%__stx8274082741%_)))
                    (let ((_%tl4948450507%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4948250500%_)))
                          (_%hd4948350504%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4948250500%_))))
                      (if (gx#stx-pair? _%tl4948450507%_)
                          (let ((_%e4948550510%_
                                 (gx#syntax-e _%tl4948450507%_)))
                            (let ((_%tl4948750517%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4948550510%_)))
                                  (_%hd4948650514%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4948550510%_))))
                              (if (gx#stx-pair? _%hd4948650514%_)
                                  (let ((_%e4948850520%_
                                         (gx#syntax-e _%hd4948650514%_)))
                                    (let ((_%tl4949050527%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4948850520%_)))
                                          (_%hd4948950524%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4948850520%_))))
                                      (if (gx#stx-pair? _%tl4949050527%_)
                                          (let ((_%e4949150530%_
                                                 (gx#syntax-e
                                                  _%tl4949050527%_)))
                                            (let ((_%tl4949350537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4949150530%_)))
                                                  (_%hd4949250534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4949150530%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4949350537%_)
                                                  (let ((_%e4949450540%_
                                                         (gx#syntax-e
                                                          _%tl4949350537%_)))
                                                    (let ((_%tl4949650547%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4949450540%_)))
                                                          (_%hd4949550544%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4949450540%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4949650547%_)
                                                          (let ((_%e4949750550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4949650547%_)))
                    (let ((_%tl4949950557%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4949750550%_)))
                          (_%hd4949850554%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4949750550%_))))
                      (if (gx#stx-null? _%tl4949950557%_)
                          (if (gx#stx-pair/null? _%tl4948750517%_)
                              (let ((_%__splice8274582746%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4948750517%_
                                      '0)))
                                (let ((_%tl4950250563%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8274582746%_
                                          '1)))
                                      (_%target4950050560%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8274582746%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4950250563%_)
                                      (_%__match8281782818%_
                                       _%e4948250500%_
                                       _%hd4948350504%_
                                       _%tl4948450507%_
                                       _%e4948550510%_
                                       _%hd4948650514%_
                                       _%tl4948750517%_
                                       _%e4948850520%_
                                       _%hd4948950524%_
                                       _%tl4949050527%_
                                       _%e4949150530%_
                                       _%hd4949250534%_
                                       _%tl4949350537%_
                                       _%e4949450540%_
                                       _%hd4949550544%_
                                       _%tl4949650547%_
                                       _%e4949750550%_
                                       _%hd4949850554%_
                                       _%tl4949950557%_
                                       _%__splice8274582746%_
                                       _%target4950050560%_
                                       _%tl4950250563%_)
                                      (if (gx#stx-pair? _%hd4948950524%_)
                                          (let ((_%e4965149805%_
                                                 (gx#syntax-e
                                                  _%hd4948950524%_)))
                                            (let ((_%tl4965349812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4965149805%_)))
                                                  (_%hd4965249809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4965149805%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4947549684%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_))))))
                              (if (gx#stx-pair? _%hd4948950524%_)
                                  (let ((_%e4965149805%_
                                         (gx#syntax-e _%hd4948950524%_)))
                                    (let ((_%tl4965349812%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4965149805%_)))
                                          (_%hd4965249809%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4965149805%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_))))
                          (if (gx#identifier? _%hd4949550544%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g88425_|
                                   _%hd4949550544%_)
                                  (if (gx#stx-pair? _%tl4949950557%_)
                                      (let ((_%e4953350384%_
                                             (gx#syntax-e _%tl4949950557%_)))
                                        (let ((_%tl4953550391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4953350384%_)))
                                              (_%hd4953450388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4953350384%_))))
                                          (if (gx#stx-pair? _%tl4953550391%_)
                                              (let ((_%e4953650394%_
                                                     (gx#syntax-e
                                                      _%tl4953550391%_)))
                                                (let ((_%tl4953850401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4953650394%_)))
                                                      (_%hd4953750398%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4953650394%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4953850401%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4948750517%_)
                                                          (let ((_%__splice8274982750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4948750517%_ '0)))
                    (let ((_%tl4954150407%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8274982750%_ '1)))
                          (_%target4953950404%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8274982750%_ '0))))
                      (if (gx#stx-null? _%tl4954150407%_)
                          (_%__match8287982880%_
                           _%e4948250500%_
                           _%hd4948350504%_
                           _%tl4948450507%_
                           _%e4948550510%_
                           _%hd4948650514%_
                           _%tl4948750517%_
                           _%e4948850520%_
                           _%hd4948950524%_
                           _%tl4949050527%_
                           _%e4949150530%_
                           _%hd4949250534%_
                           _%tl4949350537%_
                           _%e4949450540%_
                           _%hd4949550544%_
                           _%tl4949650547%_
                           _%e4949750550%_
                           _%hd4949850554%_
                           _%tl4949950557%_
                           _%e4953350384%_
                           _%hd4953450388%_
                           _%tl4953550391%_
                           _%e4953650394%_
                           _%hd4953750398%_
                           _%tl4953850401%_
                           _%__splice8274982750%_
                           _%target4953950404%_
                           _%tl4954150407%_)
                          (if (gx#stx-pair? _%hd4948950524%_)
                              (let ((_%e4965149805%_
                                     (gx#syntax-e _%hd4948950524%_)))
                                (let ((_%tl4965349812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4965149805%_)))
                                      (_%hd4965249809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4965149805%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4947549684%_))))))
                  (if (gx#stx-pair? _%hd4948950524%_)
                      (let ((_%e4965149805%_ (gx#syntax-e _%hd4948950524%_)))
                        (let ((_%tl4965349812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4965149805%_)))
                              (_%hd4965249809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4965149805%_))))
                          (let () (declare (not safe)) (_%g4947549684%_))))
                      (let () (declare (not safe)) (_%g4947549684%_))))
              (if (gx#stx-pair? _%hd4948950524%_)
                  (let ((_%e4965149805%_ (gx#syntax-e _%hd4948950524%_)))
                    (let ((_%tl4965349812%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4965149805%_)))
                          (_%hd4965249809%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4965149805%_))))
                      (if (gx#stx-pair/null? _%tl4948750517%_)
                          (let ((_%__splice8276582766%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4948750517%_
                                  '0)))
                            (let ((_%tl4965649818%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8276582766%_ '1)))
                                  (_%target4965449815%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8276582766%_
                                      '0))))
                              (if (gx#stx-null? _%tl4965649818%_)
                                  (_%__match8305183052%_
                                   _%e4948250500%_
                                   _%hd4948350504%_
                                   _%tl4948450507%_
                                   _%e4948550510%_
                                   _%hd4948650514%_
                                   _%tl4948750517%_
                                   _%e4948850520%_
                                   _%hd4948950524%_
                                   _%tl4949050527%_
                                   _%e4965149805%_
                                   _%hd4965249809%_
                                   _%tl4965349812%_
                                   _%__splice8276582766%_
                                   _%target4965449815%_
                                   _%tl4965649818%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_)))))
                          (let () (declare (not safe)) (_%g4947549684%_)))))
                  (let () (declare (not safe)) (_%g4947549684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4949250534%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g88424_|
                                                       _%hd4949250534%_)
                                                      (if (gx#stx-null?
                                                           _%tl4953550391%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4948750517%_)
                                                              (let ((_%__splice8276182762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4948750517%_
                              '0)))
                        (let ((_%tl4963149960%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8276182762%_ '1)))
                              (_%target4962949957%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8276182762%_ '0))))
                          (if (gx#stx-null? _%tl4963149960%_)
                              (_%__match8301983020%_
                               _%e4948250500%_
                               _%hd4948350504%_
                               _%tl4948450507%_
                               _%e4948550510%_
                               _%hd4948650514%_
                               _%tl4948750517%_
                               _%e4948850520%_
                               _%hd4948950524%_
                               _%tl4949050527%_
                               _%e4949150530%_
                               _%hd4949250534%_
                               _%tl4949350537%_
                               _%e4949450540%_
                               _%hd4949550544%_
                               _%tl4949650547%_
                               _%e4949750550%_
                               _%hd4949850554%_
                               _%tl4949950557%_
                               _%e4953350384%_
                               _%hd4953450388%_
                               _%tl4953550391%_
                               _%__splice8276182762%_
                               _%target4962949957%_
                               _%tl4963149960%_)
                              (if (gx#stx-pair? _%hd4948950524%_)
                                  (let ((_%e4965149805%_
                                         (gx#syntax-e _%hd4948950524%_)))
                                    (let ((_%tl4965349812%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4965149805%_)))
                                          (_%hd4965249809%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4965149805%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_))))))
                      (if (gx#stx-pair? _%hd4948950524%_)
                          (let ((_%e4965149805%_
                                 (gx#syntax-e _%hd4948950524%_)))
                            (let ((_%tl4965349812%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4965149805%_)))
                                  (_%hd4965249809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4965149805%_))))
                              (let () (declare (not safe)) (_%g4947549684%_))))
                          (let () (declare (not safe)) (_%g4947549684%_))))
                  (if (gx#stx-pair? _%hd4948950524%_)
                      (let ((_%e4965149805%_ (gx#syntax-e _%hd4948950524%_)))
                        (let ((_%tl4965349812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4965149805%_)))
                              (_%hd4965249809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4965149805%_))))
                          (if (gx#stx-pair/null? _%tl4948750517%_)
                              (let ((_%__splice8276582766%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4948750517%_
                                      '0)))
                                (let ((_%tl4965649818%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8276582766%_
                                          '1)))
                                      (_%target4965449815%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8276582766%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4965649818%_)
                                      (_%__match8305183052%_
                                       _%e4948250500%_
                                       _%hd4948350504%_
                                       _%tl4948450507%_
                                       _%e4948550510%_
                                       _%hd4948650514%_
                                       _%tl4948750517%_
                                       _%e4948850520%_
                                       _%hd4948950524%_
                                       _%tl4949050527%_
                                       _%e4965149805%_
                                       _%hd4965249809%_
                                       _%tl4965349812%_
                                       _%__splice8276582766%_
                                       _%target4965449815%_
                                       _%tl4965649818%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4947549684%_)))))
                      (let () (declare (not safe)) (_%g4947549684%_))))
              (if (gx#stx-pair? _%hd4948950524%_)
                  (let ((_%e4965149805%_ (gx#syntax-e _%hd4948950524%_)))
                    (let ((_%tl4965349812%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4965149805%_)))
                          (_%hd4965249809%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4965149805%_))))
                      (if (gx#stx-pair/null? _%tl4948750517%_)
                          (let ((_%__splice8276582766%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4948750517%_
                                  '0)))
                            (let ((_%tl4965649818%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8276582766%_ '1)))
                                  (_%target4965449815%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8276582766%_
                                      '0))))
                              (if (gx#stx-null? _%tl4965649818%_)
                                  (_%__match8305183052%_
                                   _%e4948250500%_
                                   _%hd4948350504%_
                                   _%tl4948450507%_
                                   _%e4948550510%_
                                   _%hd4948650514%_
                                   _%tl4948750517%_
                                   _%e4948850520%_
                                   _%hd4948950524%_
                                   _%tl4949050527%_
                                   _%e4965149805%_
                                   _%hd4965249809%_
                                   _%tl4965349812%_
                                   _%__splice8276582766%_
                                   _%target4965449815%_
                                   _%tl4965649818%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_)))))
                          (let () (declare (not safe)) (_%g4947549684%_)))))
                  (let () (declare (not safe)) (_%g4947549684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4948950524%_)
                                                      (let ((_%e4965149805%_
                                                             (gx#syntax-e
                                                              _%hd4948950524%_)))
                                                        (let ((_%tl4965349812%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4965149805%_)))
                      (_%hd4965249809%_
                       (let () (declare (not safe)) (##car _%e4965149805%_))))
                  (if (gx#stx-pair/null? _%tl4948750517%_)
                      (let ((_%__splice8276582766%_
                             (gx#syntax-split-splice->vector
                              _%tl4948750517%_
                              '0)))
                        (let ((_%tl4965649818%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8276582766%_ '1)))
                              (_%target4965449815%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8276582766%_ '0))))
                          (if (gx#stx-null? _%tl4965649818%_)
                              (_%__match8305183052%_
                               _%e4948250500%_
                               _%hd4948350504%_
                               _%tl4948450507%_
                               _%e4948550510%_
                               _%hd4948650514%_
                               _%tl4948750517%_
                               _%e4948850520%_
                               _%hd4948950524%_
                               _%tl4949050527%_
                               _%e4965149805%_
                               _%hd4965249809%_
                               _%tl4965349812%_
                               _%__splice8276582766%_
                               _%target4965449815%_
                               _%tl4965649818%_)
                              (let ()
                                (declare (not safe))
                                (_%g4947549684%_)))))
                      (let () (declare (not safe)) (_%g4947549684%_)))))
              (let () (declare (not safe)) (_%g4947549684%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4948950524%_)
                                          (let ((_%e4965149805%_
                                                 (gx#syntax-e
                                                  _%hd4948950524%_)))
                                            (let ((_%tl4965349812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4965149805%_)))
                                                  (_%hd4965249809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4965149805%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4948750517%_)
                                                  (let ((_%__splice8276582766%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4948750517%_
                                                          '0)))
                                                    (let ((_%tl4965649818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8276582766%_
                                                              '1)))
                                                          (_%target4965449815%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8276582766%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4965649818%_)
                                                          (_%__match8305183052%_
                                                           _%e4948250500%_
                                                           _%hd4948350504%_
                                                           _%tl4948450507%_
                                                           _%e4948550510%_
                                                           _%hd4948650514%_
                                                           _%tl4948750517%_
                                                           _%e4948850520%_
                                                           _%hd4948950524%_
                                                           _%tl4949050527%_
                                                           _%e4965149805%_
                                                           _%hd4965249809%_
                                                           _%tl4965349812%_
                                                           _%__splice8276582766%_
                                                           _%target4965449815%_
                                                           _%tl4965649818%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4947549684%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4947549684%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_))))
                                  (if (gx#identifier? _%hd4949250534%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g88424_|
                                           _%hd4949250534%_)
                                          (if (gx#stx-pair? _%tl4949950557%_)
                                              (let ((_%e4962649947%_
                                                     (gx#syntax-e
                                                      _%tl4949950557%_)))
                                                (let ((_%tl4962849954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4962649947%_)))
                                                      (_%hd4962749951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4962649947%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4962849954%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4948750517%_)
                                                          (let ((_%__splice8276182762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4948750517%_ '0)))
                    (let ((_%tl4963149960%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8276182762%_ '1)))
                          (_%target4962949957%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8276182762%_ '0))))
                      (if (gx#stx-null? _%tl4963149960%_)
                          (_%__match8301983020%_
                           _%e4948250500%_
                           _%hd4948350504%_
                           _%tl4948450507%_
                           _%e4948550510%_
                           _%hd4948650514%_
                           _%tl4948750517%_
                           _%e4948850520%_
                           _%hd4948950524%_
                           _%tl4949050527%_
                           _%e4949150530%_
                           _%hd4949250534%_
                           _%tl4949350537%_
                           _%e4949450540%_
                           _%hd4949550544%_
                           _%tl4949650547%_
                           _%e4949750550%_
                           _%hd4949850554%_
                           _%tl4949950557%_
                           _%e4962649947%_
                           _%hd4962749951%_
                           _%tl4962849954%_
                           _%__splice8276182762%_
                           _%target4962949957%_
                           _%tl4963149960%_)
                          (if (gx#stx-pair? _%hd4948950524%_)
                              (let ((_%e4965149805%_
                                     (gx#syntax-e _%hd4948950524%_)))
                                (let ((_%tl4965349812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4965149805%_)))
                                      (_%hd4965249809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4965149805%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4947549684%_))))))
                  (if (gx#stx-pair? _%hd4948950524%_)
                      (let ((_%e4965149805%_ (gx#syntax-e _%hd4948950524%_)))
                        (let ((_%tl4965349812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4965149805%_)))
                              (_%hd4965249809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4965149805%_))))
                          (let () (declare (not safe)) (_%g4947549684%_))))
                      (let () (declare (not safe)) (_%g4947549684%_))))
              (if (gx#stx-pair? _%hd4948950524%_)
                  (let ((_%e4965149805%_ (gx#syntax-e _%hd4948950524%_)))
                    (let ((_%tl4965349812%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4965149805%_)))
                          (_%hd4965249809%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4965149805%_))))
                      (if (gx#stx-pair/null? _%tl4948750517%_)
                          (let ((_%__splice8276582766%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4948750517%_
                                  '0)))
                            (let ((_%tl4965649818%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8276582766%_ '1)))
                                  (_%target4965449815%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8276582766%_
                                      '0))))
                              (if (gx#stx-null? _%tl4965649818%_)
                                  (_%__match8305183052%_
                                   _%e4948250500%_
                                   _%hd4948350504%_
                                   _%tl4948450507%_
                                   _%e4948550510%_
                                   _%hd4948650514%_
                                   _%tl4948750517%_
                                   _%e4948850520%_
                                   _%hd4948950524%_
                                   _%tl4949050527%_
                                   _%e4965149805%_
                                   _%hd4965249809%_
                                   _%tl4965349812%_
                                   _%__splice8276582766%_
                                   _%target4965449815%_
                                   _%tl4965649818%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_)))))
                          (let () (declare (not safe)) (_%g4947549684%_)))))
                  (let () (declare (not safe)) (_%g4947549684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4948950524%_)
                                                  (let ((_%e4965149805%_
                                                         (gx#syntax-e
                                                          _%hd4948950524%_)))
                                                    (let ((_%tl4965349812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4965149805%_)))
                                                          (_%hd4965249809%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4965149805%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4948750517%_)
                                                          (let ((_%__splice8276582766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4948750517%_ '0)))
                    (let ((_%tl4965649818%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8276582766%_ '1)))
                          (_%target4965449815%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8276582766%_ '0))))
                      (if (gx#stx-null? _%tl4965649818%_)
                          (_%__match8305183052%_
                           _%e4948250500%_
                           _%hd4948350504%_
                           _%tl4948450507%_
                           _%e4948550510%_
                           _%hd4948650514%_
                           _%tl4948750517%_
                           _%e4948850520%_
                           _%hd4948950524%_
                           _%tl4949050527%_
                           _%e4965149805%_
                           _%hd4965249809%_
                           _%tl4965349812%_
                           _%__splice8276582766%_
                           _%target4965449815%_
                           _%tl4965649818%_)
                          (let () (declare (not safe)) (_%g4947549684%_)))))
                  (let () (declare (not safe)) (_%g4947549684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4947549684%_))))
                                          (if (gx#stx-pair? _%hd4948950524%_)
                                              (let ((_%e4965149805%_
                                                     (gx#syntax-e
                                                      _%hd4948950524%_)))
                                                (let ((_%tl4965349812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4965149805%_)))
                                                      (_%hd4965249809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4965149805%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4948750517%_)
                                                      (let ((_%__splice8276582766%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4948750517%_
                                                              '0)))
                                                        (let ((_%tl4965649818%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8276582766%_ '1)))
                      (_%target4965449815%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8276582766%_ '0))))
                  (if (gx#stx-null? _%tl4965649818%_)
                      (_%__match8305183052%_
                       _%e4948250500%_
                       _%hd4948350504%_
                       _%tl4948450507%_
                       _%e4948550510%_
                       _%hd4948650514%_
                       _%tl4948750517%_
                       _%e4948850520%_
                       _%hd4948950524%_
                       _%tl4949050527%_
                       _%e4965149805%_
                       _%hd4965249809%_
                       _%tl4965349812%_
                       _%__splice8276582766%_
                       _%target4965449815%_
                       _%tl4965649818%_)
                      (let () (declare (not safe)) (_%g4947549684%_)))))
              (let () (declare (not safe)) (_%g4947549684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4947549684%_))))
                                      (if (gx#stx-pair? _%hd4948950524%_)
                                          (let ((_%e4965149805%_
                                                 (gx#syntax-e
                                                  _%hd4948950524%_)))
                                            (let ((_%tl4965349812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4965149805%_)))
                                                  (_%hd4965249809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4965149805%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4948750517%_)
                                                  (let ((_%__splice8276582766%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4948750517%_
                                                          '0)))
                                                    (let ((_%tl4965649818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8276582766%_
                                                              '1)))
                                                          (_%target4965449815%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8276582766%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4965649818%_)
                                                          (_%__match8305183052%_
                                                           _%e4948250500%_
                                                           _%hd4948350504%_
                                                           _%tl4948450507%_
                                                           _%e4948550510%_
                                                           _%hd4948650514%_
                                                           _%tl4948750517%_
                                                           _%e4948850520%_
                                                           _%hd4948950524%_
                                                           _%tl4949050527%_
                                                           _%e4965149805%_
                                                           _%hd4965249809%_
                                                           _%tl4965349812%_
                                                           _%__splice8276582766%_
                                                           _%target4965449815%_
                                                           _%tl4965649818%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4947549684%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4947549684%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_)))))
                              (if (gx#identifier? _%hd4949250534%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g88424_|
                                       _%hd4949250534%_)
                                      (if (gx#stx-pair? _%tl4949950557%_)
                                          (let ((_%e4962649947%_
                                                 (gx#syntax-e
                                                  _%tl4949950557%_)))
                                            (let ((_%tl4962849954%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4962649947%_)))
                                                  (_%hd4962749951%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4962649947%_))))
                                              (if (gx#stx-null?
                                                   _%tl4962849954%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4948750517%_)
                                                      (let ((_%__splice8276182762%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4948750517%_
                                                              '0)))
                                                        (let ((_%tl4963149960%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8276182762%_ '1)))
                      (_%target4962949957%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8276182762%_ '0))))
                  (if (gx#stx-null? _%tl4963149960%_)
                      (_%__match8301983020%_
                       _%e4948250500%_
                       _%hd4948350504%_
                       _%tl4948450507%_
                       _%e4948550510%_
                       _%hd4948650514%_
                       _%tl4948750517%_
                       _%e4948850520%_
                       _%hd4948950524%_
                       _%tl4949050527%_
                       _%e4949150530%_
                       _%hd4949250534%_
                       _%tl4949350537%_
                       _%e4949450540%_
                       _%hd4949550544%_
                       _%tl4949650547%_
                       _%e4949750550%_
                       _%hd4949850554%_
                       _%tl4949950557%_
                       _%e4962649947%_
                       _%hd4962749951%_
                       _%tl4962849954%_
                       _%__splice8276182762%_
                       _%target4962949957%_
                       _%tl4963149960%_)
                      (if (gx#stx-pair? _%hd4948950524%_)
                          (let ((_%e4965149805%_
                                 (gx#syntax-e _%hd4948950524%_)))
                            (let ((_%tl4965349812%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4965149805%_)))
                                  (_%hd4965249809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4965149805%_))))
                              (let () (declare (not safe)) (_%g4947549684%_))))
                          (let () (declare (not safe)) (_%g4947549684%_))))))
              (if (gx#stx-pair? _%hd4948950524%_)
                  (let ((_%e4965149805%_ (gx#syntax-e _%hd4948950524%_)))
                    (let ((_%tl4965349812%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4965149805%_)))
                          (_%hd4965249809%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4965149805%_))))
                      (let () (declare (not safe)) (_%g4947549684%_))))
                  (let () (declare (not safe)) (_%g4947549684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4948950524%_)
                                                      (let ((_%e4965149805%_
                                                             (gx#syntax-e
                                                              _%hd4948950524%_)))
                                                        (let ((_%tl4965349812%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4965149805%_)))
                      (_%hd4965249809%_
                       (let () (declare (not safe)) (##car _%e4965149805%_))))
                  (if (gx#stx-pair/null? _%tl4948750517%_)
                      (let ((_%__splice8276582766%_
                             (gx#syntax-split-splice->vector
                              _%tl4948750517%_
                              '0)))
                        (let ((_%tl4965649818%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8276582766%_ '1)))
                              (_%target4965449815%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8276582766%_ '0))))
                          (if (gx#stx-null? _%tl4965649818%_)
                              (_%__match8305183052%_
                               _%e4948250500%_
                               _%hd4948350504%_
                               _%tl4948450507%_
                               _%e4948550510%_
                               _%hd4948650514%_
                               _%tl4948750517%_
                               _%e4948850520%_
                               _%hd4948950524%_
                               _%tl4949050527%_
                               _%e4965149805%_
                               _%hd4965249809%_
                               _%tl4965349812%_
                               _%__splice8276582766%_
                               _%target4965449815%_
                               _%tl4965649818%_)
                              (let ()
                                (declare (not safe))
                                (_%g4947549684%_)))))
                      (let () (declare (not safe)) (_%g4947549684%_)))))
              (let () (declare (not safe)) (_%g4947549684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4948950524%_)
                                              (let ((_%e4965149805%_
                                                     (gx#syntax-e
                                                      _%hd4948950524%_)))
                                                (let ((_%tl4965349812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4965149805%_)))
                                                      (_%hd4965249809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4965149805%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4948750517%_)
                                                      (let ((_%__splice8276582766%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4948750517%_
                                                              '0)))
                                                        (let ((_%tl4965649818%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8276582766%_ '1)))
                      (_%target4965449815%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8276582766%_ '0))))
                  (if (gx#stx-null? _%tl4965649818%_)
                      (_%__match8305183052%_
                       _%e4948250500%_
                       _%hd4948350504%_
                       _%tl4948450507%_
                       _%e4948550510%_
                       _%hd4948650514%_
                       _%tl4948750517%_
                       _%e4948850520%_
                       _%hd4948950524%_
                       _%tl4949050527%_
                       _%e4965149805%_
                       _%hd4965249809%_
                       _%tl4965349812%_
                       _%__splice8276582766%_
                       _%target4965449815%_
                       _%tl4965649818%_)
                      (let () (declare (not safe)) (_%g4947549684%_)))))
              (let () (declare (not safe)) (_%g4947549684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4947549684%_))))
                                      (if (gx#stx-pair? _%hd4948950524%_)
                                          (let ((_%e4965149805%_
                                                 (gx#syntax-e
                                                  _%hd4948950524%_)))
                                            (let ((_%tl4965349812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4965149805%_)))
                                                  (_%hd4965249809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4965149805%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4948750517%_)
                                                  (let ((_%__splice8276582766%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4948750517%_
                                                          '0)))
                                                    (let ((_%tl4965649818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8276582766%_
                                                              '1)))
                                                          (_%target4965449815%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8276582766%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4965649818%_)
                                                          (_%__match8305183052%_
                                                           _%e4948250500%_
                                                           _%hd4948350504%_
                                                           _%tl4948450507%_
                                                           _%e4948550510%_
                                                           _%hd4948650514%_
                                                           _%tl4948750517%_
                                                           _%e4948850520%_
                                                           _%hd4948950524%_
                                                           _%tl4949050527%_
                                                           _%e4965149805%_
                                                           _%hd4965249809%_
                                                           _%tl4965349812%_
                                                           _%__splice8276582766%_
                                                           _%target4965449815%_
                                                           _%tl4965649818%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4947549684%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4947549684%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_))))
                                  (if (gx#stx-pair? _%hd4948950524%_)
                                      (let ((_%e4965149805%_
                                             (gx#syntax-e _%hd4948950524%_)))
                                        (let ((_%tl4965349812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4965149805%_)))
                                              (_%hd4965249809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4965149805%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4948750517%_)
                                              (let ((_%__splice8276582766%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4948750517%_
                                                      '0)))
                                                (let ((_%tl4965649818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8276582766%_
                                                          '1)))
                                                      (_%target4965449815%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8276582766%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4965649818%_)
                                                      (_%__match8305183052%_
                                                       _%e4948250500%_
                                                       _%hd4948350504%_
                                                       _%tl4948450507%_
                                                       _%e4948550510%_
                                                       _%hd4948650514%_
                                                       _%tl4948750517%_
                                                       _%e4948850520%_
                                                       _%hd4948950524%_
                                                       _%tl4949050527%_
                                                       _%e4965149805%_
                                                       _%hd4965249809%_
                                                       _%tl4965349812%_
                                                       _%__splice8276582766%_
                                                       _%target4965449815%_
                                                       _%tl4965649818%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4947549684%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4947549684%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_))))))))
                  (if (gx#stx-null? _%tl4949650547%_)
                      (if (gx#stx-pair/null? _%tl4948750517%_)
                          (let ((_%__splice8275382754%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4948750517%_
                                  '0)))
                            (let ((_%tl4956950224%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8275382754%_ '1)))
                                  (_%target4956750221%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8275382754%_
                                      '0))))
                              (if (gx#stx-null? _%tl4956950224%_)
                                  (_%__match8291982920%_
                                   _%e4948250500%_
                                   _%hd4948350504%_
                                   _%tl4948450507%_
                                   _%e4948550510%_
                                   _%hd4948650514%_
                                   _%tl4948750517%_
                                   _%e4948850520%_
                                   _%hd4948950524%_
                                   _%tl4949050527%_
                                   _%e4949150530%_
                                   _%hd4949250534%_
                                   _%tl4949350537%_
                                   _%e4949450540%_
                                   _%hd4949550544%_
                                   _%tl4949650547%_
                                   _%__splice8275382754%_
                                   _%target4956750221%_
                                   _%tl4956950224%_)
                                  (if (gx#stx-pair? _%hd4948950524%_)
                                      (let ((_%e4965149805%_
                                             (gx#syntax-e _%hd4948950524%_)))
                                        (let ((_%tl4965349812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4965149805%_)))
                                              (_%hd4965249809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4965149805%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_))))))
                          (if (gx#stx-pair? _%hd4948950524%_)
                              (let ((_%e4965149805%_
                                     (gx#syntax-e _%hd4948950524%_)))
                                (let ((_%tl4965349812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4965149805%_)))
                                      (_%hd4965249809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4965149805%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_))))
                              (let () (declare (not safe)) (_%g4947549684%_))))
                      (if (gx#stx-pair? _%hd4948950524%_)
                          (let ((_%e4965149805%_
                                 (gx#syntax-e _%hd4948950524%_)))
                            (let ((_%tl4965349812%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4965149805%_)))
                                  (_%hd4965249809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4965149805%_))))
                              (if (gx#stx-pair/null? _%tl4948750517%_)
                                  (let ((_%__splice8276582766%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4948750517%_
                                          '0)))
                                    (let ((_%tl4965649818%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8276582766%_
                                              '1)))
                                          (_%target4965449815%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8276582766%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4965649818%_)
                                          (_%__match8305183052%_
                                           _%e4948250500%_
                                           _%hd4948350504%_
                                           _%tl4948450507%_
                                           _%e4948550510%_
                                           _%hd4948650514%_
                                           _%tl4948750517%_
                                           _%e4948850520%_
                                           _%hd4948950524%_
                                           _%tl4949050527%_
                                           _%e4965149805%_
                                           _%hd4965249809%_
                                           _%tl4965349812%_
                                           _%__splice8276582766%_
                                           _%target4965449815%_
                                           _%tl4965649818%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4947549684%_)))))
                          (let () (declare (not safe)) (_%g4947549684%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4948950524%_)
                                                      (let ((_%e4965149805%_
                                                             (gx#syntax-e
                                                              _%hd4948950524%_)))
                                                        (let ((_%tl4965349812%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4965149805%_)))
                      (_%hd4965249809%_
                       (let () (declare (not safe)) (##car _%e4965149805%_))))
                  (if (gx#stx-pair/null? _%tl4948750517%_)
                      (let ((_%__splice8276582766%_
                             (gx#syntax-split-splice->vector
                              _%tl4948750517%_
                              '0)))
                        (let ((_%tl4965649818%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8276582766%_ '1)))
                              (_%target4965449815%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8276582766%_ '0))))
                          (if (gx#stx-null? _%tl4965649818%_)
                              (_%__match8305183052%_
                               _%e4948250500%_
                               _%hd4948350504%_
                               _%tl4948450507%_
                               _%e4948550510%_
                               _%hd4948650514%_
                               _%tl4948750517%_
                               _%e4948850520%_
                               _%hd4948950524%_
                               _%tl4949050527%_
                               _%e4965149805%_
                               _%hd4965249809%_
                               _%tl4965349812%_
                               _%__splice8276582766%_
                               _%target4965449815%_
                               _%tl4965649818%_)
                              (let ()
                                (declare (not safe))
                                (_%g4947549684%_)))))
                      (let () (declare (not safe)) (_%g4947549684%_)))))
              (let () (declare (not safe)) (_%g4947549684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4948950524%_)
                                              (let ((_%e4965149805%_
                                                     (gx#syntax-e
                                                      _%hd4948950524%_)))
                                                (let ((_%tl4965349812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4965149805%_)))
                                                      (_%hd4965249809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4965149805%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4948750517%_)
                                                      (let ((_%__splice8276582766%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4948750517%_
                                                              '0)))
                                                        (let ((_%tl4965649818%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8276582766%_ '1)))
                      (_%target4965449815%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8276582766%_ '0))))
                  (if (gx#stx-null? _%tl4965649818%_)
                      (_%__match8305183052%_
                       _%e4948250500%_
                       _%hd4948350504%_
                       _%tl4948450507%_
                       _%e4948550510%_
                       _%hd4948650514%_
                       _%tl4948750517%_
                       _%e4948850520%_
                       _%hd4948950524%_
                       _%tl4949050527%_
                       _%e4965149805%_
                       _%hd4965249809%_
                       _%tl4965349812%_
                       _%__splice8276582766%_
                       _%target4965449815%_
                       _%tl4965649818%_)
                      (let () (declare (not safe)) (_%g4947549684%_)))))
              (let () (declare (not safe)) (_%g4947549684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4947549684%_))))))
                                  (if (gx#stx-null? _%hd4948650514%_)
                                      (if (gx#stx-pair/null? _%tl4948750517%_)
                                          (let ((_%__splice8276982770%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4948750517%_
                                                  '0)))
                                            (let ((_%tl4967249714%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8276982770%_
                                                      '1)))
                                                  (_%target4967049711%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8276982770%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4967249714%_)
                                                  (_%__match8307383074%_
                                                   _%e4948250500%_
                                                   _%hd4948350504%_
                                                   _%tl4948450507%_
                                                   _%e4948550510%_
                                                   _%hd4948650514%_
                                                   _%tl4948750517%_
                                                   _%__splice8276982770%_
                                                   _%target4967049711%_
                                                   _%tl4967249714%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4947549684%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4947549684%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4947549684%_))))))
                          (let () (declare (not safe)) (_%g4947549684%_)))))
                  (let () (declare (not safe)) (_%g4947549684%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx50658%_)
        (let* ((_%g5066250696%_
                (lambda (_%g5066350692%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5066350692%_)))
               (_%g5066150819%_
                (lambda (_%g5066350700%_)
                  (if (gx#stx-pair? _%g5066350700%_)
                      (let ((_%e5066750703%_ (gx#syntax-e _%g5066350700%_)))
                        (let ((_%hd5066850707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5066750703%_)))
                              (_%tl5066950710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5066750703%_))))
                          (if (gx#stx-pair? _%tl5066950710%_)
                              (let ((_%e5067050713%_
                                     (gx#syntax-e _%tl5066950710%_)))
                                (let ((_%hd5067150717%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5067050713%_)))
                                      (_%tl5067250720%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5067050713%_))))
                                  (if (gx#stx-pair? _%hd5067150717%_)
                                      (let ((_%e5067350723%_
                                             (gx#syntax-e _%hd5067150717%_)))
                                        (let ((_%hd5067450727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5067350723%_)))
                                              (_%tl5067550730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5067350723%_))))
                                          (if (gx#stx-pair? _%tl5067550730%_)
                                              (let ((_%e5067650733%_
                                                     (gx#syntax-e
                                                      _%tl5067550730%_)))
                                                (let ((_%hd5067750737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5067650733%_)))
                                                      (_%tl5067850740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5067650733%_))))
                                                  (if (gx#identifier?
                                                       _%hd5067750737%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g88426_|
                                                           _%hd5067750737%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5067850740%_)
                                                              (let ((_%e5067950743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5067850740%_)))
                        (let ((_%hd5068050747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5067950743%_)))
                              (_%tl5068150750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5067950743%_))))
                          (if (gx#stx-null? _%tl5068150750%_)
                              (if (gx#stx-pair/null? _%tl5067250720%_)
                                  (let ((_g88427_
                                         (gx#syntax-split-splice
                                          _%tl5067250720%_
                                          '0)))
                                    (begin
                                      (let ((_g88428_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g88427_)
                                                   (##values-length _g88427_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g88428_ 2)))
                                            (error "Context expects 2 values"
                                                   _g88428_)))
                                      (let ((_%target5068250753%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g88427_ 0)))
                                            (_%tl5068450756%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g88427_ 1))))
                                        (if (gx#stx-null? _%tl5068450756%_)
                                            (letrec ((_%loop5068550759%_
                                                      (lambda (_%hd5068350763%_
                                                               _%body5068950766%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5068350763%_)
                                                            (let ((_%e5068650769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5068350763%_)))
                      (let ((_%lp-hd5068750773%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5068650769%_)))
                            (_%lp-tl5068850776%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5068650769%_))))
                        (_%loop5068550759%_
                         _%lp-tl5068850776%_
                         (cons _%lp-hd5068750773%_ _%body5068950766%_))))
                    (let ((_%body5069050779%_ (reverse _%body5068950766%_)))
                      ((lambda (_%L50783%_ _%L50785%_ _%L50786%_)
                         (if (gx#identifier? _%L50786%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L50785%_
                                               (cons _%L50786%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g5081050813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g5081150816%_)
                            (cons _%g5081050813%_ _%g5081150816%_))
                          '()
                          _%L50783%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L50786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L50785%_ (cons _%L50786%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g5066250696%_ _%g5066350700%_)))
                       _%body5069050779%_
                       _%hd5068050747%_
                       _%hd5067450727%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5068550759%_
                                               _%target5068250753%_
                                               '()))
                                            (_%g5066250696%_
                                             _%g5066350700%_)))))
                                  (_%g5066250696%_ _%g5066350700%_))
                              (_%g5066250696%_ _%g5066350700%_))))
                      (_%g5066250696%_ _%g5066350700%_))
                  (_%g5066250696%_ _%g5066350700%_))
              (_%g5066250696%_ _%g5066350700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5066250696%_
                                               _%g5066350700%_))))
                                      (_%g5066250696%_ _%g5066350700%_))))
                              (_%g5066250696%_ _%g5066350700%_))))
                      (_%g5066250696%_ _%g5066350700%_)))))
          (_%g5066150819%_ _%$stx50658%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass51386%_ _%slot51388%_)
        (let ((_%$e51390%_
               (let ((__obj88247 _%klass51386%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj88247
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj88247 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj88247
                      'slot-types)))))
          (if _%$e51390%_
              ((lambda (_%slot-types51394%_)
                 (agetq _%slot51388%_ _%slot-types51394%_))
               _%$e51390%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass51367%_ _%slot51369%_)
        (let ((_%$e51371%_
               (let ((__obj88248 _%klass51367%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj88248
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj88248 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj88248
                      'slot-defaults)))))
          (if _%$e51371%_
              ((lambda (_%slot-defaults51375%_)
                 (let ((_%$e51378%_
                        (agetq _%slot51369%_ _%slot-defaults51375%_)))
                   (if _%$e51378%_
                       (gx#syntax-local-introduce _%$e51378%_)
                       '#f)))
               _%$e51371%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass51348%_ _%slot51350%_)
        (let ((_%$e51352%_
               (let ((__obj88249 _%klass51348%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj88249
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj88249 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj88249
                      'slot-defaults)))))
          (if _%$e51352%_
              ((lambda (_%slot-defaults51356%_)
                 (let ((_%$e51359%_
                        (agetq _%slot51350%_ _%slot-defaults51356%_)))
                   (if _%$e51359%_
                       (gx#syntax-local-introduce _%$e51359%_)
                       '#f)))
               _%$e51352%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass51116%_ _%slot51118%_)
        (let ((_%contract5111951121%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass51116%_
                _%slot51118%_)))
          (if _%contract5111951121%_
              (let* ((_%contract51125%_ _%contract5111951121%_)
                     (_%__stx8307683077%_ _%contract51125%_)
                     (_%g5113051167%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx8307683077%_))))
                (let ((_%__kont8307983080%_
                       (lambda (_%L51317%_ _%L51319%_)
                         (not (gx#free-identifier=?
                               _%L51319%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8308183082%_
                       (lambda (_%L51257%_ _%L51259%_ _%L51260%_)
                         (not (gx#free-identifier=?
                               _%L51259%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8308383084%_ (lambda (_%L51194%_) '#f)))
                  (let* ((_%__match8312983130%_
                          (lambda (_%e5114351217%_
                                   _%hd5114451221%_
                                   _%tl5114551224%_
                                   _%e5114651227%_
                                   _%hd5114751231%_
                                   _%tl5114851234%_
                                   _%e5114951237%_
                                   _%hd5115051241%_
                                   _%tl5115151244%_
                                   _%e5115251247%_
                                   _%hd5115351251%_
                                   _%tl5115451254%_)
                            (let ((_%L51257%_ _%hd5115351251%_)
                                  (_%L51259%_ _%hd5115051241%_)
                                  (_%L51260%_ _%hd5114751231%_))
                              (if (and (gx#identifier? _%L51259%_)
                                       (or (gx#free-identifier=?
                                            _%L51259%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51259%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51259%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51259%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8308183082%_
                                   _%L51257%_
                                   _%L51259%_
                                   _%L51260%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5113051167%_))))))
                         (_%__match8309983100%_
                          (lambda (_%e5113451297%_
                                   _%hd5113551301%_
                                   _%tl5113651304%_
                                   _%e5113751307%_
                                   _%hd5113851311%_
                                   _%tl5113951314%_)
                            (let ((_%L51317%_ _%hd5113851311%_)
                                  (_%L51319%_ _%hd5113551301%_))
                              (if (and (gx#identifier? _%L51319%_)
                                       (or (gx#free-identifier=?
                                            _%L51319%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51319%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51319%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51319%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8307983080%_ _%L51317%_ _%L51319%_)
                                  (if (gx#identifier? _%hd5113551301%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g88429_|
                                           _%hd5113551301%_)
                                          (_%__kont8308383084%_
                                           _%hd5113851311%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5113051167%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5113051167%_))))))))
                    (if (gx#stx-pair? _%__stx8307683077%_)
                        (let ((_%e5113451297%_
                               (gx#syntax-e _%__stx8307683077%_)))
                          (let ((_%tl5113651304%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5113451297%_)))
                                (_%hd5113551301%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5113451297%_))))
                            (if (gx#stx-pair? _%tl5113651304%_)
                                (let ((_%e5113751307%_
                                       (gx#syntax-e _%tl5113651304%_)))
                                  (let ((_%tl5113951314%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5113751307%_)))
                                        (_%hd5113851311%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5113751307%_))))
                                    (if (gx#stx-null? _%tl5113951314%_)
                                        (_%__match8309983100%_
                                         _%e5113451297%_
                                         _%hd5113551301%_
                                         _%tl5113651304%_
                                         _%e5113751307%_
                                         _%hd5113851311%_
                                         _%tl5113951314%_)
                                        (if (gx#identifier? _%hd5113551301%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g88429_|
                                                 _%hd5113551301%_)
                                                (if (gx#stx-pair?
                                                     _%tl5113951314%_)
                                                    (let ((_%e5114951237%_
                                                           (gx#syntax-e
                                                            _%tl5113951314%_)))
                                                      (let ((_%tl5115151244%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5114951237%_)))
                    (_%hd5115051241%_
                     (let () (declare (not safe)) (##car _%e5114951237%_))))
                (if (gx#stx-pair? _%tl5115151244%_)
                    (let ((_%e5115251247%_ (gx#syntax-e _%tl5115151244%_)))
                      (let ((_%tl5115451254%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5115251247%_)))
                            (_%hd5115351251%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5115251247%_))))
                        (if (gx#stx-null? _%tl5115451254%_)
                            (_%__match8312983130%_
                             _%e5113451297%_
                             _%hd5113551301%_
                             _%tl5113651304%_
                             _%e5113751307%_
                             _%hd5113851311%_
                             _%tl5113951314%_
                             _%e5114951237%_
                             _%hd5115051241%_
                             _%tl5115151244%_
                             _%e5115251247%_
                             _%hd5115351251%_
                             _%tl5115451254%_)
                            (let () (declare (not safe)) (_%g5113051167%_)))))
                    (let () (declare (not safe)) (_%g5113051167%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5113051167%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5113051167%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5113051167%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5113051167%_)))))
                        (let () (declare (not safe)) (_%g5113051167%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass50884%_ _%slot50886%_)
        (let ((_%contract5088750889%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass50884%_
                _%slot50886%_)))
          (if _%contract5088750889%_
              (let* ((_%contract50893%_ _%contract5088750889%_)
                     (_%__stx8315083151%_ _%contract50893%_)
                     (_%g5089850935%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx8315083151%_))))
                (let ((_%__kont8315383154%_
                       (lambda (_%L51085%_ _%L51087%_)
                         (not (gx#free-identifier=?
                               _%L51087%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8315583156%_
                       (lambda (_%L51025%_ _%L51027%_ _%L51028%_) '#t))
                      (_%__kont8315783158%_ (lambda (_%L50962%_) '#t)))
                  (let* ((_%__match8320383204%_
                          (lambda (_%e5091150985%_
                                   _%hd5091250989%_
                                   _%tl5091350992%_
                                   _%e5091450995%_
                                   _%hd5091550999%_
                                   _%tl5091651002%_
                                   _%e5091751005%_
                                   _%hd5091851009%_
                                   _%tl5091951012%_
                                   _%e5092051015%_
                                   _%hd5092151019%_
                                   _%tl5092251022%_)
                            (let ((_%L51025%_ _%hd5092151019%_)
                                  (_%L51027%_ _%hd5091851009%_)
                                  (_%L51028%_ _%hd5091550999%_))
                              (if (and (gx#identifier? _%L51027%_)
                                       (or (gx#free-identifier=?
                                            _%L51027%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51027%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51027%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51027%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8315583156%_
                                   _%L51025%_
                                   _%L51027%_
                                   _%L51028%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5089850935%_))))))
                         (_%__match8317383174%_
                          (lambda (_%e5090251065%_
                                   _%hd5090351069%_
                                   _%tl5090451072%_
                                   _%e5090551075%_
                                   _%hd5090651079%_
                                   _%tl5090751082%_)
                            (let ((_%L51085%_ _%hd5090651079%_)
                                  (_%L51087%_ _%hd5090351069%_))
                              (if (and (gx#identifier? _%L51087%_)
                                       (or (gx#free-identifier=?
                                            _%L51087%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51087%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51087%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51087%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8315383154%_ _%L51085%_ _%L51087%_)
                                  (if (gx#identifier? _%hd5090351069%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g88430_|
                                           _%hd5090351069%_)
                                          (_%__kont8315783158%_
                                           _%hd5090651079%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5089850935%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5089850935%_))))))))
                    (if (gx#stx-pair? _%__stx8315083151%_)
                        (let ((_%e5090251065%_
                               (gx#syntax-e _%__stx8315083151%_)))
                          (let ((_%tl5090451072%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5090251065%_)))
                                (_%hd5090351069%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5090251065%_))))
                            (if (gx#stx-pair? _%tl5090451072%_)
                                (let ((_%e5090551075%_
                                       (gx#syntax-e _%tl5090451072%_)))
                                  (let ((_%tl5090751082%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5090551075%_)))
                                        (_%hd5090651079%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5090551075%_))))
                                    (if (gx#stx-null? _%tl5090751082%_)
                                        (_%__match8317383174%_
                                         _%e5090251065%_
                                         _%hd5090351069%_
                                         _%tl5090451072%_
                                         _%e5090551075%_
                                         _%hd5090651079%_
                                         _%tl5090751082%_)
                                        (if (gx#identifier? _%hd5090351069%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g88430_|
                                                 _%hd5090351069%_)
                                                (if (gx#stx-pair?
                                                     _%tl5090751082%_)
                                                    (let ((_%e5091751005%_
                                                           (gx#syntax-e
                                                            _%tl5090751082%_)))
                                                      (let ((_%tl5091951012%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5091751005%_)))
                    (_%hd5091851009%_
                     (let () (declare (not safe)) (##car _%e5091751005%_))))
                (if (gx#stx-pair? _%tl5091951012%_)
                    (let ((_%e5092051015%_ (gx#syntax-e _%tl5091951012%_)))
                      (let ((_%tl5092251022%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5092051015%_)))
                            (_%hd5092151019%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5092051015%_))))
                        (if (gx#stx-null? _%tl5092251022%_)
                            (_%__match8320383204%_
                             _%e5090251065%_
                             _%hd5090351069%_
                             _%tl5090451072%_
                             _%e5090551075%_
                             _%hd5090651079%_
                             _%tl5090751082%_
                             _%e5091751005%_
                             _%hd5091851009%_
                             _%tl5091951012%_
                             _%e5092051015%_
                             _%hd5092151019%_
                             _%tl5092251022%_)
                            (let () (declare (not safe)) (_%g5089850935%_)))))
                    (let () (declare (not safe)) (_%g5089850935%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5089850935%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5089850935%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5089850935%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5089850935%_)))))
                        (let () (declare (not safe)) (_%g5089850935%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id50870%_)
        (if (gx#identifier? _%id50870%_)
            (let* ((_%str50873%_ (symbol->string (gx#stx-e _%id50870%_)))
                   (_%index5087550877%_ (string-index _%str50873%_ '#\.)))
              (if _%index5087550877%_
                  (let ((_%index50881%_ _%index5087550877%_))
                    (if (let () (declare (not safe)) (##fx> _%index50881%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str50873%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx50863%_ _%id50865%_)
        (let ((_%parts50867%_
               (string-split (symbol->string (gx#stx-e _%id50865%_)) '#\.)))
          (if (find string-empty? _%parts50867%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx50863%_
               _%id50865%_)
              (cons (gx#stx-identifier _%id50865%_ (car _%parts50867%_))
                    (map string->symbol (cdr _%parts50867%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx50844%_ _%klass-or-id50846%_ _%slot50847%_)
        (let* ((_%klass50849%_
                (if (gx#identifier? _%klass-or-id50846%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx50844%_
                       _%klass-or-id50846%_))
                    _%klass-or-id50846%_))
               (_%accessors50852%_
                (let ((__obj88250 _%klass50849%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj88250
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj88250 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj88250
                       'unchecked-accessors))))
               (_%$e50857%_ (agetq _%slot50847%_ _%accessors50852%_)))
          (if _%$e50857%_
              _%$e50857%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx50844%_
               _%klass50849%_
               _%slot50847%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx50824%_
               _%klass-or-id50826%_
               _%slot50827%_
               _%checked?50828%_)
        (let* ((_%klass50830%_
                (if (gx#identifier? _%klass-or-id50826%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx50824%_
                       _%klass-or-id50826%_))
                    _%klass-or-id50826%_))
               (_%mutators50833%_
                (if _%checked?50828%_
                    (let ((__obj88251 _%klass50830%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj88251
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj88251 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj88251
                           'mutators)))
                    (let ((__obj88252 _%klass50830%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj88252
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj88252 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj88252
                           'unchecked-mutators)))))
               (_%$e50838%_ (agetq _%slot50827%_ _%mutators50833%_)))
          (if _%$e50838%_
              _%$e50838%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx50824%_
               _%klass50830%_
               _%slot50827%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx51399%_)
        (letrec ((_%expand-body51402%_
                  (lambda (_%klass52310%_
                           _%var52312%_
                           _%Type52313%_
                           _%body52314%_
                           _%checked?52315%_)
                    (let* ((_%g5231752361%_
                            (lambda (_%g5231852357%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5231852357%_)))
                           (_%g5231652518%_
                            (lambda (_%g5231852365%_)
                              (if (gx#stx-pair? _%g5231852365%_)
                                  (let ((_%e5232652368%_
                                         (gx#syntax-e _%g5231852365%_)))
                                    (let ((_%hd5232752372%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5232652368%_)))
                                          (_%tl5232852375%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5232652368%_))))
                                      (if (gx#stx-pair? _%tl5232852375%_)
                                          (let ((_%e5232952378%_
                                                 (gx#syntax-e
                                                  _%tl5232852375%_)))
                                            (let ((_%hd5233052382%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5232952378%_)))
                                                  (_%tl5233152385%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5232952378%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5233152385%_)
                                                  (let ((_%e5233252388%_
                                                         (gx#syntax-e
                                                          _%tl5233152385%_)))
                                                    (let ((_%hd5233352392%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5233252388%_)))
                                                          (_%tl5233452395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5233252388%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5233452395%_)
                                                          (let ((_%e5233552398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5233452395%_)))
                    (let ((_%hd5233652402%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5233552398%_)))
                          (_%tl5233752405%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5233552398%_))))
                      (if (gx#stx-pair? _%tl5233752405%_)
                          (let ((_%e5233852408%_
                                 (gx#syntax-e _%tl5233752405%_)))
                            (let ((_%hd5233952412%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5233852408%_)))
                                  (_%tl5234052415%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5233852408%_))))
                              (if (gx#stx-pair? _%tl5234052415%_)
                                  (let ((_%e5234152418%_
                                         (gx#syntax-e _%tl5234052415%_)))
                                    (let ((_%hd5234252422%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5234152418%_)))
                                          (_%tl5234352425%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5234152418%_))))
                                      (if (gx#stx-pair? _%tl5234352425%_)
                                          (let ((_%e5234452428%_
                                                 (gx#syntax-e
                                                  _%tl5234352425%_)))
                                            (let ((_%hd5234552432%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5234452428%_)))
                                                  (_%tl5234652435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5234452428%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5234552432%_)
                                                  (let ((_g88431_
                                                         (gx#syntax-split-splice
                                                          _%hd5234552432%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g88432_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g88431_)
                           (##values-length _g88431_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g88432_ 2)))
                    (error "Context expects 2 values" _g88432_)))
              (let ((_%target5234752438%_
                     (let () (declare (not safe)) (##values-ref _g88431_ 0)))
                    (_%tl5234952441%_
                     (let () (declare (not safe)) (##values-ref _g88431_ 1))))
                (if (gx#stx-null? _%tl5234952441%_)
                    (letrec ((_%loop5235052444%_
                              (lambda (_%hd5234852448%_ _%body5235452451%_)
                                (if (gx#stx-pair? _%hd5234852448%_)
                                    (let ((_%e5235152454%_
                                           (gx#syntax-e _%hd5234852448%_)))
                                      (let ((_%lp-hd5235252458%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5235152454%_)))
                                            (_%lp-tl5235352461%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5235152454%_))))
                                        (_%loop5235052444%_
                                         _%lp-tl5235352461%_
                                         (cons _%lp-hd5235252458%_
                                               _%body5235452451%_))))
                                    (let ((_%body5235552464%_
                                           (reverse _%body5235452451%_)))
                                      (if (gx#stx-null? _%tl5234652435%_)
                                          ((lambda (_%L52468%_
                                                    _%L52470%_
                                                    _%L52471%_
                                                    _%L52472%_
                                                    _%L52473%_
                                                    _%L52474%_
                                                    _%L52475%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L52473%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L52474%_ '()))
                                         (cons _%L52473%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L52475%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L52473%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L52472%_ '()))
                               (cons _%L52471%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L52470%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5250952512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5251052515%_)
                      (cons _%g5250952512%_ _%g5251052515%_))
                    '()
                    _%L52468%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5235552464%_
                                           _%hd5234252422%_
                                           _%hd5233952412%_
                                           _%hd5233652402%_
                                           _%hd5233352392%_
                                           _%hd5233052382%_
                                           _%hd5232752372%_)
                                          (_%g5231752361%_
                                           _%g5231852365%_)))))))
                      (_%loop5235052444%_ _%target5234752438%_ '()))
                    (_%g5231752361%_ _%g5231852365%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5231752361%_
                                                   _%g5231852365%_))))
                                          (_%g5231752361%_ _%g5231852365%_))))
                                  (_%g5231752361%_ _%g5231852365%_))))
                          (_%g5231752361%_ _%g5231852365%_))))
                  (_%g5231752361%_ _%g5231852365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5231752361%_
                                                   _%g5231852365%_))))
                                          (_%g5231752361%_ _%g5231852365%_))))
                                  (_%g5231752361%_ _%g5231852365%_)))))
                      (_%g5231652518%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj88253 _%klass52310%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj88253
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj88253
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj88253
                                    'type-descriptor)))
                             _%var52312%_
                             _%klass52310%_
                             _%checked?52315%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body52314%_)))))
                 (_%expand51404%_
                  (lambda (_%var52202%_
                           _%Type52204%_
                           _%body52205%_
                           _%checked?52206%_
                           _%checked-mutators?52207%_
                           _%maybe?52208%_)
                    (let* ((_%klass52210%_
                            (gx#syntax-local-value _%Type52204%_ false))
                           (_%expr-body52217%_
                            (_%expand-body51402%_
                             _%klass52210%_
                             _%var52202%_
                             _%Type52204%_
                             _%body52205%_
                             (let ((_%$e52213%_ _%checked?52206%_))
                               (if _%$e52213%_
                                   _%$e52213%_
                                   _%checked-mutators?52207%_)))))
                      (if _%checked?52206%_
                          (let* ((_%g5222252241%_
                                  (lambda (_%g5222352237%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5222352237%_)))
                                 (_%g5222152303%_
                                  (lambda (_%g5222352245%_)
                                    (if (gx#stx-pair? _%g5222352245%_)
                                        (let ((_%e5222752248%_
                                               (gx#syntax-e _%g5222352245%_)))
                                          (let ((_%hd5222852252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5222752248%_)))
                                                (_%tl5222952255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5222752248%_))))
                                            (if (gx#stx-pair? _%tl5222952255%_)
                                                (let ((_%e5223052258%_
                                                       (gx#syntax-e
                                                        _%tl5222952255%_)))
                                                  (let ((_%hd5223152262%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5223052258%_)))
                                                        (_%tl5223252265%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5223052258%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5223252265%_)
                                                        (let ((_%e5223352268%_
                                                               (gx#syntax-e
                                                                _%tl5223252265%_)))
                                                          (let ((_%hd5223452272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5223352268%_)))
                        (_%tl5223552275%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5223352268%_))))
                    (if (gx#stx-null? _%tl5223552275%_)
                        ((lambda (_%L52278%_ _%L52280%_ _%L52281%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L52280%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L52281%_ '())))
                                       (cons _%L52278%_ '()))))
                         _%hd5223452272%_
                         _%hd5223152262%_
                         _%hd5222852252%_)
                        (_%g5222252241%_ _%g5222352245%_))))
                (_%g5222252241%_ _%g5222352245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5222252241%_
                                                 _%g5222352245%_))))
                                        (_%g5222252241%_ _%g5222352245%_)))))
                            (_%g5222152303%_
                             (list (let ((_%instance?52307%_
                                          (let ((__obj88254 _%klass52210%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj88254
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj88254
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj88254
                                                 'predicate)))))
                                     (if _%maybe?52208%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?52307%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?52307%_))
                                   _%var52202%_
                                   _%expr-body52217%_)))
                          _%expr-body52217%_)))))
          (let* ((_%__stx8322483225%_ _%stx51399%_)
                 (_%g5141051553%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8322483225%_))))
            (let ((_%__kont8322783228%_
                   (lambda (_%L52130%_ _%L52132%_ _%L52133%_ _%L52134%_)
                     (let* ((_%g5215952167%_
                             (lambda (_%g5216052163%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5216052163%_)))
                            (_%g5215852194%_
                             (lambda (_%g5216052171%_)
                               ((lambda (_%L52174%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%L52134%_
                                                    (cons _%L52133%_
                                                          (cons _%L52174%_
                                                                '())))
                                              (foldr (lambda (_%g5218552188%_
                                                              _%g5218652191%_)
                                                       (cons _%g5218552188%_
                                                             _%g5218652191%_))
                                                     '()
                                                     _%L52130%_))))
                                _%g5216052171%_))))
                       (_%g5215852194%_
                        (let ((__obj88255 (gx#syntax-local-value _%L52132%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj88255
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj88255
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj88255
                               'identifier)))))))
                  (_%__kont8323183232%_
                   (lambda (_%L52008%_ _%L52010%_ _%L52011%_)
                     (_%expand51404%_
                      _%L52011%_
                      _%L52010%_
                      (foldr (lambda (_%g5203452037%_ _%g5203552040%_)
                               (cons _%g5203452037%_ _%g5203552040%_))
                             '()
                             _%L52008%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8323583236%_
                   (lambda (_%L51886%_ _%L51888%_ _%L51889%_)
                     (_%expand51404%_
                      _%L51889%_
                      _%L51888%_
                      (foldr (lambda (_%g5191251915%_ _%g5191351918%_)
                               (cons _%g5191251915%_ _%g5191351918%_))
                             '()
                             _%L51886%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8323983240%_
                   (lambda (_%L51764%_ _%L51766%_ _%L51767%_)
                     (_%expand51404%_
                      _%L51767%_
                      _%L51766%_
                      (foldr (lambda (_%g5179051793%_ _%g5179151796%_)
                               (cons _%g5179051793%_ _%g5179151796%_))
                             '()
                             _%L51764%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8324383244%_
                   (lambda (_%L51640%_ _%L51642%_ _%L51643%_)
                     (_%expand51404%_
                      _%L51643%_
                      _%L51642%_
                      (foldr (lambda (_%g5166851671%_ _%g5166951674%_)
                               (cons _%g5166851671%_ _%g5166951674%_))
                             '()
                             _%L51640%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8346383464%_
                      (lambda (_%e5152451560%_
                               _%hd5152551564%_
                               _%tl5152651567%_
                               _%e5152751570%_
                               _%hd5152851574%_
                               _%tl5152951577%_
                               _%e5153051580%_
                               _%hd5153151584%_
                               _%tl5153251587%_
                               _%e5153351590%_
                               _%hd5153451594%_
                               _%tl5153551597%_
                               _%e5153651600%_
                               _%hd5153751604%_
                               _%tl5153851607%_
                               _%__splice8324583246%_
                               _%target5153951610%_
                               _%tl5154151613%_)
                        (letrec ((_%loop5154251616%_
                                  (lambda (_%hd5154051620%_ _%body5154651623%_)
                                    (if (gx#stx-pair? _%hd5154051620%_)
                                        (let ((_%e5154351626%_
                                               (gx#syntax-e _%hd5154051620%_)))
                                          (let ((_%lp-tl5154551633%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5154351626%_)))
                                                (_%lp-hd5154451630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5154351626%_))))
                                            (_%loop5154251616%_
                                             _%lp-tl5154551633%_
                                             (cons _%lp-hd5154451630%_
                                                   _%body5154651623%_))))
                                        (let ((_%body5154751636%_
                                               (reverse _%body5154651623%_)))
                                          (let ((_%L51640%_ _%body5154751636%_)
                                                (_%L51642%_ _%hd5153751604%_)
                                                (_%L51643%_ _%hd5153151584%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L51642%_))
                                                (_%__kont8324383244%_
                                                 _%L51640%_
                                                 _%L51642%_
                                                 _%L51643%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5141051553%_)))))))))
                          (_%loop5154251616%_ _%target5153951610%_ '()))))
                     (_%__match8341983420%_
                      (lambda (_%e5149751684%_
                               _%hd5149851688%_
                               _%tl5149951691%_
                               _%e5150051694%_
                               _%hd5150151698%_
                               _%tl5150251701%_
                               _%e5150351704%_
                               _%hd5150451708%_
                               _%tl5150551711%_
                               _%e5150651714%_
                               _%hd5150751718%_
                               _%tl5150851721%_
                               _%e5150951724%_
                               _%hd5151051728%_
                               _%tl5151151731%_
                               _%__splice8324183242%_
                               _%target5151251734%_
                               _%tl5151451737%_)
                        (letrec ((_%loop5151551740%_
                                  (lambda (_%hd5151351744%_ _%body5151951747%_)
                                    (if (gx#stx-pair? _%hd5151351744%_)
                                        (let ((_%e5151651750%_
                                               (gx#syntax-e _%hd5151351744%_)))
                                          (let ((_%lp-tl5151851757%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5151651750%_)))
                                                (_%lp-hd5151751754%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5151651750%_))))
                                            (_%loop5151551740%_
                                             _%lp-tl5151851757%_
                                             (cons _%lp-hd5151751754%_
                                                   _%body5151951747%_))))
                                        (let ((_%body5152051760%_
                                               (reverse _%body5151951747%_)))
                                          (let ((_%L51764%_ _%body5152051760%_)
                                                (_%L51766%_ _%hd5151051728%_)
                                                (_%L51767%_ _%hd5150451708%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L51766%_))
                                                (_%__kont8323983240%_
                                                 _%L51764%_
                                                 _%L51766%_
                                                 _%L51767%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5141051553%_)))))))))
                          (_%loop5151551740%_ _%target5151251734%_ '()))))
                     (_%__match8337583376%_
                      (lambda (_%e5147051806%_
                               _%hd5147151810%_
                               _%tl5147251813%_
                               _%e5147351816%_
                               _%hd5147451820%_
                               _%tl5147551823%_
                               _%e5147651826%_
                               _%hd5147751830%_
                               _%tl5147851833%_
                               _%e5147951836%_
                               _%hd5148051840%_
                               _%tl5148151843%_
                               _%e5148251846%_
                               _%hd5148351850%_
                               _%tl5148451853%_
                               _%__splice8323783238%_
                               _%target5148551856%_
                               _%tl5148751859%_)
                        (letrec ((_%loop5148851862%_
                                  (lambda (_%hd5148651866%_ _%body5149251869%_)
                                    (if (gx#stx-pair? _%hd5148651866%_)
                                        (let ((_%e5148951872%_
                                               (gx#syntax-e _%hd5148651866%_)))
                                          (let ((_%lp-tl5149151879%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5148951872%_)))
                                                (_%lp-hd5149051876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5148951872%_))))
                                            (_%loop5148851862%_
                                             _%lp-tl5149151879%_
                                             (cons _%lp-hd5149051876%_
                                                   _%body5149251869%_))))
                                        (let ((_%body5149351882%_
                                               (reverse _%body5149251869%_)))
                                          (let ((_%L51886%_ _%body5149351882%_)
                                                (_%L51888%_ _%hd5148351850%_)
                                                (_%L51889%_ _%hd5147751830%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L51888%_))
                                                (_%__kont8323583236%_
                                                 _%L51886%_
                                                 _%L51888%_
                                                 _%L51889%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5141051553%_)))))))))
                          (_%loop5148851862%_ _%target5148551856%_ '()))))
                     (_%__match8333183332%_
                      (lambda (_%e5144351928%_
                               _%hd5144451932%_
                               _%tl5144551935%_
                               _%e5144651938%_
                               _%hd5144751942%_
                               _%tl5144851945%_
                               _%e5144951948%_
                               _%hd5145051952%_
                               _%tl5145151955%_
                               _%e5145251958%_
                               _%hd5145351962%_
                               _%tl5145451965%_
                               _%e5145551968%_
                               _%hd5145651972%_
                               _%tl5145751975%_
                               _%__splice8323383234%_
                               _%target5145851978%_
                               _%tl5146051981%_)
                        (letrec ((_%loop5146151984%_
                                  (lambda (_%hd5145951988%_ _%body5146551991%_)
                                    (if (gx#stx-pair? _%hd5145951988%_)
                                        (let ((_%e5146251994%_
                                               (gx#syntax-e _%hd5145951988%_)))
                                          (let ((_%lp-tl5146452001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5146251994%_)))
                                                (_%lp-hd5146351998%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5146251994%_))))
                                            (_%loop5146151984%_
                                             _%lp-tl5146452001%_
                                             (cons _%lp-hd5146351998%_
                                                   _%body5146551991%_))))
                                        (let ((_%body5146652004%_
                                               (reverse _%body5146551991%_)))
                                          (let ((_%L52008%_ _%body5146652004%_)
                                                (_%L52010%_ _%hd5145651972%_)
                                                (_%L52011%_ _%hd5145051952%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L52010%_))
                                                (_%__kont8323183232%_
                                                 _%L52008%_
                                                 _%L52010%_
                                                 _%L52011%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5141051553%_)))))))))
                          (_%loop5146151984%_ _%target5145851978%_ '()))))
                     (_%__match8331183312%_
                      (lambda (_%e5144351928%_
                               _%hd5144451932%_
                               _%tl5144551935%_
                               _%e5144651938%_
                               _%hd5144751942%_
                               _%tl5144851945%_
                               _%e5144951948%_
                               _%hd5145051952%_
                               _%tl5145151955%_
                               _%e5145251958%_
                               _%hd5145351962%_
                               _%tl5145451965%_)
                        (if (gx#identifier? _%hd5145351962%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g88433_|
                                 _%hd5145351962%_)
                                (if (gx#stx-pair? _%tl5145451965%_)
                                    (let ((_%e5145551968%_
                                           (gx#syntax-e _%tl5145451965%_)))
                                      (let ((_%tl5145751975%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5145551968%_)))
                                            (_%hd5145651972%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5145551968%_))))
                                        (if (gx#stx-null? _%tl5145751975%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5144851945%_)
                                                (let ((_%__splice8323383234%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5144851945%_
                                                        '0)))
                                                  (let ((_%tl5146051981%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8323383234%_
                                                            '1)))
                                                        (_%target5145851978%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8323383234%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5146051981%_)
                                                        (_%__match8333183332%_
                                                         _%e5144351928%_
                                                         _%hd5144451932%_
                                                         _%tl5144551935%_
                                                         _%e5144651938%_
                                                         _%hd5144751942%_
                                                         _%tl5144851945%_
                                                         _%e5144951948%_
                                                         _%hd5145051952%_
                                                         _%tl5145151955%_
                                                         _%e5145251958%_
                                                         _%hd5145351962%_
                                                         _%tl5145451965%_
                                                         _%e5145551968%_
                                                         _%hd5145651972%_
                                                         _%tl5145751975%_
                                                         _%__splice8323383234%_
                                                         _%target5145851978%_
                                                         _%tl5146051981%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5141051553%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5141051553%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5141051553%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5141051553%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g88434_|
                                     _%hd5145351962%_)
                                    (if (gx#stx-pair? _%tl5145451965%_)
                                        (let ((_%e5148251846%_
                                               (gx#syntax-e _%tl5145451965%_)))
                                          (let ((_%tl5148451853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5148251846%_)))
                                                (_%hd5148351850%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5148251846%_))))
                                            (if (gx#stx-null? _%tl5148451853%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5144851945%_)
                                                    (let ((_%__splice8323783238%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5144851945%_
                                                            '0)))
                                                      (let ((_%tl5148751859%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8323783238%_ '1)))
                    (_%target5148551856%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8323783238%_ '0))))
                (if (gx#stx-null? _%tl5148751859%_)
                    (_%__match8337583376%_
                     _%e5144351928%_
                     _%hd5144451932%_
                     _%tl5144551935%_
                     _%e5144651938%_
                     _%hd5144751942%_
                     _%tl5144851945%_
                     _%e5144951948%_
                     _%hd5145051952%_
                     _%tl5145151955%_
                     _%e5145251958%_
                     _%hd5145351962%_
                     _%tl5145451965%_
                     _%e5148251846%_
                     _%hd5148351850%_
                     _%tl5148451853%_
                     _%__splice8323783238%_
                     _%target5148551856%_
                     _%tl5148751859%_)
                    (let () (declare (not safe)) (_%g5141051553%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5141051553%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5141051553%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5141051553%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g88435_|
                                         _%hd5145351962%_)
                                        (if (gx#stx-pair? _%tl5145451965%_)
                                            (let ((_%e5150951724%_
                                                   (gx#syntax-e
                                                    _%tl5145451965%_)))
                                              (let ((_%tl5151151731%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5150951724%_)))
                                                    (_%hd5151051728%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5150951724%_))))
                                                (if (gx#stx-null?
                                                     _%tl5151151731%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5144851945%_)
                                                        (let ((_%__splice8324183242%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5144851945%_
                                                                '0)))
                                                          (let ((_%tl5151451737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8324183242%_ '1)))
                        (_%target5151251734%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8324183242%_ '0))))
                    (if (gx#stx-null? _%tl5151451737%_)
                        (_%__match8341983420%_
                         _%e5144351928%_
                         _%hd5144451932%_
                         _%tl5144551935%_
                         _%e5144651938%_
                         _%hd5144751942%_
                         _%tl5144851945%_
                         _%e5144951948%_
                         _%hd5145051952%_
                         _%tl5145151955%_
                         _%e5145251958%_
                         _%hd5145351962%_
                         _%tl5145451965%_
                         _%e5150951724%_
                         _%hd5151051728%_
                         _%tl5151151731%_
                         _%__splice8324183242%_
                         _%target5151251734%_
                         _%tl5151451737%_)
                        (let () (declare (not safe)) (_%g5141051553%_)))))
                (let () (declare (not safe)) (_%g5141051553%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5141051553%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5141051553%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g88436_|
                                             _%hd5145351962%_)
                                            (if (gx#stx-pair? _%tl5145451965%_)
                                                (let ((_%e5153651600%_
                                                       (gx#syntax-e
                                                        _%tl5145451965%_)))
                                                  (let ((_%tl5153851607%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5153651600%_)))
                                                        (_%hd5153751604%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5153651600%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5153851607%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5144851945%_)
                                                            (let ((_%__splice8324583246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5144851945%_
                            '0)))
                      (let ((_%tl5154151613%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8324583246%_ '1)))
                            (_%target5153951610%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8324583246%_ '0))))
                        (if (gx#stx-null? _%tl5154151613%_)
                            (_%__match8346383464%_
                             _%e5144351928%_
                             _%hd5144451932%_
                             _%tl5144551935%_
                             _%e5144651938%_
                             _%hd5144751942%_
                             _%tl5144851945%_
                             _%e5144951948%_
                             _%hd5145051952%_
                             _%tl5145151955%_
                             _%e5145251958%_
                             _%hd5145351962%_
                             _%tl5145451965%_
                             _%e5153651600%_
                             _%hd5153751604%_
                             _%tl5153851607%_
                             _%__splice8324583246%_
                             _%target5153951610%_
                             _%tl5154151613%_)
                            (let () (declare (not safe)) (_%g5141051553%_)))))
                    (let () (declare (not safe)) (_%g5141051553%_)))
                (let () (declare (not safe)) (_%g5141051553%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5141051553%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5141051553%_))))))
                            (let () (declare (not safe)) (_%g5141051553%_)))))
                     (_%__match8328783288%_
                      (lambda (_%e5141652050%_
                               _%hd5141752054%_
                               _%tl5141852057%_
                               _%e5141952060%_
                               _%hd5142052064%_
                               _%tl5142152067%_
                               _%e5142252070%_
                               _%hd5142352074%_
                               _%tl5142452077%_
                               _%e5142552080%_
                               _%hd5142652084%_
                               _%tl5142752087%_
                               _%e5142852090%_
                               _%hd5142952094%_
                               _%tl5143052097%_
                               _%__splice8322983230%_
                               _%target5143152100%_
                               _%tl5143352103%_)
                        (letrec ((_%loop5143452106%_
                                  (lambda (_%hd5143252110%_ _%body5143852113%_)
                                    (if (gx#stx-pair? _%hd5143252110%_)
                                        (let ((_%e5143552116%_
                                               (gx#syntax-e _%hd5143252110%_)))
                                          (let ((_%lp-tl5143752123%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5143552116%_)))
                                                (_%lp-hd5143652120%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5143552116%_))))
                                            (_%loop5143452106%_
                                             _%lp-tl5143752123%_
                                             (cons _%lp-hd5143652120%_
                                                   _%body5143852113%_))))
                                        (let ((_%body5143952126%_
                                               (reverse _%body5143852113%_)))
                                          (let ((_%L52130%_ _%body5143952126%_)
                                                (_%L52132%_ _%hd5142952094%_)
                                                (_%L52133%_ _%hd5142652084%_)
                                                (_%L52134%_ _%hd5142352074%_))
                                            (if (let ((__tmp88437
                                                       (gx#syntax-local-value
                                                        _%L52132%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp88437))
                                                (_%__kont8322783228%_
                                                 _%L52130%_
                                                 _%L52132%_
                                                 _%L52133%_
                                                 _%L52134%_)
                                                (_%__match8331183312%_
                                                 _%e5141652050%_
                                                 _%hd5141752054%_
                                                 _%tl5141852057%_
                                                 _%e5141952060%_
                                                 _%hd5142052064%_
                                                 _%tl5142152067%_
                                                 _%e5142252070%_
                                                 _%hd5142352074%_
                                                 _%tl5142452077%_
                                                 _%e5142552080%_
                                                 _%hd5142652084%_
                                                 _%tl5142752087%_))))))))
                          (_%loop5143452106%_ _%target5143152100%_ '())))))
                (if (gx#stx-pair? _%__stx8322483225%_)
                    (let ((_%e5141652050%_ (gx#syntax-e _%__stx8322483225%_)))
                      (let ((_%tl5141852057%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5141652050%_)))
                            (_%hd5141752054%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5141652050%_))))
                        (if (gx#stx-pair? _%tl5141852057%_)
                            (let ((_%e5141952060%_
                                   (gx#syntax-e _%tl5141852057%_)))
                              (let ((_%tl5142152067%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5141952060%_)))
                                    (_%hd5142052064%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5141952060%_))))
                                (if (gx#stx-pair? _%hd5142052064%_)
                                    (let ((_%e5142252070%_
                                           (gx#syntax-e _%hd5142052064%_)))
                                      (let ((_%tl5142452077%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5142252070%_)))
                                            (_%hd5142352074%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5142252070%_))))
                                        (if (gx#stx-pair? _%tl5142452077%_)
                                            (let ((_%e5142552080%_
                                                   (gx#syntax-e
                                                    _%tl5142452077%_)))
                                              (let ((_%tl5142752087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5142552080%_)))
                                                    (_%hd5142652084%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5142552080%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5142752087%_)
                                                    (let ((_%e5142852090%_
                                                           (gx#syntax-e
                                                            _%tl5142752087%_)))
                                                      (let ((_%tl5143052097%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5142852090%_)))
                    (_%hd5142952094%_
                     (let () (declare (not safe)) (##car _%e5142852090%_))))
                (if (gx#stx-null? _%tl5143052097%_)
                    (if (gx#stx-pair/null? _%tl5142152067%_)
                        (let ((_%__splice8322983230%_
                               (gx#syntax-split-splice->vector
                                _%tl5142152067%_
                                '0)))
                          (let ((_%tl5143352103%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8322983230%_ '1)))
                                (_%target5143152100%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8322983230%_ '0))))
                            (if (gx#stx-null? _%tl5143352103%_)
                                (_%__match8328783288%_
                                 _%e5141652050%_
                                 _%hd5141752054%_
                                 _%tl5141852057%_
                                 _%e5141952060%_
                                 _%hd5142052064%_
                                 _%tl5142152067%_
                                 _%e5142252070%_
                                 _%hd5142352074%_
                                 _%tl5142452077%_
                                 _%e5142552080%_
                                 _%hd5142652084%_
                                 _%tl5142752087%_
                                 _%e5142852090%_
                                 _%hd5142952094%_
                                 _%tl5143052097%_
                                 _%__splice8322983230%_
                                 _%target5143152100%_
                                 _%tl5143352103%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5141051553%_)))))
                        (let () (declare (not safe)) (_%g5141051553%_)))
                    (let () (declare (not safe)) (_%g5141051553%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5141051553%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5141051553%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5141051553%_)))))
                            (let () (declare (not safe)) (_%g5141051553%_)))))
                    (let () (declare (not safe)) (_%g5141051553%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx52528%_)
        (letrec ((_%expand-body52531%_
                  (lambda (_%var53532%_
                           _%Interface53534%_
                           _%body53535%_
                           _%checked?53536%_)
                    (let* ((_%type53538%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx52528%_
                               _%Interface53534%_)))
                           (_%g5354153585%_
                            (lambda (_%g5354253581%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5354253581%_)))
                           (_%g5354053743%_
                            (lambda (_%g5354253589%_)
                              (if (gx#stx-pair? _%g5354253589%_)
                                  (let ((_%e5355053592%_
                                         (gx#syntax-e _%g5354253589%_)))
                                    (let ((_%hd5355153596%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5355053592%_)))
                                          (_%tl5355253599%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5355053592%_))))
                                      (if (gx#stx-pair? _%tl5355253599%_)
                                          (let ((_%e5355353602%_
                                                 (gx#syntax-e
                                                  _%tl5355253599%_)))
                                            (let ((_%hd5355453606%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5355353602%_)))
                                                  (_%tl5355553609%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5355353602%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5355553609%_)
                                                  (let ((_%e5355653612%_
                                                         (gx#syntax-e
                                                          _%tl5355553609%_)))
                                                    (let ((_%hd5355753616%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5355653612%_)))
                                                          (_%tl5355853619%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5355653612%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5355853619%_)
                                                          (let ((_%e5355953622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5355853619%_)))
                    (let ((_%hd5356053626%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5355953622%_)))
                          (_%tl5356153629%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5355953622%_))))
                      (if (gx#stx-pair? _%tl5356153629%_)
                          (let ((_%e5356253632%_
                                 (gx#syntax-e _%tl5356153629%_)))
                            (let ((_%hd5356353636%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5356253632%_)))
                                  (_%tl5356453639%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5356253632%_))))
                              (if (gx#stx-pair? _%tl5356453639%_)
                                  (let ((_%e5356553642%_
                                         (gx#syntax-e _%tl5356453639%_)))
                                    (let ((_%hd5356653646%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5356553642%_)))
                                          (_%tl5356753649%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5356553642%_))))
                                      (if (gx#stx-pair? _%tl5356753649%_)
                                          (let ((_%e5356853652%_
                                                 (gx#syntax-e
                                                  _%tl5356753649%_)))
                                            (let ((_%hd5356953656%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5356853652%_)))
                                                  (_%tl5357053659%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5356853652%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5356953656%_)
                                                  (let ((_g88438_
                                                         (gx#syntax-split-splice
                                                          _%hd5356953656%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g88439_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g88438_)
                           (##values-length _g88438_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g88439_ 2)))
                    (error "Context expects 2 values" _g88439_)))
              (let ((_%target5357153662%_
                     (let () (declare (not safe)) (##values-ref _g88438_ 0)))
                    (_%tl5357353665%_
                     (let () (declare (not safe)) (##values-ref _g88438_ 1))))
                (if (gx#stx-null? _%tl5357353665%_)
                    (letrec ((_%loop5357453668%_
                              (lambda (_%hd5357253672%_ _%body5357853675%_)
                                (if (gx#stx-pair? _%hd5357253672%_)
                                    (let ((_%e5357553678%_
                                           (gx#syntax-e _%hd5357253672%_)))
                                      (let ((_%lp-hd5357653682%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5357553678%_)))
                                            (_%lp-tl5357753685%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5357553678%_))))
                                        (_%loop5357453668%_
                                         _%lp-tl5357753685%_
                                         (cons _%lp-hd5357653682%_
                                               _%body5357853675%_))))
                                    (let ((_%body5357953688%_
                                           (reverse _%body5357853675%_)))
                                      (if (gx#stx-null? _%tl5357053659%_)
                                          ((lambda (_%L53692%_
                                                    _%L53694%_
                                                    _%L53695%_
                                                    _%L53696%_
                                                    _%L53697%_
                                                    _%L53698%_
                                                    _%L53699%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L53696%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L53697%_ '()))
                                         (cons _%L53696%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L53699%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L53696%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L53698%_ '()))
                               (cons _%L53695%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L53694%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5373453737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5373553740%_)
                      (cons _%g5373453737%_ _%g5373553740%_))
                    '()
                    _%L53692%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5357953688%_
                                           _%hd5356653646%_
                                           _%hd5356353636%_
                                           _%hd5356053626%_
                                           _%hd5355753616%_
                                           _%hd5355453606%_
                                           _%hd5355153596%_)
                                          (_%g5354153585%_
                                           _%g5354253589%_)))))))
                      (_%loop5357453668%_ _%target5357153662%_ '()))
                    (_%g5354153585%_ _%g5354253589%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5354153585%_
                                                   _%g5354253589%_))))
                                          (_%g5354153585%_ _%g5354253589%_))))
                                  (_%g5354153585%_ _%g5354253589%_))))
                          (_%g5354153585%_ _%g5354253589%_))))
                  (_%g5354153585%_ _%g5354253589%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5354153585%_
                                                   _%g5354253589%_))))
                                          (_%g5354153585%_ _%g5354253589%_))))
                                  (_%g5354153585%_ _%g5354253589%_)))))
                      (_%g5354053743%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type53538%_
                             (let ((__obj88256 _%type53538%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj88256
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj88256
                                      '7
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj88256
                                    'instance-type)))
                             _%var53532%_
                             _%checked?53536%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body53535%_)))))
                 (_%expand52533%_
                  (lambda (_%var53331%_
                           _%Interface53333%_
                           _%body53334%_
                           _%checked?53335%_
                           _%checked-methods?53336%_
                           _%maybe?53337%_)
                    (let* ((_%g5333953347%_
                            (lambda (_%g5334053343%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5334053343%_)))
                           (_%g5333853524%_
                            (lambda (_%g5334053351%_)
                              ((lambda (_%L53354%_)
                                 (if _%checked?53335%_
                                     (if _%maybe?53337%_
                                         (let* ((_%g5336653381%_
                                                 (lambda (_%g5336753377%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5336753377%_)))
                                                (_%g5336553427%_
                                                 (lambda (_%g5336753385%_)
                                                   (if (gx#stx-pair?
                                                        _%g5336753385%_)
                                                       (let ((_%e5337053388%_
                                                              (gx#syntax-e
                                                               _%g5336753385%_)))
                                                         (let ((_%hd5337153392%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5337053388%_)))
                       (_%tl5337253395%_
                        (let () (declare (not safe)) (##cdr _%e5337053388%_))))
                   (if (gx#stx-pair? _%tl5337253395%_)
                       (let ((_%e5337353398%_ (gx#syntax-e _%tl5337253395%_)))
                         (let ((_%hd5337453402%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5337353398%_)))
                               (_%tl5337553405%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5337353398%_))))
                           (if (gx#stx-null? _%tl5337553405%_)
                               ((lambda (_%L53408%_ _%L53410%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L53410%_
                                                    (cons (cons _%L53408%_
                                                                (cons _%L53410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L53410%_
                                                                (cons _%L53354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L53410%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5337453402%_
                                _%hd5337153392%_)
                               (_%g5336653381%_ _%g5336753385%_))))
                       (_%g5336653381%_ _%g5336753385%_))))
               (_%g5336653381%_ _%g5336753385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5336553427%_
                                            (list _%var53331%_
                                                  _%Interface53333%_)))
                                         (let* ((_%g5343153446%_
                                                 (lambda (_%g5343253442%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5343253442%_)))
                                                (_%g5343053490%_
                                                 (lambda (_%g5343253450%_)
                                                   (if (gx#stx-pair?
                                                        _%g5343253450%_)
                                                       (let ((_%e5343553453%_
                                                              (gx#syntax-e
                                                               _%g5343253450%_)))
                                                         (let ((_%hd5343653457%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5343553453%_)))
                       (_%tl5343753460%_
                        (let () (declare (not safe)) (##cdr _%e5343553453%_))))
                   (if (gx#stx-pair? _%tl5343753460%_)
                       (let ((_%e5343853463%_ (gx#syntax-e _%tl5343753460%_)))
                         (let ((_%hd5343953467%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5343853463%_)))
                               (_%tl5344053470%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5343853463%_))))
                           (if (gx#stx-null? _%tl5344053470%_)
                               ((lambda (_%L53473%_ _%L53475%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L53475%_
                                                    (cons (cons _%L53473%_
                                                                (cons _%L53475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L53354%_ '()))))
                                _%hd5343953467%_
                                _%hd5343653457%_)
                               (_%g5343153446%_ _%g5343253450%_))))
                       (_%g5343153446%_ _%g5343253450%_))))
               (_%g5343153446%_ _%g5343253450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5343053490%_
                                            (list _%var53331%_
                                                  _%Interface53333%_))))
                                     (if _%maybe?53337%_
                                         (let* ((_%g5349453502%_
                                                 (lambda (_%g5349553498%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5349553498%_)))
                                                (_%g5349353520%_
                                                 (lambda (_%g5349553506%_)
                                                   ((lambda (_%L53509%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L53509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L53354%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L53509%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5349553506%_))))
                                           (_%g5349353520%_ _%var53331%_))
                                         _%L53354%_)))
                               _%g5334053351%_))))
                      (_%g5333853524%_
                       (_%expand-body52531%_
                        _%var53331%_
                        _%Interface53333%_
                        _%body53334%_
                        (let ((_%$e53528%_ _%checked?53335%_))
                          (if _%$e53528%_
                              _%$e53528%_
                              _%checked-methods?53336%_))))))))
          (let* ((_%__stx8346683467%_ _%stx52528%_)
                 (_%g5253952682%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8346683467%_))))
            (let ((_%__kont8346983470%_
                   (lambda (_%L53259%_ _%L53261%_ _%L53262%_ _%L53263%_)
                     (let* ((_%g5328853296%_
                             (lambda (_%g5328953292%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5328953292%_)))
                            (_%g5328753323%_
                             (lambda (_%g5328953300%_)
                               ((lambda (_%L53303%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%L53263%_
                                                    (cons _%L53262%_
                                                          (cons _%L53303%_
                                                                '())))
                                              (foldr (lambda (_%g5331453317%_
                                                              _%g5331553320%_)
                                                       (cons _%g5331453317%_
                                                             _%g5331553320%_))
                                                     '()
                                                     _%L53259%_))))
                                _%g5328953300%_))))
                       (_%g5328753323%_
                        (let ((__obj88257 (gx#syntax-local-value _%L53261%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj88257
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj88257
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj88257
                               'identifier)))))))
                  (_%__kont8347383474%_
                   (lambda (_%L53137%_ _%L53139%_ _%L53140%_)
                     (_%expand52533%_
                      _%L53140%_
                      _%L53139%_
                      (foldr (lambda (_%g5316353166%_ _%g5316453169%_)
                               (cons _%g5316353166%_ _%g5316453169%_))
                             '()
                             _%L53137%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8347783478%_
                   (lambda (_%L53015%_ _%L53017%_ _%L53018%_)
                     (_%expand52533%_
                      _%L53018%_
                      _%L53017%_
                      (foldr (lambda (_%g5304153044%_ _%g5304253047%_)
                               (cons _%g5304153044%_ _%g5304253047%_))
                             '()
                             _%L53015%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8348183482%_
                   (lambda (_%L52893%_ _%L52895%_ _%L52896%_)
                     (_%expand52533%_
                      _%L52896%_
                      _%L52895%_
                      (foldr (lambda (_%g5291952922%_ _%g5292052925%_)
                               (cons _%g5291952922%_ _%g5292052925%_))
                             '()
                             _%L52893%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8348583486%_
                   (lambda (_%L52769%_ _%L52771%_ _%L52772%_)
                     (_%expand52533%_
                      _%L52772%_
                      _%L52771%_
                      (foldr (lambda (_%g5279752800%_ _%g5279852803%_)
                               (cons _%g5279752800%_ _%g5279852803%_))
                             '()
                             _%L52769%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8370583706%_
                      (lambda (_%e5265352689%_
                               _%hd5265452693%_
                               _%tl5265552696%_
                               _%e5265652699%_
                               _%hd5265752703%_
                               _%tl5265852706%_
                               _%e5265952709%_
                               _%hd5266052713%_
                               _%tl5266152716%_
                               _%e5266252719%_
                               _%hd5266352723%_
                               _%tl5266452726%_
                               _%e5266552729%_
                               _%hd5266652733%_
                               _%tl5266752736%_
                               _%__splice8348783488%_
                               _%target5266852739%_
                               _%tl5267052742%_)
                        (letrec ((_%loop5267152745%_
                                  (lambda (_%hd5266952749%_ _%body5267552752%_)
                                    (if (gx#stx-pair? _%hd5266952749%_)
                                        (let ((_%e5267252755%_
                                               (gx#syntax-e _%hd5266952749%_)))
                                          (let ((_%lp-tl5267452762%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5267252755%_)))
                                                (_%lp-hd5267352759%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5267252755%_))))
                                            (_%loop5267152745%_
                                             _%lp-tl5267452762%_
                                             (cons _%lp-hd5267352759%_
                                                   _%body5267552752%_))))
                                        (let ((_%body5267652765%_
                                               (reverse _%body5267552752%_)))
                                          (let ((_%L52769%_ _%body5267652765%_)
                                                (_%L52771%_ _%hd5266652733%_)
                                                (_%L52772%_ _%hd5266052713%_))
                                            (if (and (gx#identifier?
                                                      _%L52772%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L52771%_)))
                                                (_%__kont8348583486%_
                                                 _%L52769%_
                                                 _%L52771%_
                                                 _%L52772%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5253952682%_)))))))))
                          (_%loop5267152745%_ _%target5266852739%_ '()))))
                     (_%__match8366183662%_
                      (lambda (_%e5262652813%_
                               _%hd5262752817%_
                               _%tl5262852820%_
                               _%e5262952823%_
                               _%hd5263052827%_
                               _%tl5263152830%_
                               _%e5263252833%_
                               _%hd5263352837%_
                               _%tl5263452840%_
                               _%e5263552843%_
                               _%hd5263652847%_
                               _%tl5263752850%_
                               _%e5263852853%_
                               _%hd5263952857%_
                               _%tl5264052860%_
                               _%__splice8348383484%_
                               _%target5264152863%_
                               _%tl5264352866%_)
                        (letrec ((_%loop5264452869%_
                                  (lambda (_%hd5264252873%_ _%body5264852876%_)
                                    (if (gx#stx-pair? _%hd5264252873%_)
                                        (let ((_%e5264552879%_
                                               (gx#syntax-e _%hd5264252873%_)))
                                          (let ((_%lp-tl5264752886%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5264552879%_)))
                                                (_%lp-hd5264652883%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5264552879%_))))
                                            (_%loop5264452869%_
                                             _%lp-tl5264752886%_
                                             (cons _%lp-hd5264652883%_
                                                   _%body5264852876%_))))
                                        (let ((_%body5264952889%_
                                               (reverse _%body5264852876%_)))
                                          (let ((_%L52893%_ _%body5264952889%_)
                                                (_%L52895%_ _%hd5263952857%_)
                                                (_%L52896%_ _%hd5263352837%_))
                                            (if (and (gx#identifier?
                                                      _%L52896%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L52895%_)))
                                                (_%__kont8348183482%_
                                                 _%L52893%_
                                                 _%L52895%_
                                                 _%L52896%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5253952682%_)))))))))
                          (_%loop5264452869%_ _%target5264152863%_ '()))))
                     (_%__match8361783618%_
                      (lambda (_%e5259952935%_
                               _%hd5260052939%_
                               _%tl5260152942%_
                               _%e5260252945%_
                               _%hd5260352949%_
                               _%tl5260452952%_
                               _%e5260552955%_
                               _%hd5260652959%_
                               _%tl5260752962%_
                               _%e5260852965%_
                               _%hd5260952969%_
                               _%tl5261052972%_
                               _%e5261152975%_
                               _%hd5261252979%_
                               _%tl5261352982%_
                               _%__splice8347983480%_
                               _%target5261452985%_
                               _%tl5261652988%_)
                        (letrec ((_%loop5261752991%_
                                  (lambda (_%hd5261552995%_ _%body5262152998%_)
                                    (if (gx#stx-pair? _%hd5261552995%_)
                                        (let ((_%e5261853001%_
                                               (gx#syntax-e _%hd5261552995%_)))
                                          (let ((_%lp-tl5262053008%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5261853001%_)))
                                                (_%lp-hd5261953005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5261853001%_))))
                                            (_%loop5261752991%_
                                             _%lp-tl5262053008%_
                                             (cons _%lp-hd5261953005%_
                                                   _%body5262152998%_))))
                                        (let ((_%body5262253011%_
                                               (reverse _%body5262152998%_)))
                                          (let ((_%L53015%_ _%body5262253011%_)
                                                (_%L53017%_ _%hd5261252979%_)
                                                (_%L53018%_ _%hd5260652959%_))
                                            (if (and (gx#identifier?
                                                      _%L53018%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L53017%_)))
                                                (_%__kont8347783478%_
                                                 _%L53015%_
                                                 _%L53017%_
                                                 _%L53018%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5253952682%_)))))))))
                          (_%loop5261752991%_ _%target5261452985%_ '()))))
                     (_%__match8357383574%_
                      (lambda (_%e5257253057%_
                               _%hd5257353061%_
                               _%tl5257453064%_
                               _%e5257553067%_
                               _%hd5257653071%_
                               _%tl5257753074%_
                               _%e5257853077%_
                               _%hd5257953081%_
                               _%tl5258053084%_
                               _%e5258153087%_
                               _%hd5258253091%_
                               _%tl5258353094%_
                               _%e5258453097%_
                               _%hd5258553101%_
                               _%tl5258653104%_
                               _%__splice8347583476%_
                               _%target5258753107%_
                               _%tl5258953110%_)
                        (letrec ((_%loop5259053113%_
                                  (lambda (_%hd5258853117%_ _%body5259453120%_)
                                    (if (gx#stx-pair? _%hd5258853117%_)
                                        (let ((_%e5259153123%_
                                               (gx#syntax-e _%hd5258853117%_)))
                                          (let ((_%lp-tl5259353130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5259153123%_)))
                                                (_%lp-hd5259253127%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5259153123%_))))
                                            (_%loop5259053113%_
                                             _%lp-tl5259353130%_
                                             (cons _%lp-hd5259253127%_
                                                   _%body5259453120%_))))
                                        (let ((_%body5259553133%_
                                               (reverse _%body5259453120%_)))
                                          (let ((_%L53137%_ _%body5259553133%_)
                                                (_%L53139%_ _%hd5258553101%_)
                                                (_%L53140%_ _%hd5257953081%_))
                                            (if (and (gx#identifier?
                                                      _%L53140%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L53139%_)))
                                                (_%__kont8347383474%_
                                                 _%L53137%_
                                                 _%L53139%_
                                                 _%L53140%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5253952682%_)))))))))
                          (_%loop5259053113%_ _%target5258753107%_ '()))))
                     (_%__match8355383554%_
                      (lambda (_%e5257253057%_
                               _%hd5257353061%_
                               _%tl5257453064%_
                               _%e5257553067%_
                               _%hd5257653071%_
                               _%tl5257753074%_
                               _%e5257853077%_
                               _%hd5257953081%_
                               _%tl5258053084%_
                               _%e5258153087%_
                               _%hd5258253091%_
                               _%tl5258353094%_)
                        (if (gx#identifier? _%hd5258253091%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g88440_|
                                 _%hd5258253091%_)
                                (if (gx#stx-pair? _%tl5258353094%_)
                                    (let ((_%e5258453097%_
                                           (gx#syntax-e _%tl5258353094%_)))
                                      (let ((_%tl5258653104%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5258453097%_)))
                                            (_%hd5258553101%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5258453097%_))))
                                        (if (gx#stx-null? _%tl5258653104%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5257753074%_)
                                                (let ((_%__splice8347583476%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5257753074%_
                                                        '0)))
                                                  (let ((_%tl5258953110%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8347583476%_
                                                            '1)))
                                                        (_%target5258753107%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8347583476%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5258953110%_)
                                                        (_%__match8357383574%_
                                                         _%e5257253057%_
                                                         _%hd5257353061%_
                                                         _%tl5257453064%_
                                                         _%e5257553067%_
                                                         _%hd5257653071%_
                                                         _%tl5257753074%_
                                                         _%e5257853077%_
                                                         _%hd5257953081%_
                                                         _%tl5258053084%_
                                                         _%e5258153087%_
                                                         _%hd5258253091%_
                                                         _%tl5258353094%_
                                                         _%e5258453097%_
                                                         _%hd5258553101%_
                                                         _%tl5258653104%_
                                                         _%__splice8347583476%_
                                                         _%target5258753107%_
                                                         _%tl5258953110%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5253952682%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5253952682%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5253952682%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5253952682%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g88441_|
                                     _%hd5258253091%_)
                                    (if (gx#stx-pair? _%tl5258353094%_)
                                        (let ((_%e5261152975%_
                                               (gx#syntax-e _%tl5258353094%_)))
                                          (let ((_%tl5261352982%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5261152975%_)))
                                                (_%hd5261252979%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5261152975%_))))
                                            (if (gx#stx-null? _%tl5261352982%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5257753074%_)
                                                    (let ((_%__splice8347983480%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5257753074%_
                                                            '0)))
                                                      (let ((_%tl5261652988%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8347983480%_ '1)))
                    (_%target5261452985%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8347983480%_ '0))))
                (if (gx#stx-null? _%tl5261652988%_)
                    (_%__match8361783618%_
                     _%e5257253057%_
                     _%hd5257353061%_
                     _%tl5257453064%_
                     _%e5257553067%_
                     _%hd5257653071%_
                     _%tl5257753074%_
                     _%e5257853077%_
                     _%hd5257953081%_
                     _%tl5258053084%_
                     _%e5258153087%_
                     _%hd5258253091%_
                     _%tl5258353094%_
                     _%e5261152975%_
                     _%hd5261252979%_
                     _%tl5261352982%_
                     _%__splice8347983480%_
                     _%target5261452985%_
                     _%tl5261652988%_)
                    (let () (declare (not safe)) (_%g5253952682%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5253952682%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5253952682%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5253952682%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g88442_|
                                         _%hd5258253091%_)
                                        (if (gx#stx-pair? _%tl5258353094%_)
                                            (let ((_%e5263852853%_
                                                   (gx#syntax-e
                                                    _%tl5258353094%_)))
                                              (let ((_%tl5264052860%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5263852853%_)))
                                                    (_%hd5263952857%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5263852853%_))))
                                                (if (gx#stx-null?
                                                     _%tl5264052860%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5257753074%_)
                                                        (let ((_%__splice8348383484%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5257753074%_
                                                                '0)))
                                                          (let ((_%tl5264352866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8348383484%_ '1)))
                        (_%target5264152863%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8348383484%_ '0))))
                    (if (gx#stx-null? _%tl5264352866%_)
                        (_%__match8366183662%_
                         _%e5257253057%_
                         _%hd5257353061%_
                         _%tl5257453064%_
                         _%e5257553067%_
                         _%hd5257653071%_
                         _%tl5257753074%_
                         _%e5257853077%_
                         _%hd5257953081%_
                         _%tl5258053084%_
                         _%e5258153087%_
                         _%hd5258253091%_
                         _%tl5258353094%_
                         _%e5263852853%_
                         _%hd5263952857%_
                         _%tl5264052860%_
                         _%__splice8348383484%_
                         _%target5264152863%_
                         _%tl5264352866%_)
                        (let () (declare (not safe)) (_%g5253952682%_)))))
                (let () (declare (not safe)) (_%g5253952682%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5253952682%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5253952682%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g88443_|
                                             _%hd5258253091%_)
                                            (if (gx#stx-pair? _%tl5258353094%_)
                                                (let ((_%e5266552729%_
                                                       (gx#syntax-e
                                                        _%tl5258353094%_)))
                                                  (let ((_%tl5266752736%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5266552729%_)))
                                                        (_%hd5266652733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5266552729%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5266752736%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5257753074%_)
                                                            (let ((_%__splice8348783488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5257753074%_
                            '0)))
                      (let ((_%tl5267052742%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8348783488%_ '1)))
                            (_%target5266852739%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8348783488%_ '0))))
                        (if (gx#stx-null? _%tl5267052742%_)
                            (_%__match8370583706%_
                             _%e5257253057%_
                             _%hd5257353061%_
                             _%tl5257453064%_
                             _%e5257553067%_
                             _%hd5257653071%_
                             _%tl5257753074%_
                             _%e5257853077%_
                             _%hd5257953081%_
                             _%tl5258053084%_
                             _%e5258153087%_
                             _%hd5258253091%_
                             _%tl5258353094%_
                             _%e5266552729%_
                             _%hd5266652733%_
                             _%tl5266752736%_
                             _%__splice8348783488%_
                             _%target5266852739%_
                             _%tl5267052742%_)
                            (let () (declare (not safe)) (_%g5253952682%_)))))
                    (let () (declare (not safe)) (_%g5253952682%_)))
                (let () (declare (not safe)) (_%g5253952682%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5253952682%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5253952682%_))))))
                            (let () (declare (not safe)) (_%g5253952682%_)))))
                     (_%__match8352983530%_
                      (lambda (_%e5254553179%_
                               _%hd5254653183%_
                               _%tl5254753186%_
                               _%e5254853189%_
                               _%hd5254953193%_
                               _%tl5255053196%_
                               _%e5255153199%_
                               _%hd5255253203%_
                               _%tl5255353206%_
                               _%e5255453209%_
                               _%hd5255553213%_
                               _%tl5255653216%_
                               _%e5255753219%_
                               _%hd5255853223%_
                               _%tl5255953226%_
                               _%__splice8347183472%_
                               _%target5256053229%_
                               _%tl5256253232%_)
                        (letrec ((_%loop5256353235%_
                                  (lambda (_%hd5256153239%_ _%body5256753242%_)
                                    (if (gx#stx-pair? _%hd5256153239%_)
                                        (let ((_%e5256453245%_
                                               (gx#syntax-e _%hd5256153239%_)))
                                          (let ((_%lp-tl5256653252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5256453245%_)))
                                                (_%lp-hd5256553249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5256453245%_))))
                                            (_%loop5256353235%_
                                             _%lp-tl5256653252%_
                                             (cons _%lp-hd5256553249%_
                                                   _%body5256753242%_))))
                                        (let ((_%body5256853255%_
                                               (reverse _%body5256753242%_)))
                                          (let ((_%L53259%_ _%body5256853255%_)
                                                (_%L53261%_ _%hd5255853223%_)
                                                (_%L53262%_ _%hd5255553213%_)
                                                (_%L53263%_ _%hd5255253203%_))
                                            (if (let ((__tmp88444
                                                       (gx#syntax-local-value
                                                        _%L53261%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp88444))
                                                (_%__kont8346983470%_
                                                 _%L53259%_
                                                 _%L53261%_
                                                 _%L53262%_
                                                 _%L53263%_)
                                                (_%__match8355383554%_
                                                 _%e5254553179%_
                                                 _%hd5254653183%_
                                                 _%tl5254753186%_
                                                 _%e5254853189%_
                                                 _%hd5254953193%_
                                                 _%tl5255053196%_
                                                 _%e5255153199%_
                                                 _%hd5255253203%_
                                                 _%tl5255353206%_
                                                 _%e5255453209%_
                                                 _%hd5255553213%_
                                                 _%tl5255653216%_))))))))
                          (_%loop5256353235%_ _%target5256053229%_ '())))))
                (if (gx#stx-pair? _%__stx8346683467%_)
                    (let ((_%e5254553179%_ (gx#syntax-e _%__stx8346683467%_)))
                      (let ((_%tl5254753186%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5254553179%_)))
                            (_%hd5254653183%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5254553179%_))))
                        (if (gx#stx-pair? _%tl5254753186%_)
                            (let ((_%e5254853189%_
                                   (gx#syntax-e _%tl5254753186%_)))
                              (let ((_%tl5255053196%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5254853189%_)))
                                    (_%hd5254953193%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5254853189%_))))
                                (if (gx#stx-pair? _%hd5254953193%_)
                                    (let ((_%e5255153199%_
                                           (gx#syntax-e _%hd5254953193%_)))
                                      (let ((_%tl5255353206%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5255153199%_)))
                                            (_%hd5255253203%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5255153199%_))))
                                        (if (gx#stx-pair? _%tl5255353206%_)
                                            (let ((_%e5255453209%_
                                                   (gx#syntax-e
                                                    _%tl5255353206%_)))
                                              (let ((_%tl5255653216%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5255453209%_)))
                                                    (_%hd5255553213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5255453209%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5255653216%_)
                                                    (let ((_%e5255753219%_
                                                           (gx#syntax-e
                                                            _%tl5255653216%_)))
                                                      (let ((_%tl5255953226%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5255753219%_)))
                    (_%hd5255853223%_
                     (let () (declare (not safe)) (##car _%e5255753219%_))))
                (if (gx#stx-null? _%tl5255953226%_)
                    (if (gx#stx-pair/null? _%tl5255053196%_)
                        (let ((_%__splice8347183472%_
                               (gx#syntax-split-splice->vector
                                _%tl5255053196%_
                                '0)))
                          (let ((_%tl5256253232%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8347183472%_ '1)))
                                (_%target5256053229%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8347183472%_ '0))))
                            (if (gx#stx-null? _%tl5256253232%_)
                                (_%__match8352983530%_
                                 _%e5254553179%_
                                 _%hd5254653183%_
                                 _%tl5254753186%_
                                 _%e5254853189%_
                                 _%hd5254953193%_
                                 _%tl5255053196%_
                                 _%e5255153199%_
                                 _%hd5255253203%_
                                 _%tl5255353206%_
                                 _%e5255453209%_
                                 _%hd5255553213%_
                                 _%tl5255653216%_
                                 _%e5255753219%_
                                 _%hd5255853223%_
                                 _%tl5255953226%_
                                 _%__splice8347183472%_
                                 _%target5256053229%_
                                 _%tl5256253232%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5253952682%_)))))
                        (let () (declare (not safe)) (_%g5253952682%_)))
                    (let () (declare (not safe)) (_%g5253952682%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5253952682%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5253952682%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5253952682%_)))))
                            (let () (declare (not safe)) (_%g5253952682%_)))))
                    (let () (declare (not safe)) (_%g5253952682%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx53753%_)
        (let* ((_%__stx8370883709%_ _%stx53753%_)
               (_%g5375853818%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8370883709%_))))
          (let ((_%__kont8371183712%_
                 (lambda (_%L54380%_ _%L54382%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L54382%_ '()))
                               (foldr (lambda (_%g5439854401%_ _%g5439954404%_)
                                        (cons _%g5439854401%_ _%g5439954404%_))
                                      '()
                                      _%L54380%_)))))
                (_%__kont8371583716%_
                 (lambda (_%L53966%_ _%L53968%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L53968%_)
                       (let* ((_%g5398853995%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx53753%_
                                _%L53968%_))
                              (_%E5399054001%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5398853995%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5399154299%_
                               (lambda (_%parts54005%_ _%var54007%_)
                                 (let ((_%$e54009%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var54007%_))))
                                   (if _%$e54009%_
                                       ((lambda (_%te54013%_)
                                          (let _%loop54016%_ ((_%parts54019%_
                                                               _%parts54005%_)
                                                              (_%type54021%_
                                                               (##direct-structure-ref
                                                                _%te54013%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object54022%_
                                                               _%var54007%_)
                                                              (_%checked-method?54023%_
                                                               (##direct-structure-ref
                                                                _%te54013%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?54024%_
                                                               '#f))
                                            (let* ((_%parts5402554033%_
                                                    _%parts54019%_)
                                                   (_%else5402754094%_
                                                    (lambda ()
                                                      (let* ((_%g5404554053%_
                                                              (lambda (_%g5404654049%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5404654049%_)))
                     (_%g5404454090%_
                      (lambda (_%g5404654057%_)
                        ((lambda (_%L54060%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L54060%_
                                       (foldr (lambda (_%g5408154084%_
                                                       _%g5408254087%_)
                                                (cons _%g5408154084%_
                                                      _%g5408254087%_))
                                              '()
                                              _%L53966%_))))
                         _%g5404654057%_))))
                (_%g5404454090%_ _%object54022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5402954273%_
                                                    (lambda (_%rest54098%_
                                                             _%part54100%_)
                                                      (if (and (not _%nil-check?54024%_)
                                                               (let ((__tmp88445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part54100%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp88445)))
                  (let ((_%str54104%_ (symbol->string _%part54100%_)))
                    (_%loop54016%_
                     (cons (let ((__tmp88446
                                  (substring
                                   _%str54104%_
                                   '1
                                   (string-length _%str54104%_))))
                             (declare (not safe))
                             (##string->symbol __tmp88446))
                           _%rest54098%_)
                     _%type54021%_
                     _%object54022%_
                     _%checked-method?54023%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type54021%_))
                      (let* ((_%g5410954124%_
                              (lambda (_%g5411054120%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5411054120%_)))
                             (_%g5410854193%_
                              (lambda (_%g5411054128%_)
                                (if (gx#stx-pair? _%g5411054128%_)
                                    (let ((_%e5411354131%_
                                           (gx#syntax-e _%g5411054128%_)))
                                      (let ((_%hd5411454135%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5411354131%_)))
                                            (_%tl5411554138%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5411354131%_))))
                                        (if (gx#stx-pair? _%tl5411554138%_)
                                            (let ((_%e5411654141%_
                                                   (gx#syntax-e
                                                    _%tl5411554138%_)))
                                              (let ((_%hd5411754145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5411654141%_)))
                                                    (_%tl5411854148%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5411654141%_))))
                                                (if (gx#stx-null?
                                                     _%tl5411854148%_)
                                                    ((lambda (_%L54151%_
                                                              _%L54153%_)
                                                       (if (null? _%rest54098%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L54151%_ (cons _%L54153%_ '()))
                               (foldr (lambda (_%g5417254175%_ _%g5417354178%_)
                                        (cons _%g5417254175%_ _%g5417354178%_))
                                      '()
                                      _%L53966%_)))
                   (let ((_%$e54181%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type54021%_
                           _%part54100%_)))
                     (if _%$e54181%_
                         ((lambda (_%slot-type54185%_)
                            (let ((_%slot-type54188%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx53753%_
                                      _%slot-type54185%_))))
                              (_%loop54016%_
                               _%rest54098%_
                               _%slot-type54188%_
                               (cons _%L54151%_ (cons _%L54153%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type54021%_
                                _%part54100%_)
                               '#f)))
                          _%$e54181%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx53753%_
                          _%L53968%_
                          _%part54100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5411754145%_
                                                     _%hd5411454135%_)
                                                    (_%g5410954124%_
                                                     _%g5411054128%_))))
                                            (_%g5410954124%_
                                             _%g5411054128%_))))
                                    (_%g5410954124%_ _%g5411054128%_)))))
                        (_%g5410854193%_
                         (list (if _%nil-check?54024%_
                                   (cons 'check-nil!
                                         (cons _%object54022%_ '()))
                                   _%object54022%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx53753%_
                                _%type54021%_
                                _%part54100%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type54021%_))
                          (if (null? _%rest54098%_)
                              (let* ((_%g5419954214%_
                                      (lambda (_%g5420054210%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5420054210%_)))
                                     (_%g5419854267%_
                                      (lambda (_%g5420054218%_)
                                        (if (gx#stx-pair? _%g5420054218%_)
                                            (let ((_%e5420354221%_
                                                   (gx#syntax-e
                                                    _%g5420054218%_)))
                                              (let ((_%hd5420454225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5420354221%_)))
                                                    (_%tl5420554228%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5420354221%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5420554228%_)
                                                    (let ((_%e5420654231%_
                                                           (gx#syntax-e
                                                            _%tl5420554228%_)))
                                                      (let ((_%hd5420754235%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5420654231%_)))
                    (_%tl5420854238%_
                     (let () (declare (not safe)) (##cdr _%e5420654231%_))))
                (if (gx#stx-null? _%tl5420854238%_)
                    ((lambda (_%L54241%_ _%L54243%_)
                       (cons _%L54241%_
                             (cons _%L54243%_
                                   (foldr (lambda (_%g5425854261%_
                                                   _%g5425954264%_)
                                            (cons _%g5425854261%_
                                                  _%g5425954264%_))
                                          '()
                                          _%L53966%_))))
                     _%hd5420754235%_
                     _%hd5420454225%_)
                    (_%g5419954214%_ _%g5420054218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5419954214%_
                                                     _%g5420054218%_))))
                                            (_%g5419954214%_
                                             _%g5420054218%_)))))
                                (_%g5419854267%_
                                 (list (if _%nil-check?54024%_
                                           (cons 'check-nil!
                                                 (cons _%object54022%_ '()))
                                           _%object54022%_)
                                       (gx#stx-identifier
                                        _%L53968%_
                                        (if _%checked-method?54023%_ '"" '"&")
                                        (let ((__obj88258 _%type54021%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj88258
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj88258
                                                 '1
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj88258
                                               'name)))
                                        '"-"
                                        _%part54100%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx53753%_
                               _%L53968%_
                               _%part54100%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx53753%_
                           _%type54021%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5402554033%_)
                                                  (let ((_%hd5403054277%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5402554033%_)))
                                                        (_%tl5403154280%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5402554033%_))))
                                                    (let* ((_%part54283%_
                                                            _%hd5403054277%_)
                                                           (_%rest54286%_
                                                            _%tl5403154280%_))
                                                      (_%K5402954273%_
                                                       _%rest54286%_
                                                       _%part54283%_)))
                                                  (_%else5402754094%_)))))
                                        _%$e54009%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L53968%_
                                                   (foldr (lambda (_%g5429054293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5429154296%_)
                    (cons _%g5429054293%_ _%g5429154296%_))
                  '()
                  _%L53966%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5398853995%_)
                             (let ((_%hd5399254303%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5398853995%_)))
                                   (_%tl5399354306%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5398853995%_))))
                               (let* ((_%var54309%_ _%hd5399254303%_)
                                      (_%parts54312%_ _%tl5399354306%_))
                                 (_%K5399154299%_
                                  _%parts54312%_
                                  _%var54309%_)))
                             (_%E5399054001%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L53968%_
                                   (foldr (lambda (_%g5431454317%_
                                                   _%g5431554320%_)
                                            (cons _%g5431454317%_
                                                  _%g5431554320%_))
                                          '()
                                          _%L53966%_))))))
                (_%__kont8371983720%_
                 (lambda (_%L53865%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5388053883%_ _%g5388153886%_)
                                  (cons _%g5388053883%_ _%g5388153886%_))
                                '()
                                _%L53865%_)))))
            (let* ((_%__match8379583796%_
                    (lambda (_%e5380153825%_
                             _%hd5380253829%_
                             _%tl5380353832%_
                             _%__splice8372183722%_
                             _%target5380453835%_
                             _%tl5380653838%_)
                      (letrec ((_%loop5380753841%_
                                (lambda (_%hd5380553845%_ _%arg5381153848%_)
                                  (if (gx#stx-pair? _%hd5380553845%_)
                                      (let ((_%e5380853851%_
                                             (gx#syntax-e _%hd5380553845%_)))
                                        (let ((_%lp-tl5381053858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5380853851%_)))
                                              (_%lp-hd5380953855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5380853851%_))))
                                          (_%loop5380753841%_
                                           _%lp-tl5381053858%_
                                           (cons _%lp-hd5380953855%_
                                                 _%arg5381153848%_))))
                                      (let ((_%arg5381253861%_
                                             (reverse _%arg5381153848%_)))
                                        (_%__kont8371983720%_
                                         _%arg5381253861%_))))))
                        (_%loop5380753841%_ _%target5380453835%_ '()))))
                   (_%__match8378183782%_
                    (lambda (_%e5377953896%_
                             _%hd5378053900%_
                             _%tl5378153903%_
                             _%e5378253906%_
                             _%hd5378353910%_
                             _%tl5378453913%_
                             _%e5378553916%_
                             _%hd5378653920%_
                             _%tl5378753923%_
                             _%e5378853926%_
                             _%hd5378953930%_
                             _%tl5379053933%_
                             _%__splice8371783718%_
                             _%target5379153936%_
                             _%tl5379353939%_)
                      (letrec ((_%loop5379453942%_
                                (lambda (_%hd5379253946%_ _%rand5379853949%_)
                                  (if (gx#stx-pair? _%hd5379253946%_)
                                      (let ((_%e5379553952%_
                                             (gx#syntax-e _%hd5379253946%_)))
                                        (let ((_%lp-tl5379753959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5379553952%_)))
                                              (_%lp-hd5379653956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5379553952%_))))
                                          (_%loop5379453942%_
                                           _%lp-tl5379753959%_
                                           (cons _%lp-hd5379653956%_
                                                 _%rand5379853949%_))))
                                      (let ((_%rand5379953962%_
                                             (reverse _%rand5379853949%_)))
                                        (_%__kont8371583716%_
                                         _%rand5379953962%_
                                         _%hd5378953930%_))))))
                        (_%loop5379453942%_ _%target5379153936%_ '()))))
                   (_%__match8375583756%_
                    (lambda (_%e5377953896%_
                             _%hd5378053900%_
                             _%tl5378153903%_
                             _%e5378253906%_
                             _%hd5378353910%_
                             _%tl5378453913%_)
                      (if (gx#stx-pair? _%hd5378353910%_)
                          (let ((_%e5378553916%_
                                 (gx#syntax-e _%hd5378353910%_)))
                            (let ((_%tl5378753923%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5378553916%_)))
                                  (_%hd5378653920%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5378553916%_))))
                              (if (gx#identifier? _%hd5378653920%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g88447_|
                                       _%hd5378653920%_)
                                      (if (gx#stx-pair? _%tl5378753923%_)
                                          (let ((_%e5378853926%_
                                                 (gx#syntax-e
                                                  _%tl5378753923%_)))
                                            (let ((_%tl5379053933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5378853926%_)))
                                                  (_%hd5378953930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5378853926%_))))
                                              (if (gx#stx-null?
                                                   _%tl5379053933%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5378453913%_)
                                                      (let ((_%__splice8371783718%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5378453913%_
                                                              '0)))
                                                        (let ((_%tl5379353939%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8371783718%_ '1)))
                      (_%target5379153936%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8371783718%_ '0))))
                  (if (gx#stx-null? _%tl5379353939%_)
                      (_%__match8378183782%_
                       _%e5377953896%_
                       _%hd5378053900%_
                       _%tl5378153903%_
                       _%e5378253906%_
                       _%hd5378353910%_
                       _%tl5378453913%_
                       _%e5378553916%_
                       _%hd5378653920%_
                       _%tl5378753923%_
                       _%e5378853926%_
                       _%hd5378953930%_
                       _%tl5379053933%_
                       _%__splice8371783718%_
                       _%target5379153936%_
                       _%tl5379353939%_)
                      (if (gx#stx-pair/null? _%tl5378153903%_)
                          (let ((_%__splice8372183722%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5378153903%_
                                  '0)))
                            (let ((_%tl5380653838%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8372183722%_ '1)))
                                  (_%target5380453835%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8372183722%_
                                      '0))))
                              (if (gx#stx-null? _%tl5380653838%_)
                                  (_%__match8379583796%_
                                   _%e5377953896%_
                                   _%hd5378053900%_
                                   _%tl5378153903%_
                                   _%__splice8372183722%_
                                   _%target5380453835%_
                                   _%tl5380653838%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5375853818%_)))))
                          (let () (declare (not safe)) (_%g5375853818%_))))))
              (if (gx#stx-pair/null? _%tl5378153903%_)
                  (let ((_%__splice8372183722%_
                         (gx#syntax-split-splice->vector _%tl5378153903%_ '0)))
                    (let ((_%tl5380653838%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8372183722%_ '1)))
                          (_%target5380453835%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8372183722%_ '0))))
                      (if (gx#stx-null? _%tl5380653838%_)
                          (_%__match8379583796%_
                           _%e5377953896%_
                           _%hd5378053900%_
                           _%tl5378153903%_
                           _%__splice8372183722%_
                           _%target5380453835%_
                           _%tl5380653838%_)
                          (let () (declare (not safe)) (_%g5375853818%_)))))
                  (let () (declare (not safe)) (_%g5375853818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5378153903%_)
                                                      (let ((_%__splice8372183722%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5378153903%_
                                                              '0)))
                                                        (let ((_%tl5380653838%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8372183722%_ '1)))
                      (_%target5380453835%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8372183722%_ '0))))
                  (if (gx#stx-null? _%tl5380653838%_)
                      (_%__match8379583796%_
                       _%e5377953896%_
                       _%hd5378053900%_
                       _%tl5378153903%_
                       _%__splice8372183722%_
                       _%target5380453835%_
                       _%tl5380653838%_)
                      (let () (declare (not safe)) (_%g5375853818%_)))))
              (let () (declare (not safe)) (_%g5375853818%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5378153903%_)
                                              (let ((_%__splice8372183722%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5378153903%_
                                                      '0)))
                                                (let ((_%tl5380653838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8372183722%_
                                                          '1)))
                                                      (_%target5380453835%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8372183722%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5380653838%_)
                                                      (_%__match8379583796%_
                                                       _%e5377953896%_
                                                       _%hd5378053900%_
                                                       _%tl5378153903%_
                                                       _%__splice8372183722%_
                                                       _%target5380453835%_
                                                       _%tl5380653838%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5375853818%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5375853818%_))))
                                      (if (gx#stx-pair/null? _%tl5378153903%_)
                                          (let ((_%__splice8372183722%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5378153903%_
                                                  '0)))
                                            (let ((_%tl5380653838%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8372183722%_
                                                      '1)))
                                                  (_%target5380453835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8372183722%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5380653838%_)
                                                  (_%__match8379583796%_
                                                   _%e5377953896%_
                                                   _%hd5378053900%_
                                                   _%tl5378153903%_
                                                   _%__splice8372183722%_
                                                   _%target5380453835%_
                                                   _%tl5380653838%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5375853818%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5375853818%_))))
                                  (if (gx#stx-pair/null? _%tl5378153903%_)
                                      (let ((_%__splice8372183722%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5378153903%_
                                              '0)))
                                        (let ((_%tl5380653838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8372183722%_
                                                  '1)))
                                              (_%target5380453835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8372183722%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5380653838%_)
                                              (_%__match8379583796%_
                                               _%e5377953896%_
                                               _%hd5378053900%_
                                               _%tl5378153903%_
                                               _%__splice8372183722%_
                                               _%target5380453835%_
                                               _%tl5380653838%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5375853818%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5375853818%_))))))
                          (if (gx#stx-pair/null? _%tl5378153903%_)
                              (let ((_%__splice8372183722%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5378153903%_
                                      '0)))
                                (let ((_%tl5380653838%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8372183722%_
                                          '1)))
                                      (_%target5380453835%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8372183722%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5380653838%_)
                                      (_%__match8379583796%_
                                       _%e5377953896%_
                                       _%hd5378053900%_
                                       _%tl5378153903%_
                                       _%__splice8372183722%_
                                       _%target5380453835%_
                                       _%tl5380653838%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5375853818%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5375853818%_))))))
                   (_%__match8374383744%_
                    (lambda (_%e5376254330%_
                             _%hd5376354334%_
                             _%tl5376454337%_
                             _%e5376554340%_
                             _%hd5376654344%_
                             _%tl5376754347%_
                             _%__splice8371383714%_
                             _%target5376854350%_
                             _%tl5377054353%_)
                      (letrec ((_%loop5377154356%_
                                (lambda (_%hd5376954360%_ _%rand5377554363%_)
                                  (if (gx#stx-pair? _%hd5376954360%_)
                                      (let ((_%e5377254366%_
                                             (gx#syntax-e _%hd5376954360%_)))
                                        (let ((_%lp-tl5377454373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5377254366%_)))
                                              (_%lp-hd5377354370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5377254366%_))))
                                          (_%loop5377154356%_
                                           _%lp-tl5377454373%_
                                           (cons _%lp-hd5377354370%_
                                                 _%rand5377554363%_))))
                                      (let ((_%rand5377654376%_
                                             (reverse _%rand5377554363%_)))
                                        (let ((_%L54380%_ _%rand5377654376%_)
                                              (_%L54382%_ _%hd5376654344%_))
                                          (if (gx#identifier? _%L54382%_)
                                              (_%__kont8371183712%_
                                               _%L54380%_
                                               _%L54382%_)
                                              (_%__match8375583756%_
                                               _%e5376254330%_
                                               _%hd5376354334%_
                                               _%tl5376454337%_
                                               _%e5376554340%_
                                               _%hd5376654344%_
                                               _%tl5376754347%_))))))))
                        (_%loop5377154356%_ _%target5376854350%_ '())))))
              (if (gx#stx-pair? _%__stx8370883709%_)
                  (let ((_%e5376254330%_ (gx#syntax-e _%__stx8370883709%_)))
                    (let ((_%tl5376454337%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5376254330%_)))
                          (_%hd5376354334%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5376254330%_))))
                      (if (gx#stx-pair? _%tl5376454337%_)
                          (let ((_%e5376554340%_
                                 (gx#syntax-e _%tl5376454337%_)))
                            (let ((_%tl5376754347%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5376554340%_)))
                                  (_%hd5376654344%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5376554340%_))))
                              (if (gx#stx-pair/null? _%tl5376754347%_)
                                  (let ((_%__splice8371383714%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5376754347%_
                                          '0)))
                                    (let ((_%tl5377054353%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8371383714%_
                                              '1)))
                                          (_%target5376854350%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8371383714%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5377054353%_)
                                          (_%__match8374383744%_
                                           _%e5376254330%_
                                           _%hd5376354334%_
                                           _%tl5376454337%_
                                           _%e5376554340%_
                                           _%hd5376654344%_
                                           _%tl5376754347%_
                                           _%__splice8371383714%_
                                           _%target5376854350%_
                                           _%tl5377054353%_)
                                          (if (gx#stx-pair? _%hd5376654344%_)
                                              (let ((_%e5378553916%_
                                                     (gx#syntax-e
                                                      _%hd5376654344%_)))
                                                (let ((_%tl5378753923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5378553916%_)))
                                                      (_%hd5378653920%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5378553916%_))))
                                                  (if (gx#identifier?
                                                       _%hd5378653920%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g88447_|
                                                           _%hd5378653920%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5378753923%_)
                                                              (let ((_%e5378853926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5378753923%_)))
                        (let ((_%tl5379053933%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5378853926%_)))
                              (_%hd5378953930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5378853926%_))))
                          (if (gx#stx-pair/null? _%tl5376454337%_)
                              (let ((_%__splice8372183722%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5376454337%_
                                      '0)))
                                (let ((_%tl5380653838%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8372183722%_
                                          '1)))
                                      (_%target5380453835%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8372183722%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5380653838%_)
                                      (_%__match8379583796%_
                                       _%e5376254330%_
                                       _%hd5376354334%_
                                       _%tl5376454337%_
                                       _%__splice8372183722%_
                                       _%target5380453835%_
                                       _%tl5380653838%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5375853818%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5375853818%_)))))
                      (if (gx#stx-pair/null? _%tl5376454337%_)
                          (let ((_%__splice8372183722%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5376454337%_
                                  '0)))
                            (let ((_%tl5380653838%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8372183722%_ '1)))
                                  (_%target5380453835%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8372183722%_
                                      '0))))
                              (if (gx#stx-null? _%tl5380653838%_)
                                  (_%__match8379583796%_
                                   _%e5376254330%_
                                   _%hd5376354334%_
                                   _%tl5376454337%_
                                   _%__splice8372183722%_
                                   _%target5380453835%_
                                   _%tl5380653838%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5375853818%_)))))
                          (let () (declare (not safe)) (_%g5375853818%_))))
                  (if (gx#stx-pair/null? _%tl5376454337%_)
                      (let ((_%__splice8372183722%_
                             (gx#syntax-split-splice->vector
                              _%tl5376454337%_
                              '0)))
                        (let ((_%tl5380653838%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8372183722%_ '1)))
                              (_%target5380453835%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8372183722%_ '0))))
                          (if (gx#stx-null? _%tl5380653838%_)
                              (_%__match8379583796%_
                               _%e5376254330%_
                               _%hd5376354334%_
                               _%tl5376454337%_
                               _%__splice8372183722%_
                               _%target5380453835%_
                               _%tl5380653838%_)
                              (let ()
                                (declare (not safe))
                                (_%g5375853818%_)))))
                      (let () (declare (not safe)) (_%g5375853818%_))))
              (if (gx#stx-pair/null? _%tl5376454337%_)
                  (let ((_%__splice8372183722%_
                         (gx#syntax-split-splice->vector _%tl5376454337%_ '0)))
                    (let ((_%tl5380653838%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8372183722%_ '1)))
                          (_%target5380453835%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8372183722%_ '0))))
                      (if (gx#stx-null? _%tl5380653838%_)
                          (_%__match8379583796%_
                           _%e5376254330%_
                           _%hd5376354334%_
                           _%tl5376454337%_
                           _%__splice8372183722%_
                           _%target5380453835%_
                           _%tl5380653838%_)
                          (let () (declare (not safe)) (_%g5375853818%_)))))
                  (let () (declare (not safe)) (_%g5375853818%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5376454337%_)
                                                  (let ((_%__splice8372183722%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5376454337%_
                                                          '0)))
                                                    (let ((_%tl5380653838%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8372183722%_
                                                              '1)))
                                                          (_%target5380453835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8372183722%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5380653838%_)
                                                          (_%__match8379583796%_
                                                           _%e5376254330%_
                                                           _%hd5376354334%_
                                                           _%tl5376454337%_
                                                           _%__splice8372183722%_
                                                           _%target5380453835%_
                                                           _%tl5380653838%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5375853818%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5375853818%_)))))))
                                  (if (gx#stx-pair? _%hd5376654344%_)
                                      (let ((_%e5378553916%_
                                             (gx#syntax-e _%hd5376654344%_)))
                                        (let ((_%tl5378753923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5378553916%_)))
                                              (_%hd5378653920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5378553916%_))))
                                          (if (gx#identifier? _%hd5378653920%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g88447_|
                                                   _%hd5378653920%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5378753923%_)
                                                      (let ((_%e5378853926%_
                                                             (gx#syntax-e
                                                              _%tl5378753923%_)))
                                                        (let ((_%tl5379053933%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5378853926%_)))
                      (_%hd5378953930%_
                       (let () (declare (not safe)) (##car _%e5378853926%_))))
                  (if (gx#stx-pair/null? _%tl5376454337%_)
                      (let ((_%__splice8372183722%_
                             (gx#syntax-split-splice->vector
                              _%tl5376454337%_
                              '0)))
                        (let ((_%tl5380653838%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8372183722%_ '1)))
                              (_%target5380453835%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8372183722%_ '0))))
                          (if (gx#stx-null? _%tl5380653838%_)
                              (_%__match8379583796%_
                               _%e5376254330%_
                               _%hd5376354334%_
                               _%tl5376454337%_
                               _%__splice8372183722%_
                               _%target5380453835%_
                               _%tl5380653838%_)
                              (let ()
                                (declare (not safe))
                                (_%g5375853818%_)))))
                      (let () (declare (not safe)) (_%g5375853818%_)))))
              (if (gx#stx-pair/null? _%tl5376454337%_)
                  (let ((_%__splice8372183722%_
                         (gx#syntax-split-splice->vector _%tl5376454337%_ '0)))
                    (let ((_%tl5380653838%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8372183722%_ '1)))
                          (_%target5380453835%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8372183722%_ '0))))
                      (if (gx#stx-null? _%tl5380653838%_)
                          (_%__match8379583796%_
                           _%e5376254330%_
                           _%hd5376354334%_
                           _%tl5376454337%_
                           _%__splice8372183722%_
                           _%target5380453835%_
                           _%tl5380653838%_)
                          (let () (declare (not safe)) (_%g5375853818%_)))))
                  (let () (declare (not safe)) (_%g5375853818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5376454337%_)
                                                      (let ((_%__splice8372183722%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5376454337%_
                                                              '0)))
                                                        (let ((_%tl5380653838%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8372183722%_ '1)))
                      (_%target5380453835%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8372183722%_ '0))))
                  (if (gx#stx-null? _%tl5380653838%_)
                      (_%__match8379583796%_
                       _%e5376254330%_
                       _%hd5376354334%_
                       _%tl5376454337%_
                       _%__splice8372183722%_
                       _%target5380453835%_
                       _%tl5380653838%_)
                      (let () (declare (not safe)) (_%g5375853818%_)))))
              (let () (declare (not safe)) (_%g5375853818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5376454337%_)
                                                  (let ((_%__splice8372183722%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5376454337%_
                                                          '0)))
                                                    (let ((_%tl5380653838%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8372183722%_
                                                              '1)))
                                                          (_%target5380453835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8372183722%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5380653838%_)
                                                          (_%__match8379583796%_
                                                           _%e5376254330%_
                                                           _%hd5376354334%_
                                                           _%tl5376454337%_
                                                           _%__splice8372183722%_
                                                           _%target5380453835%_
                                                           _%tl5380653838%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5375853818%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5375853818%_))))))
                                      (if (gx#stx-pair/null? _%tl5376454337%_)
                                          (let ((_%__splice8372183722%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5376454337%_
                                                  '0)))
                                            (let ((_%tl5380653838%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8372183722%_
                                                      '1)))
                                                  (_%target5380453835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8372183722%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5380653838%_)
                                                  (_%__match8379583796%_
                                                   _%e5376254330%_
                                                   _%hd5376354334%_
                                                   _%tl5376454337%_
                                                   _%__splice8372183722%_
                                                   _%target5380453835%_
                                                   _%tl5380653838%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5375853818%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5375853818%_)))))))
                          (if (gx#stx-pair/null? _%tl5376454337%_)
                              (let ((_%__splice8372183722%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5376454337%_
                                      '0)))
                                (let ((_%tl5380653838%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8372183722%_
                                          '1)))
                                      (_%target5380453835%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8372183722%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5380653838%_)
                                      (_%__match8379583796%_
                                       _%e5376254330%_
                                       _%hd5376354334%_
                                       _%tl5376454337%_
                                       _%__splice8372183722%_
                                       _%target5380453835%_
                                       _%tl5380653838%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5375853818%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5375853818%_))))))
                  (let () (declare (not safe)) (_%g5375853818%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx54414%_)
        (let* ((_%__stx8379883799%_ _%stx54414%_)
               (_%g5441854439%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8379883799%_))))
          (let ((_%__kont8380183802%_
                 (lambda (_%L54507%_)
                   (let* ((_%g5451954526%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx54414%_
                            _%L54507%_))
                          (_%E5452154532%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5451954526%_
                                    '([var . parts]))
                             (void)))
                          (_%K5452254748%_
                           (lambda (_%parts54536%_ _%var54538%_)
                             (let ((_%$e54540%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var54538%_))))
                               (if _%$e54540%_
                                   ((lambda (_%te54544%_)
                                      (let _%loop54547%_ ((_%parts54550%_
                                                           _%parts54536%_)
                                                          (_%type54552%_
                                                           (##direct-structure-ref
                                                            _%te54544%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object54553%_
                                                           _%var54538%_)
                                                          (_%nil-check?54554%_
                                                           '#f))
                                        (let* ((_%parts5455554563%_
                                                _%parts54550%_)
                                               (_%else5455754575%_
                                                (lambda () _%object54553%_))
                                               (_%K5455954730%_
                                                (lambda (_%rest54579%_
                                                         _%part54581%_)
                                                  (if (and (not _%nil-check?54554%_)
                                                           (let ((__tmp88448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part54581%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp88448)))
              (let ((_%str54585%_ (symbol->string _%part54581%_)))
                (_%loop54547%_
                 (cons (let ((__tmp88449
                              (substring
                               _%str54585%_
                               '1
                               (string-length _%str54585%_))))
                         (declare (not safe))
                         (##string->symbol __tmp88449))
                       _%rest54579%_)
                 _%type54552%_
                 _%object54553%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type54552%_))
                  (let* ((_%g5459054605%_
                          (lambda (_%g5459154601%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5459154601%_)))
                         (_%g5458954722%_
                          (lambda (_%g5459154609%_)
                            (if (gx#stx-pair? _%g5459154609%_)
                                (let ((_%e5459454612%_
                                       (gx#syntax-e _%g5459154609%_)))
                                  (let ((_%hd5459554616%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5459454612%_)))
                                        (_%tl5459654619%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5459454612%_))))
                                    (if (gx#stx-pair? _%tl5459654619%_)
                                        (let ((_%e5459754622%_
                                               (gx#syntax-e _%tl5459654619%_)))
                                          (let ((_%hd5459854626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5459754622%_)))
                                                (_%tl5459954629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5459754622%_))))
                                            (if (gx#stx-null? _%tl5459954629%_)
                                                ((lambda (_%L54632%_
                                                          _%L54634%_)
                                                   (if (null? _%rest54579%_)
                                                       (let ((_%$e54664%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type54552%_
                                                               _%part54581%_)))
                                                         (if _%$e54664%_
                                                             ((lambda (_%slot-type54668%_)
                                                                (let* ((_%g5467154679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5467254675%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5467254675%_)))
                               (_%g5467054702%_
                                (lambda (_%g5467254683%_)
                                  ((lambda (_%L54686%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L54686%_ '()))
                                                 (cons (cons _%L54632%_
                                                             (cons _%L54634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5467254683%_))))
                          (_%g5467054702%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx54414%_
                              _%slot-type54668%_)))))
                      _%$e54664%_)
                     (if _%nil-check?54554%_
                         (cons _%L54632%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L54634%_ '()))
                                     '()))
                         (cons _%L54632%_ (cons _%L54634%_ '())))))
               (let ((_%$e54710%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type54552%_
                       _%part54581%_)))
                 (if _%$e54710%_
                     ((lambda (_%type54714%_)
                        (let ((_%type54717%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx54414%_
                                  _%type54714%_))))
                          (if _%nil-check?54554%_
                              (_%loop54547%_
                               _%rest54579%_
                               _%type54717%_
                               (cons _%L54632%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L54634%_ '()))
                                           '()))
                               '#f)
                              (_%loop54547%_
                               _%rest54579%_
                               _%type54717%_
                               (cons _%L54632%_ (cons _%L54634%_ '()))
                               '#f))))
                      _%$e54710%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx54414%_
                      _%L54507%_
                      _%part54581%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5459854626%_
                                                 _%hd5459554616%_)
                                                (_%g5459054605%_
                                                 _%g5459154609%_))))
                                        (_%g5459054605%_ _%g5459154609%_))))
                                (_%g5459054605%_ _%g5459154609%_)))))
                    (_%g5458954722%_
                     (list (if _%nil-check?54554%_
                               (cons 'check-nil! (cons _%object54553%_ '()))
                               _%object54553%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx54414%_
                            _%type54552%_
                            _%part54581%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type54552%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx54414%_
                       _%type54552%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5455554563%_)
                                              (let ((_%hd5456054734%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5455554563%_)))
                                                    (_%tl5456154737%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5455554563%_))))
                                                (let* ((_%part54740%_
                                                        _%hd5456054734%_)
                                                       (_%rest54743%_
                                                        _%tl5456154737%_))
                                                  (_%K5455954730%_
                                                   _%rest54743%_
                                                   _%part54740%_)))
                                              (_%else5455754575%_)))))
                                    _%$e54540%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L54507%_ '())))))))
                     (if (pair? _%g5451954526%_)
                         (let ((_%hd5452354752%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5451954526%_)))
                               (_%tl5452454755%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5451954526%_))))
                           (let* ((_%var54758%_ _%hd5452354752%_)
                                  (_%parts54761%_ _%tl5452454755%_))
                             (_%K5452254748%_ _%parts54761%_ _%var54758%_)))
                         (_%E5452154532%_)))))
                (_%__kont8380383804%_
                 (lambda (_%L54466%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L54466%_ '())))))
            (let ((_%__match8381983820%_
                   (lambda (_%e5442154487%_
                            _%hd5442254491%_
                            _%tl5442354494%_
                            _%e5442454497%_
                            _%hd5442554501%_
                            _%tl5442654504%_)
                     (let ((_%L54507%_ _%hd5442554501%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L54507%_)
                           (_%__kont8380183802%_ _%L54507%_)
                           (_%__kont8380383804%_ _%hd5442554501%_))))))
              (if (gx#stx-pair? _%__stx8379883799%_)
                  (let ((_%e5442154487%_ (gx#syntax-e _%__stx8379883799%_)))
                    (let ((_%tl5442354494%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5442154487%_)))
                          (_%hd5442254491%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5442154487%_))))
                      (if (gx#stx-pair? _%tl5442354494%_)
                          (let ((_%e5442454497%_
                                 (gx#syntax-e _%tl5442354494%_)))
                            (let ((_%tl5442654504%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5442454497%_)))
                                  (_%hd5442554501%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5442454497%_))))
                              (if (gx#stx-null? _%tl5442654504%_)
                                  (_%__match8381983820%_
                                   _%e5442154487%_
                                   _%hd5442254491%_
                                   _%tl5442354494%_
                                   _%e5442454497%_
                                   _%hd5442554501%_
                                   _%tl5442654504%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5441854439%_)))))
                          (let () (declare (not safe)) (_%g5441854439%_)))))
                  (let () (declare (not safe)) (_%g5441854439%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx54768%_)
        (let* ((_%__stx8383683837%_ _%stx54768%_)
               (_%g5477254801%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8383683837%_))))
          (let ((_%__kont8383983840%_
                 (lambda (_%L54893%_ _%L54895%_)
                   (let* ((_%g5490954916%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx54768%_
                            _%L54895%_))
                          (_%E5491154922%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5490954916%_
                                    '([var . parts]))
                             (void)))
                          (_%K5491255152%_
                           (lambda (_%parts54926%_ _%var54928%_)
                             (let ((_%$e54930%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var54928%_))))
                               (if _%$e54930%_
                                   ((lambda (_%te54934%_)
                                      (let _%loop54937%_ ((_%parts54940%_
                                                           _%parts54926%_)
                                                          (_%type54942%_
                                                           (##direct-structure-ref
                                                            _%te54934%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object54943%_
                                                           _%var54928%_)
                                                          (_%checked-mutator?54944%_
                                                           (##direct-structure-ref
                                                            _%te54934%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?54945%_
                                                           '#f))
                                        (let* ((_%parts5494654953%_
                                                _%parts54940%_)
                                               (_%E5494854959%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5494654953%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5494955134%_
                                                (lambda (_%rest54963%_
                                                         _%part54965%_)
                                                  (if (and (not _%nil-check?54945%_)
                                                           (let ((__tmp88450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part54965%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp88450)))
              (let ((_%str54969%_ (symbol->string _%part54965%_)))
                (_%loop54937%_
                 (cons (let ((__tmp88451
                              (substring
                               _%str54969%_
                               '1
                               (string-length _%str54969%_))))
                         (declare (not safe))
                         (##string->symbol __tmp88451))
                       _%rest54963%_)
                 _%type54942%_
                 _%object54943%_
                 _%checked-mutator?54944%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type54942%_))
                  (if (null? _%rest54963%_)
                      (let* ((_%g5497654991%_
                              (lambda (_%g5497754987%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5497754987%_)))
                             (_%g5497555048%_
                              (lambda (_%g5497754995%_)
                                (if (gx#stx-pair? _%g5497754995%_)
                                    (let ((_%e5498054998%_
                                           (gx#syntax-e _%g5497754995%_)))
                                      (let ((_%hd5498155002%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5498054998%_)))
                                            (_%tl5498255005%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5498054998%_))))
                                        (if (gx#stx-pair? _%tl5498255005%_)
                                            (let ((_%e5498355008%_
                                                   (gx#syntax-e
                                                    _%tl5498255005%_)))
                                              (let ((_%hd5498455012%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5498355008%_)))
                                                    (_%tl5498555015%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5498355008%_))))
                                                (if (gx#stx-null?
                                                     _%tl5498555015%_)
                                                    ((lambda (_%L55018%_
                                                              _%L55020%_)
                                                       (if _%nil-check?54945%_
                                                           (cons _%L55018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L55020%_ '()))
                               (cons _%L54893%_ '())))
                   (cons _%L55018%_ (cons _%L55020%_ (cons _%L54893%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5498455012%_
                                                     _%hd5498155002%_)
                                                    (_%g5497654991%_
                                                     _%g5497754995%_))))
                                            (_%g5497654991%_
                                             _%g5497754995%_))))
                                    (_%g5497654991%_ _%g5497754995%_)))))
                        (_%g5497555048%_
                         (list _%object54943%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx54768%_
                                _%type54942%_
                                _%part54965%_
                                (if _%checked-mutator?54944%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type54942%_
                                     _%part54965%_)
                                    '#f)))))
                      (let ((_%$e55052%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type54942%_
                              _%part54965%_)))
                        (if _%$e55052%_
                            ((lambda (_%type55056%_)
                               (let* ((_%type55059%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx54768%_
                                          _%type55056%_)))
                                      (_%g5506255077%_
                                       (lambda (_%g5506355073%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5506355073%_)))
                                      (_%g5506155124%_
                                       (lambda (_%g5506355081%_)
                                         (if (gx#stx-pair? _%g5506355081%_)
                                             (let ((_%e5506655084%_
                                                    (gx#syntax-e
                                                     _%g5506355081%_)))
                                               (let ((_%hd5506755088%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5506655084%_)))
                                                     (_%tl5506855091%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5506655084%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5506855091%_)
                                                     (let ((_%e5506955094%_
                                                            (gx#syntax-e
                                                             _%tl5506855091%_)))
                                                       (let ((_%hd5507055098%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5506955094%_)))
                     (_%tl5507155101%_
                      (let () (declare (not safe)) (##cdr _%e5506955094%_))))
                 (if (gx#stx-null? _%tl5507155101%_)
                     ((lambda (_%L55104%_ _%L55106%_)
                        (_%loop54937%_
                         _%rest54963%_
                         _%type55059%_
                         (cons _%L55104%_ (cons _%L55106%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type55059%_
                          _%part54965%_)
                         '#f))
                      _%hd5507055098%_
                      _%hd5506755088%_)
                     (_%g5506255077%_ _%g5506355081%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5506255077%_
                                                      _%g5506355081%_))))
                                             (_%g5506255077%_
                                              _%g5506355081%_)))))
                                 (_%g5506155124%_
                                  (list (if _%nil-check?54945%_
                                            (cons 'check-nil!
                                                  (cons _%object54943%_ '()))
                                            _%object54943%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx54768%_
                                         _%type55059%_
                                         _%part54965%_)))))
                             _%$e55052%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx54768%_
                             _%L54895%_
                             _%part54965%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type54942%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx54768%_
                       _%type54942%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5494654953%_)
                                              (let ((_%hd5495055138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5494654953%_)))
                                                    (_%tl5495155141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5494654953%_))))
                                                (let* ((_%part55144%_
                                                        _%hd5495055138%_)
                                                       (_%rest55147%_
                                                        _%tl5495155141%_))
                                                  (_%K5494955134%_
                                                   _%rest55147%_
                                                   _%part55144%_)))
                                              (_%E5494854959%_)))))
                                    _%$e54930%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx54768%_)))))))
                     (if (pair? _%g5490954916%_)
                         (let ((_%hd5491355156%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5490954916%_)))
                               (_%tl5491455159%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5490954916%_))))
                           (let* ((_%var55162%_ _%hd5491355156%_)
                                  (_%parts55165%_ _%tl5491455159%_))
                             (_%K5491255152%_ _%parts55165%_ _%var55162%_)))
                         (_%E5491154922%_)))))
                (_%__kont8384183842%_
                 (lambda (_%L54838%_ _%L54840%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx54768%_)))))
            (let ((_%__match8386383864%_
                   (lambda (_%e5477654863%_
                            _%hd5477754867%_
                            _%tl5477854870%_
                            _%e5477954873%_
                            _%hd5478054877%_
                            _%tl5478154880%_
                            _%e5478254883%_
                            _%hd5478354887%_
                            _%tl5478454890%_)
                     (let ((_%L54893%_ _%hd5478354887%_)
                           (_%L54895%_ _%hd5478054877%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L54895%_)
                           (_%__kont8383983840%_ _%L54893%_ _%L54895%_)
                           (_%__kont8384183842%_
                            _%hd5478354887%_
                            _%hd5478054877%_))))))
              (if (gx#stx-pair? _%__stx8383683837%_)
                  (let ((_%e5477654863%_ (gx#syntax-e _%__stx8383683837%_)))
                    (let ((_%tl5477854870%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5477654863%_)))
                          (_%hd5477754867%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5477654863%_))))
                      (if (gx#stx-pair? _%tl5477854870%_)
                          (let ((_%e5477954873%_
                                 (gx#syntax-e _%tl5477854870%_)))
                            (let ((_%tl5478154880%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5477954873%_)))
                                  (_%hd5478054877%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5477954873%_))))
                              (if (gx#stx-pair? _%tl5478154880%_)
                                  (let ((_%e5478254883%_
                                         (gx#syntax-e _%tl5478154880%_)))
                                    (let ((_%tl5478454890%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5478254883%_)))
                                          (_%hd5478354887%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5478254883%_))))
                                      (if (gx#stx-null? _%tl5478454890%_)
                                          (_%__match8386383864%_
                                           _%e5477654863%_
                                           _%hd5477754867%_
                                           _%tl5477854870%_
                                           _%e5477954873%_
                                           _%hd5478054877%_
                                           _%tl5478154880%_
                                           _%e5478254883%_
                                           _%hd5478354887%_
                                           _%tl5478454890%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5477254801%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5477254801%_)))))
                          (let () (declare (not safe)) (_%g5477254801%_)))))
                  (let () (declare (not safe)) (_%g5477254801%_))))))))))
