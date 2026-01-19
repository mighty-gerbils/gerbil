(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g92287_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92288_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92289_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92292_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92293_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92296_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92297_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92298_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92299_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92303_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92304_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92305_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92306_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92310_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx50346%_)
        (let* ((_%__stx8638386384%_ _%stx50346%_)
               (_%g5035550564%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8638386384%_))))
          (let ((_%__kont8638686387%_
                 (lambda (_%L51470%_
                          _%L51472%_
                          _%L51473%_
                          _%L51474%_
                          _%L51475%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L51475%_ (cons _%L51474%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L51475%_
                                                       (cons _%L51473%_
                                                             (cons _%L51472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5151851521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5151951524%_)
                  (cons _%g5151851521%_ _%g5151951524%_))
                '()
                _%L51470%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8639086391%_
                 (lambda (_%L51314%_
                          _%L51316%_
                          _%L51317%_
                          _%L51318%_
                          _%L51319%_
                          _%L51320%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L51320%_ (cons _%L51319%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L51320%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L51318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L51320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L51317%_ (cons _%L51316%_ '())))
                           (foldr (lambda (_%g5136451367%_ _%g5136551370%_)
                                    (cons _%g5136451367%_ _%g5136551370%_))
                                  '()
                                  _%L51314%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8639486395%_
                 (lambda (_%L51131%_ _%L51133%_ _%L51134%_ _%L51135%_)
                   (let ((_%meta51172%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx50346%_
                             _%L51133%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta51172%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%L51135%_
                                           (cons _%L51134%_
                                                 (cons _%L51133%_ '())))
                                     (foldr (lambda (_%g5117651179%_
                                                     _%g5117751182%_)
                                              (cons _%g5117651179%_
                                                    _%g5117751182%_))
                                            '()
                                            _%L51131%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta51172%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%L51135%_
                                               (cons _%L51134%_
                                                     (cons _%L51133%_ '())))
                                         (foldr (lambda (_%g5118651189%_
                                                         _%g5118751192%_)
                                                  (cons _%g5118651189%_
                                                        _%g5118751192%_))
                                                '()
                                                _%L51131%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx50346%_
                              _%L51133%_
                              _%meta51172%_))))))
                (_%__kont8639886399%_
                 (lambda (_%L51009%_ _%L51011%_ _%L51012%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L51012%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L51011%_ '())))
                               (foldr (lambda (_%g5103551038%_ _%g5103651041%_)
                                        (cons _%g5103551038%_ _%g5103651041%_))
                                      '()
                                      _%L51009%_)))))
                (_%__kont8640286403%_
                 (lambda (_%L50867%_
                          _%L50869%_
                          _%L50870%_
                          _%L50871%_
                          _%L50872%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L50872%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L50871%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L50872%_
                                                       (cons _%L50870%_
                                                             (cons _%L50869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5091350916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5091450919%_)
                  (cons _%g5091350916%_ _%g5091450919%_))
                '()
                _%L50867%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8640686407%_
                 (lambda (_%L50725%_ _%L50727%_ _%L50728%_ _%L50729%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L50729%_ _%L50728%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L50727%_
                                                 (foldr (lambda (_%g5075150754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5075250757%_)
                  (cons _%g5075150754%_ _%g5075250757%_))
                '()
                _%L50725%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8641086411%_
                 (lambda (_%L50621%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5063950642%_ _%g5064050645%_)
                                        (cons _%g5063950642%_ _%g5064050645%_))
                                      '()
                                      _%L50621%_))))))
            (let* ((_%__match8671686717%_
                    (lambda (_%e5054450571%_
                             _%hd5054550575%_
                             _%tl5054650578%_
                             _%e5054750581%_
                             _%hd5054850585%_
                             _%tl5054950588%_
                             _%__splice8641286413%_
                             _%target5055050591%_
                             _%tl5055250594%_)
                      (letrec ((_%loop5055350597%_
                                (lambda (_%hd5055150601%_ _%body5055750604%_)
                                  (if (gx#stx-pair? _%hd5055150601%_)
                                      (let ((_%e5055450607%_
                                             (gx#syntax-e _%hd5055150601%_)))
                                        (let ((_%lp-tl5055650614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5055450607%_)))
                                              (_%lp-hd5055550611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5055450607%_))))
                                          (_%loop5055350597%_
                                           _%lp-tl5055650614%_
                                           (cons _%lp-hd5055550611%_
                                                 _%body5055750604%_))))
                                      (let ((_%body5055850617%_
                                             (reverse _%body5055750604%_)))
                                        (_%__kont8641086411%_
                                         _%body5055850617%_))))))
                        (_%loop5055350597%_ _%target5055050591%_ '()))))
                   (_%__match8669486695%_
                    (lambda (_%e5052250655%_
                             _%hd5052350659%_
                             _%tl5052450662%_
                             _%e5052550665%_
                             _%hd5052650669%_
                             _%tl5052750672%_
                             _%e5052850675%_
                             _%hd5052950679%_
                             _%tl5053050682%_
                             _%e5053150685%_
                             _%hd5053250689%_
                             _%tl5053350692%_
                             _%__splice8640886409%_
                             _%target5053450695%_
                             _%tl5053650698%_)
                      (letrec ((_%loop5053750701%_
                                (lambda (_%hd5053550705%_ _%body5054150708%_)
                                  (if (gx#stx-pair? _%hd5053550705%_)
                                      (let ((_%e5053850711%_
                                             (gx#syntax-e _%hd5053550705%_)))
                                        (let ((_%lp-tl5054050718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5053850711%_)))
                                              (_%lp-hd5053950715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5053850711%_))))
                                          (_%loop5053750701%_
                                           _%lp-tl5054050718%_
                                           (cons _%lp-hd5053950715%_
                                                 _%body5054150708%_))))
                                      (let ((_%body5054250721%_
                                             (reverse _%body5054150708%_)))
                                        (let ((_%L50725%_ _%body5054250721%_)
                                              (_%L50727%_ _%tl5053050682%_)
                                              (_%L50728%_ _%tl5053350692%_)
                                              (_%L50729%_ _%hd5053250689%_))
                                          (if (gx#identifier? _%L50729%_)
                                              (_%__kont8640686407%_
                                               _%L50725%_
                                               _%L50727%_
                                               _%L50728%_
                                               _%L50729%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5035550564%_)))))))))
                        (_%loop5053750701%_ _%target5053450695%_ '()))))
                   (_%__match8668086681%_
                    (lambda (_%e5052250655%_
                             _%hd5052350659%_
                             _%tl5052450662%_
                             _%e5052550665%_
                             _%hd5052650669%_
                             _%tl5052750672%_
                             _%e5052850675%_
                             _%hd5052950679%_
                             _%tl5053050682%_)
                      (if (gx#stx-pair? _%hd5052950679%_)
                          (let ((_%e5053150685%_
                                 (gx#syntax-e _%hd5052950679%_)))
                            (let ((_%tl5053350692%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5053150685%_)))
                                  (_%hd5053250689%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5053150685%_))))
                              (if (gx#stx-pair/null? _%tl5052750672%_)
                                  (let ((_%__splice8640886409%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5052750672%_
                                          '0)))
                                    (let ((_%tl5053650698%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8640886409%_
                                              '1)))
                                          (_%target5053450695%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8640886409%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5053650698%_)
                                          (_%__match8669486695%_
                                           _%e5052250655%_
                                           _%hd5052350659%_
                                           _%tl5052450662%_
                                           _%e5052550665%_
                                           _%hd5052650669%_
                                           _%tl5052750672%_
                                           _%e5052850675%_
                                           _%hd5052950679%_
                                           _%tl5053050682%_
                                           _%e5053150685%_
                                           _%hd5053250689%_
                                           _%tl5053350692%_
                                           _%__splice8640886409%_
                                           _%target5053450695%_
                                           _%tl5053650698%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_)))))
                          (let () (declare (not safe)) (_%g5035550564%_)))))
                   (_%__match8666286663%_
                    (lambda (_%e5048850767%_
                             _%hd5048950771%_
                             _%tl5049050774%_
                             _%e5049150777%_
                             _%hd5049250781%_
                             _%tl5049350784%_
                             _%e5049450787%_
                             _%hd5049550791%_
                             _%tl5049650794%_
                             _%e5049750797%_
                             _%hd5049850801%_
                             _%tl5049950804%_
                             _%e5050050807%_
                             _%hd5050150811%_
                             _%tl5050250814%_
                             _%e5050350817%_
                             _%hd5050450821%_
                             _%tl5050550824%_
                             _%e5050650827%_
                             _%hd5050750831%_
                             _%tl5050850834%_
                             _%__splice8640486405%_
                             _%target5050950837%_
                             _%tl5051150840%_)
                      (letrec ((_%loop5051250843%_
                                (lambda (_%hd5051050847%_ _%body5051650850%_)
                                  (if (gx#stx-pair? _%hd5051050847%_)
                                      (let ((_%e5051350853%_
                                             (gx#syntax-e _%hd5051050847%_)))
                                        (let ((_%lp-tl5051550860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5051350853%_)))
                                              (_%lp-hd5051450857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5051350853%_))))
                                          (_%loop5051250843%_
                                           _%lp-tl5051550860%_
                                           (cons _%lp-hd5051450857%_
                                                 _%body5051650850%_))))
                                      (let ((_%body5051750863%_
                                             (reverse _%body5051650850%_)))
                                        (let ((_%L50867%_ _%body5051750863%_)
                                              (_%L50869%_ _%hd5050750831%_)
                                              (_%L50870%_ _%hd5050450821%_)
                                              (_%L50871%_ _%hd5050150811%_)
                                              (_%L50872%_ _%hd5049550791%_))
                                          (if (and (gx#identifier? _%L50872%_)
                                                   (gx#identifier? _%L50869%_)
                                                   (gx#identifier? _%L50870%_)
                                                   (or (gx#free-identifier=?
                                                        _%L50870%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L50870%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L50870%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L50870%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8640286403%_
                                               _%L50867%_
                                               _%L50869%_
                                               _%L50870%_
                                               _%L50871%_
                                               _%L50872%_)
                                              (_%__match8668086681%_
                                               _%e5048850767%_
                                               _%hd5048950771%_
                                               _%tl5049050774%_
                                               _%e5049150777%_
                                               _%hd5049250781%_
                                               _%tl5049350784%_
                                               _%e5049450787%_
                                               _%hd5049550791%_
                                               _%tl5049650794%_))))))))
                        (_%loop5051250843%_ _%target5050950837%_ '()))))
                   (_%__match8660686607%_
                    (lambda (_%e5045950929%_
                             _%hd5046050933%_
                             _%tl5046150936%_
                             _%e5046250939%_
                             _%hd5046350943%_
                             _%tl5046450946%_
                             _%e5046550949%_
                             _%hd5046650953%_
                             _%tl5046750956%_
                             _%e5046850959%_
                             _%hd5046950963%_
                             _%tl5047050966%_
                             _%e5047150969%_
                             _%hd5047250973%_
                             _%tl5047350976%_
                             _%__splice8640086401%_
                             _%target5047450979%_
                             _%tl5047650982%_)
                      (letrec ((_%loop5047750985%_
                                (lambda (_%hd5047550989%_ _%body5048150992%_)
                                  (if (gx#stx-pair? _%hd5047550989%_)
                                      (let ((_%e5047850995%_
                                             (gx#syntax-e _%hd5047550989%_)))
                                        (let ((_%lp-tl5048051002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5047850995%_)))
                                              (_%lp-hd5047950999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5047850995%_))))
                                          (_%loop5047750985%_
                                           _%lp-tl5048051002%_
                                           (cons _%lp-hd5047950999%_
                                                 _%body5048150992%_))))
                                      (let ((_%body5048251005%_
                                             (reverse _%body5048150992%_)))
                                        (let ((_%L51009%_ _%body5048251005%_)
                                              (_%L51011%_ _%hd5047250973%_)
                                              (_%L51012%_ _%hd5046650953%_))
                                          (if (gx#identifier? _%L51012%_)
                                              (_%__kont8639886399%_
                                               _%L51009%_
                                               _%L51011%_
                                               _%L51012%_)
                                              (_%__match8668086681%_
                                               _%e5045950929%_
                                               _%hd5046050933%_
                                               _%tl5046150936%_
                                               _%e5046250939%_
                                               _%hd5046350943%_
                                               _%tl5046450946%_
                                               _%e5046550949%_
                                               _%hd5046650953%_
                                               _%tl5046750956%_))))))))
                        (_%loop5047750985%_ _%target5047450979%_ '()))))
                   (_%__match8658686587%_
                    (lambda (_%e5045950929%_
                             _%hd5046050933%_
                             _%tl5046150936%_
                             _%e5046250939%_
                             _%hd5046350943%_
                             _%tl5046450946%_
                             _%e5046550949%_
                             _%hd5046650953%_
                             _%tl5046750956%_
                             _%e5046850959%_
                             _%hd5046950963%_
                             _%tl5047050966%_)
                      (if (gx#identifier? _%hd5046950963%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g92287_|
                               _%hd5046950963%_)
                              (if (gx#stx-pair? _%tl5047050966%_)
                                  (let ((_%e5047150969%_
                                         (gx#syntax-e _%tl5047050966%_)))
                                    (let ((_%tl5047350976%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5047150969%_)))
                                          (_%hd5047250973%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5047150969%_))))
                                      (if (gx#stx-null? _%tl5047350976%_)
                                          (if (gx#stx-pair/null?
                                               _%tl5046450946%_)
                                              (let ((_%__splice8640086401%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5046450946%_
                                                      '0)))
                                                (let ((_%tl5047650982%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8640086401%_
                                                          '1)))
                                                      (_%target5047450979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8640086401%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5047650982%_)
                                                      (_%__match8660686607%_
                                                       _%e5045950929%_
                                                       _%hd5046050933%_
                                                       _%tl5046150936%_
                                                       _%e5046250939%_
                                                       _%hd5046350943%_
                                                       _%tl5046450946%_
                                                       _%e5046550949%_
                                                       _%hd5046650953%_
                                                       _%tl5046750956%_
                                                       _%e5046850959%_
                                                       _%hd5046950963%_
                                                       _%tl5047050966%_
                                                       _%e5047150969%_
                                                       _%hd5047250973%_
                                                       _%tl5047350976%_
                                                       _%__splice8640086401%_
                                                       _%target5047450979%_
                                                       _%tl5047650982%_)
                                                      (if (gx#stx-pair?
                                                           _%hd5046650953%_)
                                                          (let ((_%e5053150685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd5046650953%_)))
                    (let ((_%tl5053350692%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5053150685%_)))
                          (_%hd5053250689%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5053150685%_))))
                      (let () (declare (not safe)) (_%g5035550564%_))))
                  (let () (declare (not safe)) (_%g5035550564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5046650953%_)
                                                  (let ((_%e5053150685%_
                                                         (gx#syntax-e
                                                          _%hd5046650953%_)))
                                                    (let ((_%tl5053350692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5053150685%_)))
                                                          (_%hd5053250689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5053150685%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5035550564%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5035550564%_))))
                                          (if (gx#stx-pair? _%tl5047350976%_)
                                              (let ((_%e5050350817%_
                                                     (gx#syntax-e
                                                      _%tl5047350976%_)))
                                                (let ((_%tl5050550824%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5050350817%_)))
                                                      (_%hd5050450821%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5050350817%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5050550824%_)
                                                      (let ((_%e5050650827%_
                                                             (gx#syntax-e
                                                              _%tl5050550824%_)))
                                                        (let ((_%tl5050850834%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5050650827%_)))
                      (_%hd5050750831%_
                       (let () (declare (not safe)) (##car _%e5050650827%_))))
                  (if (gx#stx-null? _%tl5050850834%_)
                      (if (gx#stx-pair/null? _%tl5046450946%_)
                          (let ((_%__splice8640486405%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5046450946%_
                                  '0)))
                            (let ((_%tl5051150840%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8640486405%_ '1)))
                                  (_%target5050950837%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8640486405%_
                                      '0))))
                              (if (gx#stx-null? _%tl5051150840%_)
                                  (_%__match8666286663%_
                                   _%e5045950929%_
                                   _%hd5046050933%_
                                   _%tl5046150936%_
                                   _%e5046250939%_
                                   _%hd5046350943%_
                                   _%tl5046450946%_
                                   _%e5046550949%_
                                   _%hd5046650953%_
                                   _%tl5046750956%_
                                   _%e5046850959%_
                                   _%hd5046950963%_
                                   _%tl5047050966%_
                                   _%e5047150969%_
                                   _%hd5047250973%_
                                   _%tl5047350976%_
                                   _%e5050350817%_
                                   _%hd5050450821%_
                                   _%tl5050550824%_
                                   _%e5050650827%_
                                   _%hd5050750831%_
                                   _%tl5050850834%_
                                   _%__splice8640486405%_
                                   _%target5050950837%_
                                   _%tl5051150840%_)
                                  (if (gx#stx-pair? _%hd5046650953%_)
                                      (let ((_%e5053150685%_
                                             (gx#syntax-e _%hd5046650953%_)))
                                        (let ((_%tl5053350692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5053150685%_)))
                                              (_%hd5053250689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5053150685%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_))))))
                          (if (gx#stx-pair? _%hd5046650953%_)
                              (let ((_%e5053150685%_
                                     (gx#syntax-e _%hd5046650953%_)))
                                (let ((_%tl5053350692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5053150685%_)))
                                      (_%hd5053250689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5053150685%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_))))
                              (let () (declare (not safe)) (_%g5035550564%_))))
                      (if (gx#stx-pair? _%hd5046650953%_)
                          (let ((_%e5053150685%_
                                 (gx#syntax-e _%hd5046650953%_)))
                            (let ((_%tl5053350692%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5053150685%_)))
                                  (_%hd5053250689%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5053150685%_))))
                              (if (gx#stx-pair/null? _%tl5046450946%_)
                                  (let ((_%__splice8640886409%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5046450946%_
                                          '0)))
                                    (let ((_%tl5053650698%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8640886409%_
                                              '1)))
                                          (_%target5053450695%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8640886409%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5053650698%_)
                                          (_%__match8669486695%_
                                           _%e5045950929%_
                                           _%hd5046050933%_
                                           _%tl5046150936%_
                                           _%e5046250939%_
                                           _%hd5046350943%_
                                           _%tl5046450946%_
                                           _%e5046550949%_
                                           _%hd5046650953%_
                                           _%tl5046750956%_
                                           _%e5053150685%_
                                           _%hd5053250689%_
                                           _%tl5053350692%_
                                           _%__splice8640886409%_
                                           _%target5053450695%_
                                           _%tl5053650698%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_)))))
                          (let () (declare (not safe)) (_%g5035550564%_))))))
              (if (gx#stx-pair? _%hd5046650953%_)
                  (let ((_%e5053150685%_ (gx#syntax-e _%hd5046650953%_)))
                    (let ((_%tl5053350692%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5053150685%_)))
                          (_%hd5053250689%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5053150685%_))))
                      (if (gx#stx-pair/null? _%tl5046450946%_)
                          (let ((_%__splice8640886409%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5046450946%_
                                  '0)))
                            (let ((_%tl5053650698%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8640886409%_ '1)))
                                  (_%target5053450695%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8640886409%_
                                      '0))))
                              (if (gx#stx-null? _%tl5053650698%_)
                                  (_%__match8669486695%_
                                   _%e5045950929%_
                                   _%hd5046050933%_
                                   _%tl5046150936%_
                                   _%e5046250939%_
                                   _%hd5046350943%_
                                   _%tl5046450946%_
                                   _%e5046550949%_
                                   _%hd5046650953%_
                                   _%tl5046750956%_
                                   _%e5053150685%_
                                   _%hd5053250689%_
                                   _%tl5053350692%_
                                   _%__splice8640886409%_
                                   _%target5053450695%_
                                   _%tl5053650698%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_)))))
                          (let () (declare (not safe)) (_%g5035550564%_)))))
                  (let () (declare (not safe)) (_%g5035550564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5046650953%_)
                                                  (let ((_%e5053150685%_
                                                         (gx#syntax-e
                                                          _%hd5046650953%_)))
                                                    (let ((_%tl5053350692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5053150685%_)))
                                                          (_%hd5053250689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5053150685%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5046450946%_)
                                                          (let ((_%__splice8640886409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5046450946%_ '0)))
                    (let ((_%tl5053650698%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8640886409%_ '1)))
                          (_%target5053450695%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8640886409%_ '0))))
                      (if (gx#stx-null? _%tl5053650698%_)
                          (_%__match8669486695%_
                           _%e5045950929%_
                           _%hd5046050933%_
                           _%tl5046150936%_
                           _%e5046250939%_
                           _%hd5046350943%_
                           _%tl5046450946%_
                           _%e5046550949%_
                           _%hd5046650953%_
                           _%tl5046750956%_
                           _%e5053150685%_
                           _%hd5053250689%_
                           _%tl5053350692%_
                           _%__splice8640886409%_
                           _%target5053450695%_
                           _%tl5053650698%_)
                          (let () (declare (not safe)) (_%g5035550564%_)))))
                  (let () (declare (not safe)) (_%g5035550564%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5035550564%_)))))))
                                  (if (gx#stx-pair? _%hd5046650953%_)
                                      (let ((_%e5053150685%_
                                             (gx#syntax-e _%hd5046650953%_)))
                                        (let ((_%tl5053350692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5053150685%_)))
                                              (_%hd5053250689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5053150685%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5046450946%_)
                                              (let ((_%__splice8640886409%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5046450946%_
                                                      '0)))
                                                (let ((_%tl5053650698%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8640886409%_
                                                          '1)))
                                                      (_%target5053450695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8640886409%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5053650698%_)
                                                      (_%__match8669486695%_
                                                       _%e5045950929%_
                                                       _%hd5046050933%_
                                                       _%tl5046150936%_
                                                       _%e5046250939%_
                                                       _%hd5046350943%_
                                                       _%tl5046450946%_
                                                       _%e5046550949%_
                                                       _%hd5046650953%_
                                                       _%tl5046750956%_
                                                       _%e5053150685%_
                                                       _%hd5053250689%_
                                                       _%tl5053350692%_
                                                       _%__splice8640886409%_
                                                       _%target5053450695%_
                                                       _%tl5053650698%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5035550564%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5035550564%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_))))
                              (if (gx#stx-pair? _%hd5046650953%_)
                                  (let ((_%e5053150685%_
                                         (gx#syntax-e _%hd5046650953%_)))
                                    (let ((_%tl5053350692%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5053150685%_)))
                                          (_%hd5053250689%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5053150685%_))))
                                      (if (gx#stx-pair/null? _%tl5046450946%_)
                                          (let ((_%__splice8640886409%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5046450946%_
                                                  '0)))
                                            (let ((_%tl5053650698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8640886409%_
                                                      '1)))
                                                  (_%target5053450695%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8640886409%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5053650698%_)
                                                  (_%__match8669486695%_
                                                   _%e5045950929%_
                                                   _%hd5046050933%_
                                                   _%tl5046150936%_
                                                   _%e5046250939%_
                                                   _%hd5046350943%_
                                                   _%tl5046450946%_
                                                   _%e5046550949%_
                                                   _%hd5046650953%_
                                                   _%tl5046750956%_
                                                   _%e5053150685%_
                                                   _%hd5053250689%_
                                                   _%tl5053350692%_
                                                   _%__splice8640886409%_
                                                   _%target5053450695%_
                                                   _%tl5053650698%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5035550564%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_))))
                          (if (gx#stx-pair? _%hd5046650953%_)
                              (let ((_%e5053150685%_
                                     (gx#syntax-e _%hd5046650953%_)))
                                (let ((_%tl5053350692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5053150685%_)))
                                      (_%hd5053250689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5053150685%_))))
                                  (if (gx#stx-pair/null? _%tl5046450946%_)
                                      (let ((_%__splice8640886409%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5046450946%_
                                              '0)))
                                        (let ((_%tl5053650698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8640886409%_
                                                  '1)))
                                              (_%target5053450695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8640886409%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5053650698%_)
                                              (_%__match8669486695%_
                                               _%e5045950929%_
                                               _%hd5046050933%_
                                               _%tl5046150936%_
                                               _%e5046250939%_
                                               _%hd5046350943%_
                                               _%tl5046450946%_
                                               _%e5046550949%_
                                               _%hd5046650953%_
                                               _%tl5046750956%_
                                               _%e5053150685%_
                                               _%hd5053250689%_
                                               _%tl5053350692%_
                                               _%__splice8640886409%_
                                               _%target5053450695%_
                                               _%tl5053650698%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5035550564%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5035550564%_))))))
                   (_%__match8656286563%_
                    (lambda (_%e5043251051%_
                             _%hd5043351055%_
                             _%tl5043451058%_
                             _%e5043551061%_
                             _%hd5043651065%_
                             _%tl5043751068%_
                             _%e5043851071%_
                             _%hd5043951075%_
                             _%tl5044051078%_
                             _%e5044151081%_
                             _%hd5044251085%_
                             _%tl5044351088%_
                             _%e5044451091%_
                             _%hd5044551095%_
                             _%tl5044651098%_
                             _%__splice8639686397%_
                             _%target5044751101%_
                             _%tl5044951104%_)
                      (letrec ((_%loop5045051107%_
                                (lambda (_%hd5044851111%_ _%body5045451114%_)
                                  (if (gx#stx-pair? _%hd5044851111%_)
                                      (let ((_%e5045151117%_
                                             (gx#syntax-e _%hd5044851111%_)))
                                        (let ((_%lp-tl5045351124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5045151117%_)))
                                              (_%lp-hd5045251121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5045151117%_))))
                                          (_%loop5045051107%_
                                           _%lp-tl5045351124%_
                                           (cons _%lp-hd5045251121%_
                                                 _%body5045451114%_))))
                                      (let ((_%body5045551127%_
                                             (reverse _%body5045451114%_)))
                                        (let ((_%L51131%_ _%body5045551127%_)
                                              (_%L51133%_ _%hd5044551095%_)
                                              (_%L51134%_ _%hd5044251085%_)
                                              (_%L51135%_ _%hd5043951075%_))
                                          (if (and (gx#identifier? _%L51135%_)
                                                   (gx#identifier? _%L51133%_)
                                                   (gx#identifier? _%L51134%_)
                                                   (or (gx#free-identifier=?
                                                        _%L51134%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L51134%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L51134%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L51134%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8639486395%_
                                               _%L51131%_
                                               _%L51133%_
                                               _%L51134%_
                                               _%L51135%_)
                                              (_%__match8658686587%_
                                               _%e5043251051%_
                                               _%hd5043351055%_
                                               _%tl5043451058%_
                                               _%e5043551061%_
                                               _%hd5043651065%_
                                               _%tl5043751068%_
                                               _%e5043851071%_
                                               _%hd5043951075%_
                                               _%tl5044051078%_
                                               _%e5044151081%_
                                               _%hd5044251085%_
                                               _%tl5044351088%_))))))))
                        (_%loop5045051107%_ _%target5044751101%_ '()))))
                   (_%__match8652286523%_
                    (lambda (_%e5039551204%_
                             _%hd5039651208%_
                             _%tl5039751211%_
                             _%e5039851214%_
                             _%hd5039951218%_
                             _%tl5040051221%_
                             _%e5040151224%_
                             _%hd5040251228%_
                             _%tl5040351231%_
                             _%e5040451234%_
                             _%hd5040551238%_
                             _%tl5040651241%_
                             _%e5040751244%_
                             _%hd5040851248%_
                             _%tl5040951251%_
                             _%e5041051254%_
                             _%hd5041151258%_
                             _%tl5041251261%_
                             _%e5041351264%_
                             _%hd5041451268%_
                             _%tl5041551271%_
                             _%e5041651274%_
                             _%hd5041751278%_
                             _%tl5041851281%_
                             _%__splice8639286393%_
                             _%target5041951284%_
                             _%tl5042151287%_)
                      (letrec ((_%loop5042251290%_
                                (lambda (_%hd5042051294%_ _%body5042651297%_)
                                  (if (gx#stx-pair? _%hd5042051294%_)
                                      (let ((_%e5042351300%_
                                             (gx#syntax-e _%hd5042051294%_)))
                                        (let ((_%lp-tl5042551307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5042351300%_)))
                                              (_%lp-hd5042451304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5042351300%_))))
                                          (_%loop5042251290%_
                                           _%lp-tl5042551307%_
                                           (cons _%lp-hd5042451304%_
                                                 _%body5042651297%_))))
                                      (let ((_%body5042751310%_
                                             (reverse _%body5042651297%_)))
                                        (let ((_%L51314%_ _%body5042751310%_)
                                              (_%L51316%_ _%hd5041751278%_)
                                              (_%L51317%_ _%hd5041451268%_)
                                              (_%L51318%_ _%hd5041151258%_)
                                              (_%L51319%_ _%hd5040551238%_)
                                              (_%L51320%_ _%hd5040251228%_))
                                          (if (and (gx#identifier? _%L51320%_)
                                                   (gx#identifier? _%L51316%_)
                                                   (gx#identifier? _%L51317%_)
                                                   (or (gx#free-identifier=?
                                                        _%L51317%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L51317%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L51317%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L51317%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8639086391%_
                                               _%L51314%_
                                               _%L51316%_
                                               _%L51317%_
                                               _%L51318%_
                                               _%L51319%_
                                               _%L51320%_)
                                              (_%__match8658686587%_
                                               _%e5039551204%_
                                               _%hd5039651208%_
                                               _%tl5039751211%_
                                               _%e5039851214%_
                                               _%hd5039951218%_
                                               _%tl5040051221%_
                                               _%e5040151224%_
                                               _%hd5040251228%_
                                               _%tl5040351231%_
                                               _%e5040451234%_
                                               _%hd5040551238%_
                                               _%tl5040651241%_))))))))
                        (_%loop5042251290%_ _%target5041951284%_ '()))))
                   (_%__match8649086491%_
                    (lambda (_%e5039551204%_
                             _%hd5039651208%_
                             _%tl5039751211%_
                             _%e5039851214%_
                             _%hd5039951218%_
                             _%tl5040051221%_
                             _%e5040151224%_
                             _%hd5040251228%_
                             _%tl5040351231%_
                             _%e5040451234%_
                             _%hd5040551238%_
                             _%tl5040651241%_
                             _%e5040751244%_
                             _%hd5040851248%_
                             _%tl5040951251%_)
                      (if (gx#identifier? _%hd5040851248%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g92288_|
                               _%hd5040851248%_)
                              (if (gx#stx-pair? _%tl5040951251%_)
                                  (let ((_%e5041051254%_
                                         (gx#syntax-e _%tl5040951251%_)))
                                    (let ((_%tl5041251261%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5041051254%_)))
                                          (_%hd5041151258%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5041051254%_))))
                                      (if (gx#stx-pair? _%tl5041251261%_)
                                          (let ((_%e5041351264%_
                                                 (gx#syntax-e
                                                  _%tl5041251261%_)))
                                            (let ((_%tl5041551271%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5041351264%_)))
                                                  (_%hd5041451268%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5041351264%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5041551271%_)
                                                  (let ((_%e5041651274%_
                                                         (gx#syntax-e
                                                          _%tl5041551271%_)))
                                                    (let ((_%tl5041851281%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5041651274%_)))
                                                          (_%hd5041751278%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5041651274%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5041851281%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5040051221%_)
                                                              (let ((_%__splice8639286393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5040051221%_
                              '0)))
                        (let ((_%tl5042151287%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8639286393%_ '1)))
                              (_%target5041951284%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8639286393%_ '0))))
                          (if (gx#stx-null? _%tl5042151287%_)
                              (_%__match8652286523%_
                               _%e5039551204%_
                               _%hd5039651208%_
                               _%tl5039751211%_
                               _%e5039851214%_
                               _%hd5039951218%_
                               _%tl5040051221%_
                               _%e5040151224%_
                               _%hd5040251228%_
                               _%tl5040351231%_
                               _%e5040451234%_
                               _%hd5040551238%_
                               _%tl5040651241%_
                               _%e5040751244%_
                               _%hd5040851248%_
                               _%tl5040951251%_
                               _%e5041051254%_
                               _%hd5041151258%_
                               _%tl5041251261%_
                               _%e5041351264%_
                               _%hd5041451268%_
                               _%tl5041551271%_
                               _%e5041651274%_
                               _%hd5041751278%_
                               _%tl5041851281%_
                               _%__splice8639286393%_
                               _%target5041951284%_
                               _%tl5042151287%_)
                              (if (gx#stx-pair? _%hd5040251228%_)
                                  (let ((_%e5053150685%_
                                         (gx#syntax-e _%hd5040251228%_)))
                                    (let ((_%tl5053350692%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5053150685%_)))
                                          (_%hd5053250689%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5053150685%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_))))))
                      (if (gx#stx-pair? _%hd5040251228%_)
                          (let ((_%e5053150685%_
                                 (gx#syntax-e _%hd5040251228%_)))
                            (let ((_%tl5053350692%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5053150685%_)))
                                  (_%hd5053250689%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5053150685%_))))
                              (let () (declare (not safe)) (_%g5035550564%_))))
                          (let () (declare (not safe)) (_%g5035550564%_))))
                  (if (gx#stx-pair? _%hd5040251228%_)
                      (let ((_%e5053150685%_ (gx#syntax-e _%hd5040251228%_)))
                        (let ((_%tl5053350692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5053150685%_)))
                              (_%hd5053250689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5053150685%_))))
                          (if (gx#stx-pair/null? _%tl5040051221%_)
                              (let ((_%__splice8640886409%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5040051221%_
                                      '0)))
                                (let ((_%tl5053650698%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8640886409%_
                                          '1)))
                                      (_%target5053450695%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8640886409%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5053650698%_)
                                      (_%__match8669486695%_
                                       _%e5039551204%_
                                       _%hd5039651208%_
                                       _%tl5039751211%_
                                       _%e5039851214%_
                                       _%hd5039951218%_
                                       _%tl5040051221%_
                                       _%e5040151224%_
                                       _%hd5040251228%_
                                       _%tl5040351231%_
                                       _%e5053150685%_
                                       _%hd5053250689%_
                                       _%tl5053350692%_
                                       _%__splice8640886409%_
                                       _%target5053450695%_
                                       _%tl5053650698%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5035550564%_)))))
                      (let () (declare (not safe)) (_%g5035550564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd5040551238%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g92287_|
                                                           _%hd5040551238%_)
                                                          (if (gx#stx-null?
                                                               _%tl5041551271%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl5040051221%_)
                          (let ((_%__splice8640486405%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5040051221%_
                                  '0)))
                            (let ((_%tl5051150840%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8640486405%_ '1)))
                                  (_%target5050950837%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8640486405%_
                                      '0))))
                              (if (gx#stx-null? _%tl5051150840%_)
                                  (_%__match8666286663%_
                                   _%e5039551204%_
                                   _%hd5039651208%_
                                   _%tl5039751211%_
                                   _%e5039851214%_
                                   _%hd5039951218%_
                                   _%tl5040051221%_
                                   _%e5040151224%_
                                   _%hd5040251228%_
                                   _%tl5040351231%_
                                   _%e5040451234%_
                                   _%hd5040551238%_
                                   _%tl5040651241%_
                                   _%e5040751244%_
                                   _%hd5040851248%_
                                   _%tl5040951251%_
                                   _%e5041051254%_
                                   _%hd5041151258%_
                                   _%tl5041251261%_
                                   _%e5041351264%_
                                   _%hd5041451268%_
                                   _%tl5041551271%_
                                   _%__splice8640486405%_
                                   _%target5050950837%_
                                   _%tl5051150840%_)
                                  (if (gx#stx-pair? _%hd5040251228%_)
                                      (let ((_%e5053150685%_
                                             (gx#syntax-e _%hd5040251228%_)))
                                        (let ((_%tl5053350692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5053150685%_)))
                                              (_%hd5053250689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5053150685%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_))))))
                          (if (gx#stx-pair? _%hd5040251228%_)
                              (let ((_%e5053150685%_
                                     (gx#syntax-e _%hd5040251228%_)))
                                (let ((_%tl5053350692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5053150685%_)))
                                      (_%hd5053250689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5053150685%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_))))
                              (let () (declare (not safe)) (_%g5035550564%_))))
                      (if (gx#stx-pair? _%hd5040251228%_)
                          (let ((_%e5053150685%_
                                 (gx#syntax-e _%hd5040251228%_)))
                            (let ((_%tl5053350692%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5053150685%_)))
                                  (_%hd5053250689%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5053150685%_))))
                              (if (gx#stx-pair/null? _%tl5040051221%_)
                                  (let ((_%__splice8640886409%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5040051221%_
                                          '0)))
                                    (let ((_%tl5053650698%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8640886409%_
                                              '1)))
                                          (_%target5053450695%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8640886409%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5053650698%_)
                                          (_%__match8669486695%_
                                           _%e5039551204%_
                                           _%hd5039651208%_
                                           _%tl5039751211%_
                                           _%e5039851214%_
                                           _%hd5039951218%_
                                           _%tl5040051221%_
                                           _%e5040151224%_
                                           _%hd5040251228%_
                                           _%tl5040351231%_
                                           _%e5053150685%_
                                           _%hd5053250689%_
                                           _%tl5053350692%_
                                           _%__splice8640886409%_
                                           _%target5053450695%_
                                           _%tl5053650698%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_)))))
                          (let () (declare (not safe)) (_%g5035550564%_))))
                  (if (gx#stx-pair? _%hd5040251228%_)
                      (let ((_%e5053150685%_ (gx#syntax-e _%hd5040251228%_)))
                        (let ((_%tl5053350692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5053150685%_)))
                              (_%hd5053250689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5053150685%_))))
                          (if (gx#stx-pair/null? _%tl5040051221%_)
                              (let ((_%__splice8640886409%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5040051221%_
                                      '0)))
                                (let ((_%tl5053650698%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8640886409%_
                                          '1)))
                                      (_%target5053450695%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8640886409%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5053650698%_)
                                      (_%__match8669486695%_
                                       _%e5039551204%_
                                       _%hd5039651208%_
                                       _%tl5039751211%_
                                       _%e5039851214%_
                                       _%hd5039951218%_
                                       _%tl5040051221%_
                                       _%e5040151224%_
                                       _%hd5040251228%_
                                       _%tl5040351231%_
                                       _%e5053150685%_
                                       _%hd5053250689%_
                                       _%tl5053350692%_
                                       _%__splice8640886409%_
                                       _%target5053450695%_
                                       _%tl5053650698%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5035550564%_)))))
                      (let () (declare (not safe)) (_%g5035550564%_))))
              (if (gx#stx-pair? _%hd5040251228%_)
                  (let ((_%e5053150685%_ (gx#syntax-e _%hd5040251228%_)))
                    (let ((_%tl5053350692%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5053150685%_)))
                          (_%hd5053250689%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5053150685%_))))
                      (if (gx#stx-pair/null? _%tl5040051221%_)
                          (let ((_%__splice8640886409%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5040051221%_
                                  '0)))
                            (let ((_%tl5053650698%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8640886409%_ '1)))
                                  (_%target5053450695%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8640886409%_
                                      '0))))
                              (if (gx#stx-null? _%tl5053650698%_)
                                  (_%__match8669486695%_
                                   _%e5039551204%_
                                   _%hd5039651208%_
                                   _%tl5039751211%_
                                   _%e5039851214%_
                                   _%hd5039951218%_
                                   _%tl5040051221%_
                                   _%e5040151224%_
                                   _%hd5040251228%_
                                   _%tl5040351231%_
                                   _%e5053150685%_
                                   _%hd5053250689%_
                                   _%tl5053350692%_
                                   _%__splice8640886409%_
                                   _%target5053450695%_
                                   _%tl5053650698%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_)))))
                          (let () (declare (not safe)) (_%g5035550564%_)))))
                  (let () (declare (not safe)) (_%g5035550564%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5040251228%_)
                                              (let ((_%e5053150685%_
                                                     (gx#syntax-e
                                                      _%hd5040251228%_)))
                                                (let ((_%tl5053350692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5053150685%_)))
                                                      (_%hd5053250689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5053150685%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5040051221%_)
                                                      (let ((_%__splice8640886409%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5040051221%_
                                                              '0)))
                                                        (let ((_%tl5053650698%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8640886409%_ '1)))
                      (_%target5053450695%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8640886409%_ '0))))
                  (if (gx#stx-null? _%tl5053650698%_)
                      (_%__match8669486695%_
                       _%e5039551204%_
                       _%hd5039651208%_
                       _%tl5039751211%_
                       _%e5039851214%_
                       _%hd5039951218%_
                       _%tl5040051221%_
                       _%e5040151224%_
                       _%hd5040251228%_
                       _%tl5040351231%_
                       _%e5053150685%_
                       _%hd5053250689%_
                       _%tl5053350692%_
                       _%__splice8640886409%_
                       _%target5053450695%_
                       _%tl5053650698%_)
                      (let () (declare (not safe)) (_%g5035550564%_)))))
              (let () (declare (not safe)) (_%g5035550564%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5035550564%_))))))
                                  (if (gx#stx-null? _%tl5040951251%_)
                                      (if (gx#stx-pair/null? _%tl5040051221%_)
                                          (let ((_%__splice8639686397%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5040051221%_
                                                  '0)))
                                            (let ((_%tl5044951104%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8639686397%_
                                                      '1)))
                                                  (_%target5044751101%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8639686397%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5044951104%_)
                                                  (_%__match8656286563%_
                                                   _%e5039551204%_
                                                   _%hd5039651208%_
                                                   _%tl5039751211%_
                                                   _%e5039851214%_
                                                   _%hd5039951218%_
                                                   _%tl5040051221%_
                                                   _%e5040151224%_
                                                   _%hd5040251228%_
                                                   _%tl5040351231%_
                                                   _%e5040451234%_
                                                   _%hd5040551238%_
                                                   _%tl5040651241%_
                                                   _%e5040751244%_
                                                   _%hd5040851248%_
                                                   _%tl5040951251%_
                                                   _%__splice8639686397%_
                                                   _%target5044751101%_
                                                   _%tl5044951104%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5040251228%_)
                                                      (let ((_%e5053150685%_
                                                             (gx#syntax-e
                                                              _%hd5040251228%_)))
                                                        (let ((_%tl5053350692%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5053150685%_)))
                      (_%hd5053250689%_
                       (let () (declare (not safe)) (##car _%e5053150685%_))))
                  (let () (declare (not safe)) (_%g5035550564%_))))
              (let () (declare (not safe)) (_%g5035550564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5040251228%_)
                                              (let ((_%e5053150685%_
                                                     (gx#syntax-e
                                                      _%hd5040251228%_)))
                                                (let ((_%tl5053350692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5053150685%_)))
                                                      (_%hd5053250689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5053150685%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5035550564%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5035550564%_))))
                                      (if (gx#stx-pair? _%hd5040251228%_)
                                          (let ((_%e5053150685%_
                                                 (gx#syntax-e
                                                  _%hd5040251228%_)))
                                            (let ((_%tl5053350692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5053150685%_)))
                                                  (_%hd5053250689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5053150685%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5040051221%_)
                                                  (let ((_%__splice8640886409%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5040051221%_
                                                          '0)))
                                                    (let ((_%tl5053650698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8640886409%_
                                                              '1)))
                                                          (_%target5053450695%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8640886409%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5053650698%_)
                                                          (_%__match8669486695%_
                                                           _%e5039551204%_
                                                           _%hd5039651208%_
                                                           _%tl5039751211%_
                                                           _%e5039851214%_
                                                           _%hd5039951218%_
                                                           _%tl5040051221%_
                                                           _%e5040151224%_
                                                           _%hd5040251228%_
                                                           _%tl5040351231%_
                                                           _%e5053150685%_
                                                           _%hd5053250689%_
                                                           _%tl5053350692%_
                                                           _%__splice8640886409%_
                                                           _%target5053450695%_
                                                           _%tl5053650698%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5035550564%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5035550564%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_)))))
                              (if (gx#stx-null? _%tl5040951251%_)
                                  (if (gx#stx-pair/null? _%tl5040051221%_)
                                      (let ((_%__splice8639686397%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5040051221%_
                                              '0)))
                                        (let ((_%tl5044951104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8639686397%_
                                                  '1)))
                                              (_%target5044751101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8639686397%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5044951104%_)
                                              (_%__match8656286563%_
                                               _%e5039551204%_
                                               _%hd5039651208%_
                                               _%tl5039751211%_
                                               _%e5039851214%_
                                               _%hd5039951218%_
                                               _%tl5040051221%_
                                               _%e5040151224%_
                                               _%hd5040251228%_
                                               _%tl5040351231%_
                                               _%e5040451234%_
                                               _%hd5040551238%_
                                               _%tl5040651241%_
                                               _%e5040751244%_
                                               _%hd5040851248%_
                                               _%tl5040951251%_
                                               _%__splice8639686397%_
                                               _%target5044751101%_
                                               _%tl5044951104%_)
                                              (if (gx#stx-pair?
                                                   _%hd5040251228%_)
                                                  (let ((_%e5053150685%_
                                                         (gx#syntax-e
                                                          _%hd5040251228%_)))
                                                    (let ((_%tl5053350692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5053150685%_)))
                                                          (_%hd5053250689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5053150685%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5035550564%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5035550564%_))))))
                                      (if (gx#stx-pair? _%hd5040251228%_)
                                          (let ((_%e5053150685%_
                                                 (gx#syntax-e
                                                  _%hd5040251228%_)))
                                            (let ((_%tl5053350692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5053150685%_)))
                                                  (_%hd5053250689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5053150685%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5035550564%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_))))
                                  (if (gx#identifier? _%hd5040551238%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92287_|
                                           _%hd5040551238%_)
                                          (if (gx#stx-pair? _%tl5040951251%_)
                                              (let ((_%e5050350817%_
                                                     (gx#syntax-e
                                                      _%tl5040951251%_)))
                                                (let ((_%tl5050550824%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5050350817%_)))
                                                      (_%hd5050450821%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5050350817%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5050550824%_)
                                                      (let ((_%e5050650827%_
                                                             (gx#syntax-e
                                                              _%tl5050550824%_)))
                                                        (let ((_%tl5050850834%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5050650827%_)))
                      (_%hd5050750831%_
                       (let () (declare (not safe)) (##car _%e5050650827%_))))
                  (if (gx#stx-null? _%tl5050850834%_)
                      (if (gx#stx-pair/null? _%tl5040051221%_)
                          (let ((_%__splice8640486405%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5040051221%_
                                  '0)))
                            (let ((_%tl5051150840%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8640486405%_ '1)))
                                  (_%target5050950837%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8640486405%_
                                      '0))))
                              (if (gx#stx-null? _%tl5051150840%_)
                                  (_%__match8666286663%_
                                   _%e5039551204%_
                                   _%hd5039651208%_
                                   _%tl5039751211%_
                                   _%e5039851214%_
                                   _%hd5039951218%_
                                   _%tl5040051221%_
                                   _%e5040151224%_
                                   _%hd5040251228%_
                                   _%tl5040351231%_
                                   _%e5040451234%_
                                   _%hd5040551238%_
                                   _%tl5040651241%_
                                   _%e5040751244%_
                                   _%hd5040851248%_
                                   _%tl5040951251%_
                                   _%e5050350817%_
                                   _%hd5050450821%_
                                   _%tl5050550824%_
                                   _%e5050650827%_
                                   _%hd5050750831%_
                                   _%tl5050850834%_
                                   _%__splice8640486405%_
                                   _%target5050950837%_
                                   _%tl5051150840%_)
                                  (if (gx#stx-pair? _%hd5040251228%_)
                                      (let ((_%e5053150685%_
                                             (gx#syntax-e _%hd5040251228%_)))
                                        (let ((_%tl5053350692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5053150685%_)))
                                              (_%hd5053250689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5053150685%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_))))))
                          (if (gx#stx-pair? _%hd5040251228%_)
                              (let ((_%e5053150685%_
                                     (gx#syntax-e _%hd5040251228%_)))
                                (let ((_%tl5053350692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5053150685%_)))
                                      (_%hd5053250689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5053150685%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_))))
                              (let () (declare (not safe)) (_%g5035550564%_))))
                      (if (gx#stx-pair? _%hd5040251228%_)
                          (let ((_%e5053150685%_
                                 (gx#syntax-e _%hd5040251228%_)))
                            (let ((_%tl5053350692%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5053150685%_)))
                                  (_%hd5053250689%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5053150685%_))))
                              (if (gx#stx-pair/null? _%tl5040051221%_)
                                  (let ((_%__splice8640886409%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5040051221%_
                                          '0)))
                                    (let ((_%tl5053650698%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8640886409%_
                                              '1)))
                                          (_%target5053450695%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8640886409%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5053650698%_)
                                          (_%__match8669486695%_
                                           _%e5039551204%_
                                           _%hd5039651208%_
                                           _%tl5039751211%_
                                           _%e5039851214%_
                                           _%hd5039951218%_
                                           _%tl5040051221%_
                                           _%e5040151224%_
                                           _%hd5040251228%_
                                           _%tl5040351231%_
                                           _%e5053150685%_
                                           _%hd5053250689%_
                                           _%tl5053350692%_
                                           _%__splice8640886409%_
                                           _%target5053450695%_
                                           _%tl5053650698%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_)))))
                          (let () (declare (not safe)) (_%g5035550564%_))))))
              (if (gx#stx-pair? _%hd5040251228%_)
                  (let ((_%e5053150685%_ (gx#syntax-e _%hd5040251228%_)))
                    (let ((_%tl5053350692%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5053150685%_)))
                          (_%hd5053250689%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5053150685%_))))
                      (if (gx#stx-pair/null? _%tl5040051221%_)
                          (let ((_%__splice8640886409%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5040051221%_
                                  '0)))
                            (let ((_%tl5053650698%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8640886409%_ '1)))
                                  (_%target5053450695%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8640886409%_
                                      '0))))
                              (if (gx#stx-null? _%tl5053650698%_)
                                  (_%__match8669486695%_
                                   _%e5039551204%_
                                   _%hd5039651208%_
                                   _%tl5039751211%_
                                   _%e5039851214%_
                                   _%hd5039951218%_
                                   _%tl5040051221%_
                                   _%e5040151224%_
                                   _%hd5040251228%_
                                   _%tl5040351231%_
                                   _%e5053150685%_
                                   _%hd5053250689%_
                                   _%tl5053350692%_
                                   _%__splice8640886409%_
                                   _%target5053450695%_
                                   _%tl5053650698%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_)))))
                          (let () (declare (not safe)) (_%g5035550564%_)))))
                  (let () (declare (not safe)) (_%g5035550564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5040251228%_)
                                                  (let ((_%e5053150685%_
                                                         (gx#syntax-e
                                                          _%hd5040251228%_)))
                                                    (let ((_%tl5053350692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5053150685%_)))
                                                          (_%hd5053250689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5053150685%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5040051221%_)
                                                          (let ((_%__splice8640886409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5040051221%_ '0)))
                    (let ((_%tl5053650698%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8640886409%_ '1)))
                          (_%target5053450695%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8640886409%_ '0))))
                      (if (gx#stx-null? _%tl5053650698%_)
                          (_%__match8669486695%_
                           _%e5039551204%_
                           _%hd5039651208%_
                           _%tl5039751211%_
                           _%e5039851214%_
                           _%hd5039951218%_
                           _%tl5040051221%_
                           _%e5040151224%_
                           _%hd5040251228%_
                           _%tl5040351231%_
                           _%e5053150685%_
                           _%hd5053250689%_
                           _%tl5053350692%_
                           _%__splice8640886409%_
                           _%target5053450695%_
                           _%tl5053650698%_)
                          (let () (declare (not safe)) (_%g5035550564%_)))))
                  (let () (declare (not safe)) (_%g5035550564%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5035550564%_))))
                                          (if (gx#stx-pair? _%hd5040251228%_)
                                              (let ((_%e5053150685%_
                                                     (gx#syntax-e
                                                      _%hd5040251228%_)))
                                                (let ((_%tl5053350692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5053150685%_)))
                                                      (_%hd5053250689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5053150685%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5040051221%_)
                                                      (let ((_%__splice8640886409%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5040051221%_
                                                              '0)))
                                                        (let ((_%tl5053650698%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8640886409%_ '1)))
                      (_%target5053450695%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8640886409%_ '0))))
                  (if (gx#stx-null? _%tl5053650698%_)
                      (_%__match8669486695%_
                       _%e5039551204%_
                       _%hd5039651208%_
                       _%tl5039751211%_
                       _%e5039851214%_
                       _%hd5039951218%_
                       _%tl5040051221%_
                       _%e5040151224%_
                       _%hd5040251228%_
                       _%tl5040351231%_
                       _%e5053150685%_
                       _%hd5053250689%_
                       _%tl5053350692%_
                       _%__splice8640886409%_
                       _%target5053450695%_
                       _%tl5053650698%_)
                      (let () (declare (not safe)) (_%g5035550564%_)))))
              (let () (declare (not safe)) (_%g5035550564%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5035550564%_))))
                                      (if (gx#stx-pair? _%hd5040251228%_)
                                          (let ((_%e5053150685%_
                                                 (gx#syntax-e
                                                  _%hd5040251228%_)))
                                            (let ((_%tl5053350692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5053150685%_)))
                                                  (_%hd5053250689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5053150685%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5040051221%_)
                                                  (let ((_%__splice8640886409%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5040051221%_
                                                          '0)))
                                                    (let ((_%tl5053650698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8640886409%_
                                                              '1)))
                                                          (_%target5053450695%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8640886409%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5053650698%_)
                                                          (_%__match8669486695%_
                                                           _%e5039551204%_
                                                           _%hd5039651208%_
                                                           _%tl5039751211%_
                                                           _%e5039851214%_
                                                           _%hd5039951218%_
                                                           _%tl5040051221%_
                                                           _%e5040151224%_
                                                           _%hd5040251228%_
                                                           _%tl5040351231%_
                                                           _%e5053150685%_
                                                           _%hd5053250689%_
                                                           _%tl5053350692%_
                                                           _%__splice8640886409%_
                                                           _%target5053450695%_
                                                           _%tl5053650698%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5035550564%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5035550564%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_))))))
                          (if (gx#stx-null? _%tl5040951251%_)
                              (if (gx#stx-pair/null? _%tl5040051221%_)
                                  (let ((_%__splice8639686397%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5040051221%_
                                          '0)))
                                    (let ((_%tl5044951104%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8639686397%_
                                              '1)))
                                          (_%target5044751101%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8639686397%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5044951104%_)
                                          (_%__match8656286563%_
                                           _%e5039551204%_
                                           _%hd5039651208%_
                                           _%tl5039751211%_
                                           _%e5039851214%_
                                           _%hd5039951218%_
                                           _%tl5040051221%_
                                           _%e5040151224%_
                                           _%hd5040251228%_
                                           _%tl5040351231%_
                                           _%e5040451234%_
                                           _%hd5040551238%_
                                           _%tl5040651241%_
                                           _%e5040751244%_
                                           _%hd5040851248%_
                                           _%tl5040951251%_
                                           _%__splice8639686397%_
                                           _%target5044751101%_
                                           _%tl5044951104%_)
                                          (if (gx#stx-pair? _%hd5040251228%_)
                                              (let ((_%e5053150685%_
                                                     (gx#syntax-e
                                                      _%hd5040251228%_)))
                                                (let ((_%tl5053350692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5053150685%_)))
                                                      (_%hd5053250689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5053150685%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5035550564%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5035550564%_))))))
                                  (if (gx#stx-pair? _%hd5040251228%_)
                                      (let ((_%e5053150685%_
                                             (gx#syntax-e _%hd5040251228%_)))
                                        (let ((_%tl5053350692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5053150685%_)))
                                              (_%hd5053250689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5053150685%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_))))
                              (if (gx#identifier? _%hd5040551238%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g92287_|
                                       _%hd5040551238%_)
                                      (if (gx#stx-pair? _%tl5040951251%_)
                                          (let ((_%e5050350817%_
                                                 (gx#syntax-e
                                                  _%tl5040951251%_)))
                                            (let ((_%tl5050550824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5050350817%_)))
                                                  (_%hd5050450821%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5050350817%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5050550824%_)
                                                  (let ((_%e5050650827%_
                                                         (gx#syntax-e
                                                          _%tl5050550824%_)))
                                                    (let ((_%tl5050850834%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5050650827%_)))
                                                          (_%hd5050750831%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5050650827%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5050850834%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5040051221%_)
                                                              (let ((_%__splice8640486405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5040051221%_
                              '0)))
                        (let ((_%tl5051150840%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8640486405%_ '1)))
                              (_%target5050950837%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8640486405%_ '0))))
                          (if (gx#stx-null? _%tl5051150840%_)
                              (_%__match8666286663%_
                               _%e5039551204%_
                               _%hd5039651208%_
                               _%tl5039751211%_
                               _%e5039851214%_
                               _%hd5039951218%_
                               _%tl5040051221%_
                               _%e5040151224%_
                               _%hd5040251228%_
                               _%tl5040351231%_
                               _%e5040451234%_
                               _%hd5040551238%_
                               _%tl5040651241%_
                               _%e5040751244%_
                               _%hd5040851248%_
                               _%tl5040951251%_
                               _%e5050350817%_
                               _%hd5050450821%_
                               _%tl5050550824%_
                               _%e5050650827%_
                               _%hd5050750831%_
                               _%tl5050850834%_
                               _%__splice8640486405%_
                               _%target5050950837%_
                               _%tl5051150840%_)
                              (if (gx#stx-pair? _%hd5040251228%_)
                                  (let ((_%e5053150685%_
                                         (gx#syntax-e _%hd5040251228%_)))
                                    (let ((_%tl5053350692%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5053150685%_)))
                                          (_%hd5053250689%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5053150685%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_))))))
                      (if (gx#stx-pair? _%hd5040251228%_)
                          (let ((_%e5053150685%_
                                 (gx#syntax-e _%hd5040251228%_)))
                            (let ((_%tl5053350692%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5053150685%_)))
                                  (_%hd5053250689%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5053150685%_))))
                              (let () (declare (not safe)) (_%g5035550564%_))))
                          (let () (declare (not safe)) (_%g5035550564%_))))
                  (if (gx#stx-pair? _%hd5040251228%_)
                      (let ((_%e5053150685%_ (gx#syntax-e _%hd5040251228%_)))
                        (let ((_%tl5053350692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5053150685%_)))
                              (_%hd5053250689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5053150685%_))))
                          (if (gx#stx-pair/null? _%tl5040051221%_)
                              (let ((_%__splice8640886409%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5040051221%_
                                      '0)))
                                (let ((_%tl5053650698%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8640886409%_
                                          '1)))
                                      (_%target5053450695%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8640886409%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5053650698%_)
                                      (_%__match8669486695%_
                                       _%e5039551204%_
                                       _%hd5039651208%_
                                       _%tl5039751211%_
                                       _%e5039851214%_
                                       _%hd5039951218%_
                                       _%tl5040051221%_
                                       _%e5040151224%_
                                       _%hd5040251228%_
                                       _%tl5040351231%_
                                       _%e5053150685%_
                                       _%hd5053250689%_
                                       _%tl5053350692%_
                                       _%__splice8640886409%_
                                       _%target5053450695%_
                                       _%tl5053650698%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5035550564%_)))))
                      (let () (declare (not safe)) (_%g5035550564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5040251228%_)
                                                      (let ((_%e5053150685%_
                                                             (gx#syntax-e
                                                              _%hd5040251228%_)))
                                                        (let ((_%tl5053350692%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5053150685%_)))
                      (_%hd5053250689%_
                       (let () (declare (not safe)) (##car _%e5053150685%_))))
                  (if (gx#stx-pair/null? _%tl5040051221%_)
                      (let ((_%__splice8640886409%_
                             (gx#syntax-split-splice->vector
                              _%tl5040051221%_
                              '0)))
                        (let ((_%tl5053650698%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8640886409%_ '1)))
                              (_%target5053450695%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8640886409%_ '0))))
                          (if (gx#stx-null? _%tl5053650698%_)
                              (_%__match8669486695%_
                               _%e5039551204%_
                               _%hd5039651208%_
                               _%tl5039751211%_
                               _%e5039851214%_
                               _%hd5039951218%_
                               _%tl5040051221%_
                               _%e5040151224%_
                               _%hd5040251228%_
                               _%tl5040351231%_
                               _%e5053150685%_
                               _%hd5053250689%_
                               _%tl5053350692%_
                               _%__splice8640886409%_
                               _%target5053450695%_
                               _%tl5053650698%_)
                              (let ()
                                (declare (not safe))
                                (_%g5035550564%_)))))
                      (let () (declare (not safe)) (_%g5035550564%_)))))
              (let () (declare (not safe)) (_%g5035550564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5040251228%_)
                                              (let ((_%e5053150685%_
                                                     (gx#syntax-e
                                                      _%hd5040251228%_)))
                                                (let ((_%tl5053350692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5053150685%_)))
                                                      (_%hd5053250689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5053150685%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5040051221%_)
                                                      (let ((_%__splice8640886409%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5040051221%_
                                                              '0)))
                                                        (let ((_%tl5053650698%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8640886409%_ '1)))
                      (_%target5053450695%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8640886409%_ '0))))
                  (if (gx#stx-null? _%tl5053650698%_)
                      (_%__match8669486695%_
                       _%e5039551204%_
                       _%hd5039651208%_
                       _%tl5039751211%_
                       _%e5039851214%_
                       _%hd5039951218%_
                       _%tl5040051221%_
                       _%e5040151224%_
                       _%hd5040251228%_
                       _%tl5040351231%_
                       _%e5053150685%_
                       _%hd5053250689%_
                       _%tl5053350692%_
                       _%__splice8640886409%_
                       _%target5053450695%_
                       _%tl5053650698%_)
                      (let () (declare (not safe)) (_%g5035550564%_)))))
              (let () (declare (not safe)) (_%g5035550564%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5035550564%_))))
                                      (if (gx#stx-pair? _%hd5040251228%_)
                                          (let ((_%e5053150685%_
                                                 (gx#syntax-e
                                                  _%hd5040251228%_)))
                                            (let ((_%tl5053350692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5053150685%_)))
                                                  (_%hd5053250689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5053150685%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5040051221%_)
                                                  (let ((_%__splice8640886409%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5040051221%_
                                                          '0)))
                                                    (let ((_%tl5053650698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8640886409%_
                                                              '1)))
                                                          (_%target5053450695%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8640886409%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5053650698%_)
                                                          (_%__match8669486695%_
                                                           _%e5039551204%_
                                                           _%hd5039651208%_
                                                           _%tl5039751211%_
                                                           _%e5039851214%_
                                                           _%hd5039951218%_
                                                           _%tl5040051221%_
                                                           _%e5040151224%_
                                                           _%hd5040251228%_
                                                           _%tl5040351231%_
                                                           _%e5053150685%_
                                                           _%hd5053250689%_
                                                           _%tl5053350692%_
                                                           _%__splice8640886409%_
                                                           _%target5053450695%_
                                                           _%tl5053650698%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5035550564%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5035550564%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_))))
                                  (if (gx#stx-pair? _%hd5040251228%_)
                                      (let ((_%e5053150685%_
                                             (gx#syntax-e _%hd5040251228%_)))
                                        (let ((_%tl5053350692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5053150685%_)))
                                              (_%hd5053250689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5053150685%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5040051221%_)
                                              (let ((_%__splice8640886409%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5040051221%_
                                                      '0)))
                                                (let ((_%tl5053650698%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8640886409%_
                                                          '1)))
                                                      (_%target5053450695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8640886409%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5053650698%_)
                                                      (_%__match8669486695%_
                                                       _%e5039551204%_
                                                       _%hd5039651208%_
                                                       _%tl5039751211%_
                                                       _%e5039851214%_
                                                       _%hd5039951218%_
                                                       _%tl5040051221%_
                                                       _%e5040151224%_
                                                       _%hd5040251228%_
                                                       _%tl5040351231%_
                                                       _%e5053150685%_
                                                       _%hd5053250689%_
                                                       _%tl5053350692%_
                                                       _%__splice8640886409%_
                                                       _%target5053450695%_
                                                       _%tl5053650698%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5035550564%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5035550564%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_))))))))
                   (_%__match8646086461%_
                    (lambda (_%e5036251380%_
                             _%hd5036351384%_
                             _%tl5036451387%_
                             _%e5036551390%_
                             _%hd5036651394%_
                             _%tl5036751397%_
                             _%e5036851400%_
                             _%hd5036951404%_
                             _%tl5037051407%_
                             _%e5037151410%_
                             _%hd5037251414%_
                             _%tl5037351417%_
                             _%e5037451420%_
                             _%hd5037551424%_
                             _%tl5037651427%_
                             _%e5037751430%_
                             _%hd5037851434%_
                             _%tl5037951437%_
                             _%__splice8638886389%_
                             _%target5038051440%_
                             _%tl5038251443%_)
                      (letrec ((_%loop5038351446%_
                                (lambda (_%hd5038151450%_ _%body5038751453%_)
                                  (if (gx#stx-pair? _%hd5038151450%_)
                                      (let ((_%e5038451456%_
                                             (gx#syntax-e _%hd5038151450%_)))
                                        (let ((_%lp-tl5038651463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5038451456%_)))
                                              (_%lp-hd5038551460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5038451456%_))))
                                          (_%loop5038351446%_
                                           _%lp-tl5038651463%_
                                           (cons _%lp-hd5038551460%_
                                                 _%body5038751453%_))))
                                      (let ((_%body5038851466%_
                                             (reverse _%body5038751453%_)))
                                        (let ((_%L51470%_ _%body5038851466%_)
                                              (_%L51472%_ _%hd5037851434%_)
                                              (_%L51473%_ _%hd5037551424%_)
                                              (_%L51474%_ _%hd5037251414%_)
                                              (_%L51475%_ _%hd5036951404%_))
                                          (if (and (gx#identifier? _%L51475%_)
                                                   (gx#identifier? _%L51473%_)
                                                   (or (gx#free-identifier=?
                                                        _%L51473%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L51473%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L51473%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L51473%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L51473%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8638686387%_
                                               _%L51470%_
                                               _%L51472%_
                                               _%L51473%_
                                               _%L51474%_
                                               _%L51475%_)
                                              (_%__match8649086491%_
                                               _%e5036251380%_
                                               _%hd5036351384%_
                                               _%tl5036451387%_
                                               _%e5036551390%_
                                               _%hd5036651394%_
                                               _%tl5036751397%_
                                               _%e5036851400%_
                                               _%hd5036951404%_
                                               _%tl5037051407%_
                                               _%e5037151410%_
                                               _%hd5037251414%_
                                               _%tl5037351417%_
                                               _%e5037451420%_
                                               _%hd5037551424%_
                                               _%tl5037651427%_))))))))
                        (_%loop5038351446%_ _%target5038051440%_ '())))))
              (if (gx#stx-pair? _%__stx8638386384%_)
                  (let ((_%e5036251380%_ (gx#syntax-e _%__stx8638386384%_)))
                    (let ((_%tl5036451387%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5036251380%_)))
                          (_%hd5036351384%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5036251380%_))))
                      (if (gx#stx-pair? _%tl5036451387%_)
                          (let ((_%e5036551390%_
                                 (gx#syntax-e _%tl5036451387%_)))
                            (let ((_%tl5036751397%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5036551390%_)))
                                  (_%hd5036651394%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5036551390%_))))
                              (if (gx#stx-pair? _%hd5036651394%_)
                                  (let ((_%e5036851400%_
                                         (gx#syntax-e _%hd5036651394%_)))
                                    (let ((_%tl5037051407%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5036851400%_)))
                                          (_%hd5036951404%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5036851400%_))))
                                      (if (gx#stx-pair? _%tl5037051407%_)
                                          (let ((_%e5037151410%_
                                                 (gx#syntax-e
                                                  _%tl5037051407%_)))
                                            (let ((_%tl5037351417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5037151410%_)))
                                                  (_%hd5037251414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5037151410%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5037351417%_)
                                                  (let ((_%e5037451420%_
                                                         (gx#syntax-e
                                                          _%tl5037351417%_)))
                                                    (let ((_%tl5037651427%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5037451420%_)))
                                                          (_%hd5037551424%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5037451420%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5037651427%_)
                                                          (let ((_%e5037751430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5037651427%_)))
                    (let ((_%tl5037951437%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5037751430%_)))
                          (_%hd5037851434%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5037751430%_))))
                      (if (gx#stx-null? _%tl5037951437%_)
                          (if (gx#stx-pair/null? _%tl5036751397%_)
                              (let ((_%__splice8638886389%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5036751397%_
                                      '0)))
                                (let ((_%tl5038251443%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8638886389%_
                                          '1)))
                                      (_%target5038051440%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8638886389%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5038251443%_)
                                      (_%__match8646086461%_
                                       _%e5036251380%_
                                       _%hd5036351384%_
                                       _%tl5036451387%_
                                       _%e5036551390%_
                                       _%hd5036651394%_
                                       _%tl5036751397%_
                                       _%e5036851400%_
                                       _%hd5036951404%_
                                       _%tl5037051407%_
                                       _%e5037151410%_
                                       _%hd5037251414%_
                                       _%tl5037351417%_
                                       _%e5037451420%_
                                       _%hd5037551424%_
                                       _%tl5037651427%_
                                       _%e5037751430%_
                                       _%hd5037851434%_
                                       _%tl5037951437%_
                                       _%__splice8638886389%_
                                       _%target5038051440%_
                                       _%tl5038251443%_)
                                      (if (gx#stx-pair? _%hd5036951404%_)
                                          (let ((_%e5053150685%_
                                                 (gx#syntax-e
                                                  _%hd5036951404%_)))
                                            (let ((_%tl5053350692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5053150685%_)))
                                                  (_%hd5053250689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5053150685%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5035550564%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_))))))
                              (if (gx#stx-pair? _%hd5036951404%_)
                                  (let ((_%e5053150685%_
                                         (gx#syntax-e _%hd5036951404%_)))
                                    (let ((_%tl5053350692%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5053150685%_)))
                                          (_%hd5053250689%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5053150685%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_))))
                          (if (gx#identifier? _%hd5037551424%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g92288_|
                                   _%hd5037551424%_)
                                  (if (gx#stx-pair? _%tl5037951437%_)
                                      (let ((_%e5041351264%_
                                             (gx#syntax-e _%tl5037951437%_)))
                                        (let ((_%tl5041551271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5041351264%_)))
                                              (_%hd5041451268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5041351264%_))))
                                          (if (gx#stx-pair? _%tl5041551271%_)
                                              (let ((_%e5041651274%_
                                                     (gx#syntax-e
                                                      _%tl5041551271%_)))
                                                (let ((_%tl5041851281%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5041651274%_)))
                                                      (_%hd5041751278%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5041651274%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5041851281%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5036751397%_)
                                                          (let ((_%__splice8639286393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5036751397%_ '0)))
                    (let ((_%tl5042151287%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8639286393%_ '1)))
                          (_%target5041951284%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8639286393%_ '0))))
                      (if (gx#stx-null? _%tl5042151287%_)
                          (_%__match8652286523%_
                           _%e5036251380%_
                           _%hd5036351384%_
                           _%tl5036451387%_
                           _%e5036551390%_
                           _%hd5036651394%_
                           _%tl5036751397%_
                           _%e5036851400%_
                           _%hd5036951404%_
                           _%tl5037051407%_
                           _%e5037151410%_
                           _%hd5037251414%_
                           _%tl5037351417%_
                           _%e5037451420%_
                           _%hd5037551424%_
                           _%tl5037651427%_
                           _%e5037751430%_
                           _%hd5037851434%_
                           _%tl5037951437%_
                           _%e5041351264%_
                           _%hd5041451268%_
                           _%tl5041551271%_
                           _%e5041651274%_
                           _%hd5041751278%_
                           _%tl5041851281%_
                           _%__splice8639286393%_
                           _%target5041951284%_
                           _%tl5042151287%_)
                          (if (gx#stx-pair? _%hd5036951404%_)
                              (let ((_%e5053150685%_
                                     (gx#syntax-e _%hd5036951404%_)))
                                (let ((_%tl5053350692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5053150685%_)))
                                      (_%hd5053250689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5053150685%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5035550564%_))))))
                  (if (gx#stx-pair? _%hd5036951404%_)
                      (let ((_%e5053150685%_ (gx#syntax-e _%hd5036951404%_)))
                        (let ((_%tl5053350692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5053150685%_)))
                              (_%hd5053250689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5053150685%_))))
                          (let () (declare (not safe)) (_%g5035550564%_))))
                      (let () (declare (not safe)) (_%g5035550564%_))))
              (if (gx#stx-pair? _%hd5036951404%_)
                  (let ((_%e5053150685%_ (gx#syntax-e _%hd5036951404%_)))
                    (let ((_%tl5053350692%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5053150685%_)))
                          (_%hd5053250689%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5053150685%_))))
                      (if (gx#stx-pair/null? _%tl5036751397%_)
                          (let ((_%__splice8640886409%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5036751397%_
                                  '0)))
                            (let ((_%tl5053650698%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8640886409%_ '1)))
                                  (_%target5053450695%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8640886409%_
                                      '0))))
                              (if (gx#stx-null? _%tl5053650698%_)
                                  (_%__match8669486695%_
                                   _%e5036251380%_
                                   _%hd5036351384%_
                                   _%tl5036451387%_
                                   _%e5036551390%_
                                   _%hd5036651394%_
                                   _%tl5036751397%_
                                   _%e5036851400%_
                                   _%hd5036951404%_
                                   _%tl5037051407%_
                                   _%e5053150685%_
                                   _%hd5053250689%_
                                   _%tl5053350692%_
                                   _%__splice8640886409%_
                                   _%target5053450695%_
                                   _%tl5053650698%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_)))))
                          (let () (declare (not safe)) (_%g5035550564%_)))))
                  (let () (declare (not safe)) (_%g5035550564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd5037251414%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g92287_|
                                                       _%hd5037251414%_)
                                                      (if (gx#stx-null?
                                                           _%tl5041551271%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5036751397%_)
                                                              (let ((_%__splice8640486405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5036751397%_
                              '0)))
                        (let ((_%tl5051150840%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8640486405%_ '1)))
                              (_%target5050950837%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8640486405%_ '0))))
                          (if (gx#stx-null? _%tl5051150840%_)
                              (_%__match8666286663%_
                               _%e5036251380%_
                               _%hd5036351384%_
                               _%tl5036451387%_
                               _%e5036551390%_
                               _%hd5036651394%_
                               _%tl5036751397%_
                               _%e5036851400%_
                               _%hd5036951404%_
                               _%tl5037051407%_
                               _%e5037151410%_
                               _%hd5037251414%_
                               _%tl5037351417%_
                               _%e5037451420%_
                               _%hd5037551424%_
                               _%tl5037651427%_
                               _%e5037751430%_
                               _%hd5037851434%_
                               _%tl5037951437%_
                               _%e5041351264%_
                               _%hd5041451268%_
                               _%tl5041551271%_
                               _%__splice8640486405%_
                               _%target5050950837%_
                               _%tl5051150840%_)
                              (if (gx#stx-pair? _%hd5036951404%_)
                                  (let ((_%e5053150685%_
                                         (gx#syntax-e _%hd5036951404%_)))
                                    (let ((_%tl5053350692%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5053150685%_)))
                                          (_%hd5053250689%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5053150685%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_))))))
                      (if (gx#stx-pair? _%hd5036951404%_)
                          (let ((_%e5053150685%_
                                 (gx#syntax-e _%hd5036951404%_)))
                            (let ((_%tl5053350692%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5053150685%_)))
                                  (_%hd5053250689%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5053150685%_))))
                              (let () (declare (not safe)) (_%g5035550564%_))))
                          (let () (declare (not safe)) (_%g5035550564%_))))
                  (if (gx#stx-pair? _%hd5036951404%_)
                      (let ((_%e5053150685%_ (gx#syntax-e _%hd5036951404%_)))
                        (let ((_%tl5053350692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5053150685%_)))
                              (_%hd5053250689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5053150685%_))))
                          (if (gx#stx-pair/null? _%tl5036751397%_)
                              (let ((_%__splice8640886409%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5036751397%_
                                      '0)))
                                (let ((_%tl5053650698%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8640886409%_
                                          '1)))
                                      (_%target5053450695%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8640886409%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5053650698%_)
                                      (_%__match8669486695%_
                                       _%e5036251380%_
                                       _%hd5036351384%_
                                       _%tl5036451387%_
                                       _%e5036551390%_
                                       _%hd5036651394%_
                                       _%tl5036751397%_
                                       _%e5036851400%_
                                       _%hd5036951404%_
                                       _%tl5037051407%_
                                       _%e5053150685%_
                                       _%hd5053250689%_
                                       _%tl5053350692%_
                                       _%__splice8640886409%_
                                       _%target5053450695%_
                                       _%tl5053650698%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5035550564%_)))))
                      (let () (declare (not safe)) (_%g5035550564%_))))
              (if (gx#stx-pair? _%hd5036951404%_)
                  (let ((_%e5053150685%_ (gx#syntax-e _%hd5036951404%_)))
                    (let ((_%tl5053350692%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5053150685%_)))
                          (_%hd5053250689%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5053150685%_))))
                      (if (gx#stx-pair/null? _%tl5036751397%_)
                          (let ((_%__splice8640886409%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5036751397%_
                                  '0)))
                            (let ((_%tl5053650698%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8640886409%_ '1)))
                                  (_%target5053450695%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8640886409%_
                                      '0))))
                              (if (gx#stx-null? _%tl5053650698%_)
                                  (_%__match8669486695%_
                                   _%e5036251380%_
                                   _%hd5036351384%_
                                   _%tl5036451387%_
                                   _%e5036551390%_
                                   _%hd5036651394%_
                                   _%tl5036751397%_
                                   _%e5036851400%_
                                   _%hd5036951404%_
                                   _%tl5037051407%_
                                   _%e5053150685%_
                                   _%hd5053250689%_
                                   _%tl5053350692%_
                                   _%__splice8640886409%_
                                   _%target5053450695%_
                                   _%tl5053650698%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_)))))
                          (let () (declare (not safe)) (_%g5035550564%_)))))
                  (let () (declare (not safe)) (_%g5035550564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5036951404%_)
                                                      (let ((_%e5053150685%_
                                                             (gx#syntax-e
                                                              _%hd5036951404%_)))
                                                        (let ((_%tl5053350692%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5053150685%_)))
                      (_%hd5053250689%_
                       (let () (declare (not safe)) (##car _%e5053150685%_))))
                  (if (gx#stx-pair/null? _%tl5036751397%_)
                      (let ((_%__splice8640886409%_
                             (gx#syntax-split-splice->vector
                              _%tl5036751397%_
                              '0)))
                        (let ((_%tl5053650698%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8640886409%_ '1)))
                              (_%target5053450695%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8640886409%_ '0))))
                          (if (gx#stx-null? _%tl5053650698%_)
                              (_%__match8669486695%_
                               _%e5036251380%_
                               _%hd5036351384%_
                               _%tl5036451387%_
                               _%e5036551390%_
                               _%hd5036651394%_
                               _%tl5036751397%_
                               _%e5036851400%_
                               _%hd5036951404%_
                               _%tl5037051407%_
                               _%e5053150685%_
                               _%hd5053250689%_
                               _%tl5053350692%_
                               _%__splice8640886409%_
                               _%target5053450695%_
                               _%tl5053650698%_)
                              (let ()
                                (declare (not safe))
                                (_%g5035550564%_)))))
                      (let () (declare (not safe)) (_%g5035550564%_)))))
              (let () (declare (not safe)) (_%g5035550564%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd5036951404%_)
                                          (let ((_%e5053150685%_
                                                 (gx#syntax-e
                                                  _%hd5036951404%_)))
                                            (let ((_%tl5053350692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5053150685%_)))
                                                  (_%hd5053250689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5053150685%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5036751397%_)
                                                  (let ((_%__splice8640886409%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5036751397%_
                                                          '0)))
                                                    (let ((_%tl5053650698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8640886409%_
                                                              '1)))
                                                          (_%target5053450695%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8640886409%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5053650698%_)
                                                          (_%__match8669486695%_
                                                           _%e5036251380%_
                                                           _%hd5036351384%_
                                                           _%tl5036451387%_
                                                           _%e5036551390%_
                                                           _%hd5036651394%_
                                                           _%tl5036751397%_
                                                           _%e5036851400%_
                                                           _%hd5036951404%_
                                                           _%tl5037051407%_
                                                           _%e5053150685%_
                                                           _%hd5053250689%_
                                                           _%tl5053350692%_
                                                           _%__splice8640886409%_
                                                           _%target5053450695%_
                                                           _%tl5053650698%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5035550564%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5035550564%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_))))
                                  (if (gx#identifier? _%hd5037251414%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92287_|
                                           _%hd5037251414%_)
                                          (if (gx#stx-pair? _%tl5037951437%_)
                                              (let ((_%e5050650827%_
                                                     (gx#syntax-e
                                                      _%tl5037951437%_)))
                                                (let ((_%tl5050850834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5050650827%_)))
                                                      (_%hd5050750831%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5050650827%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5050850834%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5036751397%_)
                                                          (let ((_%__splice8640486405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5036751397%_ '0)))
                    (let ((_%tl5051150840%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8640486405%_ '1)))
                          (_%target5050950837%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8640486405%_ '0))))
                      (if (gx#stx-null? _%tl5051150840%_)
                          (_%__match8666286663%_
                           _%e5036251380%_
                           _%hd5036351384%_
                           _%tl5036451387%_
                           _%e5036551390%_
                           _%hd5036651394%_
                           _%tl5036751397%_
                           _%e5036851400%_
                           _%hd5036951404%_
                           _%tl5037051407%_
                           _%e5037151410%_
                           _%hd5037251414%_
                           _%tl5037351417%_
                           _%e5037451420%_
                           _%hd5037551424%_
                           _%tl5037651427%_
                           _%e5037751430%_
                           _%hd5037851434%_
                           _%tl5037951437%_
                           _%e5050650827%_
                           _%hd5050750831%_
                           _%tl5050850834%_
                           _%__splice8640486405%_
                           _%target5050950837%_
                           _%tl5051150840%_)
                          (if (gx#stx-pair? _%hd5036951404%_)
                              (let ((_%e5053150685%_
                                     (gx#syntax-e _%hd5036951404%_)))
                                (let ((_%tl5053350692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5053150685%_)))
                                      (_%hd5053250689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5053150685%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5035550564%_))))))
                  (if (gx#stx-pair? _%hd5036951404%_)
                      (let ((_%e5053150685%_ (gx#syntax-e _%hd5036951404%_)))
                        (let ((_%tl5053350692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5053150685%_)))
                              (_%hd5053250689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5053150685%_))))
                          (let () (declare (not safe)) (_%g5035550564%_))))
                      (let () (declare (not safe)) (_%g5035550564%_))))
              (if (gx#stx-pair? _%hd5036951404%_)
                  (let ((_%e5053150685%_ (gx#syntax-e _%hd5036951404%_)))
                    (let ((_%tl5053350692%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5053150685%_)))
                          (_%hd5053250689%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5053150685%_))))
                      (if (gx#stx-pair/null? _%tl5036751397%_)
                          (let ((_%__splice8640886409%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5036751397%_
                                  '0)))
                            (let ((_%tl5053650698%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8640886409%_ '1)))
                                  (_%target5053450695%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8640886409%_
                                      '0))))
                              (if (gx#stx-null? _%tl5053650698%_)
                                  (_%__match8669486695%_
                                   _%e5036251380%_
                                   _%hd5036351384%_
                                   _%tl5036451387%_
                                   _%e5036551390%_
                                   _%hd5036651394%_
                                   _%tl5036751397%_
                                   _%e5036851400%_
                                   _%hd5036951404%_
                                   _%tl5037051407%_
                                   _%e5053150685%_
                                   _%hd5053250689%_
                                   _%tl5053350692%_
                                   _%__splice8640886409%_
                                   _%target5053450695%_
                                   _%tl5053650698%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_)))))
                          (let () (declare (not safe)) (_%g5035550564%_)))))
                  (let () (declare (not safe)) (_%g5035550564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5036951404%_)
                                                  (let ((_%e5053150685%_
                                                         (gx#syntax-e
                                                          _%hd5036951404%_)))
                                                    (let ((_%tl5053350692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5053150685%_)))
                                                          (_%hd5053250689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5053150685%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5036751397%_)
                                                          (let ((_%__splice8640886409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5036751397%_ '0)))
                    (let ((_%tl5053650698%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8640886409%_ '1)))
                          (_%target5053450695%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8640886409%_ '0))))
                      (if (gx#stx-null? _%tl5053650698%_)
                          (_%__match8669486695%_
                           _%e5036251380%_
                           _%hd5036351384%_
                           _%tl5036451387%_
                           _%e5036551390%_
                           _%hd5036651394%_
                           _%tl5036751397%_
                           _%e5036851400%_
                           _%hd5036951404%_
                           _%tl5037051407%_
                           _%e5053150685%_
                           _%hd5053250689%_
                           _%tl5053350692%_
                           _%__splice8640886409%_
                           _%target5053450695%_
                           _%tl5053650698%_)
                          (let () (declare (not safe)) (_%g5035550564%_)))))
                  (let () (declare (not safe)) (_%g5035550564%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5035550564%_))))
                                          (if (gx#stx-pair? _%hd5036951404%_)
                                              (let ((_%e5053150685%_
                                                     (gx#syntax-e
                                                      _%hd5036951404%_)))
                                                (let ((_%tl5053350692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5053150685%_)))
                                                      (_%hd5053250689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5053150685%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5036751397%_)
                                                      (let ((_%__splice8640886409%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5036751397%_
                                                              '0)))
                                                        (let ((_%tl5053650698%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8640886409%_ '1)))
                      (_%target5053450695%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8640886409%_ '0))))
                  (if (gx#stx-null? _%tl5053650698%_)
                      (_%__match8669486695%_
                       _%e5036251380%_
                       _%hd5036351384%_
                       _%tl5036451387%_
                       _%e5036551390%_
                       _%hd5036651394%_
                       _%tl5036751397%_
                       _%e5036851400%_
                       _%hd5036951404%_
                       _%tl5037051407%_
                       _%e5053150685%_
                       _%hd5053250689%_
                       _%tl5053350692%_
                       _%__splice8640886409%_
                       _%target5053450695%_
                       _%tl5053650698%_)
                      (let () (declare (not safe)) (_%g5035550564%_)))))
              (let () (declare (not safe)) (_%g5035550564%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5035550564%_))))
                                      (if (gx#stx-pair? _%hd5036951404%_)
                                          (let ((_%e5053150685%_
                                                 (gx#syntax-e
                                                  _%hd5036951404%_)))
                                            (let ((_%tl5053350692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5053150685%_)))
                                                  (_%hd5053250689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5053150685%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5036751397%_)
                                                  (let ((_%__splice8640886409%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5036751397%_
                                                          '0)))
                                                    (let ((_%tl5053650698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8640886409%_
                                                              '1)))
                                                          (_%target5053450695%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8640886409%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5053650698%_)
                                                          (_%__match8669486695%_
                                                           _%e5036251380%_
                                                           _%hd5036351384%_
                                                           _%tl5036451387%_
                                                           _%e5036551390%_
                                                           _%hd5036651394%_
                                                           _%tl5036751397%_
                                                           _%e5036851400%_
                                                           _%hd5036951404%_
                                                           _%tl5037051407%_
                                                           _%e5053150685%_
                                                           _%hd5053250689%_
                                                           _%tl5053350692%_
                                                           _%__splice8640886409%_
                                                           _%target5053450695%_
                                                           _%tl5053650698%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5035550564%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5035550564%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_)))))
                              (if (gx#identifier? _%hd5037251414%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g92287_|
                                       _%hd5037251414%_)
                                      (if (gx#stx-pair? _%tl5037951437%_)
                                          (let ((_%e5050650827%_
                                                 (gx#syntax-e
                                                  _%tl5037951437%_)))
                                            (let ((_%tl5050850834%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5050650827%_)))
                                                  (_%hd5050750831%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5050650827%_))))
                                              (if (gx#stx-null?
                                                   _%tl5050850834%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5036751397%_)
                                                      (let ((_%__splice8640486405%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5036751397%_
                                                              '0)))
                                                        (let ((_%tl5051150840%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8640486405%_ '1)))
                      (_%target5050950837%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8640486405%_ '0))))
                  (if (gx#stx-null? _%tl5051150840%_)
                      (_%__match8666286663%_
                       _%e5036251380%_
                       _%hd5036351384%_
                       _%tl5036451387%_
                       _%e5036551390%_
                       _%hd5036651394%_
                       _%tl5036751397%_
                       _%e5036851400%_
                       _%hd5036951404%_
                       _%tl5037051407%_
                       _%e5037151410%_
                       _%hd5037251414%_
                       _%tl5037351417%_
                       _%e5037451420%_
                       _%hd5037551424%_
                       _%tl5037651427%_
                       _%e5037751430%_
                       _%hd5037851434%_
                       _%tl5037951437%_
                       _%e5050650827%_
                       _%hd5050750831%_
                       _%tl5050850834%_
                       _%__splice8640486405%_
                       _%target5050950837%_
                       _%tl5051150840%_)
                      (if (gx#stx-pair? _%hd5036951404%_)
                          (let ((_%e5053150685%_
                                 (gx#syntax-e _%hd5036951404%_)))
                            (let ((_%tl5053350692%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5053150685%_)))
                                  (_%hd5053250689%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5053150685%_))))
                              (let () (declare (not safe)) (_%g5035550564%_))))
                          (let () (declare (not safe)) (_%g5035550564%_))))))
              (if (gx#stx-pair? _%hd5036951404%_)
                  (let ((_%e5053150685%_ (gx#syntax-e _%hd5036951404%_)))
                    (let ((_%tl5053350692%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5053150685%_)))
                          (_%hd5053250689%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5053150685%_))))
                      (let () (declare (not safe)) (_%g5035550564%_))))
                  (let () (declare (not safe)) (_%g5035550564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5036951404%_)
                                                      (let ((_%e5053150685%_
                                                             (gx#syntax-e
                                                              _%hd5036951404%_)))
                                                        (let ((_%tl5053350692%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5053150685%_)))
                      (_%hd5053250689%_
                       (let () (declare (not safe)) (##car _%e5053150685%_))))
                  (if (gx#stx-pair/null? _%tl5036751397%_)
                      (let ((_%__splice8640886409%_
                             (gx#syntax-split-splice->vector
                              _%tl5036751397%_
                              '0)))
                        (let ((_%tl5053650698%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8640886409%_ '1)))
                              (_%target5053450695%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8640886409%_ '0))))
                          (if (gx#stx-null? _%tl5053650698%_)
                              (_%__match8669486695%_
                               _%e5036251380%_
                               _%hd5036351384%_
                               _%tl5036451387%_
                               _%e5036551390%_
                               _%hd5036651394%_
                               _%tl5036751397%_
                               _%e5036851400%_
                               _%hd5036951404%_
                               _%tl5037051407%_
                               _%e5053150685%_
                               _%hd5053250689%_
                               _%tl5053350692%_
                               _%__splice8640886409%_
                               _%target5053450695%_
                               _%tl5053650698%_)
                              (let ()
                                (declare (not safe))
                                (_%g5035550564%_)))))
                      (let () (declare (not safe)) (_%g5035550564%_)))))
              (let () (declare (not safe)) (_%g5035550564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5036951404%_)
                                              (let ((_%e5053150685%_
                                                     (gx#syntax-e
                                                      _%hd5036951404%_)))
                                                (let ((_%tl5053350692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5053150685%_)))
                                                      (_%hd5053250689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5053150685%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5036751397%_)
                                                      (let ((_%__splice8640886409%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5036751397%_
                                                              '0)))
                                                        (let ((_%tl5053650698%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8640886409%_ '1)))
                      (_%target5053450695%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8640886409%_ '0))))
                  (if (gx#stx-null? _%tl5053650698%_)
                      (_%__match8669486695%_
                       _%e5036251380%_
                       _%hd5036351384%_
                       _%tl5036451387%_
                       _%e5036551390%_
                       _%hd5036651394%_
                       _%tl5036751397%_
                       _%e5036851400%_
                       _%hd5036951404%_
                       _%tl5037051407%_
                       _%e5053150685%_
                       _%hd5053250689%_
                       _%tl5053350692%_
                       _%__splice8640886409%_
                       _%target5053450695%_
                       _%tl5053650698%_)
                      (let () (declare (not safe)) (_%g5035550564%_)))))
              (let () (declare (not safe)) (_%g5035550564%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5035550564%_))))
                                      (if (gx#stx-pair? _%hd5036951404%_)
                                          (let ((_%e5053150685%_
                                                 (gx#syntax-e
                                                  _%hd5036951404%_)))
                                            (let ((_%tl5053350692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5053150685%_)))
                                                  (_%hd5053250689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5053150685%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5036751397%_)
                                                  (let ((_%__splice8640886409%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5036751397%_
                                                          '0)))
                                                    (let ((_%tl5053650698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8640886409%_
                                                              '1)))
                                                          (_%target5053450695%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8640886409%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5053650698%_)
                                                          (_%__match8669486695%_
                                                           _%e5036251380%_
                                                           _%hd5036351384%_
                                                           _%tl5036451387%_
                                                           _%e5036551390%_
                                                           _%hd5036651394%_
                                                           _%tl5036751397%_
                                                           _%e5036851400%_
                                                           _%hd5036951404%_
                                                           _%tl5037051407%_
                                                           _%e5053150685%_
                                                           _%hd5053250689%_
                                                           _%tl5053350692%_
                                                           _%__splice8640886409%_
                                                           _%target5053450695%_
                                                           _%tl5053650698%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5035550564%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5035550564%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_))))
                                  (if (gx#stx-pair? _%hd5036951404%_)
                                      (let ((_%e5053150685%_
                                             (gx#syntax-e _%hd5036951404%_)))
                                        (let ((_%tl5053350692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5053150685%_)))
                                              (_%hd5053250689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5053150685%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5036751397%_)
                                              (let ((_%__splice8640886409%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5036751397%_
                                                      '0)))
                                                (let ((_%tl5053650698%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8640886409%_
                                                          '1)))
                                                      (_%target5053450695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8640886409%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5053650698%_)
                                                      (_%__match8669486695%_
                                                       _%e5036251380%_
                                                       _%hd5036351384%_
                                                       _%tl5036451387%_
                                                       _%e5036551390%_
                                                       _%hd5036651394%_
                                                       _%tl5036751397%_
                                                       _%e5036851400%_
                                                       _%hd5036951404%_
                                                       _%tl5037051407%_
                                                       _%e5053150685%_
                                                       _%hd5053250689%_
                                                       _%tl5053350692%_
                                                       _%__splice8640886409%_
                                                       _%target5053450695%_
                                                       _%tl5053650698%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5035550564%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5035550564%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_))))))))
                  (if (gx#stx-null? _%tl5037651427%_)
                      (if (gx#stx-pair/null? _%tl5036751397%_)
                          (let ((_%__splice8639686397%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5036751397%_
                                  '0)))
                            (let ((_%tl5044951104%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8639686397%_ '1)))
                                  (_%target5044751101%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8639686397%_
                                      '0))))
                              (if (gx#stx-null? _%tl5044951104%_)
                                  (_%__match8656286563%_
                                   _%e5036251380%_
                                   _%hd5036351384%_
                                   _%tl5036451387%_
                                   _%e5036551390%_
                                   _%hd5036651394%_
                                   _%tl5036751397%_
                                   _%e5036851400%_
                                   _%hd5036951404%_
                                   _%tl5037051407%_
                                   _%e5037151410%_
                                   _%hd5037251414%_
                                   _%tl5037351417%_
                                   _%e5037451420%_
                                   _%hd5037551424%_
                                   _%tl5037651427%_
                                   _%__splice8639686397%_
                                   _%target5044751101%_
                                   _%tl5044951104%_)
                                  (if (gx#stx-pair? _%hd5036951404%_)
                                      (let ((_%e5053150685%_
                                             (gx#syntax-e _%hd5036951404%_)))
                                        (let ((_%tl5053350692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5053150685%_)))
                                              (_%hd5053250689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5053150685%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_))))))
                          (if (gx#stx-pair? _%hd5036951404%_)
                              (let ((_%e5053150685%_
                                     (gx#syntax-e _%hd5036951404%_)))
                                (let ((_%tl5053350692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5053150685%_)))
                                      (_%hd5053250689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5053150685%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_))))
                              (let () (declare (not safe)) (_%g5035550564%_))))
                      (if (gx#stx-pair? _%hd5036951404%_)
                          (let ((_%e5053150685%_
                                 (gx#syntax-e _%hd5036951404%_)))
                            (let ((_%tl5053350692%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5053150685%_)))
                                  (_%hd5053250689%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5053150685%_))))
                              (if (gx#stx-pair/null? _%tl5036751397%_)
                                  (let ((_%__splice8640886409%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5036751397%_
                                          '0)))
                                    (let ((_%tl5053650698%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8640886409%_
                                              '1)))
                                          (_%target5053450695%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8640886409%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5053650698%_)
                                          (_%__match8669486695%_
                                           _%e5036251380%_
                                           _%hd5036351384%_
                                           _%tl5036451387%_
                                           _%e5036551390%_
                                           _%hd5036651394%_
                                           _%tl5036751397%_
                                           _%e5036851400%_
                                           _%hd5036951404%_
                                           _%tl5037051407%_
                                           _%e5053150685%_
                                           _%hd5053250689%_
                                           _%tl5053350692%_
                                           _%__splice8640886409%_
                                           _%target5053450695%_
                                           _%tl5053650698%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5035550564%_)))))
                          (let () (declare (not safe)) (_%g5035550564%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5036951404%_)
                                                      (let ((_%e5053150685%_
                                                             (gx#syntax-e
                                                              _%hd5036951404%_)))
                                                        (let ((_%tl5053350692%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5053150685%_)))
                      (_%hd5053250689%_
                       (let () (declare (not safe)) (##car _%e5053150685%_))))
                  (if (gx#stx-pair/null? _%tl5036751397%_)
                      (let ((_%__splice8640886409%_
                             (gx#syntax-split-splice->vector
                              _%tl5036751397%_
                              '0)))
                        (let ((_%tl5053650698%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8640886409%_ '1)))
                              (_%target5053450695%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8640886409%_ '0))))
                          (if (gx#stx-null? _%tl5053650698%_)
                              (_%__match8669486695%_
                               _%e5036251380%_
                               _%hd5036351384%_
                               _%tl5036451387%_
                               _%e5036551390%_
                               _%hd5036651394%_
                               _%tl5036751397%_
                               _%e5036851400%_
                               _%hd5036951404%_
                               _%tl5037051407%_
                               _%e5053150685%_
                               _%hd5053250689%_
                               _%tl5053350692%_
                               _%__splice8640886409%_
                               _%target5053450695%_
                               _%tl5053650698%_)
                              (let ()
                                (declare (not safe))
                                (_%g5035550564%_)))))
                      (let () (declare (not safe)) (_%g5035550564%_)))))
              (let () (declare (not safe)) (_%g5035550564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5036951404%_)
                                              (let ((_%e5053150685%_
                                                     (gx#syntax-e
                                                      _%hd5036951404%_)))
                                                (let ((_%tl5053350692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5053150685%_)))
                                                      (_%hd5053250689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5053150685%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5036751397%_)
                                                      (let ((_%__splice8640886409%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5036751397%_
                                                              '0)))
                                                        (let ((_%tl5053650698%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8640886409%_ '1)))
                      (_%target5053450695%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8640886409%_ '0))))
                  (if (gx#stx-null? _%tl5053650698%_)
                      (_%__match8669486695%_
                       _%e5036251380%_
                       _%hd5036351384%_
                       _%tl5036451387%_
                       _%e5036551390%_
                       _%hd5036651394%_
                       _%tl5036751397%_
                       _%e5036851400%_
                       _%hd5036951404%_
                       _%tl5037051407%_
                       _%e5053150685%_
                       _%hd5053250689%_
                       _%tl5053350692%_
                       _%__splice8640886409%_
                       _%target5053450695%_
                       _%tl5053650698%_)
                      (let () (declare (not safe)) (_%g5035550564%_)))))
              (let () (declare (not safe)) (_%g5035550564%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5035550564%_))))))
                                  (if (gx#stx-null? _%hd5036651394%_)
                                      (if (gx#stx-pair/null? _%tl5036751397%_)
                                          (let ((_%__splice8641286413%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5036751397%_
                                                  '0)))
                                            (let ((_%tl5055250594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8641286413%_
                                                      '1)))
                                                  (_%target5055050591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8641286413%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5055250594%_)
                                                  (_%__match8671686717%_
                                                   _%e5036251380%_
                                                   _%hd5036351384%_
                                                   _%tl5036451387%_
                                                   _%e5036551390%_
                                                   _%hd5036651394%_
                                                   _%tl5036751397%_
                                                   _%__splice8641286413%_
                                                   _%target5055050591%_
                                                   _%tl5055250594%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5035550564%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5035550564%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5035550564%_))))))
                          (let () (declare (not safe)) (_%g5035550564%_)))))
                  (let () (declare (not safe)) (_%g5035550564%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx51538%_)
        (let* ((_%g5154251576%_
                (lambda (_%g5154351572%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5154351572%_)))
               (_%g5154151699%_
                (lambda (_%g5154351580%_)
                  (if (gx#stx-pair? _%g5154351580%_)
                      (let ((_%e5154751583%_ (gx#syntax-e _%g5154351580%_)))
                        (let ((_%hd5154851587%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5154751583%_)))
                              (_%tl5154951590%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5154751583%_))))
                          (if (gx#stx-pair? _%tl5154951590%_)
                              (let ((_%e5155051593%_
                                     (gx#syntax-e _%tl5154951590%_)))
                                (let ((_%hd5155151597%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5155051593%_)))
                                      (_%tl5155251600%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5155051593%_))))
                                  (if (gx#stx-pair? _%hd5155151597%_)
                                      (let ((_%e5155351603%_
                                             (gx#syntax-e _%hd5155151597%_)))
                                        (let ((_%hd5155451607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5155351603%_)))
                                              (_%tl5155551610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5155351603%_))))
                                          (if (gx#stx-pair? _%tl5155551610%_)
                                              (let ((_%e5155651613%_
                                                     (gx#syntax-e
                                                      _%tl5155551610%_)))
                                                (let ((_%hd5155751617%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5155651613%_)))
                                                      (_%tl5155851620%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5155651613%_))))
                                                  (if (gx#identifier?
                                                       _%hd5155751617%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g92289_|
                                                           _%hd5155751617%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5155851620%_)
                                                              (let ((_%e5155951623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5155851620%_)))
                        (let ((_%hd5156051627%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5155951623%_)))
                              (_%tl5156151630%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5155951623%_))))
                          (if (gx#stx-null? _%tl5156151630%_)
                              (if (gx#stx-pair/null? _%tl5155251600%_)
                                  (let ((_g92290_
                                         (gx#syntax-split-splice
                                          _%tl5155251600%_
                                          '0)))
                                    (begin
                                      (let ((_g92291_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g92290_)
                                                   (##values-length _g92290_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g92291_ 2)))
                                            (error "Context expects 2 values"
                                                   _g92291_)))
                                      (let ((_%target5156251633%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g92290_ 0)))
                                            (_%tl5156451636%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g92290_ 1))))
                                        (if (gx#stx-null? _%tl5156451636%_)
                                            (letrec ((_%loop5156551639%_
                                                      (lambda (_%hd5156351643%_
                                                               _%body5156951646%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5156351643%_)
                                                            (let ((_%e5156651649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5156351643%_)))
                      (let ((_%lp-hd5156751653%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5156651649%_)))
                            (_%lp-tl5156851656%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5156651649%_))))
                        (_%loop5156551639%_
                         _%lp-tl5156851656%_
                         (cons _%lp-hd5156751653%_ _%body5156951646%_))))
                    (let ((_%body5157051659%_ (reverse _%body5156951646%_)))
                      ((lambda (_%L51663%_ _%L51665%_ _%L51666%_)
                         (if (gx#identifier? _%L51666%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L51665%_
                                               (cons _%L51666%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g5169051693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g5169151696%_)
                            (cons _%g5169051693%_ _%g5169151696%_))
                          '()
                          _%L51663%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L51666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L51665%_ (cons _%L51666%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g5154251576%_ _%g5154351580%_)))
                       _%body5157051659%_
                       _%hd5156051627%_
                       _%hd5155451607%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5156551639%_
                                               _%target5156251633%_
                                               '()))
                                            (_%g5154251576%_
                                             _%g5154351580%_)))))
                                  (_%g5154251576%_ _%g5154351580%_))
                              (_%g5154251576%_ _%g5154351580%_))))
                      (_%g5154251576%_ _%g5154351580%_))
                  (_%g5154251576%_ _%g5154351580%_))
              (_%g5154251576%_ _%g5154351580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5154251576%_
                                               _%g5154351580%_))))
                                      (_%g5154251576%_ _%g5154351580%_))))
                              (_%g5154251576%_ _%g5154351580%_))))
                      (_%g5154251576%_ _%g5154351580%_)))))
          (_%g5154151699%_ _%$stx51538%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass52266%_ _%slot52268%_)
        (let ((_%$e52270%_
               (let ((__obj92102 _%klass52266%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj92102
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj92102 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj92102
                      'slot-types)))))
          (if _%$e52270%_
              ((lambda (_%slot-types52274%_)
                 (agetq _%slot52268%_ _%slot-types52274%_))
               _%$e52270%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass52247%_ _%slot52249%_)
        (let ((_%$e52251%_
               (let ((__obj92103 _%klass52247%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj92103
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj92103 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj92103
                      'slot-defaults)))))
          (if _%$e52251%_
              ((lambda (_%slot-defaults52255%_)
                 (let ((_%$e52258%_
                        (agetq _%slot52249%_ _%slot-defaults52255%_)))
                   (if _%$e52258%_
                       (gx#syntax-local-introduce _%$e52258%_)
                       '#f)))
               _%$e52251%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass52228%_ _%slot52230%_)
        (let ((_%$e52232%_
               (let ((__obj92104 _%klass52228%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj92104
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj92104 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj92104
                      'slot-defaults)))))
          (if _%$e52232%_
              ((lambda (_%slot-defaults52236%_)
                 (let ((_%$e52239%_
                        (agetq _%slot52230%_ _%slot-defaults52236%_)))
                   (if _%$e52239%_
                       (gx#syntax-local-introduce _%$e52239%_)
                       '#f)))
               _%$e52232%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass51996%_ _%slot51998%_)
        (let ((_%contract5199952001%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass51996%_
                _%slot51998%_)))
          (if _%contract5199952001%_
              (let* ((_%contract52005%_ _%contract5199952001%_)
                     (_%__stx8671986720%_ _%contract52005%_)
                     (_%g5201052047%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx8671986720%_))))
                (let ((_%__kont8672286723%_
                       (lambda (_%L52197%_ _%L52199%_)
                         (not (gx#free-identifier=?
                               _%L52199%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8672486725%_
                       (lambda (_%L52137%_ _%L52139%_ _%L52140%_)
                         (not (gx#free-identifier=?
                               _%L52139%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8672686727%_ (lambda (_%L52074%_) '#f)))
                  (let* ((_%__match8677286773%_
                          (lambda (_%e5202352097%_
                                   _%hd5202452101%_
                                   _%tl5202552104%_
                                   _%e5202652107%_
                                   _%hd5202752111%_
                                   _%tl5202852114%_
                                   _%e5202952117%_
                                   _%hd5203052121%_
                                   _%tl5203152124%_
                                   _%e5203252127%_
                                   _%hd5203352131%_
                                   _%tl5203452134%_)
                            (let ((_%L52137%_ _%hd5203352131%_)
                                  (_%L52139%_ _%hd5203052121%_)
                                  (_%L52140%_ _%hd5202752111%_))
                              (if (and (gx#identifier? _%L52139%_)
                                       (or (gx#free-identifier=?
                                            _%L52139%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L52139%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L52139%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L52139%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8672486725%_
                                   _%L52137%_
                                   _%L52139%_
                                   _%L52140%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5201052047%_))))))
                         (_%__match8674286743%_
                          (lambda (_%e5201452177%_
                                   _%hd5201552181%_
                                   _%tl5201652184%_
                                   _%e5201752187%_
                                   _%hd5201852191%_
                                   _%tl5201952194%_)
                            (let ((_%L52197%_ _%hd5201852191%_)
                                  (_%L52199%_ _%hd5201552181%_))
                              (if (and (gx#identifier? _%L52199%_)
                                       (or (gx#free-identifier=?
                                            _%L52199%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L52199%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L52199%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L52199%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8672286723%_ _%L52197%_ _%L52199%_)
                                  (if (gx#identifier? _%hd5201552181%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92292_|
                                           _%hd5201552181%_)
                                          (_%__kont8672686727%_
                                           _%hd5201852191%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5201052047%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5201052047%_))))))))
                    (if (gx#stx-pair? _%__stx8671986720%_)
                        (let ((_%e5201452177%_
                               (gx#syntax-e _%__stx8671986720%_)))
                          (let ((_%tl5201652184%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5201452177%_)))
                                (_%hd5201552181%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5201452177%_))))
                            (if (gx#stx-pair? _%tl5201652184%_)
                                (let ((_%e5201752187%_
                                       (gx#syntax-e _%tl5201652184%_)))
                                  (let ((_%tl5201952194%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5201752187%_)))
                                        (_%hd5201852191%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5201752187%_))))
                                    (if (gx#stx-null? _%tl5201952194%_)
                                        (_%__match8674286743%_
                                         _%e5201452177%_
                                         _%hd5201552181%_
                                         _%tl5201652184%_
                                         _%e5201752187%_
                                         _%hd5201852191%_
                                         _%tl5201952194%_)
                                        (if (gx#identifier? _%hd5201552181%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g92292_|
                                                 _%hd5201552181%_)
                                                (if (gx#stx-pair?
                                                     _%tl5201952194%_)
                                                    (let ((_%e5202952117%_
                                                           (gx#syntax-e
                                                            _%tl5201952194%_)))
                                                      (let ((_%tl5203152124%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5202952117%_)))
                    (_%hd5203052121%_
                     (let () (declare (not safe)) (##car _%e5202952117%_))))
                (if (gx#stx-pair? _%tl5203152124%_)
                    (let ((_%e5203252127%_ (gx#syntax-e _%tl5203152124%_)))
                      (let ((_%tl5203452134%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5203252127%_)))
                            (_%hd5203352131%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5203252127%_))))
                        (if (gx#stx-null? _%tl5203452134%_)
                            (_%__match8677286773%_
                             _%e5201452177%_
                             _%hd5201552181%_
                             _%tl5201652184%_
                             _%e5201752187%_
                             _%hd5201852191%_
                             _%tl5201952194%_
                             _%e5202952117%_
                             _%hd5203052121%_
                             _%tl5203152124%_
                             _%e5203252127%_
                             _%hd5203352131%_
                             _%tl5203452134%_)
                            (let () (declare (not safe)) (_%g5201052047%_)))))
                    (let () (declare (not safe)) (_%g5201052047%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5201052047%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5201052047%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5201052047%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5201052047%_)))))
                        (let () (declare (not safe)) (_%g5201052047%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass51764%_ _%slot51766%_)
        (let ((_%contract5176751769%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass51764%_
                _%slot51766%_)))
          (if _%contract5176751769%_
              (let* ((_%contract51773%_ _%contract5176751769%_)
                     (_%__stx8679386794%_ _%contract51773%_)
                     (_%g5177851815%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx8679386794%_))))
                (let ((_%__kont8679686797%_
                       (lambda (_%L51965%_ _%L51967%_)
                         (not (gx#free-identifier=?
                               _%L51967%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8679886799%_
                       (lambda (_%L51905%_ _%L51907%_ _%L51908%_) '#t))
                      (_%__kont8680086801%_ (lambda (_%L51842%_) '#t)))
                  (let* ((_%__match8684686847%_
                          (lambda (_%e5179151865%_
                                   _%hd5179251869%_
                                   _%tl5179351872%_
                                   _%e5179451875%_
                                   _%hd5179551879%_
                                   _%tl5179651882%_
                                   _%e5179751885%_
                                   _%hd5179851889%_
                                   _%tl5179951892%_
                                   _%e5180051895%_
                                   _%hd5180151899%_
                                   _%tl5180251902%_)
                            (let ((_%L51905%_ _%hd5180151899%_)
                                  (_%L51907%_ _%hd5179851889%_)
                                  (_%L51908%_ _%hd5179551879%_))
                              (if (and (gx#identifier? _%L51907%_)
                                       (or (gx#free-identifier=?
                                            _%L51907%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51907%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51907%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51907%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8679886799%_
                                   _%L51905%_
                                   _%L51907%_
                                   _%L51908%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5177851815%_))))))
                         (_%__match8681686817%_
                          (lambda (_%e5178251945%_
                                   _%hd5178351949%_
                                   _%tl5178451952%_
                                   _%e5178551955%_
                                   _%hd5178651959%_
                                   _%tl5178751962%_)
                            (let ((_%L51965%_ _%hd5178651959%_)
                                  (_%L51967%_ _%hd5178351949%_))
                              (if (and (gx#identifier? _%L51967%_)
                                       (or (gx#free-identifier=?
                                            _%L51967%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51967%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51967%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51967%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8679686797%_ _%L51965%_ _%L51967%_)
                                  (if (gx#identifier? _%hd5178351949%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92293_|
                                           _%hd5178351949%_)
                                          (_%__kont8680086801%_
                                           _%hd5178651959%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5177851815%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5177851815%_))))))))
                    (if (gx#stx-pair? _%__stx8679386794%_)
                        (let ((_%e5178251945%_
                               (gx#syntax-e _%__stx8679386794%_)))
                          (let ((_%tl5178451952%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5178251945%_)))
                                (_%hd5178351949%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5178251945%_))))
                            (if (gx#stx-pair? _%tl5178451952%_)
                                (let ((_%e5178551955%_
                                       (gx#syntax-e _%tl5178451952%_)))
                                  (let ((_%tl5178751962%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5178551955%_)))
                                        (_%hd5178651959%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5178551955%_))))
                                    (if (gx#stx-null? _%tl5178751962%_)
                                        (_%__match8681686817%_
                                         _%e5178251945%_
                                         _%hd5178351949%_
                                         _%tl5178451952%_
                                         _%e5178551955%_
                                         _%hd5178651959%_
                                         _%tl5178751962%_)
                                        (if (gx#identifier? _%hd5178351949%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g92293_|
                                                 _%hd5178351949%_)
                                                (if (gx#stx-pair?
                                                     _%tl5178751962%_)
                                                    (let ((_%e5179751885%_
                                                           (gx#syntax-e
                                                            _%tl5178751962%_)))
                                                      (let ((_%tl5179951892%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5179751885%_)))
                    (_%hd5179851889%_
                     (let () (declare (not safe)) (##car _%e5179751885%_))))
                (if (gx#stx-pair? _%tl5179951892%_)
                    (let ((_%e5180051895%_ (gx#syntax-e _%tl5179951892%_)))
                      (let ((_%tl5180251902%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5180051895%_)))
                            (_%hd5180151899%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5180051895%_))))
                        (if (gx#stx-null? _%tl5180251902%_)
                            (_%__match8684686847%_
                             _%e5178251945%_
                             _%hd5178351949%_
                             _%tl5178451952%_
                             _%e5178551955%_
                             _%hd5178651959%_
                             _%tl5178751962%_
                             _%e5179751885%_
                             _%hd5179851889%_
                             _%tl5179951892%_
                             _%e5180051895%_
                             _%hd5180151899%_
                             _%tl5180251902%_)
                            (let () (declare (not safe)) (_%g5177851815%_)))))
                    (let () (declare (not safe)) (_%g5177851815%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5177851815%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5177851815%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5177851815%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5177851815%_)))))
                        (let () (declare (not safe)) (_%g5177851815%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id51750%_)
        (if (gx#identifier? _%id51750%_)
            (let* ((_%str51753%_ (symbol->string (gx#stx-e _%id51750%_)))
                   (_%index5175551757%_ (string-index _%str51753%_ '#\.)))
              (if _%index5175551757%_
                  (let ((_%index51761%_ _%index5175551757%_))
                    (if (let () (declare (not safe)) (##fx> _%index51761%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str51753%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx51743%_ _%id51745%_)
        (let ((_%parts51747%_
               (string-split (symbol->string (gx#stx-e _%id51745%_)) '#\.)))
          (if (find string-empty? _%parts51747%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx51743%_
               _%id51745%_)
              (cons (gx#stx-identifier _%id51745%_ (car _%parts51747%_))
                    (map string->symbol (cdr _%parts51747%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx51724%_ _%klass-or-id51726%_ _%slot51727%_)
        (let* ((_%klass51729%_
                (if (gx#identifier? _%klass-or-id51726%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx51724%_
                       _%klass-or-id51726%_))
                    _%klass-or-id51726%_))
               (_%accessors51732%_
                (let ((__obj92105 _%klass51729%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj92105
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj92105 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj92105
                       'unchecked-accessors))))
               (_%$e51737%_ (agetq _%slot51727%_ _%accessors51732%_)))
          (if _%$e51737%_
              _%$e51737%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx51724%_
               _%klass51729%_
               _%slot51727%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx51704%_
               _%klass-or-id51706%_
               _%slot51707%_
               _%checked?51708%_)
        (let* ((_%klass51710%_
                (if (gx#identifier? _%klass-or-id51706%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx51704%_
                       _%klass-or-id51706%_))
                    _%klass-or-id51706%_))
               (_%mutators51713%_
                (if _%checked?51708%_
                    (let ((__obj92106 _%klass51710%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92106
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj92106 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92106
                           'mutators)))
                    (let ((__obj92107 _%klass51710%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92107
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj92107 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92107
                           'unchecked-mutators)))))
               (_%$e51718%_ (agetq _%slot51707%_ _%mutators51713%_)))
          (if _%$e51718%_
              _%$e51718%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx51704%_
               _%klass51710%_
               _%slot51707%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx52279%_)
        (letrec ((_%expand-body52282%_
                  (lambda (_%klass53190%_
                           _%var53192%_
                           _%Type53193%_
                           _%body53194%_
                           _%checked?53195%_)
                    (let* ((_%g5319753241%_
                            (lambda (_%g5319853237%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5319853237%_)))
                           (_%g5319653398%_
                            (lambda (_%g5319853245%_)
                              (if (gx#stx-pair? _%g5319853245%_)
                                  (let ((_%e5320653248%_
                                         (gx#syntax-e _%g5319853245%_)))
                                    (let ((_%hd5320753252%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5320653248%_)))
                                          (_%tl5320853255%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5320653248%_))))
                                      (if (gx#stx-pair? _%tl5320853255%_)
                                          (let ((_%e5320953258%_
                                                 (gx#syntax-e
                                                  _%tl5320853255%_)))
                                            (let ((_%hd5321053262%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5320953258%_)))
                                                  (_%tl5321153265%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5320953258%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5321153265%_)
                                                  (let ((_%e5321253268%_
                                                         (gx#syntax-e
                                                          _%tl5321153265%_)))
                                                    (let ((_%hd5321353272%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5321253268%_)))
                                                          (_%tl5321453275%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5321253268%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5321453275%_)
                                                          (let ((_%e5321553278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5321453275%_)))
                    (let ((_%hd5321653282%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5321553278%_)))
                          (_%tl5321753285%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5321553278%_))))
                      (if (gx#stx-pair? _%tl5321753285%_)
                          (let ((_%e5321853288%_
                                 (gx#syntax-e _%tl5321753285%_)))
                            (let ((_%hd5321953292%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5321853288%_)))
                                  (_%tl5322053295%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5321853288%_))))
                              (if (gx#stx-pair? _%tl5322053295%_)
                                  (let ((_%e5322153298%_
                                         (gx#syntax-e _%tl5322053295%_)))
                                    (let ((_%hd5322253302%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5322153298%_)))
                                          (_%tl5322353305%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5322153298%_))))
                                      (if (gx#stx-pair? _%tl5322353305%_)
                                          (let ((_%e5322453308%_
                                                 (gx#syntax-e
                                                  _%tl5322353305%_)))
                                            (let ((_%hd5322553312%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5322453308%_)))
                                                  (_%tl5322653315%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5322453308%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5322553312%_)
                                                  (let ((_g92294_
                                                         (gx#syntax-split-splice
                                                          _%hd5322553312%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g92295_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g92294_)
                           (##values-length _g92294_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g92295_ 2)))
                    (error "Context expects 2 values" _g92295_)))
              (let ((_%target5322753318%_
                     (let () (declare (not safe)) (##values-ref _g92294_ 0)))
                    (_%tl5322953321%_
                     (let () (declare (not safe)) (##values-ref _g92294_ 1))))
                (if (gx#stx-null? _%tl5322953321%_)
                    (letrec ((_%loop5323053324%_
                              (lambda (_%hd5322853328%_ _%body5323453331%_)
                                (if (gx#stx-pair? _%hd5322853328%_)
                                    (let ((_%e5323153334%_
                                           (gx#syntax-e _%hd5322853328%_)))
                                      (let ((_%lp-hd5323253338%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5323153334%_)))
                                            (_%lp-tl5323353341%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5323153334%_))))
                                        (_%loop5323053324%_
                                         _%lp-tl5323353341%_
                                         (cons _%lp-hd5323253338%_
                                               _%body5323453331%_))))
                                    (let ((_%body5323553344%_
                                           (reverse _%body5323453331%_)))
                                      (if (gx#stx-null? _%tl5322653315%_)
                                          ((lambda (_%L53348%_
                                                    _%L53350%_
                                                    _%L53351%_
                                                    _%L53352%_
                                                    _%L53353%_
                                                    _%L53354%_
                                                    _%L53355%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L53353%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L53354%_ '()))
                                         (cons _%L53353%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L53355%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L53353%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L53352%_ '()))
                               (cons _%L53351%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L53350%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5338953392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5339053395%_)
                      (cons _%g5338953392%_ _%g5339053395%_))
                    '()
                    _%L53348%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5323553344%_
                                           _%hd5322253302%_
                                           _%hd5321953292%_
                                           _%hd5321653282%_
                                           _%hd5321353272%_
                                           _%hd5321053262%_
                                           _%hd5320753252%_)
                                          (_%g5319753241%_
                                           _%g5319853245%_)))))))
                      (_%loop5323053324%_ _%target5322753318%_ '()))
                    (_%g5319753241%_ _%g5319853245%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5319753241%_
                                                   _%g5319853245%_))))
                                          (_%g5319753241%_ _%g5319853245%_))))
                                  (_%g5319753241%_ _%g5319853245%_))))
                          (_%g5319753241%_ _%g5319853245%_))))
                  (_%g5319753241%_ _%g5319853245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5319753241%_
                                                   _%g5319853245%_))))
                                          (_%g5319753241%_ _%g5319853245%_))))
                                  (_%g5319753241%_ _%g5319853245%_)))))
                      (_%g5319653398%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj92108 _%klass53190%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj92108
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj92108
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj92108
                                    'type-descriptor)))
                             _%var53192%_
                             _%klass53190%_
                             _%checked?53195%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body53194%_)))))
                 (_%expand52284%_
                  (lambda (_%var53082%_
                           _%Type53084%_
                           _%body53085%_
                           _%checked?53086%_
                           _%checked-mutators?53087%_
                           _%maybe?53088%_)
                    (let* ((_%klass53090%_
                            (gx#syntax-local-value _%Type53084%_ false))
                           (_%expr-body53097%_
                            (_%expand-body52282%_
                             _%klass53090%_
                             _%var53082%_
                             _%Type53084%_
                             _%body53085%_
                             (let ((_%$e53093%_ _%checked?53086%_))
                               (if _%$e53093%_
                                   _%$e53093%_
                                   _%checked-mutators?53087%_)))))
                      (if _%checked?53086%_
                          (let* ((_%g5310253121%_
                                  (lambda (_%g5310353117%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5310353117%_)))
                                 (_%g5310153183%_
                                  (lambda (_%g5310353125%_)
                                    (if (gx#stx-pair? _%g5310353125%_)
                                        (let ((_%e5310753128%_
                                               (gx#syntax-e _%g5310353125%_)))
                                          (let ((_%hd5310853132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5310753128%_)))
                                                (_%tl5310953135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5310753128%_))))
                                            (if (gx#stx-pair? _%tl5310953135%_)
                                                (let ((_%e5311053138%_
                                                       (gx#syntax-e
                                                        _%tl5310953135%_)))
                                                  (let ((_%hd5311153142%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5311053138%_)))
                                                        (_%tl5311253145%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5311053138%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5311253145%_)
                                                        (let ((_%e5311353148%_
                                                               (gx#syntax-e
                                                                _%tl5311253145%_)))
                                                          (let ((_%hd5311453152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5311353148%_)))
                        (_%tl5311553155%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5311353148%_))))
                    (if (gx#stx-null? _%tl5311553155%_)
                        ((lambda (_%L53158%_ _%L53160%_ _%L53161%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L53160%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L53161%_ '())))
                                       (cons _%L53158%_ '()))))
                         _%hd5311453152%_
                         _%hd5311153142%_
                         _%hd5310853132%_)
                        (_%g5310253121%_ _%g5310353125%_))))
                (_%g5310253121%_ _%g5310353125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5310253121%_
                                                 _%g5310353125%_))))
                                        (_%g5310253121%_ _%g5310353125%_)))))
                            (_%g5310153183%_
                             (list (let ((_%instance?53187%_
                                          (let ((__obj92109 _%klass53090%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj92109
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj92109
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj92109
                                                 'predicate)))))
                                     (if _%maybe?53088%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?53187%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?53187%_))
                                   _%var53082%_
                                   _%expr-body53097%_)))
                          _%expr-body53097%_)))))
          (let* ((_%__stx8686786868%_ _%stx52279%_)
                 (_%g5229052433%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8686786868%_))))
            (let ((_%__kont8687086871%_
                   (lambda (_%L53010%_ _%L53012%_ _%L53013%_ _%L53014%_)
                     (let* ((_%g5303953047%_
                             (lambda (_%g5304053043%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5304053043%_)))
                            (_%g5303853074%_
                             (lambda (_%g5304053051%_)
                               ((lambda (_%L53054%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%L53014%_
                                                    (cons _%L53013%_
                                                          (cons _%L53054%_
                                                                '())))
                                              (foldr (lambda (_%g5306553068%_
                                                              _%g5306653071%_)
                                                       (cons _%g5306553068%_
                                                             _%g5306653071%_))
                                                     '()
                                                     _%L53010%_))))
                                _%g5304053051%_))))
                       (_%g5303853074%_
                        (let ((__obj92110 (gx#syntax-local-value _%L53012%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj92110
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj92110
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj92110
                               'identifier)))))))
                  (_%__kont8687486875%_
                   (lambda (_%L52888%_ _%L52890%_ _%L52891%_)
                     (_%expand52284%_
                      _%L52891%_
                      _%L52890%_
                      (foldr (lambda (_%g5291452917%_ _%g5291552920%_)
                               (cons _%g5291452917%_ _%g5291552920%_))
                             '()
                             _%L52888%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8687886879%_
                   (lambda (_%L52766%_ _%L52768%_ _%L52769%_)
                     (_%expand52284%_
                      _%L52769%_
                      _%L52768%_
                      (foldr (lambda (_%g5279252795%_ _%g5279352798%_)
                               (cons _%g5279252795%_ _%g5279352798%_))
                             '()
                             _%L52766%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8688286883%_
                   (lambda (_%L52644%_ _%L52646%_ _%L52647%_)
                     (_%expand52284%_
                      _%L52647%_
                      _%L52646%_
                      (foldr (lambda (_%g5267052673%_ _%g5267152676%_)
                               (cons _%g5267052673%_ _%g5267152676%_))
                             '()
                             _%L52644%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8688686887%_
                   (lambda (_%L52520%_ _%L52522%_ _%L52523%_)
                     (_%expand52284%_
                      _%L52523%_
                      _%L52522%_
                      (foldr (lambda (_%g5254852551%_ _%g5254952554%_)
                               (cons _%g5254852551%_ _%g5254952554%_))
                             '()
                             _%L52520%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8710687107%_
                      (lambda (_%e5240452440%_
                               _%hd5240552444%_
                               _%tl5240652447%_
                               _%e5240752450%_
                               _%hd5240852454%_
                               _%tl5240952457%_
                               _%e5241052460%_
                               _%hd5241152464%_
                               _%tl5241252467%_
                               _%e5241352470%_
                               _%hd5241452474%_
                               _%tl5241552477%_
                               _%e5241652480%_
                               _%hd5241752484%_
                               _%tl5241852487%_
                               _%__splice8688886889%_
                               _%target5241952490%_
                               _%tl5242152493%_)
                        (letrec ((_%loop5242252496%_
                                  (lambda (_%hd5242052500%_ _%body5242652503%_)
                                    (if (gx#stx-pair? _%hd5242052500%_)
                                        (let ((_%e5242352506%_
                                               (gx#syntax-e _%hd5242052500%_)))
                                          (let ((_%lp-tl5242552513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5242352506%_)))
                                                (_%lp-hd5242452510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5242352506%_))))
                                            (_%loop5242252496%_
                                             _%lp-tl5242552513%_
                                             (cons _%lp-hd5242452510%_
                                                   _%body5242652503%_))))
                                        (let ((_%body5242752516%_
                                               (reverse _%body5242652503%_)))
                                          (let ((_%L52520%_ _%body5242752516%_)
                                                (_%L52522%_ _%hd5241752484%_)
                                                (_%L52523%_ _%hd5241152464%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L52522%_))
                                                (_%__kont8688686887%_
                                                 _%L52520%_
                                                 _%L52522%_
                                                 _%L52523%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5229052433%_)))))))))
                          (_%loop5242252496%_ _%target5241952490%_ '()))))
                     (_%__match8706287063%_
                      (lambda (_%e5237752564%_
                               _%hd5237852568%_
                               _%tl5237952571%_
                               _%e5238052574%_
                               _%hd5238152578%_
                               _%tl5238252581%_
                               _%e5238352584%_
                               _%hd5238452588%_
                               _%tl5238552591%_
                               _%e5238652594%_
                               _%hd5238752598%_
                               _%tl5238852601%_
                               _%e5238952604%_
                               _%hd5239052608%_
                               _%tl5239152611%_
                               _%__splice8688486885%_
                               _%target5239252614%_
                               _%tl5239452617%_)
                        (letrec ((_%loop5239552620%_
                                  (lambda (_%hd5239352624%_ _%body5239952627%_)
                                    (if (gx#stx-pair? _%hd5239352624%_)
                                        (let ((_%e5239652630%_
                                               (gx#syntax-e _%hd5239352624%_)))
                                          (let ((_%lp-tl5239852637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5239652630%_)))
                                                (_%lp-hd5239752634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5239652630%_))))
                                            (_%loop5239552620%_
                                             _%lp-tl5239852637%_
                                             (cons _%lp-hd5239752634%_
                                                   _%body5239952627%_))))
                                        (let ((_%body5240052640%_
                                               (reverse _%body5239952627%_)))
                                          (let ((_%L52644%_ _%body5240052640%_)
                                                (_%L52646%_ _%hd5239052608%_)
                                                (_%L52647%_ _%hd5238452588%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L52646%_))
                                                (_%__kont8688286883%_
                                                 _%L52644%_
                                                 _%L52646%_
                                                 _%L52647%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5229052433%_)))))))))
                          (_%loop5239552620%_ _%target5239252614%_ '()))))
                     (_%__match8701887019%_
                      (lambda (_%e5235052686%_
                               _%hd5235152690%_
                               _%tl5235252693%_
                               _%e5235352696%_
                               _%hd5235452700%_
                               _%tl5235552703%_
                               _%e5235652706%_
                               _%hd5235752710%_
                               _%tl5235852713%_
                               _%e5235952716%_
                               _%hd5236052720%_
                               _%tl5236152723%_
                               _%e5236252726%_
                               _%hd5236352730%_
                               _%tl5236452733%_
                               _%__splice8688086881%_
                               _%target5236552736%_
                               _%tl5236752739%_)
                        (letrec ((_%loop5236852742%_
                                  (lambda (_%hd5236652746%_ _%body5237252749%_)
                                    (if (gx#stx-pair? _%hd5236652746%_)
                                        (let ((_%e5236952752%_
                                               (gx#syntax-e _%hd5236652746%_)))
                                          (let ((_%lp-tl5237152759%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5236952752%_)))
                                                (_%lp-hd5237052756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5236952752%_))))
                                            (_%loop5236852742%_
                                             _%lp-tl5237152759%_
                                             (cons _%lp-hd5237052756%_
                                                   _%body5237252749%_))))
                                        (let ((_%body5237352762%_
                                               (reverse _%body5237252749%_)))
                                          (let ((_%L52766%_ _%body5237352762%_)
                                                (_%L52768%_ _%hd5236352730%_)
                                                (_%L52769%_ _%hd5235752710%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L52768%_))
                                                (_%__kont8687886879%_
                                                 _%L52766%_
                                                 _%L52768%_
                                                 _%L52769%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5229052433%_)))))))))
                          (_%loop5236852742%_ _%target5236552736%_ '()))))
                     (_%__match8697486975%_
                      (lambda (_%e5232352808%_
                               _%hd5232452812%_
                               _%tl5232552815%_
                               _%e5232652818%_
                               _%hd5232752822%_
                               _%tl5232852825%_
                               _%e5232952828%_
                               _%hd5233052832%_
                               _%tl5233152835%_
                               _%e5233252838%_
                               _%hd5233352842%_
                               _%tl5233452845%_
                               _%e5233552848%_
                               _%hd5233652852%_
                               _%tl5233752855%_
                               _%__splice8687686877%_
                               _%target5233852858%_
                               _%tl5234052861%_)
                        (letrec ((_%loop5234152864%_
                                  (lambda (_%hd5233952868%_ _%body5234552871%_)
                                    (if (gx#stx-pair? _%hd5233952868%_)
                                        (let ((_%e5234252874%_
                                               (gx#syntax-e _%hd5233952868%_)))
                                          (let ((_%lp-tl5234452881%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5234252874%_)))
                                                (_%lp-hd5234352878%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5234252874%_))))
                                            (_%loop5234152864%_
                                             _%lp-tl5234452881%_
                                             (cons _%lp-hd5234352878%_
                                                   _%body5234552871%_))))
                                        (let ((_%body5234652884%_
                                               (reverse _%body5234552871%_)))
                                          (let ((_%L52888%_ _%body5234652884%_)
                                                (_%L52890%_ _%hd5233652852%_)
                                                (_%L52891%_ _%hd5233052832%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L52890%_))
                                                (_%__kont8687486875%_
                                                 _%L52888%_
                                                 _%L52890%_
                                                 _%L52891%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5229052433%_)))))))))
                          (_%loop5234152864%_ _%target5233852858%_ '()))))
                     (_%__match8695486955%_
                      (lambda (_%e5232352808%_
                               _%hd5232452812%_
                               _%tl5232552815%_
                               _%e5232652818%_
                               _%hd5232752822%_
                               _%tl5232852825%_
                               _%e5232952828%_
                               _%hd5233052832%_
                               _%tl5233152835%_
                               _%e5233252838%_
                               _%hd5233352842%_
                               _%tl5233452845%_)
                        (if (gx#identifier? _%hd5233352842%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g92296_|
                                 _%hd5233352842%_)
                                (if (gx#stx-pair? _%tl5233452845%_)
                                    (let ((_%e5233552848%_
                                           (gx#syntax-e _%tl5233452845%_)))
                                      (let ((_%tl5233752855%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5233552848%_)))
                                            (_%hd5233652852%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5233552848%_))))
                                        (if (gx#stx-null? _%tl5233752855%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5232852825%_)
                                                (let ((_%__splice8687686877%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5232852825%_
                                                        '0)))
                                                  (let ((_%tl5234052861%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8687686877%_
                                                            '1)))
                                                        (_%target5233852858%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8687686877%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5234052861%_)
                                                        (_%__match8697486975%_
                                                         _%e5232352808%_
                                                         _%hd5232452812%_
                                                         _%tl5232552815%_
                                                         _%e5232652818%_
                                                         _%hd5232752822%_
                                                         _%tl5232852825%_
                                                         _%e5232952828%_
                                                         _%hd5233052832%_
                                                         _%tl5233152835%_
                                                         _%e5233252838%_
                                                         _%hd5233352842%_
                                                         _%tl5233452845%_
                                                         _%e5233552848%_
                                                         _%hd5233652852%_
                                                         _%tl5233752855%_
                                                         _%__splice8687686877%_
                                                         _%target5233852858%_
                                                         _%tl5234052861%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5229052433%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5229052433%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5229052433%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5229052433%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g92297_|
                                     _%hd5233352842%_)
                                    (if (gx#stx-pair? _%tl5233452845%_)
                                        (let ((_%e5236252726%_
                                               (gx#syntax-e _%tl5233452845%_)))
                                          (let ((_%tl5236452733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5236252726%_)))
                                                (_%hd5236352730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5236252726%_))))
                                            (if (gx#stx-null? _%tl5236452733%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5232852825%_)
                                                    (let ((_%__splice8688086881%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5232852825%_
                                                            '0)))
                                                      (let ((_%tl5236752739%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8688086881%_ '1)))
                    (_%target5236552736%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8688086881%_ '0))))
                (if (gx#stx-null? _%tl5236752739%_)
                    (_%__match8701887019%_
                     _%e5232352808%_
                     _%hd5232452812%_
                     _%tl5232552815%_
                     _%e5232652818%_
                     _%hd5232752822%_
                     _%tl5232852825%_
                     _%e5232952828%_
                     _%hd5233052832%_
                     _%tl5233152835%_
                     _%e5233252838%_
                     _%hd5233352842%_
                     _%tl5233452845%_
                     _%e5236252726%_
                     _%hd5236352730%_
                     _%tl5236452733%_
                     _%__splice8688086881%_
                     _%target5236552736%_
                     _%tl5236752739%_)
                    (let () (declare (not safe)) (_%g5229052433%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5229052433%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5229052433%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5229052433%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g92298_|
                                         _%hd5233352842%_)
                                        (if (gx#stx-pair? _%tl5233452845%_)
                                            (let ((_%e5238952604%_
                                                   (gx#syntax-e
                                                    _%tl5233452845%_)))
                                              (let ((_%tl5239152611%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5238952604%_)))
                                                    (_%hd5239052608%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5238952604%_))))
                                                (if (gx#stx-null?
                                                     _%tl5239152611%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5232852825%_)
                                                        (let ((_%__splice8688486885%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5232852825%_
                                                                '0)))
                                                          (let ((_%tl5239452617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8688486885%_ '1)))
                        (_%target5239252614%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8688486885%_ '0))))
                    (if (gx#stx-null? _%tl5239452617%_)
                        (_%__match8706287063%_
                         _%e5232352808%_
                         _%hd5232452812%_
                         _%tl5232552815%_
                         _%e5232652818%_
                         _%hd5232752822%_
                         _%tl5232852825%_
                         _%e5232952828%_
                         _%hd5233052832%_
                         _%tl5233152835%_
                         _%e5233252838%_
                         _%hd5233352842%_
                         _%tl5233452845%_
                         _%e5238952604%_
                         _%hd5239052608%_
                         _%tl5239152611%_
                         _%__splice8688486885%_
                         _%target5239252614%_
                         _%tl5239452617%_)
                        (let () (declare (not safe)) (_%g5229052433%_)))))
                (let () (declare (not safe)) (_%g5229052433%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5229052433%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5229052433%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g92299_|
                                             _%hd5233352842%_)
                                            (if (gx#stx-pair? _%tl5233452845%_)
                                                (let ((_%e5241652480%_
                                                       (gx#syntax-e
                                                        _%tl5233452845%_)))
                                                  (let ((_%tl5241852487%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5241652480%_)))
                                                        (_%hd5241752484%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5241652480%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5241852487%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5232852825%_)
                                                            (let ((_%__splice8688886889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5232852825%_
                            '0)))
                      (let ((_%tl5242152493%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8688886889%_ '1)))
                            (_%target5241952490%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8688886889%_ '0))))
                        (if (gx#stx-null? _%tl5242152493%_)
                            (_%__match8710687107%_
                             _%e5232352808%_
                             _%hd5232452812%_
                             _%tl5232552815%_
                             _%e5232652818%_
                             _%hd5232752822%_
                             _%tl5232852825%_
                             _%e5232952828%_
                             _%hd5233052832%_
                             _%tl5233152835%_
                             _%e5233252838%_
                             _%hd5233352842%_
                             _%tl5233452845%_
                             _%e5241652480%_
                             _%hd5241752484%_
                             _%tl5241852487%_
                             _%__splice8688886889%_
                             _%target5241952490%_
                             _%tl5242152493%_)
                            (let () (declare (not safe)) (_%g5229052433%_)))))
                    (let () (declare (not safe)) (_%g5229052433%_)))
                (let () (declare (not safe)) (_%g5229052433%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5229052433%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5229052433%_))))))
                            (let () (declare (not safe)) (_%g5229052433%_)))))
                     (_%__match8693086931%_
                      (lambda (_%e5229652930%_
                               _%hd5229752934%_
                               _%tl5229852937%_
                               _%e5229952940%_
                               _%hd5230052944%_
                               _%tl5230152947%_
                               _%e5230252950%_
                               _%hd5230352954%_
                               _%tl5230452957%_
                               _%e5230552960%_
                               _%hd5230652964%_
                               _%tl5230752967%_
                               _%e5230852970%_
                               _%hd5230952974%_
                               _%tl5231052977%_
                               _%__splice8687286873%_
                               _%target5231152980%_
                               _%tl5231352983%_)
                        (letrec ((_%loop5231452986%_
                                  (lambda (_%hd5231252990%_ _%body5231852993%_)
                                    (if (gx#stx-pair? _%hd5231252990%_)
                                        (let ((_%e5231552996%_
                                               (gx#syntax-e _%hd5231252990%_)))
                                          (let ((_%lp-tl5231753003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5231552996%_)))
                                                (_%lp-hd5231653000%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5231552996%_))))
                                            (_%loop5231452986%_
                                             _%lp-tl5231753003%_
                                             (cons _%lp-hd5231653000%_
                                                   _%body5231852993%_))))
                                        (let ((_%body5231953006%_
                                               (reverse _%body5231852993%_)))
                                          (let ((_%L53010%_ _%body5231953006%_)
                                                (_%L53012%_ _%hd5230952974%_)
                                                (_%L53013%_ _%hd5230652964%_)
                                                (_%L53014%_ _%hd5230352954%_))
                                            (if (let ((__tmp92300
                                                       (gx#syntax-local-value
                                                        _%L53012%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp92300))
                                                (_%__kont8687086871%_
                                                 _%L53010%_
                                                 _%L53012%_
                                                 _%L53013%_
                                                 _%L53014%_)
                                                (_%__match8695486955%_
                                                 _%e5229652930%_
                                                 _%hd5229752934%_
                                                 _%tl5229852937%_
                                                 _%e5229952940%_
                                                 _%hd5230052944%_
                                                 _%tl5230152947%_
                                                 _%e5230252950%_
                                                 _%hd5230352954%_
                                                 _%tl5230452957%_
                                                 _%e5230552960%_
                                                 _%hd5230652964%_
                                                 _%tl5230752967%_))))))))
                          (_%loop5231452986%_ _%target5231152980%_ '())))))
                (if (gx#stx-pair? _%__stx8686786868%_)
                    (let ((_%e5229652930%_ (gx#syntax-e _%__stx8686786868%_)))
                      (let ((_%tl5229852937%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5229652930%_)))
                            (_%hd5229752934%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5229652930%_))))
                        (if (gx#stx-pair? _%tl5229852937%_)
                            (let ((_%e5229952940%_
                                   (gx#syntax-e _%tl5229852937%_)))
                              (let ((_%tl5230152947%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5229952940%_)))
                                    (_%hd5230052944%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5229952940%_))))
                                (if (gx#stx-pair? _%hd5230052944%_)
                                    (let ((_%e5230252950%_
                                           (gx#syntax-e _%hd5230052944%_)))
                                      (let ((_%tl5230452957%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5230252950%_)))
                                            (_%hd5230352954%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5230252950%_))))
                                        (if (gx#stx-pair? _%tl5230452957%_)
                                            (let ((_%e5230552960%_
                                                   (gx#syntax-e
                                                    _%tl5230452957%_)))
                                              (let ((_%tl5230752967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5230552960%_)))
                                                    (_%hd5230652964%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5230552960%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5230752967%_)
                                                    (let ((_%e5230852970%_
                                                           (gx#syntax-e
                                                            _%tl5230752967%_)))
                                                      (let ((_%tl5231052977%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5230852970%_)))
                    (_%hd5230952974%_
                     (let () (declare (not safe)) (##car _%e5230852970%_))))
                (if (gx#stx-null? _%tl5231052977%_)
                    (if (gx#stx-pair/null? _%tl5230152947%_)
                        (let ((_%__splice8687286873%_
                               (gx#syntax-split-splice->vector
                                _%tl5230152947%_
                                '0)))
                          (let ((_%tl5231352983%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8687286873%_ '1)))
                                (_%target5231152980%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8687286873%_ '0))))
                            (if (gx#stx-null? _%tl5231352983%_)
                                (_%__match8693086931%_
                                 _%e5229652930%_
                                 _%hd5229752934%_
                                 _%tl5229852937%_
                                 _%e5229952940%_
                                 _%hd5230052944%_
                                 _%tl5230152947%_
                                 _%e5230252950%_
                                 _%hd5230352954%_
                                 _%tl5230452957%_
                                 _%e5230552960%_
                                 _%hd5230652964%_
                                 _%tl5230752967%_
                                 _%e5230852970%_
                                 _%hd5230952974%_
                                 _%tl5231052977%_
                                 _%__splice8687286873%_
                                 _%target5231152980%_
                                 _%tl5231352983%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5229052433%_)))))
                        (let () (declare (not safe)) (_%g5229052433%_)))
                    (let () (declare (not safe)) (_%g5229052433%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5229052433%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5229052433%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5229052433%_)))))
                            (let () (declare (not safe)) (_%g5229052433%_)))))
                    (let () (declare (not safe)) (_%g5229052433%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx53408%_)
        (letrec ((_%expand-body53411%_
                  (lambda (_%var54412%_
                           _%Interface54414%_
                           _%body54415%_
                           _%checked?54416%_)
                    (let* ((_%type54418%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx53408%_
                               _%Interface54414%_)))
                           (_%g5442154465%_
                            (lambda (_%g5442254461%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5442254461%_)))
                           (_%g5442054623%_
                            (lambda (_%g5442254469%_)
                              (if (gx#stx-pair? _%g5442254469%_)
                                  (let ((_%e5443054472%_
                                         (gx#syntax-e _%g5442254469%_)))
                                    (let ((_%hd5443154476%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5443054472%_)))
                                          (_%tl5443254479%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5443054472%_))))
                                      (if (gx#stx-pair? _%tl5443254479%_)
                                          (let ((_%e5443354482%_
                                                 (gx#syntax-e
                                                  _%tl5443254479%_)))
                                            (let ((_%hd5443454486%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5443354482%_)))
                                                  (_%tl5443554489%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5443354482%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5443554489%_)
                                                  (let ((_%e5443654492%_
                                                         (gx#syntax-e
                                                          _%tl5443554489%_)))
                                                    (let ((_%hd5443754496%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5443654492%_)))
                                                          (_%tl5443854499%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5443654492%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5443854499%_)
                                                          (let ((_%e5443954502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5443854499%_)))
                    (let ((_%hd5444054506%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5443954502%_)))
                          (_%tl5444154509%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5443954502%_))))
                      (if (gx#stx-pair? _%tl5444154509%_)
                          (let ((_%e5444254512%_
                                 (gx#syntax-e _%tl5444154509%_)))
                            (let ((_%hd5444354516%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5444254512%_)))
                                  (_%tl5444454519%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5444254512%_))))
                              (if (gx#stx-pair? _%tl5444454519%_)
                                  (let ((_%e5444554522%_
                                         (gx#syntax-e _%tl5444454519%_)))
                                    (let ((_%hd5444654526%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5444554522%_)))
                                          (_%tl5444754529%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5444554522%_))))
                                      (if (gx#stx-pair? _%tl5444754529%_)
                                          (let ((_%e5444854532%_
                                                 (gx#syntax-e
                                                  _%tl5444754529%_)))
                                            (let ((_%hd5444954536%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5444854532%_)))
                                                  (_%tl5445054539%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5444854532%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5444954536%_)
                                                  (let ((_g92301_
                                                         (gx#syntax-split-splice
                                                          _%hd5444954536%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g92302_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g92301_)
                           (##values-length _g92301_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g92302_ 2)))
                    (error "Context expects 2 values" _g92302_)))
              (let ((_%target5445154542%_
                     (let () (declare (not safe)) (##values-ref _g92301_ 0)))
                    (_%tl5445354545%_
                     (let () (declare (not safe)) (##values-ref _g92301_ 1))))
                (if (gx#stx-null? _%tl5445354545%_)
                    (letrec ((_%loop5445454548%_
                              (lambda (_%hd5445254552%_ _%body5445854555%_)
                                (if (gx#stx-pair? _%hd5445254552%_)
                                    (let ((_%e5445554558%_
                                           (gx#syntax-e _%hd5445254552%_)))
                                      (let ((_%lp-hd5445654562%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5445554558%_)))
                                            (_%lp-tl5445754565%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5445554558%_))))
                                        (_%loop5445454548%_
                                         _%lp-tl5445754565%_
                                         (cons _%lp-hd5445654562%_
                                               _%body5445854555%_))))
                                    (let ((_%body5445954568%_
                                           (reverse _%body5445854555%_)))
                                      (if (gx#stx-null? _%tl5445054539%_)
                                          ((lambda (_%L54572%_
                                                    _%L54574%_
                                                    _%L54575%_
                                                    _%L54576%_
                                                    _%L54577%_
                                                    _%L54578%_
                                                    _%L54579%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L54576%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L54577%_ '()))
                                         (cons _%L54576%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L54579%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L54576%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L54578%_ '()))
                               (cons _%L54575%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L54574%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5461454617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5461554620%_)
                      (cons _%g5461454617%_ _%g5461554620%_))
                    '()
                    _%L54572%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5445954568%_
                                           _%hd5444654526%_
                                           _%hd5444354516%_
                                           _%hd5444054506%_
                                           _%hd5443754496%_
                                           _%hd5443454486%_
                                           _%hd5443154476%_)
                                          (_%g5442154465%_
                                           _%g5442254469%_)))))))
                      (_%loop5445454548%_ _%target5445154542%_ '()))
                    (_%g5442154465%_ _%g5442254469%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5442154465%_
                                                   _%g5442254469%_))))
                                          (_%g5442154465%_ _%g5442254469%_))))
                                  (_%g5442154465%_ _%g5442254469%_))))
                          (_%g5442154465%_ _%g5442254469%_))))
                  (_%g5442154465%_ _%g5442254469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5442154465%_
                                                   _%g5442254469%_))))
                                          (_%g5442154465%_ _%g5442254469%_))))
                                  (_%g5442154465%_ _%g5442254469%_)))))
                      (_%g5442054623%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type54418%_
                             (let ((__obj92111 _%type54418%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj92111
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj92111
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj92111
                                    'type-descriptor)))
                             _%var54412%_
                             _%checked?54416%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body54415%_)))))
                 (_%expand53413%_
                  (lambda (_%var54211%_
                           _%Interface54213%_
                           _%body54214%_
                           _%checked?54215%_
                           _%checked-methods?54216%_
                           _%maybe?54217%_)
                    (let* ((_%g5421954227%_
                            (lambda (_%g5422054223%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5422054223%_)))
                           (_%g5421854404%_
                            (lambda (_%g5422054231%_)
                              ((lambda (_%L54234%_)
                                 (if _%checked?54215%_
                                     (if _%maybe?54217%_
                                         (let* ((_%g5424654261%_
                                                 (lambda (_%g5424754257%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5424754257%_)))
                                                (_%g5424554307%_
                                                 (lambda (_%g5424754265%_)
                                                   (if (gx#stx-pair?
                                                        _%g5424754265%_)
                                                       (let ((_%e5425054268%_
                                                              (gx#syntax-e
                                                               _%g5424754265%_)))
                                                         (let ((_%hd5425154272%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5425054268%_)))
                       (_%tl5425254275%_
                        (let () (declare (not safe)) (##cdr _%e5425054268%_))))
                   (if (gx#stx-pair? _%tl5425254275%_)
                       (let ((_%e5425354278%_ (gx#syntax-e _%tl5425254275%_)))
                         (let ((_%hd5425454282%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5425354278%_)))
                               (_%tl5425554285%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5425354278%_))))
                           (if (gx#stx-null? _%tl5425554285%_)
                               ((lambda (_%L54288%_ _%L54290%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L54290%_
                                                    (cons (cons _%L54288%_
                                                                (cons _%L54290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L54290%_
                                                                (cons _%L54234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L54290%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5425454282%_
                                _%hd5425154272%_)
                               (_%g5424654261%_ _%g5424754265%_))))
                       (_%g5424654261%_ _%g5424754265%_))))
               (_%g5424654261%_ _%g5424754265%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5424554307%_
                                            (list _%var54211%_
                                                  _%Interface54213%_)))
                                         (let* ((_%g5431154326%_
                                                 (lambda (_%g5431254322%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5431254322%_)))
                                                (_%g5431054370%_
                                                 (lambda (_%g5431254330%_)
                                                   (if (gx#stx-pair?
                                                        _%g5431254330%_)
                                                       (let ((_%e5431554333%_
                                                              (gx#syntax-e
                                                               _%g5431254330%_)))
                                                         (let ((_%hd5431654337%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5431554333%_)))
                       (_%tl5431754340%_
                        (let () (declare (not safe)) (##cdr _%e5431554333%_))))
                   (if (gx#stx-pair? _%tl5431754340%_)
                       (let ((_%e5431854343%_ (gx#syntax-e _%tl5431754340%_)))
                         (let ((_%hd5431954347%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5431854343%_)))
                               (_%tl5432054350%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5431854343%_))))
                           (if (gx#stx-null? _%tl5432054350%_)
                               ((lambda (_%L54353%_ _%L54355%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L54355%_
                                                    (cons (cons _%L54353%_
                                                                (cons _%L54355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L54234%_ '()))))
                                _%hd5431954347%_
                                _%hd5431654337%_)
                               (_%g5431154326%_ _%g5431254330%_))))
                       (_%g5431154326%_ _%g5431254330%_))))
               (_%g5431154326%_ _%g5431254330%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5431054370%_
                                            (list _%var54211%_
                                                  _%Interface54213%_))))
                                     (if _%maybe?54217%_
                                         (let* ((_%g5437454382%_
                                                 (lambda (_%g5437554378%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5437554378%_)))
                                                (_%g5437354400%_
                                                 (lambda (_%g5437554386%_)
                                                   ((lambda (_%L54389%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L54389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L54234%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L54389%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5437554386%_))))
                                           (_%g5437354400%_ _%var54211%_))
                                         _%L54234%_)))
                               _%g5422054231%_))))
                      (_%g5421854404%_
                       (_%expand-body53411%_
                        _%var54211%_
                        _%Interface54213%_
                        _%body54214%_
                        (let ((_%$e54408%_ _%checked?54215%_))
                          (if _%$e54408%_
                              _%$e54408%_
                              _%checked-methods?54216%_))))))))
          (let* ((_%__stx8710987110%_ _%stx53408%_)
                 (_%g5341953562%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8710987110%_))))
            (let ((_%__kont8711287113%_
                   (lambda (_%L54139%_ _%L54141%_ _%L54142%_ _%L54143%_)
                     (let* ((_%g5416854176%_
                             (lambda (_%g5416954172%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5416954172%_)))
                            (_%g5416754203%_
                             (lambda (_%g5416954180%_)
                               ((lambda (_%L54183%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%L54143%_
                                                    (cons _%L54142%_
                                                          (cons _%L54183%_
                                                                '())))
                                              (foldr (lambda (_%g5419454197%_
                                                              _%g5419554200%_)
                                                       (cons _%g5419454197%_
                                                             _%g5419554200%_))
                                                     '()
                                                     _%L54139%_))))
                                _%g5416954180%_))))
                       (_%g5416754203%_
                        (let ((__obj92112 (gx#syntax-local-value _%L54141%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj92112
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj92112
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj92112
                               'identifier)))))))
                  (_%__kont8711687117%_
                   (lambda (_%L54017%_ _%L54019%_ _%L54020%_)
                     (_%expand53413%_
                      _%L54020%_
                      _%L54019%_
                      (foldr (lambda (_%g5404354046%_ _%g5404454049%_)
                               (cons _%g5404354046%_ _%g5404454049%_))
                             '()
                             _%L54017%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8712087121%_
                   (lambda (_%L53895%_ _%L53897%_ _%L53898%_)
                     (_%expand53413%_
                      _%L53898%_
                      _%L53897%_
                      (foldr (lambda (_%g5392153924%_ _%g5392253927%_)
                               (cons _%g5392153924%_ _%g5392253927%_))
                             '()
                             _%L53895%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8712487125%_
                   (lambda (_%L53773%_ _%L53775%_ _%L53776%_)
                     (_%expand53413%_
                      _%L53776%_
                      _%L53775%_
                      (foldr (lambda (_%g5379953802%_ _%g5380053805%_)
                               (cons _%g5379953802%_ _%g5380053805%_))
                             '()
                             _%L53773%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8712887129%_
                   (lambda (_%L53649%_ _%L53651%_ _%L53652%_)
                     (_%expand53413%_
                      _%L53652%_
                      _%L53651%_
                      (foldr (lambda (_%g5367753680%_ _%g5367853683%_)
                               (cons _%g5367753680%_ _%g5367853683%_))
                             '()
                             _%L53649%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8734887349%_
                      (lambda (_%e5353353569%_
                               _%hd5353453573%_
                               _%tl5353553576%_
                               _%e5353653579%_
                               _%hd5353753583%_
                               _%tl5353853586%_
                               _%e5353953589%_
                               _%hd5354053593%_
                               _%tl5354153596%_
                               _%e5354253599%_
                               _%hd5354353603%_
                               _%tl5354453606%_
                               _%e5354553609%_
                               _%hd5354653613%_
                               _%tl5354753616%_
                               _%__splice8713087131%_
                               _%target5354853619%_
                               _%tl5355053622%_)
                        (letrec ((_%loop5355153625%_
                                  (lambda (_%hd5354953629%_ _%body5355553632%_)
                                    (if (gx#stx-pair? _%hd5354953629%_)
                                        (let ((_%e5355253635%_
                                               (gx#syntax-e _%hd5354953629%_)))
                                          (let ((_%lp-tl5355453642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5355253635%_)))
                                                (_%lp-hd5355353639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5355253635%_))))
                                            (_%loop5355153625%_
                                             _%lp-tl5355453642%_
                                             (cons _%lp-hd5355353639%_
                                                   _%body5355553632%_))))
                                        (let ((_%body5355653645%_
                                               (reverse _%body5355553632%_)))
                                          (let ((_%L53649%_ _%body5355653645%_)
                                                (_%L53651%_ _%hd5354653613%_)
                                                (_%L53652%_ _%hd5354053593%_))
                                            (if (and (gx#identifier?
                                                      _%L53652%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L53651%_)))
                                                (_%__kont8712887129%_
                                                 _%L53649%_
                                                 _%L53651%_
                                                 _%L53652%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5341953562%_)))))))))
                          (_%loop5355153625%_ _%target5354853619%_ '()))))
                     (_%__match8730487305%_
                      (lambda (_%e5350653693%_
                               _%hd5350753697%_
                               _%tl5350853700%_
                               _%e5350953703%_
                               _%hd5351053707%_
                               _%tl5351153710%_
                               _%e5351253713%_
                               _%hd5351353717%_
                               _%tl5351453720%_
                               _%e5351553723%_
                               _%hd5351653727%_
                               _%tl5351753730%_
                               _%e5351853733%_
                               _%hd5351953737%_
                               _%tl5352053740%_
                               _%__splice8712687127%_
                               _%target5352153743%_
                               _%tl5352353746%_)
                        (letrec ((_%loop5352453749%_
                                  (lambda (_%hd5352253753%_ _%body5352853756%_)
                                    (if (gx#stx-pair? _%hd5352253753%_)
                                        (let ((_%e5352553759%_
                                               (gx#syntax-e _%hd5352253753%_)))
                                          (let ((_%lp-tl5352753766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5352553759%_)))
                                                (_%lp-hd5352653763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5352553759%_))))
                                            (_%loop5352453749%_
                                             _%lp-tl5352753766%_
                                             (cons _%lp-hd5352653763%_
                                                   _%body5352853756%_))))
                                        (let ((_%body5352953769%_
                                               (reverse _%body5352853756%_)))
                                          (let ((_%L53773%_ _%body5352953769%_)
                                                (_%L53775%_ _%hd5351953737%_)
                                                (_%L53776%_ _%hd5351353717%_))
                                            (if (and (gx#identifier?
                                                      _%L53776%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L53775%_)))
                                                (_%__kont8712487125%_
                                                 _%L53773%_
                                                 _%L53775%_
                                                 _%L53776%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5341953562%_)))))))))
                          (_%loop5352453749%_ _%target5352153743%_ '()))))
                     (_%__match8726087261%_
                      (lambda (_%e5347953815%_
                               _%hd5348053819%_
                               _%tl5348153822%_
                               _%e5348253825%_
                               _%hd5348353829%_
                               _%tl5348453832%_
                               _%e5348553835%_
                               _%hd5348653839%_
                               _%tl5348753842%_
                               _%e5348853845%_
                               _%hd5348953849%_
                               _%tl5349053852%_
                               _%e5349153855%_
                               _%hd5349253859%_
                               _%tl5349353862%_
                               _%__splice8712287123%_
                               _%target5349453865%_
                               _%tl5349653868%_)
                        (letrec ((_%loop5349753871%_
                                  (lambda (_%hd5349553875%_ _%body5350153878%_)
                                    (if (gx#stx-pair? _%hd5349553875%_)
                                        (let ((_%e5349853881%_
                                               (gx#syntax-e _%hd5349553875%_)))
                                          (let ((_%lp-tl5350053888%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5349853881%_)))
                                                (_%lp-hd5349953885%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5349853881%_))))
                                            (_%loop5349753871%_
                                             _%lp-tl5350053888%_
                                             (cons _%lp-hd5349953885%_
                                                   _%body5350153878%_))))
                                        (let ((_%body5350253891%_
                                               (reverse _%body5350153878%_)))
                                          (let ((_%L53895%_ _%body5350253891%_)
                                                (_%L53897%_ _%hd5349253859%_)
                                                (_%L53898%_ _%hd5348653839%_))
                                            (if (and (gx#identifier?
                                                      _%L53898%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L53897%_)))
                                                (_%__kont8712087121%_
                                                 _%L53895%_
                                                 _%L53897%_
                                                 _%L53898%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5341953562%_)))))))))
                          (_%loop5349753871%_ _%target5349453865%_ '()))))
                     (_%__match8721687217%_
                      (lambda (_%e5345253937%_
                               _%hd5345353941%_
                               _%tl5345453944%_
                               _%e5345553947%_
                               _%hd5345653951%_
                               _%tl5345753954%_
                               _%e5345853957%_
                               _%hd5345953961%_
                               _%tl5346053964%_
                               _%e5346153967%_
                               _%hd5346253971%_
                               _%tl5346353974%_
                               _%e5346453977%_
                               _%hd5346553981%_
                               _%tl5346653984%_
                               _%__splice8711887119%_
                               _%target5346753987%_
                               _%tl5346953990%_)
                        (letrec ((_%loop5347053993%_
                                  (lambda (_%hd5346853997%_ _%body5347454000%_)
                                    (if (gx#stx-pair? _%hd5346853997%_)
                                        (let ((_%e5347154003%_
                                               (gx#syntax-e _%hd5346853997%_)))
                                          (let ((_%lp-tl5347354010%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5347154003%_)))
                                                (_%lp-hd5347254007%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5347154003%_))))
                                            (_%loop5347053993%_
                                             _%lp-tl5347354010%_
                                             (cons _%lp-hd5347254007%_
                                                   _%body5347454000%_))))
                                        (let ((_%body5347554013%_
                                               (reverse _%body5347454000%_)))
                                          (let ((_%L54017%_ _%body5347554013%_)
                                                (_%L54019%_ _%hd5346553981%_)
                                                (_%L54020%_ _%hd5345953961%_))
                                            (if (and (gx#identifier?
                                                      _%L54020%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L54019%_)))
                                                (_%__kont8711687117%_
                                                 _%L54017%_
                                                 _%L54019%_
                                                 _%L54020%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5341953562%_)))))))))
                          (_%loop5347053993%_ _%target5346753987%_ '()))))
                     (_%__match8719687197%_
                      (lambda (_%e5345253937%_
                               _%hd5345353941%_
                               _%tl5345453944%_
                               _%e5345553947%_
                               _%hd5345653951%_
                               _%tl5345753954%_
                               _%e5345853957%_
                               _%hd5345953961%_
                               _%tl5346053964%_
                               _%e5346153967%_
                               _%hd5346253971%_
                               _%tl5346353974%_)
                        (if (gx#identifier? _%hd5346253971%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g92303_|
                                 _%hd5346253971%_)
                                (if (gx#stx-pair? _%tl5346353974%_)
                                    (let ((_%e5346453977%_
                                           (gx#syntax-e _%tl5346353974%_)))
                                      (let ((_%tl5346653984%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5346453977%_)))
                                            (_%hd5346553981%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5346453977%_))))
                                        (if (gx#stx-null? _%tl5346653984%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5345753954%_)
                                                (let ((_%__splice8711887119%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5345753954%_
                                                        '0)))
                                                  (let ((_%tl5346953990%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8711887119%_
                                                            '1)))
                                                        (_%target5346753987%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8711887119%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5346953990%_)
                                                        (_%__match8721687217%_
                                                         _%e5345253937%_
                                                         _%hd5345353941%_
                                                         _%tl5345453944%_
                                                         _%e5345553947%_
                                                         _%hd5345653951%_
                                                         _%tl5345753954%_
                                                         _%e5345853957%_
                                                         _%hd5345953961%_
                                                         _%tl5346053964%_
                                                         _%e5346153967%_
                                                         _%hd5346253971%_
                                                         _%tl5346353974%_
                                                         _%e5346453977%_
                                                         _%hd5346553981%_
                                                         _%tl5346653984%_
                                                         _%__splice8711887119%_
                                                         _%target5346753987%_
                                                         _%tl5346953990%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5341953562%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5341953562%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5341953562%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5341953562%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g92304_|
                                     _%hd5346253971%_)
                                    (if (gx#stx-pair? _%tl5346353974%_)
                                        (let ((_%e5349153855%_
                                               (gx#syntax-e _%tl5346353974%_)))
                                          (let ((_%tl5349353862%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5349153855%_)))
                                                (_%hd5349253859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5349153855%_))))
                                            (if (gx#stx-null? _%tl5349353862%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5345753954%_)
                                                    (let ((_%__splice8712287123%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5345753954%_
                                                            '0)))
                                                      (let ((_%tl5349653868%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8712287123%_ '1)))
                    (_%target5349453865%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8712287123%_ '0))))
                (if (gx#stx-null? _%tl5349653868%_)
                    (_%__match8726087261%_
                     _%e5345253937%_
                     _%hd5345353941%_
                     _%tl5345453944%_
                     _%e5345553947%_
                     _%hd5345653951%_
                     _%tl5345753954%_
                     _%e5345853957%_
                     _%hd5345953961%_
                     _%tl5346053964%_
                     _%e5346153967%_
                     _%hd5346253971%_
                     _%tl5346353974%_
                     _%e5349153855%_
                     _%hd5349253859%_
                     _%tl5349353862%_
                     _%__splice8712287123%_
                     _%target5349453865%_
                     _%tl5349653868%_)
                    (let () (declare (not safe)) (_%g5341953562%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5341953562%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5341953562%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5341953562%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g92305_|
                                         _%hd5346253971%_)
                                        (if (gx#stx-pair? _%tl5346353974%_)
                                            (let ((_%e5351853733%_
                                                   (gx#syntax-e
                                                    _%tl5346353974%_)))
                                              (let ((_%tl5352053740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5351853733%_)))
                                                    (_%hd5351953737%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5351853733%_))))
                                                (if (gx#stx-null?
                                                     _%tl5352053740%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5345753954%_)
                                                        (let ((_%__splice8712687127%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5345753954%_
                                                                '0)))
                                                          (let ((_%tl5352353746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8712687127%_ '1)))
                        (_%target5352153743%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8712687127%_ '0))))
                    (if (gx#stx-null? _%tl5352353746%_)
                        (_%__match8730487305%_
                         _%e5345253937%_
                         _%hd5345353941%_
                         _%tl5345453944%_
                         _%e5345553947%_
                         _%hd5345653951%_
                         _%tl5345753954%_
                         _%e5345853957%_
                         _%hd5345953961%_
                         _%tl5346053964%_
                         _%e5346153967%_
                         _%hd5346253971%_
                         _%tl5346353974%_
                         _%e5351853733%_
                         _%hd5351953737%_
                         _%tl5352053740%_
                         _%__splice8712687127%_
                         _%target5352153743%_
                         _%tl5352353746%_)
                        (let () (declare (not safe)) (_%g5341953562%_)))))
                (let () (declare (not safe)) (_%g5341953562%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5341953562%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5341953562%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g92306_|
                                             _%hd5346253971%_)
                                            (if (gx#stx-pair? _%tl5346353974%_)
                                                (let ((_%e5354553609%_
                                                       (gx#syntax-e
                                                        _%tl5346353974%_)))
                                                  (let ((_%tl5354753616%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5354553609%_)))
                                                        (_%hd5354653613%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5354553609%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5354753616%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5345753954%_)
                                                            (let ((_%__splice8713087131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5345753954%_
                            '0)))
                      (let ((_%tl5355053622%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8713087131%_ '1)))
                            (_%target5354853619%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8713087131%_ '0))))
                        (if (gx#stx-null? _%tl5355053622%_)
                            (_%__match8734887349%_
                             _%e5345253937%_
                             _%hd5345353941%_
                             _%tl5345453944%_
                             _%e5345553947%_
                             _%hd5345653951%_
                             _%tl5345753954%_
                             _%e5345853957%_
                             _%hd5345953961%_
                             _%tl5346053964%_
                             _%e5346153967%_
                             _%hd5346253971%_
                             _%tl5346353974%_
                             _%e5354553609%_
                             _%hd5354653613%_
                             _%tl5354753616%_
                             _%__splice8713087131%_
                             _%target5354853619%_
                             _%tl5355053622%_)
                            (let () (declare (not safe)) (_%g5341953562%_)))))
                    (let () (declare (not safe)) (_%g5341953562%_)))
                (let () (declare (not safe)) (_%g5341953562%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5341953562%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5341953562%_))))))
                            (let () (declare (not safe)) (_%g5341953562%_)))))
                     (_%__match8717287173%_
                      (lambda (_%e5342554059%_
                               _%hd5342654063%_
                               _%tl5342754066%_
                               _%e5342854069%_
                               _%hd5342954073%_
                               _%tl5343054076%_
                               _%e5343154079%_
                               _%hd5343254083%_
                               _%tl5343354086%_
                               _%e5343454089%_
                               _%hd5343554093%_
                               _%tl5343654096%_
                               _%e5343754099%_
                               _%hd5343854103%_
                               _%tl5343954106%_
                               _%__splice8711487115%_
                               _%target5344054109%_
                               _%tl5344254112%_)
                        (letrec ((_%loop5344354115%_
                                  (lambda (_%hd5344154119%_ _%body5344754122%_)
                                    (if (gx#stx-pair? _%hd5344154119%_)
                                        (let ((_%e5344454125%_
                                               (gx#syntax-e _%hd5344154119%_)))
                                          (let ((_%lp-tl5344654132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5344454125%_)))
                                                (_%lp-hd5344554129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5344454125%_))))
                                            (_%loop5344354115%_
                                             _%lp-tl5344654132%_
                                             (cons _%lp-hd5344554129%_
                                                   _%body5344754122%_))))
                                        (let ((_%body5344854135%_
                                               (reverse _%body5344754122%_)))
                                          (let ((_%L54139%_ _%body5344854135%_)
                                                (_%L54141%_ _%hd5343854103%_)
                                                (_%L54142%_ _%hd5343554093%_)
                                                (_%L54143%_ _%hd5343254083%_))
                                            (if (let ((__tmp92307
                                                       (gx#syntax-local-value
                                                        _%L54141%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp92307))
                                                (_%__kont8711287113%_
                                                 _%L54139%_
                                                 _%L54141%_
                                                 _%L54142%_
                                                 _%L54143%_)
                                                (_%__match8719687197%_
                                                 _%e5342554059%_
                                                 _%hd5342654063%_
                                                 _%tl5342754066%_
                                                 _%e5342854069%_
                                                 _%hd5342954073%_
                                                 _%tl5343054076%_
                                                 _%e5343154079%_
                                                 _%hd5343254083%_
                                                 _%tl5343354086%_
                                                 _%e5343454089%_
                                                 _%hd5343554093%_
                                                 _%tl5343654096%_))))))))
                          (_%loop5344354115%_ _%target5344054109%_ '())))))
                (if (gx#stx-pair? _%__stx8710987110%_)
                    (let ((_%e5342554059%_ (gx#syntax-e _%__stx8710987110%_)))
                      (let ((_%tl5342754066%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5342554059%_)))
                            (_%hd5342654063%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5342554059%_))))
                        (if (gx#stx-pair? _%tl5342754066%_)
                            (let ((_%e5342854069%_
                                   (gx#syntax-e _%tl5342754066%_)))
                              (let ((_%tl5343054076%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5342854069%_)))
                                    (_%hd5342954073%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5342854069%_))))
                                (if (gx#stx-pair? _%hd5342954073%_)
                                    (let ((_%e5343154079%_
                                           (gx#syntax-e _%hd5342954073%_)))
                                      (let ((_%tl5343354086%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5343154079%_)))
                                            (_%hd5343254083%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5343154079%_))))
                                        (if (gx#stx-pair? _%tl5343354086%_)
                                            (let ((_%e5343454089%_
                                                   (gx#syntax-e
                                                    _%tl5343354086%_)))
                                              (let ((_%tl5343654096%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5343454089%_)))
                                                    (_%hd5343554093%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5343454089%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5343654096%_)
                                                    (let ((_%e5343754099%_
                                                           (gx#syntax-e
                                                            _%tl5343654096%_)))
                                                      (let ((_%tl5343954106%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5343754099%_)))
                    (_%hd5343854103%_
                     (let () (declare (not safe)) (##car _%e5343754099%_))))
                (if (gx#stx-null? _%tl5343954106%_)
                    (if (gx#stx-pair/null? _%tl5343054076%_)
                        (let ((_%__splice8711487115%_
                               (gx#syntax-split-splice->vector
                                _%tl5343054076%_
                                '0)))
                          (let ((_%tl5344254112%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8711487115%_ '1)))
                                (_%target5344054109%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8711487115%_ '0))))
                            (if (gx#stx-null? _%tl5344254112%_)
                                (_%__match8717287173%_
                                 _%e5342554059%_
                                 _%hd5342654063%_
                                 _%tl5342754066%_
                                 _%e5342854069%_
                                 _%hd5342954073%_
                                 _%tl5343054076%_
                                 _%e5343154079%_
                                 _%hd5343254083%_
                                 _%tl5343354086%_
                                 _%e5343454089%_
                                 _%hd5343554093%_
                                 _%tl5343654096%_
                                 _%e5343754099%_
                                 _%hd5343854103%_
                                 _%tl5343954106%_
                                 _%__splice8711487115%_
                                 _%target5344054109%_
                                 _%tl5344254112%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5341953562%_)))))
                        (let () (declare (not safe)) (_%g5341953562%_)))
                    (let () (declare (not safe)) (_%g5341953562%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5341953562%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5341953562%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5341953562%_)))))
                            (let () (declare (not safe)) (_%g5341953562%_)))))
                    (let () (declare (not safe)) (_%g5341953562%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx54633%_)
        (let* ((_%__stx8735187352%_ _%stx54633%_)
               (_%g5463854698%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8735187352%_))))
          (let ((_%__kont8735487355%_
                 (lambda (_%L55260%_ _%L55262%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L55262%_ '()))
                               (foldr (lambda (_%g5527855281%_ _%g5527955284%_)
                                        (cons _%g5527855281%_ _%g5527955284%_))
                                      '()
                                      _%L55260%_)))))
                (_%__kont8735887359%_
                 (lambda (_%L54846%_ _%L54848%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L54848%_)
                       (let* ((_%g5486854875%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx54633%_
                                _%L54848%_))
                              (_%E5487054881%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5486854875%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5487155179%_
                               (lambda (_%parts54885%_ _%var54887%_)
                                 (let ((_%$e54889%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var54887%_))))
                                   (if _%$e54889%_
                                       ((lambda (_%te54893%_)
                                          (let _%loop54896%_ ((_%parts54899%_
                                                               _%parts54885%_)
                                                              (_%type54901%_
                                                               (##direct-structure-ref
                                                                _%te54893%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object54902%_
                                                               _%var54887%_)
                                                              (_%checked-method?54903%_
                                                               (##direct-structure-ref
                                                                _%te54893%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?54904%_
                                                               '#f))
                                            (let* ((_%parts5490554913%_
                                                    _%parts54899%_)
                                                   (_%else5490754974%_
                                                    (lambda ()
                                                      (let* ((_%g5492554933%_
                                                              (lambda (_%g5492654929%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5492654929%_)))
                     (_%g5492454970%_
                      (lambda (_%g5492654937%_)
                        ((lambda (_%L54940%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L54940%_
                                       (foldr (lambda (_%g5496154964%_
                                                       _%g5496254967%_)
                                                (cons _%g5496154964%_
                                                      _%g5496254967%_))
                                              '()
                                              _%L54846%_))))
                         _%g5492654937%_))))
                (_%g5492454970%_ _%object54902%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5490955153%_
                                                    (lambda (_%rest54978%_
                                                             _%part54980%_)
                                                      (if (and (not _%nil-check?54904%_)
                                                               (let ((__tmp92308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part54980%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp92308)))
                  (let ((_%str54984%_ (symbol->string _%part54980%_)))
                    (_%loop54896%_
                     (cons (let ((__tmp92309
                                  (substring
                                   _%str54984%_
                                   '1
                                   (string-length _%str54984%_))))
                             (declare (not safe))
                             (##string->symbol __tmp92309))
                           _%rest54978%_)
                     _%type54901%_
                     _%object54902%_
                     _%checked-method?54903%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type54901%_))
                      (let* ((_%g5498955004%_
                              (lambda (_%g5499055000%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5499055000%_)))
                             (_%g5498855073%_
                              (lambda (_%g5499055008%_)
                                (if (gx#stx-pair? _%g5499055008%_)
                                    (let ((_%e5499355011%_
                                           (gx#syntax-e _%g5499055008%_)))
                                      (let ((_%hd5499455015%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5499355011%_)))
                                            (_%tl5499555018%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5499355011%_))))
                                        (if (gx#stx-pair? _%tl5499555018%_)
                                            (let ((_%e5499655021%_
                                                   (gx#syntax-e
                                                    _%tl5499555018%_)))
                                              (let ((_%hd5499755025%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5499655021%_)))
                                                    (_%tl5499855028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5499655021%_))))
                                                (if (gx#stx-null?
                                                     _%tl5499855028%_)
                                                    ((lambda (_%L55031%_
                                                              _%L55033%_)
                                                       (if (null? _%rest54978%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L55031%_ (cons _%L55033%_ '()))
                               (foldr (lambda (_%g5505255055%_ _%g5505355058%_)
                                        (cons _%g5505255055%_ _%g5505355058%_))
                                      '()
                                      _%L54846%_)))
                   (let ((_%$e55061%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type54901%_
                           _%part54980%_)))
                     (if _%$e55061%_
                         ((lambda (_%slot-type55065%_)
                            (let ((_%slot-type55068%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx54633%_
                                      _%slot-type55065%_))))
                              (_%loop54896%_
                               _%rest54978%_
                               _%slot-type55068%_
                               (cons _%L55031%_ (cons _%L55033%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type54901%_
                                _%part54980%_)
                               '#f)))
                          _%$e55061%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx54633%_
                          _%L54848%_
                          _%part54980%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5499755025%_
                                                     _%hd5499455015%_)
                                                    (_%g5498955004%_
                                                     _%g5499055008%_))))
                                            (_%g5498955004%_
                                             _%g5499055008%_))))
                                    (_%g5498955004%_ _%g5499055008%_)))))
                        (_%g5498855073%_
                         (list (if _%nil-check?54904%_
                                   (cons 'check-nil!
                                         (cons _%object54902%_ '()))
                                   _%object54902%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx54633%_
                                _%type54901%_
                                _%part54980%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type54901%_))
                          (if (null? _%rest54978%_)
                              (let* ((_%g5507955094%_
                                      (lambda (_%g5508055090%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5508055090%_)))
                                     (_%g5507855147%_
                                      (lambda (_%g5508055098%_)
                                        (if (gx#stx-pair? _%g5508055098%_)
                                            (let ((_%e5508355101%_
                                                   (gx#syntax-e
                                                    _%g5508055098%_)))
                                              (let ((_%hd5508455105%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5508355101%_)))
                                                    (_%tl5508555108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5508355101%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5508555108%_)
                                                    (let ((_%e5508655111%_
                                                           (gx#syntax-e
                                                            _%tl5508555108%_)))
                                                      (let ((_%hd5508755115%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5508655111%_)))
                    (_%tl5508855118%_
                     (let () (declare (not safe)) (##cdr _%e5508655111%_))))
                (if (gx#stx-null? _%tl5508855118%_)
                    ((lambda (_%L55121%_ _%L55123%_)
                       (cons _%L55121%_
                             (cons _%L55123%_
                                   (foldr (lambda (_%g5513855141%_
                                                   _%g5513955144%_)
                                            (cons _%g5513855141%_
                                                  _%g5513955144%_))
                                          '()
                                          _%L54846%_))))
                     _%hd5508755115%_
                     _%hd5508455105%_)
                    (_%g5507955094%_ _%g5508055098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5507955094%_
                                                     _%g5508055098%_))))
                                            (_%g5507955094%_
                                             _%g5508055098%_)))))
                                (_%g5507855147%_
                                 (list (if _%nil-check?54904%_
                                           (cons 'check-nil!
                                                 (cons _%object54902%_ '()))
                                           _%object54902%_)
                                       (gx#stx-identifier
                                        _%L54848%_
                                        (if _%checked-method?54903%_ '"" '"&")
                                        (let ((__obj92113 _%type54901%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj92113
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj92113
                                                 '2
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj92113
                                               'name)))
                                        '"-"
                                        _%part54980%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx54633%_
                               _%L54848%_
                               _%part54980%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx54633%_
                           _%type54901%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5490554913%_)
                                                  (let ((_%hd5491055157%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5490554913%_)))
                                                        (_%tl5491155160%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5490554913%_))))
                                                    (let* ((_%part55163%_
                                                            _%hd5491055157%_)
                                                           (_%rest55166%_
                                                            _%tl5491155160%_))
                                                      (_%K5490955153%_
                                                       _%rest55166%_
                                                       _%part55163%_)))
                                                  (_%else5490754974%_)))))
                                        _%$e54889%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L54848%_
                                                   (foldr (lambda (_%g5517055173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5517155176%_)
                    (cons _%g5517055173%_ _%g5517155176%_))
                  '()
                  _%L54846%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5486854875%_)
                             (let ((_%hd5487255183%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5486854875%_)))
                                   (_%tl5487355186%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5486854875%_))))
                               (let* ((_%var55189%_ _%hd5487255183%_)
                                      (_%parts55192%_ _%tl5487355186%_))
                                 (_%K5487155179%_
                                  _%parts55192%_
                                  _%var55189%_)))
                             (_%E5487054881%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L54848%_
                                   (foldr (lambda (_%g5519455197%_
                                                   _%g5519555200%_)
                                            (cons _%g5519455197%_
                                                  _%g5519555200%_))
                                          '()
                                          _%L54846%_))))))
                (_%__kont8736287363%_
                 (lambda (_%L54745%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5476054763%_ _%g5476154766%_)
                                  (cons _%g5476054763%_ _%g5476154766%_))
                                '()
                                _%L54745%_)))))
            (let* ((_%__match8743887439%_
                    (lambda (_%e5468154705%_
                             _%hd5468254709%_
                             _%tl5468354712%_
                             _%__splice8736487365%_
                             _%target5468454715%_
                             _%tl5468654718%_)
                      (letrec ((_%loop5468754721%_
                                (lambda (_%hd5468554725%_ _%arg5469154728%_)
                                  (if (gx#stx-pair? _%hd5468554725%_)
                                      (let ((_%e5468854731%_
                                             (gx#syntax-e _%hd5468554725%_)))
                                        (let ((_%lp-tl5469054738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5468854731%_)))
                                              (_%lp-hd5468954735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5468854731%_))))
                                          (_%loop5468754721%_
                                           _%lp-tl5469054738%_
                                           (cons _%lp-hd5468954735%_
                                                 _%arg5469154728%_))))
                                      (let ((_%arg5469254741%_
                                             (reverse _%arg5469154728%_)))
                                        (_%__kont8736287363%_
                                         _%arg5469254741%_))))))
                        (_%loop5468754721%_ _%target5468454715%_ '()))))
                   (_%__match8742487425%_
                    (lambda (_%e5465954776%_
                             _%hd5466054780%_
                             _%tl5466154783%_
                             _%e5466254786%_
                             _%hd5466354790%_
                             _%tl5466454793%_
                             _%e5466554796%_
                             _%hd5466654800%_
                             _%tl5466754803%_
                             _%e5466854806%_
                             _%hd5466954810%_
                             _%tl5467054813%_
                             _%__splice8736087361%_
                             _%target5467154816%_
                             _%tl5467354819%_)
                      (letrec ((_%loop5467454822%_
                                (lambda (_%hd5467254826%_ _%rand5467854829%_)
                                  (if (gx#stx-pair? _%hd5467254826%_)
                                      (let ((_%e5467554832%_
                                             (gx#syntax-e _%hd5467254826%_)))
                                        (let ((_%lp-tl5467754839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5467554832%_)))
                                              (_%lp-hd5467654836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5467554832%_))))
                                          (_%loop5467454822%_
                                           _%lp-tl5467754839%_
                                           (cons _%lp-hd5467654836%_
                                                 _%rand5467854829%_))))
                                      (let ((_%rand5467954842%_
                                             (reverse _%rand5467854829%_)))
                                        (_%__kont8735887359%_
                                         _%rand5467954842%_
                                         _%hd5466954810%_))))))
                        (_%loop5467454822%_ _%target5467154816%_ '()))))
                   (_%__match8739887399%_
                    (lambda (_%e5465954776%_
                             _%hd5466054780%_
                             _%tl5466154783%_
                             _%e5466254786%_
                             _%hd5466354790%_
                             _%tl5466454793%_)
                      (if (gx#stx-pair? _%hd5466354790%_)
                          (let ((_%e5466554796%_
                                 (gx#syntax-e _%hd5466354790%_)))
                            (let ((_%tl5466754803%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5466554796%_)))
                                  (_%hd5466654800%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5466554796%_))))
                              (if (gx#identifier? _%hd5466654800%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g92310_|
                                       _%hd5466654800%_)
                                      (if (gx#stx-pair? _%tl5466754803%_)
                                          (let ((_%e5466854806%_
                                                 (gx#syntax-e
                                                  _%tl5466754803%_)))
                                            (let ((_%tl5467054813%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5466854806%_)))
                                                  (_%hd5466954810%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5466854806%_))))
                                              (if (gx#stx-null?
                                                   _%tl5467054813%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5466454793%_)
                                                      (let ((_%__splice8736087361%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5466454793%_
                                                              '0)))
                                                        (let ((_%tl5467354819%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8736087361%_ '1)))
                      (_%target5467154816%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8736087361%_ '0))))
                  (if (gx#stx-null? _%tl5467354819%_)
                      (_%__match8742487425%_
                       _%e5465954776%_
                       _%hd5466054780%_
                       _%tl5466154783%_
                       _%e5466254786%_
                       _%hd5466354790%_
                       _%tl5466454793%_
                       _%e5466554796%_
                       _%hd5466654800%_
                       _%tl5466754803%_
                       _%e5466854806%_
                       _%hd5466954810%_
                       _%tl5467054813%_
                       _%__splice8736087361%_
                       _%target5467154816%_
                       _%tl5467354819%_)
                      (if (gx#stx-pair/null? _%tl5466154783%_)
                          (let ((_%__splice8736487365%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5466154783%_
                                  '0)))
                            (let ((_%tl5468654718%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8736487365%_ '1)))
                                  (_%target5468454715%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8736487365%_
                                      '0))))
                              (if (gx#stx-null? _%tl5468654718%_)
                                  (_%__match8743887439%_
                                   _%e5465954776%_
                                   _%hd5466054780%_
                                   _%tl5466154783%_
                                   _%__splice8736487365%_
                                   _%target5468454715%_
                                   _%tl5468654718%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5463854698%_)))))
                          (let () (declare (not safe)) (_%g5463854698%_))))))
              (if (gx#stx-pair/null? _%tl5466154783%_)
                  (let ((_%__splice8736487365%_
                         (gx#syntax-split-splice->vector _%tl5466154783%_ '0)))
                    (let ((_%tl5468654718%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8736487365%_ '1)))
                          (_%target5468454715%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8736487365%_ '0))))
                      (if (gx#stx-null? _%tl5468654718%_)
                          (_%__match8743887439%_
                           _%e5465954776%_
                           _%hd5466054780%_
                           _%tl5466154783%_
                           _%__splice8736487365%_
                           _%target5468454715%_
                           _%tl5468654718%_)
                          (let () (declare (not safe)) (_%g5463854698%_)))))
                  (let () (declare (not safe)) (_%g5463854698%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5466154783%_)
                                                      (let ((_%__splice8736487365%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5466154783%_
                                                              '0)))
                                                        (let ((_%tl5468654718%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8736487365%_ '1)))
                      (_%target5468454715%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8736487365%_ '0))))
                  (if (gx#stx-null? _%tl5468654718%_)
                      (_%__match8743887439%_
                       _%e5465954776%_
                       _%hd5466054780%_
                       _%tl5466154783%_
                       _%__splice8736487365%_
                       _%target5468454715%_
                       _%tl5468654718%_)
                      (let () (declare (not safe)) (_%g5463854698%_)))))
              (let () (declare (not safe)) (_%g5463854698%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5466154783%_)
                                              (let ((_%__splice8736487365%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5466154783%_
                                                      '0)))
                                                (let ((_%tl5468654718%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8736487365%_
                                                          '1)))
                                                      (_%target5468454715%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8736487365%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5468654718%_)
                                                      (_%__match8743887439%_
                                                       _%e5465954776%_
                                                       _%hd5466054780%_
                                                       _%tl5466154783%_
                                                       _%__splice8736487365%_
                                                       _%target5468454715%_
                                                       _%tl5468654718%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5463854698%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5463854698%_))))
                                      (if (gx#stx-pair/null? _%tl5466154783%_)
                                          (let ((_%__splice8736487365%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5466154783%_
                                                  '0)))
                                            (let ((_%tl5468654718%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8736487365%_
                                                      '1)))
                                                  (_%target5468454715%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8736487365%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5468654718%_)
                                                  (_%__match8743887439%_
                                                   _%e5465954776%_
                                                   _%hd5466054780%_
                                                   _%tl5466154783%_
                                                   _%__splice8736487365%_
                                                   _%target5468454715%_
                                                   _%tl5468654718%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5463854698%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5463854698%_))))
                                  (if (gx#stx-pair/null? _%tl5466154783%_)
                                      (let ((_%__splice8736487365%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5466154783%_
                                              '0)))
                                        (let ((_%tl5468654718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8736487365%_
                                                  '1)))
                                              (_%target5468454715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8736487365%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5468654718%_)
                                              (_%__match8743887439%_
                                               _%e5465954776%_
                                               _%hd5466054780%_
                                               _%tl5466154783%_
                                               _%__splice8736487365%_
                                               _%target5468454715%_
                                               _%tl5468654718%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5463854698%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5463854698%_))))))
                          (if (gx#stx-pair/null? _%tl5466154783%_)
                              (let ((_%__splice8736487365%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5466154783%_
                                      '0)))
                                (let ((_%tl5468654718%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8736487365%_
                                          '1)))
                                      (_%target5468454715%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8736487365%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5468654718%_)
                                      (_%__match8743887439%_
                                       _%e5465954776%_
                                       _%hd5466054780%_
                                       _%tl5466154783%_
                                       _%__splice8736487365%_
                                       _%target5468454715%_
                                       _%tl5468654718%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5463854698%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5463854698%_))))))
                   (_%__match8738687387%_
                    (lambda (_%e5464255210%_
                             _%hd5464355214%_
                             _%tl5464455217%_
                             _%e5464555220%_
                             _%hd5464655224%_
                             _%tl5464755227%_
                             _%__splice8735687357%_
                             _%target5464855230%_
                             _%tl5465055233%_)
                      (letrec ((_%loop5465155236%_
                                (lambda (_%hd5464955240%_ _%rand5465555243%_)
                                  (if (gx#stx-pair? _%hd5464955240%_)
                                      (let ((_%e5465255246%_
                                             (gx#syntax-e _%hd5464955240%_)))
                                        (let ((_%lp-tl5465455253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5465255246%_)))
                                              (_%lp-hd5465355250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5465255246%_))))
                                          (_%loop5465155236%_
                                           _%lp-tl5465455253%_
                                           (cons _%lp-hd5465355250%_
                                                 _%rand5465555243%_))))
                                      (let ((_%rand5465655256%_
                                             (reverse _%rand5465555243%_)))
                                        (let ((_%L55260%_ _%rand5465655256%_)
                                              (_%L55262%_ _%hd5464655224%_))
                                          (if (gx#identifier? _%L55262%_)
                                              (_%__kont8735487355%_
                                               _%L55260%_
                                               _%L55262%_)
                                              (_%__match8739887399%_
                                               _%e5464255210%_
                                               _%hd5464355214%_
                                               _%tl5464455217%_
                                               _%e5464555220%_
                                               _%hd5464655224%_
                                               _%tl5464755227%_))))))))
                        (_%loop5465155236%_ _%target5464855230%_ '())))))
              (if (gx#stx-pair? _%__stx8735187352%_)
                  (let ((_%e5464255210%_ (gx#syntax-e _%__stx8735187352%_)))
                    (let ((_%tl5464455217%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5464255210%_)))
                          (_%hd5464355214%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5464255210%_))))
                      (if (gx#stx-pair? _%tl5464455217%_)
                          (let ((_%e5464555220%_
                                 (gx#syntax-e _%tl5464455217%_)))
                            (let ((_%tl5464755227%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5464555220%_)))
                                  (_%hd5464655224%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5464555220%_))))
                              (if (gx#stx-pair/null? _%tl5464755227%_)
                                  (let ((_%__splice8735687357%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5464755227%_
                                          '0)))
                                    (let ((_%tl5465055233%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8735687357%_
                                              '1)))
                                          (_%target5464855230%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8735687357%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5465055233%_)
                                          (_%__match8738687387%_
                                           _%e5464255210%_
                                           _%hd5464355214%_
                                           _%tl5464455217%_
                                           _%e5464555220%_
                                           _%hd5464655224%_
                                           _%tl5464755227%_
                                           _%__splice8735687357%_
                                           _%target5464855230%_
                                           _%tl5465055233%_)
                                          (if (gx#stx-pair? _%hd5464655224%_)
                                              (let ((_%e5466554796%_
                                                     (gx#syntax-e
                                                      _%hd5464655224%_)))
                                                (let ((_%tl5466754803%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5466554796%_)))
                                                      (_%hd5466654800%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5466554796%_))))
                                                  (if (gx#identifier?
                                                       _%hd5466654800%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g92310_|
                                                           _%hd5466654800%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5466754803%_)
                                                              (let ((_%e5466854806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5466754803%_)))
                        (let ((_%tl5467054813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5466854806%_)))
                              (_%hd5466954810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5466854806%_))))
                          (if (gx#stx-pair/null? _%tl5464455217%_)
                              (let ((_%__splice8736487365%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5464455217%_
                                      '0)))
                                (let ((_%tl5468654718%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8736487365%_
                                          '1)))
                                      (_%target5468454715%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8736487365%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5468654718%_)
                                      (_%__match8743887439%_
                                       _%e5464255210%_
                                       _%hd5464355214%_
                                       _%tl5464455217%_
                                       _%__splice8736487365%_
                                       _%target5468454715%_
                                       _%tl5468654718%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5463854698%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5463854698%_)))))
                      (if (gx#stx-pair/null? _%tl5464455217%_)
                          (let ((_%__splice8736487365%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5464455217%_
                                  '0)))
                            (let ((_%tl5468654718%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8736487365%_ '1)))
                                  (_%target5468454715%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8736487365%_
                                      '0))))
                              (if (gx#stx-null? _%tl5468654718%_)
                                  (_%__match8743887439%_
                                   _%e5464255210%_
                                   _%hd5464355214%_
                                   _%tl5464455217%_
                                   _%__splice8736487365%_
                                   _%target5468454715%_
                                   _%tl5468654718%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5463854698%_)))))
                          (let () (declare (not safe)) (_%g5463854698%_))))
                  (if (gx#stx-pair/null? _%tl5464455217%_)
                      (let ((_%__splice8736487365%_
                             (gx#syntax-split-splice->vector
                              _%tl5464455217%_
                              '0)))
                        (let ((_%tl5468654718%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8736487365%_ '1)))
                              (_%target5468454715%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8736487365%_ '0))))
                          (if (gx#stx-null? _%tl5468654718%_)
                              (_%__match8743887439%_
                               _%e5464255210%_
                               _%hd5464355214%_
                               _%tl5464455217%_
                               _%__splice8736487365%_
                               _%target5468454715%_
                               _%tl5468654718%_)
                              (let ()
                                (declare (not safe))
                                (_%g5463854698%_)))))
                      (let () (declare (not safe)) (_%g5463854698%_))))
              (if (gx#stx-pair/null? _%tl5464455217%_)
                  (let ((_%__splice8736487365%_
                         (gx#syntax-split-splice->vector _%tl5464455217%_ '0)))
                    (let ((_%tl5468654718%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8736487365%_ '1)))
                          (_%target5468454715%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8736487365%_ '0))))
                      (if (gx#stx-null? _%tl5468654718%_)
                          (_%__match8743887439%_
                           _%e5464255210%_
                           _%hd5464355214%_
                           _%tl5464455217%_
                           _%__splice8736487365%_
                           _%target5468454715%_
                           _%tl5468654718%_)
                          (let () (declare (not safe)) (_%g5463854698%_)))))
                  (let () (declare (not safe)) (_%g5463854698%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5464455217%_)
                                                  (let ((_%__splice8736487365%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5464455217%_
                                                          '0)))
                                                    (let ((_%tl5468654718%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8736487365%_
                                                              '1)))
                                                          (_%target5468454715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8736487365%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5468654718%_)
                                                          (_%__match8743887439%_
                                                           _%e5464255210%_
                                                           _%hd5464355214%_
                                                           _%tl5464455217%_
                                                           _%__splice8736487365%_
                                                           _%target5468454715%_
                                                           _%tl5468654718%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5463854698%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5463854698%_)))))))
                                  (if (gx#stx-pair? _%hd5464655224%_)
                                      (let ((_%e5466554796%_
                                             (gx#syntax-e _%hd5464655224%_)))
                                        (let ((_%tl5466754803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5466554796%_)))
                                              (_%hd5466654800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5466554796%_))))
                                          (if (gx#identifier? _%hd5466654800%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g92310_|
                                                   _%hd5466654800%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5466754803%_)
                                                      (let ((_%e5466854806%_
                                                             (gx#syntax-e
                                                              _%tl5466754803%_)))
                                                        (let ((_%tl5467054813%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5466854806%_)))
                      (_%hd5466954810%_
                       (let () (declare (not safe)) (##car _%e5466854806%_))))
                  (if (gx#stx-pair/null? _%tl5464455217%_)
                      (let ((_%__splice8736487365%_
                             (gx#syntax-split-splice->vector
                              _%tl5464455217%_
                              '0)))
                        (let ((_%tl5468654718%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8736487365%_ '1)))
                              (_%target5468454715%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8736487365%_ '0))))
                          (if (gx#stx-null? _%tl5468654718%_)
                              (_%__match8743887439%_
                               _%e5464255210%_
                               _%hd5464355214%_
                               _%tl5464455217%_
                               _%__splice8736487365%_
                               _%target5468454715%_
                               _%tl5468654718%_)
                              (let ()
                                (declare (not safe))
                                (_%g5463854698%_)))))
                      (let () (declare (not safe)) (_%g5463854698%_)))))
              (if (gx#stx-pair/null? _%tl5464455217%_)
                  (let ((_%__splice8736487365%_
                         (gx#syntax-split-splice->vector _%tl5464455217%_ '0)))
                    (let ((_%tl5468654718%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8736487365%_ '1)))
                          (_%target5468454715%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8736487365%_ '0))))
                      (if (gx#stx-null? _%tl5468654718%_)
                          (_%__match8743887439%_
                           _%e5464255210%_
                           _%hd5464355214%_
                           _%tl5464455217%_
                           _%__splice8736487365%_
                           _%target5468454715%_
                           _%tl5468654718%_)
                          (let () (declare (not safe)) (_%g5463854698%_)))))
                  (let () (declare (not safe)) (_%g5463854698%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5464455217%_)
                                                      (let ((_%__splice8736487365%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5464455217%_
                                                              '0)))
                                                        (let ((_%tl5468654718%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8736487365%_ '1)))
                      (_%target5468454715%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8736487365%_ '0))))
                  (if (gx#stx-null? _%tl5468654718%_)
                      (_%__match8743887439%_
                       _%e5464255210%_
                       _%hd5464355214%_
                       _%tl5464455217%_
                       _%__splice8736487365%_
                       _%target5468454715%_
                       _%tl5468654718%_)
                      (let () (declare (not safe)) (_%g5463854698%_)))))
              (let () (declare (not safe)) (_%g5463854698%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5464455217%_)
                                                  (let ((_%__splice8736487365%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5464455217%_
                                                          '0)))
                                                    (let ((_%tl5468654718%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8736487365%_
                                                              '1)))
                                                          (_%target5468454715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8736487365%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5468654718%_)
                                                          (_%__match8743887439%_
                                                           _%e5464255210%_
                                                           _%hd5464355214%_
                                                           _%tl5464455217%_
                                                           _%__splice8736487365%_
                                                           _%target5468454715%_
                                                           _%tl5468654718%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5463854698%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5463854698%_))))))
                                      (if (gx#stx-pair/null? _%tl5464455217%_)
                                          (let ((_%__splice8736487365%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5464455217%_
                                                  '0)))
                                            (let ((_%tl5468654718%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8736487365%_
                                                      '1)))
                                                  (_%target5468454715%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8736487365%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5468654718%_)
                                                  (_%__match8743887439%_
                                                   _%e5464255210%_
                                                   _%hd5464355214%_
                                                   _%tl5464455217%_
                                                   _%__splice8736487365%_
                                                   _%target5468454715%_
                                                   _%tl5468654718%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5463854698%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5463854698%_)))))))
                          (if (gx#stx-pair/null? _%tl5464455217%_)
                              (let ((_%__splice8736487365%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5464455217%_
                                      '0)))
                                (let ((_%tl5468654718%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8736487365%_
                                          '1)))
                                      (_%target5468454715%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8736487365%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5468654718%_)
                                      (_%__match8743887439%_
                                       _%e5464255210%_
                                       _%hd5464355214%_
                                       _%tl5464455217%_
                                       _%__splice8736487365%_
                                       _%target5468454715%_
                                       _%tl5468654718%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5463854698%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5463854698%_))))))
                  (let () (declare (not safe)) (_%g5463854698%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx55294%_)
        (let* ((_%__stx8744187442%_ _%stx55294%_)
               (_%g5529855319%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8744187442%_))))
          (let ((_%__kont8744487445%_
                 (lambda (_%L55387%_)
                   (let* ((_%g5539955406%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx55294%_
                            _%L55387%_))
                          (_%E5540155412%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5539955406%_
                                    '([var . parts]))
                             (void)))
                          (_%K5540255628%_
                           (lambda (_%parts55416%_ _%var55418%_)
                             (let ((_%$e55420%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var55418%_))))
                               (if _%$e55420%_
                                   ((lambda (_%te55424%_)
                                      (let _%loop55427%_ ((_%parts55430%_
                                                           _%parts55416%_)
                                                          (_%type55432%_
                                                           (##direct-structure-ref
                                                            _%te55424%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object55433%_
                                                           _%var55418%_)
                                                          (_%nil-check?55434%_
                                                           '#f))
                                        (let* ((_%parts5543555443%_
                                                _%parts55430%_)
                                               (_%else5543755455%_
                                                (lambda () _%object55433%_))
                                               (_%K5543955610%_
                                                (lambda (_%rest55459%_
                                                         _%part55461%_)
                                                  (if (and (not _%nil-check?55434%_)
                                                           (let ((__tmp92311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part55461%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp92311)))
              (let ((_%str55465%_ (symbol->string _%part55461%_)))
                (_%loop55427%_
                 (cons (let ((__tmp92312
                              (substring
                               _%str55465%_
                               '1
                               (string-length _%str55465%_))))
                         (declare (not safe))
                         (##string->symbol __tmp92312))
                       _%rest55459%_)
                 _%type55432%_
                 _%object55433%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type55432%_))
                  (let* ((_%g5547055485%_
                          (lambda (_%g5547155481%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5547155481%_)))
                         (_%g5546955602%_
                          (lambda (_%g5547155489%_)
                            (if (gx#stx-pair? _%g5547155489%_)
                                (let ((_%e5547455492%_
                                       (gx#syntax-e _%g5547155489%_)))
                                  (let ((_%hd5547555496%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5547455492%_)))
                                        (_%tl5547655499%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5547455492%_))))
                                    (if (gx#stx-pair? _%tl5547655499%_)
                                        (let ((_%e5547755502%_
                                               (gx#syntax-e _%tl5547655499%_)))
                                          (let ((_%hd5547855506%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5547755502%_)))
                                                (_%tl5547955509%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5547755502%_))))
                                            (if (gx#stx-null? _%tl5547955509%_)
                                                ((lambda (_%L55512%_
                                                          _%L55514%_)
                                                   (if (null? _%rest55459%_)
                                                       (let ((_%$e55544%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type55432%_
                                                               _%part55461%_)))
                                                         (if _%$e55544%_
                                                             ((lambda (_%slot-type55548%_)
                                                                (let* ((_%g5555155559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5555255555%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5555255555%_)))
                               (_%g5555055582%_
                                (lambda (_%g5555255563%_)
                                  ((lambda (_%L55566%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L55566%_ '()))
                                                 (cons (cons _%L55512%_
                                                             (cons _%L55514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5555255563%_))))
                          (_%g5555055582%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx55294%_
                              _%slot-type55548%_)))))
                      _%$e55544%_)
                     (if _%nil-check?55434%_
                         (cons _%L55512%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L55514%_ '()))
                                     '()))
                         (cons _%L55512%_ (cons _%L55514%_ '())))))
               (let ((_%$e55590%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type55432%_
                       _%part55461%_)))
                 (if _%$e55590%_
                     ((lambda (_%type55594%_)
                        (let ((_%type55597%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx55294%_
                                  _%type55594%_))))
                          (if _%nil-check?55434%_
                              (_%loop55427%_
                               _%rest55459%_
                               _%type55597%_
                               (cons _%L55512%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L55514%_ '()))
                                           '()))
                               '#f)
                              (_%loop55427%_
                               _%rest55459%_
                               _%type55597%_
                               (cons _%L55512%_ (cons _%L55514%_ '()))
                               '#f))))
                      _%$e55590%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx55294%_
                      _%L55387%_
                      _%part55461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5547855506%_
                                                 _%hd5547555496%_)
                                                (_%g5547055485%_
                                                 _%g5547155489%_))))
                                        (_%g5547055485%_ _%g5547155489%_))))
                                (_%g5547055485%_ _%g5547155489%_)))))
                    (_%g5546955602%_
                     (list (if _%nil-check?55434%_
                               (cons 'check-nil! (cons _%object55433%_ '()))
                               _%object55433%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx55294%_
                            _%type55432%_
                            _%part55461%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type55432%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx55294%_
                       _%type55432%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5543555443%_)
                                              (let ((_%hd5544055614%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5543555443%_)))
                                                    (_%tl5544155617%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5543555443%_))))
                                                (let* ((_%part55620%_
                                                        _%hd5544055614%_)
                                                       (_%rest55623%_
                                                        _%tl5544155617%_))
                                                  (_%K5543955610%_
                                                   _%rest55623%_
                                                   _%part55620%_)))
                                              (_%else5543755455%_)))))
                                    _%$e55420%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L55387%_ '())))))))
                     (if (pair? _%g5539955406%_)
                         (let ((_%hd5540355632%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5539955406%_)))
                               (_%tl5540455635%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5539955406%_))))
                           (let* ((_%var55638%_ _%hd5540355632%_)
                                  (_%parts55641%_ _%tl5540455635%_))
                             (_%K5540255628%_ _%parts55641%_ _%var55638%_)))
                         (_%E5540155412%_)))))
                (_%__kont8744687447%_
                 (lambda (_%L55346%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L55346%_ '())))))
            (let ((_%__match8746287463%_
                   (lambda (_%e5530155367%_
                            _%hd5530255371%_
                            _%tl5530355374%_
                            _%e5530455377%_
                            _%hd5530555381%_
                            _%tl5530655384%_)
                     (let ((_%L55387%_ _%hd5530555381%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L55387%_)
                           (_%__kont8744487445%_ _%L55387%_)
                           (_%__kont8744687447%_ _%hd5530555381%_))))))
              (if (gx#stx-pair? _%__stx8744187442%_)
                  (let ((_%e5530155367%_ (gx#syntax-e _%__stx8744187442%_)))
                    (let ((_%tl5530355374%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5530155367%_)))
                          (_%hd5530255371%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5530155367%_))))
                      (if (gx#stx-pair? _%tl5530355374%_)
                          (let ((_%e5530455377%_
                                 (gx#syntax-e _%tl5530355374%_)))
                            (let ((_%tl5530655384%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5530455377%_)))
                                  (_%hd5530555381%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5530455377%_))))
                              (if (gx#stx-null? _%tl5530655384%_)
                                  (_%__match8746287463%_
                                   _%e5530155367%_
                                   _%hd5530255371%_
                                   _%tl5530355374%_
                                   _%e5530455377%_
                                   _%hd5530555381%_
                                   _%tl5530655384%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5529855319%_)))))
                          (let () (declare (not safe)) (_%g5529855319%_)))))
                  (let () (declare (not safe)) (_%g5529855319%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx55648%_)
        (let* ((_%__stx8747987480%_ _%stx55648%_)
               (_%g5565255681%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8747987480%_))))
          (let ((_%__kont8748287483%_
                 (lambda (_%L55773%_ _%L55775%_)
                   (let* ((_%g5578955796%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx55648%_
                            _%L55775%_))
                          (_%E5579155802%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5578955796%_
                                    '([var . parts]))
                             (void)))
                          (_%K5579256032%_
                           (lambda (_%parts55806%_ _%var55808%_)
                             (let ((_%$e55810%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var55808%_))))
                               (if _%$e55810%_
                                   ((lambda (_%te55814%_)
                                      (let _%loop55817%_ ((_%parts55820%_
                                                           _%parts55806%_)
                                                          (_%type55822%_
                                                           (##direct-structure-ref
                                                            _%te55814%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object55823%_
                                                           _%var55808%_)
                                                          (_%checked-mutator?55824%_
                                                           (##direct-structure-ref
                                                            _%te55814%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?55825%_
                                                           '#f))
                                        (let* ((_%parts5582655833%_
                                                _%parts55820%_)
                                               (_%E5582855839%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5582655833%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5582956014%_
                                                (lambda (_%rest55843%_
                                                         _%part55845%_)
                                                  (if (and (not _%nil-check?55825%_)
                                                           (let ((__tmp92313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part55845%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp92313)))
              (let ((_%str55849%_ (symbol->string _%part55845%_)))
                (_%loop55817%_
                 (cons (let ((__tmp92314
                              (substring
                               _%str55849%_
                               '1
                               (string-length _%str55849%_))))
                         (declare (not safe))
                         (##string->symbol __tmp92314))
                       _%rest55843%_)
                 _%type55822%_
                 _%object55823%_
                 _%checked-mutator?55824%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type55822%_))
                  (if (null? _%rest55843%_)
                      (let* ((_%g5585655871%_
                              (lambda (_%g5585755867%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5585755867%_)))
                             (_%g5585555928%_
                              (lambda (_%g5585755875%_)
                                (if (gx#stx-pair? _%g5585755875%_)
                                    (let ((_%e5586055878%_
                                           (gx#syntax-e _%g5585755875%_)))
                                      (let ((_%hd5586155882%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5586055878%_)))
                                            (_%tl5586255885%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5586055878%_))))
                                        (if (gx#stx-pair? _%tl5586255885%_)
                                            (let ((_%e5586355888%_
                                                   (gx#syntax-e
                                                    _%tl5586255885%_)))
                                              (let ((_%hd5586455892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5586355888%_)))
                                                    (_%tl5586555895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5586355888%_))))
                                                (if (gx#stx-null?
                                                     _%tl5586555895%_)
                                                    ((lambda (_%L55898%_
                                                              _%L55900%_)
                                                       (if _%nil-check?55825%_
                                                           (cons _%L55898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L55900%_ '()))
                               (cons _%L55773%_ '())))
                   (cons _%L55898%_ (cons _%L55900%_ (cons _%L55773%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5586455892%_
                                                     _%hd5586155882%_)
                                                    (_%g5585655871%_
                                                     _%g5585755875%_))))
                                            (_%g5585655871%_
                                             _%g5585755875%_))))
                                    (_%g5585655871%_ _%g5585755875%_)))))
                        (_%g5585555928%_
                         (list _%object55823%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx55648%_
                                _%type55822%_
                                _%part55845%_
                                (if _%checked-mutator?55824%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type55822%_
                                     _%part55845%_)
                                    '#f)))))
                      (let ((_%$e55932%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type55822%_
                              _%part55845%_)))
                        (if _%$e55932%_
                            ((lambda (_%type55936%_)
                               (let* ((_%type55939%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx55648%_
                                          _%type55936%_)))
                                      (_%g5594255957%_
                                       (lambda (_%g5594355953%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5594355953%_)))
                                      (_%g5594156004%_
                                       (lambda (_%g5594355961%_)
                                         (if (gx#stx-pair? _%g5594355961%_)
                                             (let ((_%e5594655964%_
                                                    (gx#syntax-e
                                                     _%g5594355961%_)))
                                               (let ((_%hd5594755968%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5594655964%_)))
                                                     (_%tl5594855971%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5594655964%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5594855971%_)
                                                     (let ((_%e5594955974%_
                                                            (gx#syntax-e
                                                             _%tl5594855971%_)))
                                                       (let ((_%hd5595055978%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5594955974%_)))
                     (_%tl5595155981%_
                      (let () (declare (not safe)) (##cdr _%e5594955974%_))))
                 (if (gx#stx-null? _%tl5595155981%_)
                     ((lambda (_%L55984%_ _%L55986%_)
                        (_%loop55817%_
                         _%rest55843%_
                         _%type55939%_
                         (cons _%L55984%_ (cons _%L55986%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type55939%_
                          _%part55845%_)
                         '#f))
                      _%hd5595055978%_
                      _%hd5594755968%_)
                     (_%g5594255957%_ _%g5594355961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5594255957%_
                                                      _%g5594355961%_))))
                                             (_%g5594255957%_
                                              _%g5594355961%_)))))
                                 (_%g5594156004%_
                                  (list (if _%nil-check?55825%_
                                            (cons 'check-nil!
                                                  (cons _%object55823%_ '()))
                                            _%object55823%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx55648%_
                                         _%type55939%_
                                         _%part55845%_)))))
                             _%$e55932%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx55648%_
                             _%L55775%_
                             _%part55845%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type55822%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx55648%_
                       _%type55822%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5582655833%_)
                                              (let ((_%hd5583056018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5582655833%_)))
                                                    (_%tl5583156021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5582655833%_))))
                                                (let* ((_%part56024%_
                                                        _%hd5583056018%_)
                                                       (_%rest56027%_
                                                        _%tl5583156021%_))
                                                  (_%K5582956014%_
                                                   _%rest56027%_
                                                   _%part56024%_)))
                                              (_%E5582855839%_)))))
                                    _%$e55810%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx55648%_)))))))
                     (if (pair? _%g5578955796%_)
                         (let ((_%hd5579356036%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5578955796%_)))
                               (_%tl5579456039%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5578955796%_))))
                           (let* ((_%var56042%_ _%hd5579356036%_)
                                  (_%parts56045%_ _%tl5579456039%_))
                             (_%K5579256032%_ _%parts56045%_ _%var56042%_)))
                         (_%E5579155802%_)))))
                (_%__kont8748487485%_
                 (lambda (_%L55718%_ _%L55720%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx55648%_)))))
            (let ((_%__match8750687507%_
                   (lambda (_%e5565655743%_
                            _%hd5565755747%_
                            _%tl5565855750%_
                            _%e5565955753%_
                            _%hd5566055757%_
                            _%tl5566155760%_
                            _%e5566255763%_
                            _%hd5566355767%_
                            _%tl5566455770%_)
                     (let ((_%L55773%_ _%hd5566355767%_)
                           (_%L55775%_ _%hd5566055757%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L55775%_)
                           (_%__kont8748287483%_ _%L55773%_ _%L55775%_)
                           (_%__kont8748487485%_
                            _%hd5566355767%_
                            _%hd5566055757%_))))))
              (if (gx#stx-pair? _%__stx8747987480%_)
                  (let ((_%e5565655743%_ (gx#syntax-e _%__stx8747987480%_)))
                    (let ((_%tl5565855750%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5565655743%_)))
                          (_%hd5565755747%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5565655743%_))))
                      (if (gx#stx-pair? _%tl5565855750%_)
                          (let ((_%e5565955753%_
                                 (gx#syntax-e _%tl5565855750%_)))
                            (let ((_%tl5566155760%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5565955753%_)))
                                  (_%hd5566055757%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5565955753%_))))
                              (if (gx#stx-pair? _%tl5566155760%_)
                                  (let ((_%e5566255763%_
                                         (gx#syntax-e _%tl5566155760%_)))
                                    (let ((_%tl5566455770%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5566255763%_)))
                                          (_%hd5566355767%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5566255763%_))))
                                      (if (gx#stx-null? _%tl5566455770%_)
                                          (_%__match8750687507%_
                                           _%e5565655743%_
                                           _%hd5565755747%_
                                           _%tl5565855750%_
                                           _%e5565955753%_
                                           _%hd5566055757%_
                                           _%tl5566155760%_
                                           _%e5566255763%_
                                           _%hd5566355767%_
                                           _%tl5566455770%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5565255681%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5565255681%_)))))
                          (let () (declare (not safe)) (_%g5565255681%_)))))
                  (let () (declare (not safe)) (_%g5565255681%_))))))))))
