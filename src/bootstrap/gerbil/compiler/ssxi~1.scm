(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g231360_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g231367_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g231369_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g231371_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g231373_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g231375_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g231387_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g231389_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g231391_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g231393_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g231395_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx224818%_)
        (let* ((_%g224822224840%_
                (lambda (_%g224823224836%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g224823224836%_))))
               (_%g224821224895%_
                (lambda (_%g224823224844%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g224823224844%_))
                      (let ((_%e224826224847%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g224823224844%_))))
                        (let ((_%hd224827224851%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e224826224847%_)))
                              (_%tl224828224854%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e224826224847%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl224828224854%_))
                              (let ((_%e224829224857%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl224828224854%_))))
                                (let ((_%hd224830224861%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e224829224857%_)))
                                      (_%tl224831224864%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e224829224857%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl224831224864%_))
                                      (let ((_%e224832224867%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl224831224864%_))))
                                        (let ((_%hd224833224871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e224832224867%_)))
                                              (_%tl224834224874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e224832224867%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl224834224874%_))
                                              ((lambda (_%g224824224877%_
                                                        _%g224825224879%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g224825224879%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g224825224879%_ '()))
                         (cons _%g224824224877%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g224822224840%_
                                                      _%g224823224844%_)))
                                               _%hd224833224871%_
                                               _%hd224830224861%_)
                                              (_%g224822224840%_
                                               _%g224823224844%_))))
                                      (_%g224822224840%_ _%g224823224844%_))))
                              (_%g224822224840%_ _%g224823224844%_))))
                      (_%g224822224840%_ _%g224823224844%_)))))
          (_%g224821224895%_ _%$stx224818%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx224899%_)
        (let* ((_%g224903224921%_
                (lambda (_%g224904224917%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g224904224917%_))))
               (_%g224902224976%_
                (lambda (_%g224904224925%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g224904224925%_))
                      (let ((_%e224907224928%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g224904224925%_))))
                        (let ((_%hd224908224932%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e224907224928%_)))
                              (_%tl224909224935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e224907224928%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl224909224935%_))
                              (let ((_%e224910224938%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl224909224935%_))))
                                (let ((_%hd224911224942%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e224910224938%_)))
                                      (_%tl224912224945%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e224910224938%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl224912224945%_))
                                      (let ((_%e224913224948%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl224912224945%_))))
                                        (let ((_%hd224914224952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e224913224948%_)))
                                              (_%tl224915224955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e224913224948%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl224915224955%_))
                                              ((lambda (_%g224905224958%_
                                                        _%g224906224960%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g224906224960%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g224906224960%_ '()))
                         (cons _%g224905224958%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g224903224921%_
                                                      _%g224904224925%_)))
                                               _%hd224914224952%_
                                               _%hd224911224942%_)
                                              (_%g224903224921%_
                                               _%g224904224925%_))))
                                      (_%g224903224921%_ _%g224904224925%_))))
                              (_%g224903224921%_ _%g224904224925%_))))
                      (_%g224903224921%_ _%g224904224925%_)))))
          (_%g224902224976%_ _%$stx224899%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx224980%_)
        (let* ((_%g224984225013%_
                (lambda (_%g224985225009%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g224985225009%_))))
               (_%g224983225109%_
                (lambda (_%g224985225017%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g224985225017%_))
                      (let ((_%e224988225020%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g224985225017%_))))
                        (let ((_%hd224989225024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e224988225020%_)))
                              (_%tl224990225027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e224988225020%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl224990225027%_))
                              (let ((_g231338_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl224990225027%_
                                        '0))))
                                (begin
                                  (let ((_g231339_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g231338_)
                                               (##values-length _g231338_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g231339_ 2)))
                                        (error "Context expects 2 values"
                                               _g231339_)))
                                  (let ((_%target224991225030%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g231338_ 0)))
                                        (_%tl224993225033%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g231338_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl224993225033%_))
                                        (letrec ((_%loop224994225036%_
                                                  (lambda (_%hd224992225040%_
                                                           _%type224998225043%_
                                                           _%symbol224999225044%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd224992225040%_))
                                                        (let ((_%e224995225046%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd224992225040%_))))
                  (let ((_%lp-hd224996225050%_
                         (let ()
                           (declare (not safe))
                           (##car _%e224995225046%_)))
                        (_%lp-tl224997225053%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e224995225046%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd224996225050%_))
                        (let ((_%e225002225056%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd224996225050%_))))
                          (let ((_%hd225003225060%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e225002225056%_)))
                                (_%tl225004225063%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e225002225056%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl225004225063%_))
                                (let ((_%e225005225066%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl225004225063%_))))
                                  (let ((_%hd225006225070%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e225005225066%_)))
                                        (_%tl225007225073%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e225005225066%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl225007225073%_))
                                        (_%loop224994225036%_
                                         _%lp-tl224997225053%_
                                         (cons _%hd225006225070%_
                                               _%type224998225043%_)
                                         (cons _%hd225003225060%_
                                               _%symbol224999225044%_))
                                        (_%g224984225013%_
                                         _%g224985225017%_))))
                                (_%g224984225013%_ _%g224985225017%_))))
                        (_%g224984225013%_ _%g224985225017%_))))
                (let ((_%type225000225076%_ (reverse _%type224998225043%_))
                      (_%symbol225001225078%_
                       (reverse _%symbol224999225044%_)))
                  ((lambda (_%g224986225080%_ _%g224987225082%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g224986225080%_
                                _%g224987225082%_))
                             (let ((__tmp231340
                                    (lambda (_%g225097225101%_
                                             _%g225098225104%_
                                             _%g225099225106%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g225098225104%_
                                                        (cons _%g225097225101%_
                                                              '())))
                                            _%g225099225106%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp231340
                                '()
                                _%g224986225080%_
                                _%g224987225082%_)))))
                   _%type225000225076%_
                   _%symbol225001225078%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop224994225036%_
                                           _%target224991225030%_
                                           '()
                                           '()))
                                        (_%g224984225013%_
                                         _%g224985225017%_)))))
                              (_%g224984225013%_ _%g224985225017%_))))
                      (_%g224984225013%_ _%g224985225017%_)))))
          (_%g224983225109%_ _%$stx224980%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx225114%_)
        (let* ((_%__stx230649230650%_ _%$stx225114%_)
               (_%g225119225161%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx230649230650%_)))))
          (let ((_%__kont230652230653%_
                 (lambda (_%g225121225289%_
                          _%g225122225291%_
                          _%g225123225292%_
                          _%g225124225293%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g225124225293%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g225123225292%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g225122225291%_ '()))
                                           (cons _%g225121225289%_ '())))))))
                (_%__kont230654230655%_
                 (lambda (_%g225140225208%_
                          _%g225141225210%_
                          _%g225142225211%_
                          _%g225143225212%_)
                   (cons _%g225143225212%_
                         (cons _%g225142225211%_
                               (cons _%g225141225210%_
                                     (cons _%g225140225208%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match230688230689%_
                   (lambda (_%e225125225239%_
                            _%hd225126225243%_
                            _%tl225127225246%_
                            _%e225128225249%_
                            _%hd225129225253%_
                            _%tl225130225256%_
                            _%e225131225259%_
                            _%hd225132225263%_
                            _%tl225133225266%_
                            _%e225134225269%_
                            _%hd225135225273%_
                            _%tl225136225276%_
                            _%e225137225279%_
                            _%hd225138225283%_
                            _%tl225139225286%_)
                     (let ((_%g225121225289%_ _%hd225138225283%_)
                           (_%g225122225291%_ _%hd225135225273%_)
                           (_%g225123225292%_ _%hd225132225263%_)
                           (_%g225124225293%_ _%hd225129225253%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g225124225293%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g225123225292%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g225122225291%_)))
                           (_%__kont230652230653%_
                            _%g225121225289%_
                            _%g225122225291%_
                            _%g225123225292%_
                            _%g225124225293%_)
                           (let ()
                             (declare (not safe))
                             (_%g225119225161%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx230649230650%_))
                  (let ((_%e225125225239%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx230649230650%_))))
                    (let ((_%tl225127225246%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e225125225239%_)))
                          (_%hd225126225243%_
                           (let ()
                             (declare (not safe))
                             (##car _%e225125225239%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl225127225246%_))
                          (let ((_%e225128225249%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl225127225246%_))))
                            (let ((_%tl225130225256%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e225128225249%_)))
                                  (_%hd225129225253%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e225128225249%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl225130225256%_))
                                  (let ((_%e225131225259%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl225130225256%_))))
                                    (let ((_%tl225133225266%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e225131225259%_)))
                                          (_%hd225132225263%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e225131225259%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl225133225266%_))
                                          (let ((_%e225134225269%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl225133225266%_))))
                                            (let ((_%tl225136225276%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e225134225269%_)))
                                                  (_%hd225135225273%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e225134225269%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl225136225276%_))
                                                  (let ((_%e225137225279%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl225136225276%_))))
                                                    (let ((_%tl225139225286%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e225137225279%_)))
                                                          (_%hd225138225283%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e225137225279%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl225139225286%_))
                                                          (_%__match230688230689%_
                                                           _%e225125225239%_
                                                           _%hd225126225243%_
                                                           _%tl225127225246%_
                                                           _%e225128225249%_
                                                           _%hd225129225253%_
                                                           _%tl225130225256%_
                                                           _%e225131225259%_
                                                           _%hd225132225263%_
                                                           _%tl225133225266%_
                                                           _%e225134225269%_
                                                           _%hd225135225273%_
                                                           _%tl225136225276%_
                                                           _%e225137225279%_
                                                           _%hd225138225283%_
                                                           _%tl225139225286%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g225119225161%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl225136225276%_))
                                                      (_%__kont230654230655%_
                                                       _%hd225135225273%_
                                                       _%hd225132225263%_
                                                       _%hd225129225253%_
                                                       _%hd225126225243%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g225119225161%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g225119225161%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g225119225161%_)))))
                          (let () (declare (not safe)) (_%g225119225161%_)))))
                  (let () (declare (not safe)) (_%g225119225161%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx225318%_)
        (let* ((_%g225322225357%_
                (lambda (_%g225323225353%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g225323225353%_))))
               (_%g225321225470%_
                (lambda (_%g225323225361%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g225323225361%_))
                      (let ((_%e225327225364%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g225323225361%_))))
                        (let ((_%hd225328225368%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e225327225364%_)))
                              (_%tl225329225371%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e225327225364%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl225329225371%_))
                              (let ((_g231341_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl225329225371%_
                                        '0))))
                                (begin
                                  (let ((_g231342_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g231341_)
                                               (##values-length _g231341_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g231342_ 2)))
                                        (error "Context expects 2 values"
                                               _g231342_)))
                                  (let ((_%target225330225374%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g231341_ 0)))
                                        (_%tl225332225377%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g231341_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl225332225377%_))
                                        (letrec ((_%loop225333225380%_
                                                  (lambda (_%hd225331225384%_
                                                           _%symbol225337225387%_
                                                           _%method225338225388%_
                                                           _%type-t225339225389%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd225331225384%_))
                                                        (let ((_%e225334225391%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd225331225384%_))))
                  (let ((_%lp-hd225335225395%_
                         (let ()
                           (declare (not safe))
                           (##car _%e225334225391%_)))
                        (_%lp-tl225336225398%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e225334225391%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd225335225395%_))
                        (let ((_%e225343225401%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd225335225395%_))))
                          (let ((_%hd225344225405%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e225343225401%_)))
                                (_%tl225345225408%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e225343225401%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl225345225408%_))
                                (let ((_%e225346225411%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl225345225408%_))))
                                  (let ((_%hd225347225415%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e225346225411%_)))
                                        (_%tl225348225418%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e225346225411%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl225348225418%_))
                                        (let ((_%e225349225421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl225348225418%_))))
                                          (let ((_%hd225350225425%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e225349225421%_)))
                                                (_%tl225351225428%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e225349225421%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl225351225428%_))
                                                (_%loop225333225380%_
                                                 _%lp-tl225336225398%_
                                                 (cons _%hd225350225425%_
                                                       _%symbol225337225387%_)
                                                 (cons _%hd225347225415%_
                                                       _%method225338225388%_)
                                                 (cons _%hd225344225405%_
                                                       _%type-t225339225389%_))
                                                (_%g225322225357%_
                                                 _%g225323225361%_))))
                                        (_%g225322225357%_
                                         _%g225323225361%_))))
                                (_%g225322225357%_ _%g225323225361%_))))
                        (_%g225322225357%_ _%g225323225361%_))))
                (let ((_%symbol225340225431%_ (reverse _%symbol225337225387%_))
                      (_%method225341225433%_ (reverse _%method225338225388%_))
                      (_%type-t225342225434%_
                       (reverse _%type-t225339225389%_)))
                  ((lambda (_%g225324225436%_
                            _%g225325225438%_
                            _%g225326225439%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g225324225436%_
                                _%g225325225438%_
                                _%g225326225439%_))
                             (let ((__tmp231343
                                    (lambda (_%g225455225460%_
                                             _%g225456225463%_
                                             _%g225457225465%_
                                             _%g225458225467%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g225457225465%_
                                                        (cons _%g225456225463%_
                                                              (cons _%g225455225460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g225458225467%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp231343
                                '()
                                _%g225324225436%_
                                _%g225325225438%_
                                _%g225326225439%_)))))
                   _%symbol225340225431%_
                   _%method225341225433%_
                   _%type-t225342225434%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop225333225380%_
                                           _%target225330225374%_
                                           '()
                                           '()
                                           '()))
                                        (_%g225322225357%_
                                         _%g225323225361%_)))))
                              (_%g225322225357%_ _%g225323225361%_))))
                      (_%g225322225357%_ _%g225323225361%_)))))
          (_%g225321225470%_ _%$stx225318%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx225475%_)
        (let* ((_%g225479225512%_
                (lambda (_%g225480225508%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g225480225508%_))))
               (_%g225478225622%_
                (lambda (_%g225480225516%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g225480225516%_))
                      (let ((_%e225484225519%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g225480225516%_))))
                        (let ((_%hd225485225523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e225484225519%_)))
                              (_%tl225486225526%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e225484225519%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl225486225526%_))
                              (let ((_%e225487225529%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl225486225526%_))))
                                (let ((_%hd225488225533%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e225487225529%_)))
                                      (_%tl225489225536%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e225487225529%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl225489225536%_))
                                      (let ((_g231344_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl225489225536%_
                                                '0))))
                                        (begin
                                          (let ((_g231345_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g231344_)
                                                       (##values-length
                                                        _g231344_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g231345_ 2)))
                                                (error "Context expects 2 values"
                                                       _g231345_)))
                                          (let ((_%target225490225539%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g231344_ 0)))
                                                (_%tl225492225542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g231344_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl225492225542%_))
                                                (letrec ((_%loop225493225545%_
                                                          (lambda (_%hd225491225549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol225497225552%_
                           _%method225498225553%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd225491225549%_))
                        (let ((_%e225494225555%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd225491225549%_))))
                          (let ((_%lp-hd225495225559%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e225494225555%_)))
                                (_%lp-tl225496225562%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e225494225555%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd225495225559%_))
                                (let ((_%e225501225565%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd225495225559%_))))
                                  (let ((_%hd225502225569%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e225501225565%_)))
                                        (_%tl225503225572%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e225501225565%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl225503225572%_))
                                        (let ((_%e225504225575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl225503225572%_))))
                                          (let ((_%hd225505225579%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e225504225575%_)))
                                                (_%tl225506225582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e225504225575%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl225506225582%_))
                                                (_%loop225493225545%_
                                                 _%lp-tl225496225562%_
                                                 (cons _%hd225505225579%_
                                                       _%symbol225497225552%_)
                                                 (cons _%hd225502225569%_
                                                       _%method225498225553%_))
                                                (_%g225479225512%_
                                                 _%g225480225516%_))))
                                        (_%g225479225512%_
                                         _%g225480225516%_))))
                                (_%g225479225512%_ _%g225480225516%_))))
                        (let ((_%symbol225499225585%_
                               (reverse _%symbol225497225552%_))
                              (_%method225500225587%_
                               (reverse _%method225498225553%_)))
                          ((lambda (_%g225481225589%_
                                    _%g225482225591%_
                                    _%g225483225592%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g225481225589%_
                                        _%g225482225591%_))
                                     (let ((__tmp231346
                                            (lambda (_%g225610225614%_
                                                     _%g225611225617%_
                                                     _%g225612225619%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g225483225592%_
                                                                (cons _%g225611225617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g225610225614%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g225612225619%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp231346
                                        '()
                                        _%g225481225589%_
                                        _%g225482225591%_)))))
                           _%symbol225499225585%_
                           _%method225500225587%_
                           _%hd225488225533%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop225493225545%_
                                                   _%target225490225539%_
                                                   '()
                                                   '()))
                                                (_%g225479225512%_
                                                 _%g225480225516%_)))))
                                      (_%g225479225512%_ _%g225480225516%_))))
                              (_%g225479225512%_ _%g225480225516%_))))
                      (_%g225479225512%_ _%g225480225516%_)))))
          (_%g225478225622%_ _%$stx225475%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx225627%_)
        (let* ((_%g225631225645%_
                (lambda (_%g225632225641%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g225632225641%_))))
               (_%g225630225686%_
                (lambda (_%g225632225649%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g225632225649%_))
                      (let ((_%e225634225652%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g225632225649%_))))
                        (let ((_%hd225635225656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e225634225652%_)))
                              (_%tl225636225659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e225634225652%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl225636225659%_))
                              (let ((_%e225637225662%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl225636225659%_))))
                                (let ((_%hd225638225666%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e225637225662%_)))
                                      (_%tl225639225669%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e225637225662%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl225639225669%_))
                                      ((lambda (_%g225633225672%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g225633225672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd225638225666%_)
                                      (_%g225631225645%_ _%g225632225649%_))))
                              (_%g225631225645%_ _%g225632225649%_))))
                      (_%g225631225645%_ _%g225632225649%_)))))
          (_%g225630225686%_ _%$stx225627%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx225690%_)
        (let* ((_%g225694225748%_
                (lambda (_%g225695225744%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g225695225744%_))))
               (_%g225693225929%_
                (lambda (_%g225695225752%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g225695225752%_))
                      (let ((_%e225707225755%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g225695225752%_))))
                        (let ((_%hd225708225759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e225707225755%_)))
                              (_%tl225709225762%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e225707225755%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl225709225762%_))
                              (let ((_%e225710225765%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl225709225762%_))))
                                (let ((_%hd225711225769%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e225710225765%_)))
                                      (_%tl225712225772%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e225710225765%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl225712225772%_))
                                      (let ((_%e225713225775%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl225712225772%_))))
                                        (let ((_%hd225714225779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e225713225775%_)))
                                              (_%tl225715225782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e225713225775%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl225715225782%_))
                                              (let ((_%e225716225785%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl225715225782%_))))
                                                (let ((_%hd225717225789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e225716225785%_)))
                                                      (_%tl225718225792%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e225716225785%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl225718225792%_))
                                                      (let ((_%e225719225795%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl225718225792%_))))
                (let ((_%hd225720225799%_
                       (let () (declare (not safe)) (##car _%e225719225795%_)))
                      (_%tl225721225802%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e225719225795%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl225721225802%_))
                      (let ((_%e225722225805%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl225721225802%_))))
                        (let ((_%hd225723225809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e225722225805%_)))
                              (_%tl225724225812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e225722225805%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl225724225812%_))
                              (let ((_%e225725225815%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl225724225812%_))))
                                (let ((_%hd225726225819%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e225725225815%_)))
                                      (_%tl225727225822%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e225725225815%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl225727225822%_))
                                      (let ((_%e225728225825%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl225727225822%_))))
                                        (let ((_%hd225729225829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e225728225825%_)))
                                              (_%tl225730225832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e225728225825%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl225730225832%_))
                                              (let ((_%e225731225835%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl225730225832%_))))
                                                (let ((_%hd225732225839%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e225731225835%_)))
                                                      (_%tl225733225842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e225731225835%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl225733225842%_))
                                                      (let ((_%e225734225845%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl225733225842%_))))
                (let ((_%hd225735225849%_
                       (let () (declare (not safe)) (##car _%e225734225845%_)))
                      (_%tl225736225852%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e225734225845%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl225736225852%_))
                      (let ((_%e225737225855%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl225736225852%_))))
                        (let ((_%hd225738225859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e225737225855%_)))
                              (_%tl225739225862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e225737225855%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl225739225862%_))
                              (let ((_%e225740225865%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl225739225862%_))))
                                (let ((_%hd225741225869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e225740225865%_)))
                                      (_%tl225742225872%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e225740225865%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl225742225872%_))
                                      ((lambda (_%g225696225875%_
                                                _%g225697225877%_
                                                _%g225698225878%_
                                                _%g225699225879%_
                                                _%g225700225880%_
                                                _%g225701225881%_
                                                _%g225702225882%_
                                                _%g225703225883%_
                                                _%g225704225884%_
                                                _%g225705225885%_
                                                _%g225706225886%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g225706225886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g225705225885%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g225704225884%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g225703225883%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g225702225882%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g225701225881%_ '()))
                                           (cons _%g225700225880%_
                                                 (cons _%g225699225879%_
                                                       (cons _%g225698225878%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g225697225877%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g225696225875%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd225741225869%_
                                       _%hd225738225859%_
                                       _%hd225735225849%_
                                       _%hd225732225839%_
                                       _%hd225729225829%_
                                       _%hd225726225819%_
                                       _%hd225723225809%_
                                       _%hd225720225799%_
                                       _%hd225717225789%_
                                       _%hd225714225779%_
                                       _%hd225711225769%_)
                                      (_%g225694225748%_ _%g225695225752%_))))
                              (_%g225694225748%_ _%g225695225752%_))))
                      (_%g225694225748%_ _%g225695225752%_))))
              (_%g225694225748%_ _%g225695225752%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g225694225748%_
                                               _%g225695225752%_))))
                                      (_%g225694225748%_ _%g225695225752%_))))
                              (_%g225694225748%_ _%g225695225752%_))))
                      (_%g225694225748%_ _%g225695225752%_))))
              (_%g225694225748%_ _%g225695225752%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g225694225748%_
                                               _%g225695225752%_))))
                                      (_%g225694225748%_ _%g225695225752%_))))
                              (_%g225694225748%_ _%g225695225752%_))))
                      (_%g225694225748%_ _%g225695225752%_)))))
          (_%g225693225929%_ _%$stx225690%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx225933%_)
        (let* ((_%g225937225951%_
                (lambda (_%g225938225947%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g225938225947%_))))
               (_%g225936225992%_
                (lambda (_%g225938225955%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g225938225955%_))
                      (let ((_%e225940225958%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g225938225955%_))))
                        (let ((_%hd225941225962%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e225940225958%_)))
                              (_%tl225942225965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e225940225958%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl225942225965%_))
                              (let ((_%e225943225968%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl225942225965%_))))
                                (let ((_%hd225944225972%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e225943225968%_)))
                                      (_%tl225945225975%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e225943225968%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl225945225975%_))
                                      ((lambda (_%g225939225978%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g225939225978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd225944225972%_)
                                      (_%g225937225951%_ _%g225938225955%_))))
                              (_%g225937225951%_ _%g225938225955%_))))
                      (_%g225937225951%_ _%g225938225955%_)))))
          (_%g225936225992%_ _%$stx225933%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx225996%_)
        (let* ((_%g226000226014%_
                (lambda (_%g226001226010%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226001226010%_))))
               (_%g225999226055%_
                (lambda (_%g226001226018%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226001226018%_))
                      (let ((_%e226003226021%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226001226018%_))))
                        (let ((_%hd226004226025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226003226021%_)))
                              (_%tl226005226028%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226003226021%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226005226028%_))
                              (let ((_%e226006226031%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226005226028%_))))
                                (let ((_%hd226007226035%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226006226031%_)))
                                      (_%tl226008226038%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226006226031%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl226008226038%_))
                                      ((lambda (_%g226002226041%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g226002226041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd226007226035%_)
                                      (_%g226000226014%_ _%g226001226018%_))))
                              (_%g226000226014%_ _%g226001226018%_))))
                      (_%g226000226014%_ _%g226001226018%_)))))
          (_%g225999226055%_ _%$stx225996%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx226059%_)
        (let* ((_%g226063226085%_
                (lambda (_%g226064226081%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226064226081%_))))
               (_%g226062226154%_
                (lambda (_%g226064226089%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226064226089%_))
                      (let ((_%e226068226092%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226064226089%_))))
                        (let ((_%hd226069226096%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226068226092%_)))
                              (_%tl226070226099%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226068226092%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226070226099%_))
                              (let ((_%e226071226102%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226070226099%_))))
                                (let ((_%hd226072226106%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226071226102%_)))
                                      (_%tl226073226109%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226071226102%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226073226109%_))
                                      (let ((_%e226074226112%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226073226109%_))))
                                        (let ((_%hd226075226116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226074226112%_)))
                                              (_%tl226076226119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226074226112%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl226076226119%_))
                                              (let ((_%e226077226122%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl226076226119%_))))
                                                (let ((_%hd226078226126%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e226077226122%_)))
                                                      (_%tl226079226129%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e226077226122%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl226079226129%_))
                                                      ((lambda (_%g226065226132%_
                                                                _%g226066226134%_
                                                                _%g226067226135%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g226067226135%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g226066226134%_ '()))
                                   (cons _%g226065226132%_ '())))))
               _%hd226078226126%_
               _%hd226075226116%_
               _%hd226072226106%_)
              (_%g226063226085%_ _%g226064226089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g226063226085%_
                                               _%g226064226089%_))))
                                      (_%g226063226085%_ _%g226064226089%_))))
                              (_%g226063226085%_ _%g226064226089%_))))
                      (_%g226063226085%_ _%g226064226089%_)))))
          (_%g226062226154%_ _%$stx226059%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx226158%_)
        (let* ((_%g226162226184%_
                (lambda (_%g226163226180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226163226180%_))))
               (_%g226161226253%_
                (lambda (_%g226163226188%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226163226188%_))
                      (let ((_%e226167226191%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226163226188%_))))
                        (let ((_%hd226168226195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226167226191%_)))
                              (_%tl226169226198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226167226191%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226169226198%_))
                              (let ((_%e226170226201%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226169226198%_))))
                                (let ((_%hd226171226205%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226170226201%_)))
                                      (_%tl226172226208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226170226201%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226172226208%_))
                                      (let ((_%e226173226211%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226172226208%_))))
                                        (let ((_%hd226174226215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226173226211%_)))
                                              (_%tl226175226218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226173226211%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl226175226218%_))
                                              (let ((_%e226176226221%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl226175226218%_))))
                                                (let ((_%hd226177226225%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e226176226221%_)))
                                                      (_%tl226178226228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e226176226221%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl226178226228%_))
                                                      ((lambda (_%g226164226231%_
                                                                _%g226165226233%_
                                                                _%g226166226234%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g226166226234%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g226165226233%_ '()))
                                   (cons _%g226164226231%_ '())))))
               _%hd226177226225%_
               _%hd226174226215%_
               _%hd226171226205%_)
              (_%g226162226184%_ _%g226163226188%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g226162226184%_
                                               _%g226163226188%_))))
                                      (_%g226162226184%_ _%g226163226188%_))))
                              (_%g226162226184%_ _%g226163226188%_))))
                      (_%g226162226184%_ _%g226163226188%_)))))
          (_%g226161226253%_ _%$stx226158%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx226257%_)
        (let* ((_%g226261226275%_
                (lambda (_%g226262226271%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226262226271%_))))
               (_%g226260226316%_
                (lambda (_%g226262226279%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226262226279%_))
                      (let ((_%e226264226282%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226262226279%_))))
                        (let ((_%hd226265226286%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226264226282%_)))
                              (_%tl226266226289%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226264226282%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226266226289%_))
                              (let ((_%e226267226292%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226266226289%_))))
                                (let ((_%hd226268226296%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226267226292%_)))
                                      (_%tl226269226299%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226267226292%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl226269226299%_))
                                      ((lambda (_%g226263226302%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g226263226302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd226268226296%_)
                                      (_%g226261226275%_ _%g226262226279%_))))
                              (_%g226261226275%_ _%g226262226279%_))))
                      (_%g226261226275%_ _%g226262226279%_)))))
          (_%g226260226316%_ _%$stx226257%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx226320%_)
        (let* ((_%g226324226342%_
                (lambda (_%g226325226338%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226325226338%_))))
               (_%g226323226397%_
                (lambda (_%g226325226346%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226325226346%_))
                      (let ((_%e226328226349%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226325226346%_))))
                        (let ((_%hd226329226353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226328226349%_)))
                              (_%tl226330226356%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226328226349%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226330226356%_))
                              (let ((_%e226331226359%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226330226356%_))))
                                (let ((_%hd226332226363%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226331226359%_)))
                                      (_%tl226333226366%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226331226359%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226333226366%_))
                                      (let ((_%e226334226369%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226333226366%_))))
                                        (let ((_%hd226335226373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226334226369%_)))
                                              (_%tl226336226376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226334226369%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226336226376%_))
                                              ((lambda (_%g226326226379%_
                                                        _%g226327226381%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g226327226381%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g226326226379%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd226335226373%_
                                               _%hd226332226363%_)
                                              (_%g226324226342%_
                                               _%g226325226346%_))))
                                      (_%g226324226342%_ _%g226325226346%_))))
                              (_%g226324226342%_ _%g226325226346%_))))
                      (_%g226324226342%_ _%g226325226346%_)))))
          (_%g226323226397%_ _%$stx226320%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx226401%_)
        (let* ((_%__stx230717230718%_ _%$stx226401%_)
               (_%g226408226469%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx230717230718%_)))))
          (let ((_%__kont230720230721%_
                 (lambda (_%g226410226707%_ _%g226411226709%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g226411226709%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g226410226707%_ '()))
                                     '())))))
                (_%__kont230722230723%_
                 (lambda (_%g226421226646%_
                          _%g226422226648%_
                          _%g226423226649%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g226423226649%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g226422226648%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g226421226646%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont230724230725%_
                 (lambda (_%g226440226570%_ _%g226441226572%_)
                   (cons _%g226441226572%_
                         (cons _%g226440226570%_ (cons '#f '())))))
                (_%__kont230726230727%_
                 (lambda (_%g226448226520%_
                          _%g226449226522%_
                          _%g226450226523%_)
                   (cons _%g226450226523%_
                         (cons _%g226449226522%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g226448226520%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx230717230718%_))
                (let ((_%e226412226677%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx230717230718%_))))
                  (let ((_%tl226414226684%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226412226677%_)))
                        (_%hd226413226681%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226412226677%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl226414226684%_))
                        (let ((_%e226415226687%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl226414226684%_))))
                          (let ((_%tl226417226694%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226415226687%_)))
                                (_%hd226416226691%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226415226687%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226417226694%_))
                                (let ((_%e226418226697%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl226417226694%_))))
                                  (let ((_%tl226420226704%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226418226697%_)))
                                        (_%hd226419226701%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226418226697%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226420226704%_))
                                        (_%__kont230720230721%_
                                         _%hd226419226701%_
                                         _%hd226416226691%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl226420226704%_))
                                            (let ((_%e226433226622%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl226420226704%_))))
                                              (let ((_%tl226435226629%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e226433226622%_)))
                                                    (_%hd226434226626%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e226433226622%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd226434226626%_))
                                                    (let ((_%e226436226632%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd226434226626%_))))
                                                      (if (equal? _%e226436226632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl226435226629%_))
                      (let ((_%e226437226636%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl226435226629%_))))
                        (let ((_%tl226439226643%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226437226636%_)))
                              (_%hd226438226640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226437226636%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl226439226643%_))
                              (_%__kont230722230723%_
                               _%hd226438226640%_
                               _%hd226419226701%_
                               _%hd226416226691%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd226419226701%_))
                                  (let ((_%e226460226506%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd226419226701%_))))
                                    (declare (not safe))
                                    (_%g226408226469%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g226408226469%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd226419226701%_))
                          (let ((_%e226460226506%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd226419226701%_))))
                            (if (equal? _%e226460226506%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl226435226629%_))
                                    (_%__kont230726230727%_
                                     _%hd226434226626%_
                                     _%hd226416226691%_
                                     _%hd226413226681%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g226408226469%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g226408226469%_))))
                          (let () (declare (not safe)) (_%g226408226469%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd226419226701%_))
                      (let ((_%e226460226506%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd226419226701%_))))
                        (if (equal? _%e226460226506%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl226435226629%_))
                                (_%__kont230726230727%_
                                 _%hd226434226626%_
                                 _%hd226416226691%_
                                 _%hd226413226681%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g226408226469%_)))
                            (let () (declare (not safe)) (_%g226408226469%_))))
                      (let () (declare (not safe)) (_%g226408226469%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd226419226701%_))
                                                        (let ((_%e226460226506%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd226419226701%_))))
                  (if (equal? _%e226460226506%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl226435226629%_))
                          (_%__kont230726230727%_
                           _%hd226434226626%_
                           _%hd226416226691%_
                           _%hd226413226681%_)
                          (let () (declare (not safe)) (_%g226408226469%_)))
                      (let () (declare (not safe)) (_%g226408226469%_))))
                (let () (declare (not safe)) (_%g226408226469%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd226419226701%_))
                                                (let ((_%e226460226506%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd226419226701%_))))
                                                  (declare (not safe))
                                                  (_%g226408226469%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g226408226469%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl226417226694%_))
                                    (_%__kont230724230725%_
                                     _%hd226416226691%_
                                     _%hd226413226681%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g226408226469%_))))))
                        (let () (declare (not safe)) (_%g226408226469%_)))))
                (let () (declare (not safe)) (_%g226408226469%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx226728%_)
        (let* ((_%g226732226761%_
                (lambda (_%g226733226757%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226733226757%_))))
               (_%g226731226866%_
                (lambda (_%g226733226765%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226733226765%_))
                      (let ((_%e226735226768%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226733226765%_))))
                        (let ((_%hd226736226772%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226735226768%_)))
                              (_%tl226737226775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226735226768%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl226737226775%_))
                              (let ((_g231347_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl226737226775%_
                                        '0))))
                                (begin
                                  (let ((_g231348_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g231347_)
                                               (##values-length _g231347_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g231348_ 2)))
                                        (error "Context expects 2 values"
                                               _g231348_)))
                                  (let ((_%target226738226778%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g231347_ 0)))
                                        (_%tl226740226781%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g231347_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226740226781%_))
                                        (letrec ((_%loop226741226784%_
                                                  (lambda (_%hd226739226788%_
                                                           _%clause226745226791%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd226739226788%_))
                                                        (let ((_%e226742226793%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd226739226788%_))))
                  (let ((_%lp-hd226743226797%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226742226793%_)))
                        (_%lp-tl226744226800%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226742226793%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd226743226797%_))
                        (let ((_g231349_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd226743226797%_
                                  '0))))
                          (begin
                            (let ((_g231350_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g231349_)
                                         (##values-length _g231349_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g231350_ 2)))
                                  (error "Context expects 2 values"
                                         _g231350_)))
                            (let ((_%target226747226803%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g231349_ 0)))
                                  (_%tl226749226806%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g231349_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl226749226806%_))
                                  (letrec ((_%loop226750226809%_
                                            (lambda (_%hd226748226813%_
                                                     _%clause226754226816%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd226748226813%_))
                                                  (let ((_%e226751226818%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd226748226813%_))))
                                                    (let ((_%lp-hd226752226822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e226751226818%_)))
                                                          (_%lp-tl226753226825%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e226751226818%_))))
                                                      (_%loop226750226809%_
                                                       _%lp-tl226753226825%_
                                                       (cons _%lp-hd226752226822%_
                                                             _%clause226754226816%_))))
                                                  (let ((_%clause226755226828%_
                                                         (reverse _%clause226754226816%_)))
                                                    (_%loop226741226784%_
                                                     _%lp-tl226744226800%_
                                                     (cons _%clause226755226828%_
                                                           _%clause226745226791%_)))))))
                                    (_%loop226750226809%_
                                     _%target226747226803%_
                                     '()))
                                  (_%g226732226761%_ _%g226733226765%_)))))
                        (_%g226732226761%_ _%g226733226765%_))))
                (let ((_%clause226746226831%_
                       (reverse _%clause226745226791%_)))
                  ((lambda (_%g226734226834%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp231351
                                              (lambda (_%g226849226854%_
                                                       _%g226850226857%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp231352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g226851226860%_ _%g226852226863%_)
                             (cons _%g226851226860%_ _%g226852226863%_))))
                      (declare (not safe))
                      (__foldr1 __tmp231352 '() _%g226849226854%_)))
              _%g226850226857%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp231351
                                          '()
                                          _%g226734226834%_)))
                                 '())))
                   _%clause226746226831%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop226741226784%_
                                           _%target226738226778%_
                                           '()))
                                        (_%g226732226761%_
                                         _%g226733226765%_)))))
                              (_%g226732226761%_ _%g226733226765%_))))
                      (_%g226732226761%_ _%g226733226765%_)))))
          (_%g226731226866%_ _%$stx226728%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx226872%_)
        (let* ((_%g226876226894%_
                (lambda (_%g226877226890%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226877226890%_))))
               (_%g226875226949%_
                (lambda (_%g226877226898%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226877226898%_))
                      (let ((_%e226880226901%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226877226898%_))))
                        (let ((_%hd226881226905%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226880226901%_)))
                              (_%tl226882226908%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226880226901%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226882226908%_))
                              (let ((_%e226883226911%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226882226908%_))))
                                (let ((_%hd226884226915%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226883226911%_)))
                                      (_%tl226885226918%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226883226911%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226885226918%_))
                                      (let ((_%e226886226921%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226885226918%_))))
                                        (let ((_%hd226887226925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226886226921%_)))
                                              (_%tl226888226928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226886226921%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226888226928%_))
                                              ((lambda (_%g226878226931%_
                                                        _%g226879226933%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g226879226933%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g226878226931%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd226887226925%_
                                               _%hd226884226915%_)
                                              (_%g226876226894%_
                                               _%g226877226898%_))))
                                      (_%g226876226894%_ _%g226877226898%_))))
                              (_%g226876226894%_ _%g226877226898%_))))
                      (_%g226876226894%_ _%g226877226898%_)))))
          (_%g226875226949%_ _%$stx226872%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx226953%_)
        (let* ((_%g226957226975%_
                (lambda (_%g226958226971%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226958226971%_))))
               (_%g226956227030%_
                (lambda (_%g226958226979%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226958226979%_))
                      (let ((_%e226961226982%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226958226979%_))))
                        (let ((_%hd226962226986%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226961226982%_)))
                              (_%tl226963226989%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226961226982%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226963226989%_))
                              (let ((_%e226964226992%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226963226989%_))))
                                (let ((_%hd226965226996%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226964226992%_)))
                                      (_%tl226966226999%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226964226992%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226966226999%_))
                                      (let ((_%e226967227002%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226966226999%_))))
                                        (let ((_%hd226968227006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226967227002%_)))
                                              (_%tl226969227009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226967227002%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226969227009%_))
                                              ((lambda (_%g226959227012%_
                                                        _%g226960227014%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g226960227014%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g226959227012%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd226968227006%_
                                               _%hd226965226996%_)
                                              (_%g226957226975%_
                                               _%g226958226979%_))))
                                      (_%g226957226975%_ _%g226958226979%_))))
                              (_%g226957226975%_ _%g226958226979%_))))
                      (_%g226957226975%_ _%g226958226979%_)))))
          (_%g226956227030%_ _%$stx226953%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx227034%_)
        (let* ((_%g227038227067%_
                (lambda (_%g227039227063%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227039227063%_))))
               (_%g227037227163%_
                (lambda (_%g227039227071%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227039227071%_))
                      (let ((_%e227042227074%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227039227071%_))))
                        (let ((_%hd227043227078%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227042227074%_)))
                              (_%tl227044227081%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227042227074%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl227044227081%_))
                              (let ((_g231353_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl227044227081%_
                                        '0))))
                                (begin
                                  (let ((_g231354_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g231353_)
                                               (##values-length _g231353_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g231354_ 2)))
                                        (error "Context expects 2 values"
                                               _g231354_)))
                                  (let ((_%target227045227084%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g231353_ 0)))
                                        (_%tl227047227087%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g231353_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl227047227087%_))
                                        (letrec ((_%loop227048227090%_
                                                  (lambda (_%hd227046227094%_
                                                           _%rule227052227097%_
                                                           _%proc227053227098%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd227046227094%_))
                                                        (let ((_%e227049227100%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd227046227094%_))))
                  (let ((_%lp-hd227050227104%_
                         (let ()
                           (declare (not safe))
                           (##car _%e227049227100%_)))
                        (_%lp-tl227051227107%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227049227100%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd227050227104%_))
                        (let ((_%e227056227110%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd227050227104%_))))
                          (let ((_%hd227057227114%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227056227110%_)))
                                (_%tl227058227117%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227056227110%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl227058227117%_))
                                (let ((_%e227059227120%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl227058227117%_))))
                                  (let ((_%hd227060227124%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227059227120%_)))
                                        (_%tl227061227127%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227059227120%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl227061227127%_))
                                        (_%loop227048227090%_
                                         _%lp-tl227051227107%_
                                         (cons _%hd227060227124%_
                                               _%rule227052227097%_)
                                         (cons _%hd227057227114%_
                                               _%proc227053227098%_))
                                        (_%g227038227067%_
                                         _%g227039227071%_))))
                                (_%g227038227067%_ _%g227039227071%_))))
                        (_%g227038227067%_ _%g227039227071%_))))
                (let ((_%rule227054227130%_ (reverse _%rule227052227097%_))
                      (_%proc227055227132%_ (reverse _%proc227053227098%_)))
                  ((lambda (_%g227040227134%_ _%g227041227136%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g227040227134%_
                                _%g227041227136%_))
                             (let ((__tmp231355
                                    (lambda (_%g227151227155%_
                                             _%g227152227158%_
                                             _%g227153227160%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g227152227158%_
                                                        (cons _%g227151227155%_
                                                              '())))
                                            _%g227153227160%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp231355
                                '()
                                _%g227040227134%_
                                _%g227041227136%_)))))
                   _%rule227054227130%_
                   _%proc227055227132%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop227048227090%_
                                           _%target227045227084%_
                                           '()
                                           '()))
                                        (_%g227038227067%_
                                         _%g227039227071%_)))))
                              (_%g227038227067%_ _%g227039227071%_))))
                      (_%g227038227067%_ _%g227039227071%_)))))
          (_%g227037227163%_ _%$stx227034%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx227168%_)
        (let* ((_%g227172227190%_
                (lambda (_%g227173227186%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227173227186%_))))
               (_%g227171227245%_
                (lambda (_%g227173227194%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227173227194%_))
                      (let ((_%e227176227197%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227173227194%_))))
                        (let ((_%hd227177227201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227176227197%_)))
                              (_%tl227178227204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227176227197%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227178227204%_))
                              (let ((_%e227179227207%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227178227204%_))))
                                (let ((_%hd227180227211%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227179227207%_)))
                                      (_%tl227181227214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227179227207%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227181227214%_))
                                      (let ((_%e227182227217%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227181227214%_))))
                                        (let ((_%hd227183227221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227182227217%_)))
                                              (_%tl227184227224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227182227217%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl227184227224%_))
                                              ((lambda (_%g227174227227%_
                                                        _%g227175227229%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g227175227229%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%g227174227227%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227175227229%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd227183227221%_
                                               _%hd227180227211%_)
                                              (_%g227172227190%_
                                               _%g227173227194%_))))
                                      (_%g227172227190%_ _%g227173227194%_))))
                              (_%g227172227190%_ _%g227173227194%_))))
                      (_%g227172227190%_ _%g227173227194%_)))))
          (_%g227171227245%_ _%$stx227168%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx227249%_)
        (let* ((_%__stx230835230836%_ _%$stx227249%_)
               (_%g227254227279%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx230835230836%_)))))
          (let ((_%__kont230838230839%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont230840230841%_
                 (lambda (_%g227259227326%_
                          _%g227260227328%_
                          _%g227261227329%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g227261227329%_
                                           (cons _%g227260227328%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g227259227326%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx230835230836%_))
                (let ((_%e227256227355%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx230835230836%_))))
                  (let ((_%tl227258227362%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227256227355%_)))
                        (_%hd227257227359%_
                         (let ()
                           (declare (not safe))
                           (##car _%e227256227355%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl227258227362%_))
                        (_%__kont230838230839%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl227258227362%_))
                            (let ((_%e227265227296%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl227258227362%_))))
                              (let ((_%tl227267227303%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e227265227296%_)))
                                    (_%hd227266227300%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e227265227296%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd227266227300%_))
                                    (let ((_%e227268227306%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd227266227300%_))))
                                      (let ((_%tl227270227313%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e227268227306%_)))
                                            (_%hd227269227310%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e227268227306%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl227270227313%_))
                                            (let ((_%e227271227316%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl227270227313%_))))
                                              (let ((_%tl227273227323%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e227271227316%_)))
                                                    (_%hd227272227320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e227271227316%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl227273227323%_))
                                                    (_%__kont230840230841%_
                                                     _%tl227267227303%_
                                                     _%hd227272227320%_
                                                     _%hd227269227310%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g227254227279%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g227254227279%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g227254227279%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g227254227279%_))))))
                (let () (declare (not safe)) (_%g227254227279%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx227373%_)
        (let* ((_%__stx230879230880%_ _%$stx227373%_)
               (_%g227378227409%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx230879230880%_)))))
          (let ((_%__kont230882230883%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont230884230885%_
                 (lambda (_%g227383227474%_
                          _%g227384227476%_
                          _%g227385227477%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g227385227477%_
                                           (let ((__tmp231356
                                                  (lambda (_%g227497227500%_
                                                           _%g227498227503%_)
                                                    (cons _%g227497227500%_
                                                          _%g227498227503%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp231356
                                              '()
                                              _%g227384227476%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g227383227474%_)
                                     '()))))))
            (let ((_%__match230922230923%_
                   (lambda (_%e227386227416%_
                            _%hd227387227420%_
                            _%tl227388227423%_
                            _%e227389227426%_
                            _%hd227390227430%_
                            _%tl227391227433%_
                            _%e227392227436%_
                            _%hd227393227440%_
                            _%tl227394227443%_
                            _%__splice230886230887%_
                            _%target227395227446%_
                            _%tl227397227449%_)
                     (letrec ((_%loop227398227452%_
                               (lambda (_%hd227396227456%_ _%sig227402227459%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd227396227456%_))
                                     (let ((_%e227399227461%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd227396227456%_))))
                                       (let ((_%lp-tl227401227468%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e227399227461%_)))
                                             (_%lp-hd227400227465%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e227399227461%_))))
                                         (_%loop227398227452%_
                                          _%lp-tl227401227468%_
                                          (cons _%lp-hd227400227465%_
                                                _%sig227402227459%_))))
                                     (let ((_%sig227403227471%_
                                            (reverse _%sig227402227459%_)))
                                       (_%__kont230884230885%_
                                        _%tl227391227433%_
                                        _%sig227403227471%_
                                        _%hd227393227440%_))))))
                       (_%loop227398227452%_ _%target227395227446%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx230879230880%_))
                  (let ((_%e227380227513%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx230879230880%_))))
                    (let ((_%tl227382227520%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e227380227513%_)))
                          (_%hd227381227517%_
                           (let ()
                             (declare (not safe))
                             (##car _%e227380227513%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl227382227520%_))
                          (_%__kont230882230883%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227382227520%_))
                              (let ((_%e227389227426%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227382227520%_))))
                                (let ((_%tl227391227433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227389227426%_)))
                                      (_%hd227390227430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227389227426%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd227390227430%_))
                                      (let ((_%e227392227436%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd227390227430%_))))
                                        (let ((_%tl227394227443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227392227436%_)))
                                              (_%hd227393227440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227392227436%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl227394227443%_))
                                              (let ((_%__splice230886230887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl227394227443%_
                                                        '0))))
                                                (let ((_%tl227397227449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice230886230887%_
                                                          '1)))
                                                      (_%target227395227446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice230886230887%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227397227449%_))
                                                      (_%__match230922230923%_
                                                       _%e227380227513%_
                                                       _%hd227381227517%_
                                                       _%tl227382227520%_
                                                       _%e227389227426%_
                                                       _%hd227390227430%_
                                                       _%tl227391227433%_
                                                       _%e227392227436%_
                                                       _%hd227393227440%_
                                                       _%tl227394227443%_
                                                       _%__splice230886230887%_
                                                       _%target227395227446%_
                                                       _%tl227397227449%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g227378227409%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g227378227409%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g227378227409%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g227378227409%_))))))
                  (let () (declare (not safe)) (_%g227378227409%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx227532%_)
        (let* ((_%__stx230925230926%_ _%$stx227532%_)
               (_%g227537227584%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx230925230926%_)))))
          (let ((_%__kont230928230929%_
                 (lambda (_%g227539227742%_ _%g227540227744%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g227540227744%_
                               (let ((__tmp231357
                                      (lambda (_%g227764227767%_
                                               _%g227765227770%_)
                                        (cons _%g227764227767%_
                                              _%g227765227770%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp231357
                                  '()
                                  _%g227539227742%_))))))
                (_%__kont230932230933%_
                 (lambda (_%g227562227639%_ _%g227563227641%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g227563227641%_
                               (let ((__tmp231358
                                      (lambda (_%g227658227661%_
                                               _%g227659227664%_)
                                        (cons _%g227658227661%_
                                              _%g227659227664%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp231358
                                  '()
                                  _%g227562227639%_)))))))
            (let* ((_%__match230992230993%_
                    (lambda (_%e227564227591%_
                             _%hd227565227595%_
                             _%tl227566227598%_
                             _%e227567227601%_
                             _%hd227568227605%_
                             _%tl227569227608%_
                             _%__splice230934230935%_
                             _%target227570227611%_
                             _%tl227572227614%_)
                      (letrec ((_%loop227573227617%_
                                (lambda (_%hd227571227621%_
                                         _%sig227577227624%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd227571227621%_))
                                      (let ((_%e227574227626%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd227571227621%_))))
                                        (let ((_%lp-tl227576227633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227574227626%_)))
                                              (_%lp-hd227575227630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227574227626%_))))
                                          (_%loop227573227617%_
                                           _%lp-tl227576227633%_
                                           (cons _%lp-hd227575227630%_
                                                 _%sig227577227624%_))))
                                      (let ((_%sig227578227636%_
                                             (reverse _%sig227577227624%_)))
                                        (_%__kont230932230933%_
                                         _%sig227578227636%_
                                         _%hd227568227605%_))))))
                        (_%loop227573227617%_ _%target227570227611%_ '()))))
                   (_%__match230984230985%_
                    (lambda (_%e227564227591%_
                             _%hd227565227595%_
                             _%tl227566227598%_
                             _%e227567227601%_
                             _%hd227568227605%_
                             _%tl227569227608%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl227569227608%_))
                          (let ((_%__splice230934230935%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl227569227608%_
                                    '0))))
                            (let ((_%tl227572227614%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice230934230935%_
                                      '1)))
                                  (_%target227570227611%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice230934230935%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl227572227614%_))
                                  (_%__match230992230993%_
                                   _%e227564227591%_
                                   _%hd227565227595%_
                                   _%tl227566227598%_
                                   _%e227567227601%_
                                   _%hd227568227605%_
                                   _%tl227569227608%_
                                   _%__splice230934230935%_
                                   _%target227570227611%_
                                   _%tl227572227614%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g227537227584%_)))))
                          (let () (declare (not safe)) (_%g227537227584%_)))))
                   (_%__match230972230973%_
                    (lambda (_%e227541227674%_
                             _%hd227542227678%_
                             _%tl227543227681%_
                             _%e227544227684%_
                             _%hd227545227688%_
                             _%tl227546227691%_
                             _%e227547227694%_
                             _%hd227548227698%_
                             _%tl227549227701%_
                             _%e227550227704%_
                             _%hd227551227708%_
                             _%tl227552227711%_
                             _%__splice230930230931%_
                             _%target227553227714%_
                             _%tl227555227717%_)
                      (letrec ((_%loop227556227720%_
                                (lambda (_%hd227554227724%_
                                         _%sig227560227727%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd227554227724%_))
                                      (let ((_%e227557227729%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd227554227724%_))))
                                        (let ((_%lp-tl227559227736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227557227729%_)))
                                              (_%lp-hd227558227733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227557227729%_))))
                                          (_%loop227556227720%_
                                           _%lp-tl227559227736%_
                                           (cons _%lp-hd227558227733%_
                                                 _%sig227560227727%_))))
                                      (let ((_%sig227561227739%_
                                             (reverse _%sig227560227727%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl227549227701%_))
                                            (_%__kont230928230929%_
                                             _%sig227561227739%_
                                             _%hd227545227688%_)
                                            (_%__match230984230985%_
                                             _%e227541227674%_
                                             _%hd227542227678%_
                                             _%tl227543227681%_
                                             _%e227544227684%_
                                             _%hd227545227688%_
                                             _%tl227546227691%_)))))))
                        (_%loop227556227720%_ _%target227553227714%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx230925230926%_))
                  (let ((_%e227541227674%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx230925230926%_))))
                    (let ((_%tl227543227681%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e227541227674%_)))
                          (_%hd227542227678%_
                           (let ()
                             (declare (not safe))
                             (##car _%e227541227674%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl227543227681%_))
                          (let ((_%e227544227684%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl227543227681%_))))
                            (let ((_%tl227546227691%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e227544227684%_)))
                                  (_%hd227545227688%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e227544227684%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl227546227691%_))
                                  (let ((_%e227547227694%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl227546227691%_))))
                                    (let ((_%tl227549227701%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e227547227694%_)))
                                          (_%hd227548227698%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e227547227694%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd227548227698%_))
                                          (let ((_%e227550227704%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd227548227698%_))))
                                            (let ((_%tl227552227711%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e227550227704%_)))
                                                  (_%hd227551227708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e227550227704%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd227551227708%_))
                                                  (if (let ((__tmp231359
                                                             |gxc[1]#_g231360_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp231359
                                                         _%hd227551227708%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl227552227711%_))
                                                          (let ((_%__splice230930230931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl227552227711%_
                            '0))))
                    (let ((_%tl227555227717%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice230930230931%_ '1)))
                          (_%target227553227714%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice230930230931%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl227555227717%_))
                          (_%__match230972230973%_
                           _%e227541227674%_
                           _%hd227542227678%_
                           _%tl227543227681%_
                           _%e227544227684%_
                           _%hd227545227688%_
                           _%tl227546227691%_
                           _%e227547227694%_
                           _%hd227548227698%_
                           _%tl227549227701%_
                           _%e227550227704%_
                           _%hd227551227708%_
                           _%tl227552227711%_
                           _%__splice230930230931%_
                           _%target227553227714%_
                           _%tl227555227717%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl227546227691%_))
                              (let ((_%__splice230934230935%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl227546227691%_
                                        '0))))
                                (let ((_%tl227572227614%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice230934230935%_
                                          '1)))
                                      (_%target227570227611%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice230934230935%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227572227614%_))
                                      (_%__match230992230993%_
                                       _%e227541227674%_
                                       _%hd227542227678%_
                                       _%tl227543227681%_
                                       _%e227544227684%_
                                       _%hd227545227688%_
                                       _%tl227546227691%_
                                       _%__splice230934230935%_
                                       _%target227570227611%_
                                       _%tl227572227614%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g227537227584%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g227537227584%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl227546227691%_))
                      (let ((_%__splice230934230935%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl227546227691%_
                                '0))))
                        (let ((_%tl227572227614%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice230934230935%_ '1)))
                              (_%target227570227611%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice230934230935%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl227572227614%_))
                              (_%__match230992230993%_
                               _%e227541227674%_
                               _%hd227542227678%_
                               _%tl227543227681%_
                               _%e227544227684%_
                               _%hd227545227688%_
                               _%tl227546227691%_
                               _%__splice230934230935%_
                               _%target227570227611%_
                               _%tl227572227614%_)
                              (let ()
                                (declare (not safe))
                                (_%g227537227584%_)))))
                      (let () (declare (not safe)) (_%g227537227584%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl227546227691%_))
                  (let ((_%__splice230934230935%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl227546227691%_
                            '0))))
                    (let ((_%tl227572227614%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice230934230935%_ '1)))
                          (_%target227570227611%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice230934230935%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl227572227614%_))
                          (_%__match230992230993%_
                           _%e227541227674%_
                           _%hd227542227678%_
                           _%tl227543227681%_
                           _%e227544227684%_
                           _%hd227545227688%_
                           _%tl227546227691%_
                           _%__splice230934230935%_
                           _%target227570227611%_
                           _%tl227572227614%_)
                          (let () (declare (not safe)) (_%g227537227584%_)))))
                  (let () (declare (not safe)) (_%g227537227584%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl227546227691%_))
                                                      (let ((_%__splice230934230935%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl227546227691%_
                        '0))))
                (let ((_%tl227572227614%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice230934230935%_ '1)))
                      (_%target227570227611%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice230934230935%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl227572227614%_))
                      (_%__match230992230993%_
                       _%e227541227674%_
                       _%hd227542227678%_
                       _%tl227543227681%_
                       _%e227544227684%_
                       _%hd227545227688%_
                       _%tl227546227691%_
                       _%__splice230934230935%_
                       _%target227570227611%_
                       _%tl227572227614%_)
                      (let () (declare (not safe)) (_%g227537227584%_)))))
              (let () (declare (not safe)) (_%g227537227584%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl227546227691%_))
                                              (let ((_%__splice230934230935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl227546227691%_
                                                        '0))))
                                                (let ((_%tl227572227614%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice230934230935%_
                                                          '1)))
                                                      (_%target227570227611%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice230934230935%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227572227614%_))
                                                      (_%__match230992230993%_
                                                       _%e227541227674%_
                                                       _%hd227542227678%_
                                                       _%tl227543227681%_
                                                       _%e227544227684%_
                                                       _%hd227545227688%_
                                                       _%tl227546227691%_
                                                       _%__splice230934230935%_
                                                       _%target227570227611%_
                                                       _%tl227572227614%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g227537227584%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g227537227584%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl227546227691%_))
                                      (let ((_%__splice230934230935%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl227546227691%_
                                                '0))))
                                        (let ((_%tl227572227614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice230934230935%_
                                                  '1)))
                                              (_%target227570227611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice230934230935%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl227572227614%_))
                                              (_%__match230992230993%_
                                               _%e227541227674%_
                                               _%hd227542227678%_
                                               _%tl227543227681%_
                                               _%e227544227684%_
                                               _%hd227545227688%_
                                               _%tl227546227691%_
                                               _%__splice230934230935%_
                                               _%target227570227611%_
                                               _%tl227572227614%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g227537227584%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g227537227584%_))))))
                          (let () (declare (not safe)) (_%g227537227584%_)))))
                  (let () (declare (not safe)) (_%g227537227584%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx228927%_ _%id228929%_)
        (let ((_%proc228933%_
               (let ((__tmp231361
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id228929%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp231361))))
          (if (procedure? _%proc228933%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx228927%_
                 _%id228929%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx228918%_ _%id228920%_)
        (let ((_%klass228924%_
               (let ((__tmp231362
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id228920%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp231362))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass228924%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx228918%_
                 _%id228920%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx228168%_ _%proc228170%_ _%sig228171%_)
        (letrec ((_%signature-arity228173%_
                  (lambda (_%args228850%_)
                    (let _%loop228853%_ ((_%rest228856%_ _%args228850%_)
                                         (_%count228858%_ '0))
                      (let* ((_%rest228859228870%_ _%rest228856%_)
                             (_%E228863228876%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest228859228870%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K228866228907%_
                               (lambda (_%rest228904%_)
                                 (_%loop228853%_
                                  _%rest228904%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count228858%_ '1)))))
                              (_%K228865228896%_ (lambda () _%count228858%_))
                              (_%K228864228884%_
                               (lambda () (cons _%count228858%_ '()))))
                          (let ((_%try-match228861228900%_
                                 (lambda ()
                                   (if (null? _%rest228859228870%_)
                                       (_%K228865228896%_)
                                       (_%K228864228884%_)))))
                            (if (pair? _%rest228859228870%_)
                                (let* ((_%tl228868228911%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest228859228870%_)))
                                       (_%rest228915%_ _%tl228868228911%_))
                                  (_%K228866228907%_ _%rest228915%_))
                                (_%try-match228861228900%_))))))))
                 (_%make-signature228175%_
                  (lambda (_%args228732%_
                           _%return228734%_
                           _%effect228735%_
                           _%unchecked228736%_)
                    (let ((__tmp231363
                           (lambda (_%g228737228739%_)
                             (|gxc[1]#verify-class!|
                              _%ctx228168%_
                              _%g228737228739%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp231363 _%args228732%_))
                    (|gxc[1]#verify-class!| _%ctx228168%_ _%return228734%_)
                    (if _%unchecked228736%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx228168%_
                         _%unchecked228736%_)
                        '#!void)
                    (let ((_%arity228743%_
                           (_%signature-arity228173%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args228732%_)))))
                      (if _%effect228735%_
                          (let ((_%effect228746%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect228735%_))))
                            (if (and (list? _%effect228746%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect228746%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx228168%_
                                   _%proc228170%_
                                   _%effect228746%_))))
                          '#!void)
                      (cons _%arity228743%_
                            (cons (let* ((_%g228749228772%_
                                          (lambda (_%g228750228768%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g228750228768%_))))
                                         (_%g228748228846%_
                                          (lambda (_%g228750228776%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g228750228776%_))
                                                (let ((_%e228755228779%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g228750228776%_))))
                                                  (let ((_%hd228756228783%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e228755228779%_)))
                                                        (_%tl228757228786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e228755228779%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl228757228786%_))
                                                        (let ((_%e228758228789%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl228757228786%_))))
                  (let ((_%hd228759228793%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228758228789%_)))
                        (_%tl228760228796%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228758228789%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl228760228796%_))
                        (let ((_%e228761228799%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl228760228796%_))))
                          (let ((_%hd228762228803%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e228761228799%_)))
                                (_%tl228763228806%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e228761228799%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl228763228806%_))
                                (let ((_%e228764228809%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl228763228806%_))))
                                  (let ((_%hd228765228813%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228764228809%_)))
                                        (_%tl228766228816%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228764228809%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228766228816%_))
                                        ((lambda (_%g228751228819%_
                                                  _%g228752228821%_
                                                  _%g228753228822%_
                                                  _%g228754228823%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-!signature))
                                                 (cons 'arguments:
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g228754228823%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g228753228822%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g228752228821%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g228751228819%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd228765228813%_
                                         _%hd228762228803%_
                                         _%hd228759228793%_
                                         _%hd228756228783%_)
                                        (_%g228749228772%_
                                         _%g228750228776%_))))
                                (_%g228749228772%_ _%g228750228776%_))))
                        (_%g228749228772%_ _%g228750228776%_))))
                (_%g228749228772%_ _%g228750228776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g228749228772%_
                                                 _%g228750228776%_)))))
                                    (_%g228748228846%_
                                     (list _%args228732%_
                                           _%return228734%_
                                           _%effect228735%_
                                           _%unchecked228736%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx228168%_ _%proc228170%_)
          (let* ((_%__stx231003231004%_ _%sig228171%_)
                 (_%g228182228285%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx231003231004%_)))))
            (let ((_%__kont231006231007%_
                   (lambda (_%g228184228713%_ _%g228185228715%_)
                     (_%make-signature228175%_
                      _%g228185228715%_
                      _%g228184228713%_
                      '#f
                      '#f)))
                  (_%__kont231008231009%_
                   (lambda (_%g228192228664%_
                            _%g228193228666%_
                            _%g228194228667%_)
                     (_%make-signature228175%_
                      _%g228194228667%_
                      _%g228193228666%_
                      _%g228192228664%_
                      '#f)))
                  (_%__kont231010231011%_
                   (lambda (_%g228208228588%_
                            _%g228209228590%_
                            _%g228210228591%_)
                     (_%make-signature228175%_
                      _%g228210228591%_
                      _%g228209228590%_
                      _%g228208228588%_
                      (let ((__tmp231364
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc228170%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp231364)))))
                  (_%__kont231012231013%_
                   (lambda (_%g228228228494%_
                            _%g228229228496%_
                            _%g228230228497%_
                            _%g228231228498%_)
                     (_%make-signature228175%_
                      _%g228231228498%_
                      _%g228230228497%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g228228228494%_)))))
                  (_%__kont231014231015%_
                   (lambda (_%g228252228401%_ _%g228253228403%_)
                     (_%make-signature228175%_
                      _%g228253228403%_
                      _%g228252228401%_
                      '#f
                      (let ((__tmp231365
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc228170%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp231365)))))
                  (_%__kont231016231017%_
                   (lambda (_%g228264228336%_
                            _%g228265228338%_
                            _%g228266228339%_)
                     (_%make-signature228175%_
                      _%g228266228339%_
                      _%g228265228338%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g228264228336%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx231003231004%_))
                  (let ((_%e228186228693%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx231003231004%_))))
                    (let ((_%tl228188228700%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e228186228693%_)))
                          (_%hd228187228697%_
                           (let ()
                             (declare (not safe))
                             (##car _%e228186228693%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl228188228700%_))
                          (let ((_%e228189228703%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl228188228700%_))))
                            (let ((_%tl228191228710%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e228189228703%_)))
                                  (_%hd228190228707%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e228189228703%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl228191228710%_))
                                  (_%__kont231006231007%_
                                   _%hd228190228707%_
                                   _%hd228187228697%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228191228710%_))
                                      (let ((_%e228201228640%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228191228710%_))))
                                        (let ((_%tl228203228647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228201228640%_)))
                                              (_%hd228202228644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228201228640%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd228202228644%_))
                                              (let ((_%e228204228650%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd228202228644%_))))
                                                (if (equal? _%e228204228650%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl228203228647%_))
                                                        (let ((_%e228205228654%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl228203228647%_))))
                  (let ((_%tl228207228661%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228205228654%_)))
                        (_%hd228206228658%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228205228654%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl228207228661%_))
                        (_%__kont231008231009%_
                         _%hd228206228658%_
                         _%hd228190228707%_
                         _%hd228187228697%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228207228661%_))
                            (let ((_%e228224228574%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl228207228661%_))))
                              (let ((_%tl228226228581%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228224228574%_)))
                                    (_%hd228225228578%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228224228574%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd228225228578%_))
                                    (let ((_%e228227228584%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd228225228578%_))))
                                      (if (equal? _%e228227228584%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228226228581%_))
                                              (_%__kont231010231011%_
                                               _%hd228206228658%_
                                               _%hd228190228707%_
                                               _%hd228187228697%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl228226228581%_))
                                                  (let ((_%e228249228484%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl228226228581%_))))
                                                    (let ((_%tl228251228491%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e228249228484%_)))
                                                          (_%hd228250228488%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e228249228484%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl228251228491%_))
                                                          (_%__kont231012231013%_
                                                           _%hd228250228488%_
                                                           _%hd228206228658%_
                                                           _%hd228190228707%_
                                                           _%hd228187228697%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g228182228285%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g228182228285%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g228182228285%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g228182228285%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g228182228285%_))))))
                (let () (declare (not safe)) (_%g228182228285%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e228204228650%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl228203228647%_))
                                                            (_%__kont231014231015%_
                                                             _%hd228190228707%_
                                                             _%hd228187228697%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl228203228647%_))
                        (let ((_%e228277228326%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl228203228647%_))))
                          (let ((_%tl228279228333%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e228277228326%_)))
                                (_%hd228278228330%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e228277228326%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl228279228333%_))
                                (_%__kont231016231017%_
                                 _%hd228278228330%_
                                 _%hd228190228707%_
                                 _%hd228187228697%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g228182228285%_)))))
                        (let () (declare (not safe)) (_%g228182228285%_))))
                (let () (declare (not safe)) (_%g228182228285%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g228182228285%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g228182228285%_))))))
                          (let () (declare (not safe)) (_%g228182228285%_)))))
                  (let () (declare (not safe)) (_%g228182228285%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig227779%_)
        (let* ((_%g227782227862%_
                (lambda (_%g227783227858%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227783227858%_))))
               (_%g227781228164%_
                (lambda (_%g227783227866%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227783227866%_))
                      (let ((_%e227789227869%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227783227866%_))))
                        (let ((_%hd227790227873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227789227869%_)))
                              (_%tl227791227876%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227789227869%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227791227876%_))
                              (let ((_%e227792227879%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227791227876%_))))
                                (let ((_%hd227793227883%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227792227879%_)))
                                      (_%tl227794227886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227792227879%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd227793227883%_))
                                      (let ((_%e227795227889%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd227793227883%_))))
                                        (if (equal? _%e227795227889%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl227794227886%_))
                                                (let ((_%e227796227893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl227794227886%_))))
                                                  (let ((_%hd227797227897%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e227796227893%_)))
                                                        (_%tl227798227900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e227796227893%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd227797227897%_))
                                                        (let ((_%e227799227903%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd227797227897%_))))
                  (let ((_%hd227800227907%_
                         (let ()
                           (declare (not safe))
                           (##car _%e227799227903%_)))
                        (_%tl227801227910%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227799227903%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd227800227907%_))
                        (if (let ((__tmp231366 |gxc[1]#_g231367_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp231366
                               _%hd227800227907%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl227801227910%_))
                                (let ((_%e227802227913%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl227801227910%_))))
                                  (let ((_%hd227803227917%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227802227913%_)))
                                        (_%tl227804227920%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227802227913%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl227804227920%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl227798227900%_))
                                            (let ((_%e227805227923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl227798227900%_))))
                                              (let ((_%hd227806227927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e227805227923%_)))
                                                    (_%tl227807227930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e227805227923%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd227806227927%_))
                                                    (let ((_%e227808227933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd227806227927%_))))
                                                      (if (equal? _%e227808227933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227807227930%_))
                      (let ((_%e227809227937%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227807227930%_))))
                        (let ((_%hd227810227941%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227809227937%_)))
                              (_%tl227811227944%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227809227937%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd227810227941%_))
                              (let ((_%e227812227947%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd227810227941%_))))
                                (let ((_%hd227813227951%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227812227947%_)))
                                      (_%tl227814227954%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227812227947%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd227813227951%_))
                                      (if (let ((__tmp231368
                                                 |gxc[1]#_g231369_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp231368
                                             _%hd227813227951%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227814227954%_))
                                              (let ((_%e227815227957%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227814227954%_))))
                                                (let ((_%hd227816227961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227815227957%_)))
                                                      (_%tl227817227964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227815227957%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227817227964%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl227811227944%_))
                                                          (let ((_%e227818227967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl227811227944%_))))
                    (let ((_%hd227819227971%_
                           (let ()
                             (declare (not safe))
                             (##car _%e227818227967%_)))
                          (_%tl227820227974%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e227818227967%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd227819227971%_))
                          (let ((_%e227821227977%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd227819227971%_))))
                            (if (equal? _%e227821227977%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl227820227974%_))
                                    (let ((_%e227822227981%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl227820227974%_))))
                                      (let ((_%hd227823227985%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e227822227981%_)))
                                            (_%tl227824227988%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e227822227981%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd227823227985%_))
                                            (let ((_%e227825227991%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd227823227985%_))))
                                              (let ((_%hd227826227995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e227825227991%_)))
                                                    (_%tl227827227998%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e227825227991%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd227826227995%_))
                                                    (if (let ((__tmp231370
                                                               |gxc[1]#_g231371_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp231370
                                                           _%hd227826227995%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl227827227998%_))
                                                            (let ((_%e227828228001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl227827227998%_))))
                      (let ((_%hd227829228005%_
                             (let ()
                               (declare (not safe))
                               (##car _%e227828228001%_)))
                            (_%tl227830228008%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e227828228001%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl227830228008%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl227824227988%_))
                                (let ((_%e227831228011%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl227824227988%_))))
                                  (let ((_%hd227832228015%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227831228011%_)))
                                        (_%tl227833228018%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227831228011%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd227832228015%_))
                                        (let ((_%e227834228021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd227832228015%_))))
                                          (if (equal? _%e227834228021%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl227833228018%_))
                                                  (let ((_%e227835228025%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl227833228018%_))))
                                                    (let ((_%hd227836228029%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e227835228025%_)))
                                                          (_%tl227837228032%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e227835228025%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd227836228029%_))
                                                          (let ((_%e227838228035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd227836228029%_))))
                    (let ((_%hd227839228039%_
                           (let ()
                             (declare (not safe))
                             (##car _%e227838228035%_)))
                          (_%tl227840228042%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e227838228035%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd227839228039%_))
                          (if (let ((__tmp231372 |gxc[1]#_g231373_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp231372
                                 _%hd227839228039%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl227840228042%_))
                                  (let ((_%e227841228045%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl227840228042%_))))
                                    (let ((_%hd227842228049%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e227841228045%_)))
                                          (_%tl227843228052%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e227841228045%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl227843228052%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227837228032%_))
                                              (let ((_%e227844228055%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227837228032%_))))
                                                (let ((_%hd227845228059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227844228055%_)))
                                                      (_%tl227846228062%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227844228055%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd227845228059%_))
                                                      (let ((_%e227847228065%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd227845228059%_))))
                (if (equal? _%e227847228065%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl227846228062%_))
                        (let ((_%e227848228069%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl227846228062%_))))
                          (let ((_%hd227849228073%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227848228069%_)))
                                (_%tl227850228076%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227848228069%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd227849228073%_))
                                (let ((_%e227851228079%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd227849228073%_))))
                                  (let ((_%hd227852228083%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227851228079%_)))
                                        (_%tl227853228086%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227851228079%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd227852228083%_))
                                        (if (let ((__tmp231374
                                                   |gxc[1]#_g231375_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp231374
                                               _%hd227852228083%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl227853228086%_))
                                                (let ((_%e227854228089%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl227853228086%_))))
                                                  (let ((_%hd227855228093%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e227854228089%_)))
                                                        (_%tl227856228096%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e227854228089%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl227856228096%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl227850228076%_))
                                                            ((lambda (_%g227784228099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g227785228101%_
                              _%g227786228102%_
                              _%g227787228103%_
                              _%g227788228104%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g227785228101%_))
                           (cons _%g227785228101%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g227787228103%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227784228099%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd227855228093%_
                     _%hd227842228049%_
                     _%hd227829228005%_
                     _%hd227816227961%_
                     _%hd227803227917%_)
                    (_%g227782227862%_ _%g227783227866%_))
                (_%g227782227862%_ _%g227783227866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g227782227862%_
                                                 _%g227783227866%_))
                                            (_%g227782227862%_
                                             _%g227783227866%_))
                                        (_%g227782227862%_
                                         _%g227783227866%_))))
                                (_%g227782227862%_ _%g227783227866%_))))
                        (_%g227782227862%_ _%g227783227866%_))
                    (_%g227782227862%_ _%g227783227866%_)))
              (_%g227782227862%_ _%g227783227866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227782227862%_
                                               _%g227783227866%_))
                                          (_%g227782227862%_
                                           _%g227783227866%_))))
                                  (_%g227782227862%_ _%g227783227866%_))
                              (_%g227782227862%_ _%g227783227866%_))
                          (_%g227782227862%_ _%g227783227866%_))))
                  (_%g227782227862%_ _%g227783227866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g227782227862%_
                                                   _%g227783227866%_))
                                              (_%g227782227862%_
                                               _%g227783227866%_)))
                                        (_%g227782227862%_
                                         _%g227783227866%_))))
                                (_%g227782227862%_ _%g227783227866%_))
                            (_%g227782227862%_ _%g227783227866%_))))
                    (_%g227782227862%_ _%g227783227866%_))
                (_%g227782227862%_ _%g227783227866%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g227782227862%_
                                                     _%g227783227866%_))))
                                            (_%g227782227862%_
                                             _%g227783227866%_))))
                                    (_%g227782227862%_ _%g227783227866%_))
                                (_%g227782227862%_ _%g227783227866%_)))
                          (_%g227782227862%_ _%g227783227866%_))))
                  (_%g227782227862%_ _%g227783227866%_))
              (_%g227782227862%_ _%g227783227866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227782227862%_
                                               _%g227783227866%_))
                                          (_%g227782227862%_
                                           _%g227783227866%_))
                                      (_%g227782227862%_ _%g227783227866%_))))
                              (_%g227782227862%_ _%g227783227866%_))))
                      (_%g227782227862%_ _%g227783227866%_))
                  (_%g227782227862%_ _%g227783227866%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g227782227862%_
                                                     _%g227783227866%_))))
                                            (_%g227782227862%_
                                             _%g227783227866%_))
                                        (_%g227782227862%_
                                         _%g227783227866%_))))
                                (_%g227782227862%_ _%g227783227866%_))
                            (_%g227782227862%_ _%g227783227866%_))
                        (_%g227782227862%_ _%g227783227866%_))))
                (_%g227782227862%_ _%g227783227866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g227782227862%_
                                                 _%g227783227866%_))
                                            (_%g227782227862%_
                                             _%g227783227866%_)))
                                      (_%g227782227862%_ _%g227783227866%_))))
                              (_%g227782227862%_ _%g227783227866%_))))
                      (_%g227782227862%_ _%g227783227866%_)))))
          (_%g227781228164%_ _%sig227779%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx228936%_)
        (let* ((_%g228939228957%_
                (lambda (_%g228940228953%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228940228953%_))))
               (_%g228938229012%_
                (lambda (_%g228940228961%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228940228961%_))
                      (let ((_%e228943228964%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228940228961%_))))
                        (let ((_%hd228944228968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228943228964%_)))
                              (_%tl228945228971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228943228964%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228945228971%_))
                              (let ((_%e228946228974%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228945228971%_))))
                                (let ((_%hd228947228978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228946228974%_)))
                                      (_%tl228948228981%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228946228974%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228948228981%_))
                                      (let ((_%e228949228984%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228948228981%_))))
                                        (let ((_%hd228950228988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228949228984%_)))
                                              (_%tl228951228991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228949228984%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228951228991%_))
                                              ((lambda (_%g228941228994%_
                                                        _%g228942228996%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g228942228996%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g228941228994%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx228936%_
                                                        _%g228942228996%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx228936%_
                                                        _%g228941228994%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g228942228996%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g228941228994%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g228939228957%_
                                                      _%g228940228961%_)))
                                               _%hd228950228988%_
                                               _%hd228947228978%_)
                                              (_%g228939228957%_
                                               _%g228940228961%_))))
                                      (_%g228939228957%_ _%g228940228961%_))))
                              (_%g228939228957%_ _%g228940228961%_))))
                      (_%g228939228957%_ _%g228940228961%_)))))
          (_%g228938229012%_ _%stx228936%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx229016%_)
        (let* ((_%g229019229043%_
                (lambda (_%g229020229039%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g229020229039%_))))
               (_%g229018229324%_
                (lambda (_%g229020229047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g229020229047%_))
                      (let ((_%e229023229050%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g229020229047%_))))
                        (let ((_%hd229024229054%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229023229050%_)))
                              (_%tl229025229057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229023229050%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl229025229057%_))
                              (let ((_%e229026229060%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl229025229057%_))))
                                (let ((_%hd229027229064%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229026229060%_)))
                                      (_%tl229028229067%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229026229060%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl229028229067%_))
                                      (let ((_g231376_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl229028229067%_
                                                '0))))
                                        (begin
                                          (let ((_g231377_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g231376_)
                                                       (##values-length
                                                        _g231376_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g231377_ 2)))
                                                (error "Context expects 2 values"
                                                       _g231377_)))
                                          (let ((_%target229029229070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g231376_ 0)))
                                                (_%tl229031229073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g231376_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl229031229073%_))
                                                (letrec ((_%loop229032229076%_
                                                          (lambda (_%hd229030229080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature229036229083%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd229030229080%_))
                        (let ((_%e229033229085%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd229030229080%_))))
                          (let ((_%lp-hd229034229089%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229033229085%_)))
                                (_%lp-tl229035229092%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229033229085%_))))
                            (_%loop229032229076%_
                             _%lp-tl229035229092%_
                             (cons _%lp-hd229034229089%_
                                   _%signature229036229083%_))))
                        (let ((_%signature229037229095%_
                               (reverse _%signature229036229083%_)))
                          ((lambda (_%g229021229098%_ _%g229022229100%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g229022229100%_))
                                 (let* ((_%g229118229133%_
                                         (lambda (_%g229119229129%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g229119229129%_))))
                                        (_%g229117229312%_
                                         (lambda (_%g229119229137%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g229119229137%_))
                                               (let ((_%e229122229140%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g229119229137%_))))
                                                 (let ((_%hd229123229144%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e229122229140%_)))
                                                       (_%tl229124229147%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e229122229140%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl229124229147%_))
                                                       (let ((_%e229125229150%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl229124229147%_))))
                 (let ((_%hd229126229154%_
                        (let ()
                          (declare (not safe))
                          (##car _%e229125229150%_)))
                       (_%tl229127229157%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e229125229150%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl229127229157%_))
                       ((lambda (_%g229120229160%_ _%g229121229162%_)
                          (let* ((_%g229178229186%_
                                  (lambda (_%g229179229182%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g229179229182%_))))
                                 (_%g229177229308%_
                                  (lambda (_%g229179229190%_)
                                    ((lambda (_%g229180229193%_)
                                       (let* ((_%unchecked229206%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g229120229160%_))
                                              (_%g229209229217%_
                                               (lambda (_%g229210229213%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g229210229213%_))))
                                              (_%g229208229240%_
                                               (lambda (_%g229210229221%_)
                                                 ((lambda (_%g229211229224%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g229180229193%_
                                                                (cons _%g229211229224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g229210229221%_))))
                                         (_%g229208229240%_
                                          (if _%unchecked229206%_
                                              (let* ((_%g229244229259%_
                                                      (lambda (_%g229245229255%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g229245229255%_))))
                                                     (_%g229243229304%_
                                                      (lambda (_%g229245229263%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g229245229263%_))
                                                            (let ((_%e229248229266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g229245229263%_))))
                      (let ((_%hd229249229270%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229248229266%_)))
                            (_%tl229250229273%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229248229266%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229250229273%_))
                            (let ((_%e229251229276%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl229250229273%_))))
                              (let ((_%hd229252229280%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229251229276%_)))
                                    (_%tl229253229283%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229251229276%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl229253229283%_))
                                    ((lambda (_%g229246229286%_
                                              _%g229247229288%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g229247229288%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g229121229162%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g229246229286%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd229252229280%_
                                     _%hd229249229270%_)
                                    (_%g229244229259%_ _%g229245229263%_))))
                            (_%g229244229259%_ _%g229245229263%_))))
                    (_%g229244229259%_ _%g229245229263%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g229243229304%_
                                                 _%unchecked229206%_))
                                              '(begin)))))
                                     _%g229179229190%_))))
                            (_%g229177229308%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g229022229100%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g229121229162%_ '()))
                   (cons '#f (cons 'signature: (cons _%g229120229160%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd229126229154%_
                        _%hd229123229144%_)
                       (_%g229118229133%_ _%g229119229137%_))))
               (_%g229118229133%_ _%g229119229137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g229118229133%_
                                                _%g229119229137%_)))))
                                   (_%g229117229312%_
                                    (|gxc[1]#parse-signature|
                                     _%stx229016%_
                                     _%g229022229100%_
                                     (let ((__tmp231378
                                            (lambda (_%g229315229318%_
                                                     _%g229316229321%_)
                                              (cons _%g229315229318%_
                                                    _%g229316229321%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp231378
                                        '()
                                        _%g229021229098%_)))))
                                 (_%g229019229043%_ _%g229020229047%_)))
                           _%signature229037229095%_
                           _%hd229027229064%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop229032229076%_
                                                   _%target229029229070%_
                                                   '()))
                                                (_%g229019229043%_
                                                 _%g229020229047%_)))))
                                      (_%g229019229043%_ _%g229020229047%_))))
                              (_%g229019229043%_ _%g229020229047%_))))
                      (_%g229019229043%_ _%g229020229047%_)))))
          (_%g229018229324%_ _%stx229016%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx229329%_)
        (let* ((_%g229332229356%_
                (lambda (_%g229333229352%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g229333229352%_))))
               (_%g229331230231%_
                (lambda (_%g229333229360%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g229333229360%_))
                      (let ((_%e229336229363%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g229333229360%_))))
                        (let ((_%hd229337229367%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229336229363%_)))
                              (_%tl229338229370%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229336229363%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl229338229370%_))
                              (let ((_%e229339229373%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl229338229370%_))))
                                (let ((_%hd229340229377%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229339229373%_)))
                                      (_%tl229341229380%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229339229373%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl229341229380%_))
                                      (let ((_g231379_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl229341229380%_
                                                '0))))
                                        (begin
                                          (let ((_g231380_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g231379_)
                                                       (##values-length
                                                        _g231379_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g231380_ 2)))
                                                (error "Context expects 2 values"
                                                       _g231380_)))
                                          (let ((_%target229342229383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g231379_ 0)))
                                                (_%tl229344229386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g231379_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl229344229386%_))
                                                (letrec ((_%loop229345229389%_
                                                          (lambda (_%hd229343229393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature229349229396%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd229343229393%_))
                        (let ((_%e229346229398%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd229343229393%_))))
                          (let ((_%lp-hd229347229402%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229346229398%_)))
                                (_%lp-tl229348229405%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229346229398%_))))
                            (_%loop229345229389%_
                             _%lp-tl229348229405%_
                             (cons _%lp-hd229347229402%_
                                   _%case-signature229349229396%_))))
                        (let ((_%case-signature229350229408%_
                               (reverse _%case-signature229349229396%_)))
                          ((lambda (_%g229334229411%_ _%g229335229413%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g229335229413%_))
                                 (let* ((_%signatures229444%_
                                         (map (lambda (_%g229430229432%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx229329%_
                                                 _%g229335229413%_
                                                 _%g229430229432%_))
                                              (let ((__tmp231381
                                                     (lambda (_%g229435229438%_
                                                              _%g229436229441%_)
                                                       (cons _%g229435229438%_
                                                             _%g229436229441%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp231381
                                                 '()
                                                 _%g229334229411%_))))
                                        (_%g229447229473%_
                                         (lambda (_%g229448229469%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g229448229469%_))))
                                        (_%g229446230227%_
                                         (lambda (_%g229448229477%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g229448229477%_))
                                               (let ((_g231382_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g229448229477%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g231383_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g231382_)
                        (##values-length _g231382_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g231383_ 2)))
                 (error "Context expects 2 values" _g231383_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target229451229480%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g231382_
                                                             0)))
                                                         (_%tl229453229483%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g231382_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl229453229483%_))
                                                         (letrec ((_%loop229454229486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd229452229490%_
                                    _%sig229458229493%_
                                    _%arity229459229494%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd229452229490%_))
                                 (let ((_%e229455229496%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd229452229490%_))))
                                   (let ((_%lp-hd229456229500%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e229455229496%_)))
                                         (_%lp-tl229457229503%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e229455229496%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd229456229500%_))
                                         (let ((_%e229462229506%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd229456229500%_))))
                                           (let ((_%hd229463229510%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e229462229506%_)))
                                                 (_%tl229464229513%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e229462229506%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl229464229513%_))
                                                 (let ((_%e229465229516%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl229464229513%_))))
                                                   (let ((_%hd229466229520%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e229465229516%_)))
                                                         (_%tl229467229523%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e229465229516%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl229467229523%_))
                                                         (_%loop229454229486%_
                                                          _%lp-tl229457229503%_
                                                          (cons _%hd229466229520%_
                                                                _%sig229458229493%_)
                                                          (cons _%hd229463229510%_
                                                                _%arity229459229494%_))
                                                         (_%g229447229473%_
                                                          _%g229448229477%_))))
                                                 (_%g229447229473%_
                                                  _%g229448229477%_))))
                                         (_%g229447229473%_
                                          _%g229448229477%_))))
                                 (let ((_%sig229460229526%_
                                        (reverse _%sig229458229493%_))
                                       (_%arity229461229528%_
                                        (reverse _%arity229459229494%_)))
                                   ((lambda (_%g229449229530%_
                                             _%g229450229532%_)
                                      (let* ((_%g229549229557%_
                                              (lambda (_%g229550229553%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g229550229553%_))))
                                             (_%g229548230212%_
                                              (lambda (_%g229550229561%_)
                                                ((lambda (_%g229551229564%_)
                                                   (let* ((_%g229577229585%_
                                                           (lambda (_%g229578229581%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g229578229581%_))))
                  (_%g229576229607%_
                   (lambda (_%g229578229589%_)
                     ((lambda (_%g229579229592%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g229551229564%_
                                    (cons _%g229579229592%_ '()))))
                      _%g229578229589%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g229576229607%_
                                                      (let ((_g231384_
                                                             (let _%loop229611%_ ((_%rest229614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures229444%_)
                                          (_%unchecked-proc229616%_ '#f)
                                          (_%unchecked-clauses229617%_ '()))
                       (let* ((_%rest229618229626%_ _%rest229614%_)
                              (_%else229620229638%_
                               (lambda ()
                                 (values _%unchecked-proc229616%_
                                         (reverse!
                                          _%unchecked-clauses229617%_))))
                              (_%K229622230079%_
                               (lambda (_%rest229642%_ _%hd229644%_)
                                 (let* ((_%g229646229733%_
                                         (lambda (_%g229647229729%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g229647229729%_))))
                                        (_%g229645230075%_
                                         (lambda (_%g229647229737%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g229647229737%_))
                                               (let ((_%e229654229740%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g229647229737%_))))
                                                 (let ((_%hd229655229744%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e229654229740%_)))
                                                       (_%tl229656229747%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e229654229740%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl229656229747%_))
                                                       (let ((_%e229657229750%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl229656229747%_))))
                 (let ((_%hd229658229754%_
                        (let ()
                          (declare (not safe))
                          (##car _%e229657229750%_)))
                       (_%tl229659229757%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e229657229750%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd229658229754%_))
                       (let ((_%e229660229760%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd229658229754%_))))
                         (let ((_%hd229661229764%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e229660229760%_)))
                               (_%tl229662229767%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e229660229760%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl229662229767%_))
                               (let ((_%e229663229770%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl229662229767%_))))
                                 (let ((_%hd229664229774%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e229663229770%_)))
                                       (_%tl229665229777%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e229663229770%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd229664229774%_))
                                       (let ((_%e229666229780%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd229664229774%_))))
                                         (if (equal? _%e229666229780%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl229665229777%_))
                                                 (let ((_%e229667229784%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl229665229777%_))))
                                                   (let ((_%hd229668229788%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e229667229784%_)))
                                                         (_%tl229669229791%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e229667229784%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd229668229788%_))
                                                         (let ((_%e229670229794%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd229668229788%_))))
                   (let ((_%hd229671229798%_
                          (let ()
                            (declare (not safe))
                            (##car _%e229670229794%_)))
                         (_%tl229672229801%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e229670229794%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd229671229798%_))
                         (if (let ((__tmp231386 |gxc[1]#_g231387_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp231386
                                _%hd229671229798%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl229672229801%_))
                                 (let ((_%e229673229804%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl229672229801%_))))
                                   (let ((_%hd229674229808%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e229673229804%_)))
                                         (_%tl229675229811%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e229673229804%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl229675229811%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl229669229791%_))
                                             (let ((_%e229676229814%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl229669229791%_))))
                                               (let ((_%hd229677229818%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e229676229814%_)))
                                                     (_%tl229678229821%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e229676229814%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd229677229818%_))
                                                     (let ((_%e229679229824%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd229677229818%_))))
                                                       (if (equal? _%e229679229824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl229678229821%_))
                       (let ((_%e229680229828%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl229678229821%_))))
                         (let ((_%hd229681229832%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e229680229828%_)))
                               (_%tl229682229835%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e229680229828%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd229681229832%_))
                               (let ((_%e229683229838%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd229681229832%_))))
                                 (let ((_%hd229684229842%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e229683229838%_)))
                                       (_%tl229685229845%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e229683229838%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd229684229842%_))
                                       (if (let ((__tmp231388
                                                  |gxc[1]#_g231389_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp231388
                                              _%hd229684229842%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl229685229845%_))
                                               (let ((_%e229686229848%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl229685229845%_))))
                                                 (let ((_%hd229687229852%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e229686229848%_)))
                                                       (_%tl229688229855%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e229686229848%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl229688229855%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl229682229835%_))
                                                           (let ((_%e229689229858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl229682229835%_))))
                     (let ((_%hd229690229862%_
                            (let ()
                              (declare (not safe))
                              (##car _%e229689229858%_)))
                           (_%tl229691229865%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e229689229858%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd229690229862%_))
                           (let ((_%e229692229868%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd229690229862%_))))
                             (if (equal? _%e229692229868%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl229691229865%_))
                                     (let ((_%e229693229872%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl229691229865%_))))
                                       (let ((_%hd229694229876%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e229693229872%_)))
                                             (_%tl229695229879%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e229693229872%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd229694229876%_))
                                             (let ((_%e229696229882%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd229694229876%_))))
                                               (let ((_%hd229697229886%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e229696229882%_)))
                                                     (_%tl229698229889%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e229696229882%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd229697229886%_))
                                                     (if (let ((__tmp231390
                                                                |gxc[1]#_g231391_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp231390
                                                            _%hd229697229886%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl229698229889%_))
                     (let ((_%e229699229892%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl229698229889%_))))
                       (let ((_%hd229700229896%_
                              (let ()
                                (declare (not safe))
                                (##car _%e229699229892%_)))
                             (_%tl229701229899%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e229699229892%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl229701229899%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl229695229879%_))
                                 (let ((_%e229702229902%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl229695229879%_))))
                                   (let ((_%hd229703229906%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e229702229902%_)))
                                         (_%tl229704229909%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e229702229902%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd229703229906%_))
                                         (let ((_%e229705229912%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd229703229906%_))))
                                           (if (equal? _%e229705229912%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl229704229909%_))
                                                   (let ((_%e229706229916%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl229704229909%_))))
                                                     (let ((_%hd229707229920%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e229706229916%_)))
                                                           (_%tl229708229923%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e229706229916%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd229707229920%_))
                                                           (let ((_%e229709229926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd229707229920%_))))
                     (let ((_%hd229710229930%_
                            (let ()
                              (declare (not safe))
                              (##car _%e229709229926%_)))
                           (_%tl229711229933%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e229709229926%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd229710229930%_))
                           (if (let ((__tmp231392 |gxc[1]#_g231393_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp231392
                                  _%hd229710229930%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl229711229933%_))
                                   (let ((_%e229712229936%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl229711229933%_))))
                                     (let ((_%hd229713229940%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e229712229936%_)))
                                           (_%tl229714229943%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e229712229936%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl229714229943%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl229708229923%_))
                                               (let ((_%e229715229946%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl229708229923%_))))
                                                 (let ((_%hd229716229950%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e229715229946%_)))
                                                       (_%tl229717229953%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e229715229946%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd229716229950%_))
                                                       (let ((_%e229718229956%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd229716229950%_))))
                 (if (equal? _%e229718229956%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl229717229953%_))
                         (let ((_%e229719229960%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl229717229953%_))))
                           (let ((_%hd229720229964%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e229719229960%_)))
                                 (_%tl229721229967%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e229719229960%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd229720229964%_))
                                 (let ((_%e229722229970%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd229720229964%_))))
                                   (let ((_%hd229723229974%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e229722229970%_)))
                                         (_%tl229724229977%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e229722229970%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd229723229974%_))
                                         (if (let ((__tmp231394
                                                    |gxc[1]#_g231395_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp231394
                                                _%hd229723229974%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl229724229977%_))
                                                 (let ((_%e229725229980%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl229724229977%_))))
                                                   (let ((_%hd229726229984%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e229725229980%_)))
                                                         (_%tl229727229987%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e229725229980%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl229727229987%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl229721229967%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl229659229757%_))
                         ((lambda (_%g229648229990%_
                                   _%g229649229992%_
                                   _%g229650229993%_
                                   _%g229651229994%_
                                   _%g229652229995%_
                                   _%g229653229996%_)
                            (let ((_%clause230067%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%g229653229996%_
                                                           '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g229651229994%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g229648229990%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked230069%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229649229992%_))))
                              (_%loop229611%_
                               _%rest229642%_
                               (let ((_%$e230071%_ _%unchecked230069%_))
                                 (if _%$e230071%_
                                     _%$e230071%_
                                     _%unchecked-proc229616%_))
                               (cons _%clause230067%_
                                     _%unchecked-clauses229617%_))))
                          _%hd229726229984%_
                          _%hd229713229940%_
                          _%hd229700229896%_
                          _%hd229687229852%_
                          _%hd229674229808%_
                          _%hd229655229744%_)
                         (_%g229646229733%_ _%g229647229737%_))
                     (_%g229646229733%_ _%g229647229737%_))
                 (_%g229646229733%_ _%g229647229737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g229646229733%_
                                                  _%g229647229737%_))
                                             (_%g229646229733%_
                                              _%g229647229737%_))
                                         (_%g229646229733%_
                                          _%g229647229737%_))))
                                 (_%g229646229733%_ _%g229647229737%_))))
                         (_%g229646229733%_ _%g229647229737%_))
                     (_%g229646229733%_ _%g229647229737%_)))
               (_%g229646229733%_ _%g229647229737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g229646229733%_
                                                _%g229647229737%_))
                                           (_%g229646229733%_
                                            _%g229647229737%_))))
                                   (_%g229646229733%_ _%g229647229737%_))
                               (_%g229646229733%_ _%g229647229737%_))
                           (_%g229646229733%_ _%g229647229737%_))))
                   (_%g229646229733%_ _%g229647229737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g229646229733%_
                                                    _%g229647229737%_))
                                               (_%g229646229733%_
                                                _%g229647229737%_)))
                                         (_%g229646229733%_
                                          _%g229647229737%_))))
                                 (_%g229646229733%_ _%g229647229737%_))
                             (_%g229646229733%_ _%g229647229737%_))))
                     (_%g229646229733%_ _%g229647229737%_))
                 (_%g229646229733%_ _%g229647229737%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g229646229733%_
                                                      _%g229647229737%_))))
                                             (_%g229646229733%_
                                              _%g229647229737%_))))
                                     (_%g229646229733%_ _%g229647229737%_))
                                 (_%g229646229733%_ _%g229647229737%_)))
                           (_%g229646229733%_ _%g229647229737%_))))
                   (_%g229646229733%_ _%g229647229737%_))
               (_%g229646229733%_ _%g229647229737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g229646229733%_
                                                _%g229647229737%_))
                                           (_%g229646229733%_
                                            _%g229647229737%_))
                                       (_%g229646229733%_ _%g229647229737%_))))
                               (_%g229646229733%_ _%g229647229737%_))))
                       (_%g229646229733%_ _%g229647229737%_))
                   (_%g229646229733%_ _%g229647229737%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g229646229733%_
                                                      _%g229647229737%_))))
                                             (_%g229646229733%_
                                              _%g229647229737%_))
                                         (_%g229646229733%_
                                          _%g229647229737%_))))
                                 (_%g229646229733%_ _%g229647229737%_))
                             (_%g229646229733%_ _%g229647229737%_))
                         (_%g229646229733%_ _%g229647229737%_))))
                 (_%g229646229733%_ _%g229647229737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g229646229733%_
                                                  _%g229647229737%_))
                                             (_%g229646229733%_
                                              _%g229647229737%_)))
                                       (_%g229646229733%_ _%g229647229737%_))))
                               (_%g229646229733%_ _%g229647229737%_))))
                       (_%g229646229733%_ _%g229647229737%_))))
               (_%g229646229733%_ _%g229647229737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g229646229733%_
                                                _%g229647229737%_)))))
                                   (_%g229645230075%_ _%hd229644%_)))))
                         (if (pair? _%rest229618229626%_)
                             (let ((_%hd229623230083%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest229618229626%_)))
                                   (_%tl229624230086%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest229618229626%_))))
                               (let* ((_%hd230089%_ _%hd229623230083%_)
                                      (_%rest230092%_ _%tl229624230086%_))
                                 (_%K229622230079%_
                                  _%rest230092%_
                                  _%hd230089%_)))
                             (_%else229620229638%_))))))
                (begin
                  (let ((_g231385_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g231384_)
                               (##values-length _g231384_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g231385_ 2)))
                        (error "Context expects 2 values" _g231385_)))
                  (let ((_%unchecked-proc230095%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g231384_ 0)))
                        (_%unchecked-clauses230097%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g231384_ 1))))
                    (if _%unchecked-proc230095%_
                        (let* ((_%g230099230123%_
                                (lambda (_%g230100230119%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g230100230119%_))))
                               (_%g230098230208%_
                                (lambda (_%g230100230127%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g230100230127%_))
                                      (let ((_%e230103230130%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g230100230127%_))))
                                        (let ((_%hd230104230134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230103230130%_)))
                                              (_%tl230105230137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230103230130%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl230105230137%_))
                                              (let ((_%e230106230140%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl230105230137%_))))
                                                (let ((_%hd230107230144%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e230106230140%_)))
                                                      (_%tl230108230147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e230106230140%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd230107230144%_))
                                                      (let ((_g231396_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd230107230144%_ '0))))
                (begin
                  (let ((_g231397_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g231396_)
                               (##values-length _g231396_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g231397_ 2)))
                        (error "Context expects 2 values" _g231397_)))
                  (let ((_%target230109230150%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g231396_ 0)))
                        (_%tl230111230153%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g231396_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl230111230153%_))
                        (letrec ((_%loop230112230156%_
                                  (lambda (_%hd230110230160%_
                                           _%clause230116230163%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd230110230160%_))
                                        (let ((_%e230113230165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd230110230160%_))))
                                          (let ((_%lp-hd230114230169%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e230113230165%_)))
                                                (_%lp-tl230115230172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e230113230165%_))))
                                            (_%loop230112230156%_
                                             _%lp-tl230115230172%_
                                             (cons _%lp-hd230114230169%_
                                                   _%clause230116230163%_))))
                                        (let ((_%clause230117230175%_
                                               (reverse _%clause230116230163%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl230108230147%_))
                                              ((lambda (_%g230101230178%_
                                                        _%g230102230180%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g230102230180%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp231398
                                                    (lambda (_%g230199230202%_
                                                             _%g230200230205%_)
                                                      (cons _%g230199230202%_
                                                            _%g230200230205%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp231398
                                                '()
                                                _%g230101230178%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause230117230175%_
                                               _%hd230104230134%_)
                                              (_%g230099230123%_
                                               _%g230100230127%_)))))))
                          (_%loop230112230156%_ _%target230109230150%_ '()))
                        (_%g230099230123%_ _%g230100230127%_)))))
              (_%g230099230123%_ _%g230100230127%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g230099230123%_
                                               _%g230100230127%_))))
                                      (_%g230099230123%_ _%g230100230127%_)))))
                          (_%g230098230208%_
                           (list _%unchecked-proc230095%_
                                 _%unchecked-clauses230097%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g229550229561%_))))
                                        (_%g229548230212%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g229335229413%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%g229449229530%_
                                          _%g229450229532%_))
                                       (let ((__tmp231399
                                              (lambda (_%g230215230219%_
                                                       _%g230216230222%_
                                                       _%g230217230224%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g230216230222%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g230215230219%_ '())))))
              _%g230217230224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp231399
                                          '()
                                          _%g229449229530%_
                                          _%g229450229532%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig229460229526%_
                                    _%arity229461229528%_))))))
                   (_%loop229454229486%_ _%target229451229480%_ '() '()))
                 (_%g229447229473%_ _%g229448229477%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g229447229473%_
                                                _%g229448229477%_)))))
                                   (_%g229446230227%_ _%signatures229444%_))
                                 (_%g229332229356%_ _%g229333229360%_)))
                           _%case-signature229350229408%_
                           _%hd229340229377%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop229345229389%_
                                                   _%target229342229383%_
                                                   '()))
                                                (_%g229332229356%_
                                                 _%g229333229360%_)))))
                                      (_%g229332229356%_ _%g229333229360%_))))
                              (_%g229332229356%_ _%g229333229360%_))))
                      (_%g229332229356%_ _%g229333229360%_)))))
          (_%g229331230231%_ _%stx229329%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx230239%_)
        (let* ((_%__stx231219231220%_ _%$stx230239%_)
               (_%g230245230305%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx231219231220%_)))))
          (let ((_%__kont231222231223%_
                 (lambda (_%g230247230527%_ _%g230248230529%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g230248230529%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g230248230529%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g230247230527%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont231224231225%_
                 (lambda (_%g230262230452%_
                          _%g230263230454%_
                          _%g230264230455%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g230264230455%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g230264230455%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g230263230454%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g230262230452%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont231226231227%_
                 (lambda (_%g230281230366%_
                          _%g230282230368%_
                          _%g230283230369%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g230283230369%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g230283230369%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g230282230368%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g230281230366%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx231219231220%_))
                (let ((_%e230249230483%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx231219231220%_))))
                  (let ((_%tl230251230490%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230249230483%_)))
                        (_%hd230250230487%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230249230483%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl230251230490%_))
                        (let ((_%e230252230493%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl230251230490%_))))
                          (let ((_%tl230254230500%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230252230493%_)))
                                (_%hd230253230497%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230252230493%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd230253230497%_))
                                (let ((_%e230255230503%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd230253230497%_))))
                                  (if (equal? _%e230255230503%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl230254230500%_))
                                          (let ((_%e230256230507%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl230254230500%_))))
                                            (let ((_%tl230258230514%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e230256230507%_)))
                                                  (_%hd230257230511%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e230256230507%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl230258230514%_))
                                                  (let ((_%e230259230517%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl230258230514%_))))
                                                    (let ((_%tl230261230524%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230259230517%_)))
                                                          (_%hd230260230521%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230259230517%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl230261230524%_))
                                                          (_%__kont231222231223%_
                                                           _%hd230260230521%_
                                                           _%hd230257230511%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g230245230305%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g230245230305%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g230245230305%_)))
                                      (if (equal? _%e230255230503%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl230254230500%_))
                                              (let ((_%e230272230422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl230254230500%_))))
                                                (let ((_%tl230274230429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e230272230422%_)))
                                                      (_%hd230273230426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e230272230422%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl230274230429%_))
                                                      (let ((_%e230275230432%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl230274230429%_))))
                (let ((_%tl230277230439%_
                       (let () (declare (not safe)) (##cdr _%e230275230432%_)))
                      (_%hd230276230436%_
                       (let ()
                         (declare (not safe))
                         (##car _%e230275230432%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl230277230439%_))
                      (let ((_%e230278230442%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl230277230439%_))))
                        (let ((_%tl230280230449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230278230442%_)))
                              (_%hd230279230446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230278230442%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl230280230449%_))
                              (_%__kont231224231225%_
                               _%hd230279230446%_
                               _%hd230276230436%_
                               _%hd230273230426%_)
                              (let ()
                                (declare (not safe))
                                (_%g230245230305%_)))))
                      (let () (declare (not safe)) (_%g230245230305%_)))))
              (let () (declare (not safe)) (_%g230245230305%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g230245230305%_)))
                                          (if (equal? _%e230255230503%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl230254230500%_))
                                                  (let ((_%e230291230336%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl230254230500%_))))
                                                    (let ((_%tl230293230343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230291230336%_)))
                                                          (_%hd230292230340%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230291230336%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl230293230343%_))
                                                          (let ((_%e230294230346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl230293230343%_))))
                    (let ((_%tl230296230353%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e230294230346%_)))
                          (_%hd230295230350%_
                           (let ()
                             (declare (not safe))
                             (##car _%e230294230346%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230296230353%_))
                          (let ((_%e230297230356%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl230296230353%_))))
                            (let ((_%tl230299230363%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230297230356%_)))
                                  (_%hd230298230360%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230297230356%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230299230363%_))
                                  (_%__kont231226231227%_
                                   _%hd230298230360%_
                                   _%hd230295230350%_
                                   _%hd230292230340%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g230245230305%_)))))
                          (let () (declare (not safe)) (_%g230245230305%_)))))
                  (let () (declare (not safe)) (_%g230245230305%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g230245230305%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g230245230305%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g230245230305%_)))))
                        (let () (declare (not safe)) (_%g230245230305%_)))))
                (let () (declare (not safe)) (_%g230245230305%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx230551%_)
        (let* ((_%g230555230575%_
                (lambda (_%g230556230571%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230556230571%_))))
               (_%g230554230644%_
                (lambda (_%g230556230579%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230556230579%_))
                      (let ((_%e230558230582%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230556230579%_))))
                        (let ((_%hd230559230586%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230558230582%_)))
                              (_%tl230560230589%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230558230582%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl230560230589%_))
                              (let ((_g231400_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl230560230589%_
                                        '0))))
                                (begin
                                  (let ((_g231401_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g231400_)
                                               (##values-length _g231400_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g231401_ 2)))
                                        (error "Context expects 2 values"
                                               _g231401_)))
                                  (let ((_%target230561230592%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g231400_ 0)))
                                        (_%tl230563230595%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g231400_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl230563230595%_))
                                        (letrec ((_%loop230564230598%_
                                                  (lambda (_%hd230562230602%_
                                                           _%decl230568230605%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd230562230602%_))
                                                        (let ((_%e230565230607%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd230562230602%_))))
                  (let ((_%lp-hd230566230611%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230565230607%_)))
                        (_%lp-tl230567230614%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230565230607%_))))
                    (_%loop230564230598%_
                     _%lp-tl230567230614%_
                     (cons _%lp-hd230566230611%_ _%decl230568230605%_))))
                (let ((_%decl230569230617%_ (reverse _%decl230568230605%_)))
                  ((lambda (_%g230557230620%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp231402
                                  (lambda (_%g230635230638%_ _%g230636230641%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g230635230638%_)
                                          _%g230636230641%_))))
                             (declare (not safe))
                             (__foldr1 __tmp231402 '() _%g230557230620%_))))
                   _%decl230569230617%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop230564230598%_
                                           _%target230561230592%_
                                           '()))
                                        (_%g230555230575%_
                                         _%g230556230579%_)))))
                              (_%g230555230575%_ _%g230556230579%_))))
                      (_%g230555230575%_ _%g230556230579%_)))))
          (_%g230554230644%_ _%$stx230551%_))))))
